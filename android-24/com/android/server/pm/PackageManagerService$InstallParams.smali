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
.field final certificates:[[Ljava/security/cert/Certificate;

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

.field final verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

.field final volumeUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$VerificationInfo;Landroid/os/UserHandle;Ljava/lang/String;[Ljava/lang/String;[[Ljava/security/cert/Certificate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p3, "move"    # Lcom/android/server/pm/PackageManagerService$MoveInfo;
    .param p4, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p5, "installFlags"    # I
    .param p6, "installerPackageName"    # Ljava/lang/String;
    .param p7, "volumeUuid"    # Ljava/lang/String;
    .param p8, "verificationInfo"    # Lcom/android/server/pm/PackageManagerService$VerificationInfo;
    .param p9, "user"    # Landroid/os/UserHandle;
    .param p10, "packageAbiOverride"    # Ljava/lang/String;
    .param p11, "grantedPermissions"    # [Ljava/lang/String;
    .param p12, "certificates"    # [[Ljava/security/cert/Certificate;

    #@0
    .prologue
    .line 12723
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    .line 12727
    invoke-direct {p0, p1, p9}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    #@5
    .line 12728
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@7
    .line 12729
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    #@9
    .line 12730
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    #@b
    .line 12731
    iput p5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@d
    .line 12732
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    #@f
    .line 12733
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    #@11
    .line 12734
    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    #@13
    .line 12735
    iput-object p10, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    #@15
    .line 12736
    iput-object p11, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    #@17
    .line 12737
    iput-object p12, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->certificates:[[Ljava/security/cert/Certificate;

    #@19
    .line 12726
    return-void
.end method

.method private installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I
    .locals 14
    .param p1, "pkgLite"    # Landroid/content/pm/PackageInfoLite;

    #@0
    .prologue
    const/4 v13, 0x2

    #@1
    const/4 v10, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 12747
    iget-object v8, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    #@5
    .line 12748
    .local v8, "packageName":Ljava/lang/String;
    iget v4, p1, Landroid/content/pm/PackageInfoLite;->installLocation:I

    #@7
    .line 12749
    .local v4, "installLocation":I
    iget v11, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@9
    and-int/lit8 v11, v11, 0x8

    #@b
    if-eqz v11, :cond_3

    #@d
    const/4 v6, 0x1

    #@e
    .line 12751
    .local v6, "onSd":Z
    :goto_0
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@10
    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@12
    monitor-enter v11

    #@13
    .line 12754
    :try_start_0
    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@15
    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@17
    invoke-virtual {v12, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v5

    #@1b
    check-cast v5, Landroid/content/pm/PackageParser$Package;

    #@1d
    .line 12759
    .local v5, "installedPkg":Landroid/content/pm/PackageParser$Package;
    move-object v0, v5

    #@1e
    .line 12760
    .local v0, "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    if-nez v5, :cond_0

    #@20
    .line 12761
    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@22
    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@24
    iget-object v12, v12, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@26
    invoke-virtual {v12, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move-result-object v9

    #@2a
    check-cast v9, Lcom/android/server/pm/PackageSetting;

    #@2c
    .line 12762
    .local v9, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v9, :cond_0

    #@2e
    .line 12763
    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@30
    .line 12767
    .end local v9    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_0
    if-eqz v0, :cond_2

    #@32
    .line 12782
    iget v12, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@34
    and-int/lit16 v12, v12, 0x80

    #@36
    if-eqz v12, :cond_4

    #@38
    const/4 v2, 0x1

    #@39
    .line 12784
    .local v2, "downgradeRequested":Z
    :goto_1
    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3b
    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    #@3d
    and-int/lit8 v12, v12, 0x2

    #@3f
    if-eqz v12, :cond_5

    #@41
    const/4 v7, 0x1

    #@42
    .line 12787
    .local v7, "packageDebuggable":Z
    :goto_2
    if-eqz v2, :cond_1

    #@44
    sget-boolean v12, Landroid/os/Build;->IS_DEBUGGABLE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    if-nez v12, :cond_6

    #@48
    move v1, v7

    #@49
    .line 12788
    .local v1, "downgradePermitted":Z
    :cond_1
    :goto_3
    if-nez v1, :cond_2

    #@4b
    .line 12790
    :try_start_1
    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerService;->-wrap20(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageInfoLite;)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    .line 12798
    .end local v1    # "downgradePermitted":Z
    .end local v2    # "downgradeRequested":Z
    .end local v7    # "packageDebuggable":Z
    :cond_2
    if-eqz v5, :cond_b

    #@50
    .line 12799
    :try_start_2
    iget v12, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@52
    and-int/lit8 v12, v12, 0x2

    #@54
    if-eqz v12, :cond_e

    #@56
    .line 12801
    iget-object v12, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@58
    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    #@5a
    and-int/lit8 v12, v12, 0x1

    #@5c
    if-eqz v12, :cond_8

    #@5e
    .line 12802
    if-eqz v6, :cond_7

    #@60
    .line 12803
    const-string/jumbo v10, "PackageManager"

    #@63
    const-string/jumbo v12, "Cannot install update to system app on sdcard"

    #@66
    invoke-static {v10, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@69
    .line 12804
    const/4 v10, -0x3

    #@6a
    monitor-exit v11

    #@6b
    return v10

    #@6c
    .line 12749
    .end local v0    # "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    .end local v5    # "installedPkg":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "onSd":Z
    :cond_3
    const/4 v6, 0x0

    #@6d
    .restart local v6    # "onSd":Z
    goto :goto_0

    #@6e
    .line 12782
    .restart local v0    # "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v5    # "installedPkg":Landroid/content/pm/PackageParser$Package;
    :cond_4
    const/4 v2, 0x0

    #@6f
    .restart local v2    # "downgradeRequested":Z
    goto :goto_1

    #@70
    .line 12784
    :cond_5
    const/4 v7, 0x0

    #@71
    .restart local v7    # "packageDebuggable":Z
    goto :goto_2

    #@72
    :cond_6
    move v1, v10

    #@73
    .line 12787
    goto :goto_3

    #@74
    .line 12791
    .restart local v1    # "downgradePermitted":Z
    :catch_0
    move-exception v3

    #@75
    .line 12792
    .local v3, "e":Lcom/android/server/pm/PackageManagerException;
    :try_start_3
    const-string/jumbo v10, "PackageManager"

    #@78
    new-instance v12, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v13, "Downgrade detected: "

    #@80
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v12

    #@84
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    #@87
    move-result-object v13

    #@88
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v12

    #@8c
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v12

    #@90
    invoke-static {v10, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@93
    .line 12793
    const/4 v10, -0x7

    #@94
    monitor-exit v11

    #@95
    return v10

    #@96
    .end local v1    # "downgradePermitted":Z
    .end local v2    # "downgradeRequested":Z
    .end local v3    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v7    # "packageDebuggable":Z
    :cond_7
    monitor-exit v11

    #@97
    .line 12806
    return v10

    #@98
    .line 12808
    :cond_8
    if-eqz v6, :cond_9

    #@9a
    monitor-exit v11

    #@9b
    .line 12810
    return v13

    #@9c
    .line 12813
    :cond_9
    if-ne v4, v10, :cond_a

    #@9e
    monitor-exit v11

    #@9f
    .line 12815
    return v10

    #@a0
    .line 12816
    :cond_a
    if-ne v4, v13, :cond_c

    #@a2
    :cond_b
    monitor-exit v11

    #@a3
    .line 12834
    if-eqz v6, :cond_f

    #@a5
    .line 12835
    return v13

    #@a6
    .line 12820
    :cond_c
    :try_start_4
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->-wrap5(Landroid/content/pm/PackageParser$Package;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@a9
    move-result v12

    #@aa
    if-eqz v12, :cond_d

    #@ac
    monitor-exit v11

    #@ad
    .line 12821
    return v13

    #@ae
    :cond_d
    monitor-exit v11

    #@af
    .line 12823
    return v10

    #@b0
    .line 12828
    :cond_e
    const/4 v10, -0x4

    #@b1
    monitor-exit v11

    #@b2
    return v10

    #@b3
    .line 12751
    .end local v0    # "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    .end local v5    # "installedPkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v10

    #@b4
    monitor-exit v11

    #@b5
    throw v10

    #@b6
    .line 12837
    .restart local v0    # "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v5    # "installedPkg":Landroid/content/pm/PackageParser$Package;
    :cond_f
    iget v10, p1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    #@b8
    return v10
.end method


# virtual methods
.method handleReturnCode()V
    .locals 3

    #@0
    .prologue
    .line 13108
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 13109
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@6
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@8
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    #@a
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->-wrap32(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    #@d
    .line 13104
    :cond_0
    return-void
.end method

.method handleServiceError()V
    .locals 1

    #@0
    .prologue
    .line 13115
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerService;->-wrap8(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@8
    .line 13116
    const/16 v0, -0x6e

    #@a
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    #@c
    .line 13114
    return-void
.end method

.method public handleStartCopy()V
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 12847
    const/16 v27, 0x1

    #@2
    .line 12850
    .local v27, "ret":I
    move-object/from16 v0, p0

    #@4
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@6
    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    #@8
    if-eqz v4, :cond_0

    #@a
    .line 12851
    move-object/from16 v0, p0

    #@c
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@e
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    #@10
    if-eqz v4, :cond_a

    #@12
    .line 12852
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
    .line 12853
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
    .line 12862
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    #@28
    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@2a
    and-int/lit8 v4, v4, 0x8

    #@2c
    if-eqz v4, :cond_c

    #@2e
    const/16 v22, 0x1

    #@30
    .line 12863
    .local v22, "onSd":Z
    :goto_1
    move-object/from16 v0, p0

    #@32
    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@34
    and-int/lit8 v4, v4, 0x10

    #@36
    if-eqz v4, :cond_d

    #@38
    const/16 v19, 0x1

    #@3a
    .line 12864
    .local v19, "onInt":Z
    :goto_2
    move-object/from16 v0, p0

    #@3c
    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@3e
    and-int/lit16 v4, v4, 0x800

    #@40
    if-eqz v4, :cond_e

    #@42
    const/16 v16, 0x1

    #@44
    .line 12865
    .local v16, "ephemeral":Z
    :goto_3
    const/16 v23, 0x0

    #@46
    .line 12867
    .local v23, "pkgLite":Landroid/content/pm/PackageInfoLite;
    if-eqz v19, :cond_f

    #@48
    if-eqz v22, :cond_f

    #@4a
    .line 12869
    const-string/jumbo v4, "PackageManager"

    #@4d
    const-string/jumbo v7, "Conflicting flags specified for installing on both internal and external"

    #@50
    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    .line 12870
    const/16 v27, -0x13

    #@55
    .line 12919
    .end local v23    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :cond_1
    :goto_4
    const/4 v4, 0x1

    #@56
    move/from16 v0, v27

    #@58
    if-ne v0, v4, :cond_2

    #@5a
    .line 12920
    move-object/from16 v0, v23

    #@5c
    iget v0, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    #@5e
    move/from16 v18, v0

    #@60
    .line 12921
    .local v18, "loc":I
    const/4 v4, -0x3

    #@61
    move/from16 v0, v18

    #@63
    if-ne v0, v4, :cond_11

    #@65
    .line 12922
    const/16 v27, -0x13

    #@67
    .line 12961
    .end local v18    # "loc":I
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    #@69
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@6b
    move-object/from16 v0, p0

    #@6d
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->-wrap8(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@70
    move-result-object v14

    #@71
    .line 12962
    .local v14, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, p0

    #@73
    iput-object v14, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@75
    .line 12964
    const/4 v4, 0x1

    #@76
    move/from16 v0, v27

    #@78
    if-ne v0, v4, :cond_9

    #@7a
    .line 12967
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    #@7d
    move-result-object v6

    #@7e
    .line 12968
    .local v6, "verifierUser":Landroid/os/UserHandle;
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@80
    if-ne v6, v4, :cond_3

    #@82
    .line 12969
    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@84
    .line 12976
    :cond_3
    move-object/from16 v0, p0

    #@86
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@88
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    #@8a
    if-nez v4, :cond_1a

    #@8c
    const/16 v25, -0x1

    #@8e
    .line 12979
    .local v25, "requiredUid":I
    :goto_6
    move-object/from16 v0, p0

    #@90
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@92
    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->existing:Z

    #@94
    if-nez v4, :cond_1c

    #@96
    const/4 v4, -0x1

    #@97
    move/from16 v0, v25

    #@99
    if-eq v0, v4, :cond_1c

    #@9b
    .line 12980
    move-object/from16 v0, p0

    #@9d
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@9f
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    #@a2
    move-result v7

    #@a3
    move-object/from16 v0, p0

    #@a5
    iget v8, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@a7
    invoke-static {v4, v7, v8}, Lcom/android/server/pm/PackageManagerService;->-wrap6(Lcom/android/server/pm/PackageManagerService;II)Z

    #@aa
    move-result v4

    #@ab
    .line 12979
    if-eqz v4, :cond_1c

    #@ad
    .line 12981
    new-instance v5, Landroid/content/Intent;

    #@af
    .line 12982
    const-string/jumbo v4, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    #@b2
    .line 12981
    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@b5
    .line 12983
    .local v5, "verification":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    #@b7
    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@ba
    .line 12984
    new-instance v4, Ljava/io/File;

    #@bc
    move-object/from16 v0, p0

    #@be
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@c0
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    #@c2
    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@c5
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    #@c8
    move-result-object v4

    #@c9
    .line 12985
    const-string/jumbo v7, "application/vnd.android.package-archive"

    #@cc
    .line 12984
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    #@cf
    .line 12986
    const/4 v4, 0x1

    #@d0
    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d3
    .line 12989
    move-object/from16 v0, p0

    #@d5
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@d7
    .line 12990
    const-string/jumbo v7, "application/vnd.android.package-archive"

    #@da
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    #@dd
    move-result v8

    #@de
    const/4 v9, 0x0

    #@df
    .line 12989
    invoke-static {v4, v5, v7, v9, v8}, Lcom/android/server/pm/PackageManagerService;->-wrap16(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    #@e2
    move-result-object v24

    #@e3
    .line 12998
    .local v24, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    #@e5
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@e7
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get8(Lcom/android/server/pm/PackageManagerService;)I

    #@ea
    move-result v33

    #@eb
    add-int/lit8 v7, v33, 0x1

    #@ed
    invoke-static {v4, v7}, Lcom/android/server/pm/PackageManagerService;->-set2(Lcom/android/server/pm/PackageManagerService;I)I

    #@f0
    .line 13000
    .local v33, "verificationId":I
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_ID"

    #@f3
    move/from16 v0, v33

    #@f5
    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@f8
    .line 13002
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    #@fb
    .line 13003
    move-object/from16 v0, p0

    #@fd
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    #@ff
    .line 13002
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@102
    .line 13005
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    #@105
    .line 13006
    move-object/from16 v0, p0

    #@107
    iget v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@109
    .line 13005
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@10c
    .line 13008
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    #@10f
    .line 13009
    move-object/from16 v0, v23

    #@111
    iget-object v7, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    #@113
    .line 13008
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@116
    .line 13011
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    #@119
    .line 13012
    move-object/from16 v0, v23

    #@11b
    iget v7, v0, Landroid/content/pm/PackageInfoLite;->versionCode:I

    #@11d
    .line 13011
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@120
    .line 13014
    move-object/from16 v0, p0

    #@122
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    #@124
    if-eqz v4, :cond_7

    #@126
    .line 13015
    move-object/from16 v0, p0

    #@128
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    #@12a
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    #@12c
    if-eqz v4, :cond_4

    #@12e
    .line 13016
    const-string/jumbo v4, "android.intent.extra.ORIGINATING_URI"

    #@131
    .line 13017
    move-object/from16 v0, p0

    #@133
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    #@135
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    #@137
    .line 13016
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@13a
    .line 13019
    :cond_4
    move-object/from16 v0, p0

    #@13c
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    #@13e
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    #@140
    if-eqz v4, :cond_5

    #@142
    .line 13020
    const-string/jumbo v4, "android.intent.extra.REFERRER"

    #@145
    .line 13021
    move-object/from16 v0, p0

    #@147
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    #@149
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    #@14b
    .line 13020
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@14e
    .line 13023
    :cond_5
    move-object/from16 v0, p0

    #@150
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    #@152
    iget v4, v4, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    #@154
    if-ltz v4, :cond_6

    #@156
    .line 13024
    const-string/jumbo v4, "android.intent.extra.ORIGINATING_UID"

    #@159
    .line 13025
    move-object/from16 v0, p0

    #@15b
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    #@15d
    iget v7, v7, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    #@15f
    .line 13024
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@162
    .line 13027
    :cond_6
    move-object/from16 v0, p0

    #@164
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    #@166
    iget v4, v4, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    #@168
    if-ltz v4, :cond_7

    #@16a
    .line 13028
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    #@16d
    .line 13029
    move-object/from16 v0, p0

    #@16f
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    #@171
    iget v7, v7, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    #@173
    .line 13028
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@176
    .line 13033
    :cond_7
    new-instance v34, Lcom/android/server/pm/PackageVerificationState;

    #@178
    move-object/from16 v0, v34

    #@17a
    move/from16 v1, v25

    #@17c
    invoke-direct {v0, v1, v14}, Lcom/android/server/pm/PackageVerificationState;-><init>(ILcom/android/server/pm/PackageManagerService$InstallArgs;)V

    #@17f
    .line 13036
    .local v34, "verificationState":Lcom/android/server/pm/PackageVerificationState;
    move-object/from16 v0, p0

    #@181
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@183
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    #@185
    move/from16 v0, v33

    #@187
    move-object/from16 v1, v34

    #@189
    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@18c
    .line 13038
    move-object/from16 v0, p0

    #@18e
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@190
    move-object/from16 v0, v23

    #@192
    move-object/from16 v1, v24

    #@194
    move-object/from16 v2, v34

    #@196
    invoke-static {v4, v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->-wrap15(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;

    #@199
    move-result-object v32

    #@19a
    .line 13045
    .local v32, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v32, :cond_8

    #@19c
    .line 13046
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    #@19f
    move-result v13

    #@1a0
    .line 13047
    .local v13, "N":I
    if-nez v13, :cond_1b

    #@1a2
    .line 13048
    const-string/jumbo v4, "PackageManager"

    #@1a5
    const-string/jumbo v7, "Additional verifiers required, but none installed."

    #@1a8
    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1ab
    .line 13049
    const/16 v27, -0x16

    #@1ad
    .line 13061
    .end local v13    # "N":I
    :cond_8
    move-object/from16 v0, p0

    #@1af
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@1b1
    .line 13062
    move-object/from16 v0, p0

    #@1b3
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@1b5
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    #@1b7
    .line 13061
    move-object/from16 v0, v24

    #@1b9
    invoke-static {v4, v7, v0}, Lcom/android/server/pm/PackageManagerService;->-wrap0(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    #@1bc
    move-result-object v26

    #@1bd
    .line 13063
    .local v26, "requiredVerifierComponent":Landroid/content/ComponentName;
    const/4 v4, 0x1

    #@1be
    move/from16 v0, v27

    #@1c0
    if-ne v0, v4, :cond_9

    #@1c2
    .line 13064
    move-object/from16 v0, p0

    #@1c4
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@1c6
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    #@1c8
    if-eqz v4, :cond_9

    #@1ca
    .line 13066
    const-string/jumbo v4, "verification"

    #@1cd
    const-wide/32 v8, 0x40000

    #@1d0
    .line 13065
    move/from16 v0, v33

    #@1d2
    invoke-static {v8, v9, v4, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    #@1d5
    .line 13072
    move-object/from16 v0, v26

    #@1d7
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@1da
    .line 13073
    move-object/from16 v0, p0

    #@1dc
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@1de
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    #@1e0
    .line 13074
    const-string/jumbo v7, "android.permission.PACKAGE_VERIFICATION_AGENT"

    #@1e3
    .line 13075
    new-instance v8, Lcom/android/server/pm/PackageManagerService$InstallParams$1;

    #@1e5
    move-object/from16 v0, p0

    #@1e7
    move/from16 v1, v33

    #@1e9
    invoke-direct {v8, v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallParams$1;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V

    #@1ec
    .line 13083
    const/4 v9, 0x0

    #@1ed
    const/4 v10, 0x0

    #@1ee
    const/4 v11, 0x0

    #@1ef
    const/4 v12, 0x0

    #@1f0
    .line 13073
    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@1f3
    .line 13089
    const/4 v4, 0x0

    #@1f4
    move-object/from16 v0, p0

    #@1f6
    iput-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@1f8
    .line 13100
    .end local v5    # "verification":Landroid/content/Intent;
    .end local v6    # "verifierUser":Landroid/os/UserHandle;
    .end local v24    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v25    # "requiredUid":I
    .end local v26    # "requiredVerifierComponent":Landroid/content/ComponentName;
    .end local v32    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v33    # "verificationId":I
    .end local v34    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    :cond_9
    :goto_7
    move/from16 v0, v27

    #@1fa
    move-object/from16 v1, p0

    #@1fc
    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    #@1fe
    .line 12846
    return-void

    #@1ff
    .line 12854
    .end local v14    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v16    # "ephemeral":Z
    .end local v19    # "onInt":Z
    .end local v22    # "onSd":Z
    :cond_a
    move-object/from16 v0, p0

    #@201
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@203
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    #@205
    if-eqz v4, :cond_b

    #@207
    .line 12855
    move-object/from16 v0, p0

    #@209
    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@20b
    or-int/lit8 v4, v4, 0x8

    #@20d
    move-object/from16 v0, p0

    #@20f
    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@211
    .line 12856
    move-object/from16 v0, p0

    #@213
    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@215
    and-int/lit8 v4, v4, -0x11

    #@217
    move-object/from16 v0, p0

    #@219
    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@21b
    goto/16 :goto_0

    #@21d
    .line 12858
    :cond_b
    new-instance v4, Ljava/lang/IllegalStateException;

    #@21f
    const-string/jumbo v7, "Invalid stage location"

    #@222
    invoke-direct {v4, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@225
    throw v4

    #@226
    .line 12862
    :cond_c
    const/16 v22, 0x0

    #@228
    .restart local v22    # "onSd":Z
    goto/16 :goto_1

    #@22a
    .line 12863
    :cond_d
    const/16 v19, 0x0

    #@22c
    .restart local v19    # "onInt":Z
    goto/16 :goto_2

    #@22e
    .line 12864
    :cond_e
    const/16 v16, 0x0

    #@230
    .restart local v16    # "ephemeral":Z
    goto/16 :goto_3

    #@232
    .line 12871
    .restart local v23    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :cond_f
    if-eqz v22, :cond_10

    #@234
    if-eqz v16, :cond_10

    #@236
    .line 12872
    const-string/jumbo v4, "PackageManager"

    #@239
    const-string/jumbo v7, "Conflicting flags specified for installing ephemeral on external"

    #@23c
    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@23f
    .line 12873
    const/16 v27, -0x13

    #@241
    goto/16 :goto_4

    #@243
    .line 12875
    :cond_10
    move-object/from16 v0, p0

    #@245
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@247
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get1(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    #@24a
    move-result-object v4

    #@24b
    move-object/from16 v0, p0

    #@24d
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@24f
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    #@251
    move-object/from16 v0, p0

    #@253
    iget v8, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@255
    .line 12876
    move-object/from16 v0, p0

    #@257
    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    #@259
    .line 12875
    invoke-interface {v4, v7, v8, v9}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    #@25c
    move-result-object v23

    #@25d
    .line 12886
    .local v23, "pkgLite":Landroid/content/pm/PackageInfoLite;
    move-object/from16 v0, p0

    #@25f
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@261
    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    #@263
    if-nez v4, :cond_1

    #@265
    move-object/from16 v0, v23

    #@267
    iget v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    #@269
    .line 12887
    const/4 v7, -0x1

    #@26a
    .line 12886
    if-ne v4, v7, :cond_1

    #@26c
    .line 12889
    move-object/from16 v0, p0

    #@26e
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@270
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    #@272
    invoke-static {v4}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    #@275
    move-result-object v30

    #@276
    .line 12891
    .local v30, "storage":Landroid/os/storage/StorageManager;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@279
    move-result-object v4

    #@27a
    .line 12890
    move-object/from16 v0, v30

    #@27c
    invoke-virtual {v0, v4}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    #@27f
    move-result-wide v20

    #@280
    .line 12893
    .local v20, "lowThreshold":J
    move-object/from16 v0, p0

    #@282
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@284
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get1(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    #@287
    move-result-object v4

    #@288
    .line 12894
    move-object/from16 v0, p0

    #@28a
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@28c
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    #@28e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->isForwardLocked()Z

    #@291
    move-result v8

    #@292
    move-object/from16 v0, p0

    #@294
    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    #@296
    .line 12893
    invoke-interface {v4, v7, v8, v9}, Lcom/android/internal/app/IMediaContainerService;->calculateInstalledSize(Ljava/lang/String;ZLjava/lang/String;)J

    #@299
    move-result-wide v28

    #@29a
    .line 12897
    .local v28, "sizeBytes":J
    :try_start_0
    move-object/from16 v0, p0

    #@29c
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@29e
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    #@2a0
    add-long v8, v28, v20

    #@2a2
    const/4 v7, 0x0

    #@2a3
    invoke-virtual {v4, v7, v8, v9}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;J)V

    #@2a6
    .line 12898
    move-object/from16 v0, p0

    #@2a8
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2aa
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get1(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    #@2ad
    move-result-object v4

    #@2ae
    move-object/from16 v0, p0

    #@2b0
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@2b2
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    #@2b4
    .line 12899
    move-object/from16 v0, p0

    #@2b6
    iget v8, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@2b8
    move-object/from16 v0, p0

    #@2ba
    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    #@2bc
    .line 12898
    invoke-interface {v4, v7, v8, v9}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;
    :try_end_0
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    #@2bf
    move-result-object v23

    #@2c0
    .line 12911
    :goto_8
    move-object/from16 v0, v23

    #@2c2
    iget v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    #@2c4
    .line 12912
    const/4 v7, -0x6

    #@2c5
    .line 12911
    if-ne v4, v7, :cond_1

    #@2c7
    .line 12914
    const/4 v4, -0x1

    #@2c8
    .line 12913
    move-object/from16 v0, v23

    #@2ca
    iput v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    #@2cc
    goto/16 :goto_4

    #@2ce
    .line 12900
    :catch_0
    move-exception v15

    #@2cf
    .line 12901
    .local v15, "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    const-string/jumbo v4, "PackageManager"

    #@2d2
    const-string/jumbo v7, "Failed to free cache"

    #@2d5
    invoke-static {v4, v7, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2d8
    goto :goto_8

    #@2d9
    .line 12923
    .end local v15    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    .end local v20    # "lowThreshold":J
    .end local v23    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v28    # "sizeBytes":J
    .end local v30    # "storage":Landroid/os/storage/StorageManager;
    .restart local v18    # "loc":I
    :cond_11
    const/4 v4, -0x4

    #@2da
    move/from16 v0, v18

    #@2dc
    if-ne v0, v4, :cond_12

    #@2de
    .line 12924
    const/16 v27, -0x1

    #@2e0
    goto/16 :goto_5

    #@2e2
    .line 12925
    :cond_12
    const/4 v4, -0x1

    #@2e3
    move/from16 v0, v18

    #@2e5
    if-ne v0, v4, :cond_13

    #@2e7
    .line 12926
    const/16 v27, -0x4

    #@2e9
    goto/16 :goto_5

    #@2eb
    .line 12927
    :cond_13
    const/4 v4, -0x2

    #@2ec
    move/from16 v0, v18

    #@2ee
    if-ne v0, v4, :cond_14

    #@2f0
    .line 12928
    const/16 v27, -0x2

    #@2f2
    goto/16 :goto_5

    #@2f4
    .line 12929
    :cond_14
    const/4 v4, -0x6

    #@2f5
    move/from16 v0, v18

    #@2f7
    if-ne v0, v4, :cond_15

    #@2f9
    .line 12930
    const/16 v27, -0x3

    #@2fb
    goto/16 :goto_5

    #@2fd
    .line 12931
    :cond_15
    const/4 v4, -0x5

    #@2fe
    move/from16 v0, v18

    #@300
    if-ne v0, v4, :cond_16

    #@302
    .line 12932
    const/16 v27, -0x14

    #@304
    goto/16 :goto_5

    #@306
    .line 12935
    :cond_16
    move-object/from16 v0, p0

    #@308
    move-object/from16 v1, v23

    #@30a
    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallParams;->installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I

    #@30d
    move-result v18

    #@30e
    .line 12936
    const/4 v4, -0x7

    #@30f
    move/from16 v0, v18

    #@311
    if-ne v0, v4, :cond_17

    #@313
    .line 12937
    const/16 v27, -0x19

    #@315
    goto/16 :goto_5

    #@317
    .line 12938
    :cond_17
    if-nez v22, :cond_2

    #@319
    if-nez v19, :cond_2

    #@31b
    .line 12940
    const/4 v4, 0x2

    #@31c
    move/from16 v0, v18

    #@31e
    if-ne v0, v4, :cond_18

    #@320
    .line 12942
    move-object/from16 v0, p0

    #@322
    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@324
    or-int/lit8 v4, v4, 0x8

    #@326
    move-object/from16 v0, p0

    #@328
    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@32a
    .line 12943
    move-object/from16 v0, p0

    #@32c
    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@32e
    and-int/lit8 v4, v4, -0x11

    #@330
    move-object/from16 v0, p0

    #@332
    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@334
    goto/16 :goto_5

    #@336
    .line 12944
    :cond_18
    const/4 v4, 0x3

    #@337
    move/from16 v0, v18

    #@339
    if-ne v0, v4, :cond_19

    #@33b
    .line 12948
    move-object/from16 v0, p0

    #@33d
    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@33f
    or-int/lit16 v4, v4, 0x800

    #@341
    move-object/from16 v0, p0

    #@343
    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@345
    .line 12949
    move-object/from16 v0, p0

    #@347
    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@349
    and-int/lit8 v4, v4, -0x19

    #@34b
    move-object/from16 v0, p0

    #@34d
    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@34f
    goto/16 :goto_5

    #@351
    .line 12954
    :cond_19
    move-object/from16 v0, p0

    #@353
    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@355
    or-int/lit8 v4, v4, 0x10

    #@357
    move-object/from16 v0, p0

    #@359
    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@35b
    .line 12955
    move-object/from16 v0, p0

    #@35d
    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@35f
    and-int/lit8 v4, v4, -0x9

    #@361
    move-object/from16 v0, p0

    #@363
    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@365
    goto/16 :goto_5

    #@367
    .line 12977
    .end local v18    # "loc":I
    .restart local v6    # "verifierUser":Landroid/os/UserHandle;
    .restart local v14    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    :cond_1a
    move-object/from16 v0, p0

    #@369
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@36b
    move-object/from16 v0, p0

    #@36d
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@36f
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    #@371
    .line 12978
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    #@374
    move-result v8

    #@375
    .line 12977
    const/high16 v9, 0x10000000

    #@377
    invoke-virtual {v4, v7, v9, v8}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    #@37a
    move-result v25

    #@37b
    .restart local v25    # "requiredUid":I
    goto/16 :goto_6

    #@37d
    .line 13051
    .restart local v5    # "verification":Landroid/content/Intent;
    .restart local v13    # "N":I
    .restart local v24    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v32    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v33    # "verificationId":I
    .restart local v34    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    :cond_1b
    const/16 v17, 0x0

    #@37f
    .local v17, "i":I
    :goto_9
    move/from16 v0, v17

    #@381
    if-ge v0, v13, :cond_8

    #@383
    .line 13052
    move-object/from16 v0, v32

    #@385
    move/from16 v1, v17

    #@387
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@38a
    move-result-object v35

    #@38b
    check-cast v35, Landroid/content/ComponentName;

    #@38d
    .line 13054
    .local v35, "verifierComponent":Landroid/content/ComponentName;
    new-instance v31, Landroid/content/Intent;

    #@38f
    move-object/from16 v0, v31

    #@391
    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@394
    .line 13055
    .local v31, "sufficientIntent":Landroid/content/Intent;
    move-object/from16 v0, v31

    #@396
    move-object/from16 v1, v35

    #@398
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@39b
    .line 13056
    move-object/from16 v0, p0

    #@39d
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@39f
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    #@3a1
    move-object/from16 v0, v31

    #@3a3
    invoke-virtual {v4, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@3a6
    .line 13051
    add-int/lit8 v17, v17, 0x1

    #@3a8
    goto :goto_9

    #@3a9
    .line 13096
    .end local v5    # "verification":Landroid/content/Intent;
    .end local v13    # "N":I
    .end local v17    # "i":I
    .end local v24    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v31    # "sufficientIntent":Landroid/content/Intent;
    .end local v32    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v33    # "verificationId":I
    .end local v34    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .end local v35    # "verifierComponent":Landroid/content/ComponentName;
    :cond_1c
    move-object/from16 v0, p0

    #@3ab
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@3ad
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get1(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    #@3b0
    move-result-object v4

    #@3b1
    const/4 v7, 0x1

    #@3b2
    invoke-virtual {v14, v4, v7}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    #@3b5
    move-result v27

    #@3b6
    goto/16 :goto_7
.end method

.method public isForwardLocked()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 13120
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
    .line 12742
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
    .line 12743
    const-string/jumbo v1, " file="

    #@1b
    .line 12742
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 12743
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@21
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    #@23
    .line 12742
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 12743
    const-string/jumbo v1, " cid="

    #@2a
    .line 12742
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 12743
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@30
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    #@32
    .line 12742
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 12743
    const-string/jumbo v1, "}"

    #@39
    .line 12742
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
