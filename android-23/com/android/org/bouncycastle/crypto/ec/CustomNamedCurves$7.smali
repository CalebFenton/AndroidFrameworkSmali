.class final Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$7;
.super Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;
.source "CustomNamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;
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
    .line 205
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 6

    #@0
    .prologue
    .line 209
    const-string/jumbo v0, "A335926AA319A27A1D00896A6773A4827ACDAC73"

    #@3
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@6
    move-result-object v5

    #@7
    .line 210
    .local v5, "S":[B
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;

    #@9
    invoke-direct {v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;-><init>()V

    #@c
    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->-wrap1(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@f
    move-result-object v1

    #@10
    .line 211
    .local v1, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    const-string/jumbo v0, "04AA87CA22BE8B05378EB1C71EF320AD746E1D3B628BA79B9859F741E082542A385502F25DBF55296C3A545E3872760AB73617DE4A96262C6F5D9E98BF9292DC29F8F41DBD289A147CE9DA3113B5F0B8C00A60B1CE1D7E819D7A431D7C90EA0E5F"

    #@13
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@1a
    move-result-object v2

    #@1b
    .line 214
    .local v2, "G":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@1d
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    #@24
    move-result-object v4

    #@25
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@28
    return-object v0
.end method
