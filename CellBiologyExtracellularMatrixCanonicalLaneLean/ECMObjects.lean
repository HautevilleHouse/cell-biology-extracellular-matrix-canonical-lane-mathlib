import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ECMCell where
  carrier : Type
  topology : TopologicalSpace carrier

structure ECMAdmittedObject where
  cell : ECMCell
  integrinPresent : Prop
  adhesionStrength : Prop
  stableAdhesion : Prop
  conclusion : stableAdhesion

structure ECMEndgameState where
  object : ECMAdmittedObject

def ECMWitnessClosed (O : ECMAdmittedObject) : Prop :=
  O.stableAdhesion

end CellBiologyExtracellularMatrixCanonicalLaneLean
end HautevilleHouse