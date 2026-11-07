.class Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$7;
.super Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;
.source "CustomNamedCurves.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 374
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .registers 1

    .line 377
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;

    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;-><init>()V

    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->-$$Nest$smconfigureCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 8

    .line 382
    const-string v0, "A335926AA319A27A1D00896A6773A4827ACDAC73"

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v6

    .line 383
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 384
    const-string p0, "04AA87CA22BE8B05378EB1C71EF320AD746E1D3B628BA79B9859F741E082542A385502F25DBF55296C3A545E3872760AB73617DE4A96262C6F5D9E98BF9292DC29F8F41DBD289A147CE9DA3113B5F0B8C00A60B1CE1D7E819D7A431D7C90EA0E5F"

    invoke-static {v2, p0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->-$$Nest$smconfigureBasepoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object v3

    .line 387
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v1
.end method
