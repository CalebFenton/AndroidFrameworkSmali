.class public Ljava/io/CharArrayReader;
.super Ljava/io/Reader;
.source "CharArrayReader.java"


# instance fields
.field protected whitelist test-api buf:[C

.field protected whitelist test-api count:I

.field protected whitelist test-api markedPos:I

.field protected whitelist test-api pos:I


# direct methods
.method public constructor whitelist test-api <init>([C)V
    .registers 3
    .param p1, "buf"    # [C

    .line 58
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/CharArrayReader;->markedPos:I

    .line 59
    iput-object p1, p0, Ljava/io/CharArrayReader;->buf:[C

    .line 60
    iput v0, p0, Ljava/io/CharArrayReader;->pos:I

    .line 61
    array-length v0, p1

    iput v0, p0, Ljava/io/CharArrayReader;->count:I

    .line 62
    return-void
.end method

.method public constructor whitelist test-api <init>([CII)V
    .registers 6
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 81
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/CharArrayReader;->markedPos:I

    .line 82
    if-ltz p2, :cond_21

    array-length v0, p1

    if-gt p2, v0, :cond_21

    if-ltz p3, :cond_21

    add-int v0, p2, p3

    if-ltz v0, :cond_21

    .line 86
    iput-object p1, p0, Ljava/io/CharArrayReader;->buf:[C

    .line 87
    iput p2, p0, Ljava/io/CharArrayReader;->pos:I

    .line 88
    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljava/io/CharArrayReader;->count:I

    .line 89
    iput p2, p0, Ljava/io/CharArrayReader;->markedPos:I

    .line 90
    return-void

    .line 84
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private greylist-max-o ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Ljava/io/CharArrayReader;->buf:[C

    if-eqz v0, :cond_5

    .line 96
    return-void

    .line 95
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 264
    iget-object v0, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Ljava/io/CharArrayReader;->buf:[C

    .line 266
    monitor-exit v0

    .line 267
    return-void

    .line 266
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public whitelist test-api mark(I)V
    .registers 4
    .param p1, "readAheadLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    iget-object v0, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_3
    invoke-direct {p0}, Ljava/io/CharArrayReader;->ensureOpen()V

    .line 239
    iget v1, p0, Ljava/io/CharArrayReader;->pos:I

    iput v1, p0, Ljava/io/CharArrayReader;->markedPos:I

    .line 240
    monitor-exit v0

    .line 241
    return-void

    .line 240
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public whitelist test-api markSupported()Z
    .registers 2

    .line 221
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_3
    invoke-direct {p0}, Ljava/io/CharArrayReader;->ensureOpen()V

    .line 106
    iget v1, p0, Ljava/io/CharArrayReader;->pos:I

    iget v2, p0, Ljava/io/CharArrayReader;->count:I

    if-lt v1, v2, :cond_f

    .line 107
    monitor-exit v0

    const/4 v0, -0x1

    return v0

    .line 109
    :cond_f
    iget-object v1, p0, Ljava/io/CharArrayReader;->buf:[C

    iget v2, p0, Ljava/io/CharArrayReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/CharArrayReader;->pos:I

    aget-char v1, v1, v2

    monitor-exit v0

    return v1

    .line 110
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public whitelist test-api read(Ljava/nio/CharBuffer;)I
    .registers 7
    .param p1, "target"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_3
    invoke-direct {p0}, Ljava/io/CharArrayReader;->ensureOpen()V

    .line 161
    iget v1, p0, Ljava/io/CharArrayReader;->pos:I

    iget v2, p0, Ljava/io/CharArrayReader;->count:I

    if-lt v1, v2, :cond_f

    .line 162
    monitor-exit v0

    const/4 v0, -0x1

    return v0

    .line 165
    :cond_f
    iget v1, p0, Ljava/io/CharArrayReader;->count:I

    iget v2, p0, Ljava/io/CharArrayReader;->pos:I

    sub-int/2addr v1, v2

    .line 166
    .local v1, "avail":I
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 167
    .local v2, "len":I
    iget-object v3, p0, Ljava/io/CharArrayReader;->buf:[C

    iget v4, p0, Ljava/io/CharArrayReader;->pos:I

    invoke-virtual {p1, v3, v4, v2}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    .line 168
    iget v3, p0, Ljava/io/CharArrayReader;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Ljava/io/CharArrayReader;->pos:I

    .line 169
    monitor-exit v0

    return v2

    .line 170
    .end local v1    # "avail":I
    .end local v2    # "len":I
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public whitelist test-api read([CII)I
    .registers 8
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_3
    invoke-direct {p0}, Ljava/io/CharArrayReader;->ensureOpen()V

    .line 134
    array-length v1, p1

    invoke-static {p2, p3, v1}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 135
    const/4 v1, 0x0

    if-nez p3, :cond_f

    .line 136
    monitor-exit v0

    return v1

    .line 139
    :cond_f
    iget v2, p0, Ljava/io/CharArrayReader;->pos:I

    iget v3, p0, Ljava/io/CharArrayReader;->count:I

    if-lt v2, v3, :cond_18

    .line 140
    monitor-exit v0

    const/4 v0, -0x1

    return v0

    .line 143
    :cond_18
    iget v2, p0, Ljava/io/CharArrayReader;->count:I

    iget v3, p0, Ljava/io/CharArrayReader;->pos:I

    sub-int/2addr v2, v3

    .line 144
    .local v2, "avail":I
    if-le p3, v2, :cond_20

    .line 145
    move p3, v2

    .line 147
    :cond_20
    if-gtz p3, :cond_24

    .line 148
    monitor-exit v0

    return v1

    .line 150
    :cond_24
    iget-object v1, p0, Ljava/io/CharArrayReader;->buf:[C

    iget v3, p0, Ljava/io/CharArrayReader;->pos:I

    invoke-static {v1, v3, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    iget v1, p0, Ljava/io/CharArrayReader;->pos:I

    add-int/2addr v1, p3

    iput v1, p0, Ljava/io/CharArrayReader;->pos:I

    .line 152
    monitor-exit v0

    return p3

    .line 153
    .end local v2    # "avail":I
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public whitelist test-api ready()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_3
    invoke-direct {p0}, Ljava/io/CharArrayReader;->ensureOpen()V

    .line 213
    iget v1, p0, Ljava/io/CharArrayReader;->count:I

    iget v2, p0, Ljava/io/CharArrayReader;->pos:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    monitor-exit v0

    return v1

    .line 214
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist test-api reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_3
    invoke-direct {p0}, Ljava/io/CharArrayReader;->ensureOpen()V

    .line 252
    iget v1, p0, Ljava/io/CharArrayReader;->markedPos:I

    iput v1, p0, Ljava/io/CharArrayReader;->pos:I

    .line 253
    monitor-exit v0

    .line 254
    return-void

    .line 253
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public whitelist test-api skip(J)J
    .registers 9
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_3
    invoke-direct {p0}, Ljava/io/CharArrayReader;->ensureOpen()V

    .line 192
    iget v1, p0, Ljava/io/CharArrayReader;->count:I

    iget v2, p0, Ljava/io/CharArrayReader;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 193
    .local v1, "avail":J
    cmp-long v3, p1, v1

    if-lez v3, :cond_11

    .line 194
    move-wide p1, v1

    .line 196
    :cond_11
    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-gez v5, :cond_19

    .line 197
    monitor-exit v0

    return-wide v3

    .line 199
    :cond_19
    iget v3, p0, Ljava/io/CharArrayReader;->pos:I

    int-to-long v3, v3

    add-long/2addr v3, p1

    long-to-int v3, v3

    iput v3, p0, Ljava/io/CharArrayReader;->pos:I

    .line 200
    monitor-exit v0

    return-wide p1

    .line 201
    .end local v1    # "avail":J
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method
