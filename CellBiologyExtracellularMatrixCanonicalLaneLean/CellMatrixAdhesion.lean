import canonicalLaneMathlib.AdmissibleClass
import CellBiologyExtracellularMatrixCanonicalLaneLean.IntegrinSignaling

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixCanonicalLaneLean

structure CellMatrixAdhesionPackage {E : ECMStructure}
    (I : IntegrinSignalingPackage E) where
  adhesionComplexFormation : Prop
  actinCytoskeletonLinkage : Prop
  forceTransmission : Prop
  adhesionTurnover : Prop

structure CellMatrixAdhesionEvidence {E : ECMStructure}
    {I : IntegrinSignalingPackage E} (C : CellMatrixAdhesionPackage I) where
  adhesionComplexFormationClosed : C.adhesionComplexFormation
  actinCytoskeletonLinkageClosed : C.actinCytoskeletonLinkage
  forceTransmissionClosed : C.forceTransmission
  adhesionTurnoverClosed : C.adhesionTurnover

def CellMatrixAdhesionClosed {E : ECMStructure}
    {I : IntegrinSignalingPackage E} (C : CellMatrixAdhesionPackage I) : Prop :=
  C.adhesionComplexFormation ∧ C.actinCytoskeletonLinkage ∧
  C.forceTransmission ∧ C.adhesionTurnover

theorem cell_matrix_adhesion_closed_from_evidence {E : ECMStructure}
    {I : IntegrinSignalingPackage E} (C : CellMatrixAdhesionPackage I)
    (Ev : CellMatrixAdhesionEvidence C) : CellMatrixAdhesionClosed C := by
  exact And.intro Ev.adhesionComplexFormationClosed
    (And.intro Ev.actinCytoskeletonLinkageClosed
      (And.intro Ev.forceTransmissionClosed Ev.adhesionTurnoverClosed))

end CellBiologyExtracellularMatrixCanonicalLaneLean
end HautevilleHouse