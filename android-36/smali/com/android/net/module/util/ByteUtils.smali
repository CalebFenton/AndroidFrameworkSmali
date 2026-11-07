.class public Lcom/android/net/module/util/ByteUtils;
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
    .registers 9
    .param p0, "arrays"    # [[B

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "length":I
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_4
    if-ge v3, v1, :cond_d

    aget-object v4, p0, v3

    .line 57
    .local v4, "array":[B
    array-length v5, v4

    add-int/2addr v0, v5

    .line 56
    .end local v4    # "array":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 59
    :cond_d
    new-array v1, v0, [B

    .line 60
    .local v1, "result":[B
    const/4 v3, 0x0

    .line 61
    .local v3, "pos":I
    array-length v4, p0

    move v5, v2

    :goto_12
    if-ge v5, v4, :cond_1f

    aget-object v6, p0, v5

    .line 62
    .local v6, "array":[B
    array-length v7, v6

    invoke-static {v6, v2, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    array-length v7, v6

    add-int/2addr v3, v7

    .line 61
    .end local v6    # "array":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 65
    :cond_1f
    return-object v1
.end method

.method public static blacklist indexOf([BB)I
    .registers 4
    .param p0, "array"    # [B
    .param p1, "target"    # B

    .line 35
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/android/net/module/util/ByteUtils;->indexOf([BBII)I

    move-result v0

    return v0
.end method

.method private static blacklist indexOf([BBII)I
    .registers 6
    .param p0, "array"    # [B
    .param p1, "target"    # B
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 39
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_b

    .line 40
    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_8

    .line 41
    return v0

    .line 39
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 44
    .end local v0    # "i":I
    :cond_b
    const/4 v0, -0x1

    return v0
.end method
