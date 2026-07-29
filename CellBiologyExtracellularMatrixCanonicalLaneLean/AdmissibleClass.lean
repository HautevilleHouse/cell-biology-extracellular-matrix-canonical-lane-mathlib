import canonicalLaneMathlib.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixCanonicalLaneLean

structure AdmissibleClass where
  object : CellAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CellWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyExtracellularMatrixCanonicalLaneLean
end HautevilleHouse
