.class final Lcom/android/server/tv/TvInputManagerService$HardwareListener;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"

# interfaces
.implements Lcom/android/server/tv/TvInputHardwareManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HardwareListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputManagerService;

    #@0
    .prologue
    .line 2498
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$HardwareListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService$HardwareListener;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    #@3
    return-void
.end method


# virtual methods
.method public onHardwareDeviceAdded(Landroid/media/tv/TvInputHardwareInfo;)V
    .locals 7
    .param p1, "info"    # Landroid/media/tv/TvInputHardwareInfo;

    #@0
    .prologue
    .line 2508
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v5

    #@6
    monitor-enter v5

    #@7
    .line 2509
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@9
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@b
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->-get1(Lcom/android/server/tv/TvInputManagerService;)I

    #@e
    move-result v6

    #@f
    invoke-static {v4, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@12
    move-result-object v3

    #@13
    .line 2511
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@16
    move-result-object v4

    #@17
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@1a
    move-result-object v4

    #@1b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v2

    #@1f
    .local v2, "serviceState$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_1

    #@25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@2b
    .line 2512
    .local v1, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get5(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_0

    #@31
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    move-result-object v4

    #@35
    if-eqz v4, :cond_0

    #@37
    .line 2514
    :try_start_1
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    #@3a
    move-result-object v4

    #@3b
    invoke-interface {v4, p1}, Landroid/media/tv/ITvInputService;->notifyHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    goto :goto_0

    #@3f
    .line 2515
    :catch_0
    move-exception v0

    #@40
    .line 2516
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v4, "TvInputManagerService"

    #@43
    const-string/jumbo v6, "error in notifyHardwareAdded"

    #@46
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@49
    goto :goto_0

    #@4a
    .line 2508
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v2    # "serviceState$iterator":Ljava/util/Iterator;
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v4

    #@4b
    monitor-exit v5

    #@4c
    throw v4

    #@4d
    .restart local v2    # "serviceState$iterator":Ljava/util/Iterator;
    .restart local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_1
    monitor-exit v5

    #@4e
    .line 2507
    return-void
.end method

.method public onHardwareDeviceRemoved(Landroid/media/tv/TvInputHardwareInfo;)V
    .locals 7
    .param p1, "info"    # Landroid/media/tv/TvInputHardwareInfo;

    #@0
    .prologue
    .line 2524
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v5

    #@6
    monitor-enter v5

    #@7
    .line 2525
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@9
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@b
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->-get1(Lcom/android/server/tv/TvInputManagerService;)I

    #@e
    move-result v6

    #@f
    invoke-static {v4, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@12
    move-result-object v3

    #@13
    .line 2527
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@16
    move-result-object v4

    #@17
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@1a
    move-result-object v4

    #@1b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v2

    #@1f
    .local v2, "serviceState$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_1

    #@25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@2b
    .line 2528
    .local v1, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get5(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_0

    #@31
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    move-result-object v4

    #@35
    if-eqz v4, :cond_0

    #@37
    .line 2530
    :try_start_1
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    #@3a
    move-result-object v4

    #@3b
    invoke-interface {v4, p1}, Landroid/media/tv/ITvInputService;->notifyHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    goto :goto_0

    #@3f
    .line 2531
    :catch_0
    move-exception v0

    #@40
    .line 2532
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v4, "TvInputManagerService"

    #@43
    const-string/jumbo v6, "error in notifyHardwareRemoved"

    #@46
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@49
    goto :goto_0

    #@4a
    .line 2524
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v2    # "serviceState$iterator":Ljava/util/Iterator;
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v4

    #@4b
    monitor-exit v5

    #@4c
    throw v4

    #@4d
    .restart local v2    # "serviceState$iterator":Ljava/util/Iterator;
    .restart local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_1
    monitor-exit v5

    #@4e
    .line 2523
    return-void
.end method

.method public onHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 7
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@0
    .prologue
    .line 2540
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v5

    #@6
    monitor-enter v5

    #@7
    .line 2541
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@9
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@b
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->-get1(Lcom/android/server/tv/TvInputManagerService;)I

    #@e
    move-result v6

    #@f
    invoke-static {v4, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@12
    move-result-object v3

    #@13
    .line 2543
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@16
    move-result-object v4

    #@17
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@1a
    move-result-object v4

    #@1b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v2

    #@1f
    .local v2, "serviceState$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_1

    #@25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@2b
    .line 2544
    .local v1, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get5(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_0

    #@31
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    move-result-object v4

    #@35
    if-eqz v4, :cond_0

    #@37
    .line 2546
    :try_start_1
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    #@3a
    move-result-object v4

    #@3b
    invoke-interface {v4, p1}, Landroid/media/tv/ITvInputService;->notifyHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    goto :goto_0

    #@3f
    .line 2547
    :catch_0
    move-exception v0

    #@40
    .line 2548
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v4, "TvInputManagerService"

    #@43
    const-string/jumbo v6, "error in notifyHdmiDeviceAdded"

    #@46
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@49
    goto :goto_0

    #@4a
    .line 2540
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v2    # "serviceState$iterator":Ljava/util/Iterator;
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v4

    #@4b
    monitor-exit v5

    #@4c
    throw v4

    #@4d
    .restart local v2    # "serviceState$iterator":Ljava/util/Iterator;
    .restart local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_1
    monitor-exit v5

    #@4e
    .line 2539
    return-void
.end method

.method public onHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 7
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@0
    .prologue
    .line 2556
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v5

    #@6
    monitor-enter v5

    #@7
    .line 2557
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@9
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@b
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->-get1(Lcom/android/server/tv/TvInputManagerService;)I

    #@e
    move-result v6

    #@f
    invoke-static {v4, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@12
    move-result-object v3

    #@13
    .line 2559
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@16
    move-result-object v4

    #@17
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@1a
    move-result-object v4

    #@1b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v2

    #@1f
    .local v2, "serviceState$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_1

    #@25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@2b
    .line 2560
    .local v1, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get5(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_0

    #@31
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    move-result-object v4

    #@35
    if-eqz v4, :cond_0

    #@37
    .line 2562
    :try_start_1
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    #@3a
    move-result-object v4

    #@3b
    invoke-interface {v4, p1}, Landroid/media/tv/ITvInputService;->notifyHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    goto :goto_0

    #@3f
    .line 2563
    :catch_0
    move-exception v0

    #@40
    .line 2564
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v4, "TvInputManagerService"

    #@43
    const-string/jumbo v6, "error in notifyHdmiDeviceRemoved"

    #@46
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@49
    goto :goto_0

    #@4a
    .line 2556
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v2    # "serviceState$iterator":Ljava/util/Iterator;
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v4

    #@4b
    monitor-exit v5

    #@4c
    throw v4

    #@4d
    .restart local v2    # "serviceState$iterator":Ljava/util/Iterator;
    .restart local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_1
    monitor-exit v5

    #@4e
    .line 2555
    return-void
.end method

.method public onHdmiDeviceUpdated(Ljava/lang/String;Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 5
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@0
    .prologue
    .line 2572
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 2574
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    #@a
    move-result v1

    #@b
    packed-switch v1, :pswitch_data_0

    #@e
    .line 2585
    const/4 v0, 0x0

    #@f
    .line 2588
    :goto_0
    if-eqz v0, :cond_0

    #@11
    .line 2589
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@16
    move-result v3

    #@17
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@19
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get1(Lcom/android/server/tv/TvInputManagerService;)I

    #@1c
    move-result v4

    #@1d
    invoke-static {v1, p1, v3, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap18(Lcom/android/server/tv/TvInputManagerService;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    :cond_0
    monitor-exit v2

    #@21
    .line 2571
    return-void

    #@22
    .line 2576
    :pswitch_0
    const/4 v1, 0x0

    #@23
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26
    move-result-object v0

    #@27
    .local v0, "state":Ljava/lang/Integer;
    goto :goto_0

    #@28
    .line 2581
    .end local v0    # "state":Ljava/lang/Integer;
    :pswitch_1
    const/4 v1, 0x1

    #@29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    move-result-object v0

    #@2d
    .restart local v0    # "state":Ljava/lang/Integer;
    goto :goto_0

    #@2e
    .line 2572
    .end local v0    # "state":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    #@2f
    monitor-exit v2

    #@30
    throw v1

    #@31
    .line 2574
    nop

    #@32
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onStateChanged(Ljava/lang/String;I)V
    .locals 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "state"    # I

    #@0
    .prologue
    .line 2501
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 2502
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@9
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@b
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-get1(Lcom/android/server/tv/TvInputManagerService;)I

    #@e
    move-result v2

    #@f
    invoke-static {v0, p1, p2, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap18(Lcom/android/server/tv/TvInputManagerService;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v1

    #@13
    .line 2500
    return-void

    #@14
    .line 2501
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method
