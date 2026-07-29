import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixCanonicalLaneLean

structure ECMStiffnessYapTazMechanotransductionPackage where
  ecmStiffnessSensing : Prop
  integrinRhoAalignment : Prop
  yapNuclearTranslocation : Prop
  tazTranscriptionalActivity : Prop
  cellFateCommitment : Prop

structure ECMStiffnessYapTazMechanotransductionEvidence (P : ECMStiffnessYapTazMechanotransductionPackage) where
  ecmStiffnessSensingClosed : P.ecmStiffnessSensing
  integrinRhoAalignmentClosed : P.integrinRhoAalignment
  yapNuclearTranslocationClosed : P.yapNuclearTranslocation
  tazTranscriptionalActivityClosed : P.tazTranscriptionalActivity
  cellFateCommitmentClosed : P.cellFateCommitment

def ECMStiffnessYapTazMechanotransductionClosed (P : ECMStiffnessYapTazMechanotransductionPackage) : Prop :=
  P.ecmStiffnessSensing ∧ P.integrinRhoAalignment ∧
  P.yapNuclearTranslocation ∧ P.tazTranscriptionalActivity ∧
  P.cellFateCommitment

theorem ecm_stiffness_yap_taz_mechanotransduction_closed_from_evidence
    (P : ECMStiffnessYapTazMechanotransductionPackage) (E : ECMStiffnessYapTazMechanotransductionEvidence P) :
    ECMStiffnessYapTazMechanotransductionClosed P := by
  exact And.intro E.ecmStiffnessSensingClosed
    (And.intro E.integrinRhoAalignmentClosed
      (And.intro E.yapNuclearTranslocationClosed
        (And.intro E.tazTranscriptionalActivityClosed
          E.cellFateCommitmentClosed)))

end CellBiologyExtracellularMatrixCanonicalLaneLean
end HautevilleHouse
