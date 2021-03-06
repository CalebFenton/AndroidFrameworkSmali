.class public Lcom/android/internal/util/FileRotator;
.super Ljava/lang/Object;
.source "FileRotator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/FileRotator$FileInfo;,
        Lcom/android/internal/util/FileRotator$Reader;,
        Lcom/android/internal/util/FileRotator$Rewriter;,
        Lcom/android/internal/util/FileRotator$Writer;
    }
.end annotation


# static fields
.field private static final LOGD:Z = false

.field private static final SUFFIX_BACKUP:Ljava/lang/String; = ".backup"

.field private static final SUFFIX_NO_BACKUP:Ljava/lang/String; = ".no_backup"

.field private static final TAG:Ljava/lang/String; = "FileRotator"


# instance fields
.field private final mBasePath:Ljava/io/File;

.field private final mDeleteAgeMillis:J

.field private final mPrefix:Ljava/lang/String;

.field private final mRotateAgeMillis:J


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;JJ)V
    .locals 13
    .param p1, "basePath"    # Ljava/io/File;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "rotateAgeMillis"    # J
    .param p5, "deleteAgeMillis"    # J

    #@0
    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 99
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v6

    #@7
    check-cast v6, Ljava/io/File;

    #@9
    iput-object v6, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    #@b
    .line 100
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v6

    #@f
    check-cast v6, Ljava/lang/String;

    #@11
    iput-object v6, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    #@13
    .line 101
    move-wide/from16 v0, p3

    #@15
    iput-wide v0, p0, Lcom/android/internal/util/FileRotator;->mRotateAgeMillis:J

    #@17
    .line 102
    move-wide/from16 v0, p5

    #@19
    iput-wide v0, p0, Lcom/android/internal/util/FileRotator;->mDeleteAgeMillis:J

    #@1b
    .line 105
    iget-object v6, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    #@1d
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    #@20
    .line 108
    iget-object v6, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    #@22
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    #@25
    move-result-object v7

    #@26
    const/4 v6, 0x0

    #@27
    array-length v8, v7

    #@28
    :goto_0
    if-ge v6, v8, :cond_3

    #@2a
    aget-object v4, v7, v6

    #@2c
    .line 109
    .local v4, "name":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    #@2e
    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@31
    move-result v9

    #@32
    if-nez v9, :cond_1

    #@34
    .line 108
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@36
    goto :goto_0

    #@37
    .line 111
    :cond_1
    const-string/jumbo v9, ".backup"

    #@3a
    invoke-virtual {v4, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@3d
    move-result v9

    #@3e
    if-eqz v9, :cond_2

    #@40
    .line 114
    new-instance v2, Ljava/io/File;

    #@42
    iget-object v9, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    #@44
    invoke-direct {v2, v9, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@47
    .line 115
    .local v2, "backupFile":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    #@49
    .line 116
    iget-object v9, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    #@4b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@4e
    move-result v10

    #@4f
    const-string/jumbo v11, ".backup"

    #@52
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@55
    move-result v11

    #@56
    sub-int/2addr v10, v11

    #@57
    const/4 v11, 0x0

    #@58
    invoke-virtual {v4, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5b
    move-result-object v10

    #@5c
    .line 115
    invoke-direct {v3, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@5f
    .line 119
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@62
    goto :goto_1

    #@63
    .line 121
    .end local v2    # "backupFile":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    :cond_2
    const-string/jumbo v9, ".no_backup"

    #@66
    invoke-virtual {v4, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@69
    move-result v9

    #@6a
    if-eqz v9, :cond_0

    #@6c
    .line 124
    new-instance v5, Ljava/io/File;

    #@6e
    iget-object v9, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    #@70
    invoke-direct {v5, v9, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@73
    .line 125
    .local v5, "noBackupFile":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    #@75
    .line 126
    iget-object v9, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    #@77
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@7a
    move-result v10

    #@7b
    const-string/jumbo v11, ".no_backup"

    #@7e
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@81
    move-result v11

    #@82
    sub-int/2addr v10, v11

    #@83
    const/4 v11, 0x0

    #@84
    invoke-virtual {v4, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@87
    move-result-object v10

    #@88
    .line 125
    invoke-direct {v3, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@8b
    .line 129
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    #@8e
    .line 130
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@91
    goto :goto_1

    #@92
    .line 98
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "noBackupFile":Ljava/io/File;
    :cond_3
    return-void
.end method

.method private getActiveName(J)Ljava/lang/String;
    .locals 11
    .param p1, "currentTimeMillis"    # J

    #@0
    .prologue
    .line 305
    const/4 v2, 0x0

    #@1
    .line 306
    .local v2, "oldestActiveName":Ljava/lang/String;
    const-wide v4, 0x7fffffffffffffffL

    #@6
    .line 308
    .local v4, "oldestActiveStart":J
    new-instance v0, Lcom/android/internal/util/FileRotator$FileInfo;

    #@8
    iget-object v3, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    #@a
    invoke-direct {v0, v3}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    #@d
    .line 309
    .local v0, "info":Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v3, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    #@f
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    #@12
    move-result-object v6

    #@13
    const/4 v3, 0x0

    #@14
    array-length v7, v6

    #@15
    .end local v2    # "oldestActiveName":Ljava/lang/String;
    :goto_0
    if-ge v3, v7, :cond_2

    #@17
    aget-object v1, v6, v3

    #@19
    .line 310
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    #@1c
    move-result v8

    #@1d
    if-nez v8, :cond_1

    #@1f
    .line 309
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@21
    goto :goto_0

    #@22
    .line 313
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/util/FileRotator$FileInfo;->isActive()Z

    #@25
    move-result v8

    #@26
    if-eqz v8, :cond_0

    #@28
    iget-wide v8, v0, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    #@2a
    cmp-long v8, v8, p1

    #@2c
    if-gez v8, :cond_0

    #@2e
    .line 314
    iget-wide v8, v0, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    #@30
    cmp-long v8, v8, v4

    #@32
    if-gez v8, :cond_0

    #@34
    .line 315
    move-object v2, v1

    #@35
    .line 316
    .local v2, "oldestActiveName":Ljava/lang/String;
    iget-wide v4, v0, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    #@37
    goto :goto_1

    #@38
    .line 320
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "oldestActiveName":Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_3

    #@3a
    .line 321
    return-object v2

    #@3b
    .line 324
    :cond_3
    iput-wide p1, v0, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    #@3d
    .line 325
    const-wide v6, 0x7fffffffffffffffL

    #@42
    iput-wide v6, v0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    #@44
    .line 326
    invoke-virtual {v0}, Lcom/android/internal/util/FileRotator$FileInfo;->build()Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    return-object v3
.end method

.method private static readFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Reader;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "reader"    # Lcom/android/internal/util/FileRotator$Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 369
    new-instance v1, Ljava/io/FileInputStream;

    #@2
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@5
    .line 370
    .local v1, "fis":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    #@7
    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@a
    .line 372
    .local v0, "bis":Ljava/io/BufferedInputStream;
    :try_start_0
    invoke-interface {p1, v0}, Lcom/android/internal/util/FileRotator$Reader;->read(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 374
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@10
    .line 368
    return-void

    #@11
    .line 373
    :catchall_0
    move-exception v2

    #@12
    .line 374
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@15
    .line 373
    throw v2
.end method

.method private static rethrowAsIoException(Ljava/lang/Throwable;)Ljava/io/IOException;
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 391
    instance-of v0, p0, Ljava/io/IOException;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 392
    check-cast p0, Ljava/io/IOException;

    #@6
    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    #@7
    .line 394
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10
    throw v0
.end method

.method private rewriteSingle(Lcom/android/internal/util/FileRotator$Rewriter;Ljava/lang/String;)V
    .locals 6
    .param p1, "rewriter"    # Lcom/android/internal/util/FileRotator$Rewriter;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 235
    new-instance v1, Ljava/io/File;

    #@2
    iget-object v3, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    #@4
    invoke-direct {v1, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@7
    .line 238
    .local v1, "file":Ljava/io/File;
    invoke-interface {p1}, Lcom/android/internal/util/FileRotator$Rewriter;->reset()V

    #@a
    .line 240
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_1

    #@10
    .line 242
    invoke-static {v1, p1}, Lcom/android/internal/util/FileRotator;->readFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Reader;)V

    #@13
    .line 245
    invoke-interface {p1}, Lcom/android/internal/util/FileRotator$Rewriter;->shouldWrite()Z

    #@16
    move-result v3

    #@17
    if-nez v3, :cond_0

    #@19
    return-void

    #@1a
    .line 248
    :cond_0
    new-instance v0, Ljava/io/File;

    #@1c
    iget-object v3, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    #@1e
    new-instance v4, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    const-string/jumbo v5, ".backup"

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@35
    .line 249
    .local v0, "backupFile":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@38
    .line 252
    :try_start_0
    invoke-static {v1, p1}, Lcom/android/internal/util/FileRotator;->writeFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Writer;)V

    #@3b
    .line 255
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    .line 232
    :goto_0
    return-void

    #@3f
    .line 256
    :catch_0
    move-exception v2

    #@40
    .line 258
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@43
    .line 259
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@46
    .line 260
    invoke-static {v2}, Lcom/android/internal/util/FileRotator;->rethrowAsIoException(Ljava/lang/Throwable;)Ljava/io/IOException;

    #@49
    move-result-object v3

    #@4a
    throw v3

    #@4b
    .line 265
    .end local v0    # "backupFile":Ljava/io/File;
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    new-instance v0, Ljava/io/File;

    #@4d
    iget-object v3, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    #@4f
    new-instance v4, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    const-string/jumbo v5, ".no_backup"

    #@5b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@66
    .line 266
    .restart local v0    # "backupFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    #@69
    .line 269
    :try_start_1
    invoke-static {v1, p1}, Lcom/android/internal/util/FileRotator;->writeFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Writer;)V

    #@6c
    .line 272
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    #@6f
    goto :goto_0

    #@70
    .line 273
    :catch_1
    move-exception v2

    #@71
    .line 275
    .restart local v2    # "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@74
    .line 276
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@77
    .line 277
    invoke-static {v2}, Lcom/android/internal/util/FileRotator;->rethrowAsIoException(Ljava/lang/Throwable;)Ljava/io/IOException;

    #@7a
    move-result-object v3

    #@7b
    throw v3
.end method

.method private static writeFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Writer;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "writer"    # Lcom/android/internal/util/FileRotator$Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 379
    new-instance v1, Ljava/io/FileOutputStream;

    #@2
    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@5
    .line 380
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    #@7
    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@a
    .line 382
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    invoke-interface {p1, v0}, Lcom/android/internal/util/FileRotator$Writer;->write(Ljava/io/OutputStream;)V

    #@d
    .line 383
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 385
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@13
    .line 386
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@16
    .line 378
    return-void

    #@17
    .line 384
    :catchall_0
    move-exception v2

    #@18
    .line 385
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@1b
    .line 386
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1e
    .line 384
    throw v2
.end method


# virtual methods
.method public combineActive(Lcom/android/internal/util/FileRotator$Reader;Lcom/android/internal/util/FileRotator$Writer;J)V
    .locals 1
    .param p1, "reader"    # Lcom/android/internal/util/FileRotator$Reader;
    .param p2, "writer"    # Lcom/android/internal/util/FileRotator$Writer;
    .param p3, "currentTimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 190
    new-instance v0, Lcom/android/internal/util/FileRotator$1;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/util/FileRotator$1;-><init>(Lcom/android/internal/util/FileRotator;Lcom/android/internal/util/FileRotator$Reader;Lcom/android/internal/util/FileRotator$Writer;)V

    #@5
    invoke-virtual {p0, v0, p3, p4}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    #@8
    .line 189
    return-void
.end method

.method public deleteAll()V
    .locals 7

    #@0
    .prologue
    .line 139
    new-instance v0, Lcom/android/internal/util/FileRotator$FileInfo;

    #@2
    iget-object v2, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    #@4
    invoke-direct {v0, v2}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    #@7
    .line 140
    .local v0, "info":Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v2, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    #@9
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    const/4 v2, 0x0

    #@e
    array-length v4, v3

    #@f
    :goto_0
    if-ge v2, v4, :cond_1

    #@11
    aget-object v1, v3, v2

    #@13
    .line 141
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_0

    #@19
    .line 143
    new-instance v5, Ljava/io/File;

    #@1b
    iget-object v6, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    #@1d
    invoke-direct {v5, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@20
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    #@23
    .line 140
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_0

    #@26
    .line 138
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public dumpAll(Ljava/io/OutputStream;)V
    .locals 10
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 152
    new-instance v5, Ljava/util/zip/ZipOutputStream;

    #@2
    invoke-direct {v5, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@5
    .line 154
    .local v5, "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v2, Lcom/android/internal/util/FileRotator$FileInfo;

    #@7
    iget-object v6, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    #@9
    invoke-direct {v2, v6}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    #@c
    .line 155
    .local v2, "info":Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v6, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    #@e
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    #@11
    move-result-object v7

    #@12
    const/4 v6, 0x0

    #@13
    array-length v8, v7

    #@14
    :goto_0
    if-ge v6, v8, :cond_1

    #@16
    aget-object v4, v7, v6

    #@18
    .line 156
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    #@1b
    move-result v9

    #@1c
    if-eqz v9, :cond_0

    #@1e
    .line 157
    new-instance v0, Ljava/util/zip/ZipEntry;

    #@20
    invoke-direct {v0, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    #@23
    .line 158
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v5, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    #@26
    .line 160
    new-instance v1, Ljava/io/File;

    #@28
    iget-object v9, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    #@2a
    invoke-direct {v1, v9, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@2d
    .line 161
    .local v1, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    #@2f
    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@32
    .line 163
    .local v3, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v3, v5}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    .line 165
    :try_start_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@38
    .line 168
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    #@3b
    .line 155
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "is":Ljava/io/FileInputStream;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 164
    .restart local v0    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v6

    #@3f
    .line 165
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@42
    .line 164
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@43
    .line 171
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "info":Lcom/android/internal/util/FileRotator$FileInfo;
    .end local v3    # "is":Ljava/io/FileInputStream;
    .end local v4    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v6

    #@44
    .line 172
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@47
    .line 171
    throw v6

    #@48
    .line 172
    .restart local v2    # "info":Lcom/android/internal/util/FileRotator$FileInfo;
    :cond_1
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@4b
    .line 151
    return-void
.end method

.method public maybeRotate(J)V
    .locals 17
    .param p1, "currentTimeMillis"    # J

    #@0
    .prologue
    .line 335
    move-object/from16 v0, p0

    #@2
    iget-wide v12, v0, Lcom/android/internal/util/FileRotator;->mRotateAgeMillis:J

    #@4
    sub-long v10, p1, v12

    #@6
    .line 336
    .local v10, "rotateBefore":J
    move-object/from16 v0, p0

    #@8
    iget-wide v12, v0, Lcom/android/internal/util/FileRotator;->mDeleteAgeMillis:J

    #@a
    sub-long v4, p1, v12

    #@c
    .line 338
    .local v4, "deleteBefore":J
    new-instance v7, Lcom/android/internal/util/FileRotator$FileInfo;

    #@e
    move-object/from16 v0, p0

    #@10
    iget-object v9, v0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    #@12
    invoke-direct {v7, v9}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    #@15
    .line 339
    .local v7, "info":Lcom/android/internal/util/FileRotator$FileInfo;
    move-object/from16 v0, p0

    #@17
    iget-object v9, v0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    #@19
    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 340
    .local v2, "baseFiles":[Ljava/lang/String;
    if-nez v2, :cond_0

    #@1f
    .line 341
    return-void

    #@20
    .line 344
    :cond_0
    const/4 v9, 0x0

    #@21
    array-length v12, v2

    #@22
    :goto_0
    if-ge v9, v12, :cond_4

    #@24
    aget-object v8, v2, v9

    #@26
    .line 345
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v7, v8}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    #@29
    move-result v13

    #@2a
    if-nez v13, :cond_2

    #@2c
    .line 344
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 347
    :cond_2
    invoke-virtual {v7}, Lcom/android/internal/util/FileRotator$FileInfo;->isActive()Z

    #@32
    move-result v13

    #@33
    if-eqz v13, :cond_3

    #@35
    .line 348
    iget-wide v14, v7, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    #@37
    cmp-long v13, v14, v10

    #@39
    if-gtz v13, :cond_1

    #@3b
    .line 352
    move-wide/from16 v0, p1

    #@3d
    iput-wide v0, v7, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    #@3f
    .line 354
    new-instance v6, Ljava/io/File;

    #@41
    move-object/from16 v0, p0

    #@43
    iget-object v13, v0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    #@45
    invoke-direct {v6, v13, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@48
    .line 355
    .local v6, "file":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    #@4a
    move-object/from16 v0, p0

    #@4c
    iget-object v13, v0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    #@4e
    invoke-virtual {v7}, Lcom/android/internal/util/FileRotator$FileInfo;->build()Ljava/lang/String;

    #@51
    move-result-object v14

    #@52
    invoke-direct {v3, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@55
    .line 356
    .local v3, "destFile":Ljava/io/File;
    invoke-virtual {v6, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@58
    goto :goto_1

    #@59
    .line 358
    .end local v3    # "destFile":Ljava/io/File;
    .end local v6    # "file":Ljava/io/File;
    :cond_3
    iget-wide v14, v7, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    #@5b
    cmp-long v13, v14, v4

    #@5d
    if-gtz v13, :cond_1

    #@5f
    .line 362
    new-instance v6, Ljava/io/File;

    #@61
    move-object/from16 v0, p0

    #@63
    iget-object v13, v0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    #@65
    invoke-direct {v6, v13, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@68
    .line 363
    .restart local v6    # "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    #@6b
    goto :goto_1

    #@6c
    .line 334
    .end local v6    # "file":Ljava/io/File;
    .end local v8    # "name":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public readMatching(Lcom/android/internal/util/FileRotator$Reader;JJ)V
    .locals 8
    .param p1, "reader"    # Lcom/android/internal/util/FileRotator$Reader;
    .param p2, "matchStartMillis"    # J
    .param p4, "matchEndMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 287
    new-instance v1, Lcom/android/internal/util/FileRotator$FileInfo;

    #@2
    iget-object v3, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    #@4
    invoke-direct {v1, v3}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    #@7
    .line 288
    .local v1, "info":Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v3, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    #@9
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    const/4 v3, 0x0

    #@e
    array-length v5, v4

    #@f
    :goto_0
    if-ge v3, v5, :cond_2

    #@11
    aget-object v2, v4, v3

    #@13
    .line 289
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    #@16
    move-result v6

    #@17
    if-nez v6, :cond_1

    #@19
    .line 288
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 292
    :cond_1
    iget-wide v6, v1, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    #@1e
    cmp-long v6, v6, p4

    #@20
    if-gtz v6, :cond_0

    #@22
    iget-wide v6, v1, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    #@24
    cmp-long v6, p2, v6

    #@26
    if-gtz v6, :cond_0

    #@28
    .line 295
    new-instance v0, Ljava/io/File;

    #@2a
    iget-object v6, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    #@2c
    invoke-direct {v0, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@2f
    .line 296
    .local v0, "file":Ljava/io/File;
    invoke-static {v0, p1}, Lcom/android/internal/util/FileRotator;->readFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Reader;)V

    #@32
    goto :goto_1

    #@33
    .line 286
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V
    .locals 2
    .param p1, "rewriter"    # Lcom/android/internal/util/FileRotator$Rewriter;
    .param p2, "currentTimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 183
    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/FileRotator;->getActiveName(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 184
    .local v0, "activeName":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/FileRotator;->rewriteSingle(Lcom/android/internal/util/FileRotator$Rewriter;Ljava/lang/String;)V

    #@7
    .line 182
    return-void
.end method

.method public rewriteAll(Lcom/android/internal/util/FileRotator$Rewriter;)V
    .locals 6
    .param p1, "rewriter"    # Lcom/android/internal/util/FileRotator$Rewriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 218
    new-instance v0, Lcom/android/internal/util/FileRotator$FileInfo;

    #@2
    iget-object v2, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    #@4
    invoke-direct {v0, v2}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    #@7
    .line 219
    .local v0, "info":Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v2, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    #@9
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    const/4 v2, 0x0

    #@e
    array-length v4, v3

    #@f
    :goto_0
    if-ge v2, v4, :cond_1

    #@11
    aget-object v1, v3, v2

    #@13
    .line 220
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    #@16
    move-result v5

    #@17
    if-nez v5, :cond_0

    #@19
    .line 219
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 223
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/util/FileRotator;->rewriteSingle(Lcom/android/internal/util/FileRotator$Rewriter;Ljava/lang/String;)V

    #@1f
    goto :goto_1

    #@20
    .line 217
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    return-void
.end method
