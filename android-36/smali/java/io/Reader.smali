.class public abstract Ljava/io/Reader;
.super Ljava/lang/Object;
.source "Reader.java"

# interfaces
.implements Ljava/lang/Readable;
.implements Ljava/io/Closeable;


# static fields
.field private static final blacklist TRANSFER_BUFFER_SIZE:I = 0x2000

.field private static final greylist-max-o maxSkipBufferSize:I = 0x2000


# instance fields
.field protected whitelist test-api lock:Ljava/lang/Object;

.field private greylist-max-o skipBuffer:[C


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 2

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/Reader;->skipBuffer:[C

    .line 156
    iput-object p0, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    .line 157
    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "lock"    # Ljava/lang/Object;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/Reader;->skipBuffer:[C

    .line 166
    if-eqz p1, :cond_b

    .line 169
    iput-object p1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    .line 170
    return-void

    .line 167
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static whitelist test-api nullReader()Ljava/io/Reader;
    .registers 1

    .line 81
    new-instance v0, Ljava/io/Reader$1;

    invoke-direct {v0}, Ljava/io/Reader$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract whitelist test-api close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist test-api mark(I)V
    .registers 4
    .param p1, "readAheadLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark() not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api markSupported()Z
    .registers 2

    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    const/4 v0, 0x1

    new-array v1, v0, [C

    .line 210
    .local v1, "cb":[C
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/Reader;->read([CII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_c

    .line 211
    return v3

    .line 213
    :cond_c
    aget-char v0, v1, v2

    return v0
.end method

.method public whitelist test-api read(Ljava/nio/CharBuffer;)I
    .registers 6
    .param p1, "target"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    .line 188
    .local v0, "len":I
    new-array v1, v0, [C

    .line 189
    .local v1, "cbuf":[C
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/Reader;->read([CII)I

    move-result v3

    .line 190
    .local v3, "n":I
    if-lez v3, :cond_10

    .line 191
    invoke-virtual {p1, v1, v2, v3}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    .line 192
    :cond_10
    return v3
.end method

.method public whitelist test-api read([C)I
    .registers 4
    .param p1, "cbuf"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/Reader;->read([CII)I

    move-result v0

    return v0
.end method

.method public abstract whitelist test-api read([CII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist test-api ready()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    new-instance v0, Ljava/io/IOException;

    const-string v1, "reset() not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api skip(J)J
    .registers 12
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3d

    .line 271
    const-wide/16 v2, 0x2000

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 272
    .local v2, "nn":I
    iget-object v3, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 273
    :try_start_10
    iget-object v4, p0, Ljava/io/Reader;->skipBuffer:[C

    if-eqz v4, :cond_19

    iget-object v4, p0, Ljava/io/Reader;->skipBuffer:[C

    array-length v4, v4

    if-ge v4, v2, :cond_1d

    .line 274
    :cond_19
    new-array v4, v2, [C

    iput-object v4, p0, Ljava/io/Reader;->skipBuffer:[C

    .line 275
    :cond_1d
    move-wide v4, p1

    .line 276
    .local v4, "r":J
    :goto_1e
    cmp-long v6, v4, v0

    if-lez v6, :cond_36

    .line 277
    iget-object v6, p0, Ljava/io/Reader;->skipBuffer:[C

    int-to-long v7, v2

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v8, v7}, Ljava/io/Reader;->read([CII)I

    move-result v6

    .line 278
    .local v6, "nc":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_33

    .line 279
    goto :goto_36

    .line 280
    :cond_33
    int-to-long v7, v6

    sub-long/2addr v4, v7

    .line 281
    .end local v6    # "nc":I
    goto :goto_1e

    .line 282
    :cond_36
    :goto_36
    sub-long v0, p1, v4

    monitor-exit v3

    return-wide v0

    .line 283
    .end local v4    # "r":J
    :catchall_3a
    move-exception v0

    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_10 .. :try_end_3c} :catchall_3a

    throw v0

    .line 270
    .end local v2    # "nn":I
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "skip value is negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api transferTo(Ljava/io/Writer;)J
    .registers 9
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    const-string v0, "out"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 381
    const-wide/16 v0, 0x0

    .line 382
    .local v0, "transferred":J
    const/16 v2, 0x2000

    new-array v3, v2, [C

    .line 384
    .local v3, "buffer":[C
    :goto_b
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Ljava/io/Reader;->read([CII)I

    move-result v5

    move v6, v5

    .local v6, "nRead":I
    if-ltz v5, :cond_19

    .line 385
    invoke-virtual {p1, v3, v4, v6}, Ljava/io/Writer;->write([CII)V

    .line 386
    int-to-long v4, v6

    add-long/2addr v0, v4

    goto :goto_b

    .line 388
    :cond_19
    return-wide v0
.end method
