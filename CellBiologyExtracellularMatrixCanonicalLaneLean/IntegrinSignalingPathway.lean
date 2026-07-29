import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixCanonicalLaneLean

structure IntegrinSignalingPackage where
  ligandBinding : Prop
  conformationalActivation : Prop
  focalAdhesionKinaseRecruitment : Prop
  downstreamKinaseCascade : Prop
  cytoskeletalReorganization : Prop
  geneExpressionRegulation : Prop

structure IntegrinSignalingEvidence (I : IntegrinSignalingPackage) where
  ligandBindingClosed : I.ligandBinding
  conformationalActivationClosed : I.conformationalActivation
  focalAdhesionKinaseRecruitmentClosed : I.focalAdhesionKinaseRecruitment
  downstreamKinaseCascadeClosed : I.downstreamKinaseCascade
  cytoskeletalReorganizationClosed : I.cytoskeletalReorganization
  geneExpressionRegulationClosed : I.geneExpressionRegulation

def IntegrinSignalingClosed (I : IntegrinSignalingPackage) : Prop :=
  I.ligandBinding ∧ I.conformationalActivation ∧ I.focalAdhesionKinaseRecruitment ∧
  I.downstreamKinaseCascade ∧ I.cytoskeletalReorganization ∧ I.geneExpressionRegulation

theorem integrin_signaling_closed_from_evidence (I : IntegrinSignalingPackage) (Ev : IntegrinSignalingEvidence I) : IntegrinSignalingClosed I := by
  exact And.intro Ev.ligandBindingClosed
    (And.intro Ev.conformationalActivationClosed
      (And.intro Ev.focalAdhesionKinaseRecruitmentClosed
        (And.intro Ev.downstreamKinaseCascadeClosed
          (And.intro Ev.cytoskeletalReorganizationClosed Ev.geneExpressionRegulationClosed))))

end CellBiologyExtracellularMatrixCanonicalLaneLean
end HautevilleHouse