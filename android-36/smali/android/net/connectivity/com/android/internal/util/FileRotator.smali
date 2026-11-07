.class public Landroid/net/connectivity/com/android/internal/util/FileRotator;
.super Ljava/lang/Object;
.source "FileRotator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;,
        Landroid/net/connectivity/com/android/internal/util/FileRotator$Rewriter;,
        Landroid/net/connectivity/com/android/internal/util/FileRotator$Reader;,
        Landroid/net/connectivity/com/android/internal/util/FileRotator$Writer;
    }
.end annotation


# static fields
.field private static final blacklist LOGD:Z = false

.field private static final blacklist SUFFIX_BACKUP:Ljava/lang/String; = ".backup"

.field private static final blacklist SUFFIX_NO_BACKUP:Ljava/lang/String; = ".no_backup"

.field private static final blacklist TAG:Ljava/lang/String; = "FileRotator"


# instance fields
.field private final blacklist mBasePath:Ljava/io/File;

.field private final blacklist mDeleteAgeMillis:J

.field private final blacklist mPrefix:Ljava/lang/String;

.field private final blacklist mRotateAgeMillis:J


# direct methods
.method public constructor blacklist <init>(Ljava/io/File;Ljava/lang/String;JJ)V
    .registers 21
    .param p1, "basePath"    # Ljava/io/File;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "rotateAgeMillis"    # J
    .param p5, "deleteAgeMillis"    # J

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    .line 108
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    .line 109
    move-wide/from16 v0, p3

    iput-wide v0, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mRotateAgeMillis:J

    .line 110
    move-wide/from16 v2, p5

    iput-wide v2, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mDeleteAgeMillis:J

    .line 113
    iget-object v4, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 116
    iget-object v4, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_29
    if-ge v7, v5, :cond_8b

    aget-object v8, v4, v7

    .line 117
    .local v8, "name":Ljava/lang/String;
    iget-object v9, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_36

    goto :goto_88

    .line 119
    :cond_36
    const-string v9, ".backup"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5d

    .line 122
    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v10, v11, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    .local v10, "backupFile":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    iget-object v12, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    .line 124
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v13, v9

    invoke-virtual {v8, v6, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v12, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v10, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .end local v10    # "backupFile":Ljava/io/File;
    .end local v11    # "file":Ljava/io/File;
    goto :goto_87

    .line 129
    :cond_5d
    const-string v9, ".no_backup"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_87

    .line 132
    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v10, v11, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 133
    .local v10, "noBackupFile":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    iget-object v12, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    .line 134
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v13, v9

    invoke-virtual {v8, v6, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v12, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    .restart local v11    # "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 138
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    goto :goto_88

    .line 129
    .end local v10    # "noBackupFile":Ljava/io/File;
    .end local v11    # "file":Ljava/io/File;
    :cond_87
    :goto_87
    nop

    .line 116
    .end local v8    # "name":Ljava/lang/String;
    :goto_88
    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    .line 141
    :cond_8b
    return-void
.end method

.method private blacklist getActiveName(J)Ljava/lang/String;
    .registers 13
    .param p1, "currentTimeMillis"    # J

    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, "oldestActiveName":Ljava/lang/String;
    const-wide v1, 0x7fffffffffffffffL

    .line 337
    .local v1, "oldestActiveStart":J
    new-instance v3, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;

    iget-object v4, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 338
    .local v3, "info":Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;
    iget-object v4, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_15
    if-ge v6, v5, :cond_38

    aget-object v7, v4, v6

    .line 339
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v3, v7}, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_20

    goto :goto_35

    .line 342
    :cond_20
    invoke-virtual {v3}, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;->isActive()Z

    move-result v8

    if-eqz v8, :cond_35

    iget-wide v8, v3, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;->startMillis:J

    cmp-long v8, v8, p1

    if-gez v8, :cond_35

    iget-wide v8, v3, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;->startMillis:J

    cmp-long v8, v8, v1

    if-gez v8, :cond_35

    .line 344
    move-object v0, v7

    .line 345
    iget-wide v1, v3, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;->startMillis:J

    .line 338
    .end local v7    # "name":Ljava/lang/String;
    :cond_35
    :goto_35
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 349
    :cond_38
    if-eqz v0, :cond_3b

    .line 350
    return-object v0

    .line 353
    :cond_3b
    iput-wide p1, v3, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;->startMillis:J

    .line 354
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, v3, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;->endMillis:J

    .line 355
    invoke-virtual {v3}, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;->build()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static synthetic blacklist lambda$readMatching$0(Landroid/util/Pair;)J
    .registers 3
    .param p0, "o"    # Landroid/util/Pair;

    .line 311
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist readFile(Ljava/io/File;Landroid/net/connectivity/com/android/internal/util/FileRotator$Reader;)V
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "reader"    # Landroid/net/connectivity/com/android/internal/util/FileRotator$Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 399
    .local v0, "fis":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 401
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_a
    invoke-interface {p1, v1}, Landroid/net/connectivity/com/android/internal/util/FileRotator$Reader;->read(Ljava/io/InputStream;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_12

    .line 403
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 404
    nop

    .line 405
    return-void

    .line 403
    :catchall_12
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 404
    throw v2
.end method

.method private static blacklist rethrowAsIoException(Ljava/lang/Throwable;)Ljava/io/IOException;
    .registers 3
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_8

    .line 424
    move-object v0, p0

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 426
    :cond_8
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private blacklist rewriteSingle(Landroid/net/connectivity/com/android/internal/util/FileRotator$Rewriter;Ljava/lang/String;)V
    .registers 8
    .param p1, "rewriter"    # Landroid/net/connectivity/com/android/internal/util/FileRotator$Rewriter;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 246
    .local v0, "file":Ljava/io/File;
    invoke-interface {p1}, Landroid/net/connectivity/com/android/internal/util/FileRotator$Rewriter;->reset()V

    .line 248
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 250
    invoke-static {v0, p1}, Landroid/net/connectivity/com/android/internal/util/FileRotator;->readFile(Ljava/io/File;Landroid/net/connectivity/com/android/internal/util/FileRotator$Reader;)V

    .line 253
    invoke-interface {p1}, Landroid/net/connectivity/com/android/internal/util/FileRotator$Rewriter;->shouldWrite()Z

    move-result v1

    if-nez v1, :cond_1a

    return-void

    .line 256
    :cond_1a
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".backup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 257
    .local v1, "backupFile":Ljava/io/File;
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 260
    :try_start_37
    invoke-static {v0, p1}, Landroid/net/connectivity/com/android/internal/util/FileRotator;->writeFile(Ljava/io/File;Landroid/net/connectivity/com/android/internal/util/FileRotator$Writer;)V

    .line 263
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_3e

    .line 269
    goto :goto_6e

    .line 264
    :catchall_3e
    move-exception v2

    .line 266
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 267
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 268
    invoke-static {v2}, Landroid/net/connectivity/com/android/internal/util/FileRotator;->rethrowAsIoException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 273
    .end local v1    # "backupFile":Ljava/io/File;
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_4a
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".no_backup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 274
    .restart local v1    # "backupFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 277
    :try_start_67
    invoke-static {v0, p1}, Landroid/net/connectivity/com/android/internal/util/FileRotator;->writeFile(Ljava/io/File;Landroid/net/connectivity/com/android/internal/util/FileRotator$Writer;)V

    .line 280
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_6d
    .catchall {:try_start_67 .. :try_end_6d} :catchall_6f

    .line 286
    nop

    .line 288
    :goto_6e
    return-void

    .line 281
    :catchall_6f
    move-exception v2

    .line 283
    .restart local v2    # "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 284
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 285
    invoke-static {v2}, Landroid/net/connectivity/com/android/internal/util/FileRotator;->rethrowAsIoException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object v3

    throw v3
.end method

.method private static blacklist writeFile(Ljava/io/File;Landroid/net/connectivity/com/android/internal/util/FileRotator$Writer;)V
    .registers 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "writer"    # Landroid/net/connectivity/com/android/internal/util/FileRotator$Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 409
    .local v0, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 411
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_a
    invoke-interface {p1, v1}, Landroid/net/connectivity/com/android/internal/util/FileRotator$Writer;->write(Ljava/io/OutputStream;)V

    .line 412
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_1e

    .line 415
    :try_start_10
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_17} :catch_18

    .line 417
    goto :goto_19

    .line 416
    :catch_18
    move-exception v2

    .line 418
    :goto_19
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 419
    nop

    .line 420
    return-void

    .line 414
    :catchall_1e
    move-exception v2

    .line 415
    :try_start_1f
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_26} :catch_27

    .line 417
    goto :goto_28

    .line 416
    :catch_27
    move-exception v3

    .line 418
    :goto_28
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 419
    throw v2
.end method


# virtual methods
.method public blacklist combineActive(Landroid/net/connectivity/com/android/internal/util/FileRotator$Reader;Landroid/net/connectivity/com/android/internal/util/FileRotator$Writer;J)V
    .registers 6
    .param p1, "reader"    # Landroid/net/connectivity/com/android/internal/util/FileRotator$Reader;
    .param p2, "writer"    # Landroid/net/connectivity/com/android/internal/util/FileRotator$Writer;
    .param p3, "currentTimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 198
    new-instance v0, Landroid/net/connectivity/com/android/internal/util/FileRotator$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/connectivity/com/android/internal/util/FileRotator$1;-><init>(Landroid/net/connectivity/com/android/internal/util/FileRotator;Landroid/net/connectivity/com/android/internal/util/FileRotator$Reader;Landroid/net/connectivity/com/android/internal/util/FileRotator$Writer;)V

    invoke-virtual {p0, v0, p3, p4}, Landroid/net/connectivity/com/android/internal/util/FileRotator;->rewriteActive(Landroid/net/connectivity/com/android/internal/util/FileRotator$Rewriter;J)V

    .line 219
    return-void
.end method

.method public blacklist deleteAll()V
    .registers 8

    .line 147
    new-instance v0, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;

    iget-object v1, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "info":Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;
    iget-object v1, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_26

    aget-object v4, v1, v3

    .line 149
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 151
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 148
    .end local v4    # "name":Ljava/lang/String;
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 154
    :cond_26
    return-void
.end method

.method public blacklist dumpAll(Ljava/io/OutputStream;)V
    .registers 11
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 162
    .local v0, "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_5
    new-instance v1, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;

    iget-object v2, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 163
    .local v1, "info":Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;
    iget-object v2, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v3, :cond_46

    aget-object v5, v2, v4

    .line 164
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v1, v5}, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 165
    new-instance v6, Ljava/util/zip/ZipEntry;

    invoke-direct {v6, v5}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 166
    .local v6, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v0, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 168
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v7, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    .local v7, "file":Ljava/io/File;
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_4b

    .line 171
    .local v8, "is":Ljava/io/FileInputStream;
    :try_start_32
    invoke-static {v8, v0}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 173
    :try_start_35
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 174
    nop

    .line 176
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto :goto_43

    .line 173
    :catchall_3d
    move-exception v2

    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 174
    nop

    .end local v0    # "zos":Ljava/util/zip/ZipOutputStream;
    .end local p0    # "this":Landroid/net/connectivity/com/android/internal/util/FileRotator;
    .end local p1    # "os":Ljava/io/OutputStream;
    throw v2
    :try_end_43
    .catchall {:try_start_35 .. :try_end_43} :catchall_4b

    .line 163
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local p0    # "this":Landroid/net/connectivity/com/android/internal/util/FileRotator;
    .restart local p1    # "os":Ljava/io/OutputStream;
    :cond_43
    :goto_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 180
    .end local v1    # "info":Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;
    :cond_46
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 181
    nop

    .line 182
    return-void

    .line 180
    :catchall_4b
    move-exception v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 181
    throw v1
.end method

.method public blacklist maybeRotate(J)V
    .registers 16
    .param p1, "currentTimeMillis"    # J

    .line 364
    iget-wide v0, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mRotateAgeMillis:J

    sub-long v0, p1, v0

    .line 365
    .local v0, "rotateBefore":J
    iget-wide v2, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mDeleteAgeMillis:J

    sub-long v2, p1, v2

    .line 367
    .local v2, "deleteBefore":J
    new-instance v4, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;

    iget-object v5, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 368
    .local v4, "info":Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;
    iget-object v5, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 369
    .local v5, "baseFiles":[Ljava/lang/String;
    if-nez v5, :cond_18

    .line 370
    return-void

    .line 373
    :cond_18
    array-length v6, v5

    const/4 v7, 0x0

    :goto_1a
    if-ge v7, v6, :cond_5c

    aget-object v8, v5, v7

    .line 374
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v4, v8}, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_25

    goto :goto_59

    .line 376
    :cond_25
    invoke-virtual {v4}, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;->isActive()Z

    move-result v9

    if-eqz v9, :cond_49

    .line 377
    iget-wide v9, v4, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;->startMillis:J

    cmp-long v9, v9, v0

    if-gtz v9, :cond_59

    .line 381
    iput-wide p1, v4, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;->endMillis:J

    .line 383
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v9, v10, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 384
    .local v9, "file":Ljava/io/File;
    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v4}, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;->build()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 385
    .local v10, "destFile":Ljava/io/File;
    invoke-virtual {v9, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 386
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "destFile":Ljava/io/File;
    goto :goto_59

    .line 387
    :cond_49
    iget-wide v9, v4, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;->endMillis:J

    cmp-long v9, v9, v2

    if-gtz v9, :cond_59

    .line 391
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v9, v10, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 392
    .restart local v9    # "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 373
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "file":Ljava/io/File;
    :cond_59
    :goto_59
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    .line 395
    :cond_5c
    return-void
.end method

.method public blacklist readMatching(Landroid/net/connectivity/com/android/internal/util/FileRotator$Reader;JJ)V
    .registers 15
    .param p1, "reader"    # Landroid/net/connectivity/com/android/internal/util/FileRotator$Reader;
    .param p2, "matchStartMillis"    # J
    .param p4, "matchEndMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    new-instance v0, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;

    iget-object v1, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 310
    .local v0, "info":Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;
    new-instance v1, Ljava/util/TreeSet;

    new-instance v2, Landroid/net/connectivity/com/android/internal/util/FileRotator$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/net/connectivity/com/android/internal/util/FileRotator$$ExternalSyntheticLambda0;-><init>()V

    .line 311
    invoke-static {v2}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 312
    .local v1, "readSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;"
    iget-object v2, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v3, :cond_45

    aget-object v5, v2, v4

    .line 313
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v0, v5}, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_28

    goto :goto_42

    .line 316
    :cond_28
    iget-wide v6, v0, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;->startMillis:J

    cmp-long v6, v6, p4

    if-gtz v6, :cond_42

    iget-wide v6, v0, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;->endMillis:J

    cmp-long v6, p2, v6

    if-gtz v6, :cond_42

    .line 317
    new-instance v6, Landroid/util/Pair;

    iget-wide v7, v0, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;->startMillis:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 312
    .end local v5    # "name":Ljava/lang/String;
    :cond_42
    :goto_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 322
    :cond_45
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 323
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 325
    .local v4, "name":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 326
    .local v5, "file":Ljava/io/File;
    invoke-static {v5, p1}, Landroid/net/connectivity/com/android/internal/util/FileRotator;->readFile(Ljava/io/File;Landroid/net/connectivity/com/android/internal/util/FileRotator$Reader;)V

    .line 327
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    goto :goto_49

    .line 328
    :cond_64
    return-void
.end method

.method public blacklist rewriteActive(Landroid/net/connectivity/com/android/internal/util/FileRotator$Rewriter;J)V
    .registers 5
    .param p1, "rewriter"    # Landroid/net/connectivity/com/android/internal/util/FileRotator$Rewriter;
    .param p2, "currentTimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    invoke-direct {p0, p2, p3}, Landroid/net/connectivity/com/android/internal/util/FileRotator;->getActiveName(J)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "activeName":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Landroid/net/connectivity/com/android/internal/util/FileRotator;->rewriteSingle(Landroid/net/connectivity/com/android/internal/util/FileRotator$Rewriter;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public blacklist rewriteAll(Landroid/net/connectivity/com/android/internal/util/FileRotator$Rewriter;)V
    .registers 8
    .param p1, "rewriter"    # Landroid/net/connectivity/com/android/internal/util/FileRotator$Rewriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    new-instance v0, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;

    iget-object v1, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, "info":Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;
    iget-object v1, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_20

    aget-object v4, v1, v3

    .line 228
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a

    goto :goto_1d

    .line 231
    :cond_1a
    invoke-direct {p0, p1, v4}, Landroid/net/connectivity/com/android/internal/util/FileRotator;->rewriteSingle(Landroid/net/connectivity/com/android/internal/util/FileRotator$Rewriter;Ljava/lang/String;)V

    .line 227
    .end local v4    # "name":Ljava/lang/String;
    :goto_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 233
    :cond_20
    return-void
.end method

.method public blacklist rewriteSingle(Landroid/net/connectivity/com/android/internal/util/FileRotator$Rewriter;JJ)V
    .registers 8
    .param p1, "rewriter"    # Landroid/net/connectivity/com/android/internal/util/FileRotator$Rewriter;
    .param p2, "startTimeMillis"    # J
    .param p4, "endTimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    new-instance v0, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;

    iget-object v1, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 299
    .local v0, "info":Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;
    iput-wide p2, v0, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;->startMillis:J

    .line 300
    iput-wide p4, v0, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;->endMillis:J

    .line 301
    invoke-virtual {v0}, Landroid/net/connectivity/com/android/internal/util/FileRotator$FileInfo;->build()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroid/net/connectivity/com/android/internal/util/FileRotator;->rewriteSingle(Landroid/net/connectivity/com/android/internal/util/FileRotator$Rewriter;Ljava/lang/String;)V

    .line 302
    return-void
.end method
