.class public abstract Ljava/io/Reader;
.super Ljava/lang/Object;
.source "Reader.java"

# interfaces
.implements Ljava/lang/Readable;
.implements Ljava/io/Closeable;


# instance fields
.field protected lock:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    iput-object p0, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    #@5
    .line 49
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "lock"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    if-nez p1, :cond_0

    #@5
    .line 64
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "lock == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 66
    :cond_0
    iput-object p1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    #@10
    .line 62
    return-void
.end method


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 98
    new-instance v0, Ljava/io/IOException;

    #@2
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #@5
    throw v0
.end method

.method public markSupported()Z
    .locals 1

    #@0
    .prologue
    .line 109
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 123
    iget-object v2, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 124
    const/4 v1, 0x1

    #@5
    :try_start_0
    new-array v0, v1, [C

    #@7
    .line 125
    .local v0, "charArray":[C
    const/4 v1, 0x0

    #@8
    const/4 v3, 0x1

    #@9
    invoke-virtual {p0, v0, v1, v3}, Ljava/io/Reader;->read([CII)I

    #@c
    move-result v1

    #@d
    if-eq v1, v4, :cond_0

    #@f
    .line 126
    const/4 v1, 0x0

    #@10
    aget-char v1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v2

    #@13
    return v1

    #@14
    :cond_0
    monitor-exit v2

    #@15
    .line 128
    return v4

    #@16
    .line 123
    .end local v0    # "charArray":[C
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .locals 4
    .param p1, "target"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 243
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->length()I

    #@4
    move-result v1

    #@5
    .line 244
    .local v1, "length":I
    new-array v0, v1, [C

    #@7
    .line 245
    .local v0, "buf":[C
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    #@a
    move-result v2

    #@b
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@e
    move-result v1

    #@f
    .line 246
    if-lez v1, :cond_0

    #@11
    .line 247
    invoke-virtual {p1, v0, v3, v1}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    #@14
    .line 249
    :cond_0
    return v1
.end method

.method public read([C)I
    .locals 2
    .param p1, "buffer"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 141
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/Reader;->read([CII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public abstract read([CII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 169
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 185
    new-instance v0, Ljava/io/IOException;

    #@2
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #@5
    throw v0
.end method

.method public skip(J)J
    .locals 13
    .param p1, "charCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 204
    const-wide/16 v6, 0x0

    #@2
    cmp-long v5, p1, v6

    #@4
    if-gez v5, :cond_0

    #@6
    .line 205
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v6, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v7, "charCount < 0: "

    #@10
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v6

    #@14
    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    move-result-object v6

    #@18
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v6

    #@1c
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v5

    #@20
    .line 207
    :cond_0
    iget-object v6, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    #@22
    monitor-enter v6

    #@23
    .line 208
    const-wide/16 v2, 0x0

    #@25
    .line 209
    .local v2, "skipped":J
    const-wide/16 v8, 0x200

    #@27
    cmp-long v5, p1, v8

    #@29
    if-gez v5, :cond_2

    #@2b
    long-to-int v4, p1

    #@2c
    .line 210
    .local v4, "toRead":I
    :goto_0
    :try_start_0
    new-array v0, v4, [C

    #@2e
    .line 211
    .local v0, "charsSkipped":[C
    :cond_1
    :goto_1
    cmp-long v5, v2, p1

    #@30
    if-gez v5, :cond_5

    #@32
    .line 212
    const/4 v5, 0x0

    #@33
    invoke-virtual {p0, v0, v5, v4}, Ljava/io/Reader;->read([CII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    move-result v1

    #@37
    .line 213
    .local v1, "read":I
    const/4 v5, -0x1

    #@38
    if-ne v1, v5, :cond_3

    #@3a
    monitor-exit v6

    #@3b
    .line 214
    return-wide v2

    #@3c
    .line 209
    .end local v0    # "charsSkipped":[C
    .end local v1    # "read":I
    .end local v4    # "toRead":I
    :cond_2
    const/16 v4, 0x200

    #@3e
    .restart local v4    # "toRead":I
    goto :goto_0

    #@3f
    .line 216
    .restart local v0    # "charsSkipped":[C
    .restart local v1    # "read":I
    :cond_3
    int-to-long v8, v1

    #@40
    add-long/2addr v2, v8

    #@41
    .line 217
    if-ge v1, v4, :cond_4

    #@43
    monitor-exit v6

    #@44
    .line 218
    return-wide v2

    #@45
    .line 220
    :cond_4
    sub-long v8, p1, v2

    #@47
    int-to-long v10, v4

    #@48
    cmp-long v5, v8, v10

    #@4a
    if-gez v5, :cond_1

    #@4c
    .line 221
    sub-long v8, p1, v2

    #@4e
    long-to-int v4, v8

    #@4f
    goto :goto_1

    #@50
    .end local v1    # "read":I
    :cond_5
    monitor-exit v6

    #@51
    .line 224
    return-wide v2

    #@52
    .line 207
    .end local v0    # "charsSkipped":[C
    :catchall_0
    move-exception v5

    #@53
    monitor-exit v6

    #@54
    throw v5
.end method
