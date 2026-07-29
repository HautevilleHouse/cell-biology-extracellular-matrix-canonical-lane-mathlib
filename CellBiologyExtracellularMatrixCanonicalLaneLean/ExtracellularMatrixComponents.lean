import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixCanonicalLaneLean

structure ExtracellularMatrixPackage where
  collagen : Type
  proteoglycans : Type
  laminin : Type
  fibronectin : Type
  integrinReceptors : Type
  matrixAssembly : Prop
  fibrilFormation : Prop
  degradationPathway : Prop
  mechanicalStiffness : Prop
  cellAdhesion : Prop
  matrixAssemblyTerm : matrixAssembly
  fibrilFormationTerm : fibrilFormation
  degradationPathwayTerm : degradationPathway
  mechanicalStiffnessTerm : mechanicalStiffness
  cellAdhesionTerm : cellAdhesion

structure ExtracellularMatrixEvidence (E : ExtracellularMatrixPackage) where
  matrixAssemblyClosed : E.matrixAssembly
  fibrilFormationClosed : E.fibrilFormation
  degradationPathwayClosed : E.degradationPathway
  mechanicalStiffnessClosed : E.mechanicalStiffness
  cellAdhesionClosed : E.cellAdhesion

def ExtracellularMatrixClosed (E : ExtracellularMatrixPackage) : Prop :=
  E.matrixAssembly ∧ E.fibrilFormation ∧ E.degradationPathway ∧ E.mechanicalStiffness ∧ E.cellAdhesion

theorem extracellular_matrix_closed_from_evidence (E : ExtracellularMatrixPackage) (Ev : ExtracellularMatrixEvidence E) :
    ExtracellularMatrixClosed E := by
  exact And.intro Ev.matrixAssemblyClosed
    (And.intro Ev.fibrilFormationClosed
      (And.intro Ev.degradationPathwayClosed
        (And.intro Ev.mechanicalStiffnessClosed Ev.cellAdhesionClosed)))

end CellBiologyExtracellularMatrixCanonicalLaneLean
end HautevilleHouse