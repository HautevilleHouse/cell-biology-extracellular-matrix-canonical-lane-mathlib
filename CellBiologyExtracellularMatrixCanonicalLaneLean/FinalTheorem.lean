import HautevilleHouse.CellBiologyExtracellularMatrixCanonicalLaneLean.IntegrinSignalingBridge
import HautevilleHouse.CellBiologyExtracellularMatrixCanonicalLaneLean.MatrixRemodelingEvidence

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixCanonicalLaneLean

def ConstrainedECMClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ecm_endgame (A : AdmissibleClass) : ConstrainedECMClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyExtracellularMatrixCanonicalLaneLean
end HautevilleHouse