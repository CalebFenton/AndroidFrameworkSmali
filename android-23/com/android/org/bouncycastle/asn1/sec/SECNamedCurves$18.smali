.class final Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$18;
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
    .line 536
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 15

    #@0
    .prologue
    .line 540
    const/16 v1, 0x83

    #@2
    .line 541
    .local v1, "m":I
    const/4 v2, 0x2

    #@3
    .line 542
    .local v2, "k1":I
    const/4 v3, 0x3

    #@4
    .line 543
    .local v3, "k2":I
    const/16 v4, 0x8

    #@6
    .line 545
    .local v4, "k3":I
    const-string/jumbo v0, "07A11B09A76B562144418FF3FF8C2570B8"

    #@9
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Ljava/lang/String;)Ljava/math/BigInteger;

    #@c
    move-result-object v5

    #@d
    .line 546
    .local v5, "a":Ljava/math/BigInteger;
    const-string/jumbo v0, "0217C05610884B63B9C6C7291678F9D341"

    #@10
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Ljava/lang/String;)Ljava/math/BigInteger;

    #@13
    move-result-object v6

    #@14
    .line 547
    .local v6, "b":Ljava/math/BigInteger;
    const-string/jumbo v0, "4D696E676875615175985BD3ADBADA21B43A97E2"

    #@17
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@1a
    move-result-object v14

    #@1b
    .line 548
    .local v14, "S":[B
    const-string/jumbo v0, "0400000000000000023123953A9464B54D"

    #@1e
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Ljava/lang/String;)Ljava/math/BigInteger;

    #@21
    move-result-object v7

    #@22
    .line 549
    .local v7, "n":Ljava/math/BigInteger;
    const-wide/16 v12, 0x2

    #@24
    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@27
    move-result-object v8

    #@28
    .line 551
    .local v8, "h":Ljava/math/BigInteger;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@2a
    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@2d
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap1(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@30
    move-result-object v10

    #@31
    .line 554
    .local v10, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    const-string/jumbo v0, "040081BAF91FDF9833C40F9C181343638399078C6E7EA38C001F73C8134B1B4EF9E150"

    #@34
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v10, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@3b
    move-result-object v11

    #@3c
    .line 558
    .local v11, "G":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    new-instance v9, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@3e
    move-object v12, v7

    #@3f
    move-object v13, v8

    #@40
    invoke-direct/range {v9 .. v14}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@43
    return-object v9
.end method
