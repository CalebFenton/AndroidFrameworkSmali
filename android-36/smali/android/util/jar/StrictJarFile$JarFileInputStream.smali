.class final Landroid/util/jar/StrictJarFile$JarFileInputStream;
.super Ljava/io/FilterInputStream;
.source "StrictJarFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/jar/StrictJarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JarFileInputStream"
.end annotation


# instance fields
.field private blacklist count:J

.field private blacklist done:Z

.field private final blacklist entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;


# direct methods
.method constructor blacklist <init>(Ljava/io/InputStream;JLandroid/util/jar/StrictJarVerifier$VerifierEntry;)V
    .registers 6
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "size"    # J
    .param p4, "e"    # Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    .line 315
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    .line 316
    iput-object p4, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    .line 318
    iput-wide p2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    .line 319
    return-void
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    iget-boolean v0, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    if-eqz v0, :cond_6

    .line 378
    const/4 v0, 0x0

    return v0

    .line 380
    :cond_6
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    return v0
.end method

.method public whitelist test-api read()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    iget-boolean v0, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    .line 324
    return v1

    .line 326
    :cond_6
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-lez v0, :cond_32

    .line 327
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 328
    .local v0, "r":I
    if-eq v0, v1, :cond_22

    .line 329
    iget-object v1, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-virtual {v1, v0}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->write(I)V

    .line 330
    iget-wide v6, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    goto :goto_24

    .line 332
    :cond_22
    iput-wide v4, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    .line 334
    :goto_24
    iget-wide v6, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    cmp-long v1, v6, v4

    if-nez v1, :cond_31

    .line 335
    iput-boolean v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    .line 336
    iget-object v1, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-virtual {v1}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verify()V

    .line 338
    :cond_31
    return v0

    .line 340
    .end local v0    # "r":I
    :cond_32
    iput-boolean v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    .line 341
    iget-object v0, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-virtual {v0}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verify()V

    .line 342
    return v1
.end method

.method public whitelist test-api read([BII)I
    .registers 14
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    iget-boolean v0, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    .line 349
    return v1

    .line 351
    :cond_6
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-lez v0, :cond_3c

    .line 352
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 353
    .local v0, "r":I
    if-eq v0, v1, :cond_2c

    .line 354
    move v1, v0

    .line 355
    .local v1, "size":I
    iget-wide v6, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    int-to-long v8, v1

    cmp-long v3, v6, v8

    if-gez v3, :cond_20

    .line 356
    iget-wide v6, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    long-to-int v1, v6

    .line 358
    :cond_20
    iget-object v3, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-virtual {v3, p1, p2, v1}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->write([BII)V

    .line 359
    iget-wide v6, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    int-to-long v8, v1

    sub-long/2addr v6, v8

    iput-wide v6, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    .line 360
    .end local v1    # "size":I
    goto :goto_2e

    .line 361
    :cond_2c
    iput-wide v4, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    .line 363
    :goto_2e
    iget-wide v6, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    cmp-long v1, v6, v4

    if-nez v1, :cond_3b

    .line 364
    iput-boolean v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    .line 365
    iget-object v1, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-virtual {v1}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verify()V

    .line 367
    :cond_3b
    return v0

    .line 369
    .end local v0    # "r":I
    :cond_3c
    iput-boolean v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    .line 370
    iget-object v0, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-virtual {v0}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verify()V

    .line 371
    return v1
.end method

.method public whitelist test-api skip(J)J
    .registers 5
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    invoke-static {p0, p1, p2}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    move-result-wide v0

    return-wide v0
.end method
