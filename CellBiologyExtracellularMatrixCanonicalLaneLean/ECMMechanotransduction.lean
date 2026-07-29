import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixCanonicalLaneLean

structure MechanotransductionPackage where
  elasticModulusSensing : Prop
  cellTractionForce : Prop
  yapTazTranslocation : Prop
  focalAdhesionReinforcement : Prop
  extracellularRemodeling : Prop
  nuclearDeformation : Prop

structure MechanotransductionEvidence (M : MechanotransductionPackage) where
  elasticModulusSensingClosed : M.elasticModulusSensing
  cellTractionForceClosed : M.cellTractionForce
  yapTazTranslocationClosed : M.yapTazTranslocation
  focalAdhesionReinforcementClosed : M.focalAdhesionReinforcement
  extracellularRemodelingClosed : M.extracellularRemodeling
  nuclearDeformationClosed : M.nuclearDeformation

def MechanotransductionClosed (M : MechanotransductionPackage) : Prop :=
  M.elasticModulusSensing ∧ M.cellTractionForce ∧ M.yapTazTranslocation ∧
  M.focalAdhesionReinforcement ∧ M.extracellularRemodeling ∧ M.nuclearDeformation

theorem mechanotransduction_closed_from_evidence (M : MechanotransductionPackage) (Ev : MechanotransductionEvidence M) : MechanotransductionClosed M := by
  exact And.intro Ev.elasticModulusSensingClosed
    (And.intro Ev.cellTractionForceClosed
      (And.intro Ev.yapTazTranslocationClosed
        (And.intro Ev.focalAdhesionReinforcementClosed
          (And.intro Ev.extracellularRemodelingClosed Ev.nuclearDeformationClosed))))

end CellBiologyExtracellularMatrixCanonicalLaneLean
end HautevilleHouse