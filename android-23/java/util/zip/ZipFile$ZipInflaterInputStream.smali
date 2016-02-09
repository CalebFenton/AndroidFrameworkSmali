.class public Ljava/util/zip/ZipFile$ZipInflaterInputStream;
.super Ljava/util/zip/InflaterInputStream;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZipInflaterInputStream"
.end annotation


# instance fields
.field private bytesRead:J

.field private final entry:Ljava/util/zip/ZipEntry;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;ILjava/util/zip/ZipEntry;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "inf"    # Ljava/util/zip/Inflater;
    .param p3, "bsize"    # I
    .param p4, "entry"    # Ljava/util/zip/ZipEntry;

    #@0
    .prologue
    .line 578
    invoke-direct {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    #@3
    .line 575
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipInflaterInputStream;->bytesRead:J

    #@7
    .line 579
    iput-object p4, p0, Ljava/util/zip/ZipFile$ZipInflaterInputStream;->entry:Ljava/util/zip/ZipEntry;

    #@9
    .line 577
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
    const/4 v0, 0x0

    #@1
    .line 602
    iget-boolean v1, p0, Ljava/util/zip/ZipFile$ZipInflaterInputStream;->closed:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 606
    return v0

    #@6
    .line 608
    :cond_0
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->available()I

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_1

    #@c
    :goto_0
    return v0

    #@d
    :cond_1
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipInflaterInputStream;->entry:Ljava/util/zip/ZipEntry;

    #@f
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    #@12
    move-result-wide v0

    #@13
    iget-wide v2, p0, Ljava/util/zip/ZipFile$ZipInflaterInputStream;->bytesRead:J

    #@15
    sub-long/2addr v0, v2

    #@16
    long-to-int v0, v0

    #@17
    goto :goto_0
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
    .line 585
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result v1

    #@4
    .line 590
    .local v1, "i":I
    const/4 v2, -0x1

    #@5
    if-ne v1, v2, :cond_0

    #@7
    .line 591
    iget-object v2, p0, Ljava/util/zip/ZipFile$ZipInflaterInputStream;->entry:Ljava/util/zip/ZipEntry;

    #@9
    iget-wide v2, v2, Ljava/util/zip/ZipEntry;->size:J

    #@b
    iget-wide v4, p0, Ljava/util/zip/ZipFile$ZipInflaterInputStream;->bytesRead:J

    #@d
    cmp-long v2, v2, v4

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 592
    new-instance v2, Ljava/io/IOException;

    #@13
    new-instance v3, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v4, "Size mismatch on inflated file: "

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    iget-wide v4, p0, Ljava/util/zip/ZipFile$ZipInflaterInputStream;->bytesRead:J

    #@21
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    const-string/jumbo v4, " vs "

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    .line 593
    iget-object v4, p0, Ljava/util/zip/ZipFile$ZipInflaterInputStream;->entry:Ljava/util/zip/ZipEntry;

    #@2e
    iget-wide v4, v4, Ljava/util/zip/ZipEntry;->size:J

    #@30
    .line 592
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v2

    #@3c
    .line 586
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    #@3d
    .line 587
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/IOException;

    #@3f
    new-instance v3, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v4, "Error reading data for "

    #@47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    iget-object v4, p0, Ljava/util/zip/ZipFile$ZipInflaterInputStream;->entry:Ljava/util/zip/ZipEntry;

    #@4d
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    const-string/jumbo v4, " near offset "

    #@58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v3

    #@5c
    .line 588
    iget-wide v4, p0, Ljava/util/zip/ZipFile$ZipInflaterInputStream;->bytesRead:J

    #@5e
    .line 587
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@61
    move-result-object v3

    #@62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v3

    #@66
    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@69
    throw v2

    #@6a
    .line 596
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "i":I
    :cond_0
    iget-wide v2, p0, Ljava/util/zip/ZipFile$ZipInflaterInputStream;->bytesRead:J

    #@6c
    int-to-long v4, v1

    #@6d
    add-long/2addr v2, v4

    #@6e
    iput-wide v2, p0, Ljava/util/zip/ZipFile$ZipInflaterInputStream;->bytesRead:J

    #@70
    .line 598
    :cond_1
    return v1
.end method
