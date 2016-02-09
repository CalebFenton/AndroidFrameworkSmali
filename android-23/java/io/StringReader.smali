.class public Ljava/io/StringReader;
.super Ljava/io/Reader;
.source "StringReader.java"


# instance fields
.field private count:I

.field private markpos:I

.field private pos:I

.field private str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    #@3
    .line 31
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/io/StringReader;->markpos:I

    #@6
    .line 46
    iput-object p1, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    #@8
    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b
    move-result v0

    #@c
    iput v0, p0, Ljava/io/StringReader;->count:I

    #@e
    .line 45
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
    .line 96
    invoke-direct {p0}, Ljava/io/StringReader;->isClosed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 97
    new-instance v0, Ljava/io/IOException;

    #@8
    const-string/jumbo v1, "StringReader is closed"

    #@b
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 95
    :cond_0
    return-void
.end method

.method private isClosed()Z
    .locals 1

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

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


# virtual methods
.method public close()V
    .locals 1

    #@0
    .prologue
    .line 57
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    #@3
    .line 56
    return-void
.end method

.method public mark(I)V
    .locals 3
    .param p1, "readLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    if-gez p1, :cond_0

    #@2
    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "readLimit < 0: "

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
    .line 89
    :cond_0
    iget-object v1, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    #@1e
    monitor-enter v1

    #@1f
    .line 90
    :try_start_0
    invoke-direct {p0}, Ljava/io/StringReader;->checkNotClosed()V

    #@22
    .line 91
    iget v0, p0, Ljava/io/StringReader;->pos:I

    #@24
    iput v0, p0, Ljava/io/StringReader;->markpos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    monitor-exit v1

    #@27
    .line 84
    return-void

    #@28
    .line 89
    :catchall_0
    move-exception v0

    #@29
    monitor-exit v1

    #@2a
    throw v0
.end method

.method public markSupported()Z
    .locals 1

    #@0
    .prologue
    .line 109
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
    .line 124
    iget-object v1, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 125
    :try_start_0
    invoke-direct {p0}, Ljava/io/StringReader;->checkNotClosed()V

    #@6
    .line 126
    iget v0, p0, Ljava/io/StringReader;->pos:I

    #@8
    iget v2, p0, Ljava/io/StringReader;->count:I

    #@a
    if-eq v0, v2, :cond_0

    #@c
    .line 127
    iget-object v0, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    #@e
    iget v2, p0, Ljava/io/StringReader;->pos:I

    #@10
    add-int/lit8 v3, v2, 0x1

    #@12
    iput v3, p0, Ljava/io/StringReader;->pos:I

    #@14
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result v0

    #@18
    monitor-exit v1

    #@19
    return v0

    #@1a
    .line 129
    :cond_0
    const/4 v0, -0x1

    #@1b
    monitor-exit v1

    #@1c
    return v0

    #@1d
    .line 124
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
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
    const/4 v4, 0x0

    #@1
    .line 146
    iget-object v3, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    #@3
    monitor-enter v3

    #@4
    .line 147
    :try_start_0
    invoke-direct {p0}, Ljava/io/StringReader;->checkNotClosed()V

    #@7
    .line 148
    array-length v2, p1

    #@8
    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 149
    if-nez p3, :cond_0

    #@d
    monitor-exit v3

    #@e
    .line 150
    return v4

    #@f
    .line 152
    :cond_0
    :try_start_1
    iget v2, p0, Ljava/io/StringReader;->pos:I

    #@11
    iget v4, p0, Ljava/io/StringReader;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    if-ne v2, v4, :cond_1

    #@15
    .line 153
    const/4 v2, -0x1

    #@16
    monitor-exit v3

    #@17
    return v2

    #@18
    .line 155
    :cond_1
    :try_start_2
    iget v2, p0, Ljava/io/StringReader;->pos:I

    #@1a
    add-int/2addr v2, p3

    #@1b
    iget v4, p0, Ljava/io/StringReader;->count:I

    #@1d
    if-le v2, v4, :cond_2

    #@1f
    iget v0, p0, Ljava/io/StringReader;->count:I

    #@21
    .line 156
    .local v0, "end":I
    :goto_0
    iget-object v2, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    #@23
    iget v4, p0, Ljava/io/StringReader;->pos:I

    #@25
    invoke-virtual {v2, v4, v0, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    #@28
    .line 157
    iget v2, p0, Ljava/io/StringReader;->pos:I

    #@2a
    sub-int v1, v0, v2

    #@2c
    .line 158
    .local v1, "read":I
    iput v0, p0, Ljava/io/StringReader;->pos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2e
    monitor-exit v3

    #@2f
    .line 159
    return v1

    #@30
    .line 155
    .end local v0    # "end":I
    .end local v1    # "read":I
    :cond_2
    :try_start_3
    iget v2, p0, Ljava/io/StringReader;->pos:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@32
    add-int v0, v2, p3

    #@34
    .restart local v0    # "end":I
    goto :goto_0

    #@35
    .line 146
    .end local v0    # "end":I
    :catchall_0
    move-exception v2

    #@36
    monitor-exit v3

    #@37
    throw v2
.end method

.method public ready()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 175
    iget-object v0, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 176
    :try_start_0
    invoke-direct {p0}, Ljava/io/StringReader;->checkNotClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    .line 177
    const/4 v1, 0x1

    #@7
    monitor-exit v0

    #@8
    return v1

    #@9
    .line 175
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
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
    .line 194
    iget-object v1, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 195
    :try_start_0
    invoke-direct {p0}, Ljava/io/StringReader;->checkNotClosed()V

    #@6
    .line 196
    iget v0, p0, Ljava/io/StringReader;->markpos:I

    #@8
    const/4 v2, -0x1

    #@9
    if-eq v0, v2, :cond_0

    #@b
    iget v0, p0, Ljava/io/StringReader;->markpos:I

    #@d
    :goto_0
    iput v0, p0, Ljava/io/StringReader;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v1

    #@10
    .line 193
    return-void

    #@11
    .line 196
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0

    #@13
    .line 194
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method public skip(J)J
    .locals 7
    .param p1, "charCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 222
    iget-object v3, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 223
    :try_start_0
    invoke-direct {p0}, Ljava/io/StringReader;->checkNotClosed()V

    #@6
    .line 225
    iget v2, p0, Ljava/io/StringReader;->pos:I

    #@8
    neg-int v1, v2

    #@9
    .line 226
    .local v1, "minSkip":I
    iget v2, p0, Ljava/io/StringReader;->count:I

    #@b
    iget v4, p0, Ljava/io/StringReader;->pos:I

    #@d
    sub-int v0, v2, v4

    #@f
    .line 228
    .local v0, "maxSkip":I
    if-eqz v0, :cond_0

    #@11
    int-to-long v4, v0

    #@12
    cmp-long v2, p1, v4

    #@14
    if-lez v2, :cond_2

    #@16
    .line 229
    :cond_0
    int-to-long p1, v0

    #@17
    .line 234
    :cond_1
    :goto_0
    iget v2, p0, Ljava/io/StringReader;->pos:I

    #@19
    int-to-long v4, v2

    #@1a
    add-long/2addr v4, p1

    #@1b
    long-to-int v2, v4

    #@1c
    iput v2, p0, Ljava/io/StringReader;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    monitor-exit v3

    #@1f
    .line 235
    return-wide p1

    #@20
    .line 230
    :cond_2
    int-to-long v4, v1

    #@21
    cmp-long v2, p1, v4

    #@23
    if-gez v2, :cond_1

    #@25
    .line 231
    int-to-long p1, v1

    #@26
    goto :goto_0

    #@27
    .line 222
    .end local v0    # "maxSkip":I
    .end local v1    # "minSkip":I
    :catchall_0
    move-exception v2

    #@28
    monitor-exit v3

    #@29
    throw v2
.end method
