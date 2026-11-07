.class public Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;
.super Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;
.source "RSAPrivateCrtKeyParameters.java"


# instance fields
.field private blacklist dP:Ljava/math/BigInteger;

.field private blacklist dQ:Ljava/math/BigInteger;

.field private blacklist e:Ljava/math/BigInteger;

.field private blacklist p:Ljava/math/BigInteger;

.field private blacklist q:Ljava/math/BigInteger;

.field private blacklist qInv:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 19
    .param p1, "modulus"    # Ljava/math/BigInteger;
    .param p2, "publicExponent"    # Ljava/math/BigInteger;
    .param p3, "privateExponent"    # Ljava/math/BigInteger;
    .param p4, "p"    # Ljava/math/BigInteger;
    .param p5, "q"    # Ljava/math/BigInteger;
    .param p6, "dP"    # Ljava/math/BigInteger;
    .param p7, "dQ"    # Ljava/math/BigInteger;
    .param p8, "qInv"    # Ljava/math/BigInteger;

    .line 32
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    .line 33
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V
    .registers 11
    .param p1, "modulus"    # Ljava/math/BigInteger;
    .param p2, "publicExponent"    # Ljava/math/BigInteger;
    .param p3, "privateExponent"    # Ljava/math/BigInteger;
    .param p4, "p"    # Ljava/math/BigInteger;
    .param p5, "q"    # Ljava/math/BigInteger;
    .param p6, "dP"    # Ljava/math/BigInteger;
    .param p7, "dQ"    # Ljava/math/BigInteger;
    .param p8, "qInv"    # Ljava/math/BigInteger;
    .param p9, "isInternal"    # Z

    .line 46
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p3, p9}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Z)V

    .line 48
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->e:Ljava/math/BigInteger;

    .line 49
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->p:Ljava/math/BigInteger;

    .line 50
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->q:Ljava/math/BigInteger;

    .line 51
    iput-object p6, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->dP:Ljava/math/BigInteger;

    .line 52
    iput-object p7, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->dQ:Ljava/math/BigInteger;

    .line 53
    iput-object p8, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->qInv:Ljava/math/BigInteger;

    .line 54
    return-void
.end method


# virtual methods
.method public blacklist getDP()Ljava/math/BigInteger;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->dP:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getDQ()Ljava/math/BigInteger;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->dQ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getP()Ljava/math/BigInteger;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getPublicExponent()Ljava/math/BigInteger;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->e:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getQ()Ljava/math/BigInteger;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getQInv()Ljava/math/BigInteger;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->qInv:Ljava/math/BigInteger;

    return-object v0
.end method
