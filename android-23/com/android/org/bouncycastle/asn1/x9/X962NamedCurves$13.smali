.class final Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves$13;
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
    .line 290
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 8

    #@0
    .prologue
    const/16 v7, 0x10

    #@2
    .line 294
    new-instance v5, Ljava/math/BigInteger;

    #@4
    const-string/jumbo v1, "20000000000000000000000050508CB89F652824E06B8173"

    #@7
    invoke-direct {v5, v1, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@a
    .line 295
    .local v5, "c2m191v2n":Ljava/math/BigInteger;
    const-wide/16 v2, 0x4

    #@c
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@f
    move-result-object v6

    #@10
    .line 297
    .local v6, "c2m191v2h":Ljava/math/BigInteger;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@12
    .line 300
    new-instance v3, Ljava/math/BigInteger;

    #@14
    const-string/jumbo v1, "401028774D7777C7B7666D1366EA432071274F89FF01E718"

    #@17
    invoke-direct {v3, v1, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@1a
    .line 301
    new-instance v4, Ljava/math/BigInteger;

    #@1c
    const-string/jumbo v1, "0620048D28BCBD03B6249C99182B7C8CD19700C362C46A01"

    #@1f
    invoke-direct {v4, v1, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@22
    .line 298
    const/16 v1, 0xbf

    #@24
    .line 299
    const/16 v2, 0x9

    #@26
    .line 297
    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@29
    .line 304
    .local v0, "c2m191v2":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@2b
    .line 307
    const-string/jumbo v1, "023809B2B7CC1B28CC5A87926AAD83FD28789E81E2C9E3BF10"

    #@2e
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@31
    move-result-object v1

    #@32
    .line 306
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@35
    move-result-object v4

    #@36
    .line 309
    const/4 v7, 0x0

    #@37
    move-object v3, v0

    #@38
    .line 304
    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@3b
    return-object v2
.end method
