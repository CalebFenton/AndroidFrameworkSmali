.class final Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$3;
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
    .line 117
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
    .line 121
    const/4 v8, 0x0

    #@6
    .line 122
    .local v8, "S":[B
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    #@8
    .line 123
    new-instance v1, Ljava/math/BigInteger;

    #@a
    const-string/jumbo v4, "fe0e87005b4e83761908c5131d552a850b3f58b749c37cf5b84d6768"

    #@d
    invoke-direct {v1, v4, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@10
    .line 124
    new-instance v2, Ljava/math/BigInteger;

    #@12
    const-string/jumbo v4, "60dcd2104c4cbc0be6eeefc2bdd610739ec34e317f9b33046c9e4788"

    #@15
    invoke-direct {v2, v4, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@18
    .line 125
    new-array v3, v6, [Ljava/math/BigInteger;

    #@1a
    .line 126
    new-instance v4, Ljava/math/BigInteger;

    #@1c
    const-string/jumbo v5, "6b8cf07d4ca75c88957d9d670591"

    #@1f
    invoke-direct {v4, v5, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@22
    aput-object v4, v3, v7

    #@24
    .line 127
    new-instance v4, Ljava/math/BigInteger;

    #@26
    const-string/jumbo v5, "-b8adf1378a6eb73409fa6c9c637d"

    #@29
    invoke-direct {v4, v5, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@2c
    aput-object v4, v3, v10

    #@2e
    .line 128
    new-array v4, v6, [Ljava/math/BigInteger;

    #@30
    .line 129
    new-instance v5, Ljava/math/BigInteger;

    #@32
    const-string/jumbo v6, "1243ae1b4d71613bc9f780a03690e"

    #@35
    invoke-direct {v5, v6, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@38
    aput-object v5, v4, v7

    #@3a
    .line 130
    new-instance v5, Ljava/math/BigInteger;

    #@3c
    const-string/jumbo v6, "6b8cf07d4ca75c88957d9d670591"

    #@3f
    invoke-direct {v5, v6, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@42
    aput-object v5, v4, v10

    #@44
    .line 131
    new-instance v5, Ljava/math/BigInteger;

    #@46
    const-string/jumbo v6, "6b8cf07d4ca75c88957d9d67059037a4"

    #@49
    invoke-direct {v5, v6, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@4c
    .line 132
    new-instance v6, Ljava/math/BigInteger;

    #@4e
    const-string/jumbo v7, "b8adf1378a6eb73409fa6c9c637ba7f5"

    #@51
    invoke-direct {v6, v7, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@54
    .line 133
    const/16 v7, 0xf0

    #@56
    .line 122
    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    #@59
    .line 134
    .local v0, "glv":Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;

    #@5b
    invoke-direct {v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;-><init>()V

    #@5e
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->-wrap0(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@61
    move-result-object v2

    #@62
    .line 135
    .local v2, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    const-string/jumbo v1, "04A1455B334DF099DF30FC28A169A467E9E47075A90F7E650EB6B7A45C7E089FED7FBA344282CAFBD6F7E319F7C0B0BD59E2CA4BDB556D61A5"

    #@65
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@68
    move-result-object v1

    #@69
    invoke-virtual {v2, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@6c
    move-result-object v3

    #@6d
    .line 138
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
