.class public abstract Landroid/net/connectivity/org/chromium/base/PathUtils;
.super Ljava/lang/Object;
.source "PathUtils.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist CACHE_DIRECTORY:I = 0x2

.field private static final blacklist DATA_DIRECTORY:I = 0x0

.field private static final blacklist NUM_DIRECTORIES:I = 0x3

.field private static final blacklist TAG:Ljava/lang/String; = "PathUtils"

.field private static final blacklist THUMBNAIL_DIRECTORY:I = 0x1

.field private static final blacklist THUMBNAIL_DIRECTORY_NAME:Ljava/lang/String; = "textures"

.field private static blacklist sCacheDirectoryBasePath:Ljava/lang/String;

.field private static blacklist sCacheSubDirectory:Ljava/lang/String;

.field private static blacklist sDataDirectoryBasePath:Ljava/lang/String;

.field private static blacklist sDataDirectorySuffix:Ljava/lang/String;

.field private static blacklist sDirPathFetchTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sInitializationStarted:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic blacklist $r8$lambda$5Mdgpynukn_OLgl1IyjVJBWIDGs()[Ljava/lang/String;
    .registers 1

    invoke-static {}, Landroid/net/connectivity/org/chromium/base/PathUtils;->setPrivateDirectoryPathInternal()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    nop

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/PathUtils;->sInitializationStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist chmod(Ljava/lang/String;I)V
    .registers 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mode"    # I

    .line 87
    :try_start_0
    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 90
    goto :goto_23

    .line 88
    :catch_4
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set permissions for path \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PathUtils"

    invoke-static {v2, v1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method public static blacklist getAllPrivateDownloadsDirectories()[Ljava/lang/String;
    .registers 4

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->allowDiskWrites()Landroid/net/connectivity/org/chromium/base/StrictModeContext;

    move-result-object v1

    .line 292
    .local v1, "ignored":Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    :try_start_9
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 293
    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    .line 294
    .local v2, "externalDirs":[Ljava/io/File;
    if-nez v2, :cond_17

    move-object v3, v0

    goto :goto_1b

    :cond_17
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_25

    .line 295
    .end local v0    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v2    # "externalDirs":[Ljava/io/File;
    .local v3, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :goto_1b
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->close()V

    .line 296
    .end local v1    # "ignored":Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    :cond_20
    invoke-static {v3}, Landroid/net/connectivity/org/chromium/base/PathUtils;->toAbsolutePathStrings(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 290
    .end local v3    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v0    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v1    # "ignored":Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    :catchall_25
    move-exception v2

    if-eqz v1, :cond_30

    :try_start_28
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_30
    :goto_30
    throw v2
.end method

.method public static blacklist getCacheDirectory()Ljava/lang/String;
    .registers 1

    .line 244
    nop

    .line 245
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/PathUtils;->getDirectoryPath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDataDirectory()Ljava/lang/String;
    .registers 1

    .line 235
    nop

    .line 236
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/PathUtils;->getDirectoryPath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getDirectoryPath(I)Ljava/lang/String;
    .registers 3
    .param p0, "index"    # I

    .line 226
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/PathUtils;->getOrComputeDirectoryPaths()[Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "paths":[Ljava/lang/String;
    aget-object v1, v0, p0

    return-object v1
.end method

.method public static blacklist getDownloadsDirectory()Ljava/lang/String;
    .registers 3

    .line 266
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->allowDiskReads()Landroid/net/connectivity/org/chromium/base/StrictModeContext;

    move-result-object v0

    .line 267
    .local v0, "ignored":Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    nop

    .line 273
    :try_start_5
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/PathUtils;->getAllPrivateDownloadsDirectories()[Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "dirs":[Ljava/lang/String;
    nop

    .line 275
    array-length v2, v1

    if-nez v2, :cond_10

    const-string v2, ""

    goto :goto_13

    :cond_10
    const/4 v2, 0x0

    aget-object v2, v1, v2
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_19

    .line 279
    :goto_13
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->close()V

    .line 275
    :cond_18
    return-object v2

    .line 266
    .end local v1    # "dirs":[Ljava/lang/String;
    :catchall_19
    move-exception v1

    if-eqz v0, :cond_24

    :try_start_1c
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_24
    :goto_24
    throw v1
.end method

.method public static blacklist getExternalDownloadVolumesNames()[Ljava/lang/String;
    .registers 13

    .line 308
    const-string v0, "PathUtils"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/MediaStore;->getExternalVolumeNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    .line 311
    .local v2, "volumes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_84

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 312
    .local v4, "vol":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_83

    const-string v5, "external_primary"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_83

    .line 314
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Landroid/os/storage/StorageManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 315
    .local v5, "manager":Landroid/os/storage/StorageManager;
    invoke-static {v4}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 317
    .local v6, "uri":Landroid/net/Uri;
    :try_start_3d
    invoke-virtual {v5, v6}, Landroid/os/storage/StorageManager;->getStorageVolume(Landroid/net/Uri;)Landroid/os/storage/StorageVolume;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getDirectory()Ljava/io/File;

    move-result-object v7

    .line 318
    .local v7, "volumeDir":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    sget-object v9, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-direct {v8, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 321
    .local v8, "volumeDownloadDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_67

    .line 322
    const-string v9, "Download dir missing: %s, parent dir:%s, isDirectory:%s"

    .line 325
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 326
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 327
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 322
    invoke-static {v0, v9, v10, v11, v12}, Landroid/net/connectivity/org/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 329
    :cond_67
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_6a} :catch_6c

    .line 332
    nop

    .end local v7    # "volumeDir":Ljava/io/File;
    .end local v8    # "volumeDownloadDir":Ljava/io/File;
    goto :goto_83

    .line 330
    :catch_6c
    move-exception v7

    .line 331
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to get storage volume for uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, v7}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 334
    .end local v4    # "vol":Ljava/lang/String;
    .end local v5    # "manager":Landroid/os/storage/StorageManager;
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_83
    :goto_83
    goto :goto_13

    .line 336
    :cond_84
    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/PathUtils;->toAbsolutePathStrings(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getExternalStorageDirectory()Ljava/lang/String;
    .registers 1

    .line 370
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getNativeLibraryDirectory()Ljava/lang/String;
    .registers 2

    .line 355
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 356
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_18

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_15

    goto :goto_18

    .line 361
    :cond_15
    const-string v1, "/system/lib/"

    return-object v1

    .line 358
    :cond_18
    :goto_18
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    return-object v1
.end method

.method private static blacklist getOrComputeDirectoryPaths()[Ljava/lang/String;
    .registers 3

    .line 72
    sget-object v0, Landroid/net/connectivity/org/chromium/base/PathUtils;->sDirPathFetchTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_23

    .line 73
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->allowDiskWrites()Landroid/net/connectivity/org/chromium/base/StrictModeContext;

    move-result-object v0

    .line 75
    .local v0, "ignored":Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    :try_start_c
    sget-object v1, Landroid/net/connectivity/org/chromium/base/PathUtils;->sDirPathFetchTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->run()V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_17

    .line 76
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->close()V

    goto :goto_23

    .line 73
    :catchall_17
    move-exception v1

    if-eqz v0, :cond_22

    :try_start_1a
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_22

    :catchall_1e
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_22
    :goto_22
    throw v1

    .line 79
    .end local v0    # "ignored":Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    :cond_23
    :goto_23
    :try_start_23
    sget-object v0, Landroid/net/connectivity/org/chromium/base/PathUtils;->sDirPathFetchTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2b} :catch_2c

    return-object v0

    .line 80
    :catch_2c
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/JavaUtils;->throwUnchecked(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist getThumbnailCacheDirectory()Ljava/lang/String;
    .registers 1

    .line 252
    nop

    .line 253
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/PathUtils;->getDirectoryPath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isPathUnderAppDir(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 9
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 97
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "file":Ljava/io/File;
    invoke-virtual {p1}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v1

    .line 99
    .local v1, "dataDir":Ljava/io/File;
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 101
    .local v2, "externalDir":Ljava/io/File;
    const/4 v3, 0x0

    :try_start_13
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    new-array v5, v3, [Ljava/nio/file/LinkOption;

    invoke-interface {v4, v5}, Ljava/nio/file/Path;->toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    new-array v6, v3, [Ljava/nio/file/LinkOption;

    invoke-interface {v5, v6}, Ljava/nio/file/Path;->toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    new-array v5, v3, [Ljava/nio/file/LinkOption;

    invoke-interface {v4, v5}, Ljava/nio/file/Path;->toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    new-array v6, v3, [Ljava/nio/file/LinkOption;

    invoke-interface {v5, v6}, Ljava/nio/file/Path;->toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result v4
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_45} :catch_49

    if-eqz v4, :cond_48

    :cond_47
    const/4 v3, 0x1

    .line 101
    :cond_48
    return v3

    .line 103
    :catch_49
    move-exception v4

    .line 104
    .local v4, "e":Ljava/lang/Exception;
    return v3
.end method

.method public static blacklist resetForTesting()V
    .registers 2

    .line 58
    sget-object v0, Landroid/net/connectivity/org/chromium/base/PathUtils;->sInitializationStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 59
    const/4 v0, 0x0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/PathUtils;->sDirPathFetchTask:Ljava/util/concurrent/FutureTask;

    .line 60
    sput-object v0, Landroid/net/connectivity/org/chromium/base/PathUtils;->sDataDirectorySuffix:Ljava/lang/String;

    .line 61
    sput-object v0, Landroid/net/connectivity/org/chromium/base/PathUtils;->sCacheSubDirectory:Ljava/lang/String;

    .line 62
    sput-object v0, Landroid/net/connectivity/org/chromium/base/PathUtils;->sDataDirectoryBasePath:Ljava/lang/String;

    .line 63
    sput-object v0, Landroid/net/connectivity/org/chromium/base/PathUtils;->sCacheDirectoryBasePath:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public static blacklist setPrivateDataDirectorySuffix(Ljava/lang/String;)V
    .registers 2
    .param p0, "suffix"    # Ljava/lang/String;

    .line 218
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/connectivity/org/chromium/base/PathUtils;->setPrivateDataDirectorySuffix(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public static blacklist setPrivateDataDirectorySuffix(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "suffix"    # Ljava/lang/String;
    .param p1, "cacheSubDir"    # Ljava/lang/String;

    .line 214
    const/4 v0, 0x0

    invoke-static {v0, v0, p0, p1}, Landroid/net/connectivity/org/chromium/base/PathUtils;->setPrivateDirectoryPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public static blacklist setPrivateDirectoryPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "dataBasePath"    # Ljava/lang/String;
    .param p1, "cacheBasePath"    # Ljava/lang/String;
    .param p2, "dataDirSuffix"    # Ljava/lang/String;
    .param p3, "cacheSubDir"    # Ljava/lang/String;

    .line 176
    sget-object v0, Landroid/net/connectivity/org/chromium/base/PathUtils;->sInitializationStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_26

    .line 177
    nop

    .line 178
    sput-object p0, Landroid/net/connectivity/org/chromium/base/PathUtils;->sDataDirectoryBasePath:Ljava/lang/String;

    .line 179
    sput-object p1, Landroid/net/connectivity/org/chromium/base/PathUtils;->sCacheDirectoryBasePath:Ljava/lang/String;

    .line 180
    sput-object p2, Landroid/net/connectivity/org/chromium/base/PathUtils;->sDataDirectorySuffix:Ljava/lang/String;

    .line 181
    sput-object p3, Landroid/net/connectivity/org/chromium/base/PathUtils;->sCacheSubDirectory:Ljava/lang/String;

    .line 186
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Landroid/net/connectivity/org/chromium/base/PathUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/base/PathUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/PathUtils;->sDirPathFetchTask:Ljava/util/concurrent/FutureTask;

    .line 187
    sget-object v0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sget-object v1, Landroid/net/connectivity/org/chromium/base/PathUtils;->sDirPathFetchTask:Ljava/util/concurrent/FutureTask;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2a

    .line 189
    :cond_26
    nop

    .line 191
    nop

    .line 193
    nop

    .line 195
    nop

    .line 198
    :goto_2a
    return-void
.end method

.method private static blacklist setPrivateDirectoryPathInternal()[Ljava/lang/String;
    .registers 9

    .line 117
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 118
    .local v0, "paths":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 119
    .local v1, "dataDir":Ljava/io/File;
    const/4 v2, 0x0

    .line 120
    .local v2, "thumbnailDir":Ljava/io/File;
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 121
    .local v3, "appContext":Landroid/content/Context;
    sget-object v4, Landroid/net/connectivity/org/chromium/base/PathUtils;->sDataDirectoryBasePath:Ljava/lang/String;

    const-string v5, "textures"

    const/4 v6, 0x0

    if-nez v4, :cond_1b

    .line 122
    sget-object v4, Landroid/net/connectivity/org/chromium/base/PathUtils;->sDataDirectorySuffix:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 123
    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    goto :goto_33

    .line 125
    :cond_1b
    new-instance v4, Ljava/io/File;

    sget-object v7, Landroid/net/connectivity/org/chromium/base/PathUtils;->sDataDirectoryBasePath:Ljava/lang/String;

    sget-object v8, Landroid/net/connectivity/org/chromium/base/PathUtils;->sDataDirectorySuffix:Ljava/lang/String;

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    .line 126
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 127
    new-instance v4, Ljava/io/File;

    sget-object v7, Landroid/net/connectivity/org/chromium/base/PathUtils;->sDataDirectoryBasePath:Ljava/lang/String;

    invoke-direct {v4, v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 128
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 131
    :goto_33
    const/4 v4, 0x0

    .line 132
    .local v4, "cacheDir":Ljava/io/File;
    sget-object v5, Landroid/net/connectivity/org/chromium/base/PathUtils;->sCacheDirectoryBasePath:Ljava/lang/String;

    if-eqz v5, :cond_40

    .line 133
    new-instance v5, Ljava/io/File;

    sget-object v7, Landroid/net/connectivity/org/chromium/base/PathUtils;->sCacheDirectoryBasePath:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v4    # "cacheDir":Ljava/io/File;
    .local v5, "cacheDir":Ljava/io/File;
    goto :goto_44

    .line 135
    .end local v5    # "cacheDir":Ljava/io/File;
    .restart local v4    # "cacheDir":Ljava/io/File;
    :cond_40
    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    .line 137
    .end local v4    # "cacheDir":Ljava/io/File;
    .restart local v5    # "cacheDir":Ljava/io/File;
    :goto_44
    if-eqz v5, :cond_6d

    .line 138
    sget-object v4, Landroid/net/connectivity/org/chromium/base/PathUtils;->sCacheSubDirectory:Ljava/lang/String;

    if-eqz v4, :cond_52

    .line 139
    new-instance v4, Ljava/io/File;

    sget-object v7, Landroid/net/connectivity/org/chromium/base/PathUtils;->sCacheSubDirectory:Ljava/lang/String;

    invoke-direct {v4, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v4

    .line 141
    :cond_52
    sget-object v4, Landroid/net/connectivity/org/chromium/base/PathUtils;->sCacheDirectoryBasePath:Ljava/lang/String;

    if-nez v4, :cond_5a

    sget-object v4, Landroid/net/connectivity/org/chromium/base/PathUtils;->sCacheSubDirectory:Ljava/lang/String;

    if-eqz v4, :cond_66

    .line 142
    :cond_5a
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 144
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x5c0

    invoke-static {v4, v7}, Landroid/net/connectivity/org/chromium/base/PathUtils;->chmod(Ljava/lang/String;I)V

    .line 146
    :cond_66
    const/4 v4, 0x2

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v4

    .line 148
    :cond_6d
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    .line 150
    aget-object v4, v0, v6

    const/16 v6, 0x1c0

    invoke-static {v4, v6}, Landroid/net/connectivity/org/chromium/base/PathUtils;->chmod(Ljava/lang/String;I)V

    .line 151
    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    .line 152
    return-object v0
.end method

.method private static blacklist toAbsolutePathStrings(Ljava/util/List;)[Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 340
    .local p0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v0, "absolutePaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 342
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_9

    .line 343
    :cond_22
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    .end local v2    # "file":Ljava/io/File;
    goto :goto_9

    .line 346
    :cond_2a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method
