import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixCanonicalLaneLean

structure FocalAdhesionPackage where
  integrinClustering : Prop
  talinRecruitment : Prop
  vinculinActivation : Prop
  paxillinRecruitment : Prop
  actinStressFiberAnchorage : Prop
  forceTransmission : Prop

structure FocalAdhesionEvidence (F : FocalAdhesionPackage) where
  integrinClusteringClosed : F.integrinClustering
  talinRecruitmentClosed : F.talinRecruitment
  vinculinActivationClosed : F.vinculinActivation
  paxillinRecruitmentClosed : F.paxillinRecruitment
  actinStressFiberAnchorageClosed : F.actinStressFiberAnchorage
  forceTransmissionClosed : F.forceTransmission

def FocalAdhesionClosed (F : FocalAdhesionPackage) : Prop :=
  F.integrinClustering ∧ F.talinRecruitment ∧ F.vinculinActivation ∧
  F.paxillinRecruitment ∧ F.actinStressFiberAnchorage ∧ F.forceTransmission

theorem focal_adhesion_closed_from_evidence (F : FocalAdhesionPackage) (Ev : FocalAdhesionEvidence F) : FocalAdhesionClosed F := by
  exact And.intro Ev.integrinClusteringClosed
    (And.intro Ev.talinRecruitmentClosed
      (And.intro Ev.vinculinActivationClosed
        (And.intro Ev.paxillinRecruitmentClosed
          (And.intro Ev.actinStressFiberAnchorageClosed Ev.forceTransmissionClosed))))

end CellBiologyExtracellularMatrixCanonicalLaneLean
end HautevilleHouse