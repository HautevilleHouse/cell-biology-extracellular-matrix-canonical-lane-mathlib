import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixCanonicalLaneLean

structure MMPRegulationPackage where
  proMMPSecretion : Prop
  proMMPActivation : Prop
  tissueInhibitorsProduction : Prop
  proteolyticCleavageActivity : Prop
  fragmentRelease : Prop

structure MMPRegulationEvidence (M : MMPRegulationPackage) where
  proMMPSecretionClosed : M.proMMPSecretion
  proMMPActivationClosed : M.proMMPActivation
  tissueInhibitorsProductionClosed : M.tissueInhibitorsProduction
  proteolyticCleavageActivityClosed : M.proteolyticCleavageActivity
  fragmentReleaseClosed : M.fragmentRelease

def MMPRegulationClosed (M : MMPRegulationPackage) : Prop :=
  M.proMMPSecretion ∧ M.proMMPActivation ∧ M.tissueInhibitorsProduction ∧
  M.proteolyticCleavageActivity ∧ M.fragmentRelease

theorem mmp_regulation_closed_from_evidence (M : MMPRegulationPackage) (Ev : MMPRegulationEvidence M) : MMPRegulationClosed M := by
  exact And.intro Ev.proMMPSecretionClosed
    (And.intro Ev.proMMPActivationClosed
      (And.intro Ev.tissueInhibitorsProductionClosed
        (And.intro Ev.proteolyticCleavageActivityClosed Ev.fragmentReleaseClosed)))

end CellBiologyExtracellularMatrixCanonicalLaneLean
end HautevilleHouse