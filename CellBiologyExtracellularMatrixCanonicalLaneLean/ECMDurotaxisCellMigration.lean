import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixCanonicalLaneLean

structure ECMDurotaxisCellMigrationPackage where
  stiffnessGradientDetection : Prop
  focalAdhesionPolarization : Prop
  actinRetrogradeFlow : Prop
  tractionForceGeneration : Prop
  directionalMigration : Prop

structure ECMDurotaxisCellMigrationEvidence (P : ECMDurotaxisCellMigrationPackage) where
  stiffnessGradientDetectionClosed : P.stiffnessGradientDetection
  focalAdhesionPolarizationClosed : P.focalAdhesionPolarization
  actinRetrogradeFlowClosed : P.actinRetrogradeFlow
  tractionForceGenerationClosed : P.tractionForceGeneration
  directionalMigrationClosed : P.directionalMigration

def ECMDurotaxisCellMigrationClosed (P : ECMDurotaxisCellMigrationPackage) : Prop :=
  P.stiffnessGradientDetection ∧ P.focalAdhesionPolarization ∧
  P.actinRetrogradeFlow ∧ P.tractionForceGeneration ∧
  P.directionalMigration

theorem ecm_durotaxis_cell_migration_closed_from_evidence
    (P : ECMDurotaxisCellMigrationPackage) (E : ECMDurotaxisCellMigrationEvidence P) :
    ECMDurotaxisCellMigrationClosed P := by
  exact And.intro E.stiffnessGradientDetectionClosed
    (And.intro E.focalAdhesionPolarizationClosed
      (And.intro E.actinRetrogradeFlowClosed
        (And.intro E.tractionForceGenerationClosed
          E.directionalMigrationClosed)))

end CellBiologyExtracellularMatrixCanonicalLaneLean
end HautevilleHouse
