.class public Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;
.super Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;
.source "DSAPublicKeyParameters.java"


# static fields
.field private static final blacklist ONE:Ljava/math/BigInteger;

.field private static final blacklist TWO:Ljava/math/BigInteger;


# instance fields
.field private blacklist y:Ljava/math/BigInteger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    const-wide/16 v0, 0x1

    .line 12
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    .line 13
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V
    .registers 4

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;-><init>(ZLcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;->validate(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;->y:Ljava/math/BigInteger;

    return-void
.end method

.method private blacklist validate(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)Ljava/math/BigInteger;
    .registers 4

    if-eqz p2, :cond_35

    .line 30
    sget-object p0, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_2d

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-ltz p0, :cond_2d

    sget-object p0, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;->ONE:Ljava/math/BigInteger;

    .line 31
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2d

    return-object p1

    .line 36
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "y value does not appear to be in correct group"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_35
    return-object p1
.end method


# virtual methods
.method public blacklist getY()Ljava/math/BigInteger;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;->y:Ljava/math/BigInteger;

    return-object p0
.end method
