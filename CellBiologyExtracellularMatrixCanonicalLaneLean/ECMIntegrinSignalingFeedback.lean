import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixCanonicalLaneLean

structure ECMIntegrinSignalingFeedbackPackage where
  integrinLigandBindingAffinity : Prop
  focalAdhesionKinaseAutophosphorylation : Prop
  srcFamilyKinaseRecruitment : Prop
  paxillinCrkCasmComplexFormation : Prop
  rhoGtpaseActivityModulation : Prop
  ecmCompositionFeedback : Prop

structure ECMIntegrinSignalingFeedbackEvidence (P : ECMIntegrinSignalingFeedbackPackage) where
  integrinLigandBindingAffinityClosed : P.integrinLigandBindingAffinity
  focalAdhesionKinaseAutophosphorylationClosed : P.focalAdhesionKinaseAutophosphorylation
  srcFamilyKinaseRecruitmentClosed : P.srcFamilyKinaseRecruitment
  paxillinCrkCasmComplexFormationClosed : P.paxillinCrkCasmComplexFormation
  rhoGtpaseActivityModulationClosed : P.rhoGtpaseActivityModulation
  ecmCompositionFeedbackClosed : P.ecmCompositionFeedback

def ECMIntegrinSignalingFeedbackClosed (P : ECMIntegrinSignalingFeedbackPackage) : Prop :=
  P.integrinLigandBindingAffinity ∧ P.focalAdhesionKinaseAutophosphorylation ∧
  P.srcFamilyKinaseRecruitment ∧ P.paxillinCrkCasmComplexFormation ∧
  P.rhoGtpaseActivityModulation ∧ P.ecmCompositionFeedback

theorem ecm_integrin_signaling_feedback_closed_from_evidence
    (P : ECMIntegrinSignalingFeedbackPackage) (E : ECMIntegrinSignalingFeedbackEvidence P) :
    ECMIntegrinSignalingFeedbackClosed P := by
  exact And.intro E.integrinLigandBindingAffinityClosed
    (And.intro E.focalAdhesionKinaseAutophosphorylationClosed
      (And.intro E.srcFamilyKinaseRecruitmentClosed
        (And.intro E.paxillinCrkCasmComplexFormationClosed
          (And.intro E.rhoGtpaseActivityModulationClosed
            E.ecmCompositionFeedbackClosed))))

end CellBiologyExtracellularMatrixCanonicalLaneLean
end HautevilleHouse
