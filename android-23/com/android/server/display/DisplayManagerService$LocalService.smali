.class final Lcom/android/server/display/DisplayManagerService$LocalService;
.super Landroid/hardware/display/DisplayManagerInternal;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayManagerService;

    #@0
    .prologue
    .line 1502
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@2
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerInternal;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$LocalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$LocalService;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    #@3
    return-void
.end method


# virtual methods
.method public getDisplayInfo(I)Landroid/view/DisplayInfo;
    .locals 2
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 1541
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@2
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@5
    move-result v1

    #@6
    invoke-static {v0, p1, v1}, Lcom/android/server/display/DisplayManagerService;->-wrap2(Lcom/android/server/display/DisplayManagerService;II)Landroid/view/DisplayInfo;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V
    .locals 8
    .param p1, "callbacks"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "sensorManager"    # Landroid/hardware/SensorManager;

    #@0
    .prologue
    .line 1506
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get5(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@5
    move-result-object v6

    #@6
    monitor-enter v6

    #@7
    .line 1507
    :try_start_0
    new-instance v5, Lcom/android/server/display/DisplayManagerService$LocalService$1;

    #@9
    invoke-direct {v5, p0, p1}, Lcom/android/server/display/DisplayManagerService$LocalService$1;-><init>(Lcom/android/server/display/DisplayManagerService$LocalService;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V

    #@c
    .line 1522
    .local v5, "blanker":Lcom/android/server/display/DisplayBlanker;
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@e
    new-instance v0, Lcom/android/server/display/DisplayPowerController;

    #@10
    .line 1523
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@12
    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    #@15
    move-result-object v1

    #@16
    move-object v2, p1

    #@17
    move-object v3, p2

    #@18
    move-object v4, p3

    #@19
    .line 1522
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayPowerController;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;)V

    #@1c
    invoke-static {v7, v0}, Lcom/android/server/display/DisplayManagerService;->-set0(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    monitor-exit v6

    #@20
    .line 1505
    return-void

    #@21
    .line 1506
    .end local v5    # "blanker":Lcom/android/server/display/DisplayBlanker;
    :catchall_0
    move-exception v0

    #@22
    monitor-exit v6

    #@23
    throw v0
.end method

.method public isProximitySensorAvailable()Z
    .locals 1

    #@0
    .prologue
    .line 1536
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get2(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->isProximitySensorAvailable()Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public performTraversalInTransactionFromWindowManager()V
    .locals 1

    #@0
    .prologue
    .line 1569
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-wrap15(Lcom/android/server/display/DisplayManagerService;)V

    #@5
    .line 1568
    return-void
.end method

.method public registerDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    #@0
    .prologue
    .line 1546
    if-nez p1, :cond_0

    #@2
    .line 1547
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "listener must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1550
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@d
    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->-wrap19(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    #@10
    .line 1545
    return-void
.end method

.method public requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .locals 1
    .param p1, "request"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p2, "waitForNegativeProximity"    # Z

    #@0
    .prologue
    .line 1530
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get2(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "info"    # Landroid/view/DisplayInfo;

    #@0
    .prologue
    .line 1564
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@2
    invoke-static {v0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-wrap26(Lcom/android/server/display/DisplayManagerService;ILandroid/view/DisplayInfo;)V

    #@5
    .line 1563
    return-void
.end method

.method public setDisplayOffsets(III)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    #@0
    .prologue
    .line 1581
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@2
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->-wrap27(Lcom/android/server/display/DisplayManagerService;III)V

    #@5
    .line 1580
    return-void
.end method

.method public setDisplayProperties(IZFIZ)V
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "hasContent"    # Z
    .param p3, "requestedRefreshRate"    # F
    .param p4, "requestedMode"    # I
    .param p5, "inTraversal"    # Z

    #@0
    .prologue
    .line 1575
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    invoke-static/range {v0 .. v5}, Lcom/android/server/display/DisplayManagerService;->-wrap28(Lcom/android/server/display/DisplayManagerService;IZFIZ)V

    #@a
    .line 1574
    return-void
.end method

.method public unregisterDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    #@0
    .prologue
    .line 1555
    if-nez p1, :cond_0

    #@2
    .line 1556
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "listener must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1559
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@d
    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->-wrap32(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    #@10
    .line 1554
    return-void
.end method
