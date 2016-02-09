.class Lcom/android/server/pm/PackageManagerService$FileInstallArgs;
.super Lcom/android/server/pm/PackageManagerService$InstallArgs;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileInstallArgs"
.end annotation


# instance fields
.field private codeFile:Ljava/io/File;

.field private resourceFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/PackageManagerService$FileInstallArgs;)Ljava/io/File;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    #@2
    return-object v0
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)V
    .locals 12
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "params"    # Lcom/android/server/pm/PackageManagerService$InstallParams;

    #@0
    .prologue
    .line 10984
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    .line 10985
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@4
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    #@6
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    #@8
    iget v4, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@a
    .line 10986
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    #@c
    iget-object v6, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    #@e
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getManifestDigest()Landroid/content/pm/ManifestDigest;

    #@11
    move-result-object v7

    #@12
    .line 10987
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    #@15
    move-result-object v8

    #@16
    iget-object v10, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    #@18
    .line 10988
    iget-object v11, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    #@1a
    .line 10987
    const/4 v9, 0x0

    #@1b
    move-object v0, p0

    #@1c
    .line 10985
    invoke-direct/range {v0 .. v11}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    #@1f
    .line 10989
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->isFwdLocked()Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_0

    #@25
    .line 10990
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@27
    const-string/jumbo v1, "Forward locking only supported in ASEC"

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 10984
    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "codePath"    # Ljava/lang/String;
    .param p3, "resourcePath"    # Ljava/lang/String;
    .param p4, "instructionSets"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 10995
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    .line 10996
    invoke-static {}, Lcom/android/server/pm/PackageManagerService$OriginInfo;->fromNothing()Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x0

    #@7
    const/4 v3, 0x0

    #@8
    const/4 v4, 0x0

    #@9
    const/4 v5, 0x0

    #@a
    const/4 v6, 0x0

    #@b
    const/4 v7, 0x0

    #@c
    const/4 v8, 0x0

    #@d
    .line 10997
    const/4 v10, 0x0

    #@e
    const/4 v11, 0x0

    #@f
    move-object v0, p0

    #@10
    move-object/from16 v9, p4

    #@12
    .line 10996
    invoke-direct/range {v0 .. v11}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    #@15
    .line 10998
    if-eqz p2, :cond_0

    #@17
    new-instance v0, Ljava/io/File;

    #@19
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1c
    :goto_0
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    #@1e
    .line 10999
    if-eqz p3, :cond_1

    #@20
    new-instance v0, Ljava/io/File;

    #@22
    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@25
    :goto_1
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    #@27
    .line 10995
    return-void

    #@28
    .line 10998
    :cond_0
    const/4 v0, 0x0

    #@29
    goto :goto_0

    #@2a
    .line 10999
    :cond_1
    const/4 v0, 0x0

    #@2b
    goto :goto_1
.end method

.method private cleanUp()Z
    .locals 2

    #@0
    .prologue
    .line 11131
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    #@2
    if-eqz v0, :cond_1

    #@4
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    #@6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 11135
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    #@e
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 11136
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@16
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    #@18
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    #@1a
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;)I

    #@21
    .line 11141
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    #@23
    if-eqz v0, :cond_0

    #@25
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    #@27
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    #@29
    invoke-static {v0, v1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_3

    #@2f
    .line 11145
    :cond_0
    :goto_1
    const/4 v0, 0x1

    #@30
    return v0

    #@31
    .line 11132
    :cond_1
    const/4 v0, 0x0

    #@32
    return v0

    #@33
    .line 11138
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    #@35
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@38
    goto :goto_0

    #@39
    .line 11142
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    #@3b
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@3e
    goto :goto_1
.end method


# virtual methods
.method cleanUpResourcesLI()V
    .locals 5

    #@0
    .prologue
    .line 11150
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    #@2
    .line 11151
    .local v0, "allCodePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    #@4
    if-eqz v3, :cond_0

    #@6
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    #@8
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 11153
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    #@10
    const/4 v4, 0x0

    #@11
    invoke-static {v3, v4}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    #@14
    move-result-object v2

    #@15
    .line 11154
    .local v2, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    invoke-virtual {v2}, Landroid/content/pm/PackageParser$PackageLite;->getAllCodePaths()Ljava/util/List;
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result-object v0

    #@19
    .line 11160
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    #@1c
    .line 11161
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@1e
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->instructionSets:[Ljava/lang/String;

    #@20
    invoke-static {v3, v0, v4}, Lcom/android/server/pm/PackageManagerService;->-wrap32(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;[Ljava/lang/String;)V

    #@23
    .line 11148
    return-void

    #@24
    .line 11155
    :catch_0
    move-exception v1

    #@25
    .local v1, "e":Landroid/content/pm/PackageParser$PackageParserException;
    goto :goto_0
.end method

.method copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    .locals 9
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .param p2, "temp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 11003
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@3
    iget-boolean v6, v6, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    #@5
    if-eqz v6, :cond_0

    #@7
    .line 11005
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@9
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    #@b
    iput-object v6, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    #@d
    .line 11006
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@f
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    #@11
    iput-object v6, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    #@13
    .line 11007
    return v8

    #@14
    .line 11011
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@16
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    #@18
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->volumeUuid:Ljava/lang/String;

    #@1a
    invoke-virtual {v6, v7}, Lcom/android/server/pm/PackageInstallerService;->allocateStageDirLegacy(Ljava/lang/String;)Ljava/io/File;

    #@1d
    move-result-object v5

    #@1e
    .line 11012
    .local v5, "tempDir":Ljava/io/File;
    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    #@20
    .line 11013
    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 11019
    new-instance v4, Lcom/android/server/pm/PackageManagerService$FileInstallArgs$1;

    #@24
    invoke-direct {v4, p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs$1;-><init>(Lcom/android/server/pm/PackageManagerService$FileInstallArgs;)V

    #@27
    .line 11037
    .local v4, "target":Lcom/android/internal/os/IParcelFileDescriptorFactory;
    const/4 v3, 0x1

    #@28
    .line 11038
    .local v3, "ret":I
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@2a
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    #@2c
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@2f
    move-result-object v6

    #@30
    invoke-interface {p1, v6, v4}, Lcom/android/internal/app/IMediaContainerService;->copyPackage(Ljava/lang/String;Lcom/android/internal/os/IParcelFileDescriptorFactory;)I

    #@33
    move-result v3

    #@34
    .line 11039
    if-eq v3, v8, :cond_1

    #@36
    .line 11040
    const-string/jumbo v6, "PackageManager"

    #@39
    const-string/jumbo v7, "Failed to copy package"

    #@3c
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 11041
    return v3

    #@40
    .line 11014
    .end local v3    # "ret":I
    .end local v4    # "target":Lcom/android/internal/os/IParcelFileDescriptorFactory;
    .end local v5    # "tempDir":Ljava/io/File;
    :catch_0
    move-exception v0

    #@41
    .line 11015
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "PackageManager"

    #@44
    new-instance v7, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v8, "Failed to create copy file: "

    #@4c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v7

    #@50
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v7

    #@54
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v7

    #@58
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5b
    .line 11016
    const/4 v6, -0x4

    #@5c
    return v6

    #@5d
    .line 11044
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "ret":I
    .restart local v4    # "target":Lcom/android/internal/os/IParcelFileDescriptorFactory;
    .restart local v5    # "tempDir":Ljava/io/File;
    :cond_1
    new-instance v2, Ljava/io/File;

    #@5f
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    #@61
    const-string/jumbo v7, "lib"

    #@64
    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@67
    .line 11045
    .local v2, "libraryRoot":Ljava/io/File;
    const/4 v1, 0x0

    #@68
    .line 11047
    .local v1, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_start_1
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    #@6a
    invoke-static {v6}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    #@6d
    move-result-object v1

    #@6e
    .line 11049
    .local v1, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->abiOverride:Ljava/lang/String;

    #@70
    .line 11048
    invoke-static {v1, v2, v6}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@73
    move-result v3

    #@74
    .line 11054
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@77
    .line 11057
    .end local v1    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :goto_0
    return v3

    #@78
    .line 11050
    :catch_1
    move-exception v0

    #@79
    .line 11051
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v6, "PackageManager"

    #@7c
    const-string/jumbo v7, "Copying native libraries failed"

    #@7f
    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@82
    .line 11052
    const/16 v3, -0x6e

    #@84
    .line 11054
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@87
    goto :goto_0

    #@88
    .line 11053
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    #@89
    .line 11054
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@8c
    .line 11053
    throw v6
.end method

.method doPostDeleteLI(Z)Z
    .locals 1
    .param p1, "delete"    # Z

    #@0
    .prologue
    .line 11166
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUpResourcesLI()V

    #@3
    .line 11167
    const/4 v0, 0x1

    #@4
    return v0
.end method

.method doPostInstall(II)I
    .locals 1
    .param p1, "status"    # I
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 11114
    const/4 v0, 0x1

    #@1
    if-eq p1, v0, :cond_0

    #@3
    .line 11115
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    #@6
    .line 11117
    :cond_0
    return p1
.end method

.method doPreInstall(I)I
    .locals 1
    .param p1, "status"    # I

    #@0
    .prologue
    .line 11061
    const/4 v0, 0x1

    #@1
    if-eq p1, v0, :cond_0

    #@3
    .line 11062
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    #@6
    .line 11064
    :cond_0
    return p1
.end method

.method doRename(ILandroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .locals 8
    .param p1, "status"    # I
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "oldCodePath"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 11068
    if-eq p1, v7, :cond_0

    #@4
    .line 11069
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    #@7
    .line 11070
    return v6

    #@8
    .line 11073
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    #@a
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@d
    move-result-object v3

    #@e
    .line 11074
    .local v3, "targetDir":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    #@10
    .line 11075
    .local v1, "beforeCodeFile":Ljava/io/File;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@12
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@14
    invoke-static {v4, v3, v5}, Lcom/android/server/pm/PackageManagerService;->-wrap15(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    #@17
    move-result-object v0

    #@18
    .line 11079
    .local v0, "afterCodeFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@1f
    move-result-object v5

    #@20
    invoke-static {v4, v5}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 11085
    invoke-static {v0}, Landroid/os/SELinux;->restoreconRecursive(Ljava/io/File;)Z

    #@26
    move-result v4

    #@27
    if-nez v4, :cond_1

    #@29
    .line 11086
    const-string/jumbo v4, "PackageManager"

    #@2c
    const-string/jumbo v5, "Failed to restorecon"

    #@2f
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 11087
    return v6

    #@33
    .line 11080
    :catch_0
    move-exception v2

    #@34
    .line 11081
    .local v2, "e":Landroid/system/ErrnoException;
    const-string/jumbo v4, "PackageManager"

    #@37
    const-string/jumbo v5, "Failed to rename"

    #@3a
    invoke-static {v4, v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3d
    .line 11082
    return v6

    #@3e
    .line 11091
    .end local v2    # "e":Landroid/system/ErrnoException;
    :cond_1
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    #@40
    .line 11092
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    #@42
    .line 11095
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@45
    move-result-object v4

    #@46
    iput-object v4, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    #@48
    .line 11097
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    #@4a
    .line 11096
    invoke-static {v1, v0, v4}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    #@4d
    move-result-object v4

    #@4e
    iput-object v4, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    #@50
    .line 11099
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    #@52
    .line 11098
    invoke-static {v1, v0, v4}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;

    #@55
    move-result-object v4

    #@56
    iput-object v4, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    #@58
    .line 11102
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@5a
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    #@5c
    iput-object v5, v4, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    #@5e
    .line 11103
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@60
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    #@62
    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->setCodePath(Ljava/lang/String;)V

    #@65
    .line 11104
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@67
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    #@69
    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->setBaseCodePath(Ljava/lang/String;)V

    #@6c
    .line 11105
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@6e
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    #@70
    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->setSplitCodePaths([Ljava/lang/String;)V

    #@73
    .line 11106
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@75
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    #@77
    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->setResourcePath(Ljava/lang/String;)V

    #@7a
    .line 11107
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@7c
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    #@7e
    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->setBaseResourcePath(Ljava/lang/String;)V

    #@81
    .line 11108
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@83
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    #@85
    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->setSplitResourcePaths([Ljava/lang/String;)V

    #@88
    .line 11110
    return v7
.end method

.method getCodePath()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 11122
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

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
    .line 11127
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    #@7
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method
