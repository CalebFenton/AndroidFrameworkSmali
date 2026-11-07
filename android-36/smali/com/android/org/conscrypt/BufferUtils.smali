.class public final Lcom/android/org/conscrypt/BufferUtils;
.super Ljava/lang/Object;
.source "BufferUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkNotNull([Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p0, "buffers"    # [Ljava/nio/ByteBuffer;

    .line 38
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_13

    aget-object v2, p0, v1

    .line 39
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v2, :cond_b

    .line 38
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 40
    .restart local v2    # "buffer":Ljava/nio/ByteBuffer;
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null buffer in array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    :cond_13
    return-void
.end method

.method public static blacklist consume([Ljava/nio/ByteBuffer;I)V
    .registers 7
    .param p0, "sourceBuffers"    # [Ljava/nio/ByteBuffer;
    .param p1, "toConsume"    # I

    .line 62
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1f

    aget-object v2, p0, v1

    .line 63
    .local v2, "sourceBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 64
    .local v3, "amount":I
    if-lez v3, :cond_1c

    .line 65
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 66
    sub-int/2addr p1, v3

    .line 67
    if-nez p1, :cond_1c

    .line 68
    goto :goto_1f

    .line 62
    .end local v2    # "sourceBuffer":Ljava/nio/ByteBuffer;
    .end local v3    # "amount":I
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 72
    :cond_1f
    :goto_1f
    if-gtz p1, :cond_22

    .line 75
    return-void

    .line 73
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "toConsume > data size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist copyNoConsume([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .registers 11
    .param p0, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p1, "destination"    # Ljava/nio/ByteBuffer;
    .param p2, "maxAmount"    # I

    .line 111
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x0

    if-lt v0, p2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    const-string v2, "Destination buffer too small"

    invoke-static {v0, v2}, Lcom/android/org/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 112
    move v0, p2

    .line 113
    .local v0, "needed":I
    array-length v2, p0

    :goto_11
    if-ge v1, v2, :cond_42

    aget-object v3, p0, v1

    .line 114
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 115
    .local v4, "remaining":I
    if-lez v4, :cond_3f

    .line 118
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 119
    .local v5, "oldPosition":I
    if-gt v4, v0, :cond_26

    .line 120
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 121
    sub-int/2addr v0, v4

    goto :goto_39

    .line 123
    :cond_26
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    .line 124
    .local v6, "oldLimit":I
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 125
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 126
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 127
    const/4 v0, 0x0

    .line 131
    .end local v6    # "oldLimit":I
    :goto_39
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 132
    if-nez v0, :cond_3f

    .line 133
    goto :goto_42

    .line 113
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    .end local v4    # "remaining":I
    .end local v5    # "oldPosition":I
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 137
    :cond_42
    :goto_42
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 138
    return-object p1
.end method

.method public static blacklist getBufferLargerThan([Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .registers 9
    .param p0, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p1, "minSize"    # I

    .line 82
    array-length v0, p0

    .line 83
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v2, 0x0

    if-ge v1, v0, :cond_24

    .line 84
    aget-object v3, p0, v1

    .line 85
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 86
    .local v4, "remaining":I
    if-lez v4, :cond_21

    .line 87
    if-lt v4, p1, :cond_10

    .line 88
    return-object v3

    .line 90
    :cond_10
    add-int/lit8 v5, v1, 0x1

    .local v5, "j":I
    :goto_12
    if-ge v5, v0, :cond_20

    .line 91
    aget-object v6, p0, v5

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-lez v6, :cond_1d

    .line 92
    return-object v2

    .line 90
    :cond_1d
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 95
    .end local v5    # "j":I
    :cond_20
    return-object v3

    .line 83
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    .end local v4    # "remaining":I
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 98
    .end local v1    # "i":I
    :cond_24
    return-object v2
.end method

.method public static blacklist remaining([Ljava/nio/ByteBuffer;)J
    .registers 8
    .param p0, "buffers"    # [Ljava/nio/ByteBuffer;

    .line 49
    const-wide/16 v0, 0x0

    .line 50
    .local v0, "size":J
    array-length v2, p0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_11

    aget-object v4, p0, v3

    .line 51
    .local v4, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v0, v5

    .line 50
    .end local v4    # "buffer":Ljava/nio/ByteBuffer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 53
    :cond_11
    return-wide v0
.end method
