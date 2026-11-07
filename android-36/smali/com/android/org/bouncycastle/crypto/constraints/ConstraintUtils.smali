.class public abstract Lcom/android/org/bouncycastle/crypto/constraints/ConstraintUtils;
.super Ljava/lang/Object;
.source "ConstraintUtils.java"


# direct methods
.method public static blacklist bitsOfSecurityFor(Ljava/math/BigInteger;)I
    .registers 1

    .line 21
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityForFF(I)I

    move-result p0

    return p0
.end method

.method public static blacklist bitsOfSecurityForFF(I)I
    .registers 2

    .line 0
    const/16 v0, 0x800

    if-lt p0, v0, :cond_1c

    const/16 v0, 0xc00

    if-lt p0, v0, :cond_19

    const/16 v0, 0x1e00

    if-lt p0, v0, :cond_16

    const/16 v0, 0x3c00

    if-lt p0, v0, :cond_13

    const/16 p0, 0x100

    return p0

    :cond_13
    const/16 p0, 0xc0

    return p0

    :cond_16
    const/16 p0, 0x80

    return p0

    :cond_19
    const/16 p0, 0x70

    return p0

    :cond_1c
    const/16 v0, 0x400

    if-lt p0, v0, :cond_23

    const/16 p0, 0x50

    return p0

    :cond_23
    const/16 p0, 0x14

    return p0
.end method
