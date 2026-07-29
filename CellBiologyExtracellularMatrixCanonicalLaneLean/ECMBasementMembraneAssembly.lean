import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixCanonicalLaneLean

structure ECMBasementMembraneAssemblyPackage where
  lamininPolymerization : Prop
  collagenIVNetworkFormation : Prop
  nidogenCrosslinking : Prop
  perlecanHeparanSulfateBinding : Prop
  epithelialPolarityInduction : Prop

structure ECMBasementMembraneAssemblyEvidence (P : ECMBasementMembraneAssemblyPackage) where
  lamininPolymerizationClosed : P.lamininPolymerization
  collagenIVNetworkFormationClosed : P.collagenIVNetworkFormation
  nidogenCrosslinkingClosed : P.nidogenCrosslinking
  perlecanHeparanSulfateBindingClosed : P.perlecanHeparanSulfateBinding
  epithelialPolarityInductionClosed : P.epithelialPolarityInduction

def ECMBasementMembraneAssemblyClosed (P : ECMBasementMembraneAssemblyPackage) : Prop :=
  P.lamininPolymerization ∧ P.collagenIVNetworkFormation ∧
  P.nidogenCrosslinking ∧ P.perlecanHeparanSulfateBinding ∧
  P.epithelialPolarityInduction

theorem ecm_basement_membrane_assembly_closed_from_evidence
    (P : ECMBasementMembraneAssemblyPackage) (E : ECMBasementMembraneAssemblyEvidence P) :
    ECMBasementMembraneAssemblyClosed P := by
  exact And.intro E.lamininPolymerizationClosed
    (And.intro E.collagenIVNetworkFormationClosed
      (And.intro E.nidogenCrosslinkingClosed
        (And.intro E.perlecanHeparanSulfateBindingClosed
          E.epithelialPolarityInductionClosed)))

end CellBiologyExtracellularMatrixCanonicalLaneLean
end HautevilleHouse
