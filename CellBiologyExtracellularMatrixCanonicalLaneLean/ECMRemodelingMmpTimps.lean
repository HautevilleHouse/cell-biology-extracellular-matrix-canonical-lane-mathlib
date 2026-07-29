import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixCanonicalLaneLean

structure ECMRemodelingMMPTIMPPackage where
  matrixMetalloproteinaseSecretion : Prop
  timpInhibition : Prop
  collagenDegradation : Prop
  ecmFragmentsSignaling : Prop
  tissueRepairActivation : Prop

structure ECMRemodelingMMPTIMPEvidence (P : ECMRemodelingMMPTIMPPackage) where
  matrixMetalloproteinaseSecretionClosed : P.matrixMetalloproteinaseSecretion
  timpInhibitionClosed : P.timpInhibition
  collagenDegradationClosed : P.collagenDegradation
  ecmFragmentsSignalingClosed : P.ecmFragmentsSignaling
  tissueRepairActivationClosed : P.tissueRepairActivation

def ECMRemodelingMMPTIMPClosed (P : ECMRemodelingMMPTIMPPackage) : Prop :=
  P.matrixMetalloproteinaseSecretion ∧ P.timpInhibition ∧
  P.collagenDegradation ∧ P.ecmFragmentsSignaling ∧
  P.tissueRepairActivation

theorem ecm_remodeling_mmp_timp_closed_from_evidence
    (P : ECMRemodelingMMPTIMPPackage) (E : ECMRemodelingMMPTIMPEvidence P) :
    ECMRemodelingMMPTIMPClosed P := by
  exact And.intro E.matrixMetalloproteinaseSecretionClosed
    (And.intro E.timpInhibitionClosed
      (And.intro E.collagenDegradationClosed
        (And.intro E.ecmFragmentsSignalingClosed
          E.tissueRepairActivationClosed)))

end CellBiologyExtracellularMatrixCanonicalLaneLean
end HautevilleHouse
