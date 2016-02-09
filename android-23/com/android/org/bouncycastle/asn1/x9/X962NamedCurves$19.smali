.class final Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves$19;
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
    .line 428
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
    .line 432
    new-instance v7, Ljava/math/BigInteger;

    #@4
    const-string/jumbo v1, "0100FAF51354E0E39E4892DF6E319C72C8161603FA45AA7B998A167B8F1E629521"

    #@7
    invoke-direct {v7, v1, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@a
    .line 433
    .local v7, "c2m272w1n":Ljava/math/BigInteger;
    const-wide/32 v2, 0xff06

    #@d
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@10
    move-result-object v8

    #@11
    .line 435
    .local v8, "c2m272w1h":Ljava/math/BigInteger;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@13
    .line 438
    new-instance v5, Ljava/math/BigInteger;

    #@15
    const-string/jumbo v1, "0091A091F03B5FBA4AB2CCF49C4EDD220FB028712D42BE752B2C40094DBACDB586FB20"

    #@18
    invoke-direct {v5, v1, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@1b
    .line 439
    new-instance v6, Ljava/math/BigInteger;

    #@1d
    const-string/jumbo v1, "7167EFC92BB2E3CE7C8AAAFF34E12A9C557003D7C73A6FAF003F99F6CC8482E540F7"

    #@20
    invoke-direct {v6, v1, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@23
    .line 436
    const/16 v1, 0x110

    #@25
    .line 437
    const/4 v2, 0x1

    #@26
    const/4 v3, 0x3

    #@27
    const/16 v4, 0x38

    #@29
    .line 435
    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@2c
    .line 442
    .local v0, "c2m272w1":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-instance v4, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@2e
    .line 445
    const-string/jumbo v1, "026108BABB2CEEBCF787058A056CBE0CFE622D7723A289E08A07AE13EF0D10D171DD8D"

    #@31
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@34
    move-result-object v1

    #@35
    .line 444
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@38
    move-result-object v6

    #@39
    .line 447
    const/4 v9, 0x0

    #@3a
    move-object v5, v0

    #@3b
    .line 442
    invoke-direct/range {v4 .. v9}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@3e
    return-object v4
.end method
