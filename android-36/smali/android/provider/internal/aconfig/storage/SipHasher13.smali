.class public Landroid/provider/internal/aconfig/storage/SipHasher13;
.super Ljava/lang/Object;
.source "SipHasher13.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/internal/aconfig/storage/SipHasher13$State;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist hash([B)J
    .registers 12
    .param p0, "data"    # [B

    .line 83
    new-instance v0, Landroid/provider/internal/aconfig/storage/SipHasher13$State;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Landroid/provider/internal/aconfig/storage/SipHasher13$State;-><init>(JJ)V

    .line 84
    .local v0, "state":Landroid/provider/internal/aconfig/storage/SipHasher13$State;
    array-length v1, p0

    .line 85
    .local v1, "len":I
    and-int/lit8 v2, v1, 0x7

    .line 86
    .local v2, "left":I
    const/4 v3, 0x0

    .line 88
    .local v3, "index":I
    :goto_b
    sub-int v4, v1, v2

    if-ge v3, v4, :cond_1b

    .line 89
    const/16 v4, 0x8

    invoke-static {p0, v3, v4}, Landroid/provider/internal/aconfig/storage/SipHasher13;->loadLe([BII)J

    move-result-wide v4

    .line 90
    .local v4, "mi":J
    add-int/lit8 v3, v3, 0x8

    .line 91
    invoke-virtual {v0, v4, v5}, Landroid/provider/internal/aconfig/storage/SipHasher13$State;->compress(J)V

    .line 92
    .end local v4    # "mi":J
    goto :goto_b

    .line 95
    :cond_1b
    mul-int/lit8 v4, v2, 0x8

    const-wide/16 v5, 0xff

    shl-long v7, v5, v4

    invoke-static {p0, v3, v2}, Landroid/provider/internal/aconfig/storage/SipHasher13;->loadLe([BII)J

    move-result-wide v9

    or-long/2addr v7, v9

    .line 96
    .local v7, "m":J
    const/4 v4, 0x7

    if-ne v2, v4, :cond_2e

    .line 98
    invoke-virtual {v0, v7, v8}, Landroid/provider/internal/aconfig/storage/SipHasher13$State;->compress(J)V

    .line 99
    const-wide/16 v7, 0x0

    .line 102
    :cond_2e
    add-int/lit8 v4, v1, 0x1

    int-to-long v9, v4

    and-long v4, v9, v5

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    or-long/2addr v4, v7

    .line 103
    .end local v7    # "m":J
    .local v4, "m":J
    invoke-virtual {v0, v4, v5}, Landroid/provider/internal/aconfig/storage/SipHasher13$State;->compress(J)V

    .line 105
    invoke-virtual {v0}, Landroid/provider/internal/aconfig/storage/SipHasher13$State;->finish()J

    move-result-wide v6

    return-wide v6
.end method

.method private static blacklist loadLe([BII)J
    .registers 10
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "size"    # I

    .line 109
    const-wide/16 v0, 0x0

    .line 110
    .local v0, "m":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, p2, :cond_14

    .line 111
    add-int v3, v2, p1

    aget-byte v3, p0, v3

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    mul-int/lit8 v5, v2, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 113
    .end local v2    # "i":I
    :cond_14
    return-wide v0
.end method
