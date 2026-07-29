import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixCanonicalLaneLean

structure BasementMembranePackage where
  lamininSelfAssembly : Prop
  collagenIVNetwork : Prop
  nidogenCrosslinking : Prop
  perlecanProteoglycan : Prop
  mechanicalSupport : Prop
  filtrationBarrier : Prop

structure BasementMembraneEvidence (B : BasementMembranePackage) where
  lamininSelfAssemblyClosed : B.lamininSelfAssembly
  collagenIVNetworkClosed : B.collagenIVNetwork
  nidogenCrosslinkingClosed : B.nidogenCrosslinking
  perlecanProteoglycanClosed : B.perlecanProteoglycan
  mechanicalSupportClosed : B.mechanicalSupport
  filtrationBarrierClosed : B.filtrationBarrier

def BasementMembraneClosed (B : BasementMembranePackage) : Prop :=
  B.lamininSelfAssembly ∧ B.collagenIVNetwork ∧ B.nidogenCrosslinking ∧
  B.perlecanProteoglycan ∧ B.mechanicalSupport ∧ B.filtrationBarrier

theorem basement_membrane_closed_from_evidence (B : BasementMembranePackage) (Ev : BasementMembraneEvidence B) : BasementMembraneClosed B := by
  exact And.intro Ev.lamininSelfAssemblyClosed
    (And.intro Ev.collagenIVNetworkClosed
      (And.intro Ev.nidogenCrosslinkingClosed
        (And.intro Ev.perlecanProteoglycanClosed
          (And.intro Ev.mechanicalSupportClosed Ev.filtrationBarrierClosed))))

end CellBiologyExtracellularMatrixCanonicalLaneLean
end HautevilleHouse