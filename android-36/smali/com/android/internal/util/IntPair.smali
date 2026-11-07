.class public Lcom/android/internal/util/IntPair;
.super Ljava/lang/Object;
.source "IntPair.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist first(J)I
    .registers 4
    .param p0, "intPair"    # J

    .line 33
    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static blacklist of(II)J
    .registers 8
    .param p0, "first"    # I
    .param p1, "second"    # I

    .line 29
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static blacklist second(J)I
    .registers 3
    .param p0, "intPair"    # J

    .line 37
    long-to-int v0, p0

    return v0
.end method
