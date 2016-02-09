.class public Ljava/util/zip/ZipFile$RAFStream;
.super Ljava/io/InputStream;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/zip/ZipFile;
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
.method static synthetic -get0(Ljava/util/zip/ZipFile$RAFStream;)J
    .locals 2

    #@0
    iget-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    #@2
    return-wide v0
.end method

.method static synthetic -set0(Ljava/util/zip/ZipFile$RAFStream;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Ljava/util/zip/ZipFile$RAFStream;->endOffset:J

    #@2
    return-wide p1
.end method

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
    .line 524
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
    invoke-direct/range {v0 .. v5}, Ljava/util/zip/ZipFile$RAFStream;-><init>(Ljava/io/RandomAccessFile;JJ)V

    #@a
    .line 523
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;JJ)V
    .locals 0
    .param p1, "raf"    # Ljava/io/RandomAccessFile;
    .param p2, "initialOffset"    # J
    .param p4, "endOffset"    # J

    #@0
    .prologue
    .line 517
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 518
    iput-object p1, p0, Ljava/util/zip/ZipFile$RAFStream;->sharedRaf:Ljava/io/RandomAccessFile;

    #@5
    .line 519
    iput-wide p2, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    #@7
    .line 520
    iput-wide p4, p0, Ljava/util/zip/ZipFile$RAFStream;->endOffset:J

    #@9
    .line 517
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
    .line 528
    iget-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    #@2
    iget-wide v2, p0, Ljava/util/zip/ZipFile$RAFStream;->endOffset:J

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

.method public fill(Ljava/util/zip/Inflater;I)I
    .locals 8
    .param p1, "inflater"    # Ljava/util/zip/Inflater;
    .param p2, "nativeEndBufSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 561
    iget-object v3, p0, Ljava/util/zip/ZipFile$RAFStream;->sharedRaf:Ljava/io/RandomAccessFile;

    #@2
    monitor-enter v3

    #@3
    .line 562
    :try_start_0
    iget-wide v4, p0, Ljava/util/zip/ZipFile$RAFStream;->endOffset:J

    #@5
    iget-wide v6, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    #@7
    sub-long/2addr v4, v6

    #@8
    long-to-int v2, v4

    #@9
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    #@c
    move-result v1

    #@d
    .line 563
    .local v1, "len":I
    iget-object v2, p0, Ljava/util/zip/ZipFile$RAFStream;->sharedRaf:Ljava/io/RandomAccessFile;

    #@f
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    #@12
    move-result-object v2

    #@13
    iget-wide v4, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    #@15
    invoke-virtual {p1, v2, v4, v5, p2}, Ljava/util/zip/Inflater;->setFileInput(Ljava/io/FileDescriptor;JI)I

    #@18
    move-result v0

    #@19
    .line 566
    .local v0, "cnt":I
    int-to-long v4, v0

    #@1a
    invoke-virtual {p0, v4, v5}, Ljava/util/zip/ZipFile$RAFStream;->skip(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    monitor-exit v3

    #@1e
    .line 567
    return v1

    #@1f
    .line 561
    .end local v0    # "cnt":I
    .end local v1    # "len":I
    :catchall_0
    move-exception v2

    #@20
    monitor-exit v3

    #@21
    throw v2
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
    .line 532
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
    .line 536
    iget-object v4, p0, Ljava/util/zip/ZipFile$RAFStream;->sharedRaf:Ljava/io/RandomAccessFile;

    #@2
    monitor-enter v4

    #@3
    .line 537
    :try_start_0
    iget-wide v6, p0, Ljava/util/zip/ZipFile$RAFStream;->endOffset:J

    #@5
    iget-wide v8, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    #@7
    sub-long v2, v6, v8

    #@9
    .line 538
    .local v2, "length":J
    int-to-long v6, p3

    #@a
    cmp-long v1, v6, v2

    #@c
    if-lez v1, :cond_0

    #@e
    .line 539
    long-to-int p3, v2

    #@f
    .line 541
    :cond_0
    iget-object v1, p0, Ljava/util/zip/ZipFile$RAFStream;->sharedRaf:Ljava/io/RandomAccessFile;

    #@11
    iget-wide v6, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    #@13
    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    #@16
    .line 542
    iget-object v1, p0, Ljava/util/zip/ZipFile$RAFStream;->sharedRaf:Ljava/io/RandomAccessFile;

    #@18
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    #@1b
    move-result v0

    #@1c
    .line 543
    .local v0, "count":I
    if-lez v0, :cond_1

    #@1e
    .line 544
    iget-wide v6, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    #@20
    int-to-long v8, v0

    #@21
    add-long/2addr v6, v8

    #@22
    iput-wide v6, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    monitor-exit v4

    #@25
    .line 545
    return v0

    #@26
    .line 547
    :cond_1
    const/4 v1, -0x1

    #@27
    monitor-exit v4

    #@28
    return v1

    #@29
    .line 536
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
    .line 553
    iget-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->endOffset:J

    #@2
    iget-wide v2, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    #@4
    sub-long/2addr v0, v2

    #@5
    cmp-long v0, p1, v0

    #@7
    if-lez v0, :cond_0

    #@9
    .line 554
    iget-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->endOffset:J

    #@b
    iget-wide v2, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    #@d
    sub-long p1, v0, v2

    #@f
    .line 556
    :cond_0
    iget-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    #@11
    add-long/2addr v0, p1

    #@12
    iput-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    #@14
    .line 557
    return-wide p1
.end method
