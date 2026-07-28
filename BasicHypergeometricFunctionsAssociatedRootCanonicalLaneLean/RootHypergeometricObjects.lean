import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean

structure RootSystem (n : ℕ) where
  coroots : Type u
  roots : Type v
  pairing : coroots → roots → ℤ

structure BasicHypergeometricData (R : RootSystem n) where
  q : ℚ
  parameters : List ℚ
  baseCoefficient : ℚ

structure HypergeometricSeries (R : RootSystem n) (D : BasicHypergeometricData R) where
  terms : ℕ → ℚ
  sum : Prop

structure AdmittedHypergeometricObject (R : RootSystem n) (D : BasicHypergeometricData R) where
  series : HypergeometricSeries R D
  convergenceRadius : ℚ
  sumFormula : Prop
  conclusion : sumFormula

def hypergeometricWitnessClosed (O : AdmittedHypergeometricObject R D) : Prop :=
  O.sumFormula

end BasicHypergeometricFunctionsAssociatedRootCanonicalLaneLean
end HautevilleHouse