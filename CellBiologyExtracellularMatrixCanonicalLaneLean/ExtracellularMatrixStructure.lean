import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixCanonicalLaneLean

structure ECMStructure where
  scaffoldProteins : Type
  glycosaminoglycans : Type
  proteoglycans : Type
  integrins : Type
  scaffoldProteinsDefined : Prop
  glycosaminoglycansDefined : Prop
  proteoglycansDefined : Prop
  integrinsDefined : Prop

structure ECMStructureEvidence (E : ECMStructure) where
  scaffoldProteinsDefinedClosed : E.scaffoldProteinsDefined
  glycosaminoglycansDefinedClosed : E.glycosaminoglycansDefined
  proteoglycansDefinedClosed : E.proteoglycansDefined
  integrinsDefinedClosed : E.integrinsDefined

def ECMStructureClosed (E : ECMStructure) : Prop :=
  E.scaffoldProteinsDefined ∧ E.glycosaminoglycansDefined ∧
  E.proteoglycansDefined ∧ E.integrinsDefined

theorem ecm_structure_closed_from_evidence (E : ECMStructure) (Ev : ECMStructureEvidence E) :
    ECMStructureClosed E := by
  exact And.intro Ev.scaffoldProteinsDefinedClosed
    (And.intro Ev.glycosaminoglycansDefinedClosed
      (And.intro Ev.proteoglycansDefinedClosed Ev.integrinsDefinedClosed))

end CellBiologyExtracellularMatrixCanonicalLaneLean
end HautevilleHouse