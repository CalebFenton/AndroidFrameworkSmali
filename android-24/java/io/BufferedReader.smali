.class public Ljava/io/BufferedReader;
.super Ljava/io/Reader;
.source "BufferedReader.java"


# static fields
.field private static final INVALIDATED:I = -0x2

.field private static final UNMARKED:I = -0x1

.field private static defaultCharBufferSize:I

.field private static defaultExpectedLineLength:I


# instance fields
.field private cb:[C

.field private in:Ljava/io/Reader;

.field private markedChar:I

.field private markedSkipLF:Z

.field private nChars:I

.field private nextChar:I

.field private readAheadLimit:I

.field private skipLF:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 89
    const/16 v0, 0x2000

    #@2
    sput v0, Ljava/io/BufferedReader;->defaultCharBufferSize:I

    #@4
    .line 90
    const/16 v0, 0x50

    #@6
    sput v0, Ljava/io/BufferedReader;->defaultExpectedLineLength:I

    #@8
    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;

    #@0
    .prologue
    .line 117
    sget v0, Ljava/io/BufferedReader;->defaultCharBufferSize:I

    #@2
    invoke-direct {p0, p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    #@5
    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 2
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "sz"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 102
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    #@4
    .line 80
    const/4 v0, -0x1

    #@5
    iput v0, p0, Ljava/io/BufferedReader;->markedChar:I

    #@7
    .line 81
    iput v1, p0, Ljava/io/BufferedReader;->readAheadLimit:I

    #@9
    .line 84
    iput-boolean v1, p0, Ljava/io/BufferedReader;->skipLF:Z

    #@b
    .line 87
    iput-boolean v1, p0, Ljava/io/BufferedReader;->markedSkipLF:Z

    #@d
    .line 103
    if-gtz p2, :cond_0

    #@f
    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "Buffer size <= 0"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 105
    :cond_0
    iput-object p1, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    #@1a
    .line 106
    new-array v0, p2, [C

    #@1c
    iput-object v0, p0, Ljava/io/BufferedReader;->cb:[C

    #@1e
    .line 107
    iput v1, p0, Ljava/io/BufferedReader;->nChars:I

    #@20
    iput v1, p0, Ljava/io/BufferedReader;->nextChar:I

    #@22
    .line 101
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
    .line 122
    iget-object v0, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 123
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Stream closed"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 121
    :cond_0
    return-void
.end method

.method private fill()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 131
    iget v5, p0, Ljava/io/BufferedReader;->markedChar:I

    #@3
    const/4 v6, -0x1

    #@4
    if-gt v5, v6, :cond_2

    #@6
    .line 133
    const/4 v1, 0x0

    #@7
    .line 172
    .local v1, "dst":I
    :cond_0
    :goto_0
    iget-object v5, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    #@9
    iget-object v6, p0, Ljava/io/BufferedReader;->cb:[C

    #@b
    iget-object v7, p0, Ljava/io/BufferedReader;->cb:[C

    #@d
    array-length v7, v7

    #@e
    sub-int/2addr v7, v1

    #@f
    invoke-virtual {v5, v6, v1, v7}, Ljava/io/Reader;->read([CII)I

    #@12
    move-result v2

    #@13
    .line 173
    .local v2, "n":I
    if-eqz v2, :cond_0

    #@15
    .line 174
    if-lez v2, :cond_1

    #@17
    .line 175
    add-int v5, v1, v2

    #@19
    iput v5, p0, Ljava/io/BufferedReader;->nChars:I

    #@1b
    .line 176
    iput v1, p0, Ljava/io/BufferedReader;->nextChar:I

    #@1d
    .line 129
    :cond_1
    return-void

    #@1e
    .line 136
    .end local v1    # "dst":I
    .end local v2    # "n":I
    :cond_2
    iget v5, p0, Ljava/io/BufferedReader;->nextChar:I

    #@20
    iget v6, p0, Ljava/io/BufferedReader;->markedChar:I

    #@22
    sub-int v0, v5, v6

    #@24
    .line 137
    .local v0, "delta":I
    iget v5, p0, Ljava/io/BufferedReader;->readAheadLimit:I

    #@26
    if-lt v0, v5, :cond_3

    #@28
    .line 139
    const/4 v5, -0x2

    #@29
    iput v5, p0, Ljava/io/BufferedReader;->markedChar:I

    #@2b
    .line 140
    iput v8, p0, Ljava/io/BufferedReader;->readAheadLimit:I

    #@2d
    .line 141
    const/4 v1, 0x0

    #@2e
    .restart local v1    # "dst":I
    goto :goto_0

    #@2f
    .line 143
    .end local v1    # "dst":I
    :cond_3
    iget v5, p0, Ljava/io/BufferedReader;->readAheadLimit:I

    #@31
    iget-object v6, p0, Ljava/io/BufferedReader;->cb:[C

    #@33
    array-length v6, v6

    #@34
    if-gt v5, v6, :cond_4

    #@36
    .line 145
    iget-object v5, p0, Ljava/io/BufferedReader;->cb:[C

    #@38
    iget v6, p0, Ljava/io/BufferedReader;->markedChar:I

    #@3a
    iget-object v7, p0, Ljava/io/BufferedReader;->cb:[C

    #@3c
    invoke-static {v5, v6, v7, v8, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@3f
    .line 146
    iput v8, p0, Ljava/io/BufferedReader;->markedChar:I

    #@41
    .line 147
    move v1, v0

    #@42
    .line 166
    .restart local v1    # "dst":I
    :goto_1
    iput v0, p0, Ljava/io/BufferedReader;->nChars:I

    #@44
    iput v0, p0, Ljava/io/BufferedReader;->nextChar:I

    #@46
    goto :goto_0

    #@47
    .line 156
    .end local v1    # "dst":I
    :cond_4
    iget-object v5, p0, Ljava/io/BufferedReader;->cb:[C

    #@49
    array-length v5, v5

    #@4a
    mul-int/lit8 v4, v5, 0x2

    #@4c
    .line 157
    .local v4, "nlength":I
    iget v5, p0, Ljava/io/BufferedReader;->readAheadLimit:I

    #@4e
    if-le v4, v5, :cond_5

    #@50
    .line 158
    iget v4, p0, Ljava/io/BufferedReader;->readAheadLimit:I

    #@52
    .line 160
    :cond_5
    new-array v3, v4, [C

    #@54
    .line 161
    .local v3, "ncb":[C
    iget-object v5, p0, Ljava/io/BufferedReader;->cb:[C

    #@56
    iget v6, p0, Ljava/io/BufferedReader;->markedChar:I

    #@58
    invoke-static {v5, v6, v3, v8, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@5b
    .line 162
    iput-object v3, p0, Ljava/io/BufferedReader;->cb:[C

    #@5d
    .line 163
    iput v8, p0, Ljava/io/BufferedReader;->markedChar:I

    #@5f
    .line 164
    move v1, v0

    #@60
    .restart local v1    # "dst":I
    goto :goto_1
.end method

.method private read1([CII)I
    .locals 4
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
    const/4 v3, -0x1

    #@1
    .line 214
    iget v1, p0, Ljava/io/BufferedReader;->nextChar:I

    #@3
    iget v2, p0, Ljava/io/BufferedReader;->nChars:I

    #@5
    if-lt v1, v2, :cond_1

    #@7
    .line 220
    iget-object v1, p0, Ljava/io/BufferedReader;->cb:[C

    #@9
    array-length v1, v1

    #@a
    if-lt p3, v1, :cond_0

    #@c
    iget v1, p0, Ljava/io/BufferedReader;->markedChar:I

    #@e
    if-gt v1, v3, :cond_0

    #@10
    iget-boolean v1, p0, Ljava/io/BufferedReader;->skipLF:Z

    #@12
    if-eqz v1, :cond_2

    #@14
    .line 223
    :cond_0
    invoke-direct {p0}, Ljava/io/BufferedReader;->fill()V

    #@17
    .line 225
    :cond_1
    iget v1, p0, Ljava/io/BufferedReader;->nextChar:I

    #@19
    iget v2, p0, Ljava/io/BufferedReader;->nChars:I

    #@1b
    if-lt v1, v2, :cond_3

    #@1d
    return v3

    #@1e
    .line 221
    :cond_2
    iget-object v1, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    #@20
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    #@23
    move-result v1

    #@24
    return v1

    #@25
    .line 226
    :cond_3
    iget-boolean v1, p0, Ljava/io/BufferedReader;->skipLF:Z

    #@27
    if-eqz v1, :cond_5

    #@29
    .line 227
    const/4 v1, 0x0

    #@2a
    iput-boolean v1, p0, Ljava/io/BufferedReader;->skipLF:Z

    #@2c
    .line 228
    iget-object v1, p0, Ljava/io/BufferedReader;->cb:[C

    #@2e
    iget v2, p0, Ljava/io/BufferedReader;->nextChar:I

    #@30
    aget-char v1, v1, v2

    #@32
    const/16 v2, 0xa

    #@34
    if-ne v1, v2, :cond_5

    #@36
    .line 229
    iget v1, p0, Ljava/io/BufferedReader;->nextChar:I

    #@38
    add-int/lit8 v1, v1, 0x1

    #@3a
    iput v1, p0, Ljava/io/BufferedReader;->nextChar:I

    #@3c
    .line 230
    iget v1, p0, Ljava/io/BufferedReader;->nextChar:I

    #@3e
    iget v2, p0, Ljava/io/BufferedReader;->nChars:I

    #@40
    if-lt v1, v2, :cond_4

    #@42
    .line 231
    invoke-direct {p0}, Ljava/io/BufferedReader;->fill()V

    #@45
    .line 232
    :cond_4
    iget v1, p0, Ljava/io/BufferedReader;->nextChar:I

    #@47
    iget v2, p0, Ljava/io/BufferedReader;->nChars:I

    #@49
    if-lt v1, v2, :cond_5

    #@4b
    .line 233
    return v3

    #@4c
    .line 236
    :cond_5
    iget v1, p0, Ljava/io/BufferedReader;->nChars:I

    #@4e
    iget v2, p0, Ljava/io/BufferedReader;->nextChar:I

    #@50
    sub-int/2addr v1, v2

    #@51
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    #@54
    move-result v0

    #@55
    .line 237
    .local v0, "n":I
    iget-object v1, p0, Ljava/io/BufferedReader;->cb:[C

    #@57
    iget v2, p0, Ljava/io/BufferedReader;->nextChar:I

    #@59
    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@5c
    .line 238
    iget v1, p0, Ljava/io/BufferedReader;->nextChar:I

    #@5e
    add-int/2addr v1, v0

    #@5f
    iput v1, p0, Ljava/io/BufferedReader;->nextChar:I

    #@61
    .line 239
    return v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 532
    iget-object v1, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 533
    :try_start_0
    iget-object v0, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v0, :cond_0

    #@7
    monitor-exit v1

    #@8
    .line 534
    return-void

    #@9
    .line 535
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    #@b
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    #@e
    .line 536
    const/4 v0, 0x0

    #@f
    iput-object v0, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    #@11
    .line 537
    const/4 v0, 0x0

    #@12
    iput-object v0, p0, Ljava/io/BufferedReader;->cb:[C
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    monitor-exit v1

    #@15
    .line 531
    return-void

    #@16
    .line 532
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method public lines()Ljava/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 570
    new-instance v0, Ljava/io/BufferedReader$1;

    #@2
    invoke-direct {v0, p0}, Ljava/io/BufferedReader$1;-><init>(Ljava/io/BufferedReader;)V

    #@5
    .line 599
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/16 v1, 0x110

    #@7
    .line 598
    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    #@a
    move-result-object v1

    #@b
    .line 599
    const/4 v2, 0x0

    #@c
    .line 598
    invoke-static {v1, v2}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    #@f
    move-result-object v1

    #@10
    return-object v1
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
    .line 502
    if-gez p1, :cond_0

    #@2
    .line 503
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Read-ahead limit < 0"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 505
    :cond_0
    iget-object v1, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    #@d
    monitor-enter v1

    #@e
    .line 506
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedReader;->ensureOpen()V

    #@11
    .line 507
    iput p1, p0, Ljava/io/BufferedReader;->readAheadLimit:I

    #@13
    .line 508
    iget v0, p0, Ljava/io/BufferedReader;->nextChar:I

    #@15
    iput v0, p0, Ljava/io/BufferedReader;->markedChar:I

    #@17
    .line 509
    iget-boolean v0, p0, Ljava/io/BufferedReader;->skipLF:Z

    #@19
    iput-boolean v0, p0, Ljava/io/BufferedReader;->markedSkipLF:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit v1

    #@1c
    .line 501
    return-void

    #@1d
    .line 505
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

.method public markSupported()Z
    .locals 1

    #@0
    .prologue
    .line 482
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
    .line 189
    iget-object v1, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 190
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedReader;->ensureOpen()V

    #@6
    .line 192
    :goto_0
    iget v0, p0, Ljava/io/BufferedReader;->nextChar:I

    #@8
    iget v2, p0, Ljava/io/BufferedReader;->nChars:I

    #@a
    if-lt v0, v2, :cond_0

    #@c
    .line 193
    invoke-direct {p0}, Ljava/io/BufferedReader;->fill()V

    #@f
    .line 194
    iget v0, p0, Ljava/io/BufferedReader;->nextChar:I

    #@11
    iget v2, p0, Ljava/io/BufferedReader;->nChars:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    if-lt v0, v2, :cond_0

    #@15
    .line 195
    const/4 v0, -0x1

    #@16
    monitor-exit v1

    #@17
    return v0

    #@18
    .line 197
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Ljava/io/BufferedReader;->skipLF:Z

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 198
    const/4 v0, 0x0

    #@1d
    iput-boolean v0, p0, Ljava/io/BufferedReader;->skipLF:Z

    #@1f
    .line 199
    iget-object v0, p0, Ljava/io/BufferedReader;->cb:[C

    #@21
    iget v2, p0, Ljava/io/BufferedReader;->nextChar:I

    #@23
    aget-char v0, v0, v2

    #@25
    const/16 v2, 0xa

    #@27
    if-ne v0, v2, :cond_1

    #@29
    .line 200
    iget v0, p0, Ljava/io/BufferedReader;->nextChar:I

    #@2b
    add-int/lit8 v0, v0, 0x1

    #@2d
    iput v0, p0, Ljava/io/BufferedReader;->nextChar:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    goto :goto_0

    #@30
    .line 189
    :catchall_0
    move-exception v0

    #@31
    monitor-exit v1

    #@32
    throw v0

    #@33
    .line 204
    :cond_1
    :try_start_2
    iget-object v0, p0, Ljava/io/BufferedReader;->cb:[C

    #@35
    iget v2, p0, Ljava/io/BufferedReader;->nextChar:I

    #@37
    add-int/lit8 v3, v2, 0x1

    #@39
    iput v3, p0, Ljava/io/BufferedReader;->nextChar:I

    #@3b
    aget-char v0, v0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3d
    monitor-exit v1

    #@3e
    return v0
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
    const/4 v5, 0x0

    #@1
    .line 288
    iget-object v3, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    #@3
    monitor-enter v3

    #@4
    .line 289
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedReader;->ensureOpen()V

    #@7
    .line 290
    if-ltz p2, :cond_0

    #@9
    array-length v2, p1

    #@a
    if-le p2, v2, :cond_1

    #@c
    .line 292
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@e
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@11
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 288
    :catchall_0
    move-exception v2

    #@13
    monitor-exit v3

    #@14
    throw v2

    #@15
    .line 290
    :cond_1
    if-ltz p3, :cond_0

    #@17
    .line 291
    add-int v2, p2, p3

    #@19
    :try_start_1
    array-length v4, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    if-gt v2, v4, :cond_0

    #@1c
    add-int v2, p2, p3

    #@1e
    if-ltz v2, :cond_0

    #@20
    .line 293
    if-nez p3, :cond_2

    #@22
    monitor-exit v3

    #@23
    .line 294
    return v5

    #@24
    .line 297
    :cond_2
    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Ljava/io/BufferedReader;->read1([CII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@27
    move-result v0

    #@28
    .line 298
    .local v0, "n":I
    if-gtz v0, :cond_4

    #@2a
    monitor-exit v3

    #@2b
    return v0

    #@2c
    .line 302
    .local v1, "n1":I
    :cond_3
    add-int/2addr v0, v1

    #@2d
    .line 299
    .end local v1    # "n1":I
    :cond_4
    if-ge v0, p3, :cond_5

    #@2f
    :try_start_3
    iget-object v2, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    #@31
    invoke-virtual {v2}, Ljava/io/Reader;->ready()Z

    #@34
    move-result v2

    #@35
    if-eqz v2, :cond_5

    #@37
    .line 300
    add-int v2, p2, v0

    #@39
    sub-int v4, p3, v0

    #@3b
    invoke-direct {p0, p1, v2, v4}, Ljava/io/BufferedReader;->read1([CII)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3e
    move-result v1

    #@3f
    .line 301
    .restart local v1    # "n1":I
    if-gtz v1, :cond_3

    #@41
    .end local v1    # "n1":I
    :cond_5
    monitor-exit v3

    #@42
    .line 304
    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 400
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Ljava/io/BufferedReader;->readLine(Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method readLine(Z)Ljava/lang/String;
    .locals 14
    .param p1, "ignoreLF"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v13, 0xd

    #@2
    const/16 v12, 0xa

    #@4
    const/4 v11, 0x0

    #@5
    .line 324
    const/4 v4, 0x0

    #@6
    .line 327
    .local v4, "s":Ljava/lang/StringBuffer;
    iget-object v9, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    #@8
    monitor-enter v9

    #@9
    .line 328
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedReader;->ensureOpen()V

    #@c
    .line 329
    if-nez p1, :cond_1

    #@e
    iget-boolean v3, p0, Ljava/io/BufferedReader;->skipLF:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .local v3, "omitLF":Z
    move-object v5, v4

    #@11
    .line 334
    .end local v3    # "omitLF":Z
    .end local v4    # "s":Ljava/lang/StringBuffer;
    .local v5, "s":Ljava/lang/StringBuffer;
    :goto_0
    :try_start_1
    iget v8, p0, Ljava/io/BufferedReader;->nextChar:I

    #@13
    iget v10, p0, Ljava/io/BufferedReader;->nChars:I

    #@15
    if-lt v8, v10, :cond_0

    #@17
    .line 335
    invoke-direct {p0}, Ljava/io/BufferedReader;->fill()V

    #@1a
    .line 336
    :cond_0
    iget v8, p0, Ljava/io/BufferedReader;->nextChar:I

    #@1c
    iget v10, p0, Ljava/io/BufferedReader;->nChars:I

    #@1e
    if-lt v8, v10, :cond_3

    #@20
    .line 337
    if-eqz v5, :cond_2

    #@22
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    #@25
    move-result v8

    #@26
    if-lez v8, :cond_2

    #@28
    .line 338
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2b
    move-result-object v8

    #@2c
    monitor-exit v9

    #@2d
    return-object v8

    #@2e
    .line 329
    .end local v5    # "s":Ljava/lang/StringBuffer;
    .restart local v4    # "s":Ljava/lang/StringBuffer;
    :cond_1
    const/4 v3, 0x1

    #@2f
    .local v3, "omitLF":Z
    move-object v5, v4

    #@30
    .restart local v5    # "s":Ljava/lang/StringBuffer;
    goto :goto_0

    #@31
    .end local v3    # "omitLF":Z
    .end local v4    # "s":Ljava/lang/StringBuffer;
    :cond_2
    monitor-exit v9

    #@32
    .line 340
    return-object v11

    #@33
    .line 342
    :cond_3
    const/4 v1, 0x0

    #@34
    .line 343
    .local v1, "eol":Z
    const/4 v0, 0x0

    #@35
    .line 347
    .local v0, "c":C
    if-eqz v3, :cond_4

    #@37
    :try_start_2
    iget-object v8, p0, Ljava/io/BufferedReader;->cb:[C

    #@39
    iget v10, p0, Ljava/io/BufferedReader;->nextChar:I

    #@3b
    aget-char v8, v8, v10

    #@3d
    if-ne v8, v12, :cond_4

    #@3f
    .line 348
    iget v8, p0, Ljava/io/BufferedReader;->nextChar:I

    #@41
    add-int/lit8 v8, v8, 0x1

    #@43
    iput v8, p0, Ljava/io/BufferedReader;->nextChar:I

    #@45
    .line 349
    :cond_4
    const/4 v8, 0x0

    #@46
    iput-boolean v8, p0, Ljava/io/BufferedReader;->skipLF:Z

    #@48
    .line 350
    const/4 v3, 0x0

    #@49
    .line 353
    .restart local v3    # "omitLF":Z
    iget v2, p0, Ljava/io/BufferedReader;->nextChar:I

    #@4b
    .end local v0    # "c":C
    .local v2, "i":I
    :goto_1
    iget v8, p0, Ljava/io/BufferedReader;->nChars:I

    #@4d
    if-ge v2, v8, :cond_6

    #@4f
    .line 354
    iget-object v8, p0, Ljava/io/BufferedReader;->cb:[C

    #@51
    aget-char v0, v8, v2

    #@53
    .line 355
    .local v0, "c":C
    if-eq v0, v12, :cond_5

    #@55
    if-ne v0, v13, :cond_8

    #@57
    .line 356
    :cond_5
    const/4 v1, 0x1

    #@58
    .line 361
    .end local v0    # "c":C
    :cond_6
    iget v6, p0, Ljava/io/BufferedReader;->nextChar:I

    #@5a
    .line 362
    .local v6, "startChar":I
    iput v2, p0, Ljava/io/BufferedReader;->nextChar:I

    #@5c
    .line 364
    if-eqz v1, :cond_a

    #@5e
    .line 366
    if-nez v5, :cond_9

    #@60
    .line 367
    new-instance v7, Ljava/lang/String;

    #@62
    iget-object v8, p0, Ljava/io/BufferedReader;->cb:[C

    #@64
    sub-int v10, v2, v6

    #@66
    invoke-direct {v7, v8, v6, v10}, Ljava/lang/String;-><init>([CII)V

    #@69
    .line 372
    .local v7, "str":Ljava/lang/String;
    :goto_2
    iget v8, p0, Ljava/io/BufferedReader;->nextChar:I

    #@6b
    add-int/lit8 v8, v8, 0x1

    #@6d
    iput v8, p0, Ljava/io/BufferedReader;->nextChar:I

    #@6f
    .line 373
    if-ne v0, v13, :cond_7

    #@71
    .line 374
    const/4 v8, 0x1

    #@72
    iput-boolean v8, p0, Ljava/io/BufferedReader;->skipLF:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@74
    :cond_7
    monitor-exit v9

    #@75
    .line 376
    return-object v7

    #@76
    .line 353
    .end local v6    # "startChar":I
    .end local v7    # "str":Ljava/lang/String;
    .restart local v0    # "c":C
    :cond_8
    add-int/lit8 v2, v2, 0x1

    #@78
    goto :goto_1

    #@79
    .line 369
    .end local v0    # "c":C
    .restart local v6    # "startChar":I
    :cond_9
    :try_start_3
    iget-object v8, p0, Ljava/io/BufferedReader;->cb:[C

    #@7b
    sub-int v10, v2, v6

    #@7d
    invoke-virtual {v5, v8, v6, v10}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    #@80
    .line 370
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@83
    move-result-object v7

    #@84
    .restart local v7    # "str":Ljava/lang/String;
    goto :goto_2

    #@85
    .line 379
    .end local v7    # "str":Ljava/lang/String;
    :cond_a
    if-nez v5, :cond_b

    #@87
    .line 380
    new-instance v4, Ljava/lang/StringBuffer;

    #@89
    sget v8, Ljava/io/BufferedReader;->defaultExpectedLineLength:I

    #@8b
    invoke-direct {v4, v8}, Ljava/lang/StringBuffer;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@8e
    .line 381
    .end local v5    # "s":Ljava/lang/StringBuffer;
    .local v4, "s":Ljava/lang/StringBuffer;
    :goto_3
    :try_start_4
    iget-object v8, p0, Ljava/io/BufferedReader;->cb:[C

    #@90
    sub-int v10, v2, v6

    #@92
    invoke-virtual {v4, v8, v6, v10}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@95
    move-object v5, v4

    #@96
    .end local v4    # "s":Ljava/lang/StringBuffer;
    .restart local v5    # "s":Ljava/lang/StringBuffer;
    goto/16 :goto_0

    #@98
    .line 327
    .end local v1    # "eol":Z
    .end local v2    # "i":I
    .end local v3    # "omitLF":Z
    .end local v5    # "s":Ljava/lang/StringBuffer;
    .end local v6    # "startChar":I
    :catchall_0
    move-exception v8

    #@99
    :goto_4
    monitor-exit v9

    #@9a
    throw v8

    #@9b
    .restart local v5    # "s":Ljava/lang/StringBuffer;
    :catchall_1
    move-exception v8

    #@9c
    move-object v4, v5

    #@9d
    .end local v5    # "s":Ljava/lang/StringBuffer;
    .restart local v4    # "s":Ljava/lang/StringBuffer;
    goto :goto_4

    #@9e
    .end local v4    # "s":Ljava/lang/StringBuffer;
    .restart local v1    # "eol":Z
    .restart local v2    # "i":I
    .restart local v3    # "omitLF":Z
    .restart local v5    # "s":Ljava/lang/StringBuffer;
    .restart local v6    # "startChar":I
    :cond_b
    move-object v4, v5

    #@9f
    .end local v5    # "s":Ljava/lang/StringBuffer;
    .restart local v4    # "s":Ljava/lang/StringBuffer;
    goto :goto_3
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
    .line 454
    iget-object v1, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 455
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedReader;->ensureOpen()V

    #@6
    .line 461
    iget-boolean v0, p0, Ljava/io/BufferedReader;->skipLF:Z

    #@8
    if-eqz v0, :cond_2

    #@a
    .line 465
    iget v0, p0, Ljava/io/BufferedReader;->nextChar:I

    #@c
    iget v2, p0, Ljava/io/BufferedReader;->nChars:I

    #@e
    if-lt v0, v2, :cond_0

    #@10
    iget-object v0, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    #@12
    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 466
    invoke-direct {p0}, Ljava/io/BufferedReader;->fill()V

    #@1b
    .line 468
    :cond_0
    iget v0, p0, Ljava/io/BufferedReader;->nextChar:I

    #@1d
    iget v2, p0, Ljava/io/BufferedReader;->nChars:I

    #@1f
    if-ge v0, v2, :cond_2

    #@21
    .line 469
    iget-object v0, p0, Ljava/io/BufferedReader;->cb:[C

    #@23
    iget v2, p0, Ljava/io/BufferedReader;->nextChar:I

    #@25
    aget-char v0, v0, v2

    #@27
    const/16 v2, 0xa

    #@29
    if-ne v0, v2, :cond_1

    #@2b
    .line 470
    iget v0, p0, Ljava/io/BufferedReader;->nextChar:I

    #@2d
    add-int/lit8 v0, v0, 0x1

    #@2f
    iput v0, p0, Ljava/io/BufferedReader;->nextChar:I

    #@31
    .line 471
    :cond_1
    const/4 v0, 0x0

    #@32
    iput-boolean v0, p0, Ljava/io/BufferedReader;->skipLF:Z

    #@34
    .line 474
    :cond_2
    iget v0, p0, Ljava/io/BufferedReader;->nextChar:I

    #@36
    iget v2, p0, Ljava/io/BufferedReader;->nChars:I

    #@38
    if-lt v0, v2, :cond_3

    #@3a
    iget-object v0, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    #@3c
    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    move-result v0

    #@40
    :goto_0
    monitor-exit v1

    #@41
    return v0

    #@42
    :cond_3
    const/4 v0, 0x1

    #@43
    goto :goto_0

    #@44
    .line 454
    :catchall_0
    move-exception v0

    #@45
    monitor-exit v1

    #@46
    throw v0
.end method

.method public reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 520
    iget-object v1, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 521
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedReader;->ensureOpen()V

    #@6
    .line 522
    iget v0, p0, Ljava/io/BufferedReader;->markedChar:I

    #@8
    if-gez v0, :cond_1

    #@a
    .line 523
    new-instance v2, Ljava/io/IOException;

    #@c
    iget v0, p0, Ljava/io/BufferedReader;->markedChar:I

    #@e
    const/4 v3, -0x2

    #@f
    if-ne v0, v3, :cond_0

    #@11
    .line 524
    const-string/jumbo v0, "Mark invalid"

    #@14
    .line 523
    :goto_0
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@17
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 520
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0

    #@1b
    .line 525
    :cond_0
    :try_start_1
    const-string/jumbo v0, "Stream not marked"

    #@1e
    goto :goto_0

    #@1f
    .line 526
    :cond_1
    iget v0, p0, Ljava/io/BufferedReader;->markedChar:I

    #@21
    iput v0, p0, Ljava/io/BufferedReader;->nextChar:I

    #@23
    .line 527
    iget-boolean v0, p0, Ljava/io/BufferedReader;->markedSkipLF:Z

    #@25
    iput-boolean v0, p0, Ljava/io/BufferedReader;->skipLF:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    monitor-exit v1

    #@28
    .line 519
    return-void
.end method

.method public skip(J)J
    .locals 11
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    .line 414
    cmp-long v4, p1, v8

    #@4
    if-gez v4, :cond_0

    #@6
    .line 415
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v5, "skip value is negative"

    #@b
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v4

    #@f
    .line 417
    :cond_0
    iget-object v5, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    #@11
    monitor-enter v5

    #@12
    .line 418
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedReader;->ensureOpen()V

    #@15
    .line 419
    move-wide v2, p1

    #@16
    .line 420
    .local v2, "r":J
    :goto_0
    cmp-long v4, v2, v8

    #@18
    if-lez v4, :cond_2

    #@1a
    .line 421
    iget v4, p0, Ljava/io/BufferedReader;->nextChar:I

    #@1c
    iget v6, p0, Ljava/io/BufferedReader;->nChars:I

    #@1e
    if-lt v4, v6, :cond_1

    #@20
    .line 422
    invoke-direct {p0}, Ljava/io/BufferedReader;->fill()V

    #@23
    .line 423
    :cond_1
    iget v4, p0, Ljava/io/BufferedReader;->nextChar:I

    #@25
    iget v6, p0, Ljava/io/BufferedReader;->nChars:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    if-lt v4, v6, :cond_3

    #@29
    .line 442
    :cond_2
    :goto_1
    sub-long v6, p1, v2

    #@2b
    monitor-exit v5

    #@2c
    return-wide v6

    #@2d
    .line 425
    :cond_3
    :try_start_1
    iget-boolean v4, p0, Ljava/io/BufferedReader;->skipLF:Z

    #@2f
    if-eqz v4, :cond_4

    #@31
    .line 426
    const/4 v4, 0x0

    #@32
    iput-boolean v4, p0, Ljava/io/BufferedReader;->skipLF:Z

    #@34
    .line 427
    iget-object v4, p0, Ljava/io/BufferedReader;->cb:[C

    #@36
    iget v6, p0, Ljava/io/BufferedReader;->nextChar:I

    #@38
    aget-char v4, v4, v6

    #@3a
    const/16 v6, 0xa

    #@3c
    if-ne v4, v6, :cond_4

    #@3e
    .line 428
    iget v4, p0, Ljava/io/BufferedReader;->nextChar:I

    #@40
    add-int/lit8 v4, v4, 0x1

    #@42
    iput v4, p0, Ljava/io/BufferedReader;->nextChar:I

    #@44
    .line 431
    :cond_4
    iget v4, p0, Ljava/io/BufferedReader;->nChars:I

    #@46
    iget v6, p0, Ljava/io/BufferedReader;->nextChar:I

    #@48
    sub-int/2addr v4, v6

    #@49
    int-to-long v0, v4

    #@4a
    .line 432
    .local v0, "d":J
    cmp-long v4, v2, v0

    #@4c
    if-gtz v4, :cond_5

    #@4e
    .line 433
    iget v4, p0, Ljava/io/BufferedReader;->nextChar:I

    #@50
    int-to-long v6, v4

    #@51
    add-long/2addr v6, v2

    #@52
    long-to-int v4, v6

    #@53
    iput v4, p0, Ljava/io/BufferedReader;->nextChar:I

    #@55
    .line 434
    const-wide/16 v2, 0x0

    #@57
    .line 435
    goto :goto_1

    #@58
    .line 438
    :cond_5
    sub-long/2addr v2, v0

    #@59
    .line 439
    iget v4, p0, Ljava/io/BufferedReader;->nChars:I

    #@5b
    iput v4, p0, Ljava/io/BufferedReader;->nextChar:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5d
    goto :goto_0

    #@5e
    .line 417
    .end local v0    # "d":J
    .end local v2    # "r":J
    :catchall_0
    move-exception v4

    #@5f
    monitor-exit v5

    #@60
    throw v4
.end method
