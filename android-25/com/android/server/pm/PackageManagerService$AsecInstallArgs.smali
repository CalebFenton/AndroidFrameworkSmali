.class Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;
.super Lcom/android/server/pm/PackageManagerService$InstallArgs;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsecInstallArgs"
.end annotation


# static fields
.field static final PUBLIC_RES_FILE_NAME:Ljava/lang/String; = "res.zip"

.field static final RES_FILE_NAME:Ljava/lang/String; = "pkg.apk"


# instance fields
.field cid:Ljava/lang/String;

.field packagePath:Ljava/lang/String;

.field resourcePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)V
    .locals 15
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "params"    # Lcom/android/server/pm/PackageManagerService$InstallParams;

    #@0
    .prologue
    .line 13613
    move-object/from16 v0, p1

    #@2
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@4
    .line 13614
    move-object/from16 v0, p2

    #@6
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@8
    move-object/from16 v0, p2

    #@a
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    #@c
    move-object/from16 v0, p2

    #@e
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    #@10
    move-object/from16 v0, p2

    #@12
    iget v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@14
    .line 13615
    move-object/from16 v0, p2

    #@16
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    #@18
    move-object/from16 v0, p2

    #@1a
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    #@1c
    .line 13616
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    #@1f
    move-result-object v8

    #@20
    move-object/from16 v0, p2

    #@22
    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    #@24
    .line 13617
    move-object/from16 v0, p2

    #@26
    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    #@28
    .line 13618
    move-object/from16 v0, p2

    #@2a
    iget-object v12, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->traceMethod:Ljava/lang/String;

    #@2c
    move-object/from16 v0, p2

    #@2e
    iget v13, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->traceCookie:I

    #@30
    move-object/from16 v0, p2

    #@32
    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->certificates:[[Ljava/security/cert/Certificate;

    #@34
    .line 13616
    const/4 v9, 0x0

    #@35
    move-object v1, p0

    #@36
    .line 13614
    invoke-direct/range {v1 .. v14}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I[[Ljava/security/cert/Certificate;)V

    #@39
    .line 13613
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 15
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "instructionSets"    # [Ljava/lang/String;
    .param p4, "isForwardLocked"    # Z

    #@0
    .prologue
    .line 13640
    move-object/from16 v0, p1

    #@2
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@4
    .line 13641
    invoke-static {}, Lcom/android/server/pm/PackageManagerService$OriginInfo;->fromNothing()Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@7
    move-result-object v2

    #@8
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/PackageManagerService;->-wrap4(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    const/16 v1, 0x8

    #@10
    move v3, v1

    #@11
    .line 13642
    :goto_0
    if-eqz p4, :cond_1

    #@13
    const/4 v1, 0x1

    #@14
    .line 13641
    :goto_1
    or-int v5, v3, v1

    #@16
    const/4 v3, 0x0

    #@17
    const/4 v4, 0x0

    #@18
    .line 13642
    const/4 v6, 0x0

    #@19
    const/4 v7, 0x0

    #@1a
    const/4 v8, 0x0

    #@1b
    .line 13643
    const/4 v10, 0x0

    #@1c
    const/4 v11, 0x0

    #@1d
    const/4 v12, 0x0

    #@1e
    const/4 v13, 0x0

    #@1f
    const/4 v14, 0x0

    #@20
    move-object v1, p0

    #@21
    move-object/from16 v9, p3

    #@23
    .line 13641
    invoke-direct/range {v1 .. v14}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I[[Ljava/security/cert/Certificate;)V

    #@26
    .line 13644
    move-object/from16 v0, p2

    #@28
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@2a
    .line 13645
    invoke-static/range {p2 .. p2}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setMountPath(Ljava/lang/String;)V

    #@31
    .line 13640
    return-void

    #@32
    .line 13641
    :cond_0
    const/4 v1, 0x0

    #@33
    move v3, v1

    #@34
    goto :goto_0

    #@35
    .line 13642
    :cond_1
    const/4 v1, 0x0

    #@36
    goto :goto_1
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .locals 19
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "fullCodePath"    # Ljava/lang/String;
    .param p3, "instructionSets"    # [Ljava/lang/String;
    .param p4, "isExternal"    # Z
    .param p5, "isForwardLocked"    # Z

    #@0
    .prologue
    .line 13622
    move-object/from16 v0, p1

    #@2
    move-object/from16 v1, p0

    #@4
    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@6
    .line 13624
    invoke-static {}, Lcom/android/server/pm/PackageManagerService$OriginInfo;->fromNothing()Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@9
    move-result-object v3

    #@a
    if-eqz p4, :cond_1

    #@c
    const/16 v2, 0x8

    #@e
    move v4, v2

    #@f
    .line 13625
    :goto_0
    if-eqz p5, :cond_2

    #@11
    const/4 v2, 0x1

    #@12
    .line 13624
    :goto_1
    or-int v6, v4, v2

    #@14
    const/4 v4, 0x0

    #@15
    const/4 v5, 0x0

    #@16
    .line 13625
    const/4 v7, 0x0

    #@17
    const/4 v8, 0x0

    #@18
    const/4 v9, 0x0

    #@19
    .line 13626
    const/4 v11, 0x0

    #@1a
    const/4 v12, 0x0

    #@1b
    const/4 v13, 0x0

    #@1c
    const/4 v14, 0x0

    #@1d
    const/4 v15, 0x0

    #@1e
    move-object/from16 v2, p0

    #@20
    move-object/from16 v10, p3

    #@22
    .line 13624
    invoke-direct/range {v2 .. v15}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I[[Ljava/security/cert/Certificate;)V

    #@25
    .line 13628
    const-string/jumbo v2, "pkg.apk"

    #@28
    move-object/from16 v0, p2

    #@2a
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@2d
    move-result v2

    #@2e
    if-nez v2, :cond_0

    #@30
    .line 13629
    new-instance v2, Ljava/io/File;

    #@32
    const-string/jumbo v3, "pkg.apk"

    #@35
    move-object/from16 v0, p2

    #@37
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@3a
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3d
    move-result-object p2

    #@3e
    .line 13633
    :cond_0
    const-string/jumbo v2, "/"

    #@41
    move-object/from16 v0, p2

    #@43
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@46
    move-result v16

    #@47
    .line 13634
    .local v16, "eidx":I
    const/4 v2, 0x0

    #@48
    move-object/from16 v0, p2

    #@4a
    move/from16 v1, v16

    #@4c
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4f
    move-result-object v18

    #@50
    .line 13635
    .local v18, "subStr1":Ljava/lang/String;
    const-string/jumbo v2, "/"

    #@53
    move-object/from16 v0, v18

    #@55
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@58
    move-result v17

    #@59
    .line 13636
    .local v17, "sidx":I
    add-int/lit8 v2, v17, 0x1

    #@5b
    move-object/from16 v0, v18

    #@5d
    move/from16 v1, v16

    #@5f
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@62
    move-result-object v2

    #@63
    move-object/from16 v0, p0

    #@65
    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@67
    .line 13637
    move-object/from16 v0, p0

    #@69
    move-object/from16 v1, v18

    #@6b
    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setMountPath(Ljava/lang/String;)V

    #@6e
    .line 13623
    return-void

    #@6f
    .line 13624
    .end local v16    # "eidx":I
    .end local v17    # "sidx":I
    .end local v18    # "subStr1":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    #@70
    move v4, v2

    #@71
    goto :goto_0

    #@72
    .line 13625
    :cond_2
    const/4 v2, 0x0

    #@73
    goto :goto_1
.end method

.method private cleanUp()V
    .locals 1

    #@0
    .prologue
    .line 13825
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@2
    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    #@5
    .line 13821
    return-void
.end method

.method private cleanUpResourcesLI(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 13847
    .local p1, "allCodePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cleanUp()V

    #@3
    .line 13848
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->instructionSets:[Ljava/lang/String;

    #@7
    invoke-static {v0, p1, v1}, Lcom/android/server/pm/PackageManagerService;->-wrap36(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;[Ljava/lang/String;)V

    #@a
    .line 13846
    return-void
.end method

.method private getAllCodePaths()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 13829
    new-instance v0, Ljava/io/File;

    #@2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->getCodePath()Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@9
    .line 13830
    .local v0, "codeFile":Ljava/io/File;
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 13832
    const/4 v3, 0x0

    #@12
    :try_start_0
    invoke-static {v0, v3}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    #@15
    move-result-object v2

    #@16
    .line 13833
    .local v2, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    invoke-virtual {v2}, Landroid/content/pm/PackageParser$PackageLite;->getAllCodePaths()Ljava/util/List;
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result-object v3

    #@1a
    return-object v3

    #@1b
    .line 13834
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    :catch_0
    move-exception v1

    #@1c
    .line 13838
    :cond_0
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    #@1e
    return-object v3
.end method

.method private setMountPath(Ljava/lang/String;)V
    .locals 4
    .param p1, "mountPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 13776
    new-instance v1, Ljava/io/File;

    #@2
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5
    .line 13778
    .local v1, "mountFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    #@7
    const-string/jumbo v2, "pkg.apk"

    #@a
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@d
    .line 13779
    .local v0, "monolithicFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 13780
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    #@19
    .line 13781
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isFwdLocked()Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_0

    #@1f
    .line 13782
    new-instance v2, Ljava/io/File;

    #@21
    const-string/jumbo v3, "res.zip"

    #@24
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@27
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->resourcePath:Ljava/lang/String;

    #@2d
    .line 13775
    :goto_0
    return-void

    #@2e
    .line 13784
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    #@30
    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->resourcePath:Ljava/lang/String;

    #@32
    goto :goto_0

    #@33
    .line 13787
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    #@39
    .line 13788
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    #@3b
    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->resourcePath:Ljava/lang/String;

    #@3d
    goto :goto_0
.end method


# virtual methods
.method cleanUpResourcesLI()V
    .locals 1

    #@0
    .prologue
    .line 13843
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->getAllCodePaths()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cleanUpResourcesLI(Ljava/util/List;)V

    #@7
    .line 13841
    return-void
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
    const/4 v6, 0x0

    #@2
    .line 13653
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@4
    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@a
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 13655
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@10
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    #@12
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@14
    .line 13656
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@16
    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setMountPath(Ljava/lang/String;)V

    #@1d
    .line 13657
    return v8

    #@1e
    .line 13660
    :cond_0
    if-eqz p2, :cond_1

    #@20
    .line 13661
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->createCopyFile()V

    #@23
    .line 13671
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@25
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    #@27
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@2d
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isExternalAsec()Z

    #@34
    move-result v4

    #@35
    .line 13672
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isFwdLocked()Z

    #@38
    move-result v5

    #@39
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->abiOverride:Ljava/lang/String;

    #@3b
    invoke-static {v0, v6}, Lcom/android/server/pm/PackageManagerService;->-wrap13(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    #@3e
    move-result-object v6

    #@3f
    move-object v0, p1

    #@40
    .line 13670
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IMediaContainerService;->copyPackageToContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    #@43
    move-result-object v7

    #@44
    .line 13674
    .local v7, "newMountPath":Ljava/lang/String;
    if-eqz v7, :cond_2

    #@46
    .line 13675
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setMountPath(Ljava/lang/String;)V

    #@49
    .line 13676
    return v8

    #@4a
    .line 13667
    .end local v7    # "newMountPath":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@4c
    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    #@4f
    goto :goto_0

    #@50
    .line 13678
    .restart local v7    # "newMountPath":Ljava/lang/String;
    :cond_2
    const/16 v0, -0x12

    #@52
    return v0
.end method

.method createCopyFile()V
    .locals 1

    #@0
    .prologue
    .line 13649
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    #@4
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerService;->allocateExternalStageCidLegacy()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@a
    .line 13648
    return-void
.end method

.method doPostCopy(I)I
    .locals 3
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 13885
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isFwdLocked()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 13886
    const/16 v0, 0x2710

    #@8
    if-lt p1, v0, :cond_1

    #@a
    .line 13887
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@c
    invoke-static {p1}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    #@f
    move-result v1

    #@10
    .line 13888
    const-string/jumbo v2, "pkg.apk"

    #@13
    .line 13887
    invoke-static {v0, v1, v2}, Lcom/android/internal/content/PackageHelper;->fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 13895
    :cond_0
    const/4 v0, 0x1

    #@1a
    return v0

    #@1b
    .line 13889
    :cond_1
    const-string/jumbo v0, "PackageManager"

    #@1e
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, "Failed to finalize "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 13890
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@39
    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    #@3c
    .line 13891
    const/16 v0, -0x12

    #@3e
    return v0
.end method

.method doPostDeleteLI(Z)Z
    .locals 3
    .param p1, "delete"    # Z

    #@0
    .prologue
    .line 13857
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->getAllCodePaths()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 13858
    .local v0, "allCodePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@6
    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    #@9
    move-result v1

    #@a
    .line 13859
    .local v1, "mounted":Z
    if-eqz v1, :cond_0

    #@c
    .line 13861
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@e
    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->unMountSdDir(Ljava/lang/String;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 13862
    const/4 v1, 0x0

    #@15
    .line 13865
    .end local v1    # "mounted":Z
    :cond_0
    if-nez v1, :cond_1

    #@17
    if-eqz p1, :cond_1

    #@19
    .line 13866
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cleanUpResourcesLI(Ljava/util/List;)V

    #@1c
    .line 13868
    :cond_1
    if-eqz v1, :cond_2

    #@1e
    const/4 v2, 0x0

    #@1f
    :goto_0
    return v2

    #@20
    :cond_2
    const/4 v2, 0x1

    #@21
    goto :goto_0
.end method

.method doPostInstall(II)I
    .locals 6
    .param p1, "status"    # I
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 13793
    const/4 v3, 0x1

    #@1
    if-eq p1, v3, :cond_1

    #@3
    .line 13794
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cleanUp()V

    #@6
    .line 13818
    :cond_0
    :goto_0
    return p1

    #@7
    .line 13798
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isFwdLocked()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_2

    #@d
    .line 13799
    invoke-static {p2}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    #@10
    move-result v0

    #@11
    .line 13800
    .local v0, "groupOwner":I
    const-string/jumbo v2, "pkg.apk"

    #@14
    .line 13806
    :goto_1
    const/16 v3, 0x2710

    #@16
    if-lt p2, v3, :cond_3

    #@18
    .line 13807
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@1a
    invoke-static {v3, v0, v2}, Lcom/android/internal/content/PackageHelper;->fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_3

    #@20
    .line 13813
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@22
    invoke-static {v3}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    #@25
    move-result v1

    #@26
    .line 13814
    .local v1, "mounted":Z
    if-nez v1, :cond_0

    #@28
    .line 13815
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@2a
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@31
    move-result v5

    #@32
    invoke-static {v3, v4, v5}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@35
    goto :goto_0

    #@36
    .line 13802
    .end local v0    # "groupOwner":I
    .end local v1    # "mounted":Z
    :cond_2
    const/4 v0, -0x1

    #@37
    .line 13803
    .restart local v0    # "groupOwner":I
    const/4 v2, 0x0

    #@38
    .local v2, "protectedFile":Ljava/lang/String;
    goto :goto_1

    #@39
    .line 13808
    .end local v2    # "protectedFile":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "PackageManager"

    #@3c
    new-instance v4, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v5, "Failed to finalize "

    #@44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@4a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v4

    #@52
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 13809
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@57
    invoke-static {v3}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    #@5a
    .line 13810
    const/16 v3, -0x12

    #@5c
    return v3
.end method

.method doPreCopy()I
    .locals 5

    #@0
    .prologue
    .line 13873
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isFwdLocked()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 13874
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@8
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@a
    const-string/jumbo v2, "com.android.defcontainer"

    #@d
    .line 13875
    const/high16 v3, 0x100000

    #@f
    const/4 v4, 0x0

    #@10
    .line 13874
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    #@13
    move-result v1

    #@14
    .line 13875
    const-string/jumbo v2, "pkg.apk"

    #@17
    .line 13874
    invoke-static {v0, v1, v2}, Lcom/android/internal/content/PackageHelper;->fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z

    #@1a
    move-result v0

    #@1b
    if-nez v0, :cond_0

    #@1d
    .line 13876
    const/16 v0, -0x12

    #@1f
    return v0

    #@20
    .line 13880
    :cond_0
    const/4 v0, 0x1

    #@21
    return v0
.end method

.method doPreInstall(I)I
    .locals 5
    .param p1, "status"    # I

    #@0
    .prologue
    .line 13693
    const/4 v2, 0x1

    #@1
    if-eq p1, v2, :cond_1

    #@3
    .line 13695
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@5
    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    #@8
    .line 13708
    :cond_0
    :goto_0
    return p1

    #@9
    .line 13697
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@b
    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    #@e
    move-result v0

    #@f
    .line 13698
    .local v0, "mounted":Z
    if-nez v0, :cond_0

    #@11
    .line 13699
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@13
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    .line 13700
    const/16 v4, 0x3e8

    #@19
    .line 13699
    invoke-static {v2, v3, v4}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    .line 13701
    .local v1, "newMountPath":Ljava/lang/String;
    if-eqz v1, :cond_2

    #@1f
    .line 13702
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setMountPath(Ljava/lang/String;)V

    #@22
    goto :goto_0

    #@23
    .line 13704
    :cond_2
    const/16 v2, -0x12

    #@25
    return v2
.end method

.method doRename(ILandroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .locals 8
    .param p1, "status"    # I
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "oldCodePath"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 13712
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@3
    const-string/jumbo v5, "/pkg.apk"

    #@6
    invoke-static {p3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->-wrap14(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    .line 13713
    .local v2, "newCacheId":Ljava/lang/String;
    const/4 v3, 0x0

    #@b
    .line 13714
    .local v3, "newMountPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@d
    invoke-static {v4}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_0

    #@13
    .line 13716
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@15
    invoke-static {v4}, Lcom/android/internal/content/PackageHelper;->unMountSdDir(Ljava/lang/String;)Z

    #@18
    move-result v4

    #@19
    if-nez v4, :cond_0

    #@1b
    .line 13717
    const-string/jumbo v4, "PackageManager"

    #@1e
    new-instance v5, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v6, "Failed to unmount "

    #@26
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v5

    #@2a
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@2c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    const-string/jumbo v6, " before renaming"

    #@33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 13718
    return v7

    #@3f
    .line 13721
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@41
    invoke-static {v4, v2}, Lcom/android/internal/content/PackageHelper;->renameSdDir(Ljava/lang/String;Ljava/lang/String;)Z

    #@44
    move-result v4

    #@45
    if-nez v4, :cond_2

    #@47
    .line 13722
    const-string/jumbo v4, "PackageManager"

    #@4a
    new-instance v5, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v6, "Failed to rename "

    #@52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v5

    #@56
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v5

    #@5c
    const-string/jumbo v6, " to "

    #@5f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v5

    #@67
    .line 13723
    const-string/jumbo v6, " which might be stale. Will try to clean up."

    #@6a
    .line 13722
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v5

    #@6e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v5

    #@72
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@75
    .line 13725
    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    #@78
    move-result v4

    #@79
    if-nez v4, :cond_1

    #@7b
    .line 13726
    const-string/jumbo v4, "PackageManager"

    #@7e
    new-instance v5, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    const-string/jumbo v6, "Very strange. Cannot clean up stale container "

    #@86
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v5

    #@8a
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v5

    #@8e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v5

    #@92
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@95
    .line 13727
    return v7

    #@96
    .line 13730
    :cond_1
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@98
    invoke-static {v4, v2}, Lcom/android/internal/content/PackageHelper;->renameSdDir(Ljava/lang/String;Ljava/lang/String;)Z

    #@9b
    move-result v4

    #@9c
    if-nez v4, :cond_2

    #@9e
    .line 13731
    const-string/jumbo v4, "PackageManager"

    #@a1
    new-instance v5, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a6
    const-string/jumbo v6, "Failed to rename "

    #@a9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v5

    #@ad
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@af
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v5

    #@b3
    const-string/jumbo v6, " to "

    #@b6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v5

    #@ba
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v5

    #@be
    .line 13732
    const-string/jumbo v6, " inspite of cleaning it up."

    #@c1
    .line 13731
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v5

    #@c5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c8
    move-result-object v5

    #@c9
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@cc
    .line 13733
    return v7

    #@cd
    .line 13736
    :cond_2
    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    #@d0
    move-result v4

    #@d1
    if-nez v4, :cond_3

    #@d3
    .line 13737
    const-string/jumbo v4, "PackageManager"

    #@d6
    new-instance v5, Ljava/lang/StringBuilder;

    #@d8
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@db
    const-string/jumbo v6, "Mounting container "

    #@de
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v5

    #@e2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v5

    #@e6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e9
    move-result-object v5

    #@ea
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ed
    .line 13739
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    #@f0
    move-result-object v4

    #@f1
    const/16 v5, 0x3e8

    #@f3
    .line 13738
    invoke-static {v2, v4, v5}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@f6
    move-result-object v3

    #@f7
    .line 13743
    .local v3, "newMountPath":Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_4

    #@f9
    .line 13744
    const-string/jumbo v4, "PackageManager"

    #@fc
    new-instance v5, Ljava/lang/StringBuilder;

    #@fe
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@101
    const-string/jumbo v6, "Failed to get cache path for  "

    #@104
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v5

    #@108
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v5

    #@10c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10f
    move-result-object v5

    #@110
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@113
    .line 13745
    return v7

    #@114
    .line 13741
    .local v3, "newMountPath":Ljava/lang/String;
    :cond_3
    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    #@117
    move-result-object v3

    #@118
    .local v3, "newMountPath":Ljava/lang/String;
    goto :goto_0

    #@119
    .line 13747
    :cond_4
    const-string/jumbo v4, "PackageManager"

    #@11c
    new-instance v5, Ljava/lang/StringBuilder;

    #@11e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@121
    const-string/jumbo v6, "Succesfully renamed "

    #@124
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v5

    #@128
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@12a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v5

    #@12e
    .line 13748
    const-string/jumbo v6, " to "

    #@131
    .line 13747
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v5

    #@135
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v5

    #@139
    .line 13749
    const-string/jumbo v6, " at new path: "

    #@13c
    .line 13747
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13f
    move-result-object v5

    #@140
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v5

    #@144
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@147
    move-result-object v5

    #@148
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@14b
    .line 13750
    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@14d
    .line 13752
    new-instance v1, Ljava/io/File;

    #@14f
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    #@151
    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@154
    .line 13753
    .local v1, "beforeCodeFile":Ljava/io/File;
    invoke-direct {p0, v3}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setMountPath(Ljava/lang/String;)V

    #@157
    .line 13754
    new-instance v0, Ljava/io/File;

    #@159
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    #@15b
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@15e
    .line 13757
    .local v0, "afterCodeFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@161
    move-result-object v4

    #@162
    invoke-virtual {p2, v4}, Landroid/content/pm/PackageParser$Package;->setCodePath(Ljava/lang/String;)V

    #@165
    .line 13759
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    #@167
    .line 13758
    invoke-static {v1, v0, v4}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    #@16a
    move-result-object v4

    #@16b
    invoke-virtual {p2, v4}, Landroid/content/pm/PackageParser$Package;->setBaseCodePath(Ljava/lang/String;)V

    #@16e
    .line 13761
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    #@170
    .line 13760
    invoke-static {v1, v0, v4}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;

    #@173
    move-result-object v4

    #@174
    invoke-virtual {p2, v4}, Landroid/content/pm/PackageParser$Package;->setSplitCodePaths([Ljava/lang/String;)V

    #@177
    .line 13764
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    #@179
    invoke-virtual {p2, v4}, Landroid/content/pm/PackageParser$Package;->setApplicationVolumeUuid(Ljava/lang/String;)V

    #@17c
    .line 13765
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    #@17e
    invoke-virtual {p2, v4}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoCodePath(Ljava/lang/String;)V

    #@181
    .line 13766
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    #@183
    invoke-virtual {p2, v4}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoBaseCodePath(Ljava/lang/String;)V

    #@186
    .line 13767
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    #@188
    invoke-virtual {p2, v4}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoSplitCodePaths([Ljava/lang/String;)V

    #@18b
    .line 13768
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    #@18d
    invoke-virtual {p2, v4}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoResourcePath(Ljava/lang/String;)V

    #@190
    .line 13769
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    #@192
    invoke-virtual {p2, v4}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoBaseResourcePath(Ljava/lang/String;)V

    #@195
    .line 13770
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    #@197
    invoke-virtual {p2, v4}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoSplitResourcePaths([Ljava/lang/String;)V

    #@19a
    .line 13772
    const/4 v4, 0x1

    #@19b
    return v4
.end method

.method getCodePath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 13684
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 13852
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@2
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->getAsecPackageName(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getResourcePath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 13689
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->resourcePath:Ljava/lang/String;

    #@2
    return-object v0
.end method
