.class final Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$4;
.super Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;
.source "CustomNamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 6

    #@0
    .prologue
    .line 149
    const-string/jumbo v0, "BD71344799D5C7FCDC45B59FA3B9AB8F6A948BC5"

    #@3
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@6
    move-result-object v5

    #@7
    .line 150
    .local v5, "S":[B
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Curve;

    #@9
    invoke-direct {v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Curve;-><init>()V

    #@c
    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->-wrap1(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@f
    move-result-object v1

    #@10
    .line 151
    .local v1, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    const-string/jumbo v0, "04B70E0CBD6BB4BF7F321390B94A03C1D356C21122343280D6115C1D21BD376388B5F723FB4C22DFE6CD4375A05A07476444D5819985007E34"

    #@13
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@1a
    move-result-object v2

    #@1b
    .line 154
    .local v2, "G":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@1d
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    #@24
    move-result-object v4

    #@25
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@28
    return-object v0
.end method
