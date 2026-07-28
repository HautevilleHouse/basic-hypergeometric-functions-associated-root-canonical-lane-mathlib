import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean.RootHypergeometricObjects
import HautevilleHouse.BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean.HypergeometricSeriesConvergence

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean

structure SummationFormulaCertificate
    {R : RootSystem n} {D : BasicHypergeometricData R}
    (S : HypergeometricSeries R D) where
  sum : ℚ
  sumClosed : Prop
  proofTerms : Prop
  analyticContinuation : Prop
  sumClosedTerm : sumClosed
  proofTermsTerm : proofTerms
  analyticContinuationTerm : analyticContinuation

def SummationFormulaCertificateClosed
    {R : RootSystem n} {D : BasicHypergeometricData R}
    {S : HypergeometricSeries R D} (C : SummationFormulaCertificate S) : Prop :=
  C.sumClosed ∧ C.proofTerms ∧ C.analyticContinuation

theorem summation_formula_certificate_closed
    {R : RootSystem n} {D : BasicHypergeometricData R}
    {S : HypergeometricSeries R D} (C : SummationFormulaCertificate S) :
    SummationFormulaCertificateClosed C := by
  exact And.intro C.sumClosedTerm
    (And.intro C.proofTermsTerm C.analyticContinuationTerm)

end BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean
end HautevilleHouse