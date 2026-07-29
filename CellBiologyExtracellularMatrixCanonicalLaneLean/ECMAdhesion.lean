import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyExtracellularMatrixCanonicalLaneLean.ECMObjects

/-!
# ECM Adhesion Package
-/

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixCanonicalLaneLean

structure ECMAdhesionPackage where
  integrinBinding : Prop
  focalAdhesionFormation : Prop
  adhesionStrength : Prop
  mechanotransduction : Prop

structure ECMAdhesionEvidence (P : ECMAdhesionPackage) where
  integrinBindingClosed : P.integrinBinding
  focalAdhesionFormationClosed : P.focalAdhesionFormation
  adhesionStrengthClosed : P.adhesionStrength
  mechanotransductionClosed : P.mechanotransduction

def ECMAdhesionClosed (P : ECMAdhesionPackage) : Prop :=
  P.integrinBinding ∧ P.focalAdhesionFormation ∧ P.adhesionStrength ∧ P.mechanotransduction

theorem ecm_adhesion_closed_from_evidence (P : ECMAdhesionPackage) (E : ECMAdhesionEvidence P) :
    ECMAdhesionClosed P := by
  exact And.intro E.integrinBindingClosed
    (And.intro E.focalAdhesionFormationClosed
      (And.intro E.adhesionStrengthClosed E.mechanotransductionClosed))

end CellBiologyExtracellularMatrixCanonicalLaneLean
end HautevilleHouse