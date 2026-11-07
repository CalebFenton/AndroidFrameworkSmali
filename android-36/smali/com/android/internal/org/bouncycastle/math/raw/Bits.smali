.class public abstract Lcom/android/internal/org/bouncycastle/math/raw/Bits;
.super Ljava/lang/Object;
.source "Bits.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist bitPermuteStep(III)I
    .registers 5
    .param p0, "x"    # I
    .param p1, "m"    # I
    .param p2, "s"    # I

    .line 11
    ushr-int v0, p0, p2

    xor-int/2addr v0, p0

    and-int/2addr v0, p1

    .line 12
    .local v0, "t":I
    shl-int v1, v0, p2

    xor-int/2addr v1, v0

    xor-int/2addr v1, p0

    return v1
.end method

.method public static blacklist bitPermuteStep(JJI)J
    .registers 9
    .param p0, "x"    # J
    .param p2, "m"    # J
    .param p4, "s"    # I

    .line 17
    ushr-long v0, p0, p4

    xor-long/2addr v0, p0

    and-long/2addr v0, p2

    .line 18
    .local v0, "t":J
    shl-long v2, v0, p4

    xor-long/2addr v2, v0

    xor-long/2addr v2, p0

    return-wide v2
.end method

.method public static blacklist bitPermuteStepSimple(III)I
    .registers 5
    .param p0, "x"    # I
    .param p1, "m"    # I
    .param p2, "s"    # I

    .line 23
    and-int v0, p0, p1

    shl-int/2addr v0, p2

    ushr-int v1, p0, p2

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    return v0
.end method

.method public static blacklist bitPermuteStepSimple(JJI)J
    .registers 9
    .param p0, "x"    # J
    .param p2, "m"    # J
    .param p4, "s"    # I

    .line 28
    and-long v0, p0, p2

    shl-long/2addr v0, p4

    ushr-long v2, p0, p4

    and-long/2addr v2, p2

    or-long/2addr v0, v2

    return-wide v0
.end method
