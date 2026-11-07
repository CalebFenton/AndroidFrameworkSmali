.class Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$19;
.super Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;
.source "SECNamedCurves.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 637
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .registers 10

    .line 645
    const-string p0, "03E5A88919D7CAFCBF415F07C2176573B2"

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    .line 646
    const-string p0, "04B8266A46C55657AC734CE38F018F2192"

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    .line 647
    const-string p0, "0400000000000000016954A233049BA98F"

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v7

    const-wide/16 v0, 0x2

    .line 648
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    .line 650
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    const/16 v1, 0x83

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/16 v4, 0x8

    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smconfigureCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 8

    .line 655
    const-string v0, "985BD3ADBAD4D696E676875615175A21B43A97E3"

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v6

    .line 656
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 658
    const-string p0, "040356DCD8F2F95031AD652D23951BB366A80648F06D867940A5366D9E265DE9EB240F"

    invoke-static {v2, p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smconfigureBasepoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object v3

    .line 661
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v1
.end method
