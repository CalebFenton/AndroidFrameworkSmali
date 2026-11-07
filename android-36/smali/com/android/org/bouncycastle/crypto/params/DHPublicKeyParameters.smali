.class public Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;
.super Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;
.source "DHPublicKeyParameters.java"


# static fields
.field private static final blacklist ONE:Ljava/math/BigInteger;

.field private static final blacklist TWO:Ljava/math/BigInteger;


# instance fields
.field private blacklist y:Ljava/math/BigInteger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    const-wide/16 v0, 0x1

    .line 15
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    .line 16
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V
    .registers 4

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;-><init>(ZLcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;->validate(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;->y:Ljava/math/BigInteger;

    return-void
.end method

.method private static blacklist legendre(Ljava/math/BigInteger;Ljava/math/BigInteger;)I
    .registers 9

    .line 124
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 125
    invoke-static {v0, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object p0

    .line 126
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object p1

    .line 130
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    .line 133
    :goto_f
    aget v3, p0, v1

    if-nez v3, :cond_17

    .line 135
    invoke-static {v0, p0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownWord(I[II)I

    goto :goto_f

    .line 138
    :cond_17
    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Integers;->numberOfTrailingZeros(I)I

    move-result v3

    if-lez v3, :cond_29

    .line 141
    invoke-static {v0, p0, v3, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBits(I[III)I

    .line 142
    aget v4, p1, v1

    ushr-int/lit8 v5, v4, 0x1

    xor-int/2addr v4, v5

    shl-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v4

    xor-int/2addr v2, v3

    .line 146
    :cond_29
    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->compare(I[I[I)I

    move-result v3

    if-nez v3, :cond_3b

    .line 166
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->isOne(I[I)Z

    move-result p0

    if-eqz p0, :cond_3a

    and-int/lit8 p0, v2, 0x2

    rsub-int/lit8 p0, p0, 0x1

    return p0

    :cond_3a
    return v1

    :cond_3b
    if-gez v3, :cond_46

    .line 154
    aget v3, p0, v1

    aget v4, p1, v1

    and-int/2addr v3, v4

    xor-int/2addr v2, v3

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    :cond_46
    :goto_46
    add-int/lit8 v3, v0, -0x1

    .line 158
    aget v4, p0, v3

    if-nez v4, :cond_4e

    move v0, v3

    goto :goto_46

    .line 163
    :cond_4e
    invoke-static {v0, p0, p1, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    goto :goto_f
.end method

.method private blacklist validate(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)Ljava/math/BigInteger;
    .registers 6

    if-eqz p1, :cond_60

    .line 36
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object p0

    .line 39
    sget-object v0, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_58

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_58

    .line 44
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object p2

    if-nez p2, :cond_1f

    goto :goto_4f

    :cond_1f
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 51
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-ne v0, v2, :cond_43

    .line 52
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 55
    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;->legendre(Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result p0

    if-ne v1, p0, :cond_50

    goto :goto_4f

    .line 62
    :cond_43
    sget-object v0, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, p2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_50

    :goto_4f
    return-object p1

    .line 68
    :cond_50
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Y value does not appear to be in correct group"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_58
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid DH public key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 33
    :cond_60
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "y value cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 84
    instance-of v0, p1, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 89
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    .line 91
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;->y:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    return v1
.end method

.method public blacklist getY()Ljava/math/BigInteger;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;->y:Ljava/math/BigInteger;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;->y:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-super {p0}, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
