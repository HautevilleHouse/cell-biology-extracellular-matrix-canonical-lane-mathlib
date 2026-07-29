import canonicalLaneMathlib.AdmissibleClass
import CellBiologyExtracellularMatrixCanonicalLaneLean.ExtracellularMatrixStructure

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixCanonicalLaneLean

structure BasementMembraneAssemblyPackage (M : ExtracellularMatrix) where
  lamininNetwork : Prop
  nidogenBridging : Prop
  collagenIVScaffold : Prop
  perlecanDeposition : Prop
  epithelialPolarization : Prop

structure BasementMembraneAssemblyEvidence {M : ExtracellularMatrix}
    (B : BasementMembraneAssemblyPackage M) where
  lamininNetworkClosed : B.lamininNetwork
  nidogenBridgingClosed : B.nidogenBridging
  collagenIVScaffoldClosed : B.collagenIVScaffold
  perlecanDepositionClosed : B.perlecanDeposition
  epithelialPolarizationClosed : B.epithelialPolarization

def BasementMembraneAssemblyClosed {M : ExtracellularMatrix}
    (B : BasementMembraneAssemblyPackage M) : Prop :=
  B.lamininNetwork ∧ B.nidogenBridging ∧ B.collagenIVScaffold ∧ B.perlecanDeposition ∧ B.epithelialPolarization

theorem basement_membrane_assembly_closed_from_evidence
    {M : ExtracellularMatrix} (B : BasementMembraneAssemblyPackage M)
    (E : BasementMembraneAssemblyEvidence B) : BasementMembraneAssemblyClosed B := by
  exact And.intro E.lamininNetworkClosed
    (And.intro E.nidogenBridgingClosed
      (And.intro E.collagenIVScaffoldClosed
        (And.intro E.perlecanDepositionClosed E.epithelialPolarizationClosed)))

end CellBiologyExtracellularMatrixCanonicalLaneLean
end HautevilleHouse
