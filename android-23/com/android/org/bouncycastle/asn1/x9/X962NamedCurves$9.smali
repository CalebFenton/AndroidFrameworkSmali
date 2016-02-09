.class final Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves$9;
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
    .line 198
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
    .line 202
    new-instance v7, Ljava/math/BigInteger;

    #@4
    const-string/jumbo v1, "03FFFFFFFFFFFFFFFFFFFDF64DE1151ADBB78F10A7"

    #@7
    invoke-direct {v7, v1, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@a
    .line 203
    .local v7, "c2m163v2n":Ljava/math/BigInteger;
    const-wide/16 v2, 0x2

    #@c
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@f
    move-result-object v8

    #@10
    .line 205
    .local v8, "c2m163v2h":Ljava/math/BigInteger;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@12
    .line 208
    new-instance v5, Ljava/math/BigInteger;

    #@14
    const-string/jumbo v1, "0108B39E77C4B108BED981ED0E890E117C511CF072"

    #@17
    invoke-direct {v5, v1, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@1a
    .line 209
    new-instance v6, Ljava/math/BigInteger;

    #@1c
    const-string/jumbo v1, "0667ACEB38AF4E488C407433FFAE4F1C811638DF20"

    #@1f
    invoke-direct {v6, v1, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@22
    .line 206
    const/16 v1, 0xa3

    #@24
    .line 207
    const/4 v2, 0x1

    #@25
    const/4 v3, 0x2

    #@26
    const/16 v4, 0x8

    #@28
    .line 205
    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@2b
    .line 212
    .local v0, "c2m163v2":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-instance v4, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@2d
    .line 215
    const-string/jumbo v1, "030024266E4EB5106D0A964D92C4860E2671DB9B6CC5"

    #@30
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@33
    move-result-object v1

    #@34
    .line 214
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@37
    move-result-object v6

    #@38
    .line 217
    const/4 v9, 0x0

    #@39
    move-object v5, v0

    #@3a
    .line 212
    invoke-direct/range {v4 .. v9}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@3d
    return-object v4
.end method
