.class public Ljava/io/LineNumberReader;
.super Ljava/io/BufferedReader;
.source "LineNumberReader.java"


# static fields
.field private static final maxSkipBufferSize:I = 0x2000


# instance fields
.field private lineNumber:I

.field private markedLineNumber:I

.field private markedSkipLF:Z

.field private skipBuffer:[C

.field private skipLF:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;

    #@0
    .prologue
    .line 72
    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@3
    .line 53
    const/4 v0, 0x0

    #@4
    iput v0, p0, Ljava/io/LineNumberReader;->lineNumber:I

    #@6
    .line 211
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Ljava/io/LineNumberReader;->skipBuffer:[C

    #@9
    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "sz"    # I

    #@0
    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    #@3
    .line 53
    const/4 v0, 0x0

    #@4
    iput v0, p0, Ljava/io/LineNumberReader;->lineNumber:I

    #@6
    .line 211
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Ljava/io/LineNumberReader;->skipBuffer:[C

    #@9
    .line 85
    return-void
.end method


# virtual methods
.method public getLineNumber()I
    .locals 1

    #@0
    .prologue
    .line 109
    iget v0, p0, Ljava/io/LineNumberReader;->lineNumber:I

    #@2
    return v0
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
    .line 259
    iget-object v1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 260
    :try_start_0
    invoke-super {p0, p1}, Ljava/io/BufferedReader;->mark(I)V

    #@6
    .line 261
    iget v0, p0, Ljava/io/LineNumberReader;->lineNumber:I

    #@8
    iput v0, p0, Ljava/io/LineNumberReader;->markedLineNumber:I

    #@a
    .line 262
    iget-boolean v0, p0, Ljava/io/LineNumberReader;->skipLF:Z

    #@c
    iput-boolean v0, p0, Ljava/io/LineNumberReader;->markedSkipLF:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 258
    return-void

    #@10
    .line 259
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
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
    const/16 v3, 0xa

    #@2
    .line 124
    iget-object v2, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    #@4
    monitor-enter v2

    #@5
    .line 125
    :try_start_0
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    #@8
    move-result v0

    #@9
    .line 126
    .local v0, "c":I
    iget-boolean v1, p0, Ljava/io/LineNumberReader;->skipLF:Z

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 127
    if-ne v0, v3, :cond_0

    #@f
    .line 128
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    #@12
    move-result v0

    #@13
    .line 129
    :cond_0
    const/4 v1, 0x0

    #@14
    iput-boolean v1, p0, Ljava/io/LineNumberReader;->skipLF:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 131
    :cond_1
    packed-switch v0, :pswitch_data_0

    #@19
    :pswitch_0
    monitor-exit v2

    #@1a
    .line 138
    return v0

    #@1b
    .line 133
    :pswitch_1
    const/4 v1, 0x1

    #@1c
    :try_start_1
    iput-boolean v1, p0, Ljava/io/LineNumberReader;->skipLF:Z

    #@1e
    .line 135
    :pswitch_2
    iget v1, p0, Ljava/io/LineNumberReader;->lineNumber:I

    #@20
    add-int/lit8 v1, v1, 0x1

    #@22
    iput v1, p0, Ljava/io/LineNumberReader;->lineNumber:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    monitor-exit v2

    #@25
    .line 136
    return v3

    #@26
    .line 124
    .end local v0    # "c":I
    :catchall_0
    move-exception v1

    #@27
    monitor-exit v2

    #@28
    throw v1

    #@29
    .line 131
    nop

    #@2a
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public read([CII)I
    .locals 5
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
    .line 163
    iget-object v4, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 164
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedReader;->read([CII)I

    #@6
    move-result v2

    #@7
    .line 166
    .local v2, "n":I
    move v1, p2

    #@8
    .local v1, "i":I
    :goto_0
    add-int v3, p2, v2

    #@a
    if-ge v1, v3, :cond_1

    #@c
    .line 167
    aget-char v0, p1, v1

    #@e
    .line 168
    .local v0, "c":I
    iget-boolean v3, p0, Ljava/io/LineNumberReader;->skipLF:Z

    #@10
    if-eqz v3, :cond_0

    #@12
    .line 169
    const/4 v3, 0x0

    #@13
    iput-boolean v3, p0, Ljava/io/LineNumberReader;->skipLF:Z

    #@15
    .line 170
    const/16 v3, 0xa

    #@17
    if-ne v0, v3, :cond_0

    #@19
    .line 166
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 173
    :cond_0
    packed-switch v0, :pswitch_data_0

    #@1f
    :pswitch_0
    goto :goto_1

    #@20
    .line 177
    :goto_2
    :pswitch_1
    iget v3, p0, Ljava/io/LineNumberReader;->lineNumber:I

    #@22
    add-int/lit8 v3, v3, 0x1

    #@24
    iput v3, p0, Ljava/io/LineNumberReader;->lineNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    goto :goto_1

    #@27
    .line 163
    .end local v0    # "c":I
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    #@28
    monitor-exit v4

    #@29
    throw v3

    #@2a
    .line 175
    .restart local v0    # "c":I
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :pswitch_2
    const/4 v3, 0x1

    #@2b
    :try_start_1
    iput-boolean v3, p0, Ljava/io/LineNumberReader;->skipLF:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    goto :goto_2

    #@2e
    .end local v0    # "c":I
    :cond_1
    monitor-exit v4

    #@2f
    .line 182
    return v2

    #@30
    .line 173
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public readLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 198
    iget-object v2, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 199
    :try_start_0
    iget-boolean v1, p0, Ljava/io/LineNumberReader;->skipLF:Z

    #@5
    invoke-super {p0, v1}, Ljava/io/BufferedReader;->readLine(Z)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 200
    .local v0, "l":Ljava/lang/String;
    const/4 v1, 0x0

    #@a
    iput-boolean v1, p0, Ljava/io/LineNumberReader;->skipLF:Z

    #@c
    .line 201
    if-eqz v0, :cond_0

    #@e
    .line 202
    iget v1, p0, Ljava/io/LineNumberReader;->lineNumber:I

    #@10
    add-int/lit8 v1, v1, 0x1

    #@12
    iput v1, p0, Ljava/io/LineNumberReader;->lineNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :cond_0
    monitor-exit v2

    #@15
    .line 203
    return-object v0

    #@16
    .line 198
    .end local v0    # "l":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1
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
    .line 274
    iget-object v1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 275
    :try_start_0
    invoke-super {p0}, Ljava/io/BufferedReader;->reset()V

    #@6
    .line 276
    iget v0, p0, Ljava/io/LineNumberReader;->markedLineNumber:I

    #@8
    iput v0, p0, Ljava/io/LineNumberReader;->lineNumber:I

    #@a
    .line 277
    iget-boolean v0, p0, Ljava/io/LineNumberReader;->markedSkipLF:Z

    #@c
    iput-boolean v0, p0, Ljava/io/LineNumberReader;->skipLF:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 273
    return-void

    #@10
    .line 274
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method public setLineNumber(I)V
    .locals 0
    .param p1, "lineNumber"    # I

    #@0
    .prologue
    .line 98
    iput p1, p0, Ljava/io/LineNumberReader;->lineNumber:I

    #@2
    .line 97
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
    .line 228
    cmp-long v4, p1, v8

    #@4
    if-gez v4, :cond_0

    #@6
    .line 229
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v5, "skip() value is negative"

    #@b
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v4

    #@f
    .line 230
    :cond_0
    const-wide/16 v4, 0x2000

    #@11
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@14
    move-result-wide v4

    #@15
    long-to-int v1, v4

    #@16
    .line 231
    .local v1, "nn":I
    iget-object v5, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    #@18
    monitor-enter v5

    #@19
    .line 232
    :try_start_0
    iget-object v4, p0, Ljava/io/LineNumberReader;->skipBuffer:[C

    #@1b
    if-eqz v4, :cond_1

    #@1d
    iget-object v4, p0, Ljava/io/LineNumberReader;->skipBuffer:[C

    #@1f
    array-length v4, v4

    #@20
    if-ge v4, v1, :cond_2

    #@22
    .line 233
    :cond_1
    new-array v4, v1, [C

    #@24
    iput-object v4, p0, Ljava/io/LineNumberReader;->skipBuffer:[C

    #@26
    .line 234
    :cond_2
    move-wide v2, p1

    #@27
    .line 235
    .local v2, "r":J
    :goto_0
    cmp-long v4, v2, v8

    #@29
    if-lez v4, :cond_3

    #@2b
    .line 236
    iget-object v4, p0, Ljava/io/LineNumberReader;->skipBuffer:[C

    #@2d
    int-to-long v6, v1

    #@2e
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    #@31
    move-result-wide v6

    #@32
    long-to-int v6, v6

    #@33
    const/4 v7, 0x0

    #@34
    invoke-virtual {p0, v4, v7, v6}, Ljava/io/LineNumberReader;->read([CII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    move-result v0

    #@38
    .line 237
    .local v0, "nc":I
    const/4 v4, -0x1

    #@39
    if-ne v0, v4, :cond_4

    #@3b
    .line 241
    .end local v0    # "nc":I
    :cond_3
    sub-long v6, p1, v2

    #@3d
    monitor-exit v5

    #@3e
    return-wide v6

    #@3f
    .line 239
    .restart local v0    # "nc":I
    :cond_4
    int-to-long v6, v0

    #@40
    sub-long/2addr v2, v6

    #@41
    goto :goto_0

    #@42
    .line 231
    .end local v0    # "nc":I
    .end local v2    # "r":J
    :catchall_0
    move-exception v4

    #@43
    monitor-exit v5

    #@44
    throw v4
.end method
