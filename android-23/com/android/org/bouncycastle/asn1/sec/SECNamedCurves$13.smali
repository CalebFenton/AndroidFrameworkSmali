.class final Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$13;
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
    .line 403
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 14

    #@0
    .prologue
    .line 408
    const-string/jumbo v0, "FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF"

    #@3
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Ljava/lang/String;)Ljava/math/BigInteger;

    #@6
    move-result-object v1

    #@7
    .line 409
    .local v1, "p":Ljava/math/BigInteger;
    const-string/jumbo v0, "FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFC"

    #@a
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Ljava/lang/String;)Ljava/math/BigInteger;

    #@d
    move-result-object v2

    #@e
    .line 410
    .local v2, "a":Ljava/math/BigInteger;
    const-string/jumbo v0, "5AC635D8AA3A93E7B3EBBD55769886BC651D06B0CC53B0F63BCE3C3E27D2604B"

    #@11
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Ljava/lang/String;)Ljava/math/BigInteger;

    #@14
    move-result-object v3

    #@15
    .line 411
    .local v3, "b":Ljava/math/BigInteger;
    const-string/jumbo v0, "C49D360886E704936A6678E1139D26B7819F7E90"

    #@18
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@1b
    move-result-object v11

    #@1c
    .line 412
    .local v11, "S":[B
    const-string/jumbo v0, "FFFFFFFF00000000FFFFFFFFFFFFFFFFBCE6FAADA7179E84F3B9CAC2FC632551"

    #@1f
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Ljava/lang/String;)Ljava/math/BigInteger;

    #@22
    move-result-object v4

    #@23
    .line 413
    .local v4, "n":Ljava/math/BigInteger;
    const-wide/16 v12, 0x1

    #@25
    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@28
    move-result-object v5

    #@29
    .line 415
    .local v5, "h":Ljava/math/BigInteger;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    #@2b
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@2e
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap1(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@31
    move-result-object v7

    #@32
    .line 418
    .local v7, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    const-string/jumbo v0, "046B17D1F2E12C4247F8BCE6E563A440F277037D812DEB33A0F4A13945D898C2964FE342E2FE1A7F9B8EE7EB4A7C0F9E162BCE33576B315ECECBB6406837BF51F5"

    #@35
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v7, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@3c
    move-result-object v8

    #@3d
    .line 422
    .local v8, "G":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    new-instance v6, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@3f
    move-object v9, v4

    #@40
    move-object v10, v5

    #@41
    invoke-direct/range {v6 .. v11}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@44
    return-object v6
.end method
