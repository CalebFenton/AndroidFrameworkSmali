.class Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;
.super Ljava/util/zip/InflaterInputStream;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZipFileInflaterInputStream"
.end annotation


# instance fields
.field private volatile closeRequested:Z

.field private eof:Z

.field final synthetic this$0:Ljava/util/zip/ZipFile;

.field private final zfin:Ljava/util/zip/ZipFile$ZipFileInputStream;


# direct methods
.method constructor <init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipFile$ZipFileInputStream;Ljava/util/zip/Inflater;I)V
    .locals 1
    .param p1, "this$0"    # Ljava/util/zip/ZipFile;
    .param p2, "zfin"    # Ljava/util/zip/ZipFile$ZipFileInputStream;
    .param p3, "inf"    # Ljava/util/zip/Inflater;
    .param p4, "size"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 397
    iput-object p1, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->this$0:Ljava/util/zip/ZipFile;

    #@3
    .line 399
    invoke-direct {p0, p2, p3, p4}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    #@6
    .line 393
    iput-boolean v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->closeRequested:Z

    #@8
    .line 394
    iput-boolean v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->eof:Z

    #@a
    .line 400
    iput-object p2, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->zfin:Ljava/util/zip/ZipFile$ZipFileInputStream;

    #@c
    .line 398
    return-void
.end method


# virtual methods
.method public available()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 435
    iget-boolean v2, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->closeRequested:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 436
    const/4 v2, 0x0

    #@5
    return v2

    #@6
    .line 437
    :cond_0
    iget-object v2, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->zfin:Ljava/util/zip/ZipFile$ZipFileInputStream;

    #@8
    invoke-virtual {v2}, Ljava/util/zip/ZipFile$ZipFileInputStream;->size()J

    #@b
    move-result-wide v2

    #@c
    iget-object v4, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->inf:Ljava/util/zip/Inflater;

    #@e
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->getBytesWritten()J

    #@11
    move-result-wide v4

    #@12
    sub-long v0, v2, v4

    #@14
    .line 438
    .local v0, "avail":J
    const-wide/32 v2, 0x7fffffff

    #@17
    cmp-long v2, v0, v2

    #@19
    if-lez v2, :cond_1

    #@1b
    .line 439
    const v2, 0x7fffffff

    #@1e
    .line 438
    :goto_0
    return v2

    #@1f
    .line 439
    :cond_1
    long-to-int v2, v0

    #@20
    goto :goto_0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 404
    iget-boolean v1, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->closeRequested:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 405
    return-void

    #@5
    .line 406
    :cond_0
    const/4 v1, 0x1

    #@6
    iput-boolean v1, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->closeRequested:Z

    #@8
    .line 408
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    #@b
    .line 410
    iget-object v1, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->this$0:Ljava/util/zip/ZipFile;

    #@d
    invoke-static {v1}, Ljava/util/zip/ZipFile;->-get3(Ljava/util/zip/ZipFile;)Ljava/util/Map;

    #@10
    move-result-object v2

    #@11
    monitor-enter v2

    #@12
    .line 411
    :try_start_0
    iget-object v1, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->this$0:Ljava/util/zip/ZipFile;

    #@14
    invoke-static {v1}, Ljava/util/zip/ZipFile;->-get3(Ljava/util/zip/ZipFile;)Ljava/util/Map;

    #@17
    move-result-object v1

    #@18
    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Ljava/util/zip/Inflater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .local v0, "inf":Ljava/util/zip/Inflater;
    monitor-exit v2

    #@1f
    .line 413
    if-eqz v0, :cond_1

    #@21
    .line 414
    iget-object v1, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->this$0:Ljava/util/zip/ZipFile;

    #@23
    invoke-static {v1, v0}, Ljava/util/zip/ZipFile;->-wrap9(Ljava/util/zip/ZipFile;Ljava/util/zip/Inflater;)V

    #@26
    .line 403
    :cond_1
    return-void

    #@27
    .line 410
    .end local v0    # "inf":Ljava/util/zip/Inflater;
    :catchall_0
    move-exception v1

    #@28
    monitor-exit v2

    #@29
    throw v1
.end method

.method protected fill()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 422
    iget-boolean v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->eof:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 423
    new-instance v0, Ljava/io/EOFException;

    #@8
    const-string/jumbo v1, "Unexpected end of ZLIB input stream"

    #@b
    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 425
    :cond_0
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->in:Ljava/io/InputStream;

    #@11
    iget-object v1, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->buf:[B

    #@13
    iget-object v2, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->buf:[B

    #@15
    array-length v2, v2

    #@16
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    #@19
    move-result v0

    #@1a
    iput v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->len:I

    #@1c
    .line 426
    iget v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->len:I

    #@1e
    const/4 v1, -0x1

    #@1f
    if-ne v0, v1, :cond_1

    #@21
    .line 427
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->buf:[B

    #@23
    aput-byte v3, v0, v3

    #@25
    .line 428
    iput v4, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->len:I

    #@27
    .line 429
    iput-boolean v4, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->eof:Z

    #@29
    .line 431
    :cond_1
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->inf:Ljava/util/zip/Inflater;

    #@2b
    iget-object v1, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->buf:[B

    #@2d
    iget v2, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->len:I

    #@2f
    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Inflater;->setInput([BII)V

    #@32
    .line 421
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 443
    invoke-virtual {p0}, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->close()V

    #@3
    .line 442
    return-void
.end method
