.class public final Lcom/android/internal/os/AtomicDirectory;
.super Ljava/lang/Object;
.source "AtomicDirectory.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mBackupDirectory:Ljava/io/File;

.field private final blacklist mBaseDirectory:Ljava/io/File;

.field private final blacklist mOpenFiles:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/io/File;",
            "Ljava/io/FileOutputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
    const-class v0, Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/AtomicDirectory;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/File;)V
    .registers 5
    .param p1, "baseDirectory"    # Ljava/io/File;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mOpenFiles:Landroid/util/ArrayMap;

    .line 67
    const-string v0, "baseDirectory cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iput-object p1, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    .line 69
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectory:Ljava/io/File;

    .line 70
    return-void
.end method

.method private blacklist backup()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 253
    return-void

    .line 256
    :cond_9
    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 257
    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectory:Ljava/io/File;

    invoke-static {v0}, Lcom/android/internal/os/AtomicDirectory;->deleteDirectory(Ljava/io/File;)Z

    .line 259
    :cond_16
    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectory:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 262
    invoke-direct {p0}, Lcom/android/internal/os/AtomicDirectory;->syncParentDirectory()V

    .line 263
    return-void

    .line 260
    :cond_24
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to backup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectory:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist deleteDirectory(Ljava/io/File;)Z
    .registers 2
    .param p0, "directory"    # Ljava/io/File;

    .line 281
    invoke-static {p0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private blacklist ensureBaseDirectory()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 234
    return-void

    .line 237
    :cond_9
    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 240
    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f9

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 242
    return-void

    .line 238
    :cond_1e
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist restore()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 267
    return-void

    .line 270
    :cond_9
    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 271
    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    invoke-static {v0}, Lcom/android/internal/os/AtomicDirectory;->deleteDirectory(Ljava/io/File;)Z

    .line 273
    :cond_16
    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectory:Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 277
    invoke-direct {p0}, Lcom/android/internal/os/AtomicDirectory;->syncParentDirectory()V

    .line 278
    return-void

    .line 274
    :cond_24
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to restore "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectory:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist syncDirectory(Ljava/io/File;)V
    .registers 7
    .param p0, "directory"    # Ljava/io/File;

    .line 291
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "path":Ljava/lang/String;
    :try_start_4
    sget v1, Landroid/system/OsConstants;->O_RDONLY:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_b
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_b} :catch_36

    .line 298
    .local v1, "fd":Ljava/io/FileDescriptor;
    nop

    .line 300
    :try_start_c
    invoke-static {v1}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V
    :try_end_f
    .catch Landroid/system/ErrnoException; {:try_start_c .. :try_end_f} :catch_16
    .catchall {:try_start_c .. :try_end_f} :catchall_14

    .line 304
    nop

    :goto_10
    invoke-static {v1}, Landroid/os/FileUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 305
    goto :goto_31

    .line 304
    :catchall_14
    move-exception v2

    goto :goto_32

    .line 301
    :catch_16
    move-exception v2

    .line 302
    .local v2, "e":Landroid/system/ErrnoException;
    :try_start_17
    sget-object v3, Lcom/android/internal/os/AtomicDirectory;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to fsync "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_14

    .line 304
    nop

    .end local v2    # "e":Landroid/system/ErrnoException;
    goto :goto_10

    .line 306
    :goto_31
    return-void

    .line 304
    :goto_32
    invoke-static {v1}, Landroid/os/FileUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 305
    throw v2

    .line 295
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    :catch_36
    move-exception v1

    .line 296
    .local v1, "e":Landroid/system/ErrnoException;
    sget-object v2, Lcom/android/internal/os/AtomicDirectory;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    return-void
.end method

.method private blacklist syncParentDirectory()V
    .registers 2

    .line 285
    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/AtomicDirectory;->syncDirectory(Ljava/io/File;)V

    .line 286
    return-void
.end method

.method private blacklist throwIfSomeFilesOpen()V
    .registers 4

    .line 245
    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mOpenFiles:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 249
    return-void

    .line 246
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unclosed files: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/AtomicDirectory;->mOpenFiles:Landroid/util/ArrayMap;

    .line 247
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist closeWrite(Ljava/io/FileOutputStream;)V
    .registers 6
    .param p1, "destination"    # Ljava/io/FileOutputStream;

    .line 160
    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mOpenFiles:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 161
    .local v0, "indexOfValue":I
    if-ltz v0, :cond_14

    .line 164
    iget-object v1, p0, Lcom/android/internal/os/AtomicDirectory;->mOpenFiles:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 165
    invoke-static {p1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 166
    invoke-static {p1}, Landroid/os/FileUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 167
    return-void

    .line 162
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown file stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist delete()V
    .registers 3

    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, "deleted":Z
    iget-object v1, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 222
    iget-object v1, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    invoke-static {v1}, Lcom/android/internal/os/AtomicDirectory;->deleteDirectory(Ljava/io/File;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 224
    :cond_10
    iget-object v1, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 225
    iget-object v1, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectory:Ljava/io/File;

    invoke-static {v1}, Lcom/android/internal/os/AtomicDirectory;->deleteDirectory(Ljava/io/File;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 227
    :cond_1f
    if-eqz v0, :cond_24

    .line 228
    invoke-direct {p0}, Lcom/android/internal/os/AtomicDirectory;->syncParentDirectory()V

    .line 230
    :cond_24
    return-void
.end method

.method public blacklist exists()Z
    .registers 2

    .line 213
    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public blacklist failWrite()V
    .registers 4

    .line 200
    invoke-direct {p0}, Lcom/android/internal/os/AtomicDirectory;->throwIfSomeFilesOpen()V

    .line 203
    :try_start_3
    invoke-direct {p0}, Lcom/android/internal/os/AtomicDirectory;->restore()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    .line 206
    goto :goto_f

    .line 204
    :catch_7
    move-exception v0

    .line 205
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/internal/os/AtomicDirectory;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to restore in failWrite()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    .end local v0    # "e":Ljava/io/IOException;
    :goto_f
    return-void
.end method

.method public blacklist failWrite(Ljava/io/FileOutputStream;)V
    .registers 6
    .param p1, "destination"    # Ljava/io/FileOutputStream;

    .line 170
    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mOpenFiles:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 171
    .local v0, "indexOfValue":I
    if-ltz v0, :cond_11

    .line 174
    iget-object v1, p0, Lcom/android/internal/os/AtomicDirectory;->mOpenFiles:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 175
    invoke-static {p1}, Landroid/os/FileUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 176
    return-void

    .line 172
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown file stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist finishRead()V
    .registers 1

    .line 107
    return-void
.end method

.method public blacklist finishWrite()V
    .registers 2

    .line 186
    invoke-direct {p0}, Lcom/android/internal/os/AtomicDirectory;->throwIfSomeFilesOpen()V

    .line 188
    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    invoke-static {v0}, Lcom/android/internal/os/AtomicDirectory;->syncDirectory(Ljava/io/File;)V

    .line 189
    invoke-direct {p0}, Lcom/android/internal/os/AtomicDirectory;->syncParentDirectory()V

    .line 190
    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectory:Ljava/io/File;

    invoke-static {v0}, Lcom/android/internal/os/AtomicDirectory;->deleteDirectory(Ljava/io/File;)Z

    .line 191
    invoke-direct {p0}, Lcom/android/internal/os/AtomicDirectory;->syncParentDirectory()V

    .line 192
    return-void
.end method

.method public blacklist getBackupDirectory()Ljava/io/File;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectory:Ljava/io/File;

    return-object v0
.end method

.method public blacklist openWrite(Ljava/io/File;)Ljava/io/FileOutputStream;
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_42

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 144
    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mOpenFiles:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 147
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 148
    .local v0, "destination":Ljava/io/FileOutputStream;
    iget-object v1, p0, Lcom/android/internal/os/AtomicDirectory;->mOpenFiles:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-object v0

    .line 145
    .end local v0    # "destination":Ljava/io/FileOutputStream;
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already open file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must be a file in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist startRead()Ljava/io/File;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Lcom/android/internal/os/AtomicDirectory;->restore()V

    .line 97
    invoke-direct {p0}, Lcom/android/internal/os/AtomicDirectory;->ensureBaseDirectory()V

    .line 98
    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    return-object v0
.end method

.method public blacklist startWrite()Ljava/io/File;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Lcom/android/internal/os/AtomicDirectory;->backup()V

    .line 126
    invoke-direct {p0}, Lcom/android/internal/os/AtomicDirectory;->ensureBaseDirectory()V

    .line 127
    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    return-object v0
.end method
