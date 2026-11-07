.class public Lcom/android/internal/telephony/util/ByteUtils;
.super Ljava/lang/Object;
.source "ByteUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs blacklist concat([[B)[B
    .registers 8

    .line 56
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_4
    if-ge v2, v0, :cond_d

    aget-object v4, p0, v2

    .line 57
    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 59
    :cond_d
    new-array v0, v3, [B

    .line 61
    array-length v2, p0

    move v3, v1

    move v4, v3

    :goto_12
    if-ge v3, v2, :cond_1f

    aget-object v5, p0, v3

    .line 62
    array-length v6, v5

    invoke-static {v5, v1, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_1f
    return-object v0
.end method

.method public static blacklist indexOf([BB)I
    .registers 4

    .line 35
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/android/internal/telephony/util/ByteUtils;->indexOf([BBII)I

    move-result p0

    return p0
.end method

.method private static blacklist indexOf([BBII)I
    .registers 5

    :goto_0
    if-ge p2, p3, :cond_a

    .line 40
    aget-byte v0, p0, p2

    if-ne v0, p1, :cond_7

    return p2

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_a
    const/4 p0, -0x1

    return p0
.end method
