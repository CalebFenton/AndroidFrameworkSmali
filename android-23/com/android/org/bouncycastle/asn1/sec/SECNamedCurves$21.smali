.class final Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$21;
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
    .line 623
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 15

    #@0
    .prologue
    .line 627
    const/16 v1, 0xa3

    #@2
    .line 628
    .local v1, "m":I
    const/4 v2, 0x3

    #@3
    .line 629
    .local v2, "k1":I
    const/4 v3, 0x6

    #@4
    .line 630
    .local v3, "k2":I
    const/4 v4, 0x7

    #@5
    .line 632
    .local v4, "k3":I
    const-string/jumbo v0, "07B6882CAAEFA84F9554FF8428BD88E246D2782AE2"

    #@8
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Ljava/lang/String;)Ljava/math/BigInteger;

    #@b
    move-result-object v5

    #@c
    .line 633
    .local v5, "a":Ljava/math/BigInteger;
    const-string/jumbo v0, "0713612DCDDCB40AAB946BDA29CA91F73AF958AFD9"

    #@f
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Ljava/lang/String;)Ljava/math/BigInteger;

    #@12
    move-result-object v6

    #@13
    .line 634
    .local v6, "b":Ljava/math/BigInteger;
    const-string/jumbo v0, "24B7B137C8A14D696E6768756151756FD0DA2E5C"

    #@16
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@19
    move-result-object v14

    #@1a
    .line 635
    .local v14, "S":[B
    const-string/jumbo v0, "03FFFFFFFFFFFFFFFFFFFF48AAB689C29CA710279B"

    #@1d
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Ljava/lang/String;)Ljava/math/BigInteger;

    #@20
    move-result-object v7

    #@21
    .line 636
    .local v7, "n":Ljava/math/BigInteger;
    const-wide/16 v12, 0x2

    #@23
    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@26
    move-result-object v8

    #@27
    .line 638
    .local v8, "h":Ljava/math/BigInteger;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@29
    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@2c
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap1(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@2f
    move-result-object v10

    #@30
    .line 641
    .local v10, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    const-string/jumbo v0, "040369979697AB43897789566789567F787A7876A65400435EDB42EFAFB2989D51FEFCE3C80988F41FF883"

    #@33
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v10, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@3a
    move-result-object v11

    #@3b
    .line 645
    .local v11, "G":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    new-instance v9, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@3d
    move-object v12, v7

    #@3e
    move-object v13, v8

    #@3f
    invoke-direct/range {v9 .. v14}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@42
    return-object v9
.end method
