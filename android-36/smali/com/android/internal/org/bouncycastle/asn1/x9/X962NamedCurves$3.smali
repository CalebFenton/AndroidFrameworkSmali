.class Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$3;
.super Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;
.source "X962NamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .registers 9

    .line 94
    const-string v0, "ffffffffffffffffffffffff7a62d031c83f4294f640ec13"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    .line 95
    .local v5, "n":Ljava/math/BigInteger;
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 97
    .local v6, "h":Ljava/math/BigInteger;
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;

    .line 98
    const-string v0, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFF"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    .line 99
    const-string v0, "fffffffffffffffffffffffffffffffefffffffffffffffc"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    .line 100
    const-string v0, "22123dc2395a05caa7423daeccc94760a7d462256bd56916"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    .line 97
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->-$$Nest$smconfigureCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist createParameters()Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 8

    .line 106
    const-string v0, "c469684435deb378c4b65ca9591e2a5763059a2e"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v6

    .line 107
    .local v6, "S":[B
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$3;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 109
    .local v2, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    const-string v0, "027d29778100c65a1da1783716588dce2b8b4aee8e228f1896"

    invoke-static {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->-$$Nest$smconfigureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object v3

    .line 112
    .local v3, "G":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v1
.end method
