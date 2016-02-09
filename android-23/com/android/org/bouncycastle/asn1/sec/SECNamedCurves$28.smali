.class final Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$28;
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
    .line 816
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 15

    #@0
    .prologue
    .line 820
    const/16 v1, 0x11b

    #@2
    .line 821
    .local v1, "m":I
    const/4 v2, 0x5

    #@3
    .line 822
    .local v2, "k1":I
    const/4 v3, 0x7

    #@4
    .line 823
    .local v3, "k2":I
    const/16 v4, 0xc

    #@6
    .line 825
    .local v4, "k3":I
    sget-object v5, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    #@8
    .line 826
    .local v5, "a":Ljava/math/BigInteger;
    const-wide/16 v12, 0x1

    #@a
    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@d
    move-result-object v6

    #@e
    .line 827
    .local v6, "b":Ljava/math/BigInteger;
    const/4 v14, 0x0

    #@f
    .line 828
    .local v14, "S":[B
    const-string/jumbo v0, "01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9AE2ED07577265DFF7F94451E061E163C61"

    #@12
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Ljava/lang/String;)Ljava/math/BigInteger;

    #@15
    move-result-object v7

    #@16
    .line 829
    .local v7, "n":Ljava/math/BigInteger;
    const-wide/16 v12, 0x4

    #@18
    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@1b
    move-result-object v8

    #@1c
    .line 831
    .local v8, "h":Ljava/math/BigInteger;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@1e
    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@21
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap1(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@24
    move-result-object v10

    #@25
    .line 834
    .local v10, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    const-string/jumbo v0, "040503213F78CA44883F1A3B8162F188E553CD265F23C1567A16876913B0C2AC245849283601CCDA380F1C9E318D90F95D07E5426FE87E45C0E8184698E45962364E34116177DD2259"

    #@28
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v10, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@2f
    move-result-object v11

    #@30
    .line 838
    .local v11, "G":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    new-instance v9, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@32
    move-object v12, v7

    #@33
    move-object v13, v8

    #@34
    invoke-direct/range {v9 .. v14}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@37
    return-object v9
.end method
