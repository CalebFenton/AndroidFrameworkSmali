.class final Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$23;
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
    .line 681
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 13

    #@0
    .prologue
    .line 685
    const/16 v1, 0xc1

    #@2
    .line 686
    .local v1, "m":I
    const/16 v2, 0xf

    #@4
    .line 688
    .local v2, "k":I
    const-string/jumbo v0, "0017858FEB7A98975169E171F77B4087DE098AC8A911DF7B01"

    #@7
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Ljava/lang/String;)Ljava/math/BigInteger;

    #@a
    move-result-object v3

    #@b
    .line 689
    .local v3, "a":Ljava/math/BigInteger;
    const-string/jumbo v0, "00FDFB49BFE6C3A89FACADAA7A1E5BBC7CC1C2E5D831478814"

    #@e
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Ljava/lang/String;)Ljava/math/BigInteger;

    #@11
    move-result-object v4

    #@12
    .line 690
    .local v4, "b":Ljava/math/BigInteger;
    const-string/jumbo v0, "103FAEC74D696E676875615175777FC5B191EF30"

    #@15
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@18
    move-result-object v12

    #@19
    .line 691
    .local v12, "S":[B
    const-string/jumbo v0, "01000000000000000000000000C7F34A778F443ACC920EBA49"

    #@1c
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Ljava/lang/String;)Ljava/math/BigInteger;

    #@1f
    move-result-object v5

    #@20
    .line 692
    .local v5, "n":Ljava/math/BigInteger;
    const-wide/16 v10, 0x2

    #@22
    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@25
    move-result-object v6

    #@26
    .line 694
    .local v6, "h":Ljava/math/BigInteger;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@28
    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@2b
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap1(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@2e
    move-result-object v8

    #@2f
    .line 697
    .local v8, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    const-string/jumbo v0, "0401F481BC5F0FF84A74AD6CDF6FDEF4BF6179625372D8C0C5E10025E399F2903712CCF3EA9E3A1AD17FB0B3201B6AF7CE1B05"

    #@32
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v8, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@39
    move-result-object v9

    #@3a
    .line 701
    .local v9, "G":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    new-instance v7, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@3c
    move-object v10, v5

    #@3d
    move-object v11, v6

    #@3e
    invoke-direct/range {v7 .. v12}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@41
    return-object v7
.end method
