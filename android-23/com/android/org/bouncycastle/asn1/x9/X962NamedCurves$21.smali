.class final Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves$21;
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
    .line 474
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
    .line 478
    new-instance v5, Ljava/math/BigInteger;

    #@4
    const-string/jumbo v1, "01AF286BCA1AF286BCA1AF286BCA1AF286BCA1AF286BC9FB8F6B85C556892C20A7EB964FE7719E74F490758D3B"

    #@7
    invoke-direct {v5, v1, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@a
    .line 479
    .local v5, "c2m359v1n":Ljava/math/BigInteger;
    const-wide/16 v2, 0x4c

    #@c
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@f
    move-result-object v6

    #@10
    .line 481
    .local v6, "c2m359v1h":Ljava/math/BigInteger;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@12
    .line 484
    new-instance v3, Ljava/math/BigInteger;

    #@14
    const-string/jumbo v1, "5667676A654B20754F356EA92017D946567C46675556F19556A04616B567D223A5E05656FB549016A96656A557"

    #@17
    invoke-direct {v3, v1, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@1a
    .line 485
    new-instance v4, Ljava/math/BigInteger;

    #@1c
    const-string/jumbo v1, "2472E2D0197C49363F1FE7F5B6DB075D52B6947D135D8CA445805D39BC345626089687742B6329E70680231988"

    #@1f
    invoke-direct {v4, v1, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@22
    .line 482
    const/16 v1, 0x167

    #@24
    .line 483
    const/16 v2, 0x44

    #@26
    .line 481
    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@29
    .line 488
    .local v0, "c2m359v1":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@2b
    .line 491
    const-string/jumbo v1, "033C258EF3047767E7EDE0F1FDAA79DAEE3841366A132E163ACED4ED2401DF9C6BDCDE98E8E707C07A2239B1B097"

    #@2e
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@31
    move-result-object v1

    #@32
    .line 490
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@35
    move-result-object v4

    #@36
    .line 493
    const/4 v7, 0x0

    #@37
    move-object v3, v0

    #@38
    .line 488
    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@3b
    return-object v2
.end method
