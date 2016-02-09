.class Lcom/android/server/pm/PackageManagerService$InstallParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallParams"
.end annotation


# instance fields
.field final grantedRuntimePermissions:[Ljava/lang/String;

.field installFlags:I

.field final installerPackageName:Ljava/lang/String;

.field private mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field private mRet:I

.field final move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

.field final observer:Landroid/content/pm/IPackageInstallObserver2;

.field final origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

.field final packageAbiOverride:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final verificationParams:Landroid/content/pm/VerificationParams;

.field final volumeUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/VerificationParams;Landroid/os/UserHandle;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p3, "move"    # Lcom/android/server/pm/PackageManagerService$MoveInfo;
    .param p4, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p5, "installFlags"    # I
    .param p6, "installerPackageName"    # Ljava/lang/String;
    .param p7, "volumeUuid"    # Ljava/lang/String;
    .param p8, "verificationParams"    # Landroid/content/pm/VerificationParams;
    .param p9, "user"    # Landroid/os/UserHandle;
    .param p10, "packageAbiOverride"    # Ljava/lang/String;
    .param p11, "grantedPermissions"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 10430
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    .line 10434
    invoke-direct {p0, p1, p9}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    #@5
    .line 10435
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@7
    .line 10436
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    #@9
    .line 10437
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    #@b
    .line 10438
    iput p5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@d
    .line 10439
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    #@f
    .line 10440
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    #@11
    .line 10441
    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    #@13
    .line 10442
    iput-object p10, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    #@15
    .line 10443
    iput-object p11, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    #@17
    .line 10433
    return-void
.end method

.method private installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I
    .locals 9
    .param p1, "pkgLite"    # Landroid/content/pm/PackageInfoLite;

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    const/4 v7, 0x1

    #@2
    .line 10460
    iget-object v3, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    #@4
    .line 10461
    .local v3, "packageName":Ljava/lang/String;
    iget v1, p1, Landroid/content/pm/PackageInfoLite;->installLocation:I

    #@6
    .line 10462
    .local v1, "installLocation":I
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@8
    and-int/lit8 v5, v5, 0x8

    #@a
    if-eqz v5, :cond_1

    #@c
    const/4 v2, 0x1

    #@d
    .line 10464
    .local v2, "onSd":Z
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@f
    iget-object v6, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@11
    monitor-enter v6

    #@12
    .line 10465
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@14
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@16
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v4

    #@1a
    check-cast v4, Landroid/content/pm/PackageParser$Package;

    #@1c
    .line 10466
    .local v4, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_6

    #@1e
    .line 10467
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@20
    and-int/lit8 v5, v5, 0x2

    #@22
    if-eqz v5, :cond_9

    #@24
    .line 10469
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    and-int/lit16 v5, v5, 0x80

    #@28
    if-nez v5, :cond_0

    #@2a
    .line 10471
    :try_start_1
    invoke-static {v4, p1}, Lcom/android/server/pm/PackageManagerService;->-wrap22(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageInfoLite;)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    .line 10478
    :cond_0
    :try_start_2
    iget-object v5, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2f
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@31
    and-int/lit8 v5, v5, 0x1

    #@33
    if-eqz v5, :cond_3

    #@35
    .line 10479
    if-eqz v2, :cond_2

    #@37
    .line 10480
    const-string/jumbo v5, "PackageManager"

    #@3a
    const-string/jumbo v7, "Cannot install update to system app on sdcard"

    #@3d
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@40
    .line 10481
    const/4 v5, -0x3

    #@41
    monitor-exit v6

    #@42
    return v5

    #@43
    .line 10462
    .end local v2    # "onSd":Z
    .end local v4    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_1
    const/4 v2, 0x0

    #@44
    .restart local v2    # "onSd":Z
    goto :goto_0

    #@45
    .line 10472
    .restart local v4    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catch_0
    move-exception v0

    #@46
    .line 10473
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    :try_start_3
    const-string/jumbo v5, "PackageManager"

    #@49
    new-instance v7, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v8, "Downgrade detected: "

    #@51
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v7

    #@55
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    #@58
    move-result-object v8

    #@59
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v7

    #@5d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v7

    #@61
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@64
    .line 10474
    const/4 v5, -0x7

    #@65
    monitor-exit v6

    #@66
    return v5

    #@67
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    :cond_2
    monitor-exit v6

    #@68
    .line 10483
    return v7

    #@69
    .line 10485
    :cond_3
    if-eqz v2, :cond_4

    #@6b
    monitor-exit v6

    #@6c
    .line 10487
    return v8

    #@6d
    .line 10490
    :cond_4
    if-ne v1, v7, :cond_5

    #@6f
    monitor-exit v6

    #@70
    .line 10492
    return v7

    #@71
    .line 10493
    :cond_5
    if-ne v1, v8, :cond_7

    #@73
    :cond_6
    monitor-exit v6

    #@74
    .line 10511
    if-eqz v2, :cond_a

    #@76
    .line 10512
    return v8

    #@77
    .line 10497
    :cond_7
    :try_start_4
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-wrap6(Landroid/content/pm/PackageParser$Package;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@7a
    move-result v5

    #@7b
    if-eqz v5, :cond_8

    #@7d
    monitor-exit v6

    #@7e
    .line 10498
    return v8

    #@7f
    :cond_8
    monitor-exit v6

    #@80
    .line 10500
    return v7

    #@81
    .line 10505
    :cond_9
    const/4 v5, -0x4

    #@82
    monitor-exit v6

    #@83
    return v5

    #@84
    .line 10464
    .end local v4    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v5

    #@85
    monitor-exit v6

    #@86
    throw v5

    #@87
    .line 10514
    .restart local v4    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_a
    iget v5, p1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    #@89
    return v5
.end method


# virtual methods
.method public getManifestDigest()Landroid/content/pm/ManifestDigest;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 10453
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 10454
    return-object v1

    #@6
    .line 10456
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    #@8
    invoke-virtual {v0}, Landroid/content/pm/VerificationParams;->getManifestDigest()Landroid/content/pm/ManifestDigest;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method handleReturnCode()V
    .locals 3

    #@0
    .prologue
    .line 10778
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 10779
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@6
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@8
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    #@a
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->-wrap29(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    #@d
    .line 10774
    :cond_0
    return-void
.end method

.method handleServiceError()V
    .locals 1

    #@0
    .prologue
    .line 10785
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerService;->-wrap10(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@8
    .line 10786
    const/16 v0, -0x6e

    #@a
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    #@c
    .line 10784
    return-void
.end method

.method public handleStartCopy()V
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 10524
    const/16 v25, 0x1

    #@2
    .line 10527
    .local v25, "ret":I
    move-object/from16 v0, p0

    #@4
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@6
    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    #@8
    if-eqz v4, :cond_0

    #@a
    .line 10528
    move-object/from16 v0, p0

    #@c
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@e
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    #@10
    if-eqz v4, :cond_c

    #@12
    .line 10529
    move-object/from16 v0, p0

    #@14
    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@16
    or-int/lit8 v4, v4, 0x10

    #@18
    move-object/from16 v0, p0

    #@1a
    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@1c
    .line 10530
    move-object/from16 v0, p0

    #@1e
    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@20
    and-int/lit8 v4, v4, -0x9

    #@22
    move-object/from16 v0, p0

    #@24
    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@26
    .line 10539
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    #@28
    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@2a
    and-int/lit8 v4, v4, 0x8

    #@2c
    if-eqz v4, :cond_e

    #@2e
    const/16 v20, 0x1

    #@30
    .line 10540
    .local v20, "onSd":Z
    :goto_1
    move-object/from16 v0, p0

    #@32
    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@34
    and-int/lit8 v4, v4, 0x10

    #@36
    if-eqz v4, :cond_f

    #@38
    const/16 v17, 0x1

    #@3a
    .line 10542
    .local v17, "onInt":Z
    :goto_2
    const/16 v21, 0x0

    #@3c
    .line 10544
    .local v21, "pkgLite":Landroid/content/pm/PackageInfoLite;
    if-eqz v17, :cond_10

    #@3e
    if-eqz v20, :cond_10

    #@40
    .line 10546
    const-string/jumbo v4, "PackageManager"

    #@43
    const-string/jumbo v7, "Conflicting flags specified for installing on both internal and external"

    #@46
    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 10547
    const/16 v25, -0x13

    #@4b
    .line 10586
    .end local v21    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :cond_1
    :goto_3
    const/4 v4, 0x1

    #@4c
    move/from16 v0, v25

    #@4e
    if-ne v0, v4, :cond_2

    #@50
    .line 10587
    move-object/from16 v0, v21

    #@52
    iget v0, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    #@54
    move/from16 v16, v0

    #@56
    .line 10588
    .local v16, "loc":I
    const/4 v4, -0x3

    #@57
    move/from16 v0, v16

    #@59
    if-ne v0, v4, :cond_12

    #@5b
    .line 10589
    const/16 v25, -0x13

    #@5d
    .line 10621
    .end local v16    # "loc":I
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    #@5f
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@61
    move-object/from16 v0, p0

    #@63
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->-wrap10(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@66
    move-result-object v14

    #@67
    .line 10622
    .local v14, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, p0

    #@69
    iput-object v14, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@6b
    .line 10624
    const/4 v4, 0x1

    #@6c
    move/from16 v0, v25

    #@6e
    if-ne v0, v4, :cond_b

    #@70
    .line 10629
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    #@73
    move-result-object v4

    #@74
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    #@77
    move-result v31

    #@78
    .line 10630
    .local v31, "userIdentifier":I
    const/4 v4, -0x1

    #@79
    move/from16 v0, v31

    #@7b
    if-ne v0, v4, :cond_3

    #@7d
    .line 10631
    move-object/from16 v0, p0

    #@7f
    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@81
    and-int/lit8 v4, v4, 0x20

    #@83
    if-eqz v4, :cond_3

    #@85
    .line 10632
    const/16 v31, 0x0

    #@87
    .line 10639
    :cond_3
    move-object/from16 v0, p0

    #@89
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@8b
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    #@8d
    if-nez v4, :cond_1a

    #@8f
    const/16 v23, -0x1

    #@91
    .line 10641
    .local v23, "requiredUid":I
    :goto_5
    move-object/from16 v0, p0

    #@93
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@95
    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->existing:Z

    #@97
    if-nez v4, :cond_1c

    #@99
    const/4 v4, -0x1

    #@9a
    move/from16 v0, v23

    #@9c
    if-eq v0, v4, :cond_1c

    #@9e
    .line 10642
    move-object/from16 v0, p0

    #@a0
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@a2
    move-object/from16 v0, p0

    #@a4
    iget v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@a6
    move/from16 v0, v31

    #@a8
    invoke-static {v4, v0, v7}, Lcom/android/server/pm/PackageManagerService;->-wrap7(Lcom/android/server/pm/PackageManagerService;II)Z

    #@ab
    move-result v4

    #@ac
    .line 10641
    if-eqz v4, :cond_1c

    #@ae
    .line 10643
    new-instance v5, Landroid/content/Intent;

    #@b0
    .line 10644
    const-string/jumbo v4, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    #@b3
    .line 10643
    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@b6
    .line 10645
    .local v5, "verification":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    #@b8
    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@bb
    .line 10646
    new-instance v4, Ljava/io/File;

    #@bd
    move-object/from16 v0, p0

    #@bf
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@c1
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    #@c3
    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@c6
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    #@c9
    move-result-object v4

    #@ca
    .line 10647
    const-string/jumbo v7, "application/vnd.android.package-archive"

    #@cd
    .line 10646
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    #@d0
    .line 10648
    const/4 v4, 0x1

    #@d1
    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d4
    .line 10650
    move-object/from16 v0, p0

    #@d6
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@d8
    .line 10651
    const-string/jumbo v7, "application/vnd.android.package-archive"

    #@db
    const/16 v8, 0x200

    #@dd
    .line 10652
    const/4 v9, 0x0

    #@de
    .line 10650
    invoke-virtual {v4, v5, v7, v8, v9}, Lcom/android/server/pm/PackageManagerService;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    #@e1
    move-result-object v22

    #@e2
    .line 10660
    .local v22, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    #@e4
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@e6
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get5(Lcom/android/server/pm/PackageManagerService;)I

    #@e9
    move-result v32

    #@ea
    add-int/lit8 v7, v32, 0x1

    #@ec
    invoke-static {v4, v7}, Lcom/android/server/pm/PackageManagerService;->-set1(Lcom/android/server/pm/PackageManagerService;I)I

    #@ef
    .line 10662
    .local v32, "verificationId":I
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_ID"

    #@f2
    move/from16 v0, v32

    #@f4
    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@f7
    .line 10664
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    #@fa
    .line 10665
    move-object/from16 v0, p0

    #@fc
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    #@fe
    .line 10664
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@101
    .line 10667
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    #@104
    .line 10668
    move-object/from16 v0, p0

    #@106
    iget v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@108
    .line 10667
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@10b
    .line 10670
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    #@10e
    .line 10671
    move-object/from16 v0, v21

    #@110
    iget-object v7, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    #@112
    .line 10670
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@115
    .line 10673
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    #@118
    .line 10674
    move-object/from16 v0, v21

    #@11a
    iget v7, v0, Landroid/content/pm/PackageInfoLite;->versionCode:I

    #@11c
    .line 10673
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@11f
    .line 10676
    move-object/from16 v0, p0

    #@121
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    #@123
    if-eqz v4, :cond_8

    #@125
    .line 10677
    move-object/from16 v0, p0

    #@127
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    #@129
    invoke-virtual {v4}, Landroid/content/pm/VerificationParams;->getVerificationURI()Landroid/net/Uri;

    #@12c
    move-result-object v4

    #@12d
    if-eqz v4, :cond_4

    #@12f
    .line 10678
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_URI"

    #@132
    .line 10679
    move-object/from16 v0, p0

    #@134
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    #@136
    invoke-virtual {v7}, Landroid/content/pm/VerificationParams;->getVerificationURI()Landroid/net/Uri;

    #@139
    move-result-object v7

    #@13a
    .line 10678
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@13d
    .line 10681
    :cond_4
    move-object/from16 v0, p0

    #@13f
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    #@141
    invoke-virtual {v4}, Landroid/content/pm/VerificationParams;->getOriginatingURI()Landroid/net/Uri;

    #@144
    move-result-object v4

    #@145
    if-eqz v4, :cond_5

    #@147
    .line 10682
    const-string/jumbo v4, "android.intent.extra.ORIGINATING_URI"

    #@14a
    .line 10683
    move-object/from16 v0, p0

    #@14c
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    #@14e
    invoke-virtual {v7}, Landroid/content/pm/VerificationParams;->getOriginatingURI()Landroid/net/Uri;

    #@151
    move-result-object v7

    #@152
    .line 10682
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@155
    .line 10685
    :cond_5
    move-object/from16 v0, p0

    #@157
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    #@159
    invoke-virtual {v4}, Landroid/content/pm/VerificationParams;->getReferrer()Landroid/net/Uri;

    #@15c
    move-result-object v4

    #@15d
    if-eqz v4, :cond_6

    #@15f
    .line 10686
    const-string/jumbo v4, "android.intent.extra.REFERRER"

    #@162
    .line 10687
    move-object/from16 v0, p0

    #@164
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    #@166
    invoke-virtual {v7}, Landroid/content/pm/VerificationParams;->getReferrer()Landroid/net/Uri;

    #@169
    move-result-object v7

    #@16a
    .line 10686
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@16d
    .line 10689
    :cond_6
    move-object/from16 v0, p0

    #@16f
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    #@171
    invoke-virtual {v4}, Landroid/content/pm/VerificationParams;->getOriginatingUid()I

    #@174
    move-result v4

    #@175
    if-ltz v4, :cond_7

    #@177
    .line 10690
    const-string/jumbo v4, "android.intent.extra.ORIGINATING_UID"

    #@17a
    .line 10691
    move-object/from16 v0, p0

    #@17c
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    #@17e
    invoke-virtual {v7}, Landroid/content/pm/VerificationParams;->getOriginatingUid()I

    #@181
    move-result v7

    #@182
    .line 10690
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@185
    .line 10693
    :cond_7
    move-object/from16 v0, p0

    #@187
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    #@189
    invoke-virtual {v4}, Landroid/content/pm/VerificationParams;->getInstallerUid()I

    #@18c
    move-result v4

    #@18d
    if-ltz v4, :cond_8

    #@18f
    .line 10694
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    #@192
    .line 10695
    move-object/from16 v0, p0

    #@194
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    #@196
    invoke-virtual {v7}, Landroid/content/pm/VerificationParams;->getInstallerUid()I

    #@199
    move-result v7

    #@19a
    .line 10694
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@19d
    .line 10699
    :cond_8
    new-instance v33, Lcom/android/server/pm/PackageVerificationState;

    #@19f
    move-object/from16 v0, v33

    #@1a1
    move/from16 v1, v23

    #@1a3
    invoke-direct {v0, v1, v14}, Lcom/android/server/pm/PackageVerificationState;-><init>(ILcom/android/server/pm/PackageManagerService$InstallArgs;)V

    #@1a6
    .line 10702
    .local v33, "verificationState":Lcom/android/server/pm/PackageVerificationState;
    move-object/from16 v0, p0

    #@1a8
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@1aa
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    #@1ac
    move/from16 v0, v32

    #@1ae
    move-object/from16 v1, v33

    #@1b0
    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@1b3
    .line 10704
    move-object/from16 v0, p0

    #@1b5
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@1b7
    move-object/from16 v0, v21

    #@1b9
    move-object/from16 v1, v22

    #@1bb
    move-object/from16 v2, v33

    #@1bd
    invoke-static {v4, v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->-wrap18(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;

    #@1c0
    move-result-object v30

    #@1c1
    .line 10708
    .local v30, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    #@1c4
    move-result-object v6

    #@1c5
    .line 10709
    .local v6, "verifierUser":Landroid/os/UserHandle;
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@1c7
    if-ne v6, v4, :cond_9

    #@1c9
    .line 10710
    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    #@1cb
    .line 10717
    :cond_9
    if-eqz v30, :cond_a

    #@1cd
    .line 10718
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    #@1d0
    move-result v13

    #@1d1
    .line 10719
    .local v13, "N":I
    if-nez v13, :cond_1b

    #@1d3
    .line 10720
    const-string/jumbo v4, "PackageManager"

    #@1d6
    const-string/jumbo v7, "Additional verifiers required, but none installed."

    #@1d9
    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1dc
    .line 10721
    const/16 v25, -0x16

    #@1de
    .line 10733
    .end local v13    # "N":I
    :cond_a
    move-object/from16 v0, p0

    #@1e0
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@1e2
    .line 10734
    move-object/from16 v0, p0

    #@1e4
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@1e6
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    #@1e8
    .line 10733
    move-object/from16 v0, v22

    #@1ea
    invoke-static {v4, v7, v0}, Lcom/android/server/pm/PackageManagerService;->-wrap0(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    #@1ed
    move-result-object v24

    #@1ee
    .line 10735
    .local v24, "requiredVerifierComponent":Landroid/content/ComponentName;
    const/4 v4, 0x1

    #@1ef
    move/from16 v0, v25

    #@1f1
    if-ne v0, v4, :cond_b

    #@1f3
    .line 10736
    move-object/from16 v0, p0

    #@1f5
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@1f7
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    #@1f9
    if-eqz v4, :cond_b

    #@1fb
    .line 10742
    move-object/from16 v0, v24

    #@1fd
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@200
    .line 10743
    move-object/from16 v0, p0

    #@202
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@204
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    #@206
    .line 10744
    const-string/jumbo v7, "android.permission.PACKAGE_VERIFICATION_AGENT"

    #@209
    .line 10745
    new-instance v8, Lcom/android/server/pm/PackageManagerService$InstallParams$1;

    #@20b
    move-object/from16 v0, p0

    #@20d
    move/from16 v1, v32

    #@20f
    invoke-direct {v8, v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallParams$1;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V

    #@212
    .line 10753
    const/4 v9, 0x0

    #@213
    const/4 v10, 0x0

    #@214
    const/4 v11, 0x0

    #@215
    const/4 v12, 0x0

    #@216
    .line 10743
    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@219
    .line 10759
    const/4 v4, 0x0

    #@21a
    move-object/from16 v0, p0

    #@21c
    iput-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@21e
    .line 10770
    .end local v5    # "verification":Landroid/content/Intent;
    .end local v6    # "verifierUser":Landroid/os/UserHandle;
    .end local v22    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v23    # "requiredUid":I
    .end local v24    # "requiredVerifierComponent":Landroid/content/ComponentName;
    .end local v30    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v31    # "userIdentifier":I
    .end local v32    # "verificationId":I
    .end local v33    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    :cond_b
    :goto_6
    move/from16 v0, v25

    #@220
    move-object/from16 v1, p0

    #@222
    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    #@224
    .line 10523
    return-void

    #@225
    .line 10531
    .end local v14    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v17    # "onInt":Z
    .end local v20    # "onSd":Z
    :cond_c
    move-object/from16 v0, p0

    #@227
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@229
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    #@22b
    if-eqz v4, :cond_d

    #@22d
    .line 10532
    move-object/from16 v0, p0

    #@22f
    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@231
    or-int/lit8 v4, v4, 0x8

    #@233
    move-object/from16 v0, p0

    #@235
    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@237
    .line 10533
    move-object/from16 v0, p0

    #@239
    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@23b
    and-int/lit8 v4, v4, -0x11

    #@23d
    move-object/from16 v0, p0

    #@23f
    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@241
    goto/16 :goto_0

    #@243
    .line 10535
    :cond_d
    new-instance v4, Ljava/lang/IllegalStateException;

    #@245
    const-string/jumbo v7, "Invalid stage location"

    #@248
    invoke-direct {v4, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@24b
    throw v4

    #@24c
    .line 10539
    :cond_e
    const/16 v20, 0x0

    #@24e
    .restart local v20    # "onSd":Z
    goto/16 :goto_1

    #@250
    .line 10540
    :cond_f
    const/16 v17, 0x0

    #@252
    .restart local v17    # "onInt":Z
    goto/16 :goto_2

    #@254
    .line 10549
    .restart local v21    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :cond_10
    move-object/from16 v0, p0

    #@256
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@258
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get0(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    #@25b
    move-result-object v4

    #@25c
    move-object/from16 v0, p0

    #@25e
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@260
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    #@262
    move-object/from16 v0, p0

    #@264
    iget v8, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@266
    .line 10550
    move-object/from16 v0, p0

    #@268
    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    #@26a
    .line 10549
    invoke-interface {v4, v7, v8, v9}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    #@26d
    move-result-object v21

    #@26e
    .line 10556
    .local v21, "pkgLite":Landroid/content/pm/PackageInfoLite;
    move-object/from16 v0, p0

    #@270
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@272
    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    #@274
    if-nez v4, :cond_1

    #@276
    move-object/from16 v0, v21

    #@278
    iget v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    #@27a
    .line 10557
    const/4 v7, -0x1

    #@27b
    .line 10556
    if-ne v4, v7, :cond_1

    #@27d
    .line 10559
    move-object/from16 v0, p0

    #@27f
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@281
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    #@283
    invoke-static {v4}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    #@286
    move-result-object v28

    #@287
    .line 10561
    .local v28, "storage":Landroid/os/storage/StorageManager;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@28a
    move-result-object v4

    #@28b
    .line 10560
    move-object/from16 v0, v28

    #@28d
    invoke-virtual {v0, v4}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    #@290
    move-result-wide v18

    #@291
    .line 10563
    .local v18, "lowThreshold":J
    move-object/from16 v0, p0

    #@293
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@295
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get0(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    #@298
    move-result-object v4

    #@299
    .line 10564
    move-object/from16 v0, p0

    #@29b
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@29d
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    #@29f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->isForwardLocked()Z

    #@2a2
    move-result v8

    #@2a3
    move-object/from16 v0, p0

    #@2a5
    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    #@2a7
    .line 10563
    invoke-interface {v4, v7, v8, v9}, Lcom/android/internal/app/IMediaContainerService;->calculateInstalledSize(Ljava/lang/String;ZLjava/lang/String;)J

    #@2aa
    move-result-wide v26

    #@2ab
    .line 10566
    .local v26, "sizeBytes":J
    move-object/from16 v0, p0

    #@2ad
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2af
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    #@2b1
    add-long v8, v26, v18

    #@2b3
    const/4 v7, 0x0

    #@2b4
    invoke-virtual {v4, v7, v8, v9}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;J)I

    #@2b7
    move-result v4

    #@2b8
    if-ltz v4, :cond_11

    #@2ba
    .line 10567
    move-object/from16 v0, p0

    #@2bc
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2be
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get0(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    #@2c1
    move-result-object v4

    #@2c2
    move-object/from16 v0, p0

    #@2c4
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@2c6
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    #@2c8
    .line 10568
    move-object/from16 v0, p0

    #@2ca
    iget v8, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@2cc
    move-object/from16 v0, p0

    #@2ce
    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    #@2d0
    .line 10567
    invoke-interface {v4, v7, v8, v9}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    #@2d3
    move-result-object v21

    #@2d4
    .line 10578
    :cond_11
    move-object/from16 v0, v21

    #@2d6
    iget v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    #@2d8
    .line 10579
    const/4 v7, -0x6

    #@2d9
    .line 10578
    if-ne v4, v7, :cond_1

    #@2db
    .line 10581
    const/4 v4, -0x1

    #@2dc
    .line 10580
    move-object/from16 v0, v21

    #@2de
    iput v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    #@2e0
    goto/16 :goto_3

    #@2e2
    .line 10590
    .end local v18    # "lowThreshold":J
    .end local v21    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v26    # "sizeBytes":J
    .end local v28    # "storage":Landroid/os/storage/StorageManager;
    .restart local v16    # "loc":I
    :cond_12
    const/4 v4, -0x4

    #@2e3
    move/from16 v0, v16

    #@2e5
    if-ne v0, v4, :cond_13

    #@2e7
    .line 10591
    const/16 v25, -0x1

    #@2e9
    goto/16 :goto_4

    #@2eb
    .line 10592
    :cond_13
    const/4 v4, -0x1

    #@2ec
    move/from16 v0, v16

    #@2ee
    if-ne v0, v4, :cond_14

    #@2f0
    .line 10593
    const/16 v25, -0x4

    #@2f2
    goto/16 :goto_4

    #@2f4
    .line 10594
    :cond_14
    const/4 v4, -0x2

    #@2f5
    move/from16 v0, v16

    #@2f7
    if-ne v0, v4, :cond_15

    #@2f9
    .line 10595
    const/16 v25, -0x2

    #@2fb
    goto/16 :goto_4

    #@2fd
    .line 10596
    :cond_15
    const/4 v4, -0x6

    #@2fe
    move/from16 v0, v16

    #@300
    if-ne v0, v4, :cond_16

    #@302
    .line 10597
    const/16 v25, -0x3

    #@304
    goto/16 :goto_4

    #@306
    .line 10598
    :cond_16
    const/4 v4, -0x5

    #@307
    move/from16 v0, v16

    #@309
    if-ne v0, v4, :cond_17

    #@30b
    .line 10599
    const/16 v25, -0x14

    #@30d
    goto/16 :goto_4

    #@30f
    .line 10602
    :cond_17
    move-object/from16 v0, p0

    #@311
    move-object/from16 v1, v21

    #@313
    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallParams;->installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I

    #@316
    move-result v16

    #@317
    .line 10603
    const/4 v4, -0x7

    #@318
    move/from16 v0, v16

    #@31a
    if-ne v0, v4, :cond_18

    #@31c
    .line 10604
    const/16 v25, -0x19

    #@31e
    goto/16 :goto_4

    #@320
    .line 10605
    :cond_18
    if-nez v20, :cond_2

    #@322
    if-nez v17, :cond_2

    #@324
    .line 10607
    const/4 v4, 0x2

    #@325
    move/from16 v0, v16

    #@327
    if-ne v0, v4, :cond_19

    #@329
    .line 10609
    move-object/from16 v0, p0

    #@32b
    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@32d
    or-int/lit8 v4, v4, 0x8

    #@32f
    move-object/from16 v0, p0

    #@331
    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@333
    .line 10610
    move-object/from16 v0, p0

    #@335
    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@337
    and-int/lit8 v4, v4, -0x11

    #@339
    move-object/from16 v0, p0

    #@33b
    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@33d
    goto/16 :goto_4

    #@33f
    .line 10614
    :cond_19
    move-object/from16 v0, p0

    #@341
    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@343
    or-int/lit8 v4, v4, 0x10

    #@345
    move-object/from16 v0, p0

    #@347
    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@349
    .line 10615
    move-object/from16 v0, p0

    #@34b
    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@34d
    and-int/lit8 v4, v4, -0x9

    #@34f
    move-object/from16 v0, p0

    #@351
    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@353
    goto/16 :goto_4

    #@355
    .line 10640
    .end local v16    # "loc":I
    .restart local v14    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .restart local v31    # "userIdentifier":I
    :cond_1a
    move-object/from16 v0, p0

    #@357
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@359
    move-object/from16 v0, p0

    #@35b
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@35d
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    #@35f
    move/from16 v0, v31

    #@361
    invoke-virtual {v4, v7, v0}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    #@364
    move-result v23

    #@365
    .restart local v23    # "requiredUid":I
    goto/16 :goto_5

    #@367
    .line 10723
    .restart local v5    # "verification":Landroid/content/Intent;
    .restart local v6    # "verifierUser":Landroid/os/UserHandle;
    .restart local v13    # "N":I
    .restart local v22    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v30    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v32    # "verificationId":I
    .restart local v33    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    :cond_1b
    const/4 v15, 0x0

    #@368
    .local v15, "i":I
    :goto_7
    if-ge v15, v13, :cond_a

    #@36a
    .line 10724
    move-object/from16 v0, v30

    #@36c
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@36f
    move-result-object v34

    #@370
    check-cast v34, Landroid/content/ComponentName;

    #@372
    .line 10726
    .local v34, "verifierComponent":Landroid/content/ComponentName;
    new-instance v29, Landroid/content/Intent;

    #@374
    move-object/from16 v0, v29

    #@376
    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@379
    .line 10727
    .local v29, "sufficientIntent":Landroid/content/Intent;
    move-object/from16 v0, v29

    #@37b
    move-object/from16 v1, v34

    #@37d
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@380
    .line 10728
    move-object/from16 v0, p0

    #@382
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@384
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    #@386
    move-object/from16 v0, v29

    #@388
    invoke-virtual {v4, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@38b
    .line 10723
    add-int/lit8 v15, v15, 0x1

    #@38d
    goto :goto_7

    #@38e
    .line 10766
    .end local v5    # "verification":Landroid/content/Intent;
    .end local v6    # "verifierUser":Landroid/os/UserHandle;
    .end local v13    # "N":I
    .end local v15    # "i":I
    .end local v22    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v29    # "sufficientIntent":Landroid/content/Intent;
    .end local v30    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v32    # "verificationId":I
    .end local v33    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .end local v34    # "verifierComponent":Landroid/content/ComponentName;
    :cond_1c
    move-object/from16 v0, p0

    #@390
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@392
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get0(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    #@395
    move-result-object v4

    #@396
    const/4 v7, 0x1

    #@397
    invoke-virtual {v14, v4, v7}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    #@39a
    move-result v25

    #@39b
    goto/16 :goto_6
.end method

.method public isForwardLocked()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 10790
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 10448
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "InstallParams{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@f
    move-result v1

    #@10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 10449
    const-string/jumbo v1, " file="

    #@1b
    .line 10448
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 10449
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@21
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    #@23
    .line 10448
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 10449
    const-string/jumbo v1, " cid="

    #@2a
    .line 10448
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 10449
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@30
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    #@32
    .line 10448
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 10449
    const-string/jumbo v1, "}"

    #@39
    .line 10448
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    return-object v0
.end method
