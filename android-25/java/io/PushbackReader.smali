.class public Ljava/io/PushbackReader;
.super Ljava/io/FilterReader;
.source "PushbackReader.java"


# instance fields
.field private buf:[C

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;

    #@0
    .prologue
    .line 67
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;I)V

    #@4
    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 2
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "size"    # I

    #@0
    .prologue
    .line 53
    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    #@3
    .line 54
    if-gtz p2, :cond_0

    #@5
    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "size <= 0"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 57
    :cond_0
    new-array v0, p2, [C

    #@10
    iput-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    #@12
    .line 58
    iput p2, p0, Ljava/io/PushbackReader;->pos:I

    #@14
    .line 52
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
    .line 72
    iget-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    #@2
    if-nez v0, :cond_0

    #@4
    .line 73
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Stream closed"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 248
    invoke-super {p0}, Ljava/io/FilterReader;->close()V

    #@3
    .line 249
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    #@6
    .line 247
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
    .line 218
    new-instance v0, Ljava/io/IOException;

    #@2
    const-string/jumbo v1, "mark/reset not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public markSupported()Z
    .locals 1

    #@0
    .prologue
    .line 236
    const/4 v0, 0x0

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
    .line 85
    iget-object v1, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 86
    :try_start_0
    invoke-direct {p0}, Ljava/io/PushbackReader;->ensureOpen()V

    #@6
    .line 87
    iget v0, p0, Ljava/io/PushbackReader;->pos:I

    #@8
    iget-object v2, p0, Ljava/io/PushbackReader;->buf:[C

    #@a
    array-length v2, v2

    #@b
    if-ge v0, v2, :cond_0

    #@d
    .line 88
    iget-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    #@f
    iget v2, p0, Ljava/io/PushbackReader;->pos:I

    #@11
    add-int/lit8 v3, v2, 0x1

    #@13
    iput v3, p0, Ljava/io/PushbackReader;->pos:I

    #@15
    aget-char v0, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v1

    #@18
    return v0

    #@19
    .line 90
    :cond_0
    :try_start_1
    invoke-super {p0}, Ljava/io/FilterReader;->read()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    move-result v0

    #@1d
    monitor-exit v1

    #@1e
    return v0

    #@1f
    .line 85
    :catchall_0
    move-exception v0

    #@20
    monitor-exit v1

    #@21
    throw v0
.end method

.method public read([CII)I
    .locals 6
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 107
    iget-object v3, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    #@4
    monitor-enter v3

    #@5
    .line 108
    :try_start_0
    invoke-direct {p0}, Ljava/io/PushbackReader;->ensureOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .line 110
    if-gtz p3, :cond_3

    #@a
    .line 111
    if-gez p3, :cond_0

    #@c
    .line 112
    :try_start_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@e
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@11
    throw v2
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    .line 135
    :catch_0
    move-exception v1

    #@13
    .line 136
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_2
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@15
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@18
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@19
    .line 107
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v2

    #@1a
    monitor-exit v3

    #@1b
    throw v2

    #@1c
    .line 113
    :cond_0
    if-ltz p2, :cond_1

    #@1e
    :try_start_3
    array-length v2, p1

    #@1f
    if-le p2, v2, :cond_2

    #@21
    .line 114
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@23
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@26
    throw v2
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@27
    :cond_2
    monitor-exit v3

    #@28
    .line 116
    return v4

    #@29
    .line 118
    :cond_3
    :try_start_4
    iget-object v4, p0, Ljava/io/PushbackReader;->buf:[C

    #@2b
    array-length v4, v4

    #@2c
    iget v5, p0, Ljava/io/PushbackReader;->pos:I

    #@2e
    sub-int v0, v4, v5

    #@30
    .line 119
    .local v0, "avail":I
    if-lez v0, :cond_5

    #@32
    .line 120
    if-ge p3, v0, :cond_4

    #@34
    .line 121
    move v0, p3

    #@35
    .line 122
    :cond_4
    iget-object v4, p0, Ljava/io/PushbackReader;->buf:[C

    #@37
    iget v5, p0, Ljava/io/PushbackReader;->pos:I

    #@39
    invoke-static {v4, v5, p1, p2, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@3c
    .line 123
    iget v4, p0, Ljava/io/PushbackReader;->pos:I

    #@3e
    add-int/2addr v4, v0

    #@3f
    iput v4, p0, Ljava/io/PushbackReader;->pos:I

    #@41
    .line 124
    add-int/2addr p2, v0

    #@42
    .line 125
    sub-int/2addr p3, v0

    #@43
    .line 127
    :cond_5
    if-lez p3, :cond_8

    #@45
    .line 128
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterReader;->read([CII)I
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@48
    move-result p3

    #@49
    .line 129
    if-ne p3, v2, :cond_7

    #@4b
    .line 130
    if-nez v0, :cond_6

    #@4d
    move v0, v2

    #@4e
    .end local v0    # "avail":I
    :cond_6
    monitor-exit v3

    #@4f
    return v0

    #@50
    .line 132
    .restart local v0    # "avail":I
    :cond_7
    add-int v2, v0, p3

    #@52
    monitor-exit v3

    #@53
    return v2

    #@54
    :cond_8
    monitor-exit v3

    #@55
    .line 134
    return v0
.end method

.method public ready()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 205
    iget-object v1, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 206
    :try_start_0
    invoke-direct {p0}, Ljava/io/PushbackReader;->ensureOpen()V

    #@6
    .line 207
    iget v0, p0, Ljava/io/PushbackReader;->pos:I

    #@8
    iget-object v2, p0, Ljava/io/PushbackReader;->buf:[C

    #@a
    array-length v2, v2

    #@b
    if-lt v0, v2, :cond_0

    #@d
    invoke-super {p0}, Ljava/io/FilterReader;->ready()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v0

    #@11
    :goto_0
    monitor-exit v1

    #@12
    return v0

    #@13
    :cond_0
    const/4 v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 205
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
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
    .line 228
    new-instance v0, Ljava/io/IOException;

    #@2
    const-string/jumbo v1, "mark/reset not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@8
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
    .line 264
    const-wide/16 v2, 0x0

    #@2
    cmp-long v1, p1, v2

    #@4
    if-gez v1, :cond_0

    #@6
    .line 265
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "skip value is negative"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 266
    :cond_0
    iget-object v2, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    #@11
    monitor-enter v2

    #@12
    .line 267
    :try_start_0
    invoke-direct {p0}, Ljava/io/PushbackReader;->ensureOpen()V

    #@15
    .line 268
    iget-object v1, p0, Ljava/io/PushbackReader;->buf:[C

    #@17
    array-length v1, v1

    #@18
    iget v3, p0, Ljava/io/PushbackReader;->pos:I

    #@1a
    sub-int v0, v1, v3

    #@1c
    .line 269
    .local v0, "avail":I
    if-lez v0, :cond_2

    #@1e
    .line 270
    int-to-long v4, v0

    #@1f
    cmp-long v1, p1, v4

    #@21
    if-gtz v1, :cond_1

    #@23
    .line 271
    iget v1, p0, Ljava/io/PushbackReader;->pos:I

    #@25
    int-to-long v4, v1

    #@26
    add-long/2addr v4, p1

    #@27
    long-to-int v1, v4

    #@28
    iput v1, p0, Ljava/io/PushbackReader;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    monitor-exit v2

    #@2b
    .line 272
    return-wide p1

    #@2c
    .line 274
    :cond_1
    :try_start_1
    iget-object v1, p0, Ljava/io/PushbackReader;->buf:[C

    #@2e
    array-length v1, v1

    #@2f
    iput v1, p0, Ljava/io/PushbackReader;->pos:I

    #@31
    .line 275
    int-to-long v4, v0

    #@32
    sub-long/2addr p1, v4

    #@33
    .line 278
    :cond_2
    int-to-long v4, v0

    #@34
    invoke-super {p0, p1, p2}, Ljava/io/FilterReader;->skip(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    move-result-wide v6

    #@38
    add-long/2addr v4, v6

    #@39
    monitor-exit v2

    #@3a
    return-wide v4

    #@3b
    .line 266
    .end local v0    # "avail":I
    :catchall_0
    move-exception v1

    #@3c
    monitor-exit v2

    #@3d
    throw v1
.end method

.method public unread(I)V
    .locals 4
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 152
    iget-object v1, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 153
    :try_start_0
    invoke-direct {p0}, Ljava/io/PushbackReader;->ensureOpen()V

    #@6
    .line 154
    iget v0, p0, Ljava/io/PushbackReader;->pos:I

    #@8
    if-nez v0, :cond_0

    #@a
    .line 155
    new-instance v0, Ljava/io/IOException;

    #@c
    const-string/jumbo v2, "Pushback buffer overflow"

    #@f
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 152
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0

    #@16
    .line 156
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    #@18
    iget v2, p0, Ljava/io/PushbackReader;->pos:I

    #@1a
    add-int/lit8 v2, v2, -0x1

    #@1c
    iput v2, p0, Ljava/io/PushbackReader;->pos:I

    #@1e
    int-to-char v3, p1

    #@1f
    aput-char v3, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    monitor-exit v1

    #@22
    .line 151
    return-void
.end method

.method public unread([C)V
    .locals 2
    .param p1, "cbuf"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 196
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/PushbackReader;->unread([CII)V

    #@5
    .line 195
    return-void
.end method

.method public unread([CII)V
    .locals 3
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 175
    iget-object v1, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 176
    :try_start_0
    invoke-direct {p0}, Ljava/io/PushbackReader;->ensureOpen()V

    #@6
    .line 177
    iget v0, p0, Ljava/io/PushbackReader;->pos:I

    #@8
    if-le p3, v0, :cond_0

    #@a
    .line 178
    new-instance v0, Ljava/io/IOException;

    #@c
    const-string/jumbo v2, "Pushback buffer overflow"

    #@f
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 175
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0

    #@16
    .line 179
    :cond_0
    :try_start_1
    iget v0, p0, Ljava/io/PushbackReader;->pos:I

    #@18
    sub-int/2addr v0, p3

    #@19
    iput v0, p0, Ljava/io/PushbackReader;->pos:I

    #@1b
    .line 180
    iget-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    #@1d
    iget v2, p0, Ljava/io/PushbackReader;->pos:I

    #@1f
    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy([CI[CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    monitor-exit v1

    #@23
    .line 174
    return-void
.end method
