.class public Ljava/util/zip/Inflater;
.super Ljava/lang/Object;
.source "Inflater.java"


# instance fields
.field private finished:Z

.field private final guard:Ldalvik/system/CloseGuard;

.field private inLength:I

.field private inRead:I

.field private needsDictionary:Z

.field private streamHandle:J


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 69
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/util/zip/Inflater;-><init>(Z)V

    #@4
    .line 68
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "noHeader"    # Z

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    const-wide/16 v0, -0x1

    #@5
    iput-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    #@7
    .line 61
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    #@d
    .line 81
    invoke-direct {p0, p1}, Ljava/util/zip/Inflater;->createStream(Z)J

    #@10
    move-result-wide v0

    #@11
    iput-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    #@13
    .line 82
    iget-object v0, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    #@15
    const-string/jumbo v1, "end"

    #@18
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@1b
    .line 80
    return-void
.end method

.method private checkOpen()V
    .locals 4

    #@0
    .prologue
    .line 331
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    #@2
    const-wide/16 v2, -0x1

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    .line 332
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v1, "attempt to use Inflater after calling end"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 330
    :cond_0
    return-void
.end method

.method private native createStream(Z)J
.end method

.method private native endImpl(J)V
.end method

.method private native getAdlerImpl(J)I
.end method

.method private native getTotalInImpl(J)J
.end method

.method private native getTotalOutImpl(J)J
.end method

.method private native inflateImpl([BIIJ)I
.end method

.method private native resetImpl(J)V
.end method

.method private native setDictionaryImpl([BIIJ)V
.end method

.method private native setFileInputImpl(Ljava/io/FileDescriptor;JIJ)I
.end method

.method private native setInputImpl([BIIJ)V
.end method


# virtual methods
.method public declared-synchronized end()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    monitor-enter p0

    #@3
    .line 94
    :try_start_0
    iget-object v0, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    #@5
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@8
    .line 95
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    #@a
    cmp-long v0, v0, v2

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 96
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    #@10
    invoke-direct {p0, v0, v1}, Ljava/util/zip/Inflater;->endImpl(J)V

    #@13
    .line 97
    const/4 v0, 0x0

    #@14
    iput v0, p0, Ljava/util/zip/Inflater;->inRead:I

    #@16
    .line 98
    const/4 v0, 0x0

    #@17
    iput v0, p0, Ljava/util/zip/Inflater;->inLength:I

    #@19
    .line 99
    const-wide/16 v0, -0x1

    #@1b
    iput-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    :cond_0
    monitor-exit p0

    #@1e
    .line 93
    return-void

    #@1f
    :catchall_0
    move-exception v0

    #@20
    monitor-exit p0

    #@21
    throw v0
.end method

.method protected finalize()V
    .locals 2

    #@0
    .prologue
    .line 107
    :try_start_0
    iget-object v1, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 108
    iget-object v1, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@9
    .line 110
    :cond_0
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->end()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 113
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@f
    .line 105
    return-void

    #@10
    .line 114
    :catch_0
    move-exception v0

    #@11
    .line 115
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/AssertionError;

    #@13
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@16
    throw v1

    #@17
    .line 111
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    #@18
    .line 113
    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    #@1b
    .line 111
    throw v1

    #@1c
    .line 114
    :catch_1
    move-exception v0

    #@1d
    .line 115
    .restart local v0    # "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/AssertionError;

    #@1f
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@22
    throw v1
.end method

.method public declared-synchronized finished()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 130
    :try_start_0
    iget-boolean v0, p0, Ljava/util/zip/Inflater;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized getAdler()I
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 138
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Inflater;->checkOpen()V

    #@4
    .line 139
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    #@6
    invoke-direct {p0, v0, v1}, Ljava/util/zip/Inflater;->getAdlerImpl(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v0

    #@a
    monitor-exit p0

    #@b
    return v0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public declared-synchronized getBytesRead()J
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 150
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Inflater;->checkOpen()V

    #@4
    .line 151
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    #@6
    invoke-direct {p0, v0, v1}, Ljava/util/zip/Inflater;->getTotalInImpl(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result-wide v0

    #@a
    monitor-exit p0

    #@b
    return-wide v0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public declared-synchronized getBytesWritten()J
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 160
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Inflater;->checkOpen()V

    #@4
    .line 161
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    #@6
    invoke-direct {p0, v0, v1}, Ljava/util/zip/Inflater;->getTotalOutImpl(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result-wide v0

    #@a
    monitor-exit p0

    #@b
    return-wide v0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method declared-synchronized getCurrentOffset()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 178
    :try_start_0
    iget v0, p0, Ljava/util/zip/Inflater;->inRead:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized getRemaining()I
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 169
    :try_start_0
    iget v0, p0, Ljava/util/zip/Inflater;->inLength:I

    #@3
    iget v1, p0, Ljava/util/zip/Inflater;->inRead:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    sub-int/2addr v0, v1

    #@6
    monitor-exit p0

    #@7
    return v0

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public declared-synchronized getTotalIn()I
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 186
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Inflater;->checkOpen()V

    #@4
    .line 187
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    #@6
    invoke-direct {p0, v0, v1}, Ljava/util/zip/Inflater;->getTotalInImpl(J)J

    #@9
    move-result-wide v0

    #@a
    const-wide/32 v2, 0x7fffffff

    #@d
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result-wide v0

    #@11
    long-to-int v0, v0

    #@12
    monitor-exit p0

    #@13
    return v0

    #@14
    :catchall_0
    move-exception v0

    #@15
    monitor-exit p0

    #@16
    throw v0
.end method

.method public declared-synchronized getTotalOut()I
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 197
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Inflater;->checkOpen()V

    #@4
    .line 198
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    #@6
    invoke-direct {p0, v0, v1}, Ljava/util/zip/Inflater;->getTotalOutImpl(J)J

    #@9
    move-result-wide v0

    #@a
    const-wide/32 v2, 0x7fffffff

    #@d
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result-wide v0

    #@11
    long-to-int v0, v0

    #@12
    monitor-exit p0

    #@13
    return v0

    #@14
    :catchall_0
    move-exception v0

    #@15
    monitor-exit p0

    #@16
    throw v0
.end method

.method public inflate([B)I
    .locals 2
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 214
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/util/zip/Inflater;->inflate([BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public declared-synchronized inflate([BII)I
    .locals 8
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 227
    :try_start_0
    array-length v0, p1

    #@3
    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@6
    .line 229
    invoke-direct {p0}, Ljava/util/zip/Inflater;->checkOpen()V

    #@9
    .line 231
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->needsInput()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    monitor-exit p0

    #@10
    .line 232
    return v1

    #@11
    .line 235
    :cond_0
    :try_start_1
    iget-boolean v6, p0, Ljava/util/zip/Inflater;->needsDictionary:Z

    #@13
    .line 236
    .local v6, "neededDict":Z
    const/4 v0, 0x0

    #@14
    iput-boolean v0, p0, Ljava/util/zip/Inflater;->needsDictionary:Z

    #@16
    .line 237
    iget-wide v4, p0, Ljava/util/zip/Inflater;->streamHandle:J

    #@18
    move-object v0, p0

    #@19
    move-object v1, p1

    #@1a
    move v2, p2

    #@1b
    move v3, p3

    #@1c
    invoke-direct/range {v0 .. v5}, Ljava/util/zip/Inflater;->inflateImpl([BIIJ)I

    #@1f
    move-result v7

    #@20
    .line 238
    .local v7, "result":I
    iget-boolean v0, p0, Ljava/util/zip/Inflater;->needsDictionary:Z

    #@22
    if-eqz v0, :cond_1

    #@24
    if-eqz v6, :cond_1

    #@26
    .line 239
    new-instance v0, Ljava/util/zip/DataFormatException;

    #@28
    const-string/jumbo v1, "Needs dictionary"

    #@2b
    invoke-direct {v0, v1}, Ljava/util/zip/DataFormatException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    .end local v6    # "neededDict":Z
    .end local v7    # "result":I
    :catchall_0
    move-exception v0

    #@30
    monitor-exit p0

    #@31
    throw v0

    #@32
    .restart local v6    # "neededDict":Z
    .restart local v7    # "result":I
    :cond_1
    monitor-exit p0

    #@33
    .line 241
    return v7
.end method

.method public declared-synchronized needsDictionary()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 254
    :try_start_0
    iget-boolean v0, p0, Ljava/util/zip/Inflater;->needsDictionary:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized needsInput()Z
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 261
    :try_start_0
    iget v0, p0, Ljava/util/zip/Inflater;->inRead:I

    #@3
    iget v1, p0, Ljava/util/zip/Inflater;->inLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    monitor-exit p0

    #@9
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 269
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Inflater;->checkOpen()V

    #@4
    .line 270
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Ljava/util/zip/Inflater;->finished:Z

    #@7
    .line 271
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Ljava/util/zip/Inflater;->needsDictionary:Z

    #@a
    .line 272
    const/4 v0, 0x0

    #@b
    iput v0, p0, Ljava/util/zip/Inflater;->inRead:I

    #@d
    const/4 v0, 0x0

    #@e
    iput v0, p0, Ljava/util/zip/Inflater;->inLength:I

    #@10
    .line 273
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    #@12
    invoke-direct {p0, v0, v1}, Ljava/util/zip/Inflater;->resetImpl(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit p0

    #@16
    .line 268
    return-void

    #@17
    :catchall_0
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0
.end method

.method public declared-synchronized setDictionary([B)V
    .locals 2
    .param p1, "dictionary"    # [B

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 283
    :try_start_0
    array-length v0, p1

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0, p1, v1, v0}, Ljava/util/zip/Inflater;->setDictionary([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 282
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public declared-synchronized setDictionary([BII)V
    .locals 6
    .param p1, "dictionary"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 292
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Inflater;->checkOpen()V

    #@4
    .line 293
    array-length v0, p1

    #@5
    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@8
    .line 294
    iget-wide v4, p0, Ljava/util/zip/Inflater;->streamHandle:J

    #@a
    move-object v0, p0

    #@b
    move-object v1, p1

    #@c
    move v2, p2

    #@d
    move v3, p3

    #@e
    invoke-direct/range {v0 .. v5}, Ljava/util/zip/Inflater;->setDictionaryImpl([BIIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit p0

    #@12
    .line 291
    return-void

    #@13
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method declared-synchronized setFileInput(Ljava/io/FileDescriptor;JI)I
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "byteCount"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 322
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Inflater;->checkOpen()V

    #@4
    .line 323
    const/4 v0, 0x0

    #@5
    iput v0, p0, Ljava/util/zip/Inflater;->inRead:I

    #@7
    .line 324
    iget-wide v5, p0, Ljava/util/zip/Inflater;->streamHandle:J

    #@9
    move-object v0, p0

    #@a
    move-object v1, p1

    #@b
    move-wide v2, p2

    #@c
    move v4, p4

    #@d
    invoke-direct/range {v0 .. v6}, Ljava/util/zip/Inflater;->setFileInputImpl(Ljava/io/FileDescriptor;JIJ)I

    #@10
    move-result v0

    #@11
    iput v0, p0, Ljava/util/zip/Inflater;->inLength:I

    #@13
    .line 325
    iget v0, p0, Ljava/util/zip/Inflater;->inLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit p0

    #@16
    return v0

    #@17
    :catchall_0
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0
.end method

.method public declared-synchronized setInput([B)V
    .locals 2
    .param p1, "buf"    # [B

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 304
    :try_start_0
    array-length v0, p1

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0, p1, v1, v0}, Ljava/util/zip/Inflater;->setInput([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 303
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public declared-synchronized setInput([BII)V
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 312
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Inflater;->checkOpen()V

    #@4
    .line 313
    array-length v0, p1

    #@5
    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@8
    .line 314
    const/4 v0, 0x0

    #@9
    iput v0, p0, Ljava/util/zip/Inflater;->inRead:I

    #@b
    .line 315
    iput p3, p0, Ljava/util/zip/Inflater;->inLength:I

    #@d
    .line 316
    iget-wide v4, p0, Ljava/util/zip/Inflater;->streamHandle:J

    #@f
    move-object v0, p0

    #@10
    move-object v1, p1

    #@11
    move v2, p2

    #@12
    move v3, p3

    #@13
    invoke-direct/range {v0 .. v5}, Ljava/util/zip/Inflater;->setInputImpl([BIIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit p0

    #@17
    .line 311
    return-void

    #@18
    :catchall_0
    move-exception v0

    #@19
    monitor-exit p0

    #@1a
    throw v0
.end method
