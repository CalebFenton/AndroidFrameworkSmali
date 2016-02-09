.class final Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves$17;
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
    .line 382
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 8

    #@0
    .prologue
    const/16 v7, 0x10

    #@2
    .line 386
    new-instance v5, Ljava/math/BigInteger;

    #@4
    const-string/jumbo v1, "1555555555555555555555555555553C6F2885259C31E3FCDF154624522D"

    #@7
    invoke-direct {v5, v1, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@a
    .line 387
    .local v5, "c2m239v2n":Ljava/math/BigInteger;
    const-wide/16 v2, 0x6

    #@c
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@f
    move-result-object v6

    #@10
    .line 389
    .local v6, "c2m239v2h":Ljava/math/BigInteger;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@12
    .line 392
    new-instance v3, Ljava/math/BigInteger;

    #@14
    const-string/jumbo v1, "4230017757A767FAE42398569B746325D45313AF0766266479B75654E65F"

    #@17
    invoke-direct {v3, v1, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@1a
    .line 393
    new-instance v4, Ljava/math/BigInteger;

    #@1c
    const-string/jumbo v1, "5037EA654196CFF0CD82B2C14A2FCF2E3FF8775285B545722F03EACDB74B"

    #@1f
    invoke-direct {v4, v1, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@22
    .line 390
    const/16 v1, 0xef

    #@24
    .line 391
    const/16 v2, 0x24

    #@26
    .line 389
    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@29
    .line 396
    .local v0, "c2m239v2":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@2b
    .line 399
    const-string/jumbo v1, "0228F9D04E900069C8DC47A08534FE76D2B900B7D7EF31F5709F200C4CA205"

    #@2e
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@31
    move-result-object v1

    #@32
    .line 398
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@35
    move-result-object v4

    #@36
    .line 401
    const/4 v7, 0x0

    #@37
    move-object v3, v0

    #@38
    .line 396
    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@3b
    return-object v2
.end method
