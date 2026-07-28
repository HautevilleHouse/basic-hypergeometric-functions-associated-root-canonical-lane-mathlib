import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean.RootHypergeometricObjects
import HautevilleHouse.BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean.HypergeometricSeriesConvergence

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean

structure SummationFormulaEvidenceTerms
    {R : RootSystem n} {D : BasicHypergeometricData R}
    {S : HypergeometricSeries R D} (C : SummationFormulaCertificate S) where
  sumClosed : C.sumClosed
  proofTerms : C.proofTerms
  analyticContinuation : C.analyticContinuation

def SummationFormulaCertificate.evidenceTerms
    {R : RootSystem n} {D : BasicHypergeometricData R}
    {S : HypergeometricSeries R D} (C : SummationFormulaCertificate S) :
    SummationFormulaEvidenceTerms C := {
  sumClosed := C.sumClosed
  proofTerms := C.proofTerms
  analyticContinuation := C.analyticContinuation
}

end BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean
end HautevilleHouse