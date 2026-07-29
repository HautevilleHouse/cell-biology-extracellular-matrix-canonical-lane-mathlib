import canonicalLaneMathlib.AdmissibleClass
import CellBiologyExtracellularMatrixCanonicalLaneLean.ECMRemodeling

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixCanonicalLaneLean

structure ECMmechanicsPackage {E : ECMStructure} (R : ECMRemodelingPackage E) where
  tensileStrength : Prop
  elasticModulus : Prop
  viscoelasticity : Prop
  poroelasticity : Prop

structure ECMmechanicsEvidence {E : ECMStructure} {R : ECMRemodelingPackage E}
    (M : ECMmechanicsPackage R) where
  tensileStrengthClosed : M.tensileStrength
  elasticModulusClosed : M.elasticModulus
  viscoelasticityClosed : M.viscoelasticity
  poroelasticityClosed : M.poroelasticity

def ECMmechanicsClosed {E : ECMStructure} {R : ECMRemodelingPackage E}
    (M : ECMmechanicsPackage R) : Prop :=
  M.tensileStrength ∧ M.elasticModulus ∧ M.viscoelasticity ∧ M.poroelasticity

theorem ecm_mechanics_closed_from_evidence {E : ECMStructure}
    {R : ECMRemodelingPackage E} (M : ECMmechanicsPackage R)
    (Ev : ECMmechanicsEvidence M) : ECMmechanicsClosed M := by
  exact And.intro Ev.tensileStrengthClosed
    (And.intro Ev.elasticModulusClosed
      (And.intro Ev.viscoelasticityClosed Ev.poroelasticityClosed))

end CellBiologyExtracellularMatrixCanonicalLaneLean
end HautevilleHouse