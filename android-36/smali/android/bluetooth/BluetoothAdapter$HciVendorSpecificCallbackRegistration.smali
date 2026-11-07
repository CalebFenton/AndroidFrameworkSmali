.class final Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;
.super Ljava/lang/Object;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HciVendorSpecificCallbackRegistration"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;

.field private blacklist mEventCodeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 5575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapter-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$execute$1(Ljava/util/function/Consumer;Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;)V
    .registers 2
    .param p0, "consumer"    # Ljava/util/function/Consumer;
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;

    .line 5635
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$registerToService$0(Ljava/lang/Integer;)I
    .registers 2
    .param p0, "i"    # Ljava/lang/Integer;

    .line 5609
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static blacklist unregisterFromService(Landroid/bluetooth/IBluetooth;Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V
    .registers 4
    .param p0, "service"    # Landroid/bluetooth/IBluetooth;
    .param p1, "stub"    # Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;

    .line 5620
    if-nez p0, :cond_3

    .line 5621
    return-void

    .line 5624
    :cond_3
    :try_start_3
    invoke-interface {p0, p1}, Landroid/bluetooth/IBluetooth;->unregisterHciVendorSpecificCallback(Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_7

    .line 5627
    goto :goto_f

    .line 5625
    :catch_7
    move-exception v0

    .line 5626
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V

    .line 5628
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_f
    return-void
.end method


# virtual methods
.method blacklist execute(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;",
            ">;)V"
        }
    .end annotation

    .line 5631
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;>;"
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;->mCallback:Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;

    .line 5632
    .local v0, "callback":Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;
    if-nez v0, :cond_5

    .line 5633
    return-void

    .line 5635
    :cond_5
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0}, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;)V

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothUtils;->executeFromBinder(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 5636
    return-void
.end method

.method blacklist isSet()Z
    .registers 2

    .line 5596
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;->mCallback:Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method blacklist isSet(Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;)Z
    .registers 3
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;

    .line 5600
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;->isSet()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;->mCallback:Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;

    if-ne p1, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method blacklist registerToService(Landroid/bluetooth/IBluetooth;Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V
    .registers 6
    .param p1, "service"    # Landroid/bluetooth/IBluetooth;
    .param p2, "stub"    # Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;

    .line 5605
    if-eqz p1, :cond_29

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;->isSet()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_29

    .line 5609
    :cond_9
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;->mEventCodeSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 5611
    .local v0, "eventCodes":[I
    :try_start_1c
    invoke-interface {p1, p2, v0}, Landroid/bluetooth/IBluetooth;->registerHciVendorSpecificCallback(Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;[I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_20

    .line 5614
    goto :goto_28

    .line 5612
    :catch_20
    move-exception v1

    .line 5613
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V

    .line 5615
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_28
    return-void

    .line 5606
    .end local v0    # "eventCodes":[I
    :cond_29
    :goto_29
    return-void
.end method

.method blacklist reset()V
    .registers 2

    .line 5590
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;->mCallback:Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;

    .line 5591
    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;->mEventCodeSet:Ljava/util/Set;

    .line 5592
    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;->mExecutor:Ljava/util/concurrent/Executor;

    .line 5593
    return-void
.end method

.method blacklist set(Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;Ljava/util/Set;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 5584
    .local p2, "eventCodeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;->mCallback:Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;

    .line 5585
    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;->mEventCodeSet:Ljava/util/Set;

    .line 5586
    iput-object p3, p0, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;->mExecutor:Ljava/util/concurrent/Executor;

    .line 5587
    return-void
.end method
