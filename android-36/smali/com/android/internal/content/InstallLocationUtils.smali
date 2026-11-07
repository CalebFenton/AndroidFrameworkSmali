.class public Lcom/android/internal/content/InstallLocationUtils;
.super Ljava/lang/Object;
.source "InstallLocationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/InstallLocationUtils$TestableInterface;
    }
.end annotation


# static fields
.field public static final blacklist APP_INSTALL_AUTO:I = 0x0

.field public static final blacklist APP_INSTALL_EXTERNAL:I = 0x2

.field public static final blacklist APP_INSTALL_INTERNAL:I = 0x1

.field public static final blacklist RECOMMEND_FAILED_ALREADY_EXISTS:I = -0x4

.field public static final blacklist RECOMMEND_FAILED_INSUFFICIENT_STORAGE:I = -0x1

.field public static final blacklist RECOMMEND_FAILED_INVALID_APK:I = -0x2

.field public static final blacklist RECOMMEND_FAILED_INVALID_LOCATION:I = -0x3

.field public static final blacklist RECOMMEND_FAILED_INVALID_URI:I = -0x6

.field public static final blacklist RECOMMEND_INSTALL_EPHEMERAL:I = 0x3

.field public static final blacklist RECOMMEND_INSTALL_EXTERNAL:I = 0x2

.field public static final blacklist RECOMMEND_INSTALL_INTERNAL:I = 0x1

.field public static final blacklist RECOMMEND_MEDIA_UNAVAILABLE:I = -0x5

.field private static final blacklist TAG:Ljava/lang/String; = "PackageHelper"

.field private static blacklist sDefaultTestableInterface:Lcom/android/internal/content/InstallLocationUtils$TestableInterface;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/content/InstallLocationUtils;->sDefaultTestableInterface:Lcom/android/internal/content/InstallLocationUtils$TestableInterface;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J
    .registers 10
    .param p0, "pkg"    # Landroid/content/pm/parsing/PackageLite;
    .param p1, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p2, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    const-wide/16 v0, 0x0

    .line 449
    .local v0, "sizeBytes":J
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getAllApkPaths()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 450
    .local v3, "codePath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 451
    .local v4, "codeFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 452
    .end local v3    # "codePath":Ljava/lang/String;
    .end local v4    # "codeFile":Ljava/io/File;
    goto :goto_a

    .line 455
    :cond_21
    invoke-static {p0}, Landroid/content/pm/dex/DexMetadataHelper;->getPackageDexMetadataSize(Landroid/content/pm/parsing/PackageLite;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 457
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->isExtractNativeLibs()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 459
    invoke-static {p1, p2}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 462
    :cond_31
    return-wide v0
.end method

.method public static blacklist calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;)J
    .registers 4
    .param p0, "pkg"    # Landroid/content/pm/parsing/PackageLite;
    .param p1, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;Ljava/io/FileDescriptor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;Ljava/io/FileDescriptor;)J
    .registers 6
    .param p0, "pkg"    # Landroid/content/pm/parsing/PackageLite;
    .param p1, "abiOverride"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    const/4 v0, 0x0

    .line 430
    .local v0, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    if-eqz p2, :cond_8

    :try_start_3
    invoke-static {p0, p2}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->createFd(Landroid/content/pm/parsing/PackageLite;Ljava/io/FileDescriptor;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v1

    goto :goto_c

    .line 431
    :cond_8
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Landroid/content/pm/parsing/PackageLite;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v1

    :goto_c
    move-object v0, v1

    .line 432
    invoke-static {p0, v0, p1}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J

    move-result-wide v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_15

    .line 434
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 432
    return-wide v1

    .line 434
    :catchall_15
    move-exception v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 435
    throw v1
.end method

.method public static blacklist calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;ZLcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J
    .registers 6
    .param p0, "pkg"    # Landroid/content/pm/parsing/PackageLite;
    .param p1, "isForwardLocked"    # Z
    .param p2, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p3, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 441
    invoke-static {p0, p2, p3}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;ZLjava/lang/String;)J
    .registers 5
    .param p0, "pkg"    # Landroid/content/pm/parsing/PackageLite;
    .param p1, "isForwardLocked"    # Z
    .param p2, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 418
    invoke-static {p0, p2}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist checkFitOnVolume(Landroid/os/storage/StorageManager;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionParams;)Z
    .registers 16
    .param p0, "storageManager"    # Landroid/os/storage/StorageManager;
    .param p1, "volumePath"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 175
    return v0

    .line 177
    :cond_4
    iget v1, p2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-static {v1}, Lcom/android/internal/content/InstallLocationUtils;->translateAllocateFlags(I)I

    move-result v1

    .line 178
    .local v1, "installFlags":I
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object v2

    .line 179
    .local v2, "target":Ljava/util/UUID;
    or-int/lit8 v3, v1, 0x8

    invoke-virtual {p0, v2, v3}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;I)J

    move-result-wide v3

    .line 181
    .local v3, "availBytes":J
    iget-wide v5, p2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    cmp-long v5, v5, v3

    const/4 v6, 0x1

    if-gtz v5, :cond_21

    .line 182
    return v6

    .line 184
    :cond_21
    or-int/lit8 v5, v1, 0x10

    invoke-virtual {p0, v2, v5}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;I)J

    move-result-wide v7

    .line 186
    .local v7, "cacheClearable":J
    iget-wide v9, p2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    add-long v11, v3, v7

    cmp-long v5, v9, v11

    if-gtz v5, :cond_30

    move v0, v6

    :cond_30
    return v0
.end method

.method public static blacklist fitsOnExternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;

    .line 326
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 327
    .local v0, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 328
    .local v1, "primary":Landroid/os/storage/StorageVolume;
    iget-wide v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_36

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v2

    if-nez v2, :cond_36

    .line 329
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    iget-wide v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 330
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/storage/StorageManager;->getStorageBytesUntilLow(Ljava/io/File;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_36

    const/4 v2, 0x1

    goto :goto_37

    :cond_36
    const/4 v2, 0x0

    .line 328
    :goto_37
    return v2
.end method

.method public static blacklist fitsOnInternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 307
    .local v0, "storage":Landroid/os/storage/StorageManager;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object v1

    .line 308
    .local v1, "target":Ljava/util/UUID;
    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-static {v2}, Lcom/android/internal/content/InstallLocationUtils;->translateAllocateFlags(I)I

    move-result v2

    .line 310
    .local v2, "flags":I
    or-int/lit8 v3, v2, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;I)J

    move-result-wide v3

    .line 315
    .local v3, "allocateableBytes":J
    iget-wide v5, p1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    cmp-long v5, v5, v3

    const/4 v6, 0x1

    if-gtz v5, :cond_24

    .line 316
    return v6

    .line 319
    :cond_24
    or-int/lit8 v5, v2, 0x10

    invoke-virtual {v0, v1, v5}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;I)J

    move-result-wide v7

    .line 322
    .local v7, "cacheClearable":J
    iget-wide v9, p1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    add-long v11, v3, v7

    cmp-long v5, v9, v11

    if-gtz v5, :cond_33

    goto :goto_34

    :cond_33
    const/4 v6, 0x0

    :goto_34
    return v6
.end method

.method private static declared-synchronized blacklist getDefaultTestableInterface()Lcom/android/internal/content/InstallLocationUtils$TestableInterface;
    .registers 2

    const-class v0, Lcom/android/internal/content/InstallLocationUtils;

    monitor-enter v0

    .line 105
    :try_start_3
    sget-object v1, Lcom/android/internal/content/InstallLocationUtils;->sDefaultTestableInterface:Lcom/android/internal/content/InstallLocationUtils$TestableInterface;

    if-nez v1, :cond_e

    .line 106
    new-instance v1, Lcom/android/internal/content/InstallLocationUtils$1;

    invoke-direct {v1}, Lcom/android/internal/content/InstallLocationUtils$1;-><init>()V

    sput-object v1, Lcom/android/internal/content/InstallLocationUtils;->sDefaultTestableInterface:Lcom/android/internal/content/InstallLocationUtils$TestableInterface;

    .line 141
    :cond_e
    sget-object v1, Lcom/android/internal/content/InstallLocationUtils;->sDefaultTestableInterface:Lcom/android/internal/content/InstallLocationUtils$TestableInterface;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 104
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static blacklist getInstallationErrorCode(I)I
    .registers 4
    .param p0, "loc"    # I

    .line 508
    const/4 v0, -0x3

    if-ne p0, v0, :cond_6

    .line 509
    const/16 v0, -0x13

    return v0

    .line 510
    :cond_6
    const/4 v1, -0x1

    const/4 v2, -0x4

    if-ne p0, v2, :cond_b

    .line 511
    return v1

    .line 512
    :cond_b
    if-ne p0, v1, :cond_e

    .line 513
    return v2

    .line 514
    :cond_e
    const/4 v1, -0x2

    if-ne p0, v1, :cond_12

    .line 515
    return v1

    .line 516
    :cond_12
    const/4 v1, -0x6

    if-ne p0, v1, :cond_16

    .line 517
    return v0

    .line 518
    :cond_16
    const/4 v0, -0x5

    if-ne p0, v0, :cond_1c

    .line 519
    const/16 v0, -0x14

    return v0

    .line 521
    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist getStorageManager()Landroid/os/storage/IStorageManager;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    const-string v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 79
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_d

    .line 80
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    return-object v1

    .line 82
    :cond_d
    const-string v1, "PackageHelper"

    const-string v2, "Can\'t get storagemanager service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Could not contact storagemanager service"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist installLocationPolicy(IIIZZ)I
    .registers 7
    .param p0, "installLocation"    # I
    .param p1, "recommendedInstallLocation"    # I
    .param p2, "installFlags"    # I
    .param p3, "installedPkgIsSystem"    # Z
    .param p4, "installedPackageOnExternal"    # Z

    .line 483
    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_6

    .line 485
    const/4 v0, -0x4

    return v0

    .line 488
    :cond_6
    const/4 v0, 0x1

    if-eqz p3, :cond_a

    .line 489
    return v0

    .line 492
    :cond_a
    if-ne p0, v0, :cond_d

    .line 494
    return v0

    .line 495
    :cond_d
    const/4 v1, 0x2

    if-ne p0, v1, :cond_11

    .line 497
    return p1

    .line 500
    :cond_11
    if-eqz p4, :cond_14

    .line 501
    return v1

    .line 503
    :cond_14
    return v0
.end method

.method public static blacklist replaceEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "before"    # Ljava/lang/String;
    .param p2, "after"    # Ljava/lang/String;

    .line 466
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 467
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to end with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist resolveInstallLocation(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)I
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    const/4 v0, 0x0

    .line 341
    .local v0, "existingInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    const/high16 v3, 0x400000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_f

    move-object v0, v1

    .line 344
    goto :goto_10

    .line 343
    :catch_f
    move-exception v1

    .line 348
    :goto_10
    const/4 v1, 0x0

    .line 349
    .local v1, "ephemeral":Z
    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v2, v2, 0x800

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_1d

    .line 350
    const/4 v2, 0x1

    .line 351
    .local v2, "prefer":I
    const/4 v1, 0x1

    .line 352
    const/4 v5, 0x0

    .local v5, "checkBoth":Z
    goto :goto_4a

    .line 353
    .end local v2    # "prefer":I
    .end local v5    # "checkBoth":Z
    :cond_1d
    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_26

    .line 354
    const/4 v2, 0x1

    .line 355
    .restart local v2    # "prefer":I
    const/4 v5, 0x0

    .restart local v5    # "checkBoth":Z
    goto :goto_4a

    .line 356
    .end local v2    # "prefer":I
    .end local v5    # "checkBoth":Z
    :cond_26
    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    if-ne v2, v4, :cond_2d

    .line 357
    const/4 v2, 0x1

    .line 358
    .restart local v2    # "prefer":I
    const/4 v5, 0x0

    .restart local v5    # "checkBoth":Z
    goto :goto_4a

    .line 359
    .end local v2    # "prefer":I
    .end local v5    # "checkBoth":Z
    :cond_2d
    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    if-ne v2, v3, :cond_34

    .line 360
    const/4 v2, 0x2

    .line 361
    .restart local v2    # "prefer":I
    const/4 v5, 0x1

    .restart local v5    # "checkBoth":Z
    goto :goto_4a

    .line 362
    .end local v2    # "prefer":I
    .end local v5    # "checkBoth":Z
    :cond_34
    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    if-nez v2, :cond_48

    .line 364
    if-eqz v0, :cond_45

    .line 366
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x40000

    and-int/2addr v2, v5

    if-eqz v2, :cond_43

    .line 367
    const/4 v2, 0x2

    .restart local v2    # "prefer":I
    goto :goto_46

    .line 369
    .end local v2    # "prefer":I
    :cond_43
    const/4 v2, 0x1

    .restart local v2    # "prefer":I
    goto :goto_46

    .line 372
    .end local v2    # "prefer":I
    :cond_45
    const/4 v2, 0x1

    .line 374
    .restart local v2    # "prefer":I
    :goto_46
    const/4 v5, 0x1

    .restart local v5    # "checkBoth":Z
    goto :goto_4a

    .line 376
    .end local v2    # "prefer":I
    .end local v5    # "checkBoth":Z
    :cond_48
    const/4 v2, 0x1

    .line 377
    .restart local v2    # "prefer":I
    const/4 v5, 0x0

    .line 380
    .restart local v5    # "checkBoth":Z
    :goto_4a
    const/4 v6, 0x0

    .line 381
    .local v6, "fitsOnInternal":Z
    if-nez v5, :cond_4f

    if-ne v2, v4, :cond_53

    .line 382
    :cond_4f
    invoke-static {p0, p1}, Lcom/android/internal/content/InstallLocationUtils;->fitsOnInternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v6

    .line 385
    :cond_53
    const/4 v7, 0x0

    .line 386
    .local v7, "fitsOnExternal":Z
    if-nez v5, :cond_58

    if-ne v2, v3, :cond_5c

    .line 387
    :cond_58
    invoke-static {p0, p1}, Lcom/android/internal/content/InstallLocationUtils;->fitsOnExternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v7

    .line 390
    :cond_5c
    if-ne v2, v4, :cond_66

    .line 393
    if-eqz v6, :cond_6b

    .line 394
    if-eqz v1, :cond_64

    .line 395
    const/4 v4, 0x3

    goto :goto_65

    .line 396
    :cond_64
    nop

    .line 394
    :goto_65
    return v4

    .line 398
    :cond_66
    if-ne v2, v3, :cond_6b

    .line 399
    if-eqz v7, :cond_6b

    .line 400
    return v3

    .line 404
    :cond_6b
    if-eqz v5, :cond_73

    .line 405
    if-eqz v6, :cond_70

    .line 406
    return v4

    .line 407
    :cond_70
    if-eqz v7, :cond_73

    .line 408
    return v3

    .line 412
    :cond_73
    const/4 v3, -0x1

    return v3
.end method

.method public static blacklist resolveInstallVolume(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getDefaultTestableInterface()Lcom/android/internal/content/InstallLocationUtils$TestableInterface;

    move-result-object v5

    .line 168
    .local v5, "testableInterface":Lcom/android/internal/content/InstallLocationUtils$TestableInterface;
    iget-object v1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    iget-wide v3, p1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    move-object v0, p0

    .end local p0    # "context":Landroid/content/Context;
    .local v0, "context":Landroid/content/Context;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/content/InstallLocationUtils;->resolveInstallVolume(Landroid/content/Context;Ljava/lang/String;IJLcom/android/internal/content/InstallLocationUtils$TestableInterface;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist resolveInstallVolume(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/internal/content/InstallLocationUtils$TestableInterface;)Ljava/lang/String;
    .registers 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p2, "testInterface"    # Lcom/android/internal/content/InstallLocationUtils$TestableInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v2, v0}, Lcom/android/internal/content/InstallLocationUtils$TestableInterface;->getStorageManager(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v3

    .line 193
    .local v3, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v2, v0}, Lcom/android/internal/content/InstallLocationUtils$TestableInterface;->getForceAllowOnExternalSetting(Landroid/content/Context;)Z

    move-result v4

    .line 194
    .local v4, "forceAllowOnExternal":Z
    nop

    .line 195
    invoke-virtual {v2, v0}, Lcom/android/internal/content/InstallLocationUtils$TestableInterface;->getAllow3rdPartyOnInternalConfig(Landroid/content/Context;)Z

    move-result v5

    .line 198
    .local v5, "allow3rdPartyOnInternal":Z
    iget-object v6, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v6}, Lcom/android/internal/content/InstallLocationUtils$TestableInterface;->getExistingAppInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 201
    .local v6, "existingInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 202
    .local v7, "volumePaths":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 203
    .local v8, "internalVolumePath":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_27
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_56

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/storage/VolumeInfo;

    .line 204
    .local v10, "vol":Landroid/os/storage/VolumeInfo;
    iget v12, v10, Landroid/os/storage/VolumeInfo;->type:I

    if-ne v12, v11, :cond_55

    invoke-virtual {v10}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v11

    if-eqz v11, :cond_55

    .line 205
    const-string v11, "private"

    iget-object v12, v10, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 206
    .local v11, "isInternalStorage":Z
    if-eqz v11, :cond_4a

    .line 207
    iget-object v8, v10, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 209
    :cond_4a
    if-eqz v11, :cond_4e

    if-eqz v5, :cond_55

    .line 210
    :cond_4e
    iget-object v12, v10, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    iget-object v13, v10, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v7, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .end local v10    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v11    # "isInternalStorage":Z
    :cond_55
    goto :goto_27

    .line 216
    :cond_56
    const-string v9, " upgrade"

    const-string v10, "Not enough space on existing volume "

    if-eqz v6, :cond_94

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v12

    if-eqz v12, :cond_94

    .line 217
    invoke-static {v3, v8, v1}, Lcom/android/internal/content/InstallLocationUtils;->checkFitOnVolume(Landroid/os/storage/StorageManager;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v11

    if-eqz v11, :cond_6b

    .line 218
    sget-object v9, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v9

    .line 220
    :cond_6b
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " for system app "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 227
    :cond_94
    if-nez v4, :cond_ef

    iget v12, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    if-ne v12, v11, :cond_ef

    .line 229
    if-eqz v6, :cond_d4

    iget-object v9, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    sget-object v10, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a7

    goto :goto_d4

    .line 231
    :cond_a7
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot automatically move "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to internal storage"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 235
    :cond_d4
    :goto_d4
    if-eqz v5, :cond_e7

    .line 239
    invoke-static {v3, v8, v1}, Lcom/android/internal/content/InstallLocationUtils;->checkFitOnVolume(Landroid/os/storage/StorageManager;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v9

    if-eqz v9, :cond_df

    .line 240
    sget-object v9, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v9

    .line 242
    :cond_df
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Requested internal only, but not enough space"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 236
    :cond_e7
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Not allowed to install non-system apps on internal storage"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 247
    :cond_ef
    if-eqz v6, :cond_141

    .line 248
    const/4 v11, 0x0

    .line 249
    .local v11, "existingVolumePath":Ljava/lang/String;
    iget-object v12, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    sget-object v13, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v12, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_fe

    .line 250
    move-object v11, v8

    goto :goto_10f

    .line 251
    :cond_fe
    iget-object v12, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10f

    .line 252
    iget-object v12, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v11, v12

    check-cast v11, Ljava/lang/String;

    .line 255
    :cond_10f
    :goto_10f
    invoke-static {v3, v11, v1}, Lcom/android/internal/content/InstallLocationUtils;->checkFitOnVolume(Landroid/os/storage/StorageManager;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v12

    if-eqz v12, :cond_118

    .line 256
    iget-object v9, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    return-object v9

    .line 258
    :cond_118
    new-instance v12, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v13, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " for "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v13, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v12, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 265
    .end local v11    # "existingVolumePath":Ljava/lang/String;
    :cond_141
    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_14f

    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_150

    :cond_14f
    const/4 v9, 0x0

    .line 266
    .local v9, "bestCandidate":Ljava/lang/String;
    :goto_150
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ne v12, v11, :cond_163

    .line 267
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v3, v11, v1}, Lcom/android/internal/content/InstallLocationUtils;->checkFitOnVolume(Landroid/os/storage/StorageManager;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v11

    if-eqz v11, :cond_1a5

    .line 268
    return-object v9

    .line 271
    :cond_163
    const-wide/high16 v11, -0x8000000000000000L

    .line 272
    .local v11, "bestCandidateAvailBytes":J
    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_16d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_19e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 273
    .local v14, "vol":Ljava/lang/String;
    invoke-virtual {v7, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 274
    .local v15, "volumePath":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object v10

    .line 278
    .local v10, "target":Ljava/util/UUID;
    iget v0, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 279
    invoke-static {v0}, Lcom/android/internal/content/InstallLocationUtils;->translateAllocateFlags(I)I

    move-result v0

    .line 278
    invoke-virtual {v3, v10, v0}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;I)J

    move-result-wide v16

    .line 281
    .local v16, "availBytes":J
    cmp-long v0, v16, v11

    if-ltz v0, :cond_19a

    .line 282
    move-object v0, v14

    .line 283
    .end local v9    # "bestCandidate":Ljava/lang/String;
    .local v0, "bestCandidate":Ljava/lang/String;
    move-wide/from16 v11, v16

    move-object v9, v0

    .line 285
    .end local v0    # "bestCandidate":Ljava/lang/String;
    .end local v10    # "target":Ljava/util/UUID;
    .end local v14    # "vol":Ljava/lang/String;
    .end local v15    # "volumePath":Ljava/lang/String;
    .end local v16    # "availBytes":J
    .restart local v9    # "bestCandidate":Ljava/lang/String;
    :cond_19a
    const/4 v10, 0x0

    move-object/from16 v0, p0

    goto :goto_16d

    .line 287
    :cond_19e
    iget-wide v13, v1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    cmp-long v0, v11, v13

    if-ltz v0, :cond_1a5

    .line 288
    return-object v9

    .line 295
    .end local v11    # "bestCandidateAvailBytes":J
    :cond_1a5
    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1be

    const-wide/32 v10, 0x7fffffff

    iget-wide v12, v1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    cmp-long v0, v10, v12

    if-nez v0, :cond_1be

    .line 296
    const-string v0, "debug.pm.install_skip_size_check_for_maxint"

    const/4 v10, 0x0

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1be

    .line 298
    return-object v9

    .line 301
    :cond_1be
    new-instance v0, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No special requests, but no room on allowed volumes.  allow3rdPartyOnInternal? "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist resolveInstallVolume(Landroid/content/Context;Ljava/lang/String;IJLcom/android/internal/content/InstallLocationUtils$TestableInterface;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "installLocation"    # I
    .param p3, "sizeBytes"    # J
    .param p5, "testInterface"    # Lcom/android/internal/content/InstallLocationUtils$TestableInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 149
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 150
    .local v0, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    iput-object p1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 151
    iput p2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 152
    iput-wide p3, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 153
    invoke-static {p0, v0, p5}, Lcom/android/internal/content/InstallLocationUtils;->resolveInstallVolume(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/internal/content/InstallLocationUtils$TestableInterface;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist translateAllocateFlags(I)I
    .registers 2
    .param p0, "installFlags"    # I

    .line 474
    const v0, 0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_8

    .line 475
    const/4 v0, 0x1

    return v0

    .line 477
    :cond_8
    const/4 v0, 0x0

    return v0
.end method
