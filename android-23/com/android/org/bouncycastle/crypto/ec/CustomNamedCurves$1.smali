.class final Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$1;
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
    .line 73
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
    .line 77
    const/4 v8, 0x0

    #@6
    .line 78
    .local v8, "S":[B
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    #@8
    .line 79
    new-instance v1, Ljava/math/BigInteger;

    #@a
    const-string/jumbo v4, "bb85691939b869c1d087f601554b96b80cb4f55b35f433c2"

    #@d
    invoke-direct {v1, v4, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@10
    .line 80
    new-instance v2, Ljava/math/BigInteger;

    #@12
    const-string/jumbo v4, "3d84f26c12238d7b4f3d516613c1759033b1a5800175d0b1"

    #@15
    invoke-direct {v2, v4, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@18
    .line 81
    new-array v3, v6, [Ljava/math/BigInteger;

    #@1a
    .line 82
    new-instance v4, Ljava/math/BigInteger;

    #@1c
    const-string/jumbo v5, "71169be7330b3038edb025f1"

    #@1f
    invoke-direct {v4, v5, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@22
    aput-object v4, v3, v7

    #@24
    .line 83
    new-instance v4, Ljava/math/BigInteger;

    #@26
    const-string/jumbo v5, "-b3fb3400dec5c4adceb8655c"

    #@29
    invoke-direct {v4, v5, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@2c
    aput-object v4, v3, v10

    #@2e
    .line 84
    new-array v4, v6, [Ljava/math/BigInteger;

    #@30
    .line 85
    new-instance v5, Ljava/math/BigInteger;

    #@32
    const-string/jumbo v6, "12511cfe811d0f4e6bc688b4d"

    #@35
    invoke-direct {v5, v6, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@38
    aput-object v5, v4, v7

    #@3a
    .line 86
    new-instance v5, Ljava/math/BigInteger;

    #@3c
    const-string/jumbo v6, "71169be7330b3038edb025f1"

    #@3f
    invoke-direct {v5, v6, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@42
    aput-object v5, v4, v10

    #@44
    .line 87
    new-instance v5, Ljava/math/BigInteger;

    #@46
    const-string/jumbo v6, "71169be7330b3038edb025f1d0f9"

    #@49
    invoke-direct {v5, v6, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@4c
    .line 88
    new-instance v6, Ljava/math/BigInteger;

    #@4e
    const-string/jumbo v7, "b3fb3400dec5c4adceb8655d4c94"

    #@51
    invoke-direct {v6, v7, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@54
    .line 89
    const/16 v7, 0xd0

    #@56
    .line 78
    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    #@59
    .line 90
    .local v0, "glv":Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Curve;

    #@5b
    invoke-direct {v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Curve;-><init>()V

    #@5e
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->-wrap0(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@61
    move-result-object v2

    #@62
    .line 91
    .local v2, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    const-string/jumbo v1, "04DB4FF10EC057E9AE26B07D0280B7F4341DA5D1B1EAE06C7D9B2F2F6D9C5628A7844163D015BE86344082AA88D95E2F9D"

    #@65
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@68
    move-result-object v1

    #@69
    invoke-virtual {v2, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@6c
    move-result-object v3

    #@6d
    .line 94
    .local v3, "G":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@6f
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    #@72
    move-result-object v4

    #@73
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    #@76
    move-result-object v5

    #@77
    move-object v6, v8

    #@78
    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@7b
    return-object v1
.end method
