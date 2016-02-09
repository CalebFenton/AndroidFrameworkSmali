.class public Ljava/io/BufferedReader;
.super Ljava/io/Reader;
.source "BufferedReader.java"


# instance fields
.field private buf:[C

.field private end:I

.field private in:Ljava/io/Reader;

.field private lastWasCR:Z

.field private mark:I

.field private markLimit:I

.field private markedLastWasCR:Z

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;

    #@0
    .prologue
    .line 95
    const/16 v0, 0x2000

    #@2
    invoke-direct {p0, p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    #@5
    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 2
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "size"    # I

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 107
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    #@4
    .line 69
    iput v0, p0, Ljava/io/BufferedReader;->mark:I

    #@6
    .line 71
    iput v0, p0, Ljava/io/BufferedReader;->markLimit:I

    #@8
    .line 108
    if-gtz p2, :cond_0

    #@a
    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v1, "size <= 0"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 111
    :cond_0
    iput-object p1, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    #@15
    .line 112
    new-array v0, p2, [C

    #@17
    iput-object v0, p0, Ljava/io/BufferedReader;->buf:[C

    #@19
    .line 106
    return-void
.end method

.method private checkNotClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 219
    invoke-direct {p0}, Ljava/io/BufferedReader;->isClosed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 220
    new-instance v0, Ljava/io/IOException;

    #@8
    const-string/jumbo v1, "BufferedReader is closed"

    #@b
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 218
    :cond_0
    return-void
.end method

.method private fillBuf()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, -0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 143
    iget v4, p0, Ljava/io/BufferedReader;->mark:I

    #@4
    if-eq v4, v10, :cond_0

    #@6
    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    #@8
    iget v5, p0, Ljava/io/BufferedReader;->mark:I

    #@a
    sub-int/2addr v4, v5

    #@b
    iget v5, p0, Ljava/io/BufferedReader;->markLimit:I

    #@d
    if-lt v4, v5, :cond_2

    #@f
    .line 145
    :cond_0
    iget-object v4, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    #@11
    iget-object v5, p0, Ljava/io/BufferedReader;->buf:[C

    #@13
    iget-object v6, p0, Ljava/io/BufferedReader;->buf:[C

    #@15
    array-length v6, v6

    #@16
    invoke-virtual {v4, v5, v9, v6}, Ljava/io/Reader;->read([CII)I

    #@19
    move-result v3

    #@1a
    .line 146
    .local v3, "result":I
    if-lez v3, :cond_1

    #@1c
    .line 147
    iput v10, p0, Ljava/io/BufferedReader;->mark:I

    #@1e
    .line 148
    iput v9, p0, Ljava/io/BufferedReader;->pos:I

    #@20
    .line 149
    iput v3, p0, Ljava/io/BufferedReader;->end:I

    #@22
    .line 151
    :cond_1
    return v3

    #@23
    .line 154
    .end local v3    # "result":I
    :cond_2
    iget v4, p0, Ljava/io/BufferedReader;->mark:I

    #@25
    if-nez v4, :cond_6

    #@27
    iget v4, p0, Ljava/io/BufferedReader;->markLimit:I

    #@29
    iget-object v5, p0, Ljava/io/BufferedReader;->buf:[C

    #@2b
    array-length v5, v5

    #@2c
    if-le v4, v5, :cond_6

    #@2e
    .line 156
    iget-object v4, p0, Ljava/io/BufferedReader;->buf:[C

    #@30
    array-length v4, v4

    #@31
    mul-int/lit8 v1, v4, 0x2

    #@33
    .line 157
    .local v1, "newLength":I
    iget v4, p0, Ljava/io/BufferedReader;->markLimit:I

    #@35
    if-le v1, v4, :cond_3

    #@37
    .line 158
    iget v1, p0, Ljava/io/BufferedReader;->markLimit:I

    #@39
    .line 160
    :cond_3
    new-array v2, v1, [C

    #@3b
    .line 161
    .local v2, "newbuf":[C
    iget-object v4, p0, Ljava/io/BufferedReader;->buf:[C

    #@3d
    iget-object v5, p0, Ljava/io/BufferedReader;->buf:[C

    #@3f
    array-length v5, v5

    #@40
    invoke-static {v4, v9, v2, v9, v5}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@43
    .line 162
    iput-object v2, p0, Ljava/io/BufferedReader;->buf:[C

    #@45
    .line 172
    .end local v1    # "newLength":I
    .end local v2    # "newbuf":[C
    :cond_4
    :goto_0
    iget-object v4, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    #@47
    iget-object v5, p0, Ljava/io/BufferedReader;->buf:[C

    #@49
    iget v6, p0, Ljava/io/BufferedReader;->pos:I

    #@4b
    iget-object v7, p0, Ljava/io/BufferedReader;->buf:[C

    #@4d
    array-length v7, v7

    #@4e
    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    #@50
    sub-int/2addr v7, v8

    #@51
    invoke-virtual {v4, v5, v6, v7}, Ljava/io/Reader;->read([CII)I

    #@54
    move-result v0

    #@55
    .line 173
    .local v0, "count":I
    if-eq v0, v10, :cond_5

    #@57
    .line 174
    iget v4, p0, Ljava/io/BufferedReader;->end:I

    #@59
    add-int/2addr v4, v0

    #@5a
    iput v4, p0, Ljava/io/BufferedReader;->end:I

    #@5c
    .line 176
    :cond_5
    return v0

    #@5d
    .line 163
    .end local v0    # "count":I
    :cond_6
    iget v4, p0, Ljava/io/BufferedReader;->mark:I

    #@5f
    if-lez v4, :cond_4

    #@61
    .line 165
    iget-object v4, p0, Ljava/io/BufferedReader;->buf:[C

    #@63
    iget v5, p0, Ljava/io/BufferedReader;->mark:I

    #@65
    iget-object v6, p0, Ljava/io/BufferedReader;->buf:[C

    #@67
    iget-object v7, p0, Ljava/io/BufferedReader;->buf:[C

    #@69
    array-length v7, v7

    #@6a
    iget v8, p0, Ljava/io/BufferedReader;->mark:I

    #@6c
    sub-int/2addr v7, v8

    #@6d
    invoke-static {v4, v5, v6, v9, v7}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@70
    .line 166
    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    #@72
    iget v5, p0, Ljava/io/BufferedReader;->mark:I

    #@74
    sub-int/2addr v4, v5

    #@75
    iput v4, p0, Ljava/io/BufferedReader;->pos:I

    #@77
    .line 167
    iget v4, p0, Ljava/io/BufferedReader;->end:I

    #@79
    iget v5, p0, Ljava/io/BufferedReader;->mark:I

    #@7b
    sub-int/2addr v4, v5

    #@7c
    iput v4, p0, Ljava/io/BufferedReader;->end:I

    #@7e
    .line 168
    iput v9, p0, Ljava/io/BufferedReader;->mark:I

    #@80
    goto :goto_0
.end method

.method private isClosed()Z
    .locals 1

    #@0
    .prologue
    .line 186
    iget-object v0, p0, Ljava/io/BufferedReader;->buf:[C

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method private maybeSwallowLF()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 358
    iget-boolean v0, p0, Ljava/io/BufferedReader;->lastWasCR:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 359
    invoke-virtual {p0}, Ljava/io/BufferedReader;->chompNewline()V

    #@7
    .line 360
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Ljava/io/BufferedReader;->lastWasCR:Z

    #@a
    .line 357
    :cond_0
    return-void
.end method

.method private readChar()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 263
    iget v0, p0, Ljava/io/BufferedReader;->pos:I

    #@3
    iget v1, p0, Ljava/io/BufferedReader;->end:I

    #@5
    if-lt v0, v1, :cond_0

    #@7
    invoke-direct {p0}, Ljava/io/BufferedReader;->fillBuf()I

    #@a
    move-result v0

    #@b
    if-eq v0, v2, :cond_1

    #@d
    .line 264
    :cond_0
    iget-object v0, p0, Ljava/io/BufferedReader;->buf:[C

    #@f
    iget v1, p0, Ljava/io/BufferedReader;->pos:I

    #@11
    add-int/lit8 v2, v1, 0x1

    #@13
    iput v2, p0, Ljava/io/BufferedReader;->pos:I

    #@15
    aget-char v0, v0, v1

    #@17
    return v0

    #@18
    .line 266
    :cond_1
    return v2
.end method


# virtual methods
.method final chompNewline()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 351
    iget v0, p0, Ljava/io/BufferedReader;->pos:I

    #@2
    iget v1, p0, Ljava/io/BufferedReader;->end:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    invoke-direct {p0}, Ljava/io/BufferedReader;->fillBuf()I

    #@9
    move-result v0

    #@a
    const/4 v1, -0x1

    #@b
    if-eq v0, v1, :cond_1

    #@d
    :cond_0
    iget-object v0, p0, Ljava/io/BufferedReader;->buf:[C

    #@f
    iget v1, p0, Ljava/io/BufferedReader;->pos:I

    #@11
    aget-char v0, v0, v1

    #@13
    const/16 v1, 0xa

    #@15
    if-ne v0, v1, :cond_1

    #@17
    .line 352
    iget v0, p0, Ljava/io/BufferedReader;->pos:I

    #@19
    add-int/lit8 v0, v0, 0x1

    #@1b
    iput v0, p0, Ljava/io/BufferedReader;->pos:I

    #@1d
    .line 350
    :cond_1
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 125
    iget-object v1, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 126
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedReader;->isClosed()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 127
    iget-object v0, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    #@b
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    #@e
    .line 128
    const/4 v0, 0x0

    #@f
    iput-object v0, p0, Ljava/io/BufferedReader;->buf:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit v1

    #@12
    .line 124
    return-void

    #@13
    .line 125
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method public mark(I)V
    .locals 3
    .param p1, "markLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 207
    if-gez p1, :cond_0

    #@2
    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "markLimit < 0:"

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 210
    :cond_0
    iget-object v1, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    #@1e
    monitor-enter v1

    #@1f
    .line 211
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedReader;->checkNotClosed()V

    #@22
    .line 212
    iput p1, p0, Ljava/io/BufferedReader;->markLimit:I

    #@24
    .line 213
    iget v0, p0, Ljava/io/BufferedReader;->pos:I

    #@26
    iput v0, p0, Ljava/io/BufferedReader;->mark:I

    #@28
    .line 214
    iget-boolean v0, p0, Ljava/io/BufferedReader;->lastWasCR:Z

    #@2a
    iput-boolean v0, p0, Ljava/io/BufferedReader;->markedLastWasCR:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    monitor-exit v1

    #@2d
    .line 206
    return-void

    #@2e
    .line 210
    :catchall_0
    move-exception v0

    #@2f
    monitor-exit v1

    #@30
    throw v0
.end method

.method public markSupported()Z
    .locals 1

    #@0
    .prologue
    .line 234
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 251
    iget-object v2, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 252
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedReader;->checkNotClosed()V

    #@6
    .line 253
    invoke-direct {p0}, Ljava/io/BufferedReader;->readChar()I

    #@9
    move-result v0

    #@a
    .line 254
    .local v0, "ch":I
    iget-boolean v1, p0, Ljava/io/BufferedReader;->lastWasCR:Z

    #@c
    if-eqz v1, :cond_0

    #@e
    const/16 v1, 0xa

    #@10
    if-ne v0, v1, :cond_0

    #@12
    .line 255
    invoke-direct {p0}, Ljava/io/BufferedReader;->readChar()I

    #@15
    move-result v0

    #@16
    .line 257
    :cond_0
    const/4 v1, 0x0

    #@17
    iput-boolean v1, p0, Ljava/io/BufferedReader;->lastWasCR:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v2

    #@1a
    .line 258
    return v0

    #@1b
    .line 251
    .end local v0    # "ch":I
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1
.end method

.method public read([CII)I
    .locals 7
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 285
    iget-object v4, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    #@4
    monitor-enter v4

    #@5
    .line 286
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedReader;->checkNotClosed()V

    #@8
    .line 287
    array-length v3, p1

    #@9
    invoke-static {v3, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 288
    if-nez p3, :cond_0

    #@e
    monitor-exit v4

    #@f
    .line 289
    return v5

    #@10
    .line 292
    :cond_0
    :try_start_1
    invoke-direct {p0}, Ljava/io/BufferedReader;->maybeSwallowLF()V

    #@13
    .line 294
    move v2, p3

    #@14
    .line 295
    .local v2, "outstanding":I
    :cond_1
    if-lez v2, :cond_5

    #@16
    .line 297
    iget v3, p0, Ljava/io/BufferedReader;->end:I

    #@18
    iget v5, p0, Ljava/io/BufferedReader;->pos:I

    #@1a
    sub-int v0, v3, v5

    #@1c
    .line 298
    .local v0, "available":I
    if-lez v0, :cond_2

    #@1e
    .line 299
    if-lt v0, v2, :cond_6

    #@20
    move v1, v2

    #@21
    .line 300
    .local v1, "count":I
    :goto_0
    iget-object v3, p0, Ljava/io/BufferedReader;->buf:[C

    #@23
    iget v5, p0, Ljava/io/BufferedReader;->pos:I

    #@25
    invoke-static {v3, v5, p1, p2, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@28
    .line 301
    iget v3, p0, Ljava/io/BufferedReader;->pos:I

    #@2a
    add-int/2addr v3, v1

    #@2b
    iput v3, p0, Ljava/io/BufferedReader;->pos:I

    #@2d
    .line 302
    add-int/2addr p2, v1

    #@2e
    .line 303
    sub-int/2addr v2, v1

    #@2f
    .line 312
    .end local v1    # "count":I
    :cond_2
    if-eqz v2, :cond_5

    #@31
    if-ge v2, p3, :cond_3

    #@33
    iget-object v3, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    #@35
    invoke-virtual {v3}, Ljava/io/Reader;->ready()Z

    #@38
    move-result v3

    #@39
    if-eqz v3, :cond_5

    #@3b
    .line 324
    :cond_3
    iget v3, p0, Ljava/io/BufferedReader;->mark:I

    #@3d
    if-eq v3, v6, :cond_4

    #@3f
    iget v3, p0, Ljava/io/BufferedReader;->pos:I

    #@41
    iget v5, p0, Ljava/io/BufferedReader;->mark:I

    #@43
    sub-int/2addr v3, v5

    #@44
    iget v5, p0, Ljava/io/BufferedReader;->markLimit:I

    #@46
    if-lt v3, v5, :cond_7

    #@48
    :cond_4
    iget-object v3, p0, Ljava/io/BufferedReader;->buf:[C

    #@4a
    array-length v3, v3

    #@4b
    if-lt v2, v3, :cond_7

    #@4d
    .line 325
    iget-object v3, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    #@4f
    invoke-virtual {v3, p1, p2, v2}, Ljava/io/Reader;->read([CII)I

    #@52
    move-result v1

    #@53
    .line 326
    .restart local v1    # "count":I
    if-lez v1, :cond_5

    #@55
    .line 327
    sub-int/2addr v2, v1

    #@56
    .line 328
    const/4 v3, -0x1

    #@57
    iput v3, p0, Ljava/io/BufferedReader;->mark:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@59
    .line 338
    .end local v0    # "available":I
    .end local v1    # "count":I
    :cond_5
    :goto_1
    sub-int v1, p3, v2

    #@5b
    .line 339
    .restart local v1    # "count":I
    if-lez v1, :cond_8

    #@5d
    monitor-exit v4

    #@5e
    .line 340
    return v1

    #@5f
    .line 299
    .end local v1    # "count":I
    .restart local v0    # "available":I
    :cond_6
    move v1, v0

    #@60
    .restart local v1    # "count":I
    goto :goto_0

    #@61
    .line 333
    .end local v1    # "count":I
    :cond_7
    :try_start_2
    invoke-direct {p0}, Ljava/io/BufferedReader;->fillBuf()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@64
    move-result v3

    #@65
    if-ne v3, v6, :cond_1

    #@67
    goto :goto_1

    #@68
    .end local v0    # "available":I
    .restart local v1    # "count":I
    :cond_8
    monitor-exit v4

    #@69
    .line 342
    return v6

    #@6a
    .line 285
    .end local v1    # "count":I
    .end local v2    # "outstanding":I
    :catchall_0
    move-exception v3

    #@6b
    monitor-exit v4

    #@6c
    throw v3
.end method

.method public readLine()Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v12, 0xa

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v5, 0x0

    #@4
    const/16 v11, 0xd

    #@6
    .line 376
    iget-object v6, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    #@8
    monitor-enter v6

    #@9
    .line 377
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedReader;->checkNotClosed()V

    #@c
    .line 379
    invoke-direct {p0}, Ljava/io/BufferedReader;->maybeSwallowLF()V

    #@f
    .line 382
    iget v1, p0, Ljava/io/BufferedReader;->pos:I

    #@11
    .local v1, "i":I
    :goto_0
    iget v7, p0, Ljava/io/BufferedReader;->end:I

    #@13
    if-ge v1, v7, :cond_3

    #@15
    .line 383
    iget-object v7, p0, Ljava/io/BufferedReader;->buf:[C

    #@17
    aget-char v0, v7, v1

    #@19
    .line 384
    .local v0, "ch":C
    if-eq v0, v12, :cond_0

    #@1b
    if-ne v0, v11, :cond_2

    #@1d
    .line 385
    :cond_0
    new-instance v2, Ljava/lang/String;

    #@1f
    iget-object v7, p0, Ljava/io/BufferedReader;->buf:[C

    #@21
    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    #@23
    iget v9, p0, Ljava/io/BufferedReader;->pos:I

    #@25
    sub-int v9, v1, v9

    #@27
    invoke-direct {v2, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    #@2a
    .line 386
    .local v2, "line":Ljava/lang/String;
    add-int/lit8 v7, v1, 0x1

    #@2c
    iput v7, p0, Ljava/io/BufferedReader;->pos:I

    #@2e
    .line 387
    if-ne v0, v11, :cond_1

    #@30
    :goto_1
    iput-boolean v4, p0, Ljava/io/BufferedReader;->lastWasCR:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    monitor-exit v6

    #@33
    .line 388
    return-object v2

    #@34
    :cond_1
    move v4, v5

    #@35
    .line 387
    goto :goto_1

    #@36
    .line 382
    .end local v2    # "line":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@38
    goto :goto_0

    #@39
    .line 393
    .end local v0    # "ch":C
    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@3b
    iget v7, p0, Ljava/io/BufferedReader;->end:I

    #@3d
    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    #@3f
    sub-int/2addr v7, v8

    #@40
    add-int/lit8 v7, v7, 0x50

    #@42
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    #@45
    .line 394
    .local v3, "result":Ljava/lang/StringBuilder;
    iget-object v7, p0, Ljava/io/BufferedReader;->buf:[C

    #@47
    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    #@49
    iget v9, p0, Ljava/io/BufferedReader;->end:I

    #@4b
    iget v10, p0, Ljava/io/BufferedReader;->pos:I

    #@4d
    sub-int/2addr v9, v10

    #@4e
    invoke-virtual {v3, v7, v8, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@51
    .line 396
    :goto_2
    iget v7, p0, Ljava/io/BufferedReader;->end:I

    #@53
    iput v7, p0, Ljava/io/BufferedReader;->pos:I

    #@55
    .line 397
    invoke-direct {p0}, Ljava/io/BufferedReader;->fillBuf()I

    #@58
    move-result v7

    #@59
    const/4 v8, -0x1

    #@5a
    if-ne v7, v8, :cond_5

    #@5c
    .line 399
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@5f
    move-result v4

    #@60
    if-lez v4, :cond_4

    #@62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@65
    move-result-object v4

    #@66
    :goto_3
    monitor-exit v6

    #@67
    return-object v4

    #@68
    :cond_4
    const/4 v4, 0x0

    #@69
    goto :goto_3

    #@6a
    .line 403
    :cond_5
    :try_start_2
    iget v1, p0, Ljava/io/BufferedReader;->pos:I

    #@6c
    :goto_4
    iget v7, p0, Ljava/io/BufferedReader;->end:I

    #@6e
    if-ge v1, v7, :cond_9

    #@70
    .line 404
    iget-object v7, p0, Ljava/io/BufferedReader;->buf:[C

    #@72
    aget-char v0, v7, v1

    #@74
    .line 405
    .restart local v0    # "ch":C
    if-eq v0, v12, :cond_6

    #@76
    if-ne v0, v11, :cond_8

    #@78
    .line 406
    :cond_6
    iget-object v7, p0, Ljava/io/BufferedReader;->buf:[C

    #@7a
    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    #@7c
    iget v9, p0, Ljava/io/BufferedReader;->pos:I

    #@7e
    sub-int v9, v1, v9

    #@80
    invoke-virtual {v3, v7, v8, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@83
    .line 407
    add-int/lit8 v7, v1, 0x1

    #@85
    iput v7, p0, Ljava/io/BufferedReader;->pos:I

    #@87
    .line 408
    if-ne v0, v11, :cond_7

    #@89
    :goto_5
    iput-boolean v4, p0, Ljava/io/BufferedReader;->lastWasCR:Z

    #@8b
    .line 409
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8e
    move-result-object v4

    #@8f
    monitor-exit v6

    #@90
    return-object v4

    #@91
    :cond_7
    move v4, v5

    #@92
    .line 408
    goto :goto_5

    #@93
    .line 403
    :cond_8
    add-int/lit8 v1, v1, 0x1

    #@95
    goto :goto_4

    #@96
    .line 414
    .end local v0    # "ch":C
    :cond_9
    :try_start_3
    iget-object v7, p0, Ljava/io/BufferedReader;->buf:[C

    #@98
    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    #@9a
    iget v9, p0, Ljava/io/BufferedReader;->end:I

    #@9c
    iget v10, p0, Ljava/io/BufferedReader;->pos:I

    #@9e
    sub-int/2addr v9, v10

    #@9f
    invoke-virtual {v3, v7, v8, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a2
    goto :goto_2

    #@a3
    .line 376
    .end local v1    # "i":I
    .end local v3    # "result":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v4

    #@a4
    monitor-exit v6

    #@a5
    throw v4
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
    .line 432
    iget-object v1, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 433
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedReader;->checkNotClosed()V

    #@6
    .line 434
    iget v0, p0, Ljava/io/BufferedReader;->end:I

    #@8
    iget v2, p0, Ljava/io/BufferedReader;->pos:I

    #@a
    sub-int/2addr v0, v2

    #@b
    if-gtz v0, :cond_0

    #@d
    iget-object v0, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    #@f
    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v0

    #@13
    :goto_0
    monitor-exit v1

    #@14
    return v0

    #@15
    :cond_0
    const/4 v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 432
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method public reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 450
    iget-object v1, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 451
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedReader;->checkNotClosed()V

    #@6
    .line 452
    iget v0, p0, Ljava/io/BufferedReader;->mark:I

    #@8
    const/4 v2, -0x1

    #@9
    if-ne v0, v2, :cond_0

    #@b
    .line 453
    new-instance v0, Ljava/io/IOException;

    #@d
    const-string/jumbo v2, "Invalid mark"

    #@10
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 450
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0

    #@17
    .line 455
    :cond_0
    :try_start_1
    iget v0, p0, Ljava/io/BufferedReader;->mark:I

    #@19
    iput v0, p0, Ljava/io/BufferedReader;->pos:I

    #@1b
    .line 456
    iget-boolean v0, p0, Ljava/io/BufferedReader;->markedLastWasCR:Z

    #@1d
    iput-boolean v0, p0, Ljava/io/BufferedReader;->lastWasCR:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    monitor-exit v1

    #@20
    .line 449
    return-void
.end method

.method public skip(J)J
    .locals 9
    .param p1, "charCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 475
    const-wide/16 v2, 0x0

    #@2
    cmp-long v2, p1, v2

    #@4
    if-gez v2, :cond_0

    #@6
    .line 476
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "charCount < 0: "

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2

    #@20
    .line 478
    :cond_0
    iget-object v3, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    #@22
    monitor-enter v3

    #@23
    .line 479
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedReader;->checkNotClosed()V

    #@26
    .line 480
    iget v2, p0, Ljava/io/BufferedReader;->end:I

    #@28
    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    #@2a
    sub-int/2addr v2, v4

    #@2b
    int-to-long v4, v2

    #@2c
    cmp-long v2, v4, p1

    #@2e
    if-ltz v2, :cond_1

    #@30
    .line 481
    iget v2, p0, Ljava/io/BufferedReader;->pos:I

    #@32
    int-to-long v4, v2

    #@33
    add-long/2addr v4, p1

    #@34
    long-to-int v2, v4

    #@35
    iput v2, p0, Ljava/io/BufferedReader;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    monitor-exit v3

    #@38
    .line 482
    return-wide p1

    #@39
    .line 485
    :cond_1
    :try_start_1
    iget v2, p0, Ljava/io/BufferedReader;->end:I

    #@3b
    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    #@3d
    sub-int/2addr v2, v4

    #@3e
    int-to-long v0, v2

    #@3f
    .line 486
    .local v0, "read":J
    iget v2, p0, Ljava/io/BufferedReader;->end:I

    #@41
    iput v2, p0, Ljava/io/BufferedReader;->pos:I

    #@43
    .line 487
    :goto_0
    cmp-long v2, v0, p1

    #@45
    if-gez v2, :cond_4

    #@47
    .line 488
    invoke-direct {p0}, Ljava/io/BufferedReader;->fillBuf()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    move-result v2

    #@4b
    const/4 v4, -0x1

    #@4c
    if-ne v2, v4, :cond_2

    #@4e
    monitor-exit v3

    #@4f
    .line 489
    return-wide v0

    #@50
    .line 491
    :cond_2
    :try_start_2
    iget v2, p0, Ljava/io/BufferedReader;->end:I

    #@52
    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    #@54
    sub-int/2addr v2, v4

    #@55
    int-to-long v4, v2

    #@56
    sub-long v6, p1, v0

    #@58
    cmp-long v2, v4, v6

    #@5a
    if-ltz v2, :cond_3

    #@5c
    .line 492
    iget v2, p0, Ljava/io/BufferedReader;->pos:I

    #@5e
    int-to-long v4, v2

    #@5f
    sub-long v6, p1, v0

    #@61
    add-long/2addr v4, v6

    #@62
    long-to-int v2, v4

    #@63
    iput v2, p0, Ljava/io/BufferedReader;->pos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@65
    monitor-exit v3

    #@66
    .line 493
    return-wide p1

    #@67
    .line 496
    :cond_3
    :try_start_3
    iget v2, p0, Ljava/io/BufferedReader;->end:I

    #@69
    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    #@6b
    sub-int/2addr v2, v4

    #@6c
    int-to-long v4, v2

    #@6d
    add-long/2addr v0, v4

    #@6e
    .line 497
    iget v2, p0, Ljava/io/BufferedReader;->end:I

    #@70
    iput v2, p0, Ljava/io/BufferedReader;->pos:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@72
    goto :goto_0

    #@73
    .line 478
    .end local v0    # "read":J
    :catchall_0
    move-exception v2

    #@74
    monitor-exit v3

    #@75
    throw v2

    #@76
    .restart local v0    # "read":J
    :cond_4
    monitor-exit v3

    #@77
    .line 499
    return-wide p1
.end method
