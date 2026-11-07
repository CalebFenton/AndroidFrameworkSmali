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
.field private final blacklist cleanable:Ljava/lang/ref/Cleaner$Cleanable;

.field private volatile greylist-max-o closeRequested:Z

.field private greylist-max-o eof:Z

.field final synthetic blacklist this$0:Ljava/util/zip/ZipFile;


# direct methods
.method constructor blacklist <init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipFile$ZipFileInputStream;Ljava/util/zip/ZipFile$CleanableResource;I)V
    .registers 11
    .param p2, "zfin"    # Ljava/util/zip/ZipFile$ZipFileInputStream;
    .param p3, "res"    # Ljava/util/zip/ZipFile$CleanableResource;
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 465
    invoke-virtual {p3}, Ljava/util/zip/ZipFile$CleanableResource;->getInflater()Ljava/util/zip/Inflater;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .end local p2    # "zfin":Ljava/util/zip/ZipFile$ZipFileInputStream;
    .end local p3    # "res":Ljava/util/zip/ZipFile$CleanableResource;
    .end local p4    # "size":I
    .local v2, "zfin":Ljava/util/zip/ZipFile$ZipFileInputStream;
    .local v3, "res":Ljava/util/zip/ZipFile$CleanableResource;
    .local v5, "size":I
    invoke-direct/range {v0 .. v5}, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;-><init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipFile$ZipFileInputStream;Ljava/util/zip/ZipFile$CleanableResource;Ljava/util/zip/Inflater;I)V

    .line 466
    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipFile$ZipFileInputStream;Ljava/util/zip/ZipFile$CleanableResource;Ljava/util/zip/Inflater;I)V
    .registers 7
    .param p2, "zfin"    # Ljava/util/zip/ZipFile$ZipFileInputStream;
    .param p3, "res"    # Ljava/util/zip/ZipFile$CleanableResource;
    .param p4, "inf"    # Ljava/util/zip/Inflater;
    .param p5, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 470
    iput-object p1, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->this$0:Ljava/util/zip/ZipFile;

    .line 474
    const/4 p1, 0x0

    invoke-direct {p0, p2, p4, p5, p1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;IZ)V

    .line 460
    iput-boolean p1, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->eof:Z

    .line 475
    invoke-static {}, Ljdk/internal/ref/CleanerFactory;->cleaner()Ljava/lang/ref/Cleaner;

    move-result-object p1

    new-instance v0, Ljava/util/zip/ZipFile$InflaterCleanupAction;

    invoke-direct {v0, p4, p3}, Ljava/util/zip/ZipFile$InflaterCleanupAction;-><init>(Ljava/util/zip/Inflater;Ljava/util/zip/ZipFile$CleanableResource;)V

    invoke-virtual {p1, p0, v0}, Ljava/lang/ref/Cleaner;->register(Ljava/lang/Object;Ljava/lang/Runnable;)Ljava/lang/ref/Cleaner$Cleanable;

    move-result-object p1

    iput-object p1, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->cleanable:Ljava/lang/ref/Cleaner$Cleanable;

    .line 477
    return-void
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    iget-boolean v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->closeRequested:Z

    if-eqz v0, :cond_6

    .line 508
    const/4 v0, 0x0

    return v0

    .line 509
    :cond_6
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Ljava/util/zip/ZipFile$ZipFileInputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile$ZipFileInputStream;->size()J

    move-result-wide v0

    iget-object v2, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 510
    .local v0, "avail":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_20

    .line 511
    const v2, 0x7fffffff

    goto :goto_21

    :cond_20
    long-to-int v2, v0

    .line 510
    :goto_21
    return v2
.end method

.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 480
    iget-boolean v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->closeRequested:Z

    if-eqz v0, :cond_5

    .line 481
    return-void

    .line 482
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->closeRequested:Z

    .line 483
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 484
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v0}, Ljava/util/zip/ZipFile;->-$$Nest$fgetres(Ljava/util/zip/ZipFile;)Ljava/util/zip/ZipFile$CleanableResource;

    move-result-object v0

    iget-object v0, v0, Ljava/util/zip/ZipFile$CleanableResource;->istreams:Ljava/util/Set;

    monitor-enter v0

    .line 485
    :try_start_14
    iget-object v1, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v1}, Ljava/util/zip/ZipFile;->-$$Nest$fgetres(Ljava/util/zip/ZipFile;)Ljava/util/zip/ZipFile$CleanableResource;

    move-result-object v1

    iget-object v1, v1, Ljava/util/zip/ZipFile$CleanableResource;->istreams:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 486
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_26

    .line 487
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->cleanable:Ljava/lang/ref/Cleaner$Cleanable;

    invoke-interface {v0}, Ljava/lang/ref/Cleaner$Cleanable;->clean()V

    .line 488
    return-void

    .line 486
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method protected whitelist test-api fill()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 494
    iget-boolean v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->eof:Z

    if-nez v0, :cond_2a

    .line 497
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->buf:[B

    iget-object v2, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->buf:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->len:I

    .line 498
    iget v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->len:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_20

    .line 499
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->buf:[B

    aput-byte v3, v0, v3

    .line 500
    const/4 v0, 0x1

    iput v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->len:I

    .line 501
    iput-boolean v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->eof:Z

    .line 503
    :cond_20
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v1, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->buf:[B

    iget v2, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->len:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 504
    return-void

    .line 495
    :cond_2a
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Unexpected end of ZLIB input stream"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
