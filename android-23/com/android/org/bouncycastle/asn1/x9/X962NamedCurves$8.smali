.class final Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves$8;
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
    .line 175
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
    .line 179
    new-instance v7, Ljava/math/BigInteger;

    #@4
    const-string/jumbo v1, "0400000000000000000001E60FC8821CC74DAEAFC1"

    #@7
    invoke-direct {v7, v1, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@a
    .line 180
    .local v7, "c2m163v1n":Ljava/math/BigInteger;
    const-wide/16 v2, 0x2

    #@c
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@f
    move-result-object v8

    #@10
    .line 182
    .local v8, "c2m163v1h":Ljava/math/BigInteger;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@12
    .line 185
    new-instance v5, Ljava/math/BigInteger;

    #@14
    const-string/jumbo v1, "072546B5435234A422E0789675F432C89435DE5242"

    #@17
    invoke-direct {v5, v1, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@1a
    .line 186
    new-instance v6, Ljava/math/BigInteger;

    #@1c
    const-string/jumbo v1, "00C9517D06D5240D3CFF38C74B20B6CD4D6F9DD4D9"

    #@1f
    invoke-direct {v6, v1, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@22
    .line 183
    const/16 v1, 0xa3

    #@24
    .line 184
    const/4 v2, 0x1

    #@25
    const/4 v3, 0x2

    #@26
    const/16 v4, 0x8

    #@28
    .line 182
    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@2b
    .line 189
    .local v0, "c2m163v1":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-instance v4, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@2d
    .line 192
    const-string/jumbo v1, "0307AF69989546103D79329FCC3D74880F33BBE803CB"

    #@30
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@33
    move-result-object v1

    #@34
    .line 191
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@37
    move-result-object v6

    #@38
    .line 194
    const-string/jumbo v1, "D2C0FB15760860DEF1EEF4D696E6768756151754"

    #@3b
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@3e
    move-result-object v9

    #@3f
    move-object v5, v0

    #@40
    .line 189
    invoke-direct/range {v4 .. v9}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@43
    return-object v4
.end method
