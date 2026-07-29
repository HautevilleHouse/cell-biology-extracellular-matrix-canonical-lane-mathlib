import HautevilleHouse.CellBiologyExtracellularMatrixCanonicalLaneLean.IntegrinSignaling

/-!
# ECM Degradation Package
-/

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixCanonicalLaneLean

structure ECMDegradationPackage (A : ECMAdhesionPackage) (S : IntegrinSignalingPackage A) where
  mMPActivation : Prop
  collagenDegradation : Prop
  matrixRemodeling : Prop
  invasionPotential : Prop

structure ECMDegradationEvidence {A : ECMAdhesionPackage} {S : IntegrinSignalingPackage A}
    (D : ECMDegradationPackage A S) where
  mMPActivationClosed : D.mMPActivation
  collagenDegradationClosed : D.collagenDegradation
  matrixRemodelingClosed : D.matrixRemodeling
  invasionPotentialClosed : D.invasionPotential

def ECMDegradationClosed {A : ECMAdhesionPackage} {S : IntegrinSignalingPackage A}
    (D : ECMDegradationPackage A S) : Prop :=
  D.mMPActivation ∧ D.collagenDegradation ∧ D.matrixRemodeling ∧ D.invasionPotential

theorem ecm_degradation_closed_from_evidence
    {A : ECMAdhesionPackage} {S : IntegrinSignalingPackage A}
    (D : ECMDegradationPackage A S) (E : ECMDegradationEvidence D) :
    ECMDegradationClosed D := by
  exact And.intro E.mMPActivationClosed
    (And.intro E.collagenDegradationClosed
      (And.intro E.matrixRemodelingClosed E.invasionPotentialClosed))

end CellBiologyExtracellularMatrixCanonicalLaneLean
end HautevilleHouse