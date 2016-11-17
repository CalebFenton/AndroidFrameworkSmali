.class final Lsun/nio/ch/IOStatus;
.super Ljava/lang/Object;
.source "IOStatus.java"


# static fields
.field static final EOF:I = -0x1

.field static final INTERRUPTED:I = -0x3

.field static final THROWN:I = -0x5

.field static final UNAVAILABLE:I = -0x2

.field static final UNSUPPORTED:I = -0x4

.field static final UNSUPPORTED_CASE:I = -0x6


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static check(I)Z
    .locals 1
    .param p0, "n"    # I

    #@0
    .prologue
    .line 65
    const/4 v0, -0x2

    #@1
    if-lt p0, v0, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :goto_0
    return v0

    #@5
    :cond_0
    const/4 v0, 0x0

    #@6
    goto :goto_0
.end method

.method static check(J)Z
    .locals 2
    .param p0, "n"    # J

    #@0
    .prologue
    .line 75
    const-wide/16 v0, -0x2

    #@2
    cmp-long v0, p0, v0

    #@4
    if-ltz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method static checkAll(J)Z
    .locals 4
    .param p0, "n"    # J

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 80
    const-wide/16 v2, -0x1

    #@3
    cmp-long v1, p0, v2

    #@5
    if-gtz v1, :cond_0

    #@7
    const-wide/16 v2, -0x6

    #@9
    cmp-long v1, p0, v2

    #@b
    if-gez v1, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method static normalize(I)I
    .locals 1
    .param p0, "n"    # I

    #@0
    .prologue
    .line 59
    const/4 v0, -0x2

    #@1
    if-ne p0, v0, :cond_0

    #@3
    .line 60
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 61
    :cond_0
    return p0
.end method

.method static normalize(J)J
    .locals 2
    .param p0, "n"    # J

    #@0
    .prologue
    .line 69
    const-wide/16 v0, -0x2

    #@2
    cmp-long v0, p0, v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 70
    const-wide/16 v0, 0x0

    #@8
    return-wide v0

    #@9
    .line 71
    :cond_0
    return-wide p0
.end method
