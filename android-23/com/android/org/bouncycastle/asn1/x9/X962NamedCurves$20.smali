.class final Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves$20;
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
    .line 451
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 10

    #@0
    .prologue
    const/16 v4, 0x10

    #@2
    .line 455
    new-instance v7, Ljava/math/BigInteger;

    #@4
    const-string/jumbo v1, "0101D556572AABAC800101D556572AABAC8001022D5C91DD173F8FB561DA6899164443051D"

    #@7
    invoke-direct {v7, v1, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@a
    .line 456
    .local v7, "c2m304w1n":Ljava/math/BigInteger;
    const-wide/32 v2, 0xfe2e

    #@d
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@10
    move-result-object v8

    #@11
    .line 458
    .local v8, "c2m304w1h":Ljava/math/BigInteger;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@13
    .line 461
    new-instance v5, Ljava/math/BigInteger;

    #@15
    const-string/jumbo v1, "00FD0D693149A118F651E6DCE6802085377E5F882D1B510B44160074C1288078365A0396C8E681"

    #@18
    invoke-direct {v5, v1, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@1b
    .line 462
    new-instance v6, Ljava/math/BigInteger;

    #@1d
    const-string/jumbo v1, "00BDDB97E555A50A908E43B01C798EA5DAA6788F1EA2794EFCF57166B8C14039601E55827340BE"

    #@20
    invoke-direct {v6, v1, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@23
    .line 459
    const/16 v1, 0x130

    #@25
    .line 460
    const/4 v2, 0x1

    #@26
    const/4 v3, 0x2

    #@27
    const/16 v4, 0xb

    #@29
    .line 458
    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@2c
    .line 465
    .local v0, "c2m304w1":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-instance v4, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@2e
    .line 468
    const-string/jumbo v1, "02197B07845E9BE2D96ADB0F5F3C7F2CFFBD7A3EB8B6FEC35C7FD67F26DDF6285A644F740A2614"

    #@31
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@34
    move-result-object v1

    #@35
    .line 467
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@38
    move-result-object v6

    #@39
    .line 470
    const/4 v9, 0x0

    #@3a
    move-object v5, v0

    #@3b
    .line 465
    invoke-direct/range {v4 .. v9}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@3e
    return-object v4
.end method
