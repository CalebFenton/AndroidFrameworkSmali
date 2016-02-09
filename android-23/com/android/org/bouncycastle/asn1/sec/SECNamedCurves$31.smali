.class final Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$31;
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
    .line 901
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 13

    #@0
    .prologue
    .line 905
    const/16 v1, 0x199

    #@2
    .line 906
    .local v1, "m":I
    const/16 v2, 0x57

    #@4
    .line 908
    .local v2, "k":I
    const-wide/16 v10, 0x1

    #@6
    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@9
    move-result-object v3

    #@a
    .line 909
    .local v3, "a":Ljava/math/BigInteger;
    const-string/jumbo v0, "0021A5C2C8EE9FEB5C4B9A753B7B476B7FD6422EF1F3DD674761FA99D6AC27C8A9A197B272822F6CD57A55AA4F50AE317B13545F"

    #@d
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Ljava/lang/String;)Ljava/math/BigInteger;

    #@10
    move-result-object v4

    #@11
    .line 910
    .local v4, "b":Ljava/math/BigInteger;
    const-string/jumbo v0, "4099B5A457F9D69F79213D094C4BCD4D4262210B"

    #@14
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@17
    move-result-object v12

    #@18
    .line 911
    .local v12, "S":[B
    const-string/jumbo v0, "010000000000000000000000000000000000000000000000000001E2AAD6A612F33307BE5FA47C3C9E052F838164CD37D9A21173"

    #@1b
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Ljava/lang/String;)Ljava/math/BigInteger;

    #@1e
    move-result-object v5

    #@1f
    .line 912
    .local v5, "n":Ljava/math/BigInteger;
    const-wide/16 v10, 0x2

    #@21
    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@24
    move-result-object v6

    #@25
    .line 914
    .local v6, "h":Ljava/math/BigInteger;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@27
    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@2a
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap1(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@2d
    move-result-object v8

    #@2e
    .line 917
    .local v8, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    const-string/jumbo v0, "04015D4860D088DDB3496B0C6064756260441CDE4AF1771D4DB01FFE5B34E59703DC255A868A1180515603AEAB60794E54BB7996A70061B1CFAB6BE5F32BBFA78324ED106A7636B9C5A7BD198D0158AA4F5488D08F38514F1FDF4B4F40D2181B3681C364BA0273C706"

    #@31
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v8, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@38
    move-result-object v9

    #@39
    .line 921
    .local v9, "G":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    new-instance v7, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@3b
    move-object v10, v5

    #@3c
    move-object v11, v6

    #@3d
    invoke-direct/range {v7 .. v12}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@40
    return-object v7
.end method
