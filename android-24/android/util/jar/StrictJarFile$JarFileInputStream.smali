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
.field private count:J

.field private done:Z

.field private final entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;


# direct methods
.method constructor <init>(Ljava/io/InputStream;JLandroid/util/jar/StrictJarVerifier$VerifierEntry;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "size"    # J
    .param p4, "e"    # Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    #@0
    .prologue
    .line 272
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@3
    .line 269
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    #@6
    .line 273
    iput-object p4, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    #@8
    .line 275
    iput-wide p2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    #@a
    .line 271
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
    .line 334
    iget-boolean v0, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 335
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 337
    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public read()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const-wide/16 v6, 0x0

    #@3
    const/4 v4, -0x1

    #@4
    .line 280
    iget-boolean v1, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 281
    return v4

    #@9
    .line 283
    :cond_0
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    #@b
    cmp-long v1, v2, v6

    #@d
    if-lez v1, :cond_3

    #@f
    .line 284
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    #@12
    move-result v0

    #@13
    .line 285
    .local v0, "r":I
    if-eq v0, v4, :cond_2

    #@15
    .line 286
    iget-object v1, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    #@17
    invoke-virtual {v1, v0}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->write(I)V

    #@1a
    .line 287
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    #@1c
    const-wide/16 v4, 0x1

    #@1e
    sub-long/2addr v2, v4

    #@1f
    iput-wide v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    #@21
    .line 291
    :goto_0
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    #@23
    cmp-long v1, v2, v6

    #@25
    if-nez v1, :cond_1

    #@27
    .line 292
    iput-boolean v8, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    #@29
    .line 293
    iget-object v1, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    #@2b
    invoke-virtual {v1}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verify()V

    #@2e
    .line 295
    :cond_1
    return v0

    #@2f
    .line 289
    :cond_2
    iput-wide v6, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    #@31
    goto :goto_0

    #@32
    .line 297
    .end local v0    # "r":I
    :cond_3
    iput-boolean v8, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    #@34
    .line 298
    iget-object v1, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    #@36
    invoke-virtual {v1}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verify()V

    #@39
    .line 299
    return v4
.end method

.method public read([BII)I
    .locals 9
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
    const/4 v8, 0x1

    #@1
    const-wide/16 v6, 0x0

    #@3
    const/4 v4, -0x1

    #@4
    .line 305
    iget-boolean v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 306
    return v4

    #@9
    .line 308
    :cond_0
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    #@b
    cmp-long v2, v2, v6

    #@d
    if-lez v2, :cond_4

    #@f
    .line 309
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    #@12
    move-result v0

    #@13
    .line 310
    .local v0, "r":I
    if-eq v0, v4, :cond_3

    #@15
    .line 311
    move v1, v0

    #@16
    .line 312
    .local v1, "size":I
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    #@18
    int-to-long v4, v0

    #@19
    cmp-long v2, v2, v4

    #@1b
    if-gez v2, :cond_1

    #@1d
    .line 313
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    #@1f
    long-to-int v1, v2

    #@20
    .line 315
    :cond_1
    iget-object v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    #@22
    invoke-virtual {v2, p1, p2, v1}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->write([BII)V

    #@25
    .line 316
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    #@27
    int-to-long v4, v1

    #@28
    sub-long/2addr v2, v4

    #@29
    iput-wide v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    #@2b
    .line 320
    .end local v1    # "size":I
    :goto_0
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    #@2d
    cmp-long v2, v2, v6

    #@2f
    if-nez v2, :cond_2

    #@31
    .line 321
    iput-boolean v8, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    #@33
    .line 322
    iget-object v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    #@35
    invoke-virtual {v2}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verify()V

    #@38
    .line 324
    :cond_2
    return v0

    #@39
    .line 318
    :cond_3
    iput-wide v6, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    #@3b
    goto :goto_0

    #@3c
    .line 326
    .end local v0    # "r":I
    :cond_4
    iput-boolean v8, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    #@3e
    .line 327
    iget-object v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    #@40
    invoke-virtual {v2}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verify()V

    #@43
    .line 328
    return v4
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
    .line 342
    invoke-static {p0, p1, p2}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method
