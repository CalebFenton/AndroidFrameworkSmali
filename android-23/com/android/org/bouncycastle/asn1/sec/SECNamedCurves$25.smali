.class final Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$25;
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
    .line 735
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 13

    #@0
    .prologue
    .line 739
    const/16 v1, 0xe9

    #@2
    .line 740
    .local v1, "m":I
    const/16 v2, 0x4a

    #@4
    .line 742
    .local v2, "k":I
    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    #@6
    .line 743
    .local v3, "a":Ljava/math/BigInteger;
    const-wide/16 v10, 0x1

    #@8
    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@b
    move-result-object v4

    #@c
    .line 744
    .local v4, "b":Ljava/math/BigInteger;
    const/4 v12, 0x0

    #@d
    .line 745
    .local v12, "S":[B
    const-string/jumbo v0, "8000000000000000000000000000069D5BB915BCD46EFB1AD5F173ABDF"

    #@10
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Ljava/lang/String;)Ljava/math/BigInteger;

    #@13
    move-result-object v5

    #@14
    .line 746
    .local v5, "n":Ljava/math/BigInteger;
    const-wide/16 v10, 0x4

    #@16
    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@19
    move-result-object v6

    #@1a
    .line 748
    .local v6, "h":Ljava/math/BigInteger;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@1c
    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@1f
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap1(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@22
    move-result-object v8

    #@23
    .line 751
    .local v8, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    const-string/jumbo v0, "04017232BA853A7E731AF129F22FF4149563A419C26BF50A4C9D6EEFAD612601DB537DECE819B7F70F555A67C427A8CD9BF18AEB9B56E0C11056FAE6A3"

    #@26
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v8, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@2d
    move-result-object v9

    #@2e
    .line 755
    .local v9, "G":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    new-instance v7, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@30
    move-object v10, v5

    #@31
    move-object v11, v6

    #@32
    invoke-direct/range {v7 .. v12}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@35
    return-object v7
.end method
