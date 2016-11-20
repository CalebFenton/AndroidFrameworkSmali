.class final Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$27;
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
    .line 789
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 13

    #@0
    .prologue
    .line 793
    const/16 v1, 0xef

    #@2
    .line 794
    .local v1, "m":I
    const/16 v2, 0x9e

    #@4
    .line 796
    .local v2, "k":I
    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    #@6
    .line 797
    .local v3, "a":Ljava/math/BigInteger;
    const-wide/16 v10, 0x1

    #@8
    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@b
    move-result-object v4

    #@c
    .line 798
    .local v4, "b":Ljava/math/BigInteger;
    const/4 v12, 0x0

    #@d
    .line 799
    .local v12, "S":[B
    const-string/jumbo v0, "2000000000000000000000000000005A79FEC67CB6E91F1C1DA800E478A5"

    #@10
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap0(Ljava/lang/String;)Ljava/math/BigInteger;

    #@13
    move-result-object v5

    #@14
    .line 800
    .local v5, "n":Ljava/math/BigInteger;
    const-wide/16 v10, 0x4

    #@16
    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@19
    move-result-object v6

    #@1a
    .line 802
    .local v6, "h":Ljava/math/BigInteger;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@1c
    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@1f
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@22
    move-result-object v8

    #@23
    .line 805
    .local v8, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-instance v9, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    #@25
    const-string/jumbo v0, "0429A0B6A887A983E9730988A68727A8B2D126C44CC2CC7B2A6555193035DC76310804F12E549BDB011C103089E73510ACB275FC312A5DC6B76553F0CA"

    #@28
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@2b
    move-result-object v0

    #@2c
    invoke-direct {v9, v8, v0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)V

    #@2f
    .line 809
    .local v9, "G":Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;
    new-instance v7, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@31
    move-object v10, v5

    #@32
    move-object v11, v6

    #@33
    invoke-direct/range {v7 .. v12}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@36
    return-object v7
.end method
