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
    .locals 12
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "params"    # Lcom/android/server/pm/PackageManagerService$InstallParams;

    #@0
    .prologue
    .line 11210
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    .line 11211
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@4
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    #@6
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    #@8
    iget v4, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@a
    .line 11212
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    #@c
    iget-object v6, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    #@e
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getManifestDigest()Landroid/content/pm/ManifestDigest;

    #@11
    move-result-object v7

    #@12
    .line 11213
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    #@15
    move-result-object v8

    #@16
    iget-object v10, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    #@18
    .line 11214
    iget-object v11, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    #@1a
    .line 11213
    const/4 v9, 0x0

    #@1b
    move-object v0, p0

    #@1c
    .line 11211
    invoke-direct/range {v0 .. v11}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    #@1f
    .line 11210
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 12
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "instructionSets"    # [Ljava/lang/String;
    .param p4, "isForwardLocked"    # Z

    #@0
    .prologue
    .line 11236
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    .line 11237
    invoke-static {}, Lcom/android/server/pm/PackageManagerService$OriginInfo;->fromNothing()Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@5
    move-result-object v1

    #@6
    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerService;->-wrap5(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    const/16 v0, 0x8

    #@e
    move v2, v0

    #@f
    .line 11238
    :goto_0
    if-eqz p4, :cond_1

    #@11
    const/4 v0, 0x1

    #@12
    .line 11237
    :goto_1
    or-int v4, v2, v0

    #@14
    const/4 v2, 0x0

    #@15
    const/4 v3, 0x0

    #@16
    .line 11238
    const/4 v5, 0x0

    #@17
    const/4 v6, 0x0

    #@18
    const/4 v7, 0x0

    #@19
    const/4 v8, 0x0

    #@1a
    .line 11239
    const/4 v10, 0x0

    #@1b
    const/4 v11, 0x0

    #@1c
    move-object v0, p0

    #@1d
    move-object v9, p3

    #@1e
    .line 11237
    invoke-direct/range {v0 .. v11}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    #@21
    .line 11240
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@23
    .line 11241
    invoke-static {p2}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setMountPath(Ljava/lang/String;)V

    #@2a
    .line 11236
    return-void

    #@2b
    .line 11237
    :cond_0
    const/4 v0, 0x0

    #@2c
    move v2, v0

    #@2d
    goto :goto_0

    #@2e
    .line 11238
    :cond_1
    const/4 v0, 0x0

    #@2f
    goto :goto_1
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .locals 17
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "fullCodePath"    # Ljava/lang/String;
    .param p3, "instructionSets"    # [Ljava/lang/String;
    .param p4, "isExternal"    # Z
    .param p5, "isForwardLocked"    # Z

    #@0
    .prologue
    .line 11218
    move-object/from16 v0, p1

    #@2
    move-object/from16 v1, p0

    #@4
    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@6
    .line 11220
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
    .line 11221
    :goto_0
    if-eqz p5, :cond_2

    #@11
    const/4 v2, 0x1

    #@12
    .line 11220
    :goto_1
    or-int v6, v4, v2

    #@14
    const/4 v4, 0x0

    #@15
    const/4 v5, 0x0

    #@16
    .line 11221
    const/4 v7, 0x0

    #@17
    const/4 v8, 0x0

    #@18
    const/4 v9, 0x0

    #@19
    const/4 v10, 0x0

    #@1a
    .line 11222
    const/4 v12, 0x0

    #@1b
    const/4 v13, 0x0

    #@1c
    move-object/from16 v2, p0

    #@1e
    move-object/from16 v11, p3

    #@20
    .line 11220
    invoke-direct/range {v2 .. v13}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    #@23
    .line 11224
    const-string/jumbo v2, "pkg.apk"

    #@26
    move-object/from16 v0, p2

    #@28
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@2b
    move-result v2

    #@2c
    if-nez v2, :cond_0

    #@2e
    .line 11225
    new-instance v2, Ljava/io/File;

    #@30
    const-string/jumbo v3, "pkg.apk"

    #@33
    move-object/from16 v0, p2

    #@35
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@38
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3b
    move-result-object p2

    #@3c
    .line 11229
    :cond_0
    const-string/jumbo v2, "/"

    #@3f
    move-object/from16 v0, p2

    #@41
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@44
    move-result v14

    #@45
    .line 11230
    .local v14, "eidx":I
    const/4 v2, 0x0

    #@46
    move-object/from16 v0, p2

    #@48
    invoke-virtual {v0, v2, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4b
    move-result-object v16

    #@4c
    .line 11231
    .local v16, "subStr1":Ljava/lang/String;
    const-string/jumbo v2, "/"

    #@4f
    move-object/from16 v0, v16

    #@51
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@54
    move-result v15

    #@55
    .line 11232
    .local v15, "sidx":I
    add-int/lit8 v2, v15, 0x1

    #@57
    move-object/from16 v0, v16

    #@59
    invoke-virtual {v0, v2, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5c
    move-result-object v2

    #@5d
    move-object/from16 v0, p0

    #@5f
    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@61
    .line 11233
    move-object/from16 v0, p0

    #@63
    move-object/from16 v1, v16

    #@65
    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setMountPath(Ljava/lang/String;)V

    #@68
    .line 11219
    return-void

    #@69
    .line 11220
    .end local v14    # "eidx":I
    .end local v15    # "sidx":I
    .end local v16    # "subStr1":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    #@6a
    move v4, v2

    #@6b
    goto :goto_0

    #@6c
    .line 11221
    :cond_2
    const/4 v2, 0x0

    #@6d
    goto :goto_1
.end method

.method private cleanUp()V
    .locals 1

    #@0
    .prologue
    .line 11421
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@2
    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    #@5
    .line 11417
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
    .line 11443
    .local p1, "allCodePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cleanUp()V

    #@3
    .line 11444
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->instructionSets:[Ljava/lang/String;

    #@7
    invoke-static {v0, p1, v1}, Lcom/android/server/pm/PackageManagerService;->-wrap32(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;[Ljava/lang/String;)V

    #@a
    .line 11442
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
    .line 11425
    new-instance v0, Ljava/io/File;

    #@2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->getCodePath()Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@9
    .line 11426
    .local v0, "codeFile":Ljava/io/File;
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 11428
    const/4 v3, 0x0

    #@12
    :try_start_0
    invoke-static {v0, v3}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    #@15
    move-result-object v2

    #@16
    .line 11429
    .local v2, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    invoke-virtual {v2}, Landroid/content/pm/PackageParser$PackageLite;->getAllCodePaths()Ljava/util/List;
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result-object v3

    #@1a
    return-object v3

    #@1b
    .line 11430
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    :catch_0
    move-exception v1

    #@1c
    .line 11434
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
    .line 11372
    new-instance v1, Ljava/io/File;

    #@2
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5
    .line 11374
    .local v1, "mountFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    #@7
    const-string/jumbo v2, "pkg.apk"

    #@a
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@d
    .line 11375
    .local v0, "monolithicFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 11376
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    #@19
    .line 11377
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isFwdLocked()Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_0

    #@1f
    .line 11378
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
    .line 11371
    :goto_0
    return-void

    #@2e
    .line 11380
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    #@30
    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->resourcePath:Ljava/lang/String;

    #@32
    goto :goto_0

    #@33
    .line 11383
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    #@39
    .line 11384
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
    .line 11439
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->getAllCodePaths()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cleanUpResourcesLI(Ljava/util/List;)V

    #@7
    .line 11437
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
    const/4 v6, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    .line 11249
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@4
    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 11251
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@a
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    #@c
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@e
    .line 11252
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@10
    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setMountPath(Ljava/lang/String;)V

    #@17
    .line 11253
    return v8

    #@18
    .line 11256
    :cond_0
    if-eqz p2, :cond_1

    #@1a
    .line 11257
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->createCopyFile()V

    #@1d
    .line 11267
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@1f
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    #@21
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@27
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isExternalAsec()Z

    #@2e
    move-result v4

    #@2f
    .line 11268
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isFwdLocked()Z

    #@32
    move-result v5

    #@33
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->abiOverride:Ljava/lang/String;

    #@35
    invoke-static {v0, v6}, Lcom/android/server/pm/PackageManagerService;->-wrap16(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    #@38
    move-result-object v6

    #@39
    move-object v0, p1

    #@3a
    .line 11266
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IMediaContainerService;->copyPackageToContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    #@3d
    move-result-object v7

    #@3e
    .line 11270
    .local v7, "newMountPath":Ljava/lang/String;
    if-eqz v7, :cond_2

    #@40
    .line 11271
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setMountPath(Ljava/lang/String;)V

    #@43
    .line 11272
    return v8

    #@44
    .line 11263
    .end local v7    # "newMountPath":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@46
    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    #@49
    goto :goto_0

    #@4a
    .line 11274
    .restart local v7    # "newMountPath":Ljava/lang/String;
    :cond_2
    const/16 v0, -0x12

    #@4c
    return v0
.end method

.method createCopyFile()V
    .locals 1

    #@0
    .prologue
    .line 11245
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
    .line 11244
    return-void
.end method

.method doPostCopy(I)I
    .locals 3
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 11481
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isFwdLocked()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 11482
    const/16 v0, 0x2710

    #@8
    if-lt p1, v0, :cond_1

    #@a
    .line 11483
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@c
    invoke-static {p1}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    #@f
    move-result v1

    #@10
    .line 11484
    const-string/jumbo v2, "pkg.apk"

    #@13
    .line 11483
    invoke-static {v0, v1, v2}, Lcom/android/internal/content/PackageHelper;->fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 11491
    :cond_0
    const/4 v0, 0x1

    #@1a
    return v0

    #@1b
    .line 11485
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
    .line 11486
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@39
    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    #@3c
    .line 11487
    const/16 v0, -0x12

    #@3e
    return v0
.end method

.method doPostDeleteLI(Z)Z
    .locals 3
    .param p1, "delete"    # Z

    #@0
    .prologue
    .line 11453
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->getAllCodePaths()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 11454
    .local v0, "allCodePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@6
    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    #@9
    move-result v1

    #@a
    .line 11455
    .local v1, "mounted":Z
    if-eqz v1, :cond_0

    #@c
    .line 11457
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@e
    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->unMountSdDir(Ljava/lang/String;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 11458
    const/4 v1, 0x0

    #@15
    .line 11461
    .end local v1    # "mounted":Z
    :cond_0
    if-nez v1, :cond_1

    #@17
    if-eqz p1, :cond_1

    #@19
    .line 11462
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cleanUpResourcesLI(Ljava/util/List;)V

    #@1c
    .line 11464
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
    .line 11389
    const/4 v3, 0x1

    #@1
    if-eq p1, v3, :cond_1

    #@3
    .line 11390
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cleanUp()V

    #@6
    .line 11414
    :cond_0
    :goto_0
    return p1

    #@7
    .line 11394
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isFwdLocked()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_2

    #@d
    .line 11395
    invoke-static {p2}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    #@10
    move-result v0

    #@11
    .line 11396
    .local v0, "groupOwner":I
    const-string/jumbo v2, "pkg.apk"

    #@14
    .line 11402
    :goto_1
    const/16 v3, 0x2710

    #@16
    if-lt p2, v3, :cond_3

    #@18
    .line 11403
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@1a
    invoke-static {v3, v0, v2}, Lcom/android/internal/content/PackageHelper;->fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_3

    #@20
    .line 11409
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@22
    invoke-static {v3}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    #@25
    move-result v1

    #@26
    .line 11410
    .local v1, "mounted":Z
    if-nez v1, :cond_0

    #@28
    .line 11411
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
    .line 11398
    .end local v0    # "groupOwner":I
    .end local v1    # "mounted":Z
    :cond_2
    const/4 v0, -0x1

    #@37
    .line 11399
    .restart local v0    # "groupOwner":I
    const/4 v2, 0x0

    #@38
    .local v2, "protectedFile":Ljava/lang/String;
    goto :goto_1

    #@39
    .line 11404
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
    .line 11405
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@57
    invoke-static {v3}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    #@5a
    .line 11406
    const/16 v3, -0x12

    #@5c
    return v3
.end method

.method doPreCopy()I
    .locals 4

    #@0
    .prologue
    .line 11469
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isFwdLocked()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 11470
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@8
    .line 11471
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@a
    const-string/jumbo v2, "com.android.defcontainer"

    #@d
    const/4 v3, 0x0

    #@e
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    #@11
    move-result v1

    #@12
    const-string/jumbo v2, "pkg.apk"

    #@15
    .line 11470
    invoke-static {v0, v1, v2}, Lcom/android/internal/content/PackageHelper;->fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z

    #@18
    move-result v0

    #@19
    if-nez v0, :cond_0

    #@1b
    .line 11472
    const/16 v0, -0x12

    #@1d
    return v0

    #@1e
    .line 11476
    :cond_0
    const/4 v0, 0x1

    #@1f
    return v0
.end method

.method doPreInstall(I)I
    .locals 5
    .param p1, "status"    # I

    #@0
    .prologue
    .line 11289
    const/4 v2, 0x1

    #@1
    if-eq p1, v2, :cond_1

    #@3
    .line 11291
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@5
    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    #@8
    .line 11304
    :cond_0
    :goto_0
    return p1

    #@9
    .line 11293
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@b
    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    #@e
    move-result v0

    #@f
    .line 11294
    .local v0, "mounted":Z
    if-nez v0, :cond_0

    #@11
    .line 11295
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@13
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    .line 11296
    const/16 v4, 0x3e8

    #@19
    .line 11295
    invoke-static {v2, v3, v4}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    .line 11297
    .local v1, "newMountPath":Ljava/lang/String;
    if-eqz v1, :cond_2

    #@1f
    .line 11298
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setMountPath(Ljava/lang/String;)V

    #@22
    goto :goto_0

    #@23
    .line 11300
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
    .line 11308
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@3
    const-string/jumbo v5, "/pkg.apk"

    #@6
    invoke-static {p3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->-wrap17(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    .line 11309
    .local v2, "newCacheId":Ljava/lang/String;
    const/4 v3, 0x0

    #@b
    .line 11310
    .local v3, "newMountPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@d
    invoke-static {v4}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_0

    #@13
    .line 11312
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@15
    invoke-static {v4}, Lcom/android/internal/content/PackageHelper;->unMountSdDir(Ljava/lang/String;)Z

    #@18
    move-result v4

    #@19
    if-nez v4, :cond_0

    #@1b
    .line 11313
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
    .line 11314
    return v7

    #@3f
    .line 11317
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@41
    invoke-static {v4, v2}, Lcom/android/internal/content/PackageHelper;->renameSdDir(Ljava/lang/String;Ljava/lang/String;)Z

    #@44
    move-result v4

    #@45
    if-nez v4, :cond_2

    #@47
    .line 11318
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
    .line 11319
    const-string/jumbo v6, " which might be stale. Will try to clean up."

    #@6a
    .line 11318
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
    .line 11321
    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    #@78
    move-result v4

    #@79
    if-nez v4, :cond_1

    #@7b
    .line 11322
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
    .line 11323
    return v7

    #@96
    .line 11326
    :cond_1
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@98
    invoke-static {v4, v2}, Lcom/android/internal/content/PackageHelper;->renameSdDir(Ljava/lang/String;Ljava/lang/String;)Z

    #@9b
    move-result v4

    #@9c
    if-nez v4, :cond_2

    #@9e
    .line 11327
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
    .line 11328
    const-string/jumbo v6, " inspite of cleaning it up."

    #@c1
    .line 11327
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
    .line 11329
    return v7

    #@cd
    .line 11332
    :cond_2
    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    #@d0
    move-result v4

    #@d1
    if-nez v4, :cond_3

    #@d3
    .line 11333
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
    .line 11335
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    #@f0
    move-result-object v4

    #@f1
    const/16 v5, 0x3e8

    #@f3
    .line 11334
    invoke-static {v2, v4, v5}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@f6
    move-result-object v3

    #@f7
    .line 11339
    .local v3, "newMountPath":Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_4

    #@f9
    .line 11340
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
    .line 11341
    return v7

    #@114
    .line 11337
    .local v3, "newMountPath":Ljava/lang/String;
    :cond_3
    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    #@117
    move-result-object v3

    #@118
    .local v3, "newMountPath":Ljava/lang/String;
    goto :goto_0

    #@119
    .line 11343
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
    .line 11344
    const-string/jumbo v6, " to "

    #@131
    .line 11343
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v5

    #@135
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v5

    #@139
    .line 11345
    const-string/jumbo v6, " at new path: "

    #@13c
    .line 11343
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
    .line 11346
    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    #@14d
    .line 11348
    new-instance v1, Ljava/io/File;

    #@14f
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    #@151
    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@154
    .line 11349
    .local v1, "beforeCodeFile":Ljava/io/File;
    invoke-direct {p0, v3}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setMountPath(Ljava/lang/String;)V

    #@157
    .line 11350
    new-instance v0, Ljava/io/File;

    #@159
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    #@15b
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@15e
    .line 11353
    .local v0, "afterCodeFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@161
    move-result-object v4

    #@162
    iput-object v4, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    #@164
    .line 11355
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    #@166
    .line 11354
    invoke-static {v1, v0, v4}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    #@169
    move-result-object v4

    #@16a
    iput-object v4, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    #@16c
    .line 11357
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    #@16e
    .line 11356
    invoke-static {v1, v0, v4}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;

    #@171
    move-result-object v4

    #@172
    iput-object v4, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    #@174
    .line 11360
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@176
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    #@178
    iput-object v5, v4, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    #@17a
    .line 11361
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@17c
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    #@17e
    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->setCodePath(Ljava/lang/String;)V

    #@181
    .line 11362
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@183
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    #@185
    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->setBaseCodePath(Ljava/lang/String;)V

    #@188
    .line 11363
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@18a
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    #@18c
    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->setSplitCodePaths([Ljava/lang/String;)V

    #@18f
    .line 11364
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@191
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    #@193
    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->setResourcePath(Ljava/lang/String;)V

    #@196
    .line 11365
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@198
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    #@19a
    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->setBaseResourcePath(Ljava/lang/String;)V

    #@19d
    .line 11366
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@19f
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    #@1a1
    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->setSplitResourcePaths([Ljava/lang/String;)V

    #@1a4
    .line 11368
    const/4 v4, 0x1

    #@1a5
    return v4
.end method

.method getCodePath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 11280
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 11448
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
    .line 11285
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->resourcePath:Ljava/lang/String;

    #@2
    return-object v0
.end method
