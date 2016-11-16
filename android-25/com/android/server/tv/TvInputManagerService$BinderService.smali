.class final Lcom/android/server/tv/TvInputManagerService$BinderService;
.super Landroid/media/tv/ITvInputManager$Stub;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputManagerService;

    #@0
    .prologue
    .line 879
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-direct {p0}, Landroid/media/tv/ITvInputManager$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService$BinderService;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    #@3
    return-void
.end method

.method private ensureParentalControlsPermission()V
    .locals 2

    #@0
    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    .line 1123
    const-string/jumbo v1, "android.permission.MODIFY_PARENTAL_CONTROLS"

    #@9
    .line 1122
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 1125
    new-instance v0, Ljava/lang/SecurityException;

    #@11
    .line 1126
    const-string/jumbo v1, "The caller does not have parental controls permission"

    #@14
    .line 1125
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 1121
    :cond_0
    return-void
.end method

.method private getCallingPackageName()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 937
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@3
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@a
    move-result-object v1

    #@b
    .line 938
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@e
    move-result v2

    #@f
    .line 937
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 939
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_0

    #@15
    array-length v1, v0

    #@16
    if-lez v1, :cond_0

    #@18
    .line 940
    aget-object v1, v0, v3

    #@1a
    return-object v1

    #@1b
    .line 942
    :cond_0
    const-string/jumbo v1, "unknown"

    #@1e
    return-object v1
.end method


# virtual methods
.method public acquireTvInputHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;I)Landroid/media/tv/ITvInputHardware;
    .locals 8
    .param p1, "deviceId"    # I
    .param p2, "callback"    # Landroid/media/tv/ITvInputHardwareCallback;
    .param p3, "info"    # Landroid/media/tv/TvInputInfo;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1692
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "android.permission.TV_INPUT_HARDWARE"

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 1694
    const/4 v0, 0x0

    #@10
    return-object v0

    #@11
    .line 1697
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v6

    #@15
    .line 1698
    .local v6, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@18
    move-result v4

    #@19
    .line 1699
    .local v4, "callingUid":I
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1b
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1e
    move-result v1

    #@1f
    .line 1700
    const-string/jumbo v2, "acquireTvInputHardware"

    #@22
    .line 1699
    invoke-static {v0, v1, v4, p4, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@25
    move-result v5

    #@26
    .line 1702
    .local v5, "resolvedUserId":I
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@28
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-get3(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    #@2b
    move-result-object v0

    #@2c
    move v1, p1

    #@2d
    move-object v2, p2

    #@2e
    move-object v3, p3

    #@2f
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tv/TvInputHardwareManager;->acquireHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;II)Landroid/media/tv/ITvInputHardware;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    move-result-object v0

    #@33
    .line 1705
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@36
    .line 1702
    return-object v0

    #@37
    .line 1704
    :catchall_0
    move-exception v0

    #@38
    .line 1705
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3b
    .line 1704
    throw v0
.end method

.method public addBlockedRating(Ljava/lang/String;I)V
    .locals 8
    .param p1, "rating"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1089
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    #@3
    .line 1090
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@8
    move-result v5

    #@9
    .line 1091
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@c
    move-result v6

    #@d
    const-string/jumbo v7, "addBlockedRating"

    #@10
    .line 1090
    invoke-static {v4, v5, v6, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@13
    move-result v2

    #@14
    .line 1092
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@17
    move-result-wide v0

    #@18
    .line 1094
    .local v0, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1a
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1d
    move-result-object v5

    #@1e
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1f
    .line 1095
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@21
    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@24
    move-result-object v3

    #@25
    .line 1096
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get6(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    #@28
    move-result-object v4

    #@29
    .line 1097
    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    #@2c
    move-result-object v6

    #@2d
    .line 1096
    invoke-virtual {v4, v6}, Lcom/android/server/tv/PersistentDataStore;->addBlockedRating(Landroid/media/tv/TvContentRating;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@31
    .line 1100
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@34
    .line 1088
    return-void

    #@35
    .line 1094
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v4

    #@36
    :try_start_3
    monitor-exit v5

    #@37
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@38
    .line 1099
    :catchall_1
    move-exception v4

    #@39
    .line 1100
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 1099
    throw v4
.end method

.method public captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;I)Z
    .locals 14
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "config"    # Landroid/media/tv/TvStreamConfig;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1822
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    .line 1823
    const-string/jumbo v3, "android.permission.CAPTURE_TV_INPUT"

    #@9
    .line 1822
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 1825
    new-instance v2, Ljava/lang/SecurityException;

    #@11
    const-string/jumbo v3, "Requires CAPTURE_TV_INPUT permission"

    #@14
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@17
    throw v2

    #@18
    .line 1828
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1b
    move-result-wide v10

    #@1c
    .line 1829
    .local v10, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1f
    move-result v6

    #@20
    .line 1830
    .local v6, "callingUid":I
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@22
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@25
    move-result v3

    #@26
    .line 1831
    const-string/jumbo v4, "captureFrame"

    #@29
    .line 1830
    move/from16 v0, p4

    #@2b
    invoke-static {v2, v3, v6, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@2e
    move-result v7

    #@2f
    .line 1833
    .local v7, "resolvedUserId":I
    const/4 v8, 0x0

    #@30
    .line 1834
    .local v8, "hardwareInputId":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@32
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@35
    move-result-object v3

    #@36
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@37
    .line 1835
    :try_start_1
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@39
    invoke-static {v2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@3c
    move-result-object v13

    #@3d
    .line 1836
    .local v13, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v13}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@40
    move-result-object v2

    #@41
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    move-result-object v2

    #@45
    if-nez v2, :cond_1

    #@47
    .line 1837
    const-string/jumbo v2, "TvInputManagerService"

    #@4a
    new-instance v4, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v5, "input not found for "

    #@52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@61
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@62
    .line 1838
    const/4 v2, 0x0

    #@63
    .line 1853
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@66
    .line 1838
    return v2

    #@67
    .line 1840
    :cond_1
    :try_start_3
    invoke-static {v13}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@6a
    move-result-object v2

    #@6b
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@6e
    move-result-object v2

    #@6f
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@72
    move-result-object v12

    #@73
    .local v12, "sessionState$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@76
    move-result v2

    #@77
    if-eqz v2, :cond_3

    #@79
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7c
    move-result-object v9

    #@7d
    check-cast v9, Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@7f
    .line 1841
    .local v9, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get4(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    #@82
    move-result-object v2

    #@83
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@86
    move-result v2

    #@87
    if-eqz v2, :cond_2

    #@89
    .line 1842
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@8c
    move-result-object v2

    #@8d
    if-eqz v2, :cond_2

    #@8f
    .line 1843
    invoke-static {v13}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@92
    move-result-object v2

    #@93
    .line 1844
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@96
    move-result-object v4

    #@97
    .line 1843
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9a
    move-result-object v2

    #@9b
    check-cast v2, Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@9d
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get4(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a0
    move-result-object v8

    #@a1
    .end local v8    # "hardwareInputId":Ljava/lang/String;
    .end local v9    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_3
    :try_start_4
    monitor-exit v3

    #@a2
    .line 1849
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@a4
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-get3(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    #@a7
    move-result-object v2

    #@a8
    .line 1850
    if-eqz v8, :cond_4

    #@aa
    move-object v3, v8

    #@ab
    :goto_0
    move-object/from16 v4, p2

    #@ad
    move-object/from16 v5, p3

    #@af
    .line 1849
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/tv/TvInputHardwareManager;->captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;II)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@b2
    move-result v2

    #@b3
    .line 1853
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@b6
    .line 1849
    return v2

    #@b7
    .line 1834
    .end local v12    # "sessionState$iterator":Ljava/util/Iterator;
    .end local v13    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .restart local v8    # "hardwareInputId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@b8
    :try_start_5
    monitor-exit v3

    #@b9
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@ba
    .line 1852
    .end local v8    # "hardwareInputId":Ljava/lang/String;
    :catchall_1
    move-exception v2

    #@bb
    .line 1853
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@be
    .line 1852
    throw v2

    #@bf
    .restart local v12    # "sessionState$iterator":Ljava/util/Iterator;
    .restart local v13    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_4
    move-object v3, p1

    #@c0
    .line 1850
    goto :goto_0
.end method

.method public createOverlayView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "frame"    # Landroid/graphics/Rect;
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 1455
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1456
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v6

    #@a
    .line 1457
    const-string/jumbo v7, "createOverlayView"

    #@d
    .line 1456
    invoke-static {v5, v6, v0, p4, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v4

    #@11
    .line 1458
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 1460
    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@17
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1a
    move-result-object v6

    #@1b
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    .line 1462
    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    #@21
    move-result-object v5

    #@22
    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    .line 1469
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 1454
    return-void

    #@2a
    .line 1464
    :catch_0
    move-exception v1

    #@2b
    .line 1465
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v5, "TvInputManagerService"

    #@2e
    const-string/jumbo v7, "error in createOverlayView"

    #@31
    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 1460
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@36
    :try_start_4
    monitor-exit v6

    #@37
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@38
    .line 1468
    :catchall_1
    move-exception v5

    #@39
    .line 1469
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 1468
    throw v5
.end method

.method public createSession(Landroid/media/tv/ITvInputClient;Ljava/lang/String;ZII)V
    .locals 20
    .param p1, "client"    # Landroid/media/tv/ITvInputClient;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "isRecordingSession"    # Z
    .param p4, "seq"    # I
    .param p5, "userId"    # I

    #@0
    .prologue
    .line 1133
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v10

    #@4
    .line 1134
    .local v10, "callingUid":I
    move-object/from16 v0, p0

    #@6
    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@b
    move-result v5

    #@c
    .line 1135
    const-string/jumbo v6, "createSession"

    #@f
    .line 1134
    move/from16 v0, p5

    #@11
    invoke-static {v3, v5, v10, v0, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@14
    move-result v11

    #@15
    .line 1136
    .local v11, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@18
    move-result-wide v14

    #@19
    .line 1138
    .local v14, "identity":J
    :try_start_0
    move-object/from16 v0, p0

    #@1b
    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1d
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@20
    move-result-object v19

    #@21
    monitor-enter v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@22
    .line 1139
    :try_start_1
    move-object/from16 v0, p0

    #@24
    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@26
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->-get1(Lcom/android/server/tv/TvInputManagerService;)I

    #@29
    move-result v3

    #@2a
    move/from16 v0, p5

    #@2c
    if-eq v0, v3, :cond_0

    #@2e
    if-eqz p3, :cond_1

    #@30
    .line 1146
    :cond_0
    move-object/from16 v0, p0

    #@32
    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@34
    invoke-static {v3, v11}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@37
    move-result-object v18

    #@38
    .line 1147
    .local v18, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@3b
    move-result-object v3

    #@3c
    move-object/from16 v0, p2

    #@3e
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    move-result-object v16

    #@42
    check-cast v16, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    #@44
    .line 1148
    .local v16, "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v16, :cond_2

    #@46
    .line 1149
    const-string/jumbo v3, "TvInputManagerService"

    #@49
    new-instance v5, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v6, "Failed to find input state for inputId="

    #@51
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v5

    #@55
    move-object/from16 v0, p2

    #@57
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v5

    #@5b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v5

    #@5f
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    .line 1150
    move-object/from16 v0, p0

    #@64
    iget-object v2, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@66
    const/4 v5, 0x0

    #@67
    const/4 v6, 0x0

    #@68
    move-object/from16 v3, p1

    #@6a
    move-object/from16 v4, p2

    #@6c
    move/from16 v7, p4

    #@6e
    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap17(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@71
    :try_start_2
    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@72
    .line 1185
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@75
    .line 1151
    return-void

    #@76
    .line 1143
    .end local v16    # "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .end local v18    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    #@78
    iget-object v2, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@7a
    const/4 v5, 0x0

    #@7b
    const/4 v6, 0x0

    #@7c
    move-object/from16 v3, p1

    #@7e
    move-object/from16 v4, p2

    #@80
    move/from16 v7, p4

    #@82
    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap17(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@85
    :try_start_4
    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@86
    .line 1185
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@89
    .line 1144
    return-void

    #@8a
    .line 1153
    .restart local v16    # "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .restart local v18    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_2
    :try_start_5
    invoke-static/range {v16 .. v16}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-get0(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    #@8d
    move-result-object v13

    #@8e
    .line 1154
    .local v13, "info":Landroid/media/tv/TvInputInfo;
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@91
    move-result-object v3

    #@92
    invoke-virtual {v13}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    #@95
    move-result-object v5

    #@96
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@99
    move-result-object v17

    #@9a
    check-cast v17, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@9c
    .line 1155
    .local v17, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-nez v17, :cond_3

    #@9e
    .line 1156
    new-instance v17, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@a0
    .end local v17    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    move-object/from16 v0, p0

    #@a2
    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@a4
    invoke-virtual {v13}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    #@a7
    move-result-object v5

    #@a8
    const/4 v6, 0x0

    #@a9
    move-object/from16 v0, v17

    #@ab
    invoke-direct {v0, v3, v5, v11, v6}, Lcom/android/server/tv/TvInputManagerService$ServiceState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/TvInputManagerService$ServiceState;)V

    #@ae
    .line 1157
    .restart local v17    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@b1
    move-result-object v3

    #@b2
    invoke-virtual {v13}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    #@b5
    move-result-object v5

    #@b6
    move-object/from16 v0, v17

    #@b8
    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@bb
    .line 1160
    :cond_3
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get6(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    #@be
    move-result v3

    #@bf
    if-eqz v3, :cond_4

    #@c1
    .line 1161
    move-object/from16 v0, p0

    #@c3
    iget-object v2, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@c5
    const/4 v5, 0x0

    #@c6
    const/4 v6, 0x0

    #@c7
    move-object/from16 v3, p1

    #@c9
    move-object/from16 v4, p2

    #@cb
    move/from16 v7, p4

    #@cd
    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap17(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@d0
    :try_start_6
    monitor-exit v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@d1
    .line 1185
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d4
    .line 1162
    return-void

    #@d5
    .line 1166
    :cond_4
    :try_start_7
    new-instance v4, Landroid/os/Binder;

    #@d7
    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    #@da
    .line 1167
    .local v4, "sessionToken":Landroid/os/IBinder;
    new-instance v2, Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@dc
    move-object/from16 v0, p0

    #@de
    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@e0
    invoke-virtual {v13}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    #@e3
    move-result-object v5

    #@e4
    .line 1168
    invoke-virtual {v13}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    #@e7
    move-result-object v6

    #@e8
    .line 1167
    const/4 v12, 0x0

    #@e9
    move/from16 v7, p3

    #@eb
    move-object/from16 v8, p1

    #@ed
    move/from16 v9, p4

    #@ef
    invoke-direct/range {v2 .. v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/ComponentName;ZLandroid/media/tv/ITvInputClient;IIILcom/android/server/tv/TvInputManagerService$SessionState;)V

    #@f2
    .line 1172
    .local v2, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@f5
    move-result-object v3

    #@f6
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f9
    .line 1175
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get8(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    #@fc
    move-result-object v3

    #@fd
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@100
    .line 1177
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    #@103
    move-result-object v3

    #@104
    if-eqz v3, :cond_5

    #@106
    .line 1178
    move-object/from16 v0, p0

    #@108
    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@10a
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    #@10d
    move-result-object v5

    #@10e
    invoke-static {v3, v5, v4, v11}, Lcom/android/server/tv/TvInputManagerService;->-wrap12(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@111
    :goto_0
    :try_start_8
    monitor-exit v19
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@112
    .line 1185
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@115
    .line 1132
    return-void

    #@116
    .line 1181
    :cond_5
    :try_start_9
    move-object/from16 v0, p0

    #@118
    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@11a
    invoke-virtual {v13}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    #@11d
    move-result-object v5

    #@11e
    invoke-static {v3, v5, v11}, Lcom/android/server/tv/TvInputManagerService;->-wrap21(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@121
    goto :goto_0

    #@122
    .line 1138
    .end local v2    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v4    # "sessionToken":Landroid/os/IBinder;
    .end local v13    # "info":Landroid/media/tv/TvInputInfo;
    .end local v16    # "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .end local v17    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v18    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v3

    #@123
    :try_start_a
    monitor-exit v19

    #@124
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@125
    .line 1184
    :catchall_1
    move-exception v3

    #@126
    .line 1185
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@129
    .line 1184
    throw v3
.end method

.method public dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V
    .locals 10
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "userId"    # I

    #@0
    .prologue
    .line 1275
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1276
    .local v0, "callingUid":I
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v7

    #@a
    .line 1277
    const-string/jumbo v8, "dispatchSurfaceChanged"

    #@d
    .line 1276
    invoke-static {v6, v7, v0, p5, v8}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v4

    #@11
    .line 1278
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 1280
    .local v2, "identity":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@17
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1a
    move-result-object v7

    #@1b
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    .line 1282
    :try_start_1
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v6, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap5(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@21
    move-result-object v5

    #@22
    .line 1284
    .local v5, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@24
    invoke-static {v6, v5}, Lcom/android/server/tv/TvInputManagerService;->-wrap2(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@27
    move-result-object v6

    #@28
    invoke-interface {v6, p2, p3, p4}, Landroid/media/tv/ITvInputSession;->dispatchSurfaceChanged(III)V

    #@2b
    .line 1286
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@2e
    move-result-object v6

    #@2f
    if-eqz v6, :cond_0

    #@31
    .line 1287
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@33
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@36
    move-result-object v8

    #@37
    const/16 v9, 0x3e8

    #@39
    invoke-static {v6, v8, v9, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    #@3c
    move-result-object v6

    #@3d
    invoke-interface {v6, p2, p3, p4}, Landroid/media/tv/ITvInputSession;->dispatchSurfaceChanged(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    .end local v5    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@41
    .line 1295
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@44
    .line 1274
    return-void

    #@45
    .line 1290
    :catch_0
    move-exception v1

    #@46
    .line 1291
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v6, "TvInputManagerService"

    #@49
    const-string/jumbo v8, "error in dispatchSurfaceChanged"

    #@4c
    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4f
    goto :goto_0

    #@50
    .line 1280
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    #@51
    :try_start_4
    monitor-exit v7

    #@52
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@53
    .line 1294
    :catchall_1
    move-exception v6

    #@54
    .line 1295
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@57
    .line 1294
    throw v6
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 25
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1887
    new-instance v15, Lcom/android/internal/util/IndentingPrintWriter;

    #@2
    const-string/jumbo v22, "  "

    #@5
    move-object/from16 v0, p2

    #@7
    move-object/from16 v1, v22

    #@9
    invoke-direct {v15, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@c
    .line 1888
    .local v15, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v0, p0

    #@e
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@10
    move-object/from16 v22, v0

    #@12
    invoke-static/range {v22 .. v22}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    #@15
    move-result-object v22

    #@16
    const-string/jumbo v23, "android.permission.DUMP"

    #@19
    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@1c
    move-result v22

    #@1d
    if-eqz v22, :cond_0

    #@1f
    .line 1890
    new-instance v22, Ljava/lang/StringBuilder;

    #@21
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v23, "Permission Denial: can\'t dump TvInputManager from pid="

    #@27
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v22

    #@2b
    .line 1891
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@2e
    move-result v23

    #@2f
    .line 1890
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v22

    #@33
    .line 1891
    const-string/jumbo v23, ", uid="

    #@36
    .line 1890
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v22

    #@3a
    .line 1891
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3d
    move-result v23

    #@3e
    .line 1890
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v22

    #@42
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v22

    #@46
    move-object/from16 v0, v22

    #@48
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@4b
    .line 1892
    return-void

    #@4c
    .line 1895
    :cond_0
    move-object/from16 v0, p0

    #@4e
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@50
    move-object/from16 v22, v0

    #@52
    invoke-static/range {v22 .. v22}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@55
    move-result-object v23

    #@56
    monitor-enter v23

    #@57
    .line 1896
    :try_start_0
    new-instance v22, Ljava/lang/StringBuilder;

    #@59
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v24, "User Ids (Current user: "

    #@5f
    move-object/from16 v0, v22

    #@61
    move-object/from16 v1, v24

    #@63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v22

    #@67
    move-object/from16 v0, p0

    #@69
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6b
    move-object/from16 v24, v0

    #@6d
    invoke-static/range {v24 .. v24}, Lcom/android/server/tv/TvInputManagerService;->-get1(Lcom/android/server/tv/TvInputManagerService;)I

    #@70
    move-result v24

    #@71
    move-object/from16 v0, v22

    #@73
    move/from16 v1, v24

    #@75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@78
    move-result-object v22

    #@79
    const-string/jumbo v24, "):"

    #@7c
    move-object/from16 v0, v22

    #@7e
    move-object/from16 v1, v24

    #@80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v22

    #@84
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v22

    #@88
    move-object/from16 v0, v22

    #@8a
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@8d
    .line 1897
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@90
    .line 1898
    const/4 v12, 0x0

    #@91
    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@93
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@95
    move-object/from16 v22, v0

    #@97
    invoke-static/range {v22 .. v22}, Lcom/android/server/tv/TvInputManagerService;->-get4(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    #@9a
    move-result-object v22

    #@9b
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    #@9e
    move-result v22

    #@9f
    move/from16 v0, v22

    #@a1
    if-ge v12, v0, :cond_1

    #@a3
    .line 1899
    move-object/from16 v0, p0

    #@a5
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@a7
    move-object/from16 v22, v0

    #@a9
    invoke-static/range {v22 .. v22}, Lcom/android/server/tv/TvInputManagerService;->-get4(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    #@ac
    move-result-object v22

    #@ad
    move-object/from16 v0, v22

    #@af
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    #@b2
    move-result v20

    #@b3
    .line 1900
    .local v20, "userId":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b6
    move-result-object v22

    #@b7
    move-object/from16 v0, v22

    #@b9
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    #@bc
    .line 1898
    add-int/lit8 v12, v12, 0x1

    #@be
    goto :goto_0

    #@bf
    .line 1902
    .end local v20    # "userId":I
    :cond_1
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@c2
    .line 1904
    const/4 v12, 0x0

    #@c3
    :goto_1
    move-object/from16 v0, p0

    #@c5
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@c7
    move-object/from16 v22, v0

    #@c9
    invoke-static/range {v22 .. v22}, Lcom/android/server/tv/TvInputManagerService;->-get4(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    #@cc
    move-result-object v22

    #@cd
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    #@d0
    move-result v22

    #@d1
    move/from16 v0, v22

    #@d3
    if-ge v12, v0, :cond_a

    #@d5
    .line 1905
    move-object/from16 v0, p0

    #@d7
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@d9
    move-object/from16 v22, v0

    #@db
    invoke-static/range {v22 .. v22}, Lcom/android/server/tv/TvInputManagerService;->-get4(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    #@de
    move-result-object v22

    #@df
    move-object/from16 v0, v22

    #@e1
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    #@e4
    move-result v20

    #@e5
    .line 1906
    .restart local v20    # "userId":I
    move-object/from16 v0, p0

    #@e7
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@e9
    move-object/from16 v22, v0

    #@eb
    move-object/from16 v0, v22

    #@ed
    move/from16 v1, v20

    #@ef
    invoke-static {v0, v1}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@f2
    move-result-object v21

    #@f3
    .line 1907
    .local v21, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v22, Ljava/lang/StringBuilder;

    #@f5
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@f8
    const-string/jumbo v24, "UserState ("

    #@fb
    move-object/from16 v0, v22

    #@fd
    move-object/from16 v1, v24

    #@ff
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v22

    #@103
    move-object/from16 v0, v22

    #@105
    move/from16 v1, v20

    #@107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v22

    #@10b
    const-string/jumbo v24, "):"

    #@10e
    move-object/from16 v0, v22

    #@110
    move-object/from16 v1, v24

    #@112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v22

    #@116
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@119
    move-result-object v22

    #@11a
    move-object/from16 v0, v22

    #@11c
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@11f
    .line 1908
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@122
    .line 1910
    const-string/jumbo v22, "inputMap: inputId -> TvInputState"

    #@125
    move-object/from16 v0, v22

    #@127
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@12a
    .line 1911
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@12d
    .line 1912
    invoke-static/range {v21 .. v21}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@130
    move-result-object v22

    #@131
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@134
    move-result-object v22

    #@135
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@138
    move-result-object v11

    #@139
    .local v11, "entry$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@13c
    move-result v22

    #@13d
    if-eqz v22, :cond_2

    #@13f
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@142
    move-result-object v10

    #@143
    check-cast v10, Ljava/util/Map$Entry;

    #@145
    .line 1913
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/tv/TvInputManagerService$TvInputState;>;"
    new-instance v24, Ljava/lang/StringBuilder;

    #@147
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@14a
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@14d
    move-result-object v22

    #@14e
    check-cast v22, Ljava/lang/String;

    #@150
    move-object/from16 v0, v24

    #@152
    move-object/from16 v1, v22

    #@154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@157
    move-result-object v22

    #@158
    const-string/jumbo v24, ": "

    #@15b
    move-object/from16 v0, v22

    #@15d
    move-object/from16 v1, v24

    #@15f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@162
    move-result-object v22

    #@163
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@166
    move-result-object v24

    #@167
    move-object/from16 v0, v22

    #@169
    move-object/from16 v1, v24

    #@16b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v22

    #@16f
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@172
    move-result-object v22

    #@173
    move-object/from16 v0, v22

    #@175
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@178
    goto :goto_2

    #@179
    .line 1895
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/tv/TvInputManagerService$TvInputState;>;"
    .end local v11    # "entry$iterator":Ljava/util/Iterator;
    .end local v12    # "i":I
    .end local v20    # "userId":I
    .end local v21    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v22

    #@17a
    monitor-exit v23

    #@17b
    throw v22

    #@17c
    .line 1915
    .restart local v11    # "entry$iterator":Ljava/util/Iterator;
    .restart local v12    # "i":I
    .restart local v20    # "userId":I
    .restart local v21    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_2
    :try_start_1
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@17f
    .line 1917
    const-string/jumbo v22, "packageSet:"

    #@182
    move-object/from16 v0, v22

    #@184
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@187
    .line 1918
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@18a
    .line 1919
    invoke-static/range {v21 .. v21}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get5(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    #@18d
    move-result-object v22

    #@18e
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@191
    move-result-object v14

    #@192
    .local v14, "packageName$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@195
    move-result v22

    #@196
    if-eqz v22, :cond_3

    #@198
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19b
    move-result-object v13

    #@19c
    check-cast v13, Ljava/lang/String;

    #@19e
    .line 1920
    .local v13, "packageName":Ljava/lang/String;
    invoke-virtual {v15, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@1a1
    goto :goto_3

    #@1a2
    .line 1922
    .end local v13    # "packageName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@1a5
    .line 1924
    const-string/jumbo v22, "clientStateMap: ITvInputClient -> ClientState"

    #@1a8
    move-object/from16 v0, v22

    #@1aa
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@1ad
    .line 1925
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@1b0
    .line 1927
    invoke-static/range {v21 .. v21}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get1(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@1b3
    move-result-object v22

    #@1b4
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@1b7
    move-result-object v22

    #@1b8
    .line 1926
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1bb
    move-result-object v11

    #@1bc
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@1bf
    move-result v22

    #@1c0
    if-eqz v22, :cond_5

    #@1c2
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c5
    move-result-object v8

    #@1c6
    check-cast v8, Ljava/util/Map$Entry;

    #@1c8
    .line 1928
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$ClientState;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1cb
    move-result-object v6

    #@1cc
    check-cast v6, Lcom/android/server/tv/TvInputManagerService$ClientState;

    #@1ce
    .line 1929
    .local v6, "client":Lcom/android/server/tv/TvInputManagerService$ClientState;
    new-instance v22, Ljava/lang/StringBuilder;

    #@1d0
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@1d3
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1d6
    move-result-object v24

    #@1d7
    move-object/from16 v0, v22

    #@1d9
    move-object/from16 v1, v24

    #@1db
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1de
    move-result-object v22

    #@1df
    const-string/jumbo v24, ": "

    #@1e2
    move-object/from16 v0, v22

    #@1e4
    move-object/from16 v1, v24

    #@1e6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e9
    move-result-object v22

    #@1ea
    move-object/from16 v0, v22

    #@1ec
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1ef
    move-result-object v22

    #@1f0
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f3
    move-result-object v22

    #@1f4
    move-object/from16 v0, v22

    #@1f6
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@1f9
    .line 1931
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@1fc
    .line 1933
    const-string/jumbo v22, "sessionTokens:"

    #@1ff
    move-object/from16 v0, v22

    #@201
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@204
    .line 1934
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@207
    .line 1935
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$ClientState;->-get1(Lcom/android/server/tv/TvInputManagerService$ClientState;)Ljava/util/List;

    #@20a
    move-result-object v22

    #@20b
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20e
    move-result-object v19

    #@20f
    .local v19, "token$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    #@212
    move-result v22

    #@213
    if-eqz v22, :cond_4

    #@215
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@218
    move-result-object v18

    #@219
    check-cast v18, Landroid/os/IBinder;

    #@21b
    .line 1936
    .local v18, "token":Landroid/os/IBinder;
    new-instance v22, Ljava/lang/StringBuilder;

    #@21d
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@220
    const-string/jumbo v24, ""

    #@223
    move-object/from16 v0, v22

    #@225
    move-object/from16 v1, v24

    #@227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22a
    move-result-object v22

    #@22b
    move-object/from16 v0, v22

    #@22d
    move-object/from16 v1, v18

    #@22f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@232
    move-result-object v22

    #@233
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@236
    move-result-object v22

    #@237
    move-object/from16 v0, v22

    #@239
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@23c
    goto :goto_5

    #@23d
    .line 1938
    .end local v18    # "token":Landroid/os/IBinder;
    :cond_4
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@240
    .line 1940
    new-instance v22, Ljava/lang/StringBuilder;

    #@242
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@245
    const-string/jumbo v24, "clientTokens: "

    #@248
    move-object/from16 v0, v22

    #@24a
    move-object/from16 v1, v24

    #@24c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24f
    move-result-object v22

    #@250
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$ClientState;->-get0(Lcom/android/server/tv/TvInputManagerService$ClientState;)Landroid/os/IBinder;

    #@253
    move-result-object v24

    #@254
    move-object/from16 v0, v22

    #@256
    move-object/from16 v1, v24

    #@258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25b
    move-result-object v22

    #@25c
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25f
    move-result-object v22

    #@260
    move-object/from16 v0, v22

    #@262
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@265
    .line 1941
    new-instance v22, Ljava/lang/StringBuilder;

    #@267
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@26a
    const-string/jumbo v24, "userId: "

    #@26d
    move-object/from16 v0, v22

    #@26f
    move-object/from16 v1, v24

    #@271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@274
    move-result-object v22

    #@275
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$ClientState;->-get2(Lcom/android/server/tv/TvInputManagerService$ClientState;)I

    #@278
    move-result v24

    #@279
    move-object/from16 v0, v22

    #@27b
    move/from16 v1, v24

    #@27d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@280
    move-result-object v22

    #@281
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@284
    move-result-object v22

    #@285
    move-object/from16 v0, v22

    #@287
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@28a
    .line 1943
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@28d
    goto/16 :goto_4

    #@28f
    .line 1945
    .end local v6    # "client":Lcom/android/server/tv/TvInputManagerService$ClientState;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$ClientState;>;"
    .end local v19    # "token$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@292
    .line 1947
    const-string/jumbo v22, "serviceStateMap: ComponentName -> ServiceState"

    #@295
    move-object/from16 v0, v22

    #@297
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@29a
    .line 1948
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@29d
    .line 1950
    invoke-static/range {v21 .. v21}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@2a0
    move-result-object v22

    #@2a1
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@2a4
    move-result-object v22

    #@2a5
    .line 1949
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2a8
    move-result-object v11

    #@2a9
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@2ac
    move-result v22

    #@2ad
    if-eqz v22, :cond_7

    #@2af
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b2
    move-result-object v7

    #@2b3
    check-cast v7, Ljava/util/Map$Entry;

    #@2b5
    .line 1951
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/tv/TvInputManagerService$ServiceState;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2b8
    move-result-object v16

    #@2b9
    check-cast v16, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@2bb
    .line 1952
    .local v16, "service":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    new-instance v22, Ljava/lang/StringBuilder;

    #@2bd
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@2c0
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2c3
    move-result-object v24

    #@2c4
    move-object/from16 v0, v22

    #@2c6
    move-object/from16 v1, v24

    #@2c8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2cb
    move-result-object v22

    #@2cc
    const-string/jumbo v24, ": "

    #@2cf
    move-object/from16 v0, v22

    #@2d1
    move-object/from16 v1, v24

    #@2d3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d6
    move-result-object v22

    #@2d7
    move-object/from16 v0, v22

    #@2d9
    move-object/from16 v1, v16

    #@2db
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2de
    move-result-object v22

    #@2df
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e2
    move-result-object v22

    #@2e3
    move-object/from16 v0, v22

    #@2e5
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@2e8
    .line 1954
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@2eb
    .line 1956
    const-string/jumbo v22, "sessionTokens:"

    #@2ee
    move-object/from16 v0, v22

    #@2f0
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@2f3
    .line 1957
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@2f6
    .line 1958
    invoke-static/range {v16 .. v16}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get8(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    #@2f9
    move-result-object v22

    #@2fa
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2fd
    move-result-object v19

    #@2fe
    .restart local v19    # "token$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    #@301
    move-result v22

    #@302
    if-eqz v22, :cond_6

    #@304
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@307
    move-result-object v18

    #@308
    check-cast v18, Landroid/os/IBinder;

    #@30a
    .line 1959
    .restart local v18    # "token":Landroid/os/IBinder;
    new-instance v22, Ljava/lang/StringBuilder;

    #@30c
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@30f
    const-string/jumbo v24, ""

    #@312
    move-object/from16 v0, v22

    #@314
    move-object/from16 v1, v24

    #@316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@319
    move-result-object v22

    #@31a
    move-object/from16 v0, v22

    #@31c
    move-object/from16 v1, v18

    #@31e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@321
    move-result-object v22

    #@322
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@325
    move-result-object v22

    #@326
    move-object/from16 v0, v22

    #@328
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@32b
    goto :goto_7

    #@32c
    .line 1961
    .end local v18    # "token":Landroid/os/IBinder;
    :cond_6
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@32f
    .line 1963
    new-instance v22, Ljava/lang/StringBuilder;

    #@331
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@334
    const-string/jumbo v24, "service: "

    #@337
    move-object/from16 v0, v22

    #@339
    move-object/from16 v1, v24

    #@33b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33e
    move-result-object v22

    #@33f
    invoke-static/range {v16 .. v16}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    #@342
    move-result-object v24

    #@343
    move-object/from16 v0, v22

    #@345
    move-object/from16 v1, v24

    #@347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34a
    move-result-object v22

    #@34b
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34e
    move-result-object v22

    #@34f
    move-object/from16 v0, v22

    #@351
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@354
    .line 1964
    new-instance v22, Ljava/lang/StringBuilder;

    #@356
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@359
    const-string/jumbo v24, "callback: "

    #@35c
    move-object/from16 v0, v22

    #@35e
    move-object/from16 v1, v24

    #@360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@363
    move-result-object v22

    #@364
    invoke-static/range {v16 .. v16}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get1(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    #@367
    move-result-object v24

    #@368
    move-object/from16 v0, v22

    #@36a
    move-object/from16 v1, v24

    #@36c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36f
    move-result-object v22

    #@370
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@373
    move-result-object v22

    #@374
    move-object/from16 v0, v22

    #@376
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@379
    .line 1965
    new-instance v22, Ljava/lang/StringBuilder;

    #@37b
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@37e
    const-string/jumbo v24, "bound: "

    #@381
    move-object/from16 v0, v22

    #@383
    move-object/from16 v1, v24

    #@385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@388
    move-result-object v22

    #@389
    invoke-static/range {v16 .. v16}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get0(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    #@38c
    move-result v24

    #@38d
    move-object/from16 v0, v22

    #@38f
    move/from16 v1, v24

    #@391
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@394
    move-result-object v22

    #@395
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@398
    move-result-object v22

    #@399
    move-object/from16 v0, v22

    #@39b
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@39e
    .line 1966
    new-instance v22, Ljava/lang/StringBuilder;

    #@3a0
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@3a3
    const-string/jumbo v24, "reconnecting: "

    #@3a6
    move-object/from16 v0, v22

    #@3a8
    move-object/from16 v1, v24

    #@3aa
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ad
    move-result-object v22

    #@3ae
    invoke-static/range {v16 .. v16}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get6(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    #@3b1
    move-result v24

    #@3b2
    move-object/from16 v0, v22

    #@3b4
    move/from16 v1, v24

    #@3b6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3b9
    move-result-object v22

    #@3ba
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3bd
    move-result-object v22

    #@3be
    move-object/from16 v0, v22

    #@3c0
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@3c3
    .line 1968
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@3c6
    goto/16 :goto_6

    #@3c8
    .line 1970
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/tv/TvInputManagerService$ServiceState;>;"
    .end local v16    # "service":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v19    # "token$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@3cb
    .line 1972
    const-string/jumbo v22, "sessionStateMap: ITvInputSession -> SessionState"

    #@3ce
    move-object/from16 v0, v22

    #@3d0
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@3d3
    .line 1973
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@3d6
    .line 1975
    invoke-static/range {v21 .. v21}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@3d9
    move-result-object v22

    #@3da
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@3dd
    move-result-object v22

    #@3de
    .line 1974
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3e1
    move-result-object v11

    #@3e2
    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@3e5
    move-result v22

    #@3e6
    if-eqz v22, :cond_8

    #@3e8
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3eb
    move-result-object v9

    #@3ec
    check-cast v9, Ljava/util/Map$Entry;

    #@3ee
    .line 1976
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$SessionState;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3f1
    move-result-object v17

    #@3f2
    check-cast v17, Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@3f4
    .line 1977
    .local v17, "session":Lcom/android/server/tv/TvInputManagerService$SessionState;
    new-instance v22, Ljava/lang/StringBuilder;

    #@3f6
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@3f9
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3fc
    move-result-object v24

    #@3fd
    move-object/from16 v0, v22

    #@3ff
    move-object/from16 v1, v24

    #@401
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@404
    move-result-object v22

    #@405
    const-string/jumbo v24, ": "

    #@408
    move-object/from16 v0, v22

    #@40a
    move-object/from16 v1, v24

    #@40c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40f
    move-result-object v22

    #@410
    move-object/from16 v0, v22

    #@412
    move-object/from16 v1, v17

    #@414
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@417
    move-result-object v22

    #@418
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41b
    move-result-object v22

    #@41c
    move-object/from16 v0, v22

    #@41e
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@421
    .line 1979
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@424
    .line 1980
    new-instance v22, Ljava/lang/StringBuilder;

    #@426
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@429
    const-string/jumbo v24, "inputId: "

    #@42c
    move-object/from16 v0, v22

    #@42e
    move-object/from16 v1, v24

    #@430
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@433
    move-result-object v22

    #@434
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get4(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    #@437
    move-result-object v24

    #@438
    move-object/from16 v0, v22

    #@43a
    move-object/from16 v1, v24

    #@43c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43f
    move-result-object v22

    #@440
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@443
    move-result-object v22

    #@444
    move-object/from16 v0, v22

    #@446
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@449
    .line 1981
    new-instance v22, Ljava/lang/StringBuilder;

    #@44b
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@44e
    const-string/jumbo v24, "client: "

    #@451
    move-object/from16 v0, v22

    #@453
    move-object/from16 v1, v24

    #@455
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@458
    move-result-object v22

    #@459
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    #@45c
    move-result-object v24

    #@45d
    move-object/from16 v0, v22

    #@45f
    move-object/from16 v1, v24

    #@461
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@464
    move-result-object v22

    #@465
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@468
    move-result-object v22

    #@469
    move-object/from16 v0, v22

    #@46b
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@46e
    .line 1982
    new-instance v22, Ljava/lang/StringBuilder;

    #@470
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@473
    const-string/jumbo v24, "seq: "

    #@476
    move-object/from16 v0, v22

    #@478
    move-object/from16 v1, v24

    #@47a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47d
    move-result-object v22

    #@47e
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get7(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@481
    move-result v24

    #@482
    move-object/from16 v0, v22

    #@484
    move/from16 v1, v24

    #@486
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@489
    move-result-object v22

    #@48a
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48d
    move-result-object v22

    #@48e
    move-object/from16 v0, v22

    #@490
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@493
    .line 1983
    new-instance v22, Ljava/lang/StringBuilder;

    #@495
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@498
    const-string/jumbo v24, "callingUid: "

    #@49b
    move-object/from16 v0, v22

    #@49d
    move-object/from16 v1, v24

    #@49f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a2
    move-result-object v22

    #@4a3
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get0(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@4a6
    move-result v24

    #@4a7
    move-object/from16 v0, v22

    #@4a9
    move/from16 v1, v24

    #@4ab
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4ae
    move-result-object v22

    #@4af
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b2
    move-result-object v22

    #@4b3
    move-object/from16 v0, v22

    #@4b5
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@4b8
    .line 1984
    new-instance v22, Ljava/lang/StringBuilder;

    #@4ba
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@4bd
    const-string/jumbo v24, "userId: "

    #@4c0
    move-object/from16 v0, v22

    #@4c2
    move-object/from16 v1, v24

    #@4c4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c7
    move-result-object v22

    #@4c8
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get10(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@4cb
    move-result v24

    #@4cc
    move-object/from16 v0, v22

    #@4ce
    move/from16 v1, v24

    #@4d0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d3
    move-result-object v22

    #@4d4
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d7
    move-result-object v22

    #@4d8
    move-object/from16 v0, v22

    #@4da
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@4dd
    .line 1985
    new-instance v22, Ljava/lang/StringBuilder;

    #@4df
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@4e2
    const-string/jumbo v24, "sessionToken: "

    #@4e5
    move-object/from16 v0, v22

    #@4e7
    move-object/from16 v1, v24

    #@4e9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ec
    move-result-object v22

    #@4ed
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get9(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@4f0
    move-result-object v24

    #@4f1
    move-object/from16 v0, v22

    #@4f3
    move-object/from16 v1, v24

    #@4f5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f8
    move-result-object v22

    #@4f9
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4fc
    move-result-object v22

    #@4fd
    move-object/from16 v0, v22

    #@4ff
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@502
    .line 1986
    new-instance v22, Ljava/lang/StringBuilder;

    #@504
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@507
    const-string/jumbo v24, "session: "

    #@50a
    move-object/from16 v0, v22

    #@50c
    move-object/from16 v1, v24

    #@50e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@511
    move-result-object v22

    #@512
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get8(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@515
    move-result-object v24

    #@516
    move-object/from16 v0, v22

    #@518
    move-object/from16 v1, v24

    #@51a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51d
    move-result-object v22

    #@51e
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@521
    move-result-object v22

    #@522
    move-object/from16 v0, v22

    #@524
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@527
    .line 1987
    new-instance v22, Ljava/lang/StringBuilder;

    #@529
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@52c
    const-string/jumbo v24, "logUri: "

    #@52f
    move-object/from16 v0, v22

    #@531
    move-object/from16 v1, v24

    #@533
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@536
    move-result-object v22

    #@537
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get6(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/net/Uri;

    #@53a
    move-result-object v24

    #@53b
    move-object/from16 v0, v22

    #@53d
    move-object/from16 v1, v24

    #@53f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@542
    move-result-object v22

    #@543
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@546
    move-result-object v22

    #@547
    move-object/from16 v0, v22

    #@549
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@54c
    .line 1988
    new-instance v22, Ljava/lang/StringBuilder;

    #@54e
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@551
    const-string/jumbo v24, "hardwareSessionToken: "

    #@554
    move-object/from16 v0, v22

    #@556
    move-object/from16 v1, v24

    #@558
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55b
    move-result-object v22

    #@55c
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@55f
    move-result-object v24

    #@560
    move-object/from16 v0, v22

    #@562
    move-object/from16 v1, v24

    #@564
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@567
    move-result-object v22

    #@568
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56b
    move-result-object v22

    #@56c
    move-object/from16 v0, v22

    #@56e
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@571
    .line 1989
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@574
    goto/16 :goto_8

    #@576
    .line 1991
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$SessionState;>;"
    .end local v17    # "session":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_8
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@579
    .line 1993
    const-string/jumbo v22, "callbackSet:"

    #@57c
    move-object/from16 v0, v22

    #@57e
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@581
    .line 1994
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@584
    .line 1995
    invoke-static/range {v21 .. v21}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get0(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    #@587
    move-result-object v22

    #@588
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@58b
    move-result-object v5

    #@58c
    .local v5, "callback$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@58f
    move-result v22

    #@590
    if-eqz v22, :cond_9

    #@592
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@595
    move-result-object v4

    #@596
    check-cast v4, Landroid/media/tv/ITvInputManagerCallback;

    #@598
    .line 1996
    .local v4, "callback":Landroid/media/tv/ITvInputManagerCallback;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@59b
    move-result-object v22

    #@59c
    move-object/from16 v0, v22

    #@59e
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@5a1
    goto :goto_9

    #@5a2
    .line 1998
    .end local v4    # "callback":Landroid/media/tv/ITvInputManagerCallback;
    :cond_9
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@5a5
    .line 2000
    new-instance v22, Ljava/lang/StringBuilder;

    #@5a7
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@5aa
    const-string/jumbo v24, "mainSessionToken: "

    #@5ad
    move-object/from16 v0, v22

    #@5af
    move-object/from16 v1, v24

    #@5b1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b4
    move-result-object v22

    #@5b5
    invoke-static/range {v21 .. v21}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get4(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    #@5b8
    move-result-object v24

    #@5b9
    move-object/from16 v0, v22

    #@5bb
    move-object/from16 v1, v24

    #@5bd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5c0
    move-result-object v22

    #@5c1
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c4
    move-result-object v22

    #@5c5
    move-object/from16 v0, v22

    #@5c7
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@5ca
    .line 2001
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5cd
    .line 1904
    add-int/lit8 v12, v12, 0x1

    #@5cf
    goto/16 :goto_1

    #@5d1
    .end local v5    # "callback$iterator":Ljava/util/Iterator;
    .end local v11    # "entry$iterator":Ljava/util/Iterator;
    .end local v14    # "packageName$iterator":Ljava/util/Iterator;
    .end local v20    # "userId":I
    .end local v21    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_a
    monitor-exit v23

    #@5d2
    .line 2004
    move-object/from16 v0, p0

    #@5d4
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@5d6
    move-object/from16 v22, v0

    #@5d8
    invoke-static/range {v22 .. v22}, Lcom/android/server/tv/TvInputManagerService;->-get3(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    #@5db
    move-result-object v22

    #@5dc
    move-object/from16 v0, v22

    #@5de
    move-object/from16 v1, p1

    #@5e0
    move-object/from16 v2, p2

    #@5e2
    move-object/from16 v3, p3

    #@5e4
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/tv/TvInputHardwareManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@5e7
    .line 1886
    return-void
.end method

.method public getAvailableTvStreamConfigList(Ljava/lang/String;I)Ljava/util/List;
    .locals 7
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvStreamConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1800
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    #@5
    move-result-object v4

    #@6
    .line 1801
    const-string/jumbo v5, "android.permission.CAPTURE_TV_INPUT"

    #@9
    .line 1800
    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_0

    #@f
    .line 1803
    new-instance v4, Ljava/lang/SecurityException;

    #@11
    const-string/jumbo v5, "Requires CAPTURE_TV_INPUT permission"

    #@14
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@17
    throw v4

    #@18
    .line 1806
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1b
    move-result-wide v2

    #@1c
    .line 1807
    .local v2, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1f
    move-result v0

    #@20
    .line 1808
    .local v0, "callingUid":I
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@22
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@25
    move-result v5

    #@26
    .line 1809
    const-string/jumbo v6, "getAvailableTvStreamConfigList"

    #@29
    .line 1808
    invoke-static {v4, v5, v0, p2, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@2c
    move-result v1

    #@2d
    .line 1811
    .local v1, "resolvedUserId":I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2f
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get3(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4, p1, v0, v1}, Lcom/android/server/tv/TvInputHardwareManager;->getAvailableTvStreamConfigList(Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    move-result-object v4

    #@37
    .line 1814
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3a
    .line 1811
    return-object v4

    #@3b
    .line 1813
    :catchall_0
    move-exception v4

    #@3c
    .line 1814
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3f
    .line 1813
    throw v4
.end method

.method public getBlockedRatings(I)Ljava/util/List;
    .locals 11
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1069
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@5
    move-result v7

    #@6
    .line 1070
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v8

    #@a
    const-string/jumbo v9, "getBlockedRatings"

    #@d
    .line 1069
    invoke-static {v6, v7, v8, p1, v9}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v4

    #@11
    .line 1071
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v0

    #@15
    .line 1073
    .local v0, "identity":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@17
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1a
    move-result-object v7

    #@1b
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    .line 1074
    :try_start_1
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v6, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@21
    move-result-object v5

    #@22
    .line 1075
    .local v5, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v3, Ljava/util/ArrayList;

    #@24
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@27
    .line 1077
    .local v3, "ratings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get6(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v6}, Lcom/android/server/tv/PersistentDataStore;->getBlockedRatings()[Landroid/media/tv/TvContentRating;

    #@2e
    move-result-object v8

    #@2f
    .line 1076
    const/4 v6, 0x0

    #@30
    array-length v9, v8

    #@31
    :goto_0
    if-ge v6, v9, :cond_0

    #@33
    aget-object v2, v8, v6

    #@35
    .line 1078
    .local v2, "rating":Landroid/media/tv/TvContentRating;
    invoke-virtual {v2}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    #@38
    move-result-object v10

    #@39
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    .line 1076
    add-int/lit8 v6, v6, 0x1

    #@3e
    goto :goto_0

    #@3f
    .end local v2    # "rating":Landroid/media/tv/TvContentRating;
    :cond_0
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@40
    .line 1083
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@43
    .line 1080
    return-object v3

    #@44
    .line 1073
    .end local v3    # "ratings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v6

    #@45
    :try_start_3
    monitor-exit v7

    #@46
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@47
    .line 1082
    :catchall_1
    move-exception v6

    #@48
    .line 1083
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4b
    .line 1082
    throw v6
.end method

.method public getDvbDeviceList()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/DvbDeviceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1731
    iget-object v9, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@3
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    #@6
    move-result-object v9

    #@7
    const-string/jumbo v10, "android.permission.DVB_DEVICE"

    #@a
    invoke-virtual {v9, v10}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@d
    move-result v9

    #@e
    if-eqz v9, :cond_0

    #@10
    .line 1733
    new-instance v8, Ljava/lang/SecurityException;

    #@12
    const-string/jumbo v9, "Requires DVB_DEVICE permission"

    #@15
    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@18
    throw v8

    #@19
    .line 1736
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1c
    move-result-wide v6

    #@1d
    .line 1738
    .local v6, "identity":J
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    #@1f
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@22
    .line 1739
    .local v3, "deviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/tv/DvbDeviceInfo;>;"
    new-instance v1, Ljava/io/File;

    #@24
    const-string/jumbo v9, "/dev"

    #@27
    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@2a
    .line 1740
    .local v1, "devDirectory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    #@2d
    move-result-object v9

    #@2e
    array-length v10, v9

    #@2f
    :goto_0
    if-ge v8, v10, :cond_2

    #@31
    aget-object v4, v9, v8

    #@33
    .line 1741
    .local v4, "fileName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/tv/TvInputManagerService;->-get6()Ljava/util/regex/Pattern;

    #@36
    move-result-object v11

    #@37
    invoke-virtual {v11, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@3a
    move-result-object v5

    #@3b
    .line 1742
    .local v5, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    #@3e
    move-result v11

    #@3f
    if-eqz v11, :cond_1

    #@41
    .line 1743
    const/4 v11, 0x1

    #@42
    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@45
    move-result-object v11

    #@46
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@49
    move-result v0

    #@4a
    .line 1744
    .local v0, "adapterId":I
    const/4 v11, 0x2

    #@4b
    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@4e
    move-result-object v11

    #@4f
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@52
    move-result v2

    #@53
    .line 1745
    .local v2, "deviceId":I
    new-instance v11, Landroid/media/tv/DvbDeviceInfo;

    #@55
    invoke-direct {v11, v0, v2}, Landroid/media/tv/DvbDeviceInfo;-><init>(II)V

    #@58
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5b
    .line 1740
    .end local v0    # "adapterId":I
    .end local v2    # "deviceId":I
    :cond_1
    add-int/lit8 v8, v8, 0x1

    #@5d
    goto :goto_0

    #@5e
    .line 1748
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@61
    move-result-object v8

    #@62
    .line 1750
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@65
    .line 1748
    return-object v8

    #@66
    .line 1749
    .end local v1    # "devDirectory":Ljava/io/File;
    .end local v3    # "deviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/tv/DvbDeviceInfo;>;"
    :catchall_0
    move-exception v8

    #@67
    .line 1750
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@6a
    .line 1749
    throw v8
.end method

.method public getHardwareList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1675
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    const-string/jumbo v3, "android.permission.TV_INPUT_HARDWARE"

    #@9
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 1677
    const/4 v2, 0x0

    #@10
    return-object v2

    #@11
    .line 1680
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v0

    #@15
    .line 1682
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@17
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-get3(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Lcom/android/server/tv/TvInputHardwareManager;->getHardwareList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-object v2

    #@1f
    .line 1684
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22
    .line 1682
    return-object v2

    #@23
    .line 1683
    :catchall_0
    move-exception v2

    #@24
    .line 1684
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@27
    .line 1683
    throw v2
.end method

.method public getTvContentRatingSystemList(I)Ljava/util/List;
    .locals 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvContentRatingSystemInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 963
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@5
    move-result v5

    #@6
    .line 964
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v6

    #@a
    const-string/jumbo v7, "getTvContentRatingSystemList"

    #@d
    .line 963
    invoke-static {v4, v5, v6, p1, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v2

    #@11
    .line 965
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v0

    #@15
    .line 967
    .local v0, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@17
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1a
    move-result-object v5

    #@1b
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    .line 968
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@21
    move-result-object v3

    #@22
    .line 969
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get2(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    move-result-object v4

    #@26
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@27
    .line 972
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a
    .line 969
    return-object v4

    #@2b
    .line 967
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v4

    #@2c
    :try_start_3
    monitor-exit v5

    #@2d
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@2e
    .line 971
    :catchall_1
    move-exception v4

    #@2f
    .line 972
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@32
    .line 971
    throw v4
.end method

.method public getTvInputInfo(Ljava/lang/String;I)Landroid/media/tv/TvInputInfo;
    .locals 10
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 901
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@6
    move-result v7

    #@7
    .line 902
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@a
    move-result v8

    #@b
    const-string/jumbo v9, "getTvInputInfo"

    #@e
    .line 901
    invoke-static {v6, v7, v8, p2, v9}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@11
    move-result v2

    #@12
    .line 903
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@15
    move-result-wide v0

    #@16
    .line 905
    .local v0, "identity":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@18
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1b
    move-result-object v6

    #@1c
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1d
    .line 906
    :try_start_1
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1f
    invoke-static {v7, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@22
    move-result-object v4

    #@23
    .line 907
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@26
    move-result-object v7

    #@27
    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v3

    #@2b
    check-cast v3, Lcom/android/server/tv/TvInputManagerService$TvInputState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    .line 908
    .local v3, "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v3, :cond_0

    #@2f
    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@30
    .line 911
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@33
    .line 908
    return-object v5

    #@34
    :cond_0
    :try_start_3
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-get0(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@37
    move-result-object v5

    #@38
    goto :goto_0

    #@39
    .line 905
    .end local v3    # "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v5

    #@3a
    :try_start_4
    monitor-exit v6

    #@3b
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@3c
    .line 910
    :catchall_1
    move-exception v5

    #@3d
    .line 911
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@40
    .line 910
    throw v5
.end method

.method public getTvInputList(I)Ljava/util/List;
    .locals 11
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvInputInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 882
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@5
    move-result v8

    #@6
    .line 883
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v9

    #@a
    const-string/jumbo v10, "getTvInputList"

    #@d
    .line 882
    invoke-static {v7, v8, v9, p1, v10}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v3

    #@11
    .line 884
    .local v3, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v0

    #@15
    .line 886
    .local v0, "identity":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@17
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1a
    move-result-object v8

    #@1b
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    .line 887
    :try_start_1
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v7, v3}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@21
    move-result-object v6

    #@22
    .line 888
    .local v6, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v2, Ljava/util/ArrayList;

    #@24
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@27
    .line 889
    .local v2, "inputList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@2a
    move-result-object v7

    #@2b
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@2e
    move-result-object v7

    #@2f
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@32
    move-result-object v5

    #@33
    .local v5, "state$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@36
    move-result v7

    #@37
    if-eqz v7, :cond_0

    #@39
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3c
    move-result-object v4

    #@3d
    check-cast v4, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    #@3f
    .line 890
    .local v4, "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-get0(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    #@42
    move-result-object v7

    #@43
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    goto :goto_0

    #@47
    .line 886
    .end local v2    # "inputList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    .end local v4    # "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .end local v5    # "state$iterator":Ljava/util/Iterator;
    .end local v6    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v7

    #@48
    :try_start_2
    monitor-exit v8

    #@49
    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@4a
    .line 894
    :catchall_1
    move-exception v7

    #@4b
    .line 895
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4e
    .line 894
    throw v7

    #@4f
    .restart local v2    # "inputList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    .restart local v5    # "state$iterator":Ljava/util/Iterator;
    .restart local v6    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_0
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@50
    .line 895
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@53
    .line 892
    return-object v2
.end method

.method public getTvInputState(Ljava/lang/String;I)I
    .locals 9
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 947
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@5
    move-result v6

    #@6
    .line 948
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v7

    #@a
    const-string/jumbo v8, "getTvInputState"

    #@d
    .line 947
    invoke-static {v5, v6, v7, p2, v8}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v2

    #@11
    .line 949
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v0

    #@15
    .line 951
    .local v0, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@17
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1a
    move-result-object v6

    #@1b
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    .line 952
    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v5, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@21
    move-result-object v4

    #@22
    .line 953
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@25
    move-result-object v5

    #@26
    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move-result-object v3

    #@2a
    check-cast v3, Lcom/android/server/tv/TvInputManagerService$TvInputState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    .line 954
    .local v3, "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v3, :cond_0

    #@2e
    const/4 v5, 0x0

    #@2f
    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@30
    .line 957
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@33
    .line 954
    return v5

    #@34
    :cond_0
    :try_start_3
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-get1(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@37
    move-result v5

    #@38
    goto :goto_0

    #@39
    .line 951
    .end local v3    # "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v5

    #@3a
    :try_start_4
    monitor-exit v6

    #@3b
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@3c
    .line 956
    :catchall_1
    move-exception v5

    #@3d
    .line 957
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@40
    .line 956
    throw v5
.end method

.method public isParentalControlsEnabled(I)Z
    .locals 8
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1022
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@5
    move-result v5

    #@6
    .line 1023
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v6

    #@a
    const-string/jumbo v7, "isParentalControlsEnabled"

    #@d
    .line 1022
    invoke-static {v4, v5, v6, p1, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v2

    #@11
    .line 1024
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v0

    #@15
    .line 1026
    .local v0, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@17
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1a
    move-result-object v5

    #@1b
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    .line 1027
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@21
    move-result-object v3

    #@22
    .line 1028
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get6(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4}, Lcom/android/server/tv/PersistentDataStore;->isParentalControlsEnabled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    move-result v4

    #@2a
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2b
    .line 1031
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2e
    .line 1028
    return v4

    #@2f
    .line 1026
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v4

    #@30
    :try_start_3
    monitor-exit v5

    #@31
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@32
    .line 1030
    :catchall_1
    move-exception v4

    #@33
    .line 1031
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@36
    .line 1030
    throw v4
.end method

.method public isRatingBlocked(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "rating"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1053
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@5
    move-result v5

    #@6
    .line 1054
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v6

    #@a
    const-string/jumbo v7, "isRatingBlocked"

    #@d
    .line 1053
    invoke-static {v4, v5, v6, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v2

    #@11
    .line 1055
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v0

    #@15
    .line 1057
    .local v0, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@17
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1a
    move-result-object v5

    #@1b
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    .line 1058
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@21
    move-result-object v3

    #@22
    .line 1059
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get6(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    #@25
    move-result-object v4

    #@26
    .line 1060
    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    #@29
    move-result-object v6

    #@2a
    .line 1059
    invoke-virtual {v4, v6}, Lcom/android/server/tv/PersistentDataStore;->isRatingBlocked(Landroid/media/tv/TvContentRating;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    move-result v4

    #@2e
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2f
    .line 1063
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@32
    .line 1059
    return v4

    #@33
    .line 1057
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v4

    #@34
    :try_start_3
    monitor-exit v5

    #@35
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@36
    .line 1062
    :catchall_1
    move-exception v4

    #@37
    .line 1063
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3a
    .line 1062
    throw v4
.end method

.method public isSingleSessionActive(I)Z
    .locals 12
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x2

    #@1
    const/4 v10, 0x0

    #@2
    const/4 v9, 0x1

    #@3
    .line 1859
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@6
    move-result-wide v2

    #@7
    .line 1860
    .local v2, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@a
    move-result v0

    #@b
    .line 1861
    .local v0, "callingUid":I
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@d
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@10
    move-result v7

    #@11
    .line 1862
    const-string/jumbo v8, "isSingleSessionActive"

    #@14
    .line 1861
    invoke-static {v6, v7, v0, p1, v8}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@17
    move-result v1

    #@18
    .line 1864
    .local v1, "resolvedUserId":I
    :try_start_0
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1a
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1d
    move-result-object v7

    #@1e
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1f
    .line 1865
    :try_start_1
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@21
    invoke-static {v6, v1}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@24
    move-result-object v5

    #@25
    .line 1866
    .local v5, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@28
    move-result-object v6

    #@29
    invoke-interface {v6}, Ljava/util/Map;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    move-result v6

    #@2d
    if-ne v6, v9, :cond_0

    #@2f
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@30
    .line 1880
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@33
    .line 1867
    return v9

    #@34
    .line 1868
    :cond_0
    :try_start_3
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@37
    move-result-object v6

    #@38
    invoke-interface {v6}, Ljava/util/Map;->size()I

    #@3b
    move-result v6

    #@3c
    if-ne v6, v11, :cond_2

    #@3e
    .line 1869
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@41
    move-result-object v6

    #@42
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@45
    move-result-object v6

    #@46
    .line 1870
    const/4 v8, 0x2

    #@47
    new-array v8, v8, [Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@49
    .line 1869
    invoke-interface {v6, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@4c
    move-result-object v4

    #@4d
    check-cast v4, [Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@4f
    .line 1872
    .local v4, "sessionStates":[Lcom/android/server/tv/TvInputManagerService$SessionState;
    const/4 v6, 0x0

    #@50
    aget-object v6, v4, v6

    #@52
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@55
    move-result-object v6

    #@56
    if-nez v6, :cond_1

    #@58
    .line 1873
    const/4 v6, 0x1

    #@59
    aget-object v6, v4, v6

    #@5b
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5e
    move-result-object v6

    #@5f
    if-eqz v6, :cond_2

    #@61
    :cond_1
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@62
    .line 1880
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@65
    .line 1874
    return v9

    #@66
    .end local v4    # "sessionStates":[Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_2
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@67
    .line 1880
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@6a
    .line 1877
    return v10

    #@6b
    .line 1864
    .end local v5    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v6

    #@6c
    :try_start_6
    monitor-exit v7

    #@6d
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@6e
    .line 1879
    :catchall_1
    move-exception v6

    #@6f
    .line 1880
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@72
    .line 1879
    throw v6
.end method

.method public openDvbDevice(Landroid/media/tv/DvbDeviceInfo;I)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "info"    # Landroid/media/tv/DvbDeviceInfo;
    .param p2, "device"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    .line 1757
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@3
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    #@6
    move-result-object v4

    #@7
    const-string/jumbo v5, "android.permission.DVB_DEVICE"

    #@a
    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_0

    #@10
    .line 1759
    new-instance v4, Ljava/lang/SecurityException;

    #@12
    const-string/jumbo v5, "Requires DVB_DEVICE permission"

    #@15
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@18
    throw v4

    #@19
    .line 1762
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1c
    move-result-wide v2

    #@1d
    .line 1765
    .local v2, "identity":J
    packed-switch p2, :pswitch_data_0

    #@20
    .line 1779
    :try_start_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@22
    new-instance v5, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v6, "Invalid DVB device: "

    #@2a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    .line 1792
    :catchall_0
    move-exception v4

    #@3b
    .line 1793
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3e
    .line 1792
    throw v4

    #@3f
    .line 1767
    :pswitch_0
    :try_start_1
    const-string/jumbo v4, "/dev/dvb%d.demux%d"

    #@42
    const/4 v5, 0x2

    #@43
    new-array v5, v5, [Ljava/lang/Object;

    #@45
    invoke-virtual {p1}, Landroid/media/tv/DvbDeviceInfo;->getAdapterId()I

    #@48
    move-result v6

    #@49
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c
    move-result-object v6

    #@4d
    const/4 v7, 0x0

    #@4e
    aput-object v6, v5, v7

    #@50
    .line 1768
    invoke-virtual {p1}, Landroid/media/tv/DvbDeviceInfo;->getDeviceId()I

    #@53
    move-result v6

    #@54
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@57
    move-result-object v6

    #@58
    const/4 v7, 0x1

    #@59
    aput-object v6, v5, v7

    #@5b
    .line 1767
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5e
    move-result-object v0

    #@5f
    .line 1785
    .local v0, "deviceFileName":Ljava/lang/String;
    :goto_0
    :try_start_2
    new-instance v5, Ljava/io/File;

    #@61
    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@64
    .line 1786
    if-ne v8, p2, :cond_1

    #@66
    .line 1787
    const/high16 v4, 0x30000000

    #@68
    .line 1785
    :goto_1
    invoke-static {v5, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6b
    move-result-object v4

    #@6c
    .line 1793
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@6f
    .line 1785
    return-object v4

    #@70
    .line 1771
    .end local v0    # "deviceFileName":Ljava/lang/String;
    :pswitch_1
    :try_start_3
    const-string/jumbo v4, "/dev/dvb%d.dvr%d"

    #@73
    const/4 v5, 0x2

    #@74
    new-array v5, v5, [Ljava/lang/Object;

    #@76
    invoke-virtual {p1}, Landroid/media/tv/DvbDeviceInfo;->getAdapterId()I

    #@79
    move-result v6

    #@7a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7d
    move-result-object v6

    #@7e
    const/4 v7, 0x0

    #@7f
    aput-object v6, v5, v7

    #@81
    .line 1772
    invoke-virtual {p1}, Landroid/media/tv/DvbDeviceInfo;->getDeviceId()I

    #@84
    move-result v6

    #@85
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@88
    move-result-object v6

    #@89
    const/4 v7, 0x1

    #@8a
    aput-object v6, v5, v7

    #@8c
    .line 1771
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@8f
    move-result-object v0

    #@90
    .restart local v0    # "deviceFileName":Ljava/lang/String;
    goto :goto_0

    #@91
    .line 1775
    .end local v0    # "deviceFileName":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v4, "/dev/dvb%d.frontend%d"

    #@94
    const/4 v5, 0x2

    #@95
    new-array v5, v5, [Ljava/lang/Object;

    #@97
    invoke-virtual {p1}, Landroid/media/tv/DvbDeviceInfo;->getAdapterId()I

    #@9a
    move-result v6

    #@9b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9e
    move-result-object v6

    #@9f
    const/4 v7, 0x0

    #@a0
    aput-object v6, v5, v7

    #@a2
    .line 1776
    invoke-virtual {p1}, Landroid/media/tv/DvbDeviceInfo;->getDeviceId()I

    #@a5
    move-result v6

    #@a6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a9
    move-result-object v6

    #@aa
    const/4 v7, 0x1

    #@ab
    aput-object v6, v5, v7

    #@ad
    .line 1775
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@b0
    move-result-object v0

    #@b1
    .restart local v0    # "deviceFileName":Ljava/lang/String;
    goto :goto_0

    #@b2
    .line 1788
    :cond_1
    const/high16 v4, 0x10000000

    #@b4
    goto :goto_1

    #@b5
    .line 1789
    :catch_0
    move-exception v1

    #@b6
    .line 1790
    .local v1, "e":Ljava/io/FileNotFoundException;
    const/4 v4, 0x0

    #@b7
    .line 1793
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ba
    .line 1790
    return-object v4

    #@bb
    .line 1765
    nop

    #@bc
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public registerCallback(Landroid/media/tv/ITvInputManagerCallback;I)V
    .locals 9
    .param p1, "callback"    # Landroid/media/tv/ITvInputManagerCallback;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 978
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@5
    move-result v6

    #@6
    .line 979
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v7

    #@a
    const-string/jumbo v8, "registerCallback"

    #@d
    .line 978
    invoke-static {v5, v6, v7, p2, v8}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v1

    #@11
    .line 980
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 982
    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@17
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1a
    move-result-object v6

    #@1b
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    .line 983
    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v5, v1}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@21
    move-result-object v4

    #@22
    .line 984
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get0(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    #@25
    move-result-object v5

    #@26
    invoke-interface {v5, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    .line 986
    :try_start_2
    invoke-interface {p1}, Landroid/media/tv/ITvInputManagerCallback;->asBinder()Landroid/os/IBinder;

    #@2c
    move-result-object v5

    #@2d
    new-instance v7, Lcom/android/server/tv/TvInputManagerService$BinderService$1;

    #@2f
    invoke-direct {v7, p0, v4, p1}, Lcom/android/server/tv/TvInputManagerService$BinderService$1;-><init>(Lcom/android/server/tv/TvInputManagerService$BinderService;Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/ITvInputManagerCallback;)V

    #@32
    .line 995
    const/4 v8, 0x0

    #@33
    .line 986
    invoke-interface {v5, v7, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@36
    :goto_0
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@37
    .line 1001
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3a
    .line 977
    return-void

    #@3b
    .line 996
    :catch_0
    move-exception v0

    #@3c
    .line 997
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v5, "TvInputManagerService"

    #@3f
    const-string/jumbo v7, "client process has already died"

    #@42
    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@45
    goto :goto_0

    #@46
    .line 982
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v5

    #@47
    :try_start_5
    monitor-exit v6

    #@48
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@49
    .line 1000
    :catchall_1
    move-exception v5

    #@4a
    .line 1001
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4d
    .line 1000
    throw v5
.end method

.method public relayoutOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "frame"    # Landroid/graphics/Rect;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1475
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1476
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v6

    #@a
    .line 1477
    const-string/jumbo v7, "relayoutOverlayView"

    #@d
    .line 1476
    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v4

    #@11
    .line 1478
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 1480
    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@17
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1a
    move-result-object v6

    #@1b
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    .line 1482
    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    #@21
    move-result-object v5

    #@22
    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->relayoutOverlayView(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    .line 1489
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 1474
    return-void

    #@2a
    .line 1484
    :catch_0
    move-exception v1

    #@2b
    .line 1485
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v5, "TvInputManagerService"

    #@2e
    const-string/jumbo v7, "error in relayoutOverlayView"

    #@31
    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 1480
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@36
    :try_start_4
    monitor-exit v6

    #@37
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@38
    .line 1488
    :catchall_1
    move-exception v5

    #@39
    .line 1489
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 1488
    throw v5
.end method

.method public releaseSession(Landroid/os/IBinder;I)V
    .locals 7
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1194
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1195
    .local v0, "callingUid":I
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v5

    #@a
    .line 1196
    const-string/jumbo v6, "releaseSession"

    #@d
    .line 1195
    invoke-static {v4, v5, v0, p2, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v1

    #@11
    .line 1197
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 1199
    .local v2, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@17
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1a
    move-result-object v5

    #@1b
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    .line 1200
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v4, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->-wrap14(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@22
    .line 1203
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@25
    .line 1190
    return-void

    #@26
    .line 1199
    :catchall_0
    move-exception v4

    #@27
    :try_start_3
    monitor-exit v5

    #@28
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@29
    .line 1202
    :catchall_1
    move-exception v4

    #@2a
    .line 1203
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2d
    .line 1202
    throw v4
.end method

.method public releaseTvInputHardware(ILandroid/media/tv/ITvInputHardware;I)V
    .locals 7
    .param p1, "deviceId"    # I
    .param p2, "hardware"    # Landroid/media/tv/ITvInputHardware;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1712
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    #@5
    move-result-object v4

    #@6
    const-string/jumbo v5, "android.permission.TV_INPUT_HARDWARE"

    #@9
    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_0

    #@f
    .line 1714
    return-void

    #@10
    .line 1717
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@13
    move-result-wide v2

    #@14
    .line 1718
    .local v2, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@17
    move-result v0

    #@18
    .line 1719
    .local v0, "callingUid":I
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1a
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1d
    move-result v5

    #@1e
    .line 1720
    const-string/jumbo v6, "releaseTvInputHardware"

    #@21
    .line 1719
    invoke-static {v4, v5, v0, p3, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@24
    move-result v1

    #@25
    .line 1722
    .local v1, "resolvedUserId":I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@27
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get3(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4, p1, p2, v0, v1}, Lcom/android/server/tv/TvInputHardwareManager;->releaseHardware(ILandroid/media/tv/ITvInputHardware;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 1725
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@31
    .line 1711
    return-void

    #@32
    .line 1724
    :catchall_0
    move-exception v4

    #@33
    .line 1725
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@36
    .line 1724
    throw v4
.end method

.method public removeBlockedRating(Ljava/lang/String;I)V
    .locals 8
    .param p1, "rating"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1106
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    #@3
    .line 1107
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@8
    move-result v5

    #@9
    .line 1108
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@c
    move-result v6

    #@d
    const-string/jumbo v7, "removeBlockedRating"

    #@10
    .line 1107
    invoke-static {v4, v5, v6, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@13
    move-result v2

    #@14
    .line 1109
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@17
    move-result-wide v0

    #@18
    .line 1111
    .local v0, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1a
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1d
    move-result-object v5

    #@1e
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1f
    .line 1112
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@21
    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@24
    move-result-object v3

    #@25
    .line 1113
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get6(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    #@28
    move-result-object v4

    #@29
    .line 1114
    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    #@2c
    move-result-object v6

    #@2d
    .line 1113
    invoke-virtual {v4, v6}, Lcom/android/server/tv/PersistentDataStore;->removeBlockedRating(Landroid/media/tv/TvContentRating;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@31
    .line 1117
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@34
    .line 1105
    return-void

    #@35
    .line 1111
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v4

    #@36
    :try_start_3
    monitor-exit v5

    #@37
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@38
    .line 1116
    :catchall_1
    move-exception v4

    #@39
    .line 1117
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 1116
    throw v4
.end method

.method public removeOverlayView(Landroid/os/IBinder;I)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1495
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1496
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v6

    #@a
    .line 1497
    const-string/jumbo v7, "removeOverlayView"

    #@d
    .line 1496
    invoke-static {v5, v6, v0, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v4

    #@11
    .line 1498
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 1500
    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@17
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1a
    move-result-object v6

    #@1b
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    .line 1502
    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    #@21
    move-result-object v5

    #@22
    invoke-interface {v5}, Landroid/media/tv/ITvInputSession;->removeOverlayView()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    .line 1509
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 1494
    return-void

    #@2a
    .line 1504
    :catch_0
    move-exception v1

    #@2b
    .line 1505
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v5, "TvInputManagerService"

    #@2e
    const-string/jumbo v7, "error in removeOverlayView"

    #@31
    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 1500
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@36
    :try_start_4
    monitor-exit v6

    #@37
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@38
    .line 1508
    :catchall_1
    move-exception v5

    #@39
    .line 1509
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 1508
    throw v5
.end method

.method public selectTrack(Landroid/os/IBinder;ILjava/lang/String;I)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "trackId"    # Ljava/lang/String;
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 1413
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1414
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v6

    #@a
    .line 1415
    const-string/jumbo v7, "selectTrack"

    #@d
    .line 1414
    invoke-static {v5, v6, v0, p4, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v4

    #@11
    .line 1416
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 1418
    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@17
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1a
    move-result-object v6

    #@1b
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    .line 1420
    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    #@21
    move-result-object v5

    #@22
    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->selectTrack(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    .line 1427
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 1412
    return-void

    #@2a
    .line 1422
    :catch_0
    move-exception v1

    #@2b
    .line 1423
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v5, "TvInputManagerService"

    #@2e
    const-string/jumbo v7, "error in selectTrack"

    #@31
    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 1418
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@36
    :try_start_4
    monitor-exit v6

    #@37
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@38
    .line 1426
    :catchall_1
    move-exception v5

    #@39
    .line 1427
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 1426
    throw v5
.end method

.method public sendAppPrivateCommand(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 1434
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1435
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v6

    #@a
    .line 1436
    const-string/jumbo v7, "sendAppPrivateCommand"

    #@d
    .line 1435
    invoke-static {v5, v6, v0, p4, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v4

    #@11
    .line 1437
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 1439
    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@17
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1a
    move-result-object v6

    #@1b
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    .line 1441
    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    #@21
    move-result-object v5

    #@22
    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    .line 1448
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 1433
    return-void

    #@2a
    .line 1443
    :catch_0
    move-exception v1

    #@2b
    .line 1444
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v5, "TvInputManagerService"

    #@2e
    const-string/jumbo v7, "error in appPrivateCommand"

    #@31
    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 1439
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@36
    :try_start_4
    monitor-exit v6

    #@37
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@38
    .line 1447
    :catchall_1
    move-exception v5

    #@39
    .line 1448
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 1447
    throw v5
.end method

.method public setCaptionEnabled(Landroid/os/IBinder;ZI)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1393
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1394
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v6

    #@a
    .line 1395
    const-string/jumbo v7, "setCaptionEnabled"

    #@d
    .line 1394
    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v4

    #@11
    .line 1396
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 1398
    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@17
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1a
    move-result-object v6

    #@1b
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    .line 1400
    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    #@21
    move-result-object v5

    #@22
    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->setCaptionEnabled(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    .line 1407
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 1392
    return-void

    #@2a
    .line 1402
    :catch_0
    move-exception v1

    #@2b
    .line 1403
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v5, "TvInputManagerService"

    #@2e
    const-string/jumbo v7, "error in setCaptionEnabled"

    #@31
    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 1398
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@36
    :try_start_4
    monitor-exit v6

    #@37
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@38
    .line 1406
    :catchall_1
    move-exception v5

    #@39
    .line 1407
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 1406
    throw v5
.end method

.method public setMainSession(Landroid/os/IBinder;I)V
    .locals 10
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1212
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1213
    .local v0, "callingUid":I
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v7

    #@a
    .line 1214
    const-string/jumbo v8, "setMainSession"

    #@d
    .line 1213
    invoke-static {v6, v7, v0, p2, v8}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v4

    #@11
    .line 1215
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 1217
    .local v2, "identity":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@17
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1a
    move-result-object v7

    #@1b
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    .line 1218
    :try_start_1
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v6, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@21
    move-result-object v5

    #@22
    .line 1219
    .local v5, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get4(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    move-result-object v6

    #@26
    if-ne v6, p1, :cond_0

    #@28
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@29
    .line 1238
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2c
    .line 1220
    return-void

    #@2d
    .line 1225
    :cond_0
    :try_start_3
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get4(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    #@30
    move-result-object v1

    #@31
    .line 1226
    .local v1, "oldMainSessionToken":Landroid/os/IBinder;
    invoke-static {v5, p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-set1(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;

    #@34
    .line 1230
    if-eqz p1, :cond_1

    #@36
    .line 1231
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@38
    const/4 v8, 0x1

    #@39
    invoke-static {v6, p1, v8, v0, p2}, Lcom/android/server/tv/TvInputManagerService;->-wrap18(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;ZII)V

    #@3c
    .line 1233
    :cond_1
    if-eqz v1, :cond_2

    #@3e
    .line 1234
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@40
    const/4 v8, 0x0

    #@41
    const/16 v9, 0x3e8

    #@43
    invoke-static {v6, v1, v8, v9, p2}, Lcom/android/server/tv/TvInputManagerService;->-wrap18(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;ZII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@46
    :cond_2
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@47
    .line 1238
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4a
    .line 1208
    return-void

    #@4b
    .line 1217
    .end local v1    # "oldMainSessionToken":Landroid/os/IBinder;
    .end local v5    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v6

    #@4c
    :try_start_5
    monitor-exit v7

    #@4d
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@4e
    .line 1237
    :catchall_1
    move-exception v6

    #@4f
    .line 1238
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@52
    .line 1237
    throw v6
.end method

.method public setParentalControlsEnabled(ZI)V
    .locals 8
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1037
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    #@3
    .line 1038
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@8
    move-result v5

    #@9
    .line 1039
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@c
    move-result v6

    #@d
    const-string/jumbo v7, "setParentalControlsEnabled"

    #@10
    .line 1038
    invoke-static {v4, v5, v6, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@13
    move-result v2

    #@14
    .line 1040
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@17
    move-result-wide v0

    #@18
    .line 1042
    .local v0, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1a
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1d
    move-result-object v5

    #@1e
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1f
    .line 1043
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@21
    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@24
    move-result-object v3

    #@25
    .line 1044
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get6(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4, p1}, Lcom/android/server/tv/PersistentDataStore;->setParentalControlsEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2d
    .line 1047
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@30
    .line 1036
    return-void

    #@31
    .line 1042
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v4

    #@32
    :try_start_3
    monitor-exit v5

    #@33
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@34
    .line 1046
    :catchall_1
    move-exception v4

    #@35
    .line 1047
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@38
    .line 1046
    throw v4
.end method

.method public setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V
    .locals 10
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1244
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1245
    .local v0, "callingUid":I
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v7

    #@a
    .line 1246
    const-string/jumbo v8, "setSurface"

    #@d
    .line 1245
    invoke-static {v6, v7, v0, p3, v8}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v4

    #@11
    .line 1247
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 1249
    .local v2, "identity":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@17
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1a
    move-result-object v7

    #@1b
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    .line 1251
    :try_start_1
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v6, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap5(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@21
    move-result-object v5

    #@22
    .line 1253
    .local v5, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@25
    move-result-object v6

    #@26
    if-nez v6, :cond_1

    #@28
    .line 1254
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2a
    invoke-static {v6, v5}, Lcom/android/server/tv/TvInputManagerService;->-wrap2(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@2d
    move-result-object v6

    #@2e
    invoke-interface {v6, p2}, Landroid/media/tv/ITvInputSession;->setSurface(Landroid/view/Surface;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    .end local v5    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :goto_0
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@32
    .line 1264
    if-eqz p2, :cond_0

    #@34
    .line 1266
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    #@37
    .line 1268
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3a
    .line 1243
    return-void

    #@3b
    .line 1256
    .restart local v5    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_1
    :try_start_3
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@3d
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@40
    move-result-object v8

    #@41
    .line 1257
    const/16 v9, 0x3e8

    #@43
    .line 1256
    invoke-static {v6, v8, v9, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    #@46
    move-result-object v6

    #@47
    invoke-interface {v6, p2}, Landroid/media/tv/ITvInputSession;->setSurface(Landroid/view/Surface;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4a
    goto :goto_0

    #@4b
    .line 1259
    .end local v5    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :catch_0
    move-exception v1

    #@4c
    .line 1260
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v6, "TvInputManagerService"

    #@4f
    const-string/jumbo v8, "error in setSurface"

    #@52
    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@55
    goto :goto_0

    #@56
    .line 1249
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    #@57
    :try_start_5
    monitor-exit v7

    #@58
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@59
    .line 1263
    :catchall_1
    move-exception v6

    #@5a
    .line 1264
    if-eqz p2, :cond_2

    #@5c
    .line 1266
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    #@5f
    .line 1268
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@62
    .line 1263
    throw v6
.end method

.method public setVolume(Landroid/os/IBinder;FI)V
    .locals 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "volume"    # F
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1301
    const/high16 v1, 0x3f800000    # 1.0f

    #@2
    .line 1302
    .local v1, "REMOTE_VOLUME_ON":F
    const/4 v0, 0x0

    #@3
    .line 1303
    .local v0, "REMOTE_VOLUME_OFF":F
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v2

    #@7
    .line 1304
    .local v2, "callingUid":I
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@c
    move-result v9

    #@d
    .line 1305
    const-string/jumbo v10, "setVolume"

    #@10
    .line 1304
    invoke-static {v8, v9, v2, p3, v10}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@13
    move-result v6

    #@14
    .line 1306
    .local v6, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@17
    move-result-wide v4

    #@18
    .line 1308
    .local v4, "identity":J
    :try_start_0
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1a
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1d
    move-result-object v9

    #@1e
    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1f
    .line 1310
    :try_start_1
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@21
    invoke-static {v8, p1, v2, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap5(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@24
    move-result-object v7

    #@25
    .line 1312
    .local v7, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@27
    invoke-static {v8, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap2(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@2a
    move-result-object v8

    #@2b
    invoke-interface {v8, p2}, Landroid/media/tv/ITvInputSession;->setVolume(F)V

    #@2e
    .line 1313
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@31
    move-result-object v8

    #@32
    if-eqz v8, :cond_0

    #@34
    .line 1316
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@36
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@39
    move-result-object v10

    #@3a
    .line 1317
    const/16 v11, 0x3e8

    #@3c
    .line 1316
    invoke-static {v8, v10, v11, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    #@3f
    move-result-object v10

    #@40
    .line 1317
    const/4 v8, 0x0

    #@41
    cmpl-float v8, p2, v8

    #@43
    if-lez v8, :cond_1

    #@45
    .line 1318
    const/high16 v8, 0x3f800000    # 1.0f

    #@47
    .line 1316
    :goto_0
    invoke-interface {v10, v8}, Landroid/media/tv/ITvInputSession;->setVolume(F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    .end local v7    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_0
    :goto_1
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@4b
    .line 1325
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4e
    .line 1300
    return-void

    #@4f
    .line 1318
    .restart local v7    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_1
    const/4 v8, 0x0

    #@50
    goto :goto_0

    #@51
    .line 1320
    .end local v7    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :catch_0
    move-exception v3

    #@52
    .line 1321
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v8, "TvInputManagerService"

    #@55
    const-string/jumbo v10, "error in setVolume"

    #@58
    invoke-static {v8, v10, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5b
    goto :goto_1

    #@5c
    .line 1308
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    #@5d
    :try_start_4
    monitor-exit v9

    #@5e
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@5f
    .line 1324
    :catchall_1
    move-exception v8

    #@60
    .line 1325
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@63
    .line 1324
    throw v8
.end method

.method public startRecording(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "programUri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1636
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1637
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v6

    #@a
    .line 1638
    const-string/jumbo v7, "startRecording"

    #@d
    .line 1637
    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v4

    #@11
    .line 1639
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 1641
    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@17
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1a
    move-result-object v6

    #@1b
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    .line 1643
    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    #@21
    move-result-object v5

    #@22
    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->startRecording(Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    .line 1650
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 1635
    return-void

    #@2a
    .line 1645
    :catch_0
    move-exception v1

    #@2b
    .line 1646
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v5, "TvInputManagerService"

    #@2e
    const-string/jumbo v7, "error in startRecording"

    #@31
    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 1641
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@36
    :try_start_4
    monitor-exit v6

    #@37
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@38
    .line 1649
    :catchall_1
    move-exception v5

    #@39
    .line 1650
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 1649
    throw v5
.end method

.method public stopRecording(Landroid/os/IBinder;I)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1656
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1657
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v6

    #@a
    .line 1658
    const-string/jumbo v7, "stopRecording"

    #@d
    .line 1657
    invoke-static {v5, v6, v0, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v4

    #@11
    .line 1659
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 1661
    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@17
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1a
    move-result-object v6

    #@1b
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    .line 1663
    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    #@21
    move-result-object v5

    #@22
    invoke-interface {v5}, Landroid/media/tv/ITvInputSession;->stopRecording()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    .line 1669
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 1655
    return-void

    #@2a
    .line 1664
    :catch_0
    move-exception v1

    #@2b
    .line 1665
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v5, "TvInputManagerService"

    #@2e
    const-string/jumbo v7, "error in stopRecording"

    #@31
    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 1661
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@36
    :try_start_4
    monitor-exit v6

    #@37
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@38
    .line 1668
    :catchall_1
    move-exception v5

    #@39
    .line 1669
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 1668
    throw v5
.end method

.method public timeShiftEnablePositionTracking(Landroid/os/IBinder;ZI)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1616
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1617
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v6

    #@a
    .line 1618
    const-string/jumbo v7, "timeShiftEnablePositionTracking"

    #@d
    .line 1617
    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v4

    #@11
    .line 1619
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 1621
    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@17
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1a
    move-result-object v6

    #@1b
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    .line 1623
    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    #@21
    move-result-object v5

    #@22
    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->timeShiftEnablePositionTracking(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    .line 1630
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 1615
    return-void

    #@2a
    .line 1625
    :catch_0
    move-exception v1

    #@2b
    .line 1626
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v5, "TvInputManagerService"

    #@2e
    const-string/jumbo v7, "error in timeShiftEnablePositionTracking"

    #@31
    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 1621
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@36
    :try_start_4
    monitor-exit v6

    #@37
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@38
    .line 1629
    :catchall_1
    move-exception v5

    #@39
    .line 1630
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 1629
    throw v5
.end method

.method public timeShiftPause(Landroid/os/IBinder;I)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1535
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1536
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v6

    #@a
    .line 1537
    const-string/jumbo v7, "timeShiftPause"

    #@d
    .line 1536
    invoke-static {v5, v6, v0, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v4

    #@11
    .line 1538
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 1540
    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@17
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1a
    move-result-object v6

    #@1b
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    .line 1542
    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    #@21
    move-result-object v5

    #@22
    invoke-interface {v5}, Landroid/media/tv/ITvInputSession;->timeShiftPause()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    .line 1548
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 1534
    return-void

    #@2a
    .line 1543
    :catch_0
    move-exception v1

    #@2b
    .line 1544
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v5, "TvInputManagerService"

    #@2e
    const-string/jumbo v7, "error in timeShiftPause"

    #@31
    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 1540
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@36
    :try_start_4
    monitor-exit v6

    #@37
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@38
    .line 1547
    :catchall_1
    move-exception v5

    #@39
    .line 1548
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 1547
    throw v5
.end method

.method public timeShiftPlay(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "recordedProgramUri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1515
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1516
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v6

    #@a
    .line 1517
    const-string/jumbo v7, "timeShiftPlay"

    #@d
    .line 1516
    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v4

    #@11
    .line 1518
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 1520
    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@17
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1a
    move-result-object v6

    #@1b
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    .line 1522
    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    #@21
    move-result-object v5

    #@22
    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->timeShiftPlay(Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    .line 1529
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 1514
    return-void

    #@2a
    .line 1524
    :catch_0
    move-exception v1

    #@2b
    .line 1525
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v5, "TvInputManagerService"

    #@2e
    const-string/jumbo v7, "error in timeShiftPlay"

    #@31
    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 1520
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@36
    :try_start_4
    monitor-exit v6

    #@37
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@38
    .line 1528
    :catchall_1
    move-exception v5

    #@39
    .line 1529
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 1528
    throw v5
.end method

.method public timeShiftResume(Landroid/os/IBinder;I)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1554
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1555
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v6

    #@a
    .line 1556
    const-string/jumbo v7, "timeShiftResume"

    #@d
    .line 1555
    invoke-static {v5, v6, v0, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v4

    #@11
    .line 1557
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 1559
    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@17
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1a
    move-result-object v6

    #@1b
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    .line 1561
    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    #@21
    move-result-object v5

    #@22
    invoke-interface {v5}, Landroid/media/tv/ITvInputSession;->timeShiftResume()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    .line 1568
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 1553
    return-void

    #@2a
    .line 1563
    :catch_0
    move-exception v1

    #@2b
    .line 1564
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v5, "TvInputManagerService"

    #@2e
    const-string/jumbo v7, "error in timeShiftResume"

    #@31
    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 1559
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@36
    :try_start_4
    monitor-exit v6

    #@37
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@38
    .line 1567
    :catchall_1
    move-exception v5

    #@39
    .line 1568
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 1567
    throw v5
.end method

.method public timeShiftSeekTo(Landroid/os/IBinder;JI)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "timeMs"    # J
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 1574
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1575
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v6

    #@a
    .line 1576
    const-string/jumbo v7, "timeShiftSeekTo"

    #@d
    .line 1575
    invoke-static {v5, v6, v0, p4, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v4

    #@11
    .line 1577
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 1579
    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@17
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1a
    move-result-object v6

    #@1b
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    .line 1581
    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    #@21
    move-result-object v5

    #@22
    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->timeShiftSeekTo(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    .line 1588
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 1573
    return-void

    #@2a
    .line 1583
    :catch_0
    move-exception v1

    #@2b
    .line 1584
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v5, "TvInputManagerService"

    #@2e
    const-string/jumbo v7, "error in timeShiftSeekTo"

    #@31
    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 1579
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@36
    :try_start_4
    monitor-exit v6

    #@37
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@38
    .line 1587
    :catchall_1
    move-exception v5

    #@39
    .line 1588
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 1587
    throw v5
.end method

.method public timeShiftSetPlaybackParams(Landroid/os/IBinder;Landroid/media/PlaybackParams;I)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "params"    # Landroid/media/PlaybackParams;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1595
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1596
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v6

    #@a
    .line 1597
    const-string/jumbo v7, "timeShiftSetPlaybackParams"

    #@d
    .line 1596
    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v4

    #@11
    .line 1598
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 1600
    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@17
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1a
    move-result-object v6

    #@1b
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    .line 1602
    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    #@21
    move-result-object v5

    #@22
    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    .line 1609
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 1594
    return-void

    #@2a
    .line 1604
    :catch_0
    move-exception v1

    #@2b
    .line 1605
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v5, "TvInputManagerService"

    #@2e
    const-string/jumbo v7, "error in timeShiftSetPlaybackParams"

    #@31
    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 1600
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@36
    :try_start_4
    monitor-exit v6

    #@37
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@38
    .line 1608
    :catchall_1
    move-exception v5

    #@39
    .line 1609
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 1608
    throw v5
.end method

.method public tune(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .locals 14
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "channelUri"    # Landroid/net/Uri;
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 1331
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v3

    #@4
    .line 1332
    .local v3, "callingUid":I
    iget-object v10, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v11

    #@a
    .line 1333
    const-string/jumbo v12, "tune"

    #@d
    .line 1332
    move/from16 v0, p4

    #@f
    invoke-static {v10, v11, v3, v0, v12}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@12
    move-result v5

    #@13
    .line 1334
    .local v5, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@16
    move-result-wide v6

    #@17
    .line 1336
    .local v6, "identity":J
    :try_start_0
    iget-object v10, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@19
    invoke-static {v10}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1c
    move-result-object v11

    #@1d
    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1e
    .line 1338
    :try_start_1
    iget-object v10, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@20
    invoke-static {v10, p1, v3, v5}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    #@23
    move-result-object v10

    #@24
    move-object/from16 v0, p2

    #@26
    move-object/from16 v1, p3

    #@28
    invoke-interface {v10, v0, v1}, Landroid/media/tv/ITvInputSession;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    #@2b
    .line 1340
    invoke-static/range {p2 .. p2}, Landroid/media/tv/TvContract;->isChannelUriForPassthroughInput(Landroid/net/Uri;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    move-result v10

    #@2f
    if-eqz v10, :cond_0

    #@31
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@32
    .line 1365
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@35
    .line 1342
    return-void

    #@36
    .line 1345
    :cond_0
    :try_start_3
    iget-object v10, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@38
    invoke-static {v10, v5}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@3b
    move-result-object v9

    #@3c
    .line 1346
    .local v9, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@3f
    move-result-object v10

    #@40
    invoke-interface {v10, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    move-result-object v8

    #@44
    check-cast v8, Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@46
    .line 1347
    .local v8, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get5(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@49
    move-result v10

    #@4a
    if-eqz v10, :cond_1

    #@4c
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@4d
    .line 1365
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@50
    .line 1348
    return-void

    #@51
    .line 1352
    :cond_1
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@54
    move-result-object v2

    #@55
    .line 1353
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get2(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;

    #@58
    move-result-object v10

    #@59
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@5c
    move-result-object v10

    #@5d
    iput-object v10, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@5f
    .line 1354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@62
    move-result-wide v12

    #@63
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@66
    move-result-object v10

    #@67
    iput-object v10, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@69
    .line 1355
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    #@6c
    move-result-wide v12

    #@6d
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@70
    move-result-object v10

    #@71
    iput-object v10, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@73
    .line 1356
    move-object/from16 v0, p3

    #@75
    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@77
    .line 1357
    iput-object p1, v2, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    #@79
    .line 1358
    iget-object v10, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@7b
    invoke-static {v10}, Lcom/android/server/tv/TvInputManagerService;->-get5(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    #@7e
    move-result-object v10

    #@7f
    const/4 v12, 0x1

    #@80
    invoke-virtual {v10, v12, v2}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@83
    move-result-object v10

    #@84
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@87
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v8    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v9    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :goto_0
    :try_start_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@88
    .line 1365
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@8b
    .line 1330
    return-void

    #@8c
    .line 1360
    :catch_0
    move-exception v4

    #@8d
    .line 1361
    .local v4, "e":Ljava/lang/Exception;
    :try_start_7
    const-string/jumbo v10, "TvInputManagerService"

    #@90
    const-string/jumbo v12, "error in tune"

    #@93
    invoke-static {v10, v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@96
    goto :goto_0

    #@97
    .line 1336
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    #@98
    :try_start_8
    monitor-exit v11

    #@99
    throw v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@9a
    .line 1364
    :catchall_1
    move-exception v10

    #@9b
    .line 1365
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@9e
    .line 1364
    throw v10
.end method

.method public unblockContent(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "unblockedRating"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1372
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    #@3
    .line 1373
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v0

    #@7
    .line 1374
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@c
    move-result v6

    #@d
    .line 1375
    const-string/jumbo v7, "unblockContent"

    #@10
    .line 1374
    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@13
    move-result v4

    #@14
    .line 1376
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@17
    move-result-wide v2

    #@18
    .line 1378
    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1a
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1d
    move-result-object v6

    #@1e
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1f
    .line 1380
    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@21
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    #@24
    move-result-object v5

    #@25
    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->unblockContent(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@29
    .line 1387
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2c
    .line 1371
    return-void

    #@2d
    .line 1382
    :catch_0
    move-exception v1

    #@2e
    .line 1383
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v5, "TvInputManagerService"

    #@31
    const-string/jumbo v7, "error in unblockContent"

    #@34
    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 1378
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@39
    :try_start_4
    monitor-exit v6

    #@3a
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@3b
    .line 1386
    :catchall_1
    move-exception v5

    #@3c
    .line 1387
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3f
    .line 1386
    throw v5
.end method

.method public unregisterCallback(Landroid/media/tv/ITvInputManagerCallback;I)V
    .locals 8
    .param p1, "callback"    # Landroid/media/tv/ITvInputManagerCallback;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1007
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@5
    move-result v5

    #@6
    .line 1008
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v6

    #@a
    const-string/jumbo v7, "unregisterCallback"

    #@d
    .line 1007
    invoke-static {v4, v5, v6, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v2

    #@11
    .line 1009
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v0

    #@15
    .line 1011
    .local v0, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@17
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@1a
    move-result-object v5

    #@1b
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    .line 1012
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@21
    move-result-object v3

    #@22
    .line 1013
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get0(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    #@25
    move-result-object v4

    #@26
    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2a
    .line 1016
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2d
    .line 1006
    return-void

    #@2e
    .line 1011
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v4

    #@2f
    :try_start_3
    monitor-exit v5

    #@30
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@31
    .line 1015
    :catchall_1
    move-exception v4

    #@32
    .line 1016
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@35
    .line 1015
    throw v4
.end method

.method public updateTvInputInfo(Landroid/media/tv/TvInputInfo;I)V
    .locals 10
    .param p1, "inputInfo"    # Landroid/media/tv/TvInputInfo;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 916
    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    #@3
    move-result-object v6

    #@4
    iget-object v1, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@6
    .line 917
    .local v1, "inputInfoPackageName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->getCallingPackageName()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 918
    .local v0, "callingPackageName":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@d
    move-result v6

    #@e
    if-nez v6, :cond_0

    #@10
    .line 919
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@12
    new-instance v7, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v8, "calling package "

    #@1a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v7

    #@1e
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v7

    #@22
    .line 920
    const-string/jumbo v8, " is not allowed to change TvInputInfo for "

    #@25
    .line 919
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v7

    #@29
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v7

    #@2d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v7

    #@31
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v6

    #@35
    .line 923
    :cond_0
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@37
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3a
    move-result v7

    #@3b
    .line 924
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3e
    move-result v8

    #@3f
    const-string/jumbo v9, "updateTvInputInfo"

    #@42
    .line 923
    invoke-static {v6, v7, v8, p2, v9}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@45
    move-result v4

    #@46
    .line 925
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@49
    move-result-wide v2

    #@4a
    .line 927
    .local v2, "identity":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@4c
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@4f
    move-result-object v7

    #@50
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@51
    .line 928
    :try_start_1
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@53
    invoke-static {v6, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@56
    move-result-object v5

    #@57
    .line 929
    .local v5, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@59
    invoke-static {v6, v5, p1}, Lcom/android/server/tv/TvInputManagerService;->-wrap22(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5c
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@5d
    .line 932
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@60
    .line 915
    return-void

    #@61
    .line 927
    .end local v5    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v6

    #@62
    :try_start_3
    monitor-exit v7

    #@63
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@64
    .line 931
    :catchall_1
    move-exception v6

    #@65
    .line 932
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@68
    .line 931
    throw v6
.end method
