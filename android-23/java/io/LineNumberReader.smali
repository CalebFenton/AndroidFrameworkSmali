.class public Ljava/io/LineNumberReader;
.super Ljava/io/BufferedReader;
.source "LineNumberReader.java"


# instance fields
.field private lastWasCR:Z

.field private lineNumber:I

.field private markedLastWasCR:Z

.field private markedLineNumber:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;

    #@0
    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@3
    .line 30
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/io/LineNumberReader;->markedLineNumber:I

    #@6
    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "size"    # I

    #@0
    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    #@3
    .line 30
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/io/LineNumberReader;->markedLineNumber:I

    #@6
    .line 58
    return-void
.end method


# virtual methods
.method public getLineNumber()I
    .locals 2

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 69
    :try_start_0
    iget v1, p0, Ljava/io/LineNumberReader;->lineNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 68
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public mark(I)V
    .locals 2
    .param p1, "readlimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 91
    iget-object v1, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 92
    :try_start_0
    invoke-super {p0, p1}, Ljava/io/BufferedReader;->mark(I)V

    #@6
    .line 93
    iget v0, p0, Ljava/io/LineNumberReader;->lineNumber:I

    #@8
    iput v0, p0, Ljava/io/LineNumberReader;->markedLineNumber:I

    #@a
    .line 94
    iget-boolean v0, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    #@c
    iput-boolean v0, p0, Ljava/io/LineNumberReader;->markedLastWasCR:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 90
    return-void

    #@10
    .line 91
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
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
    .line 116
    iget-object v2, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 117
    :try_start_0
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    #@6
    move-result v0

    #@7
    .line 118
    .local v0, "ch":I
    const/16 v1, 0xa

    #@9
    if-ne v0, v1, :cond_0

    #@b
    iget-boolean v1, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 119
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    #@12
    move-result v0

    #@13
    .line 121
    :cond_0
    const/4 v1, 0x0

    #@14
    iput-boolean v1, p0, Ljava/io/LineNumberReader;->lastWasCR:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 122
    packed-switch v0, :pswitch_data_0

    #@19
    :goto_0
    :pswitch_0
    monitor-exit v2

    #@1a
    .line 130
    return v0

    #@1b
    .line 124
    :pswitch_1
    const/16 v0, 0xa

    #@1d
    .line 125
    const/4 v1, 0x1

    #@1e
    :try_start_1
    iput-boolean v1, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    #@20
    .line 128
    :pswitch_2
    iget v1, p0, Ljava/io/LineNumberReader;->lineNumber:I

    #@22
    add-int/lit8 v1, v1, 0x1

    #@24
    iput v1, p0, Ljava/io/LineNumberReader;->lineNumber:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    goto :goto_0

    #@27
    .line 116
    .end local v0    # "ch":I
    :catchall_0
    move-exception v1

    #@28
    monitor-exit v2

    #@29
    throw v1

    #@2a
    .line 122
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
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 149
    iget-object v4, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    #@3
    monitor-enter v4

    #@4
    .line 150
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedReader;->read([CII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result v2

    #@8
    .line 151
    .local v2, "read":I
    if-ne v2, v3, :cond_0

    #@a
    monitor-exit v4

    #@b
    .line 152
    return v3

    #@c
    .line 154
    :cond_0
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_4

    #@f
    .line 155
    add-int v3, p2, v1

    #@11
    :try_start_1
    aget-char v0, p1, v3

    #@13
    .line 156
    .local v0, "ch":C
    const/16 v3, 0xd

    #@15
    if-ne v0, v3, :cond_1

    #@17
    .line 157
    iget v3, p0, Ljava/io/LineNumberReader;->lineNumber:I

    #@19
    add-int/lit8 v3, v3, 0x1

    #@1b
    iput v3, p0, Ljava/io/LineNumberReader;->lineNumber:I

    #@1d
    .line 158
    const/4 v3, 0x1

    #@1e
    iput-boolean v3, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    #@20
    .line 154
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 159
    :cond_1
    const/16 v3, 0xa

    #@25
    if-ne v0, v3, :cond_3

    #@27
    .line 160
    iget-boolean v3, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    #@29
    if-nez v3, :cond_2

    #@2b
    .line 161
    iget v3, p0, Ljava/io/LineNumberReader;->lineNumber:I

    #@2d
    add-int/lit8 v3, v3, 0x1

    #@2f
    iput v3, p0, Ljava/io/LineNumberReader;->lineNumber:I

    #@31
    .line 163
    :cond_2
    const/4 v3, 0x0

    #@32
    iput-boolean v3, p0, Ljava/io/LineNumberReader;->lastWasCR:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    goto :goto_1

    #@35
    .line 149
    .end local v0    # "ch":C
    .end local v1    # "i":I
    .end local v2    # "read":I
    :catchall_0
    move-exception v3

    #@36
    monitor-exit v4

    #@37
    throw v3

    #@38
    .line 165
    .restart local v0    # "ch":C
    .restart local v1    # "i":I
    .restart local v2    # "read":I
    :cond_3
    const/4 v3, 0x0

    #@39
    :try_start_2
    iput-boolean v3, p0, Ljava/io/LineNumberReader;->lastWasCR:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3b
    goto :goto_1

    #@3c
    .end local v0    # "ch":C
    :cond_4
    monitor-exit v4

    #@3d
    .line 168
    return v2
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
    .line 185
    iget-object v2, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 186
    :try_start_0
    iget-boolean v1, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 187
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->chompNewline()V

    #@a
    .line 188
    const/4 v1, 0x0

    #@b
    iput-boolean v1, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    #@d
    .line 190
    :cond_0
    invoke-super {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 191
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@13
    .line 192
    iget v1, p0, Ljava/io/LineNumberReader;->lineNumber:I

    #@15
    add-int/lit8 v1, v1, 0x1

    #@17
    iput v1, p0, Ljava/io/LineNumberReader;->lineNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :cond_1
    monitor-exit v2

    #@1a
    .line 194
    return-object v0

    #@1b
    .line 185
    .end local v0    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
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
    .line 212
    iget-object v1, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 213
    :try_start_0
    invoke-super {p0}, Ljava/io/BufferedReader;->reset()V

    #@6
    .line 214
    iget v0, p0, Ljava/io/LineNumberReader;->markedLineNumber:I

    #@8
    iput v0, p0, Ljava/io/LineNumberReader;->lineNumber:I

    #@a
    .line 215
    iget-boolean v0, p0, Ljava/io/LineNumberReader;->markedLastWasCR:Z

    #@c
    iput-boolean v0, p0, Ljava/io/LineNumberReader;->lastWasCR:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 211
    return-void

    #@10
    .line 212
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method public setLineNumber(I)V
    .locals 2
    .param p1, "lineNumber"    # I

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 231
    :try_start_0
    iput p1, p0, Ljava/io/LineNumberReader;->lineNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 229
    return-void

    #@7
    .line 230
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public skip(J)J
    .locals 5
    .param p1, "charCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 253
    const-wide/16 v2, 0x0

    #@2
    cmp-long v1, p1, v2

    #@4
    if-gez v1, :cond_0

    #@6
    .line 254
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "charCount < 0: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 256
    :cond_0
    iget-object v1, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    #@22
    monitor-enter v1

    #@23
    .line 257
    const/4 v0, 0x0

    #@24
    .local v0, "i":I
    :goto_0
    int-to-long v2, v0

    #@25
    cmp-long v2, v2, p1

    #@27
    if-gez v2, :cond_2

    #@29
    .line 258
    :try_start_0
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    move-result v2

    #@2d
    const/4 v3, -0x1

    #@2e
    if-ne v2, v3, :cond_1

    #@30
    .line 259
    int-to-long v2, v0

    #@31
    monitor-exit v1

    #@32
    return-wide v2

    #@33
    .line 257
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@35
    goto :goto_0

    #@36
    :cond_2
    monitor-exit v1

    #@37
    .line 262
    return-wide p1

    #@38
    .line 256
    :catchall_0
    move-exception v2

    #@39
    monitor-exit v1

    #@3a
    throw v2
.end method
