.class public Lcom/android/server/pm/OtaDexoptService;
.super Landroid/content/pm/IOtaDexopt$Stub;
.source "OtaDexoptService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/OtaDexoptService$OTADexoptPackageDexOptimizer;,
        Lcom/android/server/pm/OtaDexoptService$RecordingInstallerConnection;
    }
.end annotation


# static fields
.field private static final BULK_DELETE_THRESHOLD:J = 0x40000000L

.field private static final DEBUG_DEXOPT:Z = true

.field private static final NO_LIBRARIES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "OTADexopt"


# instance fields
.field private availableSpaceAfterBulkDelete:J

.field private availableSpaceAfterDexopt:J

.field private availableSpaceBefore:J

.field private completeSize:I

.field private dexoptCommandCountExecuted:I

.field private dexoptCommandCountTotal:I

.field private importantPackageCount:I

.field private final mContext:Landroid/content/Context;

.field private mDexoptCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private otaDexoptTimeStart:J

.field private otherPackageCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 55
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const-string/jumbo v1, "&"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    sput-object v0, Lcom/android/server/pm/OtaDexoptService;->NO_LIBRARIES:[Ljava/lang/String;

    #@b
    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManagerService"    # Lcom/android/server/pm/PackageManagerService;

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Landroid/content/pm/IOtaDexopt$Stub;-><init>()V

    #@3
    .line 93
    iput-object p1, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    #@5
    .line 94
    iput-object p2, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@7
    .line 97
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    #@9
    invoke-direct {p0, v0}, Lcom/android/server/pm/OtaDexoptService;->moveAbArtifacts(Lcom/android/server/pm/Installer;)V

    #@c
    .line 92
    return-void
.end method

.method private deleteOatArtifactsOfPackage(Landroid/content/pm/PackageParser$Package;)V
    .locals 10
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    .line 262
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2
    invoke-static {v5}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    .line 263
    .local v3, "instructionSets":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->getAllCodePaths()Ljava/util/List;

    #@9
    move-result-object v5

    #@a
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "codePath$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v5

    #@12
    if-eqz v5, :cond_1

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/lang/String;

    #@1a
    .line 264
    .local v0, "codePath":Ljava/lang/String;
    const/4 v5, 0x0

    #@1b
    array-length v6, v3

    #@1c
    :goto_0
    if-ge v5, v6, :cond_0

    #@1e
    aget-object v4, v3, v5

    #@20
    .line 266
    .local v4, "isa":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@22
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    #@24
    invoke-static {p1}, Lcom/android/server/pm/OtaDexoptService;->getOatDir(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    #@27
    move-result-object v8

    #@28
    invoke-virtual {v7, v0, v4, v8}, Lcom/android/server/pm/Installer;->deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 264
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 267
    :catch_0
    move-exception v2

    #@2f
    .line 268
    .local v2, "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    const-string/jumbo v7, "OTADexopt"

    #@32
    new-instance v8, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v9, "Failed deleting oat files for "

    #@3a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v8

    #@3e
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v8

    #@42
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v8

    #@46
    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@49
    goto :goto_1

    #@4a
    .line 261
    .end local v0    # "codePath":Ljava/lang/String;
    .end local v2    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    .end local v4    # "isa":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private declared-synchronized generatePackageDexopts(Landroid/content/pm/PackageParser$Package;I)Ljava/util/List;
    .locals 9
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "compilationReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 280
    :try_start_0
    new-instance v7, Lcom/android/server/pm/OtaDexoptService$RecordingInstallerConnection;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {v7, v1}, Lcom/android/server/pm/OtaDexoptService$RecordingInstallerConnection;-><init>(Lcom/android/server/pm/OtaDexoptService$RecordingInstallerConnection;)V

    #@7
    .line 281
    .local v7, "collectingConnection":Lcom/android/server/pm/OtaDexoptService$RecordingInstallerConnection;
    new-instance v8, Lcom/android/server/pm/Installer;

    #@9
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    #@b
    invoke-direct {v8, v1, v7}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;Lcom/android/internal/os/InstallerConnection;)V

    #@e
    .line 284
    .local v8, "collectingInstaller":Lcom/android/server/pm/Installer;
    new-instance v0, Lcom/android/server/pm/OtaDexoptService$OTADexoptPackageDexOptimizer;

    #@10
    .line 285
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@12
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    #@14
    iget-object v3, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    #@16
    .line 284
    invoke-direct {v0, v8, v1, v3}, Lcom/android/server/pm/OtaDexoptService$OTADexoptPackageDexOptimizer;-><init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;)V

    #@19
    .line 287
    .local v0, "optimizer":Lcom/android/server/pm/PackageDexOptimizer;
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    #@1b
    .line 288
    .local v2, "libraryDependencies":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->isSystemApp()Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_0

    #@21
    .line 290
    sget-object v2, Lcom/android/server/pm/OtaDexoptService;->NO_LIBRARIES:[Ljava/lang/String;

    #@23
    .line 295
    :cond_0
    invoke-static {p2}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    .line 294
    const/4 v3, 0x0

    #@28
    const/4 v4, 0x0

    #@29
    .line 296
    const/4 v6, 0x0

    #@2a
    move-object v1, p1

    #@2b
    .line 293
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOpt(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;)I

    #@2e
    .line 298
    iget-object v1, v7, Lcom/android/server/pm/OtaDexoptService$RecordingInstallerConnection;->commands:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    monitor-exit p0

    #@31
    return-object v1

    #@32
    .end local v0    # "optimizer":Lcom/android/server/pm/PackageDexOptimizer;
    .end local v2    # "libraryDependencies":[Ljava/lang/String;
    .end local v7    # "collectingConnection":Lcom/android/server/pm/OtaDexoptService$RecordingInstallerConnection;
    .end local v8    # "collectingInstaller":Lcom/android/server/pm/Installer;
    :catchall_0
    move-exception v1

    #@33
    monitor-exit p0

    #@34
    throw v1
.end method

.method private getAvailableSpace()J
    .locals 8

    #@0
    .prologue
    .line 242
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->getMainLowSpaceThreshold()J

    #@3
    move-result-wide v2

    #@4
    .line 244
    .local v2, "lowThreshold":J
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@7
    move-result-object v0

    #@8
    .line 245
    .local v0, "dataDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    #@b
    move-result-wide v4

    #@c
    .line 247
    .local v4, "usableSpace":J
    sub-long v6, v4, v2

    #@e
    return-wide v6
.end method

.method private getMainLowSpaceThreshold()J
    .locals 6

    #@0
    .prologue
    .line 226
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    .line 228
    .local v0, "dataDir":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    #@6
    invoke-static {v1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    #@d
    move-result-wide v2

    #@e
    .line 229
    .local v2, "lowThreshold":J
    const-wide/16 v4, 0x0

    #@10
    cmp-long v1, v2, v4

    #@12
    if-nez v1, :cond_0

    #@14
    .line 230
    new-instance v1, Ljava/lang/IllegalStateException;

    #@16
    const-string/jumbo v4, "Invalid low memory threshold"

    #@19
    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1

    #@1d
    .line 232
    :cond_0
    return-wide v2
.end method

.method private static getOatDir(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;
    .locals 3
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 251
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->canHaveOatDir()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 252
    return-object v2

    #@8
    .line 254
    :cond_0
    new-instance v0, Ljava/io/File;

    #@a
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    #@c
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@f
    .line 255
    .local v0, "codePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 256
    invoke-static {v0}, Lcom/android/server/pm/PackageDexOptimizer;->getOatDir(Ljava/io/File;)Ljava/io/File;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    return-object v1

    #@1e
    .line 258
    :cond_1
    return-object v2
.end method

.method private static inMegabytes(J)I
    .locals 6
    .param p0, "value"    # J

    #@0
    .prologue
    .line 370
    const-wide/32 v2, 0x100000

    #@3
    div-long v0, p0, v2

    #@5
    .line 371
    .local v0, "in_mega_bytes":J
    const-wide/32 v2, 0x7fffffff

    #@8
    cmp-long v2, v0, v2

    #@a
    if-lez v2, :cond_0

    #@c
    .line 372
    const-string/jumbo v2, "OTADexopt"

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "Recording "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    const-string/jumbo v4, "MB of free space, overflowing range"

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 373
    const v2, 0x7fffffff

    #@30
    return v2

    #@31
    .line 375
    :cond_0
    long-to-int v2, v0

    #@32
    return v2
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageManagerService"    # Lcom/android/server/pm/PackageManagerService;

    #@0
    .prologue
    .line 102
    new-instance v0, Lcom/android/server/pm/OtaDexoptService;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/OtaDexoptService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V

    #@5
    .line 103
    .local v0, "ota":Lcom/android/server/pm/OtaDexoptService;
    const-string/jumbo v1, "otadexopt"

    #@8
    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@b
    .line 105
    return-object v0
.end method

.method private moveAbArtifacts(Lcom/android/server/pm/Installer;)V
    .locals 16
    .param p1, "installer"    # Lcom/android/server/pm/Installer;

    #@0
    .prologue
    .line 307
    move-object/from16 v0, p0

    #@2
    iget-object v12, v0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    #@4
    if-eqz v12, :cond_0

    #@6
    .line 308
    new-instance v12, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v13, "Should not be ota-dexopting when trying to move."

    #@b
    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v12

    #@f
    .line 312
    :cond_0
    move-object/from16 v0, p0

    #@11
    iget-object v12, v0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@13
    invoke-virtual {v12}, Lcom/android/server/pm/PackageManagerService;->getPackages()Ljava/util/Collection;

    #@16
    move-result-object v11

    #@17
    .line 313
    .local v11, "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v10

    #@1b
    .local v10, "pkg$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v12

    #@1f
    if-eqz v12, :cond_4

    #@21
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v9

    #@25
    check-cast v9, Landroid/content/pm/PackageParser$Package;

    #@27
    .line 314
    .local v9, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v9, :cond_1

    #@29
    .line 319
    invoke-static {v9}, Lcom/android/server/pm/PackageDexOptimizer;->canOptimizePackage(Landroid/content/pm/PackageParser$Package;)Z

    #@2c
    move-result v12

    #@2d
    if-eqz v12, :cond_1

    #@2f
    .line 322
    iget-object v12, v9, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    #@31
    if-nez v12, :cond_2

    #@33
    .line 323
    const-string/jumbo v12, "OTADexopt"

    #@36
    new-instance v13, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v14, "Package "

    #@3e
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v13

    #@42
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v13

    #@46
    const-string/jumbo v14, " can be optimized but has null codePath"

    #@49
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v13

    #@4d
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v13

    #@51
    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    goto :goto_0

    #@55
    .line 329
    :cond_2
    iget-object v12, v9, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    #@57
    const-string/jumbo v13, "/system"

    #@5a
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@5d
    move-result v12

    #@5e
    if-nez v12, :cond_1

    #@60
    iget-object v12, v9, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    #@62
    const-string/jumbo v13, "/vendor"

    #@65
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@68
    move-result v12

    #@69
    if-nez v12, :cond_1

    #@6b
    .line 333
    iget-object v12, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@6d
    invoke-static {v12}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    #@70
    move-result-object v4

    #@71
    .line 334
    .local v4, "instructionSets":[Ljava/lang/String;
    invoke-virtual {v9}, Landroid/content/pm/PackageParser$Package;->getAllCodePathsExcludingResourceOnly()Ljava/util/List;

    #@74
    move-result-object v8

    #@75
    .line 335
    .local v8, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v4}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    #@78
    move-result-object v2

    #@79
    .line 336
    .local v2, "dexCodeInstructionSets":[Ljava/lang/String;
    const/4 v12, 0x0

    #@7a
    array-length v13, v2

    #@7b
    :goto_1
    if-ge v12, v13, :cond_1

    #@7d
    aget-object v1, v2, v12

    #@7f
    .line 337
    .local v1, "dexCodeInstructionSet":Ljava/lang/String;
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@82
    move-result-object v7

    #@83
    .local v7, "path$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@86
    move-result v14

    #@87
    if-eqz v14, :cond_3

    #@89
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8c
    move-result-object v6

    #@8d
    check-cast v6, Ljava/lang/String;

    #@8f
    .line 338
    .local v6, "path":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    #@91
    iget-object v15, v9, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    #@93
    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@96
    invoke-static {v14}, Lcom/android/server/pm/PackageDexOptimizer;->getOatDir(Ljava/io/File;)Ljava/io/File;

    #@99
    move-result-object v14

    #@9a
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@9d
    move-result-object v5

    #@9e
    .line 344
    .local v5, "oatDir":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p1

    #@a0
    invoke-virtual {v0, v6, v1, v5}, Lcom/android/server/pm/Installer;->moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    #@a3
    goto :goto_2

    #@a4
    .line 345
    :catch_0
    move-exception v3

    #@a5
    .local v3, "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    goto :goto_2

    #@a6
    .line 336
    .end local v3    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    .end local v5    # "oatDir":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    :cond_3
    add-int/lit8 v12, v12, 0x1

    #@a8
    goto :goto_1

    #@a9
    .line 306
    .end local v1    # "dexCodeInstructionSet":Ljava/lang/String;
    .end local v2    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v4    # "instructionSets":[Ljava/lang/String;
    .end local v7    # "path$iterator":Ljava/util/Iterator;
    .end local v8    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_4
    return-void
.end method

.method private performMetricsLogging()V
    .locals 8

    #@0
    .prologue
    .line 379
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@3
    move-result-wide v2

    #@4
    .line 381
    .local v2, "finalTime":J
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    #@6
    const-string/jumbo v4, "ota_dexopt_available_space_before_mb"

    #@9
    .line 382
    iget-wide v6, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceBefore:J

    #@b
    invoke-static {v6, v7}, Lcom/android/server/pm/OtaDexoptService;->inMegabytes(J)I

    #@e
    move-result v5

    #@f
    .line 381
    invoke-static {v1, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    #@12
    .line 383
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    #@14
    const-string/jumbo v4, "ota_dexopt_available_space_after_bulk_delete_mb"

    #@17
    .line 384
    iget-wide v6, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterBulkDelete:J

    #@19
    invoke-static {v6, v7}, Lcom/android/server/pm/OtaDexoptService;->inMegabytes(J)I

    #@1c
    move-result v5

    #@1d
    .line 383
    invoke-static {v1, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    #@20
    .line 385
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    #@22
    const-string/jumbo v4, "ota_dexopt_available_space_after_dexopt_mb"

    #@25
    .line 386
    iget-wide v6, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterDexopt:J

    #@27
    invoke-static {v6, v7}, Lcom/android/server/pm/OtaDexoptService;->inMegabytes(J)I

    #@2a
    move-result v5

    #@2b
    .line 385
    invoke-static {v1, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    #@2e
    .line 388
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    #@30
    const-string/jumbo v4, "ota_dexopt_num_important_packages"

    #@33
    .line 389
    iget v5, p0, Lcom/android/server/pm/OtaDexoptService;->importantPackageCount:I

    #@35
    .line 388
    invoke-static {v1, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    #@38
    .line 390
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    #@3a
    const-string/jumbo v4, "ota_dexopt_num_other_packages"

    #@3d
    iget v5, p0, Lcom/android/server/pm/OtaDexoptService;->otherPackageCount:I

    #@3f
    invoke-static {v1, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    #@42
    .line 392
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    #@44
    const-string/jumbo v4, "ota_dexopt_num_commands"

    #@47
    iget v5, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountTotal:I

    #@49
    invoke-static {v1, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    #@4c
    .line 393
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    #@4e
    const-string/jumbo v4, "ota_dexopt_num_commands_executed"

    #@51
    .line 394
    iget v5, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountExecuted:I

    #@53
    .line 393
    invoke-static {v1, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    #@56
    .line 397
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@58
    iget-wide v4, p0, Lcom/android/server/pm/OtaDexoptService;->otaDexoptTimeStart:J

    #@5a
    sub-long v4, v2, v4

    #@5c
    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    #@5f
    move-result-wide v4

    #@60
    long-to-int v0, v4

    #@61
    .line 398
    .local v0, "elapsedTimeSeconds":I
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    #@63
    const-string/jumbo v4, "ota_dexopt_time_s"

    #@66
    invoke-static {v1, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    #@69
    .line 378
    return-void
.end method

.method private prepareMetricsLogging(IIJJ)V
    .locals 3
    .param p1, "important"    # I
    .param p2, "others"    # I
    .param p3, "spaceBegin"    # J
    .param p5, "spaceBulk"    # J

    #@0
    .prologue
    .line 356
    iput-wide p3, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceBefore:J

    #@2
    .line 357
    iput-wide p5, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterBulkDelete:J

    #@4
    .line 358
    const-wide/16 v0, 0x0

    #@6
    iput-wide v0, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterDexopt:J

    #@8
    .line 360
    iput p1, p0, Lcom/android/server/pm/OtaDexoptService;->importantPackageCount:I

    #@a
    .line 361
    iput p2, p0, Lcom/android/server/pm/OtaDexoptService;->otherPackageCount:I

    #@c
    .line 363
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    #@e
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@11
    move-result v0

    #@12
    iput v0, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountTotal:I

    #@14
    .line 364
    const/4 v0, 0x0

    #@15
    iput v0, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountExecuted:I

    #@17
    .line 366
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@1a
    move-result-wide v0

    #@1b
    iput-wide v0, p0, Lcom/android/server/pm/OtaDexoptService;->otaDexoptTimeStart:J

    #@1d
    .line 355
    return-void
.end method


# virtual methods
.method public declared-synchronized cleanup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 172
    :try_start_0
    const-string/jumbo v0, "OTADexopt"

    #@4
    const-string/jumbo v1, "Cleaning up OTA Dexopt state."

    #@7
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 174
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    #@d
    .line 175
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->getAvailableSpace()J

    #@10
    move-result-wide v0

    #@11
    iput-wide v0, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterDexopt:J

    #@13
    .line 177
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->performMetricsLogging()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit p0

    #@17
    .line 170
    return-void

    #@18
    :catchall_0
    move-exception v0

    #@19
    monitor-exit p0

    #@1a
    throw v0
.end method

.method public declared-synchronized dexoptNextPackage()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 303
    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@6
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public declared-synchronized getProgress()F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 192
    :try_start_0
    iget v1, p0, Lcom/android/server/pm/OtaDexoptService;->completeSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v1, :cond_0

    #@5
    .line 193
    const/high16 v1, 0x3f800000    # 1.0f

    #@7
    monitor-exit p0

    #@8
    return v1

    #@9
    .line 195
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    #@b
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@e
    move-result v0

    #@f
    .line 196
    .local v0, "commandsLeft":I
    iget v1, p0, Lcom/android/server/pm/OtaDexoptService;->completeSize:I

    #@11
    sub-int/2addr v1, v0

    #@12
    int-to-float v1, v1

    #@13
    iget v2, p0, Lcom/android/server/pm/OtaDexoptService;->completeSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    int-to-float v2, v2

    #@16
    div-float/2addr v1, v2

    #@17
    monitor-exit p0

    #@18
    return v1

    #@19
    .end local v0    # "commandsLeft":I
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit p0

    #@1b
    throw v1
.end method

.method public declared-synchronized isDone()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "done() called before prepare()"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0

    #@11
    .line 186
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    #@13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result v0

    #@17
    monitor-exit p0

    #@18
    return v0
.end method

.method public declared-synchronized nextDexoptCommand()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 202
    new-instance v1, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v2, "dexoptNextPackage() called before prepare()"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v1

    #@f
    monitor-exit p0

    #@10
    throw v1

    #@11
    .line 205
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    #@13
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 206
    const-string/jumbo v1, "(all done)"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    monitor-exit p0

    #@1d
    return-object v1

    #@1e
    .line 209
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    #@20
    const/4 v2, 0x0

    #@21
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Ljava/lang/String;

    #@27
    .line 211
    .local v0, "next":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->getAvailableSpace()J

    #@2a
    move-result-wide v2

    #@2b
    const-wide/16 v4, 0x0

    #@2d
    cmp-long v1, v2, v4

    #@2f
    if-lez v1, :cond_2

    #@31
    .line 212
    iget v1, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountExecuted:I

    #@33
    add-int/lit8 v1, v1, 0x1

    #@35
    iput v1, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountExecuted:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@37
    monitor-exit p0

    #@38
    .line 214
    return-object v0

    #@39
    .line 217
    :cond_2
    :try_start_3
    const-string/jumbo v1, "OTADexopt"

    #@3c
    new-instance v2, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v3, "Not enough space for OTA dexopt, stopping with "

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    .line 218
    iget-object v3, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    #@4a
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@4d
    move-result v3

    #@4e
    add-int/lit8 v3, v3, 0x1

    #@50
    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    .line 218
    const-string/jumbo v3, " commands left."

    #@57
    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    .line 220
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    #@64
    invoke-interface {v1}, Ljava/util/List;->clear()V

    #@67
    .line 221
    const-string/jumbo v1, "(no free space)"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6a
    monitor-exit p0

    #@6b
    return-object v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 7
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 111
    new-instance v0, Lcom/android/server/pm/OtaDexoptShellCommand;

    #@2
    invoke-direct {v0, p0}, Lcom/android/server/pm/OtaDexoptShellCommand;-><init>(Lcom/android/server/pm/OtaDexoptService;)V

    #@5
    move-object v1, p0

    #@6
    move-object v2, p1

    #@7
    move-object v3, p2

    #@8
    move-object v4, p3

    #@9
    move-object v5, p4

    #@a
    move-object v6, p5

    #@b
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/OtaDexoptShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)I

    #@e
    .line 110
    return-void
.end method

.method public declared-synchronized prepare()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 118
    new-instance v1, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v2, "already called prepare()"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v1

    #@f
    monitor-exit p0

    #@10
    throw v1

    #@11
    .line 122
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@13
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@15
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    .line 125
    :try_start_2
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@18
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@1a
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@1d
    move-result-object v1

    #@1e
    iget-object v3, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@20
    .line 124
    invoke-static {v1, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;

    #@23
    move-result-object v8

    #@24
    .line 127
    .local v8, "important":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    new-instance v9, Ljava/util/ArrayList;

    #@26
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@28
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@2a
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@2d
    move-result-object v1

    #@2e
    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@31
    .line 128
    .local v9, "others":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface {v9, v8}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    #@34
    .line 131
    new-instance v1, Ljava/util/ArrayList;

    #@36
    iget-object v3, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@38
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@3a
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@3d
    move-result v3

    #@3e
    mul-int/lit8 v3, v3, 0x3

    #@40
    div-int/lit8 v3, v3, 0x2

    #@42
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@45
    iput-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@47
    :try_start_3
    monitor-exit v2

    #@48
    .line 134
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4b
    move-result-object v11

    #@4c
    .local v11, "p$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@4f
    move-result v1

    #@50
    if-eqz v1, :cond_2

    #@52
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@55
    move-result-object v10

    #@56
    check-cast v10, Landroid/content/pm/PackageParser$Package;

    #@58
    .line 141
    .local v10, "p":Landroid/content/pm/PackageParser$Package;
    iget-boolean v1, v10, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    #@5a
    if-eqz v1, :cond_1

    #@5c
    .line 142
    const/16 v0, 0x8

    #@5e
    .line 144
    .local v0, "compilationReason":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    #@60
    invoke-direct {p0, v10, v0}, Lcom/android/server/pm/OtaDexoptService;->generatePackageDexopts(Landroid/content/pm/PackageParser$Package;I)Ljava/util/List;

    #@63
    move-result-object v2

    #@64
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@67
    goto :goto_0

    #@68
    .line 122
    .end local v0    # "compilationReason":I
    .end local v8    # "important":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .end local v9    # "others":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .end local v10    # "p":Landroid/content/pm/PackageParser$Package;
    .end local v11    # "p$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v1

    #@69
    monitor-exit v2

    #@6a
    throw v1

    #@6b
    .line 143
    .restart local v8    # "important":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v9    # "others":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v10    # "p":Landroid/content/pm/PackageParser$Package;
    .restart local v11    # "p$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x4

    #@6c
    .restart local v0    # "compilationReason":I
    goto :goto_1

    #@6d
    .line 146
    .end local v0    # "compilationReason":I
    .end local v10    # "p":Landroid/content/pm/PackageParser$Package;
    :cond_2
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@70
    move-result-object v11

    #@71
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@74
    move-result v1

    #@75
    if-eqz v1, :cond_4

    #@77
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7a
    move-result-object v10

    #@7b
    check-cast v10, Landroid/content/pm/PackageParser$Package;

    #@7d
    .line 148
    .restart local v10    # "p":Landroid/content/pm/PackageParser$Package;
    iget-boolean v1, v10, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    #@7f
    if-eqz v1, :cond_3

    #@81
    .line 149
    new-instance v1, Ljava/lang/IllegalStateException;

    #@83
    const-string/jumbo v2, "Found a core app that\'s not important"

    #@86
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@89
    throw v1

    #@8a
    .line 151
    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    #@8c
    .line 152
    const/4 v2, 0x0

    #@8d
    invoke-direct {p0, v10, v2}, Lcom/android/server/pm/OtaDexoptService;->generatePackageDexopts(Landroid/content/pm/PackageParser$Package;I)Ljava/util/List;

    #@90
    move-result-object v2

    #@91
    .line 151
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@94
    goto :goto_2

    #@95
    .line 154
    .end local v10    # "p":Landroid/content/pm/PackageParser$Package;
    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    #@97
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@9a
    move-result v1

    #@9b
    iput v1, p0, Lcom/android/server/pm/OtaDexoptService;->completeSize:I

    #@9d
    .line 156
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->getAvailableSpace()J

    #@a0
    move-result-wide v4

    #@a1
    .line 157
    .local v4, "spaceAvailable":J
    const-wide/32 v2, 0x40000000

    #@a4
    cmp-long v1, v4, v2

    #@a6
    if-gez v1, :cond_5

    #@a8
    .line 158
    const-string/jumbo v1, "OTADexopt"

    #@ab
    new-instance v2, Ljava/lang/StringBuilder;

    #@ad
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b0
    const-string/jumbo v3, "Low on space, deleting oat files in an attempt to free up space: "

    #@b3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v2

    #@b7
    .line 159
    invoke-static {v9}, Lcom/android/server/pm/PackageManagerServiceUtils;->packagesToString(Ljava/util/Collection;)Ljava/lang/String;

    #@ba
    move-result-object v3

    #@bb
    .line 158
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v2

    #@bf
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v2

    #@c3
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@c6
    .line 160
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c9
    move-result-object v13

    #@ca
    .local v13, "pkg$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@cd
    move-result v1

    #@ce
    if-eqz v1, :cond_5

    #@d0
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d3
    move-result-object v12

    #@d4
    check-cast v12, Landroid/content/pm/PackageParser$Package;

    #@d6
    .line 161
    .local v12, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-direct {p0, v12}, Lcom/android/server/pm/OtaDexoptService;->deleteOatArtifactsOfPackage(Landroid/content/pm/PackageParser$Package;)V

    #@d9
    goto :goto_3

    #@da
    .line 164
    .end local v12    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v13    # "pkg$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->getAvailableSpace()J

    #@dd
    move-result-wide v6

    #@de
    .line 166
    .local v6, "spaceAvailableNow":J
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@e1
    move-result v2

    #@e2
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@e5
    move-result v3

    #@e6
    move-object v1, p0

    #@e7
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/OtaDexoptService;->prepareMetricsLogging(IIJJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@ea
    monitor-exit p0

    #@eb
    .line 116
    return-void
.end method
