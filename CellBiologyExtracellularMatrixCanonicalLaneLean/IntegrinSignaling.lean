import canonicalLaneMathlib.AdmissibleClass
import CellBiologyExtracellularMatrixCanonicalLaneLean.ExtracellularMatrixComponents

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixCanonicalLaneLean

structure IntegrinSignalingPackage {E : ExtracellularMatrixPackage} where
  integrinActivation : Prop
  focalAdhesionKinase : Prop
  downstreamCascade : Prop
  cytoskeletalRearrangement : Prop
  geneExpressionRegulation : Prop
  integrinActivationTerm : integrinActivation
  focalAdhesionKinaseTerm : focalAdhesionKinase
  downstreamCascadeTerm : downstreamCascade
  cytoskeletalRearrangementTerm : cytoskeletalRearrangement
  geneExpressionRegulationTerm : geneExpressionRegulation

structure IntegrinSignalingEvidence {E : ExtracellularMatrixPackage} (I : IntegrinSignalingPackage E) where
  integrinActivationClosed : I.integrinActivation
  focalAdhesionKinaseClosed : I.focalAdhesionKinase
  downstreamCascadeClosed : I.downstreamCascade
  cytoskeletalRearrangementClosed : I.cytoskeletalRearrangement
  geneExpressionRegulationClosed : I.geneExpressionRegulation

def IntegrinSignalingClosed {E : ExtracellularMatrixPackage} (I : IntegrinSignalingPackage E) : Prop :=
  I.integrinActivation ∧ I.focalAdhesionKinase ∧ I.downstreamCascade ∧ I.cytoskeletalRearrangement ∧ I.geneExpressionRegulation

theorem integrin_signaling_closed_from_evidence {E : ExtracellularMatrixPackage} (I : IntegrinSignalingPackage E) (Ev : IntegrinSignalingEvidence I) :
    IntegrinSignalingClosed I := by
  exact And.intro Ev.integrinActivationClosed
    (And.intro Ev.focalAdhesionKinaseClosed
      (And.intro Ev.downstreamCascadeClosed
        (And.intro Ev.cytoskeletalRearrangementClosed Ev.geneExpressionRegulationClosed)))

end CellBiologyExtracellularMatrixCanonicalLaneLean
end HautevilleHouse