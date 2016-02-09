.class final Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$29;
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
    .line 845
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 15

    #@0
    .prologue
    .line 849
    const/16 v1, 0x11b

    #@2
    .line 850
    .local v1, "m":I
    const/4 v2, 0x5

    #@3
    .line 851
    .local v2, "k1":I
    const/4 v3, 0x7

    #@4
    .line 852
    .local v3, "k2":I
    const/16 v4, 0xc

    #@6
    .line 854
    .local v4, "k3":I
    const-wide/16 v12, 0x1

    #@8
    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@b
    move-result-object v5

    #@c
    .line 855
    .local v5, "a":Ljava/math/BigInteger;
    const-string/jumbo v0, "027B680AC8B8596DA5A4AF8A19A0303FCA97FD7645309FA2A581485AF6263E313B79A2F5"

    #@f
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Ljava/lang/String;)Ljava/math/BigInteger;

    #@12
    move-result-object v6

    #@13
    .line 856
    .local v6, "b":Ljava/math/BigInteger;
    const-string/jumbo v0, "77E2B07370EB0F832A6DD5B62DFC88CD06BB84BE"

    #@16
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@19
    move-result-object v14

    #@1a
    .line 857
    .local v14, "S":[B
    const-string/jumbo v0, "03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF90399660FC938A90165B042A7CEFADB307"

    #@1d
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Ljava/lang/String;)Ljava/math/BigInteger;

    #@20
    move-result-object v7

    #@21
    .line 858
    .local v7, "n":Ljava/math/BigInteger;
    const-wide/16 v12, 0x2

    #@23
    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@26
    move-result-object v8

    #@27
    .line 860
    .local v8, "h":Ljava/math/BigInteger;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@29
    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@2c
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap1(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@2f
    move-result-object v10

    #@30
    .line 863
    .local v10, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    const-string/jumbo v0, "0405F939258DB7DD90E1934F8C70B0DFEC2EED25B8557EAC9C80E2E198F8CDBECD86B1205303676854FE24141CB98FE6D4B20D02B4516FF702350EDDB0826779C813F0DF45BE8112F4"

    #@33
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v10, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@3a
    move-result-object v11

    #@3b
    .line 867
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
