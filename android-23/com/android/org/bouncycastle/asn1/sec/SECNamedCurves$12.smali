.class final Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$12;
.super Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;
.source "SECNamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;
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
    .line 364
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 15

    #@0
    .prologue
    .line 369
    const-string/jumbo v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F"

    #@3
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Ljava/lang/String;)Ljava/math/BigInteger;

    #@6
    move-result-object v13

    #@7
    .line 370
    .local v13, "p":Ljava/math/BigInteger;
    sget-object v9, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    #@9
    .line 371
    .local v9, "a":Ljava/math/BigInteger;
    const-wide/16 v4, 0x7

    #@b
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@e
    move-result-object v10

    #@f
    .line 372
    .local v10, "b":Ljava/math/BigInteger;
    const/4 v8, 0x0

    #@10
    .line 373
    .local v8, "S":[B
    const-string/jumbo v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141"

    #@13
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Ljava/lang/String;)Ljava/math/BigInteger;

    #@16
    move-result-object v12

    #@17
    .line 374
    .local v12, "n":Ljava/math/BigInteger;
    const-wide/16 v4, 0x1

    #@19
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@1c
    move-result-object v11

    #@1d
    .line 376
    .local v11, "h":Ljava/math/BigInteger;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    #@1f
    .line 377
    new-instance v1, Ljava/math/BigInteger;

    #@21
    const-string/jumbo v4, "7ae96a2b657c07106e64479eac3434e99cf0497512f58995c1396c28719501ee"

    #@24
    const/16 v5, 0x10

    #@26
    invoke-direct {v1, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@29
    .line 378
    new-instance v2, Ljava/math/BigInteger;

    #@2b
    const-string/jumbo v4, "5363ad4cc05c30e0a5261c028812645a122e22ea20816678df02967c1b23bd72"

    #@2e
    const/16 v5, 0x10

    #@30
    invoke-direct {v2, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@33
    .line 379
    const/4 v4, 0x2

    #@34
    new-array v3, v4, [Ljava/math/BigInteger;

    #@36
    .line 380
    new-instance v4, Ljava/math/BigInteger;

    #@38
    const-string/jumbo v5, "3086d221a7d46bcde86c90e49284eb15"

    #@3b
    const/16 v6, 0x10

    #@3d
    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@40
    const/4 v5, 0x0

    #@41
    aput-object v4, v3, v5

    #@43
    .line 381
    new-instance v4, Ljava/math/BigInteger;

    #@45
    const-string/jumbo v5, "-e4437ed6010e88286f547fa90abfe4c3"

    #@48
    const/16 v6, 0x10

    #@4a
    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@4d
    const/4 v5, 0x1

    #@4e
    aput-object v4, v3, v5

    #@50
    .line 382
    const/4 v4, 0x2

    #@51
    new-array v4, v4, [Ljava/math/BigInteger;

    #@53
    .line 383
    new-instance v5, Ljava/math/BigInteger;

    #@55
    const-string/jumbo v6, "114ca50f7a8e2f3f657c1108d9d44cfd8"

    #@58
    const/16 v7, 0x10

    #@5a
    invoke-direct {v5, v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@5d
    const/4 v6, 0x0

    #@5e
    aput-object v5, v4, v6

    #@60
    .line 384
    new-instance v5, Ljava/math/BigInteger;

    #@62
    const-string/jumbo v6, "3086d221a7d46bcde86c90e49284eb15"

    #@65
    const/16 v7, 0x10

    #@67
    invoke-direct {v5, v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@6a
    const/4 v6, 0x1

    #@6b
    aput-object v5, v4, v6

    #@6d
    .line 385
    new-instance v5, Ljava/math/BigInteger;

    #@6f
    const-string/jumbo v6, "3086d221a7d46bcde86c90e49284eb153dab"

    #@72
    const/16 v7, 0x10

    #@74
    invoke-direct {v5, v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@77
    .line 386
    new-instance v6, Ljava/math/BigInteger;

    #@79
    const-string/jumbo v7, "e4437ed6010e88286f547fa90abfe4c42212"

    #@7c
    const/16 v14, 0x10

    #@7e
    invoke-direct {v6, v7, v14}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@81
    .line 387
    const/16 v7, 0x110

    #@83
    .line 376
    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    #@86
    .line 389
    .local v0, "glv":Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    #@88
    move-object v2, v13

    #@89
    move-object v3, v9

    #@8a
    move-object v4, v10

    #@8b
    move-object v5, v12

    #@8c
    move-object v6, v11

    #@8d
    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@90
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap0(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@93
    move-result-object v2

    #@94
    .line 392
    .local v2, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    const-string/jumbo v1, "0479BE667EF9DCBBAC55A06295CE870B07029BFCDB2DCE28D959F2815B16F81798483ADA7726A3C4655DA4FBFC0E1108A8FD17B448A68554199C47D08FFB10D4B8"

    #@97
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@9a
    move-result-object v1

    #@9b
    invoke-virtual {v2, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@9e
    move-result-object v3

    #@9f
    .line 396
    .local v3, "G":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@a1
    move-object v4, v12

    #@a2
    move-object v5, v11

    #@a3
    move-object v6, v8

    #@a4
    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@a7
    return-object v1
.end method
