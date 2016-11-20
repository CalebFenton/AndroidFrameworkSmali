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
    .line 12782
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    .line 12786
    invoke-direct {p0, p1, p9}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    #@5
    .line 12787
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@7
    .line 12788
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    #@9
    .line 12789
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    #@b
    .line 12790
    iput p5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@d
    .line 12791
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    #@f
    .line 12792
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    #@11
    .line 12793
    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    #@13
    .line 12794
    iput-object p10, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    #@15
    .line 12795
    iput-object p11, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    #@17
    .line 12796
    iput-object p12, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->certificates:[[Ljava/security/cert/Certificate;

    #@19
    .line 12785
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
    .line 12806
    iget-object v8, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    #@5
    .line 12807
    .local v8, "packageName":Ljava/lang/String;
    iget v4, p1, Landroid/content/pm/PackageInfoLite;->installLocation:I

    #@7
    .line 12808
    .local v4, "installLocation":I
    iget v11, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@9
    and-int/lit8 v11, v11, 0x8

    #@b
    if-eqz v11, :cond_3

    #@d
    const/4 v6, 0x1

    #@e
    .line 12810
    .local v6, "onSd":Z
    :goto_0
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@10
    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@12
    monitor-enter v11

    #@13
    .line 12813
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
    .line 12818
    .local v5, "installedPkg":Landroid/content/pm/PackageParser$Package;
    move-object v0, v5

    #@1e
    .line 12819
    .local v0, "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    if-nez v5, :cond_0

    #@20
    .line 12820
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
    .line 12821
    .local v9, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v9, :cond_0

    #@2e
    .line 12822
    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@30
    .line 12826
    .end local v9    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_0
    if-eqz v0, :cond_2

    #@32
    .line 12841
    iget v12, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@34
    and-int/lit16 v12, v12, 0x80

    #@36
    if-eqz v12, :cond_4

    #@38
    const/4 v2, 0x1

    #@39
    .line 12843
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
    .line 12846
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
    .line 12847
    .local v1, "downgradePermitted":Z
    :cond_1
    :goto_3
    if-nez v1, :cond_2

    #@4b
    .line 12849
    :try_start_1
    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerService;->-wrap20(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageInfoLite;)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    .line 12857
    .end local v1    # "downgradePermitted":Z
    .end local v2    # "downgradeRequested":Z
    .end local v7    # "packageDebuggable":Z
    :cond_2
    if-eqz v5, :cond_b

    #@50
    .line 12858
    :try_start_2
    iget v12, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@52
    and-int/lit8 v12, v12, 0x2

    #@54
    if-eqz v12, :cond_e

    #@56
    .line 12860
    iget-object v12, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@58
    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    #@5a
    and-int/lit8 v12, v12, 0x1

    #@5c
    if-eqz v12, :cond_8

    #@5e
    .line 12861
    if-eqz v6, :cond_7

    #@60
    .line 12862
    const-string/jumbo v10, "PackageManager"

    #@63
    const-string/jumbo v12, "Cannot install update to system app on sdcard"

    #@66
    invoke-static {v10, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@69
    .line 12863
    const/4 v10, -0x3

    #@6a
    monitor-exit v11

    #@6b
    return v10

    #@6c
    .line 12808
    .end local v0    # "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    .end local v5    # "installedPkg":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "onSd":Z
    :cond_3
    const/4 v6, 0x0

    #@6d
    .restart local v6    # "onSd":Z
    goto :goto_0

    #@6e
    .line 12841
    .restart local v0    # "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v5    # "installedPkg":Landroid/content/pm/PackageParser$Package;
    :cond_4
    const/4 v2, 0x0

    #@6f
    .restart local v2    # "downgradeRequested":Z
    goto :goto_1

    #@70
    .line 12843
    :cond_5
    const/4 v7, 0x0

    #@71
    .restart local v7    # "packageDebuggable":Z
    goto :goto_2

    #@72
    :cond_6
    move v1, v10

    #@73
    .line 12846
    goto :goto_3

    #@74
    .line 12850
    .restart local v1    # "downgradePermitted":Z
    :catch_0
    move-exception v3

    #@75
    .line 12851
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
    .line 12852
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
    .line 12865
    return v10

    #@98
    .line 12867
    :cond_8
    if-eqz v6, :cond_9

    #@9a
    monitor-exit v11

    #@9b
    .line 12869
    return v13

    #@9c
    .line 12872
    :cond_9
    if-ne v4, v10, :cond_a

    #@9e
    monitor-exit v11

    #@9f
    .line 12874
    return v10

    #@a0
    .line 12875
    :cond_a
    if-ne v4, v13, :cond_c

    #@a2
    :cond_b
    monitor-exit v11

    #@a3
    .line 12893
    if-eqz v6, :cond_f

    #@a5
    .line 12894
    return v13

    #@a6
    .line 12879
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
    .line 12880
    return v13

    #@ae
    :cond_d
    monitor-exit v11

    #@af
    .line 12882
    return v10

    #@b0
    .line 12887
    :cond_e
    const/4 v10, -0x4

    #@b1
    monitor-exit v11

    #@b2
    return v10

    #@b3
    .line 12810
    .end local v0    # "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    .end local v5    # "installedPkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v10

    #@b4
    monitor-exit v11

    #@b5
    throw v10

    #@b6
    .line 12896
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
    .line 13167
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 13168
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@6
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@8
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    #@a
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->-wrap32(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    #@d
    .line 13163
    :cond_0
    return-void
.end method

.method handleServiceError()V
    .locals 1

    #@0
    .prologue
    .line 13174
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerService;->-wrap8(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@8
    .line 13175
    const/16 v0, -0x6e

    #@a
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    #@c
    .line 13173
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
    .line 12906
    const/16 v27, 0x1

    #@2
    .line 12909
    .local v27, "ret":I
    move-object/from16 v0, p0

    #@4
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@6
    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    #@8
    if-eqz v4, :cond_0

    #@a
    .line 12910
    move-object/from16 v0, p0

    #@c
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@e
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    #@10
    if-eqz v4, :cond_a

    #@12
    .line 12911
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
    .line 12912
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
    .line 12921
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
    .line 12922
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
    .line 12923
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
    .line 12924
    .local v16, "ephemeral":Z
    :goto_3
    const/16 v23, 0x0

    #@46
    .line 12926
    .local v23, "pkgLite":Landroid/content/pm/PackageInfoLite;
    if-eqz v19, :cond_f

    #@48
    if-eqz v22, :cond_f

    #@4a
    .line 12928
    const-string/jumbo v4, "PackageManager"

    #@4d
    const-string/jumbo v7, "Conflicting flags specified for installing on both internal and external"

    #@50
    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    .line 12929
    const/16 v27, -0x13

    #@55
    .line 12978
    .end local v23    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :cond_1
    :goto_4
    const/4 v4, 0x1

    #@56
    move/from16 v0, v27

    #@58
    if-ne v0, v4, :cond_2

    #@5a
    .line 12979
    move-object/from16 v0, v23

    #@5c
    iget v0, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    #@5e
    move/from16 v18, v0

    #@60
    .line 12980
    .local v18, "loc":I
    const/4 v4, -0x3

    #@61
    move/from16 v0, v18

    #@63
    if-ne v0, v4, :cond_12

    #@65
    .line 12981
    const/16 v27, -0x13

    #@67
    .line 13020
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
    .line 13021
    .local v14, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, p0

    #@73
    iput-object v14, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@75
    .line 13023
    const/4 v4, 0x1

    #@76
    move/from16 v0, v27

    #@78
    if-ne v0, v4, :cond_9

    #@7a
    .line 13026
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    #@7d
    move-result-object v6

    #@7e
    .line 13027
    .local v6, "verifierUser":Landroid/os/UserHandle;
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@80
    if-ne v6, v4, :cond_3

    #@82
    .line 13028
    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@84
    .line 13035
    :cond_3
    move-object/from16 v0, p0

    #@86
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@88
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    #@8a
    if-nez v4, :cond_1c

    #@8c
    const/16 v25, -0x1

    #@8e
    .line 13038
    .local v25, "requiredUid":I
    :goto_6
    move-object/from16 v0, p0

    #@90
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@92
    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->existing:Z

    #@94
    if-nez v4, :cond_1e

    #@96
    const/4 v4, -0x1

    #@97
    move/from16 v0, v25

    #@99
    if-eq v0, v4, :cond_1e

    #@9b
    .line 13039
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
    .line 13038
    if-eqz v4, :cond_1e

    #@ad
    .line 13040
    new-instance v5, Landroid/content/Intent;

    #@af
    .line 13041
    const-string/jumbo v4, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    #@b2
    .line 13040
    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@b5
    .line 13042
    .local v5, "verification":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    #@b7
    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@ba
    .line 13043
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
    .line 13044
    const-string/jumbo v7, "application/vnd.android.package-archive"

    #@cc
    .line 13043
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    #@cf
    .line 13045
    const/4 v4, 0x1

    #@d0
    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d3
    .line 13048
    move-object/from16 v0, p0

    #@d5
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@d7
    .line 13049
    const-string/jumbo v7, "application/vnd.android.package-archive"

    #@da
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    #@dd
    move-result v8

    #@de
    const/4 v9, 0x0

    #@df
    .line 13048
    invoke-static {v4, v5, v7, v9, v8}, Lcom/android/server/pm/PackageManagerService;->-wrap16(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    #@e2
    move-result-object v24

    #@e3
    .line 13057
    .local v24, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    #@e5
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@e7
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get9(Lcom/android/server/pm/PackageManagerService;)I

    #@ea
    move-result v33

    #@eb
    add-int/lit8 v7, v33, 0x1

    #@ed
    invoke-static {v4, v7}, Lcom/android/server/pm/PackageManagerService;->-set2(Lcom/android/server/pm/PackageManagerService;I)I

    #@f0
    .line 13059
    .local v33, "verificationId":I
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_ID"

    #@f3
    move/from16 v0, v33

    #@f5
    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@f8
    .line 13061
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    #@fb
    .line 13062
    move-object/from16 v0, p0

    #@fd
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    #@ff
    .line 13061
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@102
    .line 13064
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    #@105
    .line 13065
    move-object/from16 v0, p0

    #@107
    iget v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@109
    .line 13064
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@10c
    .line 13067
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    #@10f
    .line 13068
    move-object/from16 v0, v23

    #@111
    iget-object v7, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    #@113
    .line 13067
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@116
    .line 13070
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    #@119
    .line 13071
    move-object/from16 v0, v23

    #@11b
    iget v7, v0, Landroid/content/pm/PackageInfoLite;->versionCode:I

    #@11d
    .line 13070
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@120
    .line 13073
    move-object/from16 v0, p0

    #@122
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    #@124
    if-eqz v4, :cond_7

    #@126
    .line 13074
    move-object/from16 v0, p0

    #@128
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    #@12a
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    #@12c
    if-eqz v4, :cond_4

    #@12e
    .line 13075
    const-string/jumbo v4, "android.intent.extra.ORIGINATING_URI"

    #@131
    .line 13076
    move-object/from16 v0, p0

    #@133
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    #@135
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    #@137
    .line 13075
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@13a
    .line 13078
    :cond_4
    move-object/from16 v0, p0

    #@13c
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    #@13e
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    #@140
    if-eqz v4, :cond_5

    #@142
    .line 13079
    const-string/jumbo v4, "android.intent.extra.REFERRER"

    #@145
    .line 13080
    move-object/from16 v0, p0

    #@147
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    #@149
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    #@14b
    .line 13079
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@14e
    .line 13082
    :cond_5
    move-object/from16 v0, p0

    #@150
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    #@152
    iget v4, v4, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    #@154
    if-ltz v4, :cond_6

    #@156
    .line 13083
    const-string/jumbo v4, "android.intent.extra.ORIGINATING_UID"

    #@159
    .line 13084
    move-object/from16 v0, p0

    #@15b
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    #@15d
    iget v7, v7, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    #@15f
    .line 13083
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@162
    .line 13086
    :cond_6
    move-object/from16 v0, p0

    #@164
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    #@166
    iget v4, v4, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    #@168
    if-ltz v4, :cond_7

    #@16a
    .line 13087
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    #@16d
    .line 13088
    move-object/from16 v0, p0

    #@16f
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    #@171
    iget v7, v7, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    #@173
    .line 13087
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@176
    .line 13092
    :cond_7
    new-instance v34, Lcom/android/server/pm/PackageVerificationState;

    #@178
    move-object/from16 v0, v34

    #@17a
    move/from16 v1, v25

    #@17c
    invoke-direct {v0, v1, v14}, Lcom/android/server/pm/PackageVerificationState;-><init>(ILcom/android/server/pm/PackageManagerService$InstallArgs;)V

    #@17f
    .line 13095
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
    .line 13097
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
    .line 13104
    .local v32, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v32, :cond_8

    #@19c
    .line 13105
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    #@19f
    move-result v13

    #@1a0
    .line 13106
    .local v13, "N":I
    if-nez v13, :cond_1d

    #@1a2
    .line 13107
    const-string/jumbo v4, "PackageManager"

    #@1a5
    const-string/jumbo v7, "Additional verifiers required, but none installed."

    #@1a8
    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1ab
    .line 13108
    const/16 v27, -0x16

    #@1ad
    .line 13120
    .end local v13    # "N":I
    :cond_8
    move-object/from16 v0, p0

    #@1af
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@1b1
    .line 13121
    move-object/from16 v0, p0

    #@1b3
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@1b5
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    #@1b7
    .line 13120
    move-object/from16 v0, v24

    #@1b9
    invoke-static {v4, v7, v0}, Lcom/android/server/pm/PackageManagerService;->-wrap0(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    #@1bc
    move-result-object v26

    #@1bd
    .line 13122
    .local v26, "requiredVerifierComponent":Landroid/content/ComponentName;
    const/4 v4, 0x1

    #@1be
    move/from16 v0, v27

    #@1c0
    if-ne v0, v4, :cond_9

    #@1c2
    .line 13123
    move-object/from16 v0, p0

    #@1c4
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@1c6
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    #@1c8
    if-eqz v4, :cond_9

    #@1ca
    .line 13125
    const-string/jumbo v4, "verification"

    #@1cd
    const-wide/32 v8, 0x40000

    #@1d0
    .line 13124
    move/from16 v0, v33

    #@1d2
    invoke-static {v8, v9, v4, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    #@1d5
    .line 13131
    move-object/from16 v0, v26

    #@1d7
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@1da
    .line 13132
    move-object/from16 v0, p0

    #@1dc
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@1de
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    #@1e0
    .line 13133
    const-string/jumbo v7, "android.permission.PACKAGE_VERIFICATION_AGENT"

    #@1e3
    .line 13134
    new-instance v8, Lcom/android/server/pm/PackageManagerService$InstallParams$1;

    #@1e5
    move-object/from16 v0, p0

    #@1e7
    move/from16 v1, v33

    #@1e9
    invoke-direct {v8, v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallParams$1;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V

    #@1ec
    .line 13142
    const/4 v9, 0x0

    #@1ed
    const/4 v10, 0x0

    #@1ee
    const/4 v11, 0x0

    #@1ef
    const/4 v12, 0x0

    #@1f0
    .line 13132
    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@1f3
    .line 13148
    const/4 v4, 0x0

    #@1f4
    move-object/from16 v0, p0

    #@1f6
    iput-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@1f8
    .line 13159
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
    .line 12905
    return-void

    #@1ff
    .line 12913
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
    .line 12914
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
    .line 12915
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
    .line 12917
    :cond_b
    new-instance v4, Ljava/lang/IllegalStateException;

    #@21f
    const-string/jumbo v7, "Invalid stage location"

    #@222
    invoke-direct {v4, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@225
    throw v4

    #@226
    .line 12921
    :cond_c
    const/16 v22, 0x0

    #@228
    .restart local v22    # "onSd":Z
    goto/16 :goto_1

    #@22a
    .line 12922
    :cond_d
    const/16 v19, 0x0

    #@22c
    .restart local v19    # "onInt":Z
    goto/16 :goto_2

    #@22e
    .line 12923
    :cond_e
    const/16 v16, 0x0

    #@230
    .restart local v16    # "ephemeral":Z
    goto/16 :goto_3

    #@232
    .line 12930
    .restart local v23    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :cond_f
    if-eqz v22, :cond_10

    #@234
    if-eqz v16, :cond_10

    #@236
    .line 12931
    const-string/jumbo v4, "PackageManager"

    #@239
    const-string/jumbo v7, "Conflicting flags specified for installing ephemeral on external"

    #@23c
    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@23f
    .line 12932
    const/16 v27, -0x13

    #@241
    goto/16 :goto_4

    #@243
    .line 12934
    :cond_10
    move-object/from16 v0, p0

    #@245
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@247
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get2(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

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
    .line 12935
    move-object/from16 v0, p0

    #@257
    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    #@259
    .line 12934
    invoke-interface {v4, v7, v8, v9}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    #@25c
    move-result-object v23

    #@25d
    .line 12937
    .local v23, "pkgLite":Landroid/content/pm/PackageInfoLite;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get0()Z

    #@260
    move-result v4

    #@261
    if-eqz v4, :cond_11

    #@263
    if-eqz v16, :cond_11

    #@265
    .line 12938
    const-string/jumbo v4, "PackageManager"

    #@268
    new-instance v7, Ljava/lang/StringBuilder;

    #@26a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@26d
    const-string/jumbo v8, "pkgLite for install: "

    #@270
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@273
    move-result-object v7

    #@274
    move-object/from16 v0, v23

    #@276
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@279
    move-result-object v7

    #@27a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27d
    move-result-object v7

    #@27e
    invoke-static {v4, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@281
    .line 12945
    :cond_11
    move-object/from16 v0, p0

    #@283
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@285
    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    #@287
    if-nez v4, :cond_1

    #@289
    move-object/from16 v0, v23

    #@28b
    iget v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    #@28d
    .line 12946
    const/4 v7, -0x1

    #@28e
    .line 12945
    if-ne v4, v7, :cond_1

    #@290
    .line 12948
    move-object/from16 v0, p0

    #@292
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@294
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    #@296
    invoke-static {v4}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    #@299
    move-result-object v30

    #@29a
    .line 12950
    .local v30, "storage":Landroid/os/storage/StorageManager;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@29d
    move-result-object v4

    #@29e
    .line 12949
    move-object/from16 v0, v30

    #@2a0
    invoke-virtual {v0, v4}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    #@2a3
    move-result-wide v20

    #@2a4
    .line 12952
    .local v20, "lowThreshold":J
    move-object/from16 v0, p0

    #@2a6
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2a8
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get2(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    #@2ab
    move-result-object v4

    #@2ac
    .line 12953
    move-object/from16 v0, p0

    #@2ae
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@2b0
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    #@2b2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->isForwardLocked()Z

    #@2b5
    move-result v8

    #@2b6
    move-object/from16 v0, p0

    #@2b8
    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    #@2ba
    .line 12952
    invoke-interface {v4, v7, v8, v9}, Lcom/android/internal/app/IMediaContainerService;->calculateInstalledSize(Ljava/lang/String;ZLjava/lang/String;)J

    #@2bd
    move-result-wide v28

    #@2be
    .line 12956
    .local v28, "sizeBytes":J
    :try_start_0
    move-object/from16 v0, p0

    #@2c0
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2c2
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    #@2c4
    add-long v8, v28, v20

    #@2c6
    const/4 v7, 0x0

    #@2c7
    invoke-virtual {v4, v7, v8, v9}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;J)V

    #@2ca
    .line 12957
    move-object/from16 v0, p0

    #@2cc
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2ce
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get2(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    #@2d1
    move-result-object v4

    #@2d2
    move-object/from16 v0, p0

    #@2d4
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@2d6
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    #@2d8
    .line 12958
    move-object/from16 v0, p0

    #@2da
    iget v8, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@2dc
    move-object/from16 v0, p0

    #@2de
    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    #@2e0
    .line 12957
    invoke-interface {v4, v7, v8, v9}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;
    :try_end_0
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e3
    move-result-object v23

    #@2e4
    .line 12970
    :goto_8
    move-object/from16 v0, v23

    #@2e6
    iget v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    #@2e8
    .line 12971
    const/4 v7, -0x6

    #@2e9
    .line 12970
    if-ne v4, v7, :cond_1

    #@2eb
    .line 12973
    const/4 v4, -0x1

    #@2ec
    .line 12972
    move-object/from16 v0, v23

    #@2ee
    iput v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    #@2f0
    goto/16 :goto_4

    #@2f2
    .line 12959
    :catch_0
    move-exception v15

    #@2f3
    .line 12960
    .local v15, "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    const-string/jumbo v4, "PackageManager"

    #@2f6
    const-string/jumbo v7, "Failed to free cache"

    #@2f9
    invoke-static {v4, v7, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2fc
    goto :goto_8

    #@2fd
    .line 12982
    .end local v15    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    .end local v20    # "lowThreshold":J
    .end local v23    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v28    # "sizeBytes":J
    .end local v30    # "storage":Landroid/os/storage/StorageManager;
    .restart local v18    # "loc":I
    :cond_12
    const/4 v4, -0x4

    #@2fe
    move/from16 v0, v18

    #@300
    if-ne v0, v4, :cond_13

    #@302
    .line 12983
    const/16 v27, -0x1

    #@304
    goto/16 :goto_5

    #@306
    .line 12984
    :cond_13
    const/4 v4, -0x1

    #@307
    move/from16 v0, v18

    #@309
    if-ne v0, v4, :cond_14

    #@30b
    .line 12985
    const/16 v27, -0x4

    #@30d
    goto/16 :goto_5

    #@30f
    .line 12986
    :cond_14
    const/4 v4, -0x2

    #@310
    move/from16 v0, v18

    #@312
    if-ne v0, v4, :cond_15

    #@314
    .line 12987
    const/16 v27, -0x2

    #@316
    goto/16 :goto_5

    #@318
    .line 12988
    :cond_15
    const/4 v4, -0x6

    #@319
    move/from16 v0, v18

    #@31b
    if-ne v0, v4, :cond_16

    #@31d
    .line 12989
    const/16 v27, -0x3

    #@31f
    goto/16 :goto_5

    #@321
    .line 12990
    :cond_16
    const/4 v4, -0x5

    #@322
    move/from16 v0, v18

    #@324
    if-ne v0, v4, :cond_17

    #@326
    .line 12991
    const/16 v27, -0x14

    #@328
    goto/16 :goto_5

    #@32a
    .line 12994
    :cond_17
    move-object/from16 v0, p0

    #@32c
    move-object/from16 v1, v23

    #@32e
    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallParams;->installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I

    #@331
    move-result v18

    #@332
    .line 12995
    const/4 v4, -0x7

    #@333
    move/from16 v0, v18

    #@335
    if-ne v0, v4, :cond_18

    #@337
    .line 12996
    const/16 v27, -0x19

    #@339
    goto/16 :goto_5

    #@33b
    .line 12997
    :cond_18
    if-nez v22, :cond_2

    #@33d
    if-nez v19, :cond_2

    #@33f
    .line 12999
    const/4 v4, 0x2

    #@340
    move/from16 v0, v18

    #@342
    if-ne v0, v4, :cond_19

    #@344
    .line 13001
    move-object/from16 v0, p0

    #@346
    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@348
    or-int/lit8 v4, v4, 0x8

    #@34a
    move-object/from16 v0, p0

    #@34c
    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@34e
    .line 13002
    move-object/from16 v0, p0

    #@350
    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@352
    and-int/lit8 v4, v4, -0x11

    #@354
    move-object/from16 v0, p0

    #@356
    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@358
    goto/16 :goto_5

    #@35a
    .line 13003
    :cond_19
    const/4 v4, 0x3

    #@35b
    move/from16 v0, v18

    #@35d
    if-ne v0, v4, :cond_1b

    #@35f
    .line 13004
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get0()Z

    #@362
    move-result v4

    #@363
    if-eqz v4, :cond_1a

    #@365
    .line 13005
    const-string/jumbo v4, "PackageManager"

    #@368
    const-string/jumbo v7, "...setting INSTALL_EPHEMERAL install flag"

    #@36b
    invoke-static {v4, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@36e
    .line 13007
    :cond_1a
    move-object/from16 v0, p0

    #@370
    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@372
    or-int/lit16 v4, v4, 0x800

    #@374
    move-object/from16 v0, p0

    #@376
    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@378
    .line 13008
    move-object/from16 v0, p0

    #@37a
    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@37c
    and-int/lit8 v4, v4, -0x19

    #@37e
    move-object/from16 v0, p0

    #@380
    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@382
    goto/16 :goto_5

    #@384
    .line 13013
    :cond_1b
    move-object/from16 v0, p0

    #@386
    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@388
    or-int/lit8 v4, v4, 0x10

    #@38a
    move-object/from16 v0, p0

    #@38c
    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@38e
    .line 13014
    move-object/from16 v0, p0

    #@390
    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@392
    and-int/lit8 v4, v4, -0x9

    #@394
    move-object/from16 v0, p0

    #@396
    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    #@398
    goto/16 :goto_5

    #@39a
    .line 13036
    .end local v18    # "loc":I
    .restart local v6    # "verifierUser":Landroid/os/UserHandle;
    .restart local v14    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    :cond_1c
    move-object/from16 v0, p0

    #@39c
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@39e
    move-object/from16 v0, p0

    #@3a0
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@3a2
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    #@3a4
    .line 13037
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    #@3a7
    move-result v8

    #@3a8
    .line 13036
    const/high16 v9, 0x10000000

    #@3aa
    invoke-virtual {v4, v7, v9, v8}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    #@3ad
    move-result v25

    #@3ae
    .restart local v25    # "requiredUid":I
    goto/16 :goto_6

    #@3b0
    .line 13110
    .restart local v5    # "verification":Landroid/content/Intent;
    .restart local v13    # "N":I
    .restart local v24    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v32    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v33    # "verificationId":I
    .restart local v34    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    :cond_1d
    const/16 v17, 0x0

    #@3b2
    .local v17, "i":I
    :goto_9
    move/from16 v0, v17

    #@3b4
    if-ge v0, v13, :cond_8

    #@3b6
    .line 13111
    move-object/from16 v0, v32

    #@3b8
    move/from16 v1, v17

    #@3ba
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3bd
    move-result-object v35

    #@3be
    check-cast v35, Landroid/content/ComponentName;

    #@3c0
    .line 13113
    .local v35, "verifierComponent":Landroid/content/ComponentName;
    new-instance v31, Landroid/content/Intent;

    #@3c2
    move-object/from16 v0, v31

    #@3c4
    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@3c7
    .line 13114
    .local v31, "sufficientIntent":Landroid/content/Intent;
    move-object/from16 v0, v31

    #@3c9
    move-object/from16 v1, v35

    #@3cb
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@3ce
    .line 13115
    move-object/from16 v0, p0

    #@3d0
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@3d2
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    #@3d4
    move-object/from16 v0, v31

    #@3d6
    invoke-virtual {v4, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@3d9
    .line 13110
    add-int/lit8 v17, v17, 0x1

    #@3db
    goto :goto_9

    #@3dc
    .line 13155
    .end local v5    # "verification":Landroid/content/Intent;
    .end local v13    # "N":I
    .end local v17    # "i":I
    .end local v24    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v31    # "sufficientIntent":Landroid/content/Intent;
    .end local v32    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v33    # "verificationId":I
    .end local v34    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .end local v35    # "verifierComponent":Landroid/content/ComponentName;
    :cond_1e
    move-object/from16 v0, p0

    #@3de
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@3e0
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get2(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    #@3e3
    move-result-object v4

    #@3e4
    const/4 v7, 0x1

    #@3e5
    invoke-virtual {v14, v4, v7}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    #@3e8
    move-result v27

    #@3e9
    goto/16 :goto_7
.end method

.method public isForwardLocked()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 13179
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
    .line 12801
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
    .line 12802
    const-string/jumbo v1, " file="

    #@1b
    .line 12801
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 12802
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@21
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    #@23
    .line 12801
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 12802
    const-string/jumbo v1, " cid="

    #@2a
    .line 12801
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 12802
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@30
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    #@32
    .line 12801
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 12802
    const-string/jumbo v1, "}"

    #@39
    .line 12801
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
