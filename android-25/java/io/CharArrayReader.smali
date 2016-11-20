.class public Ljava/io/CharArrayReader;
.super Ljava/io/Reader;
.source "CharArrayReader.java"


# instance fields
.field protected buf:[C

.field protected count:I

.field protected markedPos:I

.field protected pos:I


# direct methods
.method public constructor <init>([C)V
    .locals 1
    .param p1, "buf"    # [C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 55
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    #@4
    .line 43
    iput v0, p0, Ljava/io/CharArrayReader;->markedPos:I

    #@6
    .line 56
    iput-object p1, p0, Ljava/io/CharArrayReader;->buf:[C

    #@8
    .line 57
    iput v0, p0, Ljava/io/CharArrayReader;->pos:I

    #@a
    .line 58
    array-length v0, p1

    #@b
    iput v0, p0, Ljava/io/CharArrayReader;->count:I

    #@d
    .line 55
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 78
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    #@4
    .line 43
    iput v0, p0, Ljava/io/CharArrayReader;->markedPos:I

    #@6
    .line 79
    if-ltz p2, :cond_0

    #@8
    array-length v0, p1

    #@9
    if-le p2, v0, :cond_1

    #@b
    .line 81
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@10
    throw v0

    #@11
    .line 79
    :cond_1
    if-ltz p3, :cond_0

    #@13
    .line 80
    add-int v0, p2, p3

    #@15
    if-ltz v0, :cond_0

    #@17
    .line 83
    iput-object p1, p0, Ljava/io/CharArrayReader;->buf:[C

    #@19
    .line 84
    iput p2, p0, Ljava/io/CharArrayReader;->pos:I

    #@1b
    .line 85
    add-int v0, p2, p3

    #@1d
    array-length v1, p1

    #@1e
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@21
    move-result v0

    #@22
    iput v0, p0, Ljava/io/CharArrayReader;->count:I

    #@24
    .line 86
    iput p2, p0, Ljava/io/CharArrayReader;->markedPos:I

    #@26
    .line 78
    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Ljava/io/CharArrayReader;->buf:[C

    #@2
    if-nez v0, :cond_0

    #@4
    .line 92
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Stream closed"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    #@0
    .prologue
    .line 230
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Ljava/io/CharArrayReader;->buf:[C

    #@3
    .line 229
    return-void
.end method

.method public mark(I)V
    .locals 2
    .param p1, "readAheadLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 204
    iget-object v1, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 205
    :try_start_0
    invoke-direct {p0}, Ljava/io/CharArrayReader;->ensureOpen()V

    #@6
    .line 206
    iget v0, p0, Ljava/io/CharArrayReader;->pos:I

    #@8
    iput v0, p0, Ljava/io/CharArrayReader;->markedPos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v1

    #@b
    .line 203
    return-void

    #@c
    .line 204
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method public markSupported()Z
    .locals 1

    #@0
    .prologue
    .line 188
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 101
    iget-object v1, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 102
    :try_start_0
    invoke-direct {p0}, Ljava/io/CharArrayReader;->ensureOpen()V

    #@6
    .line 103
    iget v0, p0, Ljava/io/CharArrayReader;->pos:I

    #@8
    iget v2, p0, Ljava/io/CharArrayReader;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    if-lt v0, v2, :cond_0

    #@c
    .line 104
    const/4 v0, -0x1

    #@d
    monitor-exit v1

    #@e
    return v0

    #@f
    .line 106
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/io/CharArrayReader;->buf:[C

    #@11
    iget v2, p0, Ljava/io/CharArrayReader;->pos:I

    #@13
    add-int/lit8 v3, v2, 0x1

    #@15
    iput v3, p0, Ljava/io/CharArrayReader;->pos:I

    #@17
    aget-char v0, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    monitor-exit v1

    #@1a
    return v0

    #@1b
    .line 101
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method

.method public read([CII)I
    .locals 4
    .param p1, "b"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 121
    iget-object v1, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 122
    :try_start_0
    invoke-direct {p0}, Ljava/io/CharArrayReader;->ensureOpen()V

    #@7
    .line 123
    if-ltz p2, :cond_0

    #@9
    array-length v0, p1

    #@a
    if-le p2, v0, :cond_1

    #@c
    .line 125
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@e
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@11
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 121
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0

    #@15
    .line 123
    :cond_1
    if-ltz p3, :cond_0

    #@17
    .line 124
    add-int v0, p2, p3

    #@19
    :try_start_1
    array-length v2, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    if-gt v0, v2, :cond_0

    #@1c
    add-int v0, p2, p3

    #@1e
    if-ltz v0, :cond_0

    #@20
    .line 126
    if-nez p3, :cond_2

    #@22
    monitor-exit v1

    #@23
    .line 127
    return v3

    #@24
    .line 130
    :cond_2
    :try_start_2
    iget v0, p0, Ljava/io/CharArrayReader;->pos:I

    #@26
    iget v2, p0, Ljava/io/CharArrayReader;->count:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@28
    if-lt v0, v2, :cond_3

    #@2a
    .line 131
    const/4 v0, -0x1

    #@2b
    monitor-exit v1

    #@2c
    return v0

    #@2d
    .line 133
    :cond_3
    :try_start_3
    iget v0, p0, Ljava/io/CharArrayReader;->pos:I

    #@2f
    add-int/2addr v0, p3

    #@30
    iget v2, p0, Ljava/io/CharArrayReader;->count:I

    #@32
    if-le v0, v2, :cond_4

    #@34
    .line 134
    iget v0, p0, Ljava/io/CharArrayReader;->count:I

    #@36
    iget v2, p0, Ljava/io/CharArrayReader;->pos:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@38
    sub-int p3, v0, v2

    #@3a
    .line 136
    :cond_4
    if-gtz p3, :cond_5

    #@3c
    monitor-exit v1

    #@3d
    .line 137
    return v3

    #@3e
    .line 139
    :cond_5
    :try_start_4
    iget-object v0, p0, Ljava/io/CharArrayReader;->buf:[C

    #@40
    iget v2, p0, Ljava/io/CharArrayReader;->pos:I

    #@42
    invoke-static {v0, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@45
    .line 140
    iget v0, p0, Ljava/io/CharArrayReader;->pos:I

    #@47
    add-int/2addr v0, p3

    #@48
    iput v0, p0, Ljava/io/CharArrayReader;->pos:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@4a
    monitor-exit v1

    #@4b
    .line 141
    return p3
.end method

.method public ready()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 178
    iget-object v1, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 179
    :try_start_0
    invoke-direct {p0}, Ljava/io/CharArrayReader;->ensureOpen()V

    #@7
    .line 180
    iget v2, p0, Ljava/io/CharArrayReader;->count:I

    #@9
    iget v3, p0, Ljava/io/CharArrayReader;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    sub-int/2addr v2, v3

    #@c
    if-lez v2, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :cond_0
    monitor-exit v1

    #@10
    return v0

    #@11
    .line 178
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 217
    iget-object v1, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 218
    :try_start_0
    invoke-direct {p0}, Ljava/io/CharArrayReader;->ensureOpen()V

    #@6
    .line 219
    iget v0, p0, Ljava/io/CharArrayReader;->markedPos:I

    #@8
    iput v0, p0, Ljava/io/CharArrayReader;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v1

    #@b
    .line 216
    return-void

    #@c
    .line 217
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method public skip(J)J
    .locals 9
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 158
    iget-object v1, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 159
    :try_start_0
    invoke-direct {p0}, Ljava/io/CharArrayReader;->ensureOpen()V

    #@8
    .line 160
    iget v0, p0, Ljava/io/CharArrayReader;->pos:I

    #@a
    int-to-long v2, v0

    #@b
    add-long/2addr v2, p1

    #@c
    iget v0, p0, Ljava/io/CharArrayReader;->count:I

    #@e
    int-to-long v4, v0

    #@f
    cmp-long v0, v2, v4

    #@11
    if-lez v0, :cond_0

    #@13
    .line 161
    iget v0, p0, Ljava/io/CharArrayReader;->count:I

    #@15
    iget v2, p0, Ljava/io/CharArrayReader;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    sub-int/2addr v0, v2

    #@18
    int-to-long p1, v0

    #@19
    .line 163
    :cond_0
    cmp-long v0, p1, v6

    #@1b
    if-gez v0, :cond_1

    #@1d
    monitor-exit v1

    #@1e
    .line 164
    return-wide v6

    #@1f
    .line 166
    :cond_1
    :try_start_1
    iget v0, p0, Ljava/io/CharArrayReader;->pos:I

    #@21
    int-to-long v2, v0

    #@22
    add-long/2addr v2, p1

    #@23
    long-to-int v0, v2

    #@24
    iput v0, p0, Ljava/io/CharArrayReader;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    monitor-exit v1

    #@27
    .line 167
    return-wide p1

    #@28
    .line 158
    :catchall_0
    move-exception v0

    #@29
    monitor-exit v1

    #@2a
    throw v0
.end method
