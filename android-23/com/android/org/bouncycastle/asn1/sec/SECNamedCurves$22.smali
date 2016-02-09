.class final Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$22;
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
    .line 652
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 15

    #@0
    .prologue
    .line 656
    const/16 v1, 0xa3

    #@2
    .line 657
    .local v1, "m":I
    const/4 v2, 0x3

    #@3
    .line 658
    .local v2, "k1":I
    const/4 v3, 0x6

    #@4
    .line 659
    .local v3, "k2":I
    const/4 v4, 0x7

    #@5
    .line 661
    .local v4, "k3":I
    const-wide/16 v12, 0x1

    #@7
    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@a
    move-result-object v5

    #@b
    .line 662
    .local v5, "a":Ljava/math/BigInteger;
    const-string/jumbo v0, "020A601907B8C953CA1481EB10512F78744A3205FD"

    #@e
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Ljava/lang/String;)Ljava/math/BigInteger;

    #@11
    move-result-object v6

    #@12
    .line 663
    .local v6, "b":Ljava/math/BigInteger;
    const-string/jumbo v0, "85E25BFE5C86226CDB12016F7553F9D0E693A268"

    #@15
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@18
    move-result-object v14

    #@19
    .line 664
    .local v14, "S":[B
    const-string/jumbo v0, "040000000000000000000292FE77E70C12A4234C33"

    #@1c
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Ljava/lang/String;)Ljava/math/BigInteger;

    #@1f
    move-result-object v7

    #@20
    .line 665
    .local v7, "n":Ljava/math/BigInteger;
    const-wide/16 v12, 0x2

    #@22
    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@25
    move-result-object v8

    #@26
    .line 667
    .local v8, "h":Ljava/math/BigInteger;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@28
    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@2b
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap1(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@2e
    move-result-object v10

    #@2f
    .line 670
    .local v10, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    const-string/jumbo v0, "0403F0EBA16286A2D57EA0991168D4994637E8343E3600D51FBC6C71A0094FA2CDD545B11C5C0C797324F1"

    #@32
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v10, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@39
    move-result-object v11

    #@3a
    .line 674
    .local v11, "G":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    new-instance v9, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@3c
    move-object v12, v7

    #@3d
    move-object v13, v8

    #@3e
    invoke-direct/range {v9 .. v14}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@41
    return-object v9
.end method
