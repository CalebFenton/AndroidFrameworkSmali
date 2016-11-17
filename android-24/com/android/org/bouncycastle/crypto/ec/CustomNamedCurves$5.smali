.class final Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$5;
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
    .line 263
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 11

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v10, 0x1

    #@2
    const/4 v7, 0x0

    #@3
    const/16 v9, 0x10

    #@5
    .line 267
    const/4 v8, 0x0

    #@6
    .line 268
    .local v8, "S":[B
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    #@8
    .line 269
    new-instance v1, Ljava/math/BigInteger;

    #@a
    const-string/jumbo v4, "7ae96a2b657c07106e64479eac3434e99cf0497512f58995c1396c28719501ee"

    #@d
    invoke-direct {v1, v4, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@10
    .line 270
    new-instance v2, Ljava/math/BigInteger;

    #@12
    const-string/jumbo v4, "5363ad4cc05c30e0a5261c028812645a122e22ea20816678df02967c1b23bd72"

    #@15
    invoke-direct {v2, v4, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@18
    .line 271
    new-array v3, v6, [Ljava/math/BigInteger;

    #@1a
    .line 272
    new-instance v4, Ljava/math/BigInteger;

    #@1c
    const-string/jumbo v5, "3086d221a7d46bcde86c90e49284eb15"

    #@1f
    invoke-direct {v4, v5, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@22
    aput-object v4, v3, v7

    #@24
    .line 273
    new-instance v4, Ljava/math/BigInteger;

    #@26
    const-string/jumbo v5, "-e4437ed6010e88286f547fa90abfe4c3"

    #@29
    invoke-direct {v4, v5, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@2c
    aput-object v4, v3, v10

    #@2e
    .line 274
    new-array v4, v6, [Ljava/math/BigInteger;

    #@30
    .line 275
    new-instance v5, Ljava/math/BigInteger;

    #@32
    const-string/jumbo v6, "114ca50f7a8e2f3f657c1108d9d44cfd8"

    #@35
    invoke-direct {v5, v6, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@38
    aput-object v5, v4, v7

    #@3a
    .line 276
    new-instance v5, Ljava/math/BigInteger;

    #@3c
    const-string/jumbo v6, "3086d221a7d46bcde86c90e49284eb15"

    #@3f
    invoke-direct {v5, v6, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@42
    aput-object v5, v4, v10

    #@44
    .line 277
    new-instance v5, Ljava/math/BigInteger;

    #@46
    const-string/jumbo v6, "3086d221a7d46bcde86c90e49284eb153dab"

    #@49
    invoke-direct {v5, v6, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@4c
    .line 278
    new-instance v6, Ljava/math/BigInteger;

    #@4e
    const-string/jumbo v7, "e4437ed6010e88286f547fa90abfe4c42212"

    #@51
    invoke-direct {v6, v7, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@54
    .line 279
    const/16 v7, 0x110

    #@56
    .line 268
    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    #@59
    .line 280
    .local v0, "glv":Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Curve;

    #@5b
    invoke-direct {v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Curve;-><init>()V

    #@5e
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->-wrap0(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@61
    move-result-object v2

    #@62
    .line 281
    .local v2, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    #@64
    const-string/jumbo v1, "0479BE667EF9DCBBAC55A06295CE870B07029BFCDB2DCE28D959F2815B16F81798483ADA7726A3C4655DA4FBFC0E1108A8FD17B448A68554199C47D08FFB10D4B8"

    #@67
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@6a
    move-result-object v1

    #@6b
    invoke-direct {v3, v2, v1}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)V

    #@6e
    .line 284
    .local v3, "G":Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@70
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    #@73
    move-result-object v4

    #@74
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    #@77
    move-result-object v5

    #@78
    move-object v6, v8

    #@79
    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@7c
    return-object v1
.end method
