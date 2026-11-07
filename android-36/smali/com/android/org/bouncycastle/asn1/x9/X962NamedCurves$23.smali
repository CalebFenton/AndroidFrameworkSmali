.class Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves$23;
.super Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;
.source "X962NamedCurves.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 629
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .registers 8

    .line 632
    const-string p0, "0340340340340340340340340340340340340340340340340340340323C313FAB50589703B5EC68D3587FEC60D161CC149C1AD4A91"

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    const-wide/16 v0, 0x2760

    .line 633
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 635
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    const-string p0, "1A827EF00DD6FC0E234CAF046C6A5D8A85395B236CC4AD2CF32A0CADBDC9DDF620B0EB9906D0957F6C6FEACD615468DF104DE296CD8F"

    .line 638
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    const-string p0, "10D9B4A3D9047D8B154359ABFB1B7F5485B04CEB868237DDC9DEDA982A679A5A919B626D4E50A8DD731B107A9962381FB5D807BF2618"

    .line 639
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    const/16 v1, 0x1af

    const/16 v2, 0x78

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 635
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->-$$Nest$smconfigureCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 7

    .line 646
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 648
    const-string p0, "02120FC05D3C67A99DE161D2F4092622FECA701BE4F50F4758714E8A87BBF2A658EF8C21E7C5EFE965361F6C2999C0C247B0DBD70CE6B7"

    invoke-static {v1, p0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->-$$Nest$smconfigureBasepoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object v2

    .line 651
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
