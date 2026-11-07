.class Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$13;
.super Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;
.source "SECNamedCurves.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 456
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .registers 8

    .line 460
    const-string p0, "FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF"

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    .line 461
    const-string p0, "FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFC"

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    .line 462
    const-string p0, "5AC635D8AA3A93E7B3EBBD55769886BC651D06B0CC53B0F63BCE3C3E27D2604B"

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    .line 463
    const-string p0, "FFFFFFFF00000000FFFFFFFFFFFFFFFFBCE6FAADA7179E84F3B9CAC2FC632551"

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    const-wide/16 v5, 0x1

    .line 464
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 466
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smconfigureCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 8

    .line 471
    const-string v0, "C49D360886E704936A6678E1139D26B7819F7E90"

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v6

    .line 472
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 474
    const-string p0, "046B17D1F2E12C4247F8BCE6E563A440F277037D812DEB33A0F4A13945D898C2964FE342E2FE1A7F9B8EE7EB4A7C0F9E162BCE33576B315ECECBB6406837BF51F5"

    invoke-static {v2, p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smconfigureBasepoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object v3

    .line 477
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v1
.end method
