.class public Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;
.super Ljava/util/zip/InflaterInputStream;
.source "StrictJarFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/jar/StrictJarFile;
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
    .line 352
    invoke-direct {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    #@3
    .line 349
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->bytesRead:J

    #@7
    .line 353
    iput-object p4, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->entry:Ljava/util/zip/ZipEntry;

    #@9
    .line 351
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
    .line 376
    iget-boolean v1, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->closed:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 380
    return v0

    #@6
    .line 382
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
    iget-object v0, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->entry:Ljava/util/zip/ZipEntry;

    #@f
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    #@12
    move-result-wide v0

    #@13
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->bytesRead:J

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
    .line 359
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result v1

    #@4
    .line 364
    .local v1, "i":I
    const/4 v2, -0x1

    #@5
    if-ne v1, v2, :cond_0

    #@7
    .line 365
    iget-object v2, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->entry:Ljava/util/zip/ZipEntry;

    #@9
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    #@c
    move-result-wide v2

    #@d
    iget-wide v4, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->bytesRead:J

    #@f
    cmp-long v2, v2, v4

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 366
    new-instance v2, Ljava/io/IOException;

    #@15
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "Size mismatch on inflated file: "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    iget-wide v4, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->bytesRead:J

    #@23
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    const-string/jumbo v4, " vs "

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    .line 367
    iget-object v4, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->entry:Ljava/util/zip/ZipEntry;

    #@30
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    #@33
    move-result-wide v4

    #@34
    .line 366
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v2

    #@40
    .line 360
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    #@41
    .line 361
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/IOException;

    #@43
    new-instance v3, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v4, "Error reading data for "

    #@4b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    iget-object v4, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->entry:Ljava/util/zip/ZipEntry;

    #@51
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    const-string/jumbo v4, " near offset "

    #@5c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v3

    #@60
    .line 362
    iget-wide v4, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->bytesRead:J

    #@62
    .line 361
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v3

    #@6a
    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6d
    throw v2

    #@6e
    .line 370
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "i":I
    :cond_0
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->bytesRead:J

    #@70
    int-to-long v4, v1

    #@71
    add-long/2addr v2, v4

    #@72
    iput-wide v2, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->bytesRead:J

    #@74
    .line 372
    :cond_1
    return v1
.end method
