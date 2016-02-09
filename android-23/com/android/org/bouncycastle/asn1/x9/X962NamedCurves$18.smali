.class final Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves$18;
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
    .line 405
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
    .line 409
    new-instance v5, Ljava/math/BigInteger;

    #@4
    const-string/jumbo v1, "0CCCCCCCCCCCCCCCCCCCCCCCCCCCCCAC4912D2D9DF903EF9888B8A0E4CFF"

    #@7
    invoke-direct {v5, v1, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@a
    .line 410
    .local v5, "c2m239v3n":Ljava/math/BigInteger;
    const-wide/16 v2, 0xa

    #@c
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@f
    move-result-object v6

    #@10
    .line 412
    .local v6, "c2m239v3h":Ljava/math/BigInteger;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@12
    .line 415
    new-instance v3, Ljava/math/BigInteger;

    #@14
    const-string/jumbo v1, "01238774666A67766D6676F778E676B66999176666E687666D8766C66A9F"

    #@17
    invoke-direct {v3, v1, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@1a
    .line 416
    new-instance v4, Ljava/math/BigInteger;

    #@1c
    const-string/jumbo v1, "6A941977BA9F6A435199ACFC51067ED587F519C5ECB541B8E44111DE1D40"

    #@1f
    invoke-direct {v4, v1, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@22
    .line 413
    const/16 v1, 0xef

    #@24
    .line 414
    const/16 v2, 0x24

    #@26
    .line 412
    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@29
    .line 419
    .local v0, "c2m239v3":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@2b
    .line 422
    const-string/jumbo v1, "0370F6E9D04D289C4E89913CE3530BFDE903977D42B146D539BF1BDE4E9C92"

    #@2e
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@31
    move-result-object v1

    #@32
    .line 421
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@35
    move-result-object v4

    #@36
    .line 424
    const/4 v7, 0x0

    #@37
    move-object v3, v0

    #@38
    .line 419
    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@3b
    return-object v2
.end method
