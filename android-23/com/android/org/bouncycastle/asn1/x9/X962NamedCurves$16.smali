.class final Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves$16;
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
    .line 359
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
    .line 363
    new-instance v5, Ljava/math/BigInteger;

    #@4
    const-string/jumbo v1, "2000000000000000000000000000000F4D42FFE1492A4993F1CAD666E447"

    #@7
    invoke-direct {v5, v1, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@a
    .line 364
    .local v5, "c2m239v1n":Ljava/math/BigInteger;
    const-wide/16 v2, 0x4

    #@c
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@f
    move-result-object v6

    #@10
    .line 366
    .local v6, "c2m239v1h":Ljava/math/BigInteger;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@12
    .line 369
    new-instance v3, Ljava/math/BigInteger;

    #@14
    const-string/jumbo v1, "32010857077C5431123A46B808906756F543423E8D27877578125778AC76"

    #@17
    invoke-direct {v3, v1, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@1a
    .line 370
    new-instance v4, Ljava/math/BigInteger;

    #@1c
    const-string/jumbo v1, "790408F2EEDAF392B012EDEFB3392F30F4327C0CA3F31FC383C422AA8C16"

    #@1f
    invoke-direct {v4, v1, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@22
    .line 367
    const/16 v1, 0xef

    #@24
    .line 368
    const/16 v2, 0x24

    #@26
    .line 366
    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@29
    .line 373
    .local v0, "c2m239v1":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@2b
    .line 376
    const-string/jumbo v1, "0257927098FA932E7C0A96D3FD5B706EF7E5F5C156E16B7E7C86038552E91D"

    #@2e
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@31
    move-result-object v1

    #@32
    .line 375
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@35
    move-result-object v4

    #@36
    .line 378
    const/4 v7, 0x0

    #@37
    move-object v3, v0

    #@38
    .line 373
    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@3b
    return-object v2
.end method
