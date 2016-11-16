.class public Landroid/util/jar/StrictJarFile$RAFStream;
.super Ljava/io/InputStream;
.source "StrictJarFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/jar/StrictJarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RAFStream"
.end annotation


# instance fields
.field private endOffset:J

.field private offset:J

.field private final sharedRaf:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;J)V
    .locals 6
    .param p1, "raf"    # Ljava/io/RandomAccessFile;
    .param p2, "initialOffset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 409
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    #@3
    move-result-wide v4

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-wide v2, p2

    #@7
    invoke-direct/range {v0 .. v5}, Landroid/util/jar/StrictJarFile$RAFStream;-><init>(Ljava/io/RandomAccessFile;JJ)V

    #@a
    .line 408
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;JJ)V
    .locals 0
    .param p1, "raf"    # Ljava/io/RandomAccessFile;
    .param p2, "initialOffset"    # J
    .param p4, "endOffset"    # J

    #@0
    .prologue
    .line 402
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 403
    iput-object p1, p0, Landroid/util/jar/StrictJarFile$RAFStream;->sharedRaf:Ljava/io/RandomAccessFile;

    #@5
    .line 404
    iput-wide p2, p0, Landroid/util/jar/StrictJarFile$RAFStream;->offset:J

    #@7
    .line 405
    iput-wide p4, p0, Landroid/util/jar/StrictJarFile$RAFStream;->endOffset:J

    #@9
    .line 402
    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 413
    iget-wide v0, p0, Landroid/util/jar/StrictJarFile$RAFStream;->offset:J

    #@2
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$RAFStream;->endOffset:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-gez v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 417
    invoke-static {p0}, Llibcore/io/Streams;->readSingleByte(Ljava/io/InputStream;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public read([BII)I
    .locals 10
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
    .line 421
    iget-object v4, p0, Landroid/util/jar/StrictJarFile$RAFStream;->sharedRaf:Ljava/io/RandomAccessFile;

    #@2
    monitor-enter v4

    #@3
    .line 422
    :try_start_0
    iget-wide v6, p0, Landroid/util/jar/StrictJarFile$RAFStream;->endOffset:J

    #@5
    iget-wide v8, p0, Landroid/util/jar/StrictJarFile$RAFStream;->offset:J

    #@7
    sub-long v2, v6, v8

    #@9
    .line 423
    .local v2, "length":J
    int-to-long v6, p3

    #@a
    cmp-long v1, v6, v2

    #@c
    if-lez v1, :cond_0

    #@e
    .line 424
    long-to-int p3, v2

    #@f
    .line 426
    :cond_0
    iget-object v1, p0, Landroid/util/jar/StrictJarFile$RAFStream;->sharedRaf:Ljava/io/RandomAccessFile;

    #@11
    iget-wide v6, p0, Landroid/util/jar/StrictJarFile$RAFStream;->offset:J

    #@13
    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    #@16
    .line 427
    iget-object v1, p0, Landroid/util/jar/StrictJarFile$RAFStream;->sharedRaf:Ljava/io/RandomAccessFile;

    #@18
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    #@1b
    move-result v0

    #@1c
    .line 428
    .local v0, "count":I
    if-lez v0, :cond_1

    #@1e
    .line 429
    iget-wide v6, p0, Landroid/util/jar/StrictJarFile$RAFStream;->offset:J

    #@20
    int-to-long v8, v0

    #@21
    add-long/2addr v6, v8

    #@22
    iput-wide v6, p0, Landroid/util/jar/StrictJarFile$RAFStream;->offset:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    monitor-exit v4

    #@25
    .line 430
    return v0

    #@26
    .line 432
    :cond_1
    const/4 v1, -0x1

    #@27
    monitor-exit v4

    #@28
    return v1

    #@29
    .line 421
    .end local v0    # "count":I
    .end local v2    # "length":J
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit v4

    #@2b
    throw v1
.end method

.method public skip(J)J
    .locals 5
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 438
    iget-wide v0, p0, Landroid/util/jar/StrictJarFile$RAFStream;->endOffset:J

    #@2
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$RAFStream;->offset:J

    #@4
    sub-long/2addr v0, v2

    #@5
    cmp-long v0, p1, v0

    #@7
    if-lez v0, :cond_0

    #@9
    .line 439
    iget-wide v0, p0, Landroid/util/jar/StrictJarFile$RAFStream;->endOffset:J

    #@b
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$RAFStream;->offset:J

    #@d
    sub-long p1, v0, v2

    #@f
    .line 441
    :cond_0
    iget-wide v0, p0, Landroid/util/jar/StrictJarFile$RAFStream;->offset:J

    #@11
    add-long/2addr v0, p1

    #@12
    iput-wide v0, p0, Landroid/util/jar/StrictJarFile$RAFStream;->offset:J

    #@14
    .line 442
    return-wide p1
.end method
