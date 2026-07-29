import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixCanonicalLaneLean

structure ECMAdhesionFocalPointPackage where
  integrinConcentration : Prop
  focalAdhesionKinaseActivation : Prop
  vinculinRecruitment : Prop
  actinCytoskeletonLinkage : Prop
  mechanotransductionResponse : Prop

structure ECMAdhesionFocalPointEvidence (P : ECMAdhesionFocalPointPackage) where
  integrinConcentrationClosed : P.integrinConcentration
  focalAdhesionKinaseActivationClosed : P.focalAdhesionKinaseActivation
  vinculinRecruitmentClosed : P.vinculinRecruitment
  actinCytoskeletonLinkageClosed : P.actinCytoskeletonLinkage
  mechanotransductionResponseClosed : P.mechanotransductionResponse

def ECMAdhesionFocalPointClosed (P : ECMAdhesionFocalPointPackage) : Prop :=
  P.integrinConcentration ∧ P.focalAdhesionKinaseActivation ∧
  P.vinculinRecruitment ∧ P.actinCytoskeletonLinkage ∧
  P.mechanotransductionResponse

theorem ecm_adhesion_focal_point_closed_from_evidence
    (P : ECMAdhesionFocalPointPackage) (E : ECMAdhesionFocalPointEvidence P) :
    ECMAdhesionFocalPointClosed P := by
  exact And.intro E.integrinConcentrationClosed
    (And.intro E.focalAdhesionKinaseActivationClosed
      (And.intro E.vinculinRecruitmentClosed
        (And.intro E.actinCytoskeletonLinkageClosed
          E.mechanotransductionResponseClosed)))

end CellBiologyExtracellularMatrixCanonicalLaneLean
end HautevilleHouse
