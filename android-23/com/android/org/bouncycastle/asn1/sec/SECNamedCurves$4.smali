.class final Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$4;
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
    .line 117
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 14

    #@0
    .prologue
    .line 122
    const-string/jumbo v0, "FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFF"

    #@3
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Ljava/lang/String;)Ljava/math/BigInteger;

    #@6
    move-result-object v1

    #@7
    .line 123
    .local v1, "p":Ljava/math/BigInteger;
    const-string/jumbo v0, "D6031998D1B3BBFEBF59CC9BBFF9AEE1"

    #@a
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Ljava/lang/String;)Ljava/math/BigInteger;

    #@d
    move-result-object v2

    #@e
    .line 124
    .local v2, "a":Ljava/math/BigInteger;
    const-string/jumbo v0, "5EEEFCA380D02919DC2C6558BB6D8A5D"

    #@11
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Ljava/lang/String;)Ljava/math/BigInteger;

    #@14
    move-result-object v3

    #@15
    .line 125
    .local v3, "b":Ljava/math/BigInteger;
    const-string/jumbo v0, "004D696E67687561517512D8F03431FCE63B88F4"

    #@18
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@1b
    move-result-object v11

    #@1c
    .line 126
    .local v11, "S":[B
    const-string/jumbo v0, "3FFFFFFF7FFFFFFFBE0024720613B5A3"

    #@1f
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Ljava/lang/String;)Ljava/math/BigInteger;

    #@22
    move-result-object v4

    #@23
    .line 127
    .local v4, "n":Ljava/math/BigInteger;
    const-wide/16 v12, 0x4

    #@25
    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@28
    move-result-object v5

    #@29
    .line 129
    .local v5, "h":Ljava/math/BigInteger;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    #@2b
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@2e
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap1(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@31
    move-result-object v7

    #@32
    .line 132
    .local v7, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    const-string/jumbo v0, "047B6AA5D85E572983E6FB32A7CDEBC14027B6916A894D3AEE7106FE805FC34B44"

    #@35
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v7, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@3c
    move-result-object v8

    #@3d
    .line 136
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
