import canonicalLaneMathlib.AdmissibleClass
import CellBiologyExtracellularMatrixCanonicalLaneLean.ExtracellularMatrixStructure

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let O := A.object
  match O with
  | ECMAdmittedObject.mk _ _ _ h => h.1 ∧ h.2

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  let O := A.object
  match O with
  | ECMAdmittedObject.mk _ _ _ h => exact h

end CellBiologyExtracellularMatrixCanonicalLaneLean
end HautevilleHouse
