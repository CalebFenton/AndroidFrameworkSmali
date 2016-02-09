.class final Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$20;
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
    .line 594
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 15

    #@0
    .prologue
    const-wide/16 v12, 0x1

    #@2
    .line 598
    const/16 v1, 0xa3

    #@4
    .line 599
    .local v1, "m":I
    const/4 v2, 0x3

    #@5
    .line 600
    .local v2, "k1":I
    const/4 v3, 0x6

    #@6
    .line 601
    .local v3, "k2":I
    const/4 v4, 0x7

    #@7
    .line 603
    .local v4, "k3":I
    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@a
    move-result-object v5

    #@b
    .line 604
    .local v5, "a":Ljava/math/BigInteger;
    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@e
    move-result-object v6

    #@f
    .line 605
    .local v6, "b":Ljava/math/BigInteger;
    const/4 v14, 0x0

    #@10
    .line 606
    .local v14, "S":[B
    const-string/jumbo v0, "04000000000000000000020108A2E0CC0D99F8A5EF"

    #@13
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Ljava/lang/String;)Ljava/math/BigInteger;

    #@16
    move-result-object v7

    #@17
    .line 607
    .local v7, "n":Ljava/math/BigInteger;
    const-wide/16 v12, 0x2

    #@19
    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@1c
    move-result-object v8

    #@1d
    .line 609
    .local v8, "h":Ljava/math/BigInteger;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@1f
    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@22
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap1(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@25
    move-result-object v10

    #@26
    .line 612
    .local v10, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    const-string/jumbo v0, "0402FE13C0537BBC11ACAA07D793DE4E6D5E5C94EEE80289070FB05D38FF58321F2E800536D538CCDAA3D9"

    #@29
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v10, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@30
    move-result-object v11

    #@31
    .line 616
    .local v11, "G":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    new-instance v9, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@33
    move-object v12, v7

    #@34
    move-object v13, v8

    #@35
    invoke-direct/range {v9 .. v14}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@38
    return-object v9
.end method
