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
    .line 783
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
    .line 996
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    .line 997
    const-string/jumbo v1, "android.permission.MODIFY_PARENTAL_CONTROLS"

    #@9
    .line 996
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 999
    new-instance v0, Ljava/lang/SecurityException;

    #@11
    .line 1000
    const-string/jumbo v1, "The caller does not have parental controls permission"

    #@14
    .line 999
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 995
    :cond_0
    return-void
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
    .line 1496
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
    .line 1498
    const/4 v0, 0x0

    #@10
    return-object v0

    #@11
    .line 1501
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v6

    #@15
    .line 1502
    .local v6, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@18
    move-result v4

    #@19
    .line 1503
    .local v4, "callingUid":I
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1b
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1e
    move-result v1

    #@1f
    .line 1504
    const-string/jumbo v2, "acquireTvInputHardware"

    #@22
    .line 1503
    invoke-static {v0, v1, v4, p4, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@25
    move-result v5

    #@26
    .line 1506
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
    .line 1509
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@36
    .line 1506
    return-object v0

    #@37
    .line 1508
    :catchall_0
    move-exception v0

    #@38
    .line 1509
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3b
    .line 1508
    throw v0
.end method

.method public addBlockedRating(Ljava/lang/String;I)V
    .locals 8
    .param p1, "rating"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 963
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    #@3
    .line 964
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@8
    move-result v5

    #@9
    .line 965
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@c
    move-result v6

    #@d
    const-string/jumbo v7, "addBlockedRating"

    #@10
    .line 964
    invoke-static {v4, v5, v6, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@13
    move-result v2

    #@14
    .line 966
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@17
    move-result-wide v0

    #@18
    .line 968
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
    .line 969
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@21
    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@24
    move-result-object v3

    #@25
    .line 970
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get6(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    #@28
    move-result-object v4

    #@29
    .line 971
    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    #@2c
    move-result-object v6

    #@2d
    .line 970
    invoke-virtual {v4, v6}, Lcom/android/server/tv/PersistentDataStore;->addBlockedRating(Landroid/media/tv/TvContentRating;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@31
    .line 974
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@34
    .line 962
    return-void

    #@35
    .line 968
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
    .line 973
    :catchall_1
    move-exception v4

    #@39
    .line 974
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 973
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
    .line 1626
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    .line 1627
    const-string/jumbo v3, "android.permission.CAPTURE_TV_INPUT"

    #@9
    .line 1626
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 1629
    new-instance v2, Ljava/lang/SecurityException;

    #@11
    const-string/jumbo v3, "Requires CAPTURE_TV_INPUT permission"

    #@14
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@17
    throw v2

    #@18
    .line 1632
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1b
    move-result-wide v10

    #@1c
    .line 1633
    .local v10, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1f
    move-result v6

    #@20
    .line 1634
    .local v6, "callingUid":I
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@22
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@25
    move-result v3

    #@26
    .line 1635
    const-string/jumbo v4, "captureFrame"

    #@29
    .line 1634
    move/from16 v0, p4

    #@2b
    invoke-static {v2, v3, v6, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@2e
    move-result v7

    #@2f
    .line 1637
    .local v7, "resolvedUserId":I
    const/4 v8, 0x0

    #@30
    .line 1638
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
    .line 1639
    :try_start_1
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@39
    invoke-static {v2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@3c
    move-result-object v13

    #@3d
    .line 1640
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
    .line 1641
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
    .line 1642
    const/4 v2, 0x0

    #@63
    .line 1657
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@66
    .line 1642
    return v2

    #@67
    .line 1644
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
    .line 1645
    .local v9, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/TvInputInfo;

    #@82
    move-result-object v2

    #@83
    invoke-virtual {v2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    #@86
    move-result-object v2

    #@87
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8a
    move-result v2

    #@8b
    if-eqz v2, :cond_2

    #@8d
    .line 1646
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get2(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@90
    move-result-object v2

    #@91
    if-eqz v2, :cond_2

    #@93
    .line 1647
    invoke-static {v13}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@96
    move-result-object v2

    #@97
    .line 1648
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get2(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@9a
    move-result-object v4

    #@9b
    .line 1647
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9e
    move-result-object v2

    #@9f
    check-cast v2, Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@a1
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/TvInputInfo;

    #@a4
    move-result-object v2

    #@a5
    invoke-virtual {v2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a8
    move-result-object v8

    #@a9
    .end local v8    # "hardwareInputId":Ljava/lang/String;
    .end local v9    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_3
    :try_start_4
    monitor-exit v3

    #@aa
    .line 1653
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@ac
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-get3(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    #@af
    move-result-object v2

    #@b0
    .line 1654
    if-eqz v8, :cond_4

    #@b2
    move-object v3, v8

    #@b3
    :goto_0
    move-object/from16 v4, p2

    #@b5
    move-object/from16 v5, p3

    #@b7
    .line 1653
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/tv/TvInputHardwareManager;->captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;II)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@ba
    move-result v2

    #@bb
    .line 1657
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@be
    .line 1653
    return v2

    #@bf
    .line 1638
    .end local v12    # "sessionState$iterator":Ljava/util/Iterator;
    .end local v13    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .restart local v8    # "hardwareInputId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@c0
    :try_start_5
    monitor-exit v3

    #@c1
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@c2
    .line 1656
    .end local v8    # "hardwareInputId":Ljava/lang/String;
    :catchall_1
    move-exception v2

    #@c3
    .line 1657
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@c6
    .line 1656
    throw v2

    #@c7
    .restart local v12    # "sessionState$iterator":Ljava/util/Iterator;
    .restart local v13    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_4
    move-object v3, p1

    #@c8
    .line 1654
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
    .line 1317
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1318
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v6

    #@a
    .line 1319
    const-string/jumbo v7, "createOverlayView"

    #@d
    .line 1318
    invoke-static {v5, v6, v0, p4, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v4

    #@11
    .line 1320
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 1322
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
    .line 1324
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
    .line 1331
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 1316
    return-void

    #@2a
    .line 1326
    :catch_0
    move-exception v1

    #@2b
    .line 1327
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
    .line 1322
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
    .line 1330
    :catchall_1
    move-exception v5

    #@39
    .line 1331
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 1330
    throw v5
.end method

.method public createSession(Landroid/media/tv/ITvInputClient;Ljava/lang/String;II)V
    .locals 17
    .param p1, "client"    # Landroid/media/tv/ITvInputClient;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "seq"    # I
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 1007
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v8

    #@4
    .line 1008
    .local v8, "callingUid":I
    move-object/from16 v0, p0

    #@6
    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@b
    move-result v6

    #@c
    .line 1009
    const-string/jumbo v7, "createSession"

    #@f
    .line 1008
    move/from16 v0, p4

    #@11
    invoke-static {v3, v6, v8, v0, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@14
    move-result v9

    #@15
    .line 1010
    .local v9, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@18
    move-result-wide v12

    #@19
    .line 1012
    .local v12, "identity":J
    :try_start_0
    move-object/from16 v0, p0

    #@1b
    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1d
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@20
    move-result-object v16

    #@21
    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@22
    .line 1013
    :try_start_1
    move-object/from16 v0, p0

    #@24
    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@26
    invoke-static {v3, v9}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@29
    move-result-object v15

    #@2a
    .line 1014
    .local v15, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v15}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@2d
    move-result-object v3

    #@2e
    move-object/from16 v0, p2

    #@30
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    move-result-object v11

    #@34
    check-cast v11, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    #@36
    .line 1015
    .local v11, "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v11, :cond_0

    #@38
    .line 1016
    const-string/jumbo v3, "TvInputManagerService"

    #@3b
    new-instance v6, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v7, "Failed to find input state for inputId="

    #@43
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v6

    #@47
    move-object/from16 v0, p2

    #@49
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v6

    #@4d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v6

    #@51
    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    .line 1017
    move-object/from16 v0, p0

    #@56
    iget-object v2, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@58
    const/4 v5, 0x0

    #@59
    const/4 v6, 0x0

    #@5a
    move-object/from16 v3, p1

    #@5c
    move-object/from16 v4, p2

    #@5e
    move/from16 v7, p3

    #@60
    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap16(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@63
    :try_start_2
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@64
    .line 1051
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@67
    .line 1018
    return-void

    #@68
    .line 1020
    :cond_0
    :try_start_3
    invoke-static {v11}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-get0(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    #@6b
    move-result-object v5

    #@6c
    .line 1021
    .local v5, "info":Landroid/media/tv/TvInputInfo;
    invoke-static {v15}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@6f
    move-result-object v3

    #@70
    invoke-virtual {v5}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    #@73
    move-result-object v6

    #@74
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@77
    move-result-object v14

    #@78
    check-cast v14, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@7a
    .line 1022
    .local v14, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-nez v14, :cond_1

    #@7c
    .line 1023
    new-instance v14, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@7e
    .end local v14    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    move-object/from16 v0, p0

    #@80
    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@82
    invoke-virtual {v5}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    #@85
    move-result-object v6

    #@86
    const/4 v7, 0x0

    #@87
    invoke-direct {v14, v3, v6, v9, v7}, Lcom/android/server/tv/TvInputManagerService$ServiceState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/TvInputManagerService$ServiceState;)V

    #@8a
    .line 1024
    .restart local v14    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {v15}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@8d
    move-result-object v3

    #@8e
    invoke-virtual {v5}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    #@91
    move-result-object v6

    #@92
    invoke-interface {v3, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@95
    .line 1027
    :cond_1
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get6(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    #@98
    move-result v3

    #@99
    if-eqz v3, :cond_2

    #@9b
    .line 1028
    move-object/from16 v0, p0

    #@9d
    iget-object v2, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@9f
    const/4 v5, 0x0

    #@a0
    const/4 v6, 0x0

    #@a1
    move-object/from16 v3, p1

    #@a3
    move-object/from16 v4, p2

    #@a5
    move/from16 v7, p3

    #@a7
    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap16(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@aa
    .end local v5    # "info":Landroid/media/tv/TvInputInfo;
    :try_start_4
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@ab
    .line 1051
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ae
    .line 1029
    return-void

    #@af
    .line 1033
    .restart local v5    # "info":Landroid/media/tv/TvInputInfo;
    :cond_2
    :try_start_5
    new-instance v4, Landroid/os/Binder;

    #@b1
    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    #@b4
    .line 1034
    .local v4, "sessionToken":Landroid/os/IBinder;
    new-instance v2, Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@b6
    move-object/from16 v0, p0

    #@b8
    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@ba
    const/4 v10, 0x0

    #@bb
    move-object/from16 v6, p1

    #@bd
    move/from16 v7, p3

    #@bf
    invoke-direct/range {v2 .. v10}, Lcom/android/server/tv/TvInputManagerService$SessionState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Landroid/media/tv/TvInputInfo;Landroid/media/tv/ITvInputClient;IIILcom/android/server/tv/TvInputManagerService$SessionState;)V

    #@c2
    .line 1038
    .local v2, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v15}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@c5
    move-result-object v3

    #@c6
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c9
    .line 1041
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get8(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    #@cc
    move-result-object v3

    #@cd
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d0
    .line 1043
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    #@d3
    move-result-object v3

    #@d4
    if-eqz v3, :cond_3

    #@d6
    .line 1044
    move-object/from16 v0, p0

    #@d8
    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@da
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    #@dd
    move-result-object v6

    #@de
    invoke-static {v3, v6, v4, v9}, Lcom/android/server/tv/TvInputManagerService;->-wrap11(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@e1
    :goto_0
    :try_start_6
    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@e2
    .line 1051
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@e5
    .line 1006
    return-void

    #@e6
    .line 1047
    :cond_3
    :try_start_7
    move-object/from16 v0, p0

    #@e8
    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@ea
    invoke-virtual {v5}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    #@ed
    move-result-object v6

    #@ee
    invoke-static {v3, v6, v9}, Lcom/android/server/tv/TvInputManagerService;->-wrap20(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@f1
    goto :goto_0

    #@f2
    .line 1012
    .end local v2    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v4    # "sessionToken":Landroid/os/IBinder;
    .end local v5    # "info":Landroid/media/tv/TvInputInfo;
    .end local v11    # "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .end local v14    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v15    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v3

    #@f3
    :try_start_8
    monitor-exit v16

    #@f4
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@f5
    .line 1050
    :catchall_1
    move-exception v3

    #@f6
    .line 1051
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@f9
    .line 1050
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
    .line 1141
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1142
    .local v0, "callingUid":I
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v7

    #@a
    .line 1143
    const-string/jumbo v8, "dispatchSurfaceChanged"

    #@d
    .line 1142
    invoke-static {v6, v7, v0, p5, v8}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v4

    #@11
    .line 1144
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 1146
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
    .line 1148
    :try_start_1
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v6, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap5(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@21
    move-result-object v5

    #@22
    .line 1150
    .local v5, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@24
    invoke-static {v6, v5}, Lcom/android/server/tv/TvInputManagerService;->-wrap2(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@27
    move-result-object v6

    #@28
    invoke-interface {v6, p2, p3, p4}, Landroid/media/tv/ITvInputSession;->dispatchSurfaceChanged(III)V

    #@2b
    .line 1152
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get2(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@2e
    move-result-object v6

    #@2f
    if-eqz v6, :cond_0

    #@31
    .line 1153
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@33
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get2(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

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
    .line 1161
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@44
    .line 1140
    return-void

    #@45
    .line 1156
    :catch_0
    move-exception v1

    #@46
    .line 1157
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
    .line 1146
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
    .line 1160
    :catchall_1
    move-exception v6

    #@54
    .line 1161
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@57
    .line 1160
    throw v6
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 23
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1691
    new-instance v13, Lcom/android/internal/util/IndentingPrintWriter;

    #@2
    const-string/jumbo v20, "  "

    #@5
    move-object/from16 v0, p2

    #@7
    move-object/from16 v1, v20

    #@9
    invoke-direct {v13, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@c
    .line 1692
    .local v13, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v0, p0

    #@e
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@10
    move-object/from16 v20, v0

    #@12
    invoke-static/range {v20 .. v20}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    #@15
    move-result-object v20

    #@16
    const-string/jumbo v21, "android.permission.DUMP"

    #@19
    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@1c
    move-result v20

    #@1d
    if-eqz v20, :cond_0

    #@1f
    .line 1694
    new-instance v20, Ljava/lang/StringBuilder;

    #@21
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v21, "Permission Denial: can\'t dump TvInputManager from pid="

    #@27
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v20

    #@2b
    .line 1695
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@2e
    move-result v21

    #@2f
    .line 1694
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v20

    #@33
    .line 1695
    const-string/jumbo v21, ", uid="

    #@36
    .line 1694
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v20

    #@3a
    .line 1695
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3d
    move-result v21

    #@3e
    .line 1694
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v20

    #@42
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v20

    #@46
    move-object/from16 v0, v20

    #@48
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@4b
    .line 1696
    return-void

    #@4c
    .line 1699
    :cond_0
    move-object/from16 v0, p0

    #@4e
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@50
    move-object/from16 v20, v0

    #@52
    invoke-static/range {v20 .. v20}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@55
    move-result-object v21

    #@56
    monitor-enter v21

    #@57
    .line 1700
    :try_start_0
    new-instance v20, Ljava/lang/StringBuilder;

    #@59
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v22, "User Ids (Current user: "

    #@5f
    move-object/from16 v0, v20

    #@61
    move-object/from16 v1, v22

    #@63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v20

    #@67
    move-object/from16 v0, p0

    #@69
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6b
    move-object/from16 v22, v0

    #@6d
    invoke-static/range {v22 .. v22}, Lcom/android/server/tv/TvInputManagerService;->-get1(Lcom/android/server/tv/TvInputManagerService;)I

    #@70
    move-result v22

    #@71
    move-object/from16 v0, v20

    #@73
    move/from16 v1, v22

    #@75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@78
    move-result-object v20

    #@79
    const-string/jumbo v22, "):"

    #@7c
    move-object/from16 v0, v20

    #@7e
    move-object/from16 v1, v22

    #@80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v20

    #@84
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v20

    #@88
    move-object/from16 v0, v20

    #@8a
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@8d
    .line 1701
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@90
    .line 1702
    const/4 v10, 0x0

    #@91
    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@93
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@95
    move-object/from16 v20, v0

    #@97
    invoke-static/range {v20 .. v20}, Lcom/android/server/tv/TvInputManagerService;->-get4(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    #@9a
    move-result-object v20

    #@9b
    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    #@9e
    move-result v20

    #@9f
    move/from16 v0, v20

    #@a1
    if-ge v10, v0, :cond_1

    #@a3
    .line 1703
    move-object/from16 v0, p0

    #@a5
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@a7
    move-object/from16 v20, v0

    #@a9
    invoke-static/range {v20 .. v20}, Lcom/android/server/tv/TvInputManagerService;->-get4(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    #@ac
    move-result-object v20

    #@ad
    move-object/from16 v0, v20

    #@af
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->keyAt(I)I

    #@b2
    move-result v18

    #@b3
    .line 1704
    .local v18, "userId":I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b6
    move-result-object v20

    #@b7
    move-object/from16 v0, v20

    #@b9
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    #@bc
    .line 1702
    add-int/lit8 v10, v10, 0x1

    #@be
    goto :goto_0

    #@bf
    .line 1706
    .end local v18    # "userId":I
    :cond_1
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@c2
    .line 1708
    const/4 v10, 0x0

    #@c3
    :goto_1
    move-object/from16 v0, p0

    #@c5
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@c7
    move-object/from16 v20, v0

    #@c9
    invoke-static/range {v20 .. v20}, Lcom/android/server/tv/TvInputManagerService;->-get4(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    #@cc
    move-result-object v20

    #@cd
    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    #@d0
    move-result v20

    #@d1
    move/from16 v0, v20

    #@d3
    if-ge v10, v0, :cond_a

    #@d5
    .line 1709
    move-object/from16 v0, p0

    #@d7
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@d9
    move-object/from16 v20, v0

    #@db
    invoke-static/range {v20 .. v20}, Lcom/android/server/tv/TvInputManagerService;->-get4(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    #@de
    move-result-object v20

    #@df
    move-object/from16 v0, v20

    #@e1
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->keyAt(I)I

    #@e4
    move-result v18

    #@e5
    .line 1710
    .restart local v18    # "userId":I
    move-object/from16 v0, p0

    #@e7
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@e9
    move-object/from16 v20, v0

    #@eb
    move-object/from16 v0, v20

    #@ed
    move/from16 v1, v18

    #@ef
    invoke-static {v0, v1}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@f2
    move-result-object v19

    #@f3
    .line 1711
    .local v19, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v20, Ljava/lang/StringBuilder;

    #@f5
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@f8
    const-string/jumbo v22, "UserState ("

    #@fb
    move-object/from16 v0, v20

    #@fd
    move-object/from16 v1, v22

    #@ff
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v20

    #@103
    move-object/from16 v0, v20

    #@105
    move/from16 v1, v18

    #@107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v20

    #@10b
    const-string/jumbo v22, "):"

    #@10e
    move-object/from16 v0, v20

    #@110
    move-object/from16 v1, v22

    #@112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v20

    #@116
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@119
    move-result-object v20

    #@11a
    move-object/from16 v0, v20

    #@11c
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@11f
    .line 1712
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@122
    .line 1714
    const-string/jumbo v20, "inputMap: inputId -> TvInputState"

    #@125
    move-object/from16 v0, v20

    #@127
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@12a
    .line 1715
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@12d
    .line 1716
    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@130
    move-result-object v20

    #@131
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@134
    move-result-object v20

    #@135
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@138
    move-result-object v9

    #@139
    .local v9, "entry$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@13c
    move-result v20

    #@13d
    if-eqz v20, :cond_2

    #@13f
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@142
    move-result-object v8

    #@143
    check-cast v8, Ljava/util/Map$Entry;

    #@145
    .line 1717
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/tv/TvInputManagerService$TvInputState;>;"
    new-instance v22, Ljava/lang/StringBuilder;

    #@147
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@14a
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@14d
    move-result-object v20

    #@14e
    check-cast v20, Ljava/lang/String;

    #@150
    move-object/from16 v0, v22

    #@152
    move-object/from16 v1, v20

    #@154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@157
    move-result-object v20

    #@158
    const-string/jumbo v22, ": "

    #@15b
    move-object/from16 v0, v20

    #@15d
    move-object/from16 v1, v22

    #@15f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@162
    move-result-object v20

    #@163
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@166
    move-result-object v22

    #@167
    move-object/from16 v0, v20

    #@169
    move-object/from16 v1, v22

    #@16b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v20

    #@16f
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@172
    move-result-object v20

    #@173
    move-object/from16 v0, v20

    #@175
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@178
    goto :goto_2

    #@179
    .line 1699
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/tv/TvInputManagerService$TvInputState;>;"
    .end local v9    # "entry$iterator":Ljava/util/Iterator;
    .end local v10    # "i":I
    .end local v18    # "userId":I
    .end local v19    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v20

    #@17a
    monitor-exit v21

    #@17b
    throw v20

    #@17c
    .line 1719
    .restart local v9    # "entry$iterator":Ljava/util/Iterator;
    .restart local v10    # "i":I
    .restart local v18    # "userId":I
    .restart local v19    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_2
    :try_start_1
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@17f
    .line 1721
    const-string/jumbo v20, "packageSet:"

    #@182
    move-object/from16 v0, v20

    #@184
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@187
    .line 1722
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@18a
    .line 1723
    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get5(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    #@18d
    move-result-object v20

    #@18e
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@191
    move-result-object v12

    #@192
    .local v12, "packageName$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@195
    move-result v20

    #@196
    if-eqz v20, :cond_3

    #@198
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19b
    move-result-object v11

    #@19c
    check-cast v11, Ljava/lang/String;

    #@19e
    .line 1724
    .local v11, "packageName":Ljava/lang/String;
    invoke-virtual {v13, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@1a1
    goto :goto_3

    #@1a2
    .line 1726
    .end local v11    # "packageName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@1a5
    .line 1728
    const-string/jumbo v20, "clientStateMap: ITvInputClient -> ClientState"

    #@1a8
    move-object/from16 v0, v20

    #@1aa
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@1ad
    .line 1729
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@1b0
    .line 1731
    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get1(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@1b3
    move-result-object v20

    #@1b4
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@1b7
    move-result-object v20

    #@1b8
    .line 1730
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1bb
    move-result-object v9

    #@1bc
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@1bf
    move-result v20

    #@1c0
    if-eqz v20, :cond_5

    #@1c2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c5
    move-result-object v6

    #@1c6
    check-cast v6, Ljava/util/Map$Entry;

    #@1c8
    .line 1732
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$ClientState;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1cb
    move-result-object v4

    #@1cc
    check-cast v4, Lcom/android/server/tv/TvInputManagerService$ClientState;

    #@1ce
    .line 1733
    .local v4, "client":Lcom/android/server/tv/TvInputManagerService$ClientState;
    new-instance v20, Ljava/lang/StringBuilder;

    #@1d0
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@1d3
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1d6
    move-result-object v22

    #@1d7
    move-object/from16 v0, v20

    #@1d9
    move-object/from16 v1, v22

    #@1db
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1de
    move-result-object v20

    #@1df
    const-string/jumbo v22, ": "

    #@1e2
    move-object/from16 v0, v20

    #@1e4
    move-object/from16 v1, v22

    #@1e6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e9
    move-result-object v20

    #@1ea
    move-object/from16 v0, v20

    #@1ec
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1ef
    move-result-object v20

    #@1f0
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f3
    move-result-object v20

    #@1f4
    move-object/from16 v0, v20

    #@1f6
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@1f9
    .line 1735
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@1fc
    .line 1737
    const-string/jumbo v20, "sessionTokens:"

    #@1ff
    move-object/from16 v0, v20

    #@201
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@204
    .line 1738
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@207
    .line 1739
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$ClientState;->-get1(Lcom/android/server/tv/TvInputManagerService$ClientState;)Ljava/util/List;

    #@20a
    move-result-object v20

    #@20b
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20e
    move-result-object v17

    #@20f
    .local v17, "token$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@212
    move-result v20

    #@213
    if-eqz v20, :cond_4

    #@215
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@218
    move-result-object v16

    #@219
    check-cast v16, Landroid/os/IBinder;

    #@21b
    .line 1740
    .local v16, "token":Landroid/os/IBinder;
    new-instance v20, Ljava/lang/StringBuilder;

    #@21d
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@220
    const-string/jumbo v22, ""

    #@223
    move-object/from16 v0, v20

    #@225
    move-object/from16 v1, v22

    #@227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22a
    move-result-object v20

    #@22b
    move-object/from16 v0, v20

    #@22d
    move-object/from16 v1, v16

    #@22f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@232
    move-result-object v20

    #@233
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@236
    move-result-object v20

    #@237
    move-object/from16 v0, v20

    #@239
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@23c
    goto :goto_5

    #@23d
    .line 1742
    .end local v16    # "token":Landroid/os/IBinder;
    :cond_4
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@240
    .line 1744
    new-instance v20, Ljava/lang/StringBuilder;

    #@242
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@245
    const-string/jumbo v22, "clientTokens: "

    #@248
    move-object/from16 v0, v20

    #@24a
    move-object/from16 v1, v22

    #@24c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24f
    move-result-object v20

    #@250
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$ClientState;->-get0(Lcom/android/server/tv/TvInputManagerService$ClientState;)Landroid/os/IBinder;

    #@253
    move-result-object v22

    #@254
    move-object/from16 v0, v20

    #@256
    move-object/from16 v1, v22

    #@258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25b
    move-result-object v20

    #@25c
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25f
    move-result-object v20

    #@260
    move-object/from16 v0, v20

    #@262
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@265
    .line 1745
    new-instance v20, Ljava/lang/StringBuilder;

    #@267
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@26a
    const-string/jumbo v22, "userId: "

    #@26d
    move-object/from16 v0, v20

    #@26f
    move-object/from16 v1, v22

    #@271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@274
    move-result-object v20

    #@275
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$ClientState;->-get2(Lcom/android/server/tv/TvInputManagerService$ClientState;)I

    #@278
    move-result v22

    #@279
    move-object/from16 v0, v20

    #@27b
    move/from16 v1, v22

    #@27d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@280
    move-result-object v20

    #@281
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@284
    move-result-object v20

    #@285
    move-object/from16 v0, v20

    #@287
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@28a
    .line 1747
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@28d
    goto/16 :goto_4

    #@28f
    .line 1749
    .end local v4    # "client":Lcom/android/server/tv/TvInputManagerService$ClientState;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$ClientState;>;"
    .end local v17    # "token$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@292
    .line 1751
    const-string/jumbo v20, "serviceStateMap: ComponentName -> ServiceState"

    #@295
    move-object/from16 v0, v20

    #@297
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@29a
    .line 1752
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@29d
    .line 1754
    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@2a0
    move-result-object v20

    #@2a1
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@2a4
    move-result-object v20

    #@2a5
    .line 1753
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2a8
    move-result-object v9

    #@2a9
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@2ac
    move-result v20

    #@2ad
    if-eqz v20, :cond_7

    #@2af
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b2
    move-result-object v5

    #@2b3
    check-cast v5, Ljava/util/Map$Entry;

    #@2b5
    .line 1755
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/tv/TvInputManagerService$ServiceState;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2b8
    move-result-object v14

    #@2b9
    check-cast v14, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@2bb
    .line 1756
    .local v14, "service":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    new-instance v20, Ljava/lang/StringBuilder;

    #@2bd
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@2c0
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2c3
    move-result-object v22

    #@2c4
    move-object/from16 v0, v20

    #@2c6
    move-object/from16 v1, v22

    #@2c8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2cb
    move-result-object v20

    #@2cc
    const-string/jumbo v22, ": "

    #@2cf
    move-object/from16 v0, v20

    #@2d1
    move-object/from16 v1, v22

    #@2d3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d6
    move-result-object v20

    #@2d7
    move-object/from16 v0, v20

    #@2d9
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2dc
    move-result-object v20

    #@2dd
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e0
    move-result-object v20

    #@2e1
    move-object/from16 v0, v20

    #@2e3
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@2e6
    .line 1758
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@2e9
    .line 1760
    const-string/jumbo v20, "sessionTokens:"

    #@2ec
    move-object/from16 v0, v20

    #@2ee
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@2f1
    .line 1761
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@2f4
    .line 1762
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get8(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    #@2f7
    move-result-object v20

    #@2f8
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2fb
    move-result-object v17

    #@2fc
    .restart local v17    # "token$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@2ff
    move-result v20

    #@300
    if-eqz v20, :cond_6

    #@302
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@305
    move-result-object v16

    #@306
    check-cast v16, Landroid/os/IBinder;

    #@308
    .line 1763
    .restart local v16    # "token":Landroid/os/IBinder;
    new-instance v20, Ljava/lang/StringBuilder;

    #@30a
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@30d
    const-string/jumbo v22, ""

    #@310
    move-object/from16 v0, v20

    #@312
    move-object/from16 v1, v22

    #@314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@317
    move-result-object v20

    #@318
    move-object/from16 v0, v20

    #@31a
    move-object/from16 v1, v16

    #@31c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31f
    move-result-object v20

    #@320
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@323
    move-result-object v20

    #@324
    move-object/from16 v0, v20

    #@326
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@329
    goto :goto_7

    #@32a
    .line 1765
    .end local v16    # "token":Landroid/os/IBinder;
    :cond_6
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@32d
    .line 1767
    new-instance v20, Ljava/lang/StringBuilder;

    #@32f
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@332
    const-string/jumbo v22, "service: "

    #@335
    move-object/from16 v0, v20

    #@337
    move-object/from16 v1, v22

    #@339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33c
    move-result-object v20

    #@33d
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    #@340
    move-result-object v22

    #@341
    move-object/from16 v0, v20

    #@343
    move-object/from16 v1, v22

    #@345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@348
    move-result-object v20

    #@349
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34c
    move-result-object v20

    #@34d
    move-object/from16 v0, v20

    #@34f
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@352
    .line 1768
    new-instance v20, Ljava/lang/StringBuilder;

    #@354
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@357
    const-string/jumbo v22, "callback: "

    #@35a
    move-object/from16 v0, v20

    #@35c
    move-object/from16 v1, v22

    #@35e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@361
    move-result-object v20

    #@362
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get1(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    #@365
    move-result-object v22

    #@366
    move-object/from16 v0, v20

    #@368
    move-object/from16 v1, v22

    #@36a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36d
    move-result-object v20

    #@36e
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@371
    move-result-object v20

    #@372
    move-object/from16 v0, v20

    #@374
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@377
    .line 1769
    new-instance v20, Ljava/lang/StringBuilder;

    #@379
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@37c
    const-string/jumbo v22, "bound: "

    #@37f
    move-object/from16 v0, v20

    #@381
    move-object/from16 v1, v22

    #@383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@386
    move-result-object v20

    #@387
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get0(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    #@38a
    move-result v22

    #@38b
    move-object/from16 v0, v20

    #@38d
    move/from16 v1, v22

    #@38f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@392
    move-result-object v20

    #@393
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@396
    move-result-object v20

    #@397
    move-object/from16 v0, v20

    #@399
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@39c
    .line 1770
    new-instance v20, Ljava/lang/StringBuilder;

    #@39e
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@3a1
    const-string/jumbo v22, "reconnecting: "

    #@3a4
    move-object/from16 v0, v20

    #@3a6
    move-object/from16 v1, v22

    #@3a8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ab
    move-result-object v20

    #@3ac
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get6(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    #@3af
    move-result v22

    #@3b0
    move-object/from16 v0, v20

    #@3b2
    move/from16 v1, v22

    #@3b4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3b7
    move-result-object v20

    #@3b8
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3bb
    move-result-object v20

    #@3bc
    move-object/from16 v0, v20

    #@3be
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@3c1
    .line 1772
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@3c4
    goto/16 :goto_6

    #@3c6
    .line 1774
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/tv/TvInputManagerService$ServiceState;>;"
    .end local v14    # "service":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v17    # "token$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@3c9
    .line 1776
    const-string/jumbo v20, "sessionStateMap: ITvInputSession -> SessionState"

    #@3cc
    move-object/from16 v0, v20

    #@3ce
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@3d1
    .line 1777
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@3d4
    .line 1779
    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@3d7
    move-result-object v20

    #@3d8
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@3db
    move-result-object v20

    #@3dc
    .line 1778
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3df
    move-result-object v9

    #@3e0
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@3e3
    move-result v20

    #@3e4
    if-eqz v20, :cond_8

    #@3e6
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3e9
    move-result-object v7

    #@3ea
    check-cast v7, Ljava/util/Map$Entry;

    #@3ec
    .line 1780
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$SessionState;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3ef
    move-result-object v15

    #@3f0
    check-cast v15, Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@3f2
    .line 1781
    .local v15, "session":Lcom/android/server/tv/TvInputManagerService$SessionState;
    new-instance v20, Ljava/lang/StringBuilder;

    #@3f4
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@3f7
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3fa
    move-result-object v22

    #@3fb
    move-object/from16 v0, v20

    #@3fd
    move-object/from16 v1, v22

    #@3ff
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@402
    move-result-object v20

    #@403
    const-string/jumbo v22, ": "

    #@406
    move-object/from16 v0, v20

    #@408
    move-object/from16 v1, v22

    #@40a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40d
    move-result-object v20

    #@40e
    move-object/from16 v0, v20

    #@410
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@413
    move-result-object v20

    #@414
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@417
    move-result-object v20

    #@418
    move-object/from16 v0, v20

    #@41a
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@41d
    .line 1783
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@420
    .line 1784
    new-instance v20, Ljava/lang/StringBuilder;

    #@422
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@425
    const-string/jumbo v22, "info: "

    #@428
    move-object/from16 v0, v20

    #@42a
    move-object/from16 v1, v22

    #@42c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42f
    move-result-object v20

    #@430
    invoke-static {v15}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/TvInputInfo;

    #@433
    move-result-object v22

    #@434
    move-object/from16 v0, v20

    #@436
    move-object/from16 v1, v22

    #@438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43b
    move-result-object v20

    #@43c
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43f
    move-result-object v20

    #@440
    move-object/from16 v0, v20

    #@442
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@445
    .line 1785
    new-instance v20, Ljava/lang/StringBuilder;

    #@447
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@44a
    const-string/jumbo v22, "client: "

    #@44d
    move-object/from16 v0, v20

    #@44f
    move-object/from16 v1, v22

    #@451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@454
    move-result-object v20

    #@455
    invoke-static {v15}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    #@458
    move-result-object v22

    #@459
    move-object/from16 v0, v20

    #@45b
    move-object/from16 v1, v22

    #@45d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@460
    move-result-object v20

    #@461
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@464
    move-result-object v20

    #@465
    move-object/from16 v0, v20

    #@467
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@46a
    .line 1786
    new-instance v20, Ljava/lang/StringBuilder;

    #@46c
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@46f
    const-string/jumbo v22, "seq: "

    #@472
    move-object/from16 v0, v20

    #@474
    move-object/from16 v1, v22

    #@476
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@479
    move-result-object v20

    #@47a
    invoke-static {v15}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get5(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@47d
    move-result v22

    #@47e
    move-object/from16 v0, v20

    #@480
    move/from16 v1, v22

    #@482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@485
    move-result-object v20

    #@486
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@489
    move-result-object v20

    #@48a
    move-object/from16 v0, v20

    #@48c
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@48f
    .line 1787
    new-instance v20, Ljava/lang/StringBuilder;

    #@491
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@494
    const-string/jumbo v22, "callingUid: "

    #@497
    move-object/from16 v0, v20

    #@499
    move-object/from16 v1, v22

    #@49b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49e
    move-result-object v20

    #@49f
    invoke-static {v15}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get0(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@4a2
    move-result v22

    #@4a3
    move-object/from16 v0, v20

    #@4a5
    move/from16 v1, v22

    #@4a7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4aa
    move-result-object v20

    #@4ab
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4ae
    move-result-object v20

    #@4af
    move-object/from16 v0, v20

    #@4b1
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@4b4
    .line 1788
    new-instance v20, Ljava/lang/StringBuilder;

    #@4b6
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@4b9
    const-string/jumbo v22, "userId: "

    #@4bc
    move-object/from16 v0, v20

    #@4be
    move-object/from16 v1, v22

    #@4c0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c3
    move-result-object v20

    #@4c4
    invoke-static {v15}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get8(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@4c7
    move-result v22

    #@4c8
    move-object/from16 v0, v20

    #@4ca
    move/from16 v1, v22

    #@4cc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4cf
    move-result-object v20

    #@4d0
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d3
    move-result-object v20

    #@4d4
    move-object/from16 v0, v20

    #@4d6
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@4d9
    .line 1789
    new-instance v20, Ljava/lang/StringBuilder;

    #@4db
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@4de
    const-string/jumbo v22, "sessionToken: "

    #@4e1
    move-object/from16 v0, v20

    #@4e3
    move-object/from16 v1, v22

    #@4e5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e8
    move-result-object v20

    #@4e9
    invoke-static {v15}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get7(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@4ec
    move-result-object v22

    #@4ed
    move-object/from16 v0, v20

    #@4ef
    move-object/from16 v1, v22

    #@4f1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f4
    move-result-object v20

    #@4f5
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f8
    move-result-object v20

    #@4f9
    move-object/from16 v0, v20

    #@4fb
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@4fe
    .line 1790
    new-instance v20, Ljava/lang/StringBuilder;

    #@500
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@503
    const-string/jumbo v22, "session: "

    #@506
    move-object/from16 v0, v20

    #@508
    move-object/from16 v1, v22

    #@50a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50d
    move-result-object v20

    #@50e
    invoke-static {v15}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get6(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@511
    move-result-object v22

    #@512
    move-object/from16 v0, v20

    #@514
    move-object/from16 v1, v22

    #@516
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@519
    move-result-object v20

    #@51a
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51d
    move-result-object v20

    #@51e
    move-object/from16 v0, v20

    #@520
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@523
    .line 1791
    new-instance v20, Ljava/lang/StringBuilder;

    #@525
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@528
    const-string/jumbo v22, "logUri: "

    #@52b
    move-object/from16 v0, v20

    #@52d
    move-object/from16 v1, v22

    #@52f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@532
    move-result-object v20

    #@533
    invoke-static {v15}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get4(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/net/Uri;

    #@536
    move-result-object v22

    #@537
    move-object/from16 v0, v20

    #@539
    move-object/from16 v1, v22

    #@53b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@53e
    move-result-object v20

    #@53f
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@542
    move-result-object v20

    #@543
    move-object/from16 v0, v20

    #@545
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@548
    .line 1792
    new-instance v20, Ljava/lang/StringBuilder;

    #@54a
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@54d
    const-string/jumbo v22, "hardwareSessionToken: "

    #@550
    move-object/from16 v0, v20

    #@552
    move-object/from16 v1, v22

    #@554
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@557
    move-result-object v20

    #@558
    invoke-static {v15}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get2(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@55b
    move-result-object v22

    #@55c
    move-object/from16 v0, v20

    #@55e
    move-object/from16 v1, v22

    #@560
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@563
    move-result-object v20

    #@564
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@567
    move-result-object v20

    #@568
    move-object/from16 v0, v20

    #@56a
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@56d
    .line 1793
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@570
    goto/16 :goto_8

    #@572
    .line 1795
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$SessionState;>;"
    .end local v15    # "session":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_8
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@575
    .line 1797
    const-string/jumbo v20, "callbackSet:"

    #@578
    move-object/from16 v0, v20

    #@57a
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@57d
    .line 1798
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@580
    .line 1799
    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get0(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    #@583
    move-result-object v20

    #@584
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@587
    move-result-object v3

    #@588
    .local v3, "callback$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@58b
    move-result v20

    #@58c
    if-eqz v20, :cond_9

    #@58e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@591
    move-result-object v2

    #@592
    check-cast v2, Landroid/media/tv/ITvInputManagerCallback;

    #@594
    .line 1800
    .local v2, "callback":Landroid/media/tv/ITvInputManagerCallback;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@597
    move-result-object v20

    #@598
    move-object/from16 v0, v20

    #@59a
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@59d
    goto :goto_9

    #@59e
    .line 1802
    .end local v2    # "callback":Landroid/media/tv/ITvInputManagerCallback;
    :cond_9
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@5a1
    .line 1804
    new-instance v20, Ljava/lang/StringBuilder;

    #@5a3
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@5a6
    const-string/jumbo v22, "mainSessionToken: "

    #@5a9
    move-object/from16 v0, v20

    #@5ab
    move-object/from16 v1, v22

    #@5ad
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b0
    move-result-object v20

    #@5b1
    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get4(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    #@5b4
    move-result-object v22

    #@5b5
    move-object/from16 v0, v20

    #@5b7
    move-object/from16 v1, v22

    #@5b9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5bc
    move-result-object v20

    #@5bd
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c0
    move-result-object v20

    #@5c1
    move-object/from16 v0, v20

    #@5c3
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@5c6
    .line 1805
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5c9
    .line 1708
    add-int/lit8 v10, v10, 0x1

    #@5cb
    goto/16 :goto_1

    #@5cd
    .end local v3    # "callback$iterator":Ljava/util/Iterator;
    .end local v9    # "entry$iterator":Ljava/util/Iterator;
    .end local v12    # "packageName$iterator":Ljava/util/Iterator;
    .end local v18    # "userId":I
    .end local v19    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_a
    monitor-exit v21

    #@5ce
    .line 1690
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
    .line 1604
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    #@5
    move-result-object v4

    #@6
    .line 1605
    const-string/jumbo v5, "android.permission.CAPTURE_TV_INPUT"

    #@9
    .line 1604
    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_0

    #@f
    .line 1607
    new-instance v4, Ljava/lang/SecurityException;

    #@11
    const-string/jumbo v5, "Requires CAPTURE_TV_INPUT permission"

    #@14
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@17
    throw v4

    #@18
    .line 1610
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1b
    move-result-wide v2

    #@1c
    .line 1611
    .local v2, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1f
    move-result v0

    #@20
    .line 1612
    .local v0, "callingUid":I
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@22
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@25
    move-result v5

    #@26
    .line 1613
    const-string/jumbo v6, "getAvailableTvStreamConfigList"

    #@29
    .line 1612
    invoke-static {v4, v5, v0, p2, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@2c
    move-result v1

    #@2d
    .line 1615
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
    .line 1618
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3a
    .line 1615
    return-object v4

    #@3b
    .line 1617
    :catchall_0
    move-exception v4

    #@3c
    .line 1618
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3f
    .line 1617
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
    .line 943
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@5
    move-result v7

    #@6
    .line 944
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v8

    #@a
    const-string/jumbo v9, "getBlockedRatings"

    #@d
    .line 943
    invoke-static {v6, v7, v8, p1, v9}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v4

    #@11
    .line 945
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v0

    #@15
    .line 947
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
    .line 948
    :try_start_1
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v6, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@21
    move-result-object v5

    #@22
    .line 949
    .local v5, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v3, Ljava/util/ArrayList;

    #@24
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@27
    .line 951
    .local v3, "ratings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get6(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v6}, Lcom/android/server/tv/PersistentDataStore;->getBlockedRatings()[Landroid/media/tv/TvContentRating;

    #@2e
    move-result-object v8

    #@2f
    .line 950
    const/4 v6, 0x0

    #@30
    array-length v9, v8

    #@31
    :goto_0
    if-ge v6, v9, :cond_0

    #@33
    aget-object v2, v8, v6

    #@35
    .line 952
    .local v2, "rating":Landroid/media/tv/TvContentRating;
    invoke-virtual {v2}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    #@38
    move-result-object v10

    #@39
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    .line 950
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
    .line 957
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@43
    .line 954
    return-object v3

    #@44
    .line 947
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
    .line 956
    :catchall_1
    move-exception v6

    #@48
    .line 957
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4b
    .line 956
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
    .line 1535
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
    .line 1537
    new-instance v8, Ljava/lang/SecurityException;

    #@12
    const-string/jumbo v9, "Requires DVB_DEVICE permission"

    #@15
    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@18
    throw v8

    #@19
    .line 1540
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1c
    move-result-wide v6

    #@1d
    .line 1542
    .local v6, "identity":J
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    #@1f
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@22
    .line 1543
    .local v3, "deviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/tv/DvbDeviceInfo;>;"
    new-instance v1, Ljava/io/File;

    #@24
    const-string/jumbo v9, "/dev"

    #@27
    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@2a
    .line 1544
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
    .line 1545
    .local v4, "fileName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/tv/TvInputManagerService;->-get6()Ljava/util/regex/Pattern;

    #@36
    move-result-object v11

    #@37
    invoke-virtual {v11, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@3a
    move-result-object v5

    #@3b
    .line 1546
    .local v5, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    #@3e
    move-result v11

    #@3f
    if-eqz v11, :cond_1

    #@41
    .line 1547
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
    .line 1548
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
    .line 1549
    .local v2, "deviceId":I
    new-instance v11, Landroid/media/tv/DvbDeviceInfo;

    #@55
    invoke-direct {v11, v0, v2}, Landroid/media/tv/DvbDeviceInfo;-><init>(II)V

    #@58
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5b
    .line 1544
    .end local v0    # "adapterId":I
    .end local v2    # "deviceId":I
    :cond_1
    add-int/lit8 v8, v8, 0x1

    #@5d
    goto :goto_0

    #@5e
    .line 1552
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@61
    move-result-object v8

    #@62
    .line 1554
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@65
    .line 1552
    return-object v8

    #@66
    .line 1553
    .end local v1    # "devDirectory":Ljava/io/File;
    .end local v3    # "deviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/tv/DvbDeviceInfo;>;"
    :catchall_0
    move-exception v8

    #@67
    .line 1554
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@6a
    .line 1553
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
    .line 1479
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
    .line 1481
    const/4 v2, 0x0

    #@10
    return-object v2

    #@11
    .line 1484
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v0

    #@15
    .line 1486
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
    .line 1488
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22
    .line 1486
    return-object v2

    #@23
    .line 1487
    :catchall_0
    move-exception v2

    #@24
    .line 1488
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@27
    .line 1487
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
    .line 837
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@5
    move-result v5

    #@6
    .line 838
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v6

    #@a
    const-string/jumbo v7, "getTvContentRatingSystemList"

    #@d
    .line 837
    invoke-static {v4, v5, v6, p1, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v2

    #@11
    .line 839
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v0

    #@15
    .line 841
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
    .line 842
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@21
    move-result-object v3

    #@22
    .line 843
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
    .line 846
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a
    .line 843
    return-object v4

    #@2b
    .line 841
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
    .line 845
    :catchall_1
    move-exception v4

    #@2f
    .line 846
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@32
    .line 845
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
    .line 805
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@6
    move-result v7

    #@7
    .line 806
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@a
    move-result v8

    #@b
    const-string/jumbo v9, "getTvInputInfo"

    #@e
    .line 805
    invoke-static {v6, v7, v8, p2, v9}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@11
    move-result v2

    #@12
    .line 807
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@15
    move-result-wide v0

    #@16
    .line 809
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
    .line 810
    :try_start_1
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1f
    invoke-static {v7, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@22
    move-result-object v4

    #@23
    .line 811
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
    .line 812
    .local v3, "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v3, :cond_0

    #@2f
    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@30
    .line 815
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@33
    .line 812
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
    .line 809
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
    .line 814
    :catchall_1
    move-exception v5

    #@3d
    .line 815
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@40
    .line 814
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
    .line 786
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@5
    move-result v8

    #@6
    .line 787
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v9

    #@a
    const-string/jumbo v10, "getTvInputList"

    #@d
    .line 786
    invoke-static {v7, v8, v9, p1, v10}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v3

    #@11
    .line 788
    .local v3, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v0

    #@15
    .line 790
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
    .line 791
    :try_start_1
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v7, v3}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@21
    move-result-object v6

    #@22
    .line 792
    .local v6, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v2, Ljava/util/ArrayList;

    #@24
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@27
    .line 793
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
    .line 794
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
    .line 790
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
    .line 798
    :catchall_1
    move-exception v7

    #@4b
    .line 799
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4e
    .line 798
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
    .line 799
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@53
    .line 796
    return-object v2
.end method

.method public getTvInputState(Ljava/lang/String;I)I
    .locals 9
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 821
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@5
    move-result v6

    #@6
    .line 822
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v7

    #@a
    const-string/jumbo v8, "getTvInputState"

    #@d
    .line 821
    invoke-static {v5, v6, v7, p2, v8}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v2

    #@11
    .line 823
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v0

    #@15
    .line 825
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
    .line 826
    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v5, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@21
    move-result-object v4

    #@22
    .line 827
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
    .line 828
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
    .line 831
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@33
    .line 828
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
    .line 825
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
    .line 830
    :catchall_1
    move-exception v5

    #@3d
    .line 831
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@40
    .line 830
    throw v5
.end method

.method public isParentalControlsEnabled(I)Z
    .locals 8
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 896
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@5
    move-result v5

    #@6
    .line 897
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v6

    #@a
    const-string/jumbo v7, "isParentalControlsEnabled"

    #@d
    .line 896
    invoke-static {v4, v5, v6, p1, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v2

    #@11
    .line 898
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v0

    #@15
    .line 900
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
    .line 901
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@21
    move-result-object v3

    #@22
    .line 902
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
    .line 905
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2e
    .line 902
    return v4

    #@2f
    .line 900
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
    .line 904
    :catchall_1
    move-exception v4

    #@33
    .line 905
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@36
    .line 904
    throw v4
.end method

.method public isRatingBlocked(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "rating"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 927
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@5
    move-result v5

    #@6
    .line 928
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v6

    #@a
    const-string/jumbo v7, "isRatingBlocked"

    #@d
    .line 927
    invoke-static {v4, v5, v6, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v2

    #@11
    .line 929
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v0

    #@15
    .line 931
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
    .line 932
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@21
    move-result-object v3

    #@22
    .line 933
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get6(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    #@25
    move-result-object v4

    #@26
    .line 934
    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    #@29
    move-result-object v6

    #@2a
    .line 933
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
    .line 937
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@32
    .line 933
    return v4

    #@33
    .line 931
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
    .line 936
    :catchall_1
    move-exception v4

    #@37
    .line 937
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3a
    .line 936
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
    .line 1663
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@6
    move-result-wide v2

    #@7
    .line 1664
    .local v2, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@a
    move-result v0

    #@b
    .line 1665
    .local v0, "callingUid":I
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@d
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@10
    move-result v7

    #@11
    .line 1666
    const-string/jumbo v8, "isSingleSessionActive"

    #@14
    .line 1665
    invoke-static {v6, v7, v0, p1, v8}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@17
    move-result v1

    #@18
    .line 1668
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
    .line 1669
    :try_start_1
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@21
    invoke-static {v6, v1}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@24
    move-result-object v5

    #@25
    .line 1670
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
    .line 1684
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@33
    .line 1671
    return v9

    #@34
    .line 1672
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
    .line 1673
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@41
    move-result-object v6

    #@42
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@45
    move-result-object v6

    #@46
    .line 1674
    const/4 v8, 0x2

    #@47
    new-array v8, v8, [Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@49
    .line 1673
    invoke-interface {v6, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@4c
    move-result-object v4

    #@4d
    check-cast v4, [Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@4f
    .line 1676
    .local v4, "sessionStates":[Lcom/android/server/tv/TvInputManagerService$SessionState;
    const/4 v6, 0x0

    #@50
    aget-object v6, v4, v6

    #@52
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get2(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@55
    move-result-object v6

    #@56
    if-nez v6, :cond_1

    #@58
    .line 1677
    const/4 v6, 0x1

    #@59
    aget-object v6, v4, v6

    #@5b
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get2(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;
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
    .line 1684
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@65
    .line 1678
    return v9

    #@66
    .end local v4    # "sessionStates":[Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_2
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@67
    .line 1684
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@6a
    .line 1681
    return v10

    #@6b
    .line 1668
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
    .line 1683
    :catchall_1
    move-exception v6

    #@6f
    .line 1684
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@72
    .line 1683
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
    .line 1561
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
    .line 1563
    new-instance v4, Ljava/lang/SecurityException;

    #@12
    const-string/jumbo v5, "Requires DVB_DEVICE permission"

    #@15
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@18
    throw v4

    #@19
    .line 1566
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1c
    move-result-wide v2

    #@1d
    .line 1569
    .local v2, "identity":J
    packed-switch p2, :pswitch_data_0

    #@20
    .line 1583
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
    .line 1596
    :catchall_0
    move-exception v4

    #@3b
    .line 1597
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3e
    .line 1596
    throw v4

    #@3f
    .line 1571
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
    .line 1572
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
    .line 1571
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5e
    move-result-object v0

    #@5f
    .line 1589
    .local v0, "deviceFileName":Ljava/lang/String;
    :goto_0
    :try_start_2
    new-instance v5, Ljava/io/File;

    #@61
    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@64
    .line 1590
    if-ne v8, p2, :cond_1

    #@66
    .line 1591
    const/high16 v4, 0x30000000

    #@68
    .line 1589
    :goto_1
    invoke-static {v5, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6b
    move-result-object v4

    #@6c
    .line 1597
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@6f
    .line 1589
    return-object v4

    #@70
    .line 1575
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
    .line 1576
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
    .line 1575
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@8f
    move-result-object v0

    #@90
    .restart local v0    # "deviceFileName":Ljava/lang/String;
    goto :goto_0

    #@91
    .line 1579
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
    .line 1580
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
    .line 1579
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@b0
    move-result-object v0

    #@b1
    .restart local v0    # "deviceFileName":Ljava/lang/String;
    goto :goto_0

    #@b2
    .line 1592
    :cond_1
    const/high16 v4, 0x10000000

    #@b4
    goto :goto_1

    #@b5
    .line 1593
    :catch_0
    move-exception v1

    #@b6
    .line 1594
    .local v1, "e":Ljava/io/FileNotFoundException;
    const/4 v4, 0x0

    #@b7
    .line 1597
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ba
    .line 1594
    return-object v4

    #@bb
    .line 1569
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
    .line 852
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@5
    move-result v6

    #@6
    .line 853
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v7

    #@a
    const-string/jumbo v8, "registerCallback"

    #@d
    .line 852
    invoke-static {v5, v6, v7, p2, v8}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v1

    #@11
    .line 854
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 856
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
    .line 857
    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v5, v1}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@21
    move-result-object v4

    #@22
    .line 858
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get0(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    #@25
    move-result-object v5

    #@26
    invoke-interface {v5, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    .line 860
    :try_start_2
    invoke-interface {p1}, Landroid/media/tv/ITvInputManagerCallback;->asBinder()Landroid/os/IBinder;

    #@2c
    move-result-object v5

    #@2d
    new-instance v7, Lcom/android/server/tv/TvInputManagerService$BinderService$1;

    #@2f
    invoke-direct {v7, p0, v4, p1}, Lcom/android/server/tv/TvInputManagerService$BinderService$1;-><init>(Lcom/android/server/tv/TvInputManagerService$BinderService;Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/ITvInputManagerCallback;)V

    #@32
    .line 869
    const/4 v8, 0x0

    #@33
    .line 860
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
    .line 875
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3a
    .line 851
    return-void

    #@3b
    .line 870
    :catch_0
    move-exception v0

    #@3c
    .line 871
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
    .line 856
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
    .line 874
    :catchall_1
    move-exception v5

    #@4a
    .line 875
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4d
    .line 874
    throw v5
.end method

.method public relayoutOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "frame"    # Landroid/graphics/Rect;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1337
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1338
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v6

    #@a
    .line 1339
    const-string/jumbo v7, "relayoutOverlayView"

    #@d
    .line 1338
    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v4

    #@11
    .line 1340
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 1342
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
    .line 1344
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
    .line 1351
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 1336
    return-void

    #@2a
    .line 1346
    :catch_0
    move-exception v1

    #@2b
    .line 1347
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
    .line 1342
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
    .line 1350
    :catchall_1
    move-exception v5

    #@39
    .line 1351
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 1350
    throw v5
.end method

.method public releaseSession(Landroid/os/IBinder;I)V
    .locals 7
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1060
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1061
    .local v0, "callingUid":I
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v5

    #@a
    .line 1062
    const-string/jumbo v6, "releaseSession"

    #@d
    .line 1061
    invoke-static {v4, v5, v0, p2, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v1

    #@11
    .line 1063
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 1065
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
    .line 1066
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v4, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->-wrap13(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@22
    .line 1069
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@25
    .line 1056
    return-void

    #@26
    .line 1065
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
    .line 1068
    :catchall_1
    move-exception v4

    #@2a
    .line 1069
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2d
    .line 1068
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
    .line 1516
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
    .line 1518
    return-void

    #@10
    .line 1521
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@13
    move-result-wide v2

    #@14
    .line 1522
    .local v2, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@17
    move-result v0

    #@18
    .line 1523
    .local v0, "callingUid":I
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1a
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1d
    move-result v5

    #@1e
    .line 1524
    const-string/jumbo v6, "releaseTvInputHardware"

    #@21
    .line 1523
    invoke-static {v4, v5, v0, p3, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@24
    move-result v1

    #@25
    .line 1526
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
    .line 1529
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@31
    .line 1515
    return-void

    #@32
    .line 1528
    :catchall_0
    move-exception v4

    #@33
    .line 1529
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@36
    .line 1528
    throw v4
.end method

.method public removeBlockedRating(Ljava/lang/String;I)V
    .locals 8
    .param p1, "rating"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 980
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    #@3
    .line 981
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@8
    move-result v5

    #@9
    .line 982
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@c
    move-result v6

    #@d
    const-string/jumbo v7, "removeBlockedRating"

    #@10
    .line 981
    invoke-static {v4, v5, v6, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@13
    move-result v2

    #@14
    .line 983
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@17
    move-result-wide v0

    #@18
    .line 985
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
    .line 986
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@21
    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@24
    move-result-object v3

    #@25
    .line 987
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get6(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    #@28
    move-result-object v4

    #@29
    .line 988
    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    #@2c
    move-result-object v6

    #@2d
    .line 987
    invoke-virtual {v4, v6}, Lcom/android/server/tv/PersistentDataStore;->removeBlockedRating(Landroid/media/tv/TvContentRating;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@31
    .line 991
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@34
    .line 979
    return-void

    #@35
    .line 985
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
    .line 990
    :catchall_1
    move-exception v4

    #@39
    .line 991
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 990
    throw v4
.end method

.method public removeOverlayView(Landroid/os/IBinder;I)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1357
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1358
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v6

    #@a
    .line 1359
    const-string/jumbo v7, "removeOverlayView"

    #@d
    .line 1358
    invoke-static {v5, v6, v0, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v4

    #@11
    .line 1360
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 1362
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
    .line 1364
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
    .line 1371
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 1356
    return-void

    #@2a
    .line 1366
    :catch_0
    move-exception v1

    #@2b
    .line 1367
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
    .line 1362
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
    .line 1370
    :catchall_1
    move-exception v5

    #@39
    .line 1371
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 1370
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
    .line 1275
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1276
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v6

    #@a
    .line 1277
    const-string/jumbo v7, "selectTrack"

    #@d
    .line 1276
    invoke-static {v5, v6, v0, p4, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

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
    .line 1282
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
    .line 1289
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 1274
    return-void

    #@2a
    .line 1284
    :catch_0
    move-exception v1

    #@2b
    .line 1285
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
    .line 1280
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
    .line 1288
    :catchall_1
    move-exception v5

    #@39
    .line 1289
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 1288
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
    .line 1296
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1297
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v6

    #@a
    .line 1298
    const-string/jumbo v7, "sendAppPrivateCommand"

    #@d
    .line 1297
    invoke-static {v5, v6, v0, p4, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v4

    #@11
    .line 1299
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 1301
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
    .line 1303
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
    .line 1310
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 1295
    return-void

    #@2a
    .line 1305
    :catch_0
    move-exception v1

    #@2b
    .line 1306
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
    .line 1301
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
    .line 1309
    :catchall_1
    move-exception v5

    #@39
    .line 1310
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 1309
    throw v5
.end method

.method public setCaptionEnabled(Landroid/os/IBinder;ZI)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1255
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1256
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v6

    #@a
    .line 1257
    const-string/jumbo v7, "setCaptionEnabled"

    #@d
    .line 1256
    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v4

    #@11
    .line 1258
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 1260
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
    .line 1262
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
    .line 1269
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 1254
    return-void

    #@2a
    .line 1264
    :catch_0
    move-exception v1

    #@2b
    .line 1265
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
    .line 1260
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
    .line 1268
    :catchall_1
    move-exception v5

    #@39
    .line 1269
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 1268
    throw v5
.end method

.method public setMainSession(Landroid/os/IBinder;I)V
    .locals 10
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1078
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1079
    .local v0, "callingUid":I
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v7

    #@a
    .line 1080
    const-string/jumbo v8, "setMainSession"

    #@d
    .line 1079
    invoke-static {v6, v7, v0, p2, v8}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v4

    #@11
    .line 1081
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 1083
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
    .line 1084
    :try_start_1
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v6, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@21
    move-result-object v5

    #@22
    .line 1085
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
    .line 1104
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2c
    .line 1086
    return-void

    #@2d
    .line 1091
    :cond_0
    :try_start_3
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get4(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    #@30
    move-result-object v1

    #@31
    .line 1092
    .local v1, "oldMainSessionToken":Landroid/os/IBinder;
    invoke-static {v5, p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-set1(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;

    #@34
    .line 1096
    if-eqz p1, :cond_1

    #@36
    .line 1097
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@38
    const/4 v8, 0x1

    #@39
    invoke-static {v6, p1, v8, v0, p2}, Lcom/android/server/tv/TvInputManagerService;->-wrap17(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;ZII)V

    #@3c
    .line 1099
    :cond_1
    if-eqz v1, :cond_2

    #@3e
    .line 1100
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@40
    const/4 v8, 0x0

    #@41
    const/16 v9, 0x3e8

    #@43
    invoke-static {v6, v1, v8, v9, p2}, Lcom/android/server/tv/TvInputManagerService;->-wrap17(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;ZII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@46
    :cond_2
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@47
    .line 1104
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4a
    .line 1074
    return-void

    #@4b
    .line 1083
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
    .line 1103
    :catchall_1
    move-exception v6

    #@4f
    .line 1104
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@52
    .line 1103
    throw v6
.end method

.method public setParentalControlsEnabled(ZI)V
    .locals 8
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 911
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    #@3
    .line 912
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@8
    move-result v5

    #@9
    .line 913
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@c
    move-result v6

    #@d
    const-string/jumbo v7, "setParentalControlsEnabled"

    #@10
    .line 912
    invoke-static {v4, v5, v6, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@13
    move-result v2

    #@14
    .line 914
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@17
    move-result-wide v0

    #@18
    .line 916
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
    .line 917
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@21
    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@24
    move-result-object v3

    #@25
    .line 918
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
    .line 921
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@30
    .line 910
    return-void

    #@31
    .line 916
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
    .line 920
    :catchall_1
    move-exception v4

    #@35
    .line 921
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@38
    .line 920
    throw v4
.end method

.method public setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V
    .locals 10
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1110
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1111
    .local v0, "callingUid":I
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v7

    #@a
    .line 1112
    const-string/jumbo v8, "setSurface"

    #@d
    .line 1111
    invoke-static {v6, v7, v0, p3, v8}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v4

    #@11
    .line 1113
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 1115
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
    .line 1117
    :try_start_1
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v6, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap5(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@21
    move-result-object v5

    #@22
    .line 1119
    .local v5, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get2(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@25
    move-result-object v6

    #@26
    if-nez v6, :cond_1

    #@28
    .line 1120
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
    .line 1130
    if-eqz p2, :cond_0

    #@34
    .line 1132
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    #@37
    .line 1134
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3a
    .line 1109
    return-void

    #@3b
    .line 1122
    .restart local v5    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_1
    :try_start_3
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@3d
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get2(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@40
    move-result-object v8

    #@41
    .line 1123
    const/16 v9, 0x3e8

    #@43
    .line 1122
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
    .line 1125
    .end local v5    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :catch_0
    move-exception v1

    #@4c
    .line 1126
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
    .line 1115
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
    .line 1129
    :catchall_1
    move-exception v6

    #@5a
    .line 1130
    if-eqz p2, :cond_2

    #@5c
    .line 1132
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    #@5f
    .line 1134
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@62
    .line 1129
    throw v6
.end method

.method public setVolume(Landroid/os/IBinder;FI)V
    .locals 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "volume"    # F
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1167
    const/high16 v1, 0x3f800000    # 1.0f

    #@2
    .line 1168
    .local v1, "REMOTE_VOLUME_ON":F
    const/4 v0, 0x0

    #@3
    .line 1169
    .local v0, "REMOTE_VOLUME_OFF":F
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v2

    #@7
    .line 1170
    .local v2, "callingUid":I
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@c
    move-result v9

    #@d
    .line 1171
    const-string/jumbo v10, "setVolume"

    #@10
    .line 1170
    invoke-static {v8, v9, v2, p3, v10}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@13
    move-result v6

    #@14
    .line 1172
    .local v6, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@17
    move-result-wide v4

    #@18
    .line 1174
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
    .line 1176
    :try_start_1
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@21
    invoke-static {v8, p1, v2, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap5(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@24
    move-result-object v7

    #@25
    .line 1178
    .local v7, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@27
    invoke-static {v8, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap2(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@2a
    move-result-object v8

    #@2b
    invoke-interface {v8, p2}, Landroid/media/tv/ITvInputSession;->setVolume(F)V

    #@2e
    .line 1179
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get2(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@31
    move-result-object v8

    #@32
    if-eqz v8, :cond_0

    #@34
    .line 1182
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@36
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get2(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@39
    move-result-object v10

    #@3a
    .line 1183
    const/16 v11, 0x3e8

    #@3c
    .line 1182
    invoke-static {v8, v10, v11, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    #@3f
    move-result-object v10

    #@40
    .line 1183
    const/4 v8, 0x0

    #@41
    cmpl-float v8, p2, v8

    #@43
    if-lez v8, :cond_1

    #@45
    .line 1184
    const/high16 v8, 0x3f800000    # 1.0f

    #@47
    .line 1182
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
    .line 1191
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4e
    .line 1166
    return-void

    #@4f
    .line 1184
    .restart local v7    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_1
    const/4 v8, 0x0

    #@50
    goto :goto_0

    #@51
    .line 1186
    .end local v7    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :catch_0
    move-exception v3

    #@52
    .line 1187
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
    .line 1174
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
    .line 1190
    :catchall_1
    move-exception v8

    #@60
    .line 1191
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@63
    .line 1190
    throw v8
.end method

.method public timeShiftEnablePositionTracking(Landroid/os/IBinder;ZI)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1459
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1460
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v6

    #@a
    .line 1461
    const-string/jumbo v7, "timeShiftEnablePositionTracking"

    #@d
    .line 1460
    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v4

    #@11
    .line 1462
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 1464
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
    .line 1466
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
    .line 1473
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 1458
    return-void

    #@2a
    .line 1468
    :catch_0
    move-exception v1

    #@2b
    .line 1469
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
    .line 1464
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
    .line 1472
    :catchall_1
    move-exception v5

    #@39
    .line 1473
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 1472
    throw v5
.end method

.method public timeShiftPause(Landroid/os/IBinder;I)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1377
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1378
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v6

    #@a
    .line 1379
    const-string/jumbo v7, "timeShiftPause"

    #@d
    .line 1378
    invoke-static {v5, v6, v0, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v4

    #@11
    .line 1380
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 1382
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
    .line 1384
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
    .line 1391
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 1376
    return-void

    #@2a
    .line 1386
    :catch_0
    move-exception v1

    #@2b
    .line 1387
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
    .line 1382
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
    .line 1390
    :catchall_1
    move-exception v5

    #@39
    .line 1391
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 1390
    throw v5
.end method

.method public timeShiftResume(Landroid/os/IBinder;I)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1397
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1398
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v6

    #@a
    .line 1399
    const-string/jumbo v7, "timeShiftResume"

    #@d
    .line 1398
    invoke-static {v5, v6, v0, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v4

    #@11
    .line 1400
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 1402
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
    .line 1404
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
    .line 1411
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 1396
    return-void

    #@2a
    .line 1406
    :catch_0
    move-exception v1

    #@2b
    .line 1407
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
    .line 1402
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
    .line 1410
    :catchall_1
    move-exception v5

    #@39
    .line 1411
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 1410
    throw v5
.end method

.method public timeShiftSeekTo(Landroid/os/IBinder;JI)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "timeMs"    # J
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 1417
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1418
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v6

    #@a
    .line 1419
    const-string/jumbo v7, "timeShiftSeekTo"

    #@d
    .line 1418
    invoke-static {v5, v6, v0, p4, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v4

    #@11
    .line 1420
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 1422
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
    .line 1424
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
    .line 1431
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 1416
    return-void

    #@2a
    .line 1426
    :catch_0
    move-exception v1

    #@2b
    .line 1427
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
    .line 1422
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
    .line 1430
    :catchall_1
    move-exception v5

    #@39
    .line 1431
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 1430
    throw v5
.end method

.method public timeShiftSetPlaybackParams(Landroid/os/IBinder;Landroid/media/PlaybackParams;I)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "params"    # Landroid/media/PlaybackParams;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1438
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1439
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v6

    #@a
    .line 1440
    const-string/jumbo v7, "timeShiftSetPlaybackParams"

    #@d
    .line 1439
    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v4

    #@11
    .line 1441
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 1443
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
    .line 1445
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
    .line 1452
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 1437
    return-void

    #@2a
    .line 1447
    :catch_0
    move-exception v1

    #@2b
    .line 1448
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
    .line 1443
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
    .line 1451
    :catchall_1
    move-exception v5

    #@39
    .line 1452
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 1451
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
    .line 1197
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v3

    #@4
    .line 1198
    .local v3, "callingUid":I
    iget-object v10, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v11

    #@a
    .line 1199
    const-string/jumbo v12, "tune"

    #@d
    .line 1198
    move/from16 v0, p4

    #@f
    invoke-static {v10, v11, v3, v0, v12}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@12
    move-result v5

    #@13
    .line 1200
    .local v5, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@16
    move-result-wide v6

    #@17
    .line 1202
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
    .line 1204
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
    .line 1206
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
    .line 1228
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@35
    .line 1208
    return-void

    #@36
    .line 1211
    :cond_0
    :try_start_3
    iget-object v10, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@38
    invoke-static {v10, v5}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@3b
    move-result-object v9

    #@3c
    .line 1212
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
    .line 1215
    .local v8, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@49
    move-result-object v2

    #@4a
    .line 1216
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/TvInputInfo;

    #@4d
    move-result-object v10

    #@4e
    invoke-virtual {v10}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    #@51
    move-result-object v10

    #@52
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@55
    move-result-object v10

    #@56
    iput-object v10, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@58
    .line 1217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@5b
    move-result-wide v12

    #@5c
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5f
    move-result-object v10

    #@60
    iput-object v10, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@62
    .line 1218
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    #@65
    move-result-wide v12

    #@66
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@69
    move-result-object v10

    #@6a
    iput-object v10, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@6c
    .line 1219
    move-object/from16 v0, p3

    #@6e
    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@70
    .line 1220
    iput-object p1, v2, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    #@72
    .line 1221
    iget-object v10, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@74
    invoke-static {v10}, Lcom/android/server/tv/TvInputManagerService;->-get5(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    #@77
    move-result-object v10

    #@78
    const/4 v12, 0x1

    #@79
    invoke-virtual {v10, v12, v2}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@7c
    move-result-object v10

    #@7d
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@80
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v8    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v9    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :goto_0
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@81
    .line 1228
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@84
    .line 1196
    return-void

    #@85
    .line 1223
    :catch_0
    move-exception v4

    #@86
    .line 1224
    .local v4, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v10, "TvInputManagerService"

    #@89
    const-string/jumbo v12, "error in tune"

    #@8c
    invoke-static {v10, v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@8f
    goto :goto_0

    #@90
    .line 1202
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    #@91
    :try_start_6
    monitor-exit v11

    #@92
    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@93
    .line 1227
    :catchall_1
    move-exception v10

    #@94
    .line 1228
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@97
    .line 1227
    throw v10
.end method

.method public unblockContent(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "unblockedRating"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1235
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1236
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v6

    #@a
    .line 1237
    const-string/jumbo v7, "unblockContent"

    #@d
    .line 1236
    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v4

    #@11
    .line 1238
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 1240
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
    .line 1242
    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    #@21
    move-result-object v5

    #@22
    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->unblockContent(Ljava/lang/String;)V
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
    .line 1249
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 1234
    return-void

    #@2a
    .line 1244
    :catch_0
    move-exception v1

    #@2b
    .line 1245
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v5, "TvInputManagerService"

    #@2e
    const-string/jumbo v7, "error in unblockContent"

    #@31
    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 1240
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
    .line 1248
    :catchall_1
    move-exception v5

    #@39
    .line 1249
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 1248
    throw v5
.end method

.method public unregisterCallback(Landroid/media/tv/ITvInputManagerCallback;I)V
    .locals 8
    .param p1, "callback"    # Landroid/media/tv/ITvInputManagerCallback;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 881
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@5
    move-result v5

    #@6
    .line 882
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v6

    #@a
    const-string/jumbo v7, "unregisterCallback"

    #@d
    .line 881
    invoke-static {v4, v5, v6, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    #@10
    move-result v2

    #@11
    .line 883
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v0

    #@15
    .line 885
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
    .line 886
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1e
    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@21
    move-result-object v3

    #@22
    .line 887
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
    .line 890
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2d
    .line 880
    return-void

    #@2e
    .line 885
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
    .line 889
    :catchall_1
    move-exception v4

    #@32
    .line 890
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@35
    .line 889
    throw v4
.end method
