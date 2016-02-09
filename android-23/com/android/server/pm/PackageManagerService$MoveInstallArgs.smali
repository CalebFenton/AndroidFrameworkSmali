.class Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;
.super Lcom/android/server/pm/PackageManagerService$InstallArgs;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MoveInstallArgs"
.end annotation


# instance fields
.field private codeFile:Ljava/io/File;

.field private resourceFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)V
    .locals 12
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "params"    # Lcom/android/server/pm/PackageManagerService$InstallParams;

    #@0
    .prologue
    .line 11503
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    .line 11504
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@4
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    #@6
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    #@8
    iget v4, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@a
    .line 11505
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    #@c
    iget-object v6, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    #@e
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getManifestDigest()Landroid/content/pm/ManifestDigest;

    #@11
    move-result-object v7

    #@12
    .line 11506
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    #@15
    move-result-object v8

    #@16
    iget-object v10, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    #@18
    .line 11507
    iget-object v11, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    #@1a
    .line 11506
    const/4 v9, 0x0

    #@1b
    move-object v0, p0

    #@1c
    .line 11504
    invoke-direct/range {v0 .. v11}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    #@1f
    .line 11503
    return-void
.end method

.method private cleanUp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "volumeUuid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 11572
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {p1}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    .line 11573
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    #@8
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$MoveInfo;->dataAppName:Ljava/lang/String;

    #@a
    .line 11572
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@d
    .line 11574
    .local v0, "codeFile":Ljava/io/File;
    const-string/jumbo v1, "PackageManager"

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "Cleaning up "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    #@1e
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$MoveInfo;->packageName:Ljava/lang/String;

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    const-string/jumbo v3, " on "

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 11575
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@38
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    #@3a
    monitor-enter v2

    #@3b
    .line 11577
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@3d
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    #@3f
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$MoveInfo;->packageName:Ljava/lang/String;

    #@41
    invoke-static {v1, p1, v3}, Lcom/android/server/pm/PackageManagerService;->-wrap14(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;)I

    #@44
    .line 11578
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@47
    move-result v1

    #@48
    if-eqz v1, :cond_0

    #@4a
    .line 11579
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@4c
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    #@4e
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v1, v3}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@55
    :goto_0
    monitor-exit v2

    #@56
    .line 11584
    const/4 v1, 0x1

    #@57
    return v1

    #@58
    .line 11581
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5b
    goto :goto_0

    #@5c
    .line 11575
    :catchall_0
    move-exception v1

    #@5d
    monitor-exit v2

    #@5e
    throw v1
.end method


# virtual methods
.method cleanUpResourcesLI()V
    .locals 1

    #@0
    .prologue
    .line 11588
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    .locals 8
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .param p2, "temp"    # Z

    #@0
    .prologue
    .line 11513
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    #@4
    monitor-enter v7

    #@5
    .line 11514
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@7
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    #@9
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    #@b
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$MoveInfo;->fromUuid:Ljava/lang/String;

    #@d
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    #@f
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    #@11
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    #@13
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$MoveInfo;->packageName:Ljava/lang/String;

    #@15
    .line 11515
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    #@17
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$MoveInfo;->dataAppName:Ljava/lang/String;

    #@19
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    #@1b
    iget v5, v5, Lcom/android/server/pm/PackageManagerService$MoveInfo;->appId:I

    #@1d
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    #@1f
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$MoveInfo;->seinfo:Ljava/lang/String;

    #@21
    .line 11514
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/Installer;->copyCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_0

    #@27
    .line 11516
    const/16 v0, -0x6e

    #@29
    monitor-exit v7

    #@2a
    return v0

    #@2b
    :cond_0
    monitor-exit v7

    #@2c
    .line 11520
    new-instance v0, Ljava/io/File;

    #@2e
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    #@30
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    #@32
    invoke-static {v1}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    #@35
    move-result-object v1

    #@36
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    #@38
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$MoveInfo;->dataAppName:Ljava/lang/String;

    #@3a
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@3d
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->codeFile:Ljava/io/File;

    #@3f
    .line 11521
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->codeFile:Ljava/io/File;

    #@41
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->resourceFile:Ljava/io/File;

    #@43
    .line 11524
    const/4 v0, 0x1

    #@44
    return v0

    #@45
    .line 11513
    :catchall_0
    move-exception v0

    #@46
    monitor-exit v7

    #@47
    throw v0
.end method

.method doPostDeleteLI(Z)Z
    .locals 1
    .param p1, "delete"    # Z

    #@0
    .prologue
    .line 11592
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method doPostInstall(II)I
    .locals 1
    .param p1, "status"    # I
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 11553
    const/4 v0, 0x1

    #@1
    if-ne p1, v0, :cond_0

    #@3
    .line 11554
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    #@5
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->fromUuid:Ljava/lang/String;

    #@7
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->cleanUp(Ljava/lang/String;)Z

    #@a
    .line 11558
    :goto_0
    return p1

    #@b
    .line 11556
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    #@d
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    #@f
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->cleanUp(Ljava/lang/String;)Z

    #@12
    goto :goto_0
.end method

.method doPreInstall(I)I
    .locals 1
    .param p1, "status"    # I

    #@0
    .prologue
    .line 11528
    const/4 v0, 0x1

    #@1
    if-eq p1, v0, :cond_0

    #@3
    .line 11529
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    #@5
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    #@7
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->cleanUp(Ljava/lang/String;)Z

    #@a
    .line 11531
    :cond_0
    return p1
.end method

.method doRename(ILandroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .locals 3
    .param p1, "status"    # I
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "oldCodePath"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 11535
    if-eq p1, v2, :cond_0

    #@3
    .line 11536
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    #@5
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    #@7
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->cleanUp(Ljava/lang/String;)Z

    #@a
    .line 11537
    const/4 v0, 0x0

    #@b
    return v0

    #@c
    .line 11541
    :cond_0
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@e
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    #@10
    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    #@12
    .line 11542
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@14
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    #@16
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setCodePath(Ljava/lang/String;)V

    #@19
    .line 11543
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1b
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    #@1d
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setBaseCodePath(Ljava/lang/String;)V

    #@20
    .line 11544
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@22
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    #@24
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setSplitCodePaths([Ljava/lang/String;)V

    #@27
    .line 11545
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@29
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    #@2b
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setResourcePath(Ljava/lang/String;)V

    #@2e
    .line 11546
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@30
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    #@32
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setBaseResourcePath(Ljava/lang/String;)V

    #@35
    .line 11547
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@37
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    #@39
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setSplitResourcePaths([Ljava/lang/String;)V

    #@3c
    .line 11549
    return v2
.end method

.method getCodePath()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 11563
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->codeFile:Ljava/io/File;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->codeFile:Ljava/io/File;

    #@7
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method getResourcePath()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 11568
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->resourceFile:Ljava/io/File;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->resourceFile:Ljava/io/File;

    #@7
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method
