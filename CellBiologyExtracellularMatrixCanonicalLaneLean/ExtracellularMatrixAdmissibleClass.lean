import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixCanonicalLaneLean

structure ECMComponent where
  componentName : String
  concentration : ℚ
  structuralRole : Prop
  signalingRole : Prop

def ECMComponentFunctional (c : ECMComponent) : Prop :=
  c.structuralRole ∨ c.signalingRole

structure ExtracellularMatrixInteraction (comp : ECMComponent) where
  integrinBinding : Prop
  growthFactorSequestration : Prop
  ligandDensity : ℚ
  interactionActive : Prop

def IntegrinActivation (I : ExtracellularMatrixInteraction) : Prop :=
  I.integrinBinding ∧ I.ligandDensity > 0

def ECMAdmissibleObject : Type := Σ (c : ECMComponent), ExtracellularMatrixInteraction c

end CellBiologyExtracellularMatrixCanonicalLaneLean
end HautevilleHouse