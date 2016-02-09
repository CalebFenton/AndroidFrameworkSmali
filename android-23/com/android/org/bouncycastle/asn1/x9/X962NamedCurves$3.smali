.class final Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves$3;
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
    .line 62
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
    .line 66
    new-instance v4, Ljava/math/BigInteger;

    #@4
    const-string/jumbo v1, "ffffffffffffffffffffffff7a62d031c83f4294f640ec13"

    #@7
    invoke-direct {v4, v1, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@a
    .line 67
    .local v4, "n":Ljava/math/BigInteger;
    const-wide/16 v2, 0x1

    #@c
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@f
    move-result-object v5

    #@10
    .line 69
    .local v5, "h":Ljava/math/BigInteger;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    #@12
    .line 70
    new-instance v1, Ljava/math/BigInteger;

    #@14
    const-string/jumbo v2, "6277101735386680763835789423207666416083908700390324961279"

    #@17
    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    #@1a
    .line 71
    new-instance v2, Ljava/math/BigInteger;

    #@1c
    const-string/jumbo v3, "fffffffffffffffffffffffffffffffefffffffffffffffc"

    #@1f
    invoke-direct {v2, v3, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@22
    .line 72
    new-instance v3, Ljava/math/BigInteger;

    #@24
    const-string/jumbo v6, "22123dc2395a05caa7423daeccc94760a7d462256bd56916"

    #@27
    invoke-direct {v3, v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@2a
    .line 69
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@2d
    .line 75
    .local v0, "cFp192v3":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@2f
    .line 78
    const-string/jumbo v2, "027d29778100c65a1da1783716588dce2b8b4aee8e228f1896"

    #@32
    invoke-static {v2}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@35
    move-result-object v2

    #@36
    .line 77
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@39
    move-result-object v3

    #@3a
    .line 80
    const-string/jumbo v2, "c469684435deb378c4b65ca9591e2a5763059a2e"

    #@3d
    invoke-static {v2}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@40
    move-result-object v6

    #@41
    move-object v2, v0

    #@42
    .line 75
    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@45
    return-object v1
.end method
