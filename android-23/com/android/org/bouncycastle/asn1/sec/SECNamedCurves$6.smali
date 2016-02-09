.class final Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$6;
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
    .line 182
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 14

    #@0
    .prologue
    .line 187
    const-string/jumbo v0, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFF"

    #@3
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Ljava/lang/String;)Ljava/math/BigInteger;

    #@6
    move-result-object v1

    #@7
    .line 188
    .local v1, "p":Ljava/math/BigInteger;
    const-string/jumbo v0, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFC"

    #@a
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Ljava/lang/String;)Ljava/math/BigInteger;

    #@d
    move-result-object v2

    #@e
    .line 189
    .local v2, "a":Ljava/math/BigInteger;
    const-string/jumbo v0, "1C97BEFC54BD7A8B65ACF89F81D4D4ADC565FA45"

    #@11
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Ljava/lang/String;)Ljava/math/BigInteger;

    #@14
    move-result-object v3

    #@15
    .line 190
    .local v3, "b":Ljava/math/BigInteger;
    const-string/jumbo v0, "1053CDE42C14D696E67687561517533BF3F83345"

    #@18
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@1b
    move-result-object v11

    #@1c
    .line 191
    .local v11, "S":[B
    const-string/jumbo v0, "0100000000000000000001F4C8F927AED3CA752257"

    #@1f
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Ljava/lang/String;)Ljava/math/BigInteger;

    #@22
    move-result-object v4

    #@23
    .line 192
    .local v4, "n":Ljava/math/BigInteger;
    const-wide/16 v12, 0x1

    #@25
    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@28
    move-result-object v5

    #@29
    .line 194
    .local v5, "h":Ljava/math/BigInteger;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    #@2b
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@2e
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap1(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@31
    move-result-object v7

    #@32
    .line 197
    .local v7, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    const-string/jumbo v0, "044A96B5688EF573284664698968C38BB913CBFC8223A628553168947D59DCC912042351377AC5FB32"

    #@35
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v7, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@3c
    move-result-object v8

    #@3d
    .line 201
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
