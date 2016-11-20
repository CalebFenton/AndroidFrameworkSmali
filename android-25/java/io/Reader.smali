.class public abstract Ljava/io/Reader;
.super Ljava/lang/Object;
.source "Reader.java"

# interfaces
.implements Ljava/lang/Readable;
.implements Ljava/io/Closeable;


# static fields
.field private static final maxSkipBufferSize:I = 0x2000


# instance fields
.field protected lock:Ljava/lang/Object;

.field private skipBuffer:[C


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 163
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/io/Reader;->skipBuffer:[C

    #@6
    .line 67
    iput-object p0, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    #@8
    .line 66
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "lock"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 163
    iput-object v0, p0, Ljava/io/Reader;->skipBuffer:[C

    #@6
    .line 77
    if-nez p1, :cond_0

    #@8
    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    #@a
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@d
    throw v0

    #@e
    .line 80
    :cond_0
    iput-object p1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    #@10
    .line 76
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
    .locals 2
    .param p1, "readAheadLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 232
    new-instance v0, Ljava/io/IOException;

    #@2
    const-string/jumbo v1, "mark() not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public markSupported()Z
    .locals 1

    #@0
    .prologue
    .line 215
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
    const/4 v1, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, -0x1

    #@3
    .line 120
    new-array v0, v1, [C

    #@5
    .line 121
    .local v0, "cb":[C
    invoke-virtual {p0, v0, v3, v1}, Ljava/io/Reader;->read([CII)I

    #@8
    move-result v1

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 122
    return v2

    #@c
    .line 124
    :cond_0
    aget-char v1, v0, v3

    #@e
    return v1
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
    .line 98
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    #@4
    move-result v1

    #@5
    .line 99
    .local v1, "len":I
    new-array v0, v1, [C

    #@7
    .line 100
    .local v0, "cbuf":[C
    invoke-virtual {p0, v0, v3, v1}, Ljava/io/Reader;->read([CII)I

    #@a
    move-result v2

    #@b
    .line 101
    .local v2, "n":I
    if-lez v2, :cond_0

    #@d
    .line 102
    invoke-virtual {p1, v0, v3, v2}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    #@10
    .line 103
    :cond_0
    return v2
.end method

.method public read([C)I
    .locals 2
    .param p1, "cbuf"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 140
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
    .line 204
    const/4 v0, 0x0

    #@1
    return v0
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
    .line 249
    new-instance v0, Ljava/io/IOException;

    #@2
    const-string/jumbo v1, "reset() not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
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
    .line 177
    cmp-long v4, p1, v8

    #@4
    if-gez v4, :cond_0

    #@6
    .line 178
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v5, "skip value is negative"

    #@b
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v4

    #@f
    .line 179
    :cond_0
    const-wide/16 v4, 0x2000

    #@11
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@14
    move-result-wide v4

    #@15
    long-to-int v1, v4

    #@16
    .line 180
    .local v1, "nn":I
    iget-object v5, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    #@18
    monitor-enter v5

    #@19
    .line 181
    :try_start_0
    iget-object v4, p0, Ljava/io/Reader;->skipBuffer:[C

    #@1b
    if-eqz v4, :cond_1

    #@1d
    iget-object v4, p0, Ljava/io/Reader;->skipBuffer:[C

    #@1f
    array-length v4, v4

    #@20
    if-ge v4, v1, :cond_2

    #@22
    .line 182
    :cond_1
    new-array v4, v1, [C

    #@24
    iput-object v4, p0, Ljava/io/Reader;->skipBuffer:[C

    #@26
    .line 183
    :cond_2
    move-wide v2, p1

    #@27
    .line 184
    .local v2, "r":J
    :goto_0
    cmp-long v4, v2, v8

    #@29
    if-lez v4, :cond_3

    #@2b
    .line 185
    iget-object v4, p0, Ljava/io/Reader;->skipBuffer:[C

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
    invoke-virtual {p0, v4, v7, v6}, Ljava/io/Reader;->read([CII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    move-result v0

    #@38
    .line 186
    .local v0, "nc":I
    const/4 v4, -0x1

    #@39
    if-ne v0, v4, :cond_4

    #@3b
    .line 190
    .end local v0    # "nc":I
    :cond_3
    sub-long v6, p1, v2

    #@3d
    monitor-exit v5

    #@3e
    return-wide v6

    #@3f
    .line 188
    .restart local v0    # "nc":I
    :cond_4
    int-to-long v6, v0

    #@40
    sub-long/2addr v2, v6

    #@41
    goto :goto_0

    #@42
    .line 180
    .end local v0    # "nc":I
    .end local v2    # "r":J
    :catchall_0
    move-exception v4

    #@43
    monitor-exit v5

    #@44
    throw v4
.end method
