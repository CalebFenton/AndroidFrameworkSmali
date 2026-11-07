.class public final Lsun/nio/ch/IOStatus;
.super Ljava/lang/Object;
.source "IOStatus.java"


# static fields
.field public static final blacklist EOF:I = -0x1

.field public static final blacklist INTERRUPTED:I = -0x3

.field public static final blacklist THROWN:I = -0x5

.field public static final blacklist UNAVAILABLE:I = -0x2

.field public static final blacklist UNSUPPORTED:I = -0x4

.field public static final blacklist UNSUPPORTED_CASE:I = -0x6


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist check(I)Z
    .registers 2
    .param p0, "n"    # I

    .line 66
    const/4 v0, -0x2

    if-lt p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method public static blacklist check(J)Z
    .registers 4
    .param p0, "n"    # J

    .line 76
    const-wide/16 v0, -0x2

    cmp-long v0, p0, v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static blacklist checkAll(J)Z
    .registers 4
    .param p0, "n"    # J

    .line 81
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-gtz v0, :cond_f

    const-wide/16 v0, -0x6

    cmp-long v0, p0, v0

    if-gez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static blacklist normalize(I)I
    .registers 2
    .param p0, "n"    # I

    .line 60
    const/4 v0, -0x2

    if-ne p0, v0, :cond_5

    .line 61
    const/4 v0, 0x0

    return v0

    .line 62
    :cond_5
    return p0
.end method

.method public static blacklist normalize(J)J
    .registers 4
    .param p0, "n"    # J

    .line 70
    const-wide/16 v0, -0x2

    cmp-long v0, p0, v0

    if-nez v0, :cond_9

    .line 71
    const-wide/16 v0, 0x0

    return-wide v0

    .line 72
    :cond_9
    return-wide p0
.end method

.method static blacklist okayToRetry(J)Z
    .registers 4
    .param p0, "n"    # J

    .line 89
    const-wide/16 v0, -0x2

    cmp-long v0, p0, v0

    if-eqz v0, :cond_f

    const-wide/16 v0, -0x3

    cmp-long v0, p0, v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method
