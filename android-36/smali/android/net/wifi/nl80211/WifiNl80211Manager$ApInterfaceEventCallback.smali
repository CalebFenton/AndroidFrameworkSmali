.class Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;
.super Landroid/net/wifi/nl80211/IApInterfaceEventCallback$Stub;
.source "WifiNl80211Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/WifiNl80211Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApInterfaceEventCallback"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mSoftApListener:Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;

.field final synthetic blacklist this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;


# direct methods
.method public static synthetic blacklist $r8$lambda$TWfahwuQC2coPV1D3CA68G_J67o(Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;Landroid/net/wifi/nl80211/NativeWifiClient;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->lambda$onConnectedClientsChanged$0(Landroid/net/wifi/nl80211/NativeWifiClient;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$hqymFN1D6hZYQ0JrctfjB5iUJPQ(Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->lambda$onSoftApChannelSwitched$1(II)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;)V
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 492
    iput-object p1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-direct {p0}, Landroid/net/wifi/nl80211/IApInterfaceEventCallback$Stub;-><init>()V

    .line 493
    iput-object p2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 494
    iput-object p3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->mSoftApListener:Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;

    .line 495
    return-void
.end method

.method private synthetic blacklist lambda$onConnectedClientsChanged$0(Landroid/net/wifi/nl80211/NativeWifiClient;Z)V
    .registers 4
    .param p1, "client"    # Landroid/net/wifi/nl80211/NativeWifiClient;
    .param p2, "isConnected"    # Z

    .line 507
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->mSoftApListener:Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;->onConnectedClientsChanged(Landroid/net/wifi/nl80211/NativeWifiClient;Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onSoftApChannelSwitched$1(II)V
    .registers 5
    .param p1, "frequency"    # I
    .param p2, "bandwidth"    # I

    .line 517
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->mSoftApListener:Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;

    .line 518
    invoke-direct {p0, p2}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->toFrameworkBandwidth(I)I

    move-result v1

    .line 517
    invoke-interface {v0, p1, v1}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;->onSoftApChannelSwitched(II)V

    return-void
.end method

.method private blacklist toFrameworkBandwidth(I)I
    .registers 3
    .param p1, "bandwidth"    # I

    .line 525
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_16

    .line 543
    return v0

    .line 541
    :pswitch_5
    const/16 v0, 0xb

    return v0

    .line 539
    :pswitch_8
    const/4 v0, 0x6

    return v0

    .line 537
    :pswitch_a
    const/4 v0, 0x5

    return v0

    .line 535
    :pswitch_c
    const/4 v0, 0x4

    return v0

    .line 533
    :pswitch_e
    const/4 v0, 0x3

    return v0

    .line 531
    :pswitch_10
    const/4 v0, 0x2

    return v0

    .line 529
    :pswitch_12
    const/4 v0, 0x1

    return v0

    .line 527
    :pswitch_14
    return v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_14
        :pswitch_12
        :pswitch_10
        :pswitch_e
        :pswitch_c
        :pswitch_a
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public blacklist onConnectedClientsChanged(Landroid/net/wifi/nl80211/NativeWifiClient;Z)V
    .registers 7
    .param p1, "client"    # Landroid/net/wifi/nl80211/NativeWifiClient;
    .param p2, "isConnected"    # Z

    .line 499
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-static {v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConnectedClientsChanged called with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 501
    invoke-virtual {p1}, Landroid/net/wifi/nl80211/NativeWifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 500
    const-string v1, "WifiNl80211Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_2f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 506
    .local v0, "token":J
    :try_start_33
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, p2}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;Landroid/net/wifi/nl80211/NativeWifiClient;Z)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_42

    .line 509
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 510
    nop

    .line 511
    return-void

    .line 509
    :catchall_42
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 510
    throw v2
.end method

.method public blacklist onSoftApChannelSwitched(II)V
    .registers 7
    .param p1, "frequency"    # I
    .param p2, "bandwidth"    # I

    .line 515
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 517
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 520
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 521
    nop

    .line 522
    return-void

    .line 520
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 521
    throw v2
.end method
