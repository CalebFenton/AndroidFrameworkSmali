.class final Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves$4;
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
    .line 84
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
    .line 88
    new-instance v4, Ljava/math/BigInteger;

    #@4
    const-string/jumbo v1, "7fffffffffffffffffffffff7fffff9e5e9a9f5d9071fbd1522688909d0b"

    #@7
    invoke-direct {v4, v1, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@a
    .line 89
    .local v4, "n":Ljava/math/BigInteger;
    const-wide/16 v2, 0x1

    #@c
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@f
    move-result-object v5

    #@10
    .line 91
    .local v5, "h":Ljava/math/BigInteger;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    #@12
    .line 92
    new-instance v1, Ljava/math/BigInteger;

    #@14
    const-string/jumbo v2, "883423532389192164791648750360308885314476597252960362792450860609699839"

    #@17
    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    #@1a
    .line 93
    new-instance v2, Ljava/math/BigInteger;

    #@1c
    const-string/jumbo v3, "7fffffffffffffffffffffff7fffffffffff8000000000007ffffffffffc"

    #@1f
    invoke-direct {v2, v3, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@22
    .line 94
    new-instance v3, Ljava/math/BigInteger;

    #@24
    const-string/jumbo v6, "6b016c3bdcf18941d0d654921475ca71a9db2fb27d1d37796185c2942c0a"

    #@27
    invoke-direct {v3, v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@2a
    .line 91
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@2d
    .line 97
    .local v0, "cFp239v1":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@2f
    .line 100
    const-string/jumbo v2, "020ffa963cdca8816ccc33b8642bedf905c3d358573d3f27fbbd3b3cb9aaaf"

    #@32
    invoke-static {v2}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@35
    move-result-object v2

    #@36
    .line 99
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@39
    move-result-object v3

    #@3a
    .line 102
    const-string/jumbo v2, "e43bb460f0b80cc0c0b075798e948060f8321b7d"

    #@3d
    invoke-static {v2}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@40
    move-result-object v6

    #@41
    move-object v2, v0

    #@42
    .line 97
    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@45
    return-object v1
.end method
