.class final Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves$6;
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
    .line 128
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
    .line 132
    new-instance v4, Ljava/math/BigInteger;

    #@4
    const-string/jumbo v1, "7fffffffffffffffffffffff7fffff975deb41b3a6057c3c432146526551"

    #@7
    invoke-direct {v4, v1, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@a
    .line 133
    .local v4, "n":Ljava/math/BigInteger;
    const-wide/16 v2, 0x1

    #@c
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@f
    move-result-object v5

    #@10
    .line 135
    .local v5, "h":Ljava/math/BigInteger;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    #@12
    .line 136
    new-instance v1, Ljava/math/BigInteger;

    #@14
    const-string/jumbo v2, "883423532389192164791648750360308885314476597252960362792450860609699839"

    #@17
    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    #@1a
    .line 137
    new-instance v2, Ljava/math/BigInteger;

    #@1c
    const-string/jumbo v3, "7fffffffffffffffffffffff7fffffffffff8000000000007ffffffffffc"

    #@1f
    invoke-direct {v2, v3, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@22
    .line 138
    new-instance v3, Ljava/math/BigInteger;

    #@24
    const-string/jumbo v6, "255705fa2a306654b1f4cb03d6a750a30c250102d4988717d9ba15ab6d3e"

    #@27
    invoke-direct {v3, v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@2a
    .line 135
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@2d
    .line 141
    .local v0, "cFp239v3":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@2f
    .line 144
    const-string/jumbo v2, "036768ae8e18bb92cfcf005c949aa2c6d94853d0e660bbf854b1c9505fe95a"

    #@32
    invoke-static {v2}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@35
    move-result-object v2

    #@36
    .line 143
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@39
    move-result-object v3

    #@3a
    .line 146
    const-string/jumbo v2, "7d7374168ffe3471b60a857686a19475d3bfa2ff"

    #@3d
    invoke-static {v2}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@40
    move-result-object v6

    #@41
    move-object v2, v0

    #@42
    .line 141
    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@45
    return-object v1
.end method
