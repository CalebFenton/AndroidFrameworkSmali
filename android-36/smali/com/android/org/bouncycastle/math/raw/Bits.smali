.class public abstract Lcom/android/org/bouncycastle/math/raw/Bits;
.super Ljava/lang/Object;
.source "Bits.java"


# direct methods
.method public static blacklist bitPermuteStep(III)I
    .registers 4

    .line 0
    ushr-int v0, p0, p2

    xor-int/2addr v0, p0

    and-int/2addr p1, v0

    shl-int p2, p1, p2

    xor-int/2addr p1, p2

    xor-int/2addr p0, p1

    return p0
.end method

.method public static blacklist bitPermuteStep(JJI)J
    .registers 7

    .line 0
    ushr-long v0, p0, p4

    xor-long/2addr v0, p0

    and-long/2addr p2, v0

    shl-long v0, p2, p4

    xor-long/2addr p2, v0

    xor-long/2addr p0, p2

    return-wide p0
.end method
