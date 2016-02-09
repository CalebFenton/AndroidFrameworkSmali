.class public abstract Ljava/io/InputStream;
.super Ljava/lang/Object;
.source "InputStream.java"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 102
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 112
    return-void
.end method

.method public mark(I)V
    .locals 0
    .param p1, "readlimit"    # I

    #@0
    .prologue
    .line 131
    return-void
.end method

.method public markSupported()Z
    .locals 1

    #@0
    .prologue
    .line 144
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public abstract read()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 162
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/InputStream;->read([BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 177
    array-length v4, p1

    #@2
    invoke-static {v4, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@5
    .line 178
    const/4 v2, 0x0

    #@6
    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_3

    #@8
    .line 181
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v0

    #@c
    .local v0, "c":I
    if-ne v0, v3, :cond_2

    #@e
    .line 182
    if-nez v2, :cond_0

    #@10
    move v2, v3

    #@11
    .end local v2    # "i":I
    :cond_0
    return v2

    #@12
    .line 184
    .end local v0    # "c":I
    .restart local v2    # "i":I
    :catch_0
    move-exception v1

    #@13
    .line 185
    .local v1, "e":Ljava/io/IOException;
    if-eqz v2, :cond_1

    #@15
    .line 186
    return v2

    #@16
    .line 188
    :cond_1
    throw v1

    #@17
    .line 190
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "c":I
    :cond_2
    add-int v4, p2, v2

    #@19
    int-to-byte v5, v0

    #@1a
    aput-byte v5, p1, v4

    #@1c
    .line 178
    add-int/lit8 v2, v2, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 192
    .end local v0    # "c":I
    :cond_3
    return p3
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 208
    :try_start_0
    new-instance v0, Ljava/io/IOException;

    #@3
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #@6
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public skip(J)J
    .locals 3
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 229
    invoke-static {p0, p1, p2}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method
