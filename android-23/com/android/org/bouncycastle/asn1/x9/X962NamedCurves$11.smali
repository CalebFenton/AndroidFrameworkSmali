.class final Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves$11;
.super Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;
.source "X962NamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;
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
    .line 244
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 10

    #@0
    .prologue
    const/16 v4, 0x10

    #@2
    .line 248
    new-instance v7, Ljava/math/BigInteger;

    #@4
    const-string/jumbo v1, "010092537397ECA4F6145799D62B0A19CE06FE26AD"

    #@7
    invoke-direct {v7, v1, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@a
    .line 249
    .local v7, "c2m176w1n":Ljava/math/BigInteger;
    const-wide/32 v2, 0xff6e

    #@d
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@10
    move-result-object v8

    #@11
    .line 251
    .local v8, "c2m176w1h":Ljava/math/BigInteger;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@13
    .line 254
    new-instance v5, Ljava/math/BigInteger;

    #@15
    const-string/jumbo v1, "00E4E6DB2995065C407D9D39B8D0967B96704BA8E9C90B"

    #@18
    invoke-direct {v5, v1, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@1b
    .line 255
    new-instance v6, Ljava/math/BigInteger;

    #@1d
    const-string/jumbo v1, "005DDA470ABE6414DE8EC133AE28E9BBD7FCEC0AE0FFF2"

    #@20
    invoke-direct {v6, v1, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@23
    .line 252
    const/16 v1, 0xb0

    #@25
    .line 253
    const/4 v2, 0x1

    #@26
    const/4 v3, 0x2

    #@27
    const/16 v4, 0x2b

    #@29
    .line 251
    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@2c
    .line 258
    .local v0, "c2m176w1":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-instance v4, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@2e
    .line 261
    const-string/jumbo v1, "038D16C2866798B600F9F08BB4A8E860F3298CE04A5798"

    #@31
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@34
    move-result-object v1

    #@35
    .line 260
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@38
    move-result-object v6

    #@39
    .line 263
    const/4 v9, 0x0

    #@3a
    move-object v5, v0

    #@3b
    .line 258
    invoke-direct/range {v4 .. v9}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@3e
    return-object v4
.end method
