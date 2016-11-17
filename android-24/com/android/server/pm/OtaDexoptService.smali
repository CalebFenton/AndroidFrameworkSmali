.class public Lcom/android/server/pm/OtaDexoptService;
.super Landroid/content/pm/IOtaDexopt$Stub;
.source "OtaDexoptService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/OtaDexoptService$OTADexoptPackageDexOptimizer;
    }
.end annotation


# static fields
.field private static final DEBUG_DEXOPT:Z = true

.field private static final TAG:Ljava/lang/String; = "OTADexopt"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDexoptPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

.field private final mPackageManagerService:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManagerService"    # Lcom/android/server/pm/PackageManagerService;

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Landroid/content/pm/IOtaDexopt$Stub;-><init>()V

    #@3
    .line 59
    iput-object p1, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    #@5
    .line 60
    iput-object p2, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@7
    .line 63
    new-instance v0, Lcom/android/server/pm/OtaDexoptService$OTADexoptPackageDexOptimizer;

    #@9
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    #@b
    .line 64
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    #@d
    .line 63
    invoke-direct {v0, v1, v2, p1}, Lcom/android/server/pm/OtaDexoptService$OTADexoptPackageDexOptimizer;-><init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;)V

    #@10
    iput-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    #@12
    .line 67
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/pm/OtaDexoptService;->moveAbArtifacts(Lcom/android/server/pm/Installer;)V

    #@17
    .line 58
    return-void
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageManagerService"    # Lcom/android/server/pm/PackageManagerService;

    #@0
    .prologue
    .line 72
    new-instance v0, Lcom/android/server/pm/OtaDexoptService;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/OtaDexoptService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V

    #@5
    .line 73
    .local v0, "ota":Lcom/android/server/pm/OtaDexoptService;
    const-string/jumbo v1, "otadexopt"

    #@8
    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@b
    .line 75
    return-object v0
.end method

.method private moveAbArtifacts(Lcom/android/server/pm/Installer;)V
    .locals 16
    .param p1, "installer"    # Lcom/android/server/pm/Installer;

    #@0
    .prologue
    .line 151
    move-object/from16 v0, p0

    #@2
    iget-object v12, v0, Lcom/android/server/pm/OtaDexoptService;->mDexoptPackages:Ljava/util/List;

    #@4
    if-eqz v12, :cond_0

    #@6
    .line 152
    new-instance v12, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v13, "Should not be ota-dexopting when trying to move."

    #@b
    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v12

    #@f
    .line 156
    :cond_0
    move-object/from16 v0, p0

    #@11
    iget-object v12, v0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@13
    invoke-virtual {v12}, Lcom/android/server/pm/PackageManagerService;->getPackages()Ljava/util/Collection;

    #@16
    move-result-object v11

    #@17
    .line 157
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
    .line 158
    .local v9, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v9, :cond_1

    #@29
    .line 163
    invoke-static {v9}, Lcom/android/server/pm/PackageDexOptimizer;->canOptimizePackage(Landroid/content/pm/PackageParser$Package;)Z

    #@2c
    move-result v12

    #@2d
    if-eqz v12, :cond_1

    #@2f
    .line 166
    iget-object v12, v9, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    #@31
    if-nez v12, :cond_2

    #@33
    .line 167
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
    .line 173
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
    .line 177
    iget-object v12, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@6d
    invoke-static {v12}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    #@70
    move-result-object v4

    #@71
    .line 178
    .local v4, "instructionSets":[Ljava/lang/String;
    invoke-virtual {v9}, Landroid/content/pm/PackageParser$Package;->getAllCodePathsExcludingResourceOnly()Ljava/util/List;

    #@74
    move-result-object v8

    #@75
    .line 179
    .local v8, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v4}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    #@78
    move-result-object v2

    #@79
    .line 180
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
    .line 181
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
    .line 182
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
    .line 188
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
    .line 189
    :catch_0
    move-exception v3

    #@a5
    .local v3, "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    goto :goto_2

    #@a6
    .line 180
    .end local v3    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    .end local v5    # "oatDir":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    :cond_3
    add-int/lit8 v12, v12, 0x1

    #@a8
    goto :goto_1

    #@a9
    .line 150
    .end local v1    # "dexCodeInstructionSet":Ljava/lang/String;
    .end local v2    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v4    # "instructionSets":[Ljava/lang/String;
    .end local v7    # "path$iterator":Ljava/util/Iterator;
    .end local v8    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_4
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
    .line 99
    :try_start_0
    const-string/jumbo v0, "OTADexopt"

    #@4
    const-string/jumbo v1, "Cleaning up OTA Dexopt state."

    #@7
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 101
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptPackages:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 97
    return-void

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method public declared-synchronized dexoptNextPackage()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptPackages:Ljava/util/List;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v2, "dexoptNextPackage() called before prepare()"

    #@a
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

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
    .line 118
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptPackages:Ljava/util/List;

    #@13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    monitor-exit p0

    #@1a
    .line 120
    return-void

    #@1b
    .line 123
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptPackages:Ljava/util/List;

    #@1d
    const/4 v2, 0x0

    #@1e
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Landroid/content/pm/PackageParser$Package;

    #@24
    .line 126
    .local v1, "nextPackage":Landroid/content/pm/PackageParser$Package;
    const-string/jumbo v0, "OTADexopt"

    #@27
    new-instance v2, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v3, "Processing "

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    const-string/jumbo v3, " for OTA dexopt."

    #@3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 132
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@4a
    move-result-object v6

    #@4b
    .line 134
    .local v6, "dataDir":Ljava/io/File;
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    #@4d
    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {v0, v6}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    #@54
    move-result-wide v8

    #@55
    .line 135
    .local v8, "lowThreshold":J
    const-wide/16 v2, 0x0

    #@57
    cmp-long v0, v8, v2

    #@59
    if-nez v0, :cond_2

    #@5b
    .line 136
    new-instance v0, Ljava/lang/IllegalStateException;

    #@5d
    const-string/jumbo v2, "Invalid low memory threshold"

    #@60
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@63
    throw v0

    #@64
    .line 138
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->getUsableSpace()J

    #@67
    move-result-wide v10

    #@68
    .line 139
    .local v10, "usableSpace":J
    cmp-long v0, v10, v8

    #@6a
    if-gez v0, :cond_3

    #@6c
    .line 140
    const-string/jumbo v0, "OTADexopt"

    #@6f
    new-instance v2, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v3, "Not running dexopt on "

    #@77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v2

    #@7b
    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@7d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v2

    #@81
    const-string/jumbo v3, " due to low memory: "

    #@84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v2

    #@88
    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v2

    #@8c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v2

    #@90
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@93
    monitor-exit p0

    #@94
    .line 142
    return-void

    #@95
    .line 145
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    #@97
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    #@99
    .line 147
    const/4 v3, 0x4

    #@9a
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    #@9d
    move-result-object v5

    #@9e
    .line 146
    const/4 v3, 0x0

    #@9f
    const/4 v4, 0x0

    #@a0
    .line 145
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOpt(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a3
    monitor-exit p0

    #@a4
    .line 114
    return-void
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
    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptPackages:Ljava/util/List;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 107
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
    .line 110
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptPackages:Ljava/util/List;

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
    .line 81
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
    .line 80
    return-void
.end method

.method public declared-synchronized prepare()V
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
    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptPackages:Ljava/util/List;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "already called prepare()"

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
    .line 90
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@13
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@15
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    .line 92
    :try_start_2
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@18
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@1a
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@1d
    move-result-object v0

    #@1e
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@20
    .line 91
    invoke-static {v0, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptPackages:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@27
    monitor-exit p0

    #@28
    .line 86
    return-void

    #@29
    .line 90
    :catchall_1
    move-exception v0

    #@2a
    :try_start_4
    monitor-exit v1

    #@2b
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
