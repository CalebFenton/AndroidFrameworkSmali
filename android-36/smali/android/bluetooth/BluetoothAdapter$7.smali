.class Landroid/bluetooth/BluetoothAdapter$7;
.super Landroid/bluetooth/IBluetoothManagerCallback$Stub;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method public static synthetic blacklist $r8$lambda$86slBtl88dfL3__qUyTTNzq0FSM(Landroid/bluetooth/BluetoothAdapter$7;Landroid/bluetooth/BluetoothDevice;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothAdapter$7;->lambda$onBluetoothServiceUp$0(Landroid/bluetooth/BluetoothDevice;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$B5IIXcFbc84F3d5lEGZL2UZA3vU(Landroid/bluetooth/BluetoothAdapter$7;Landroid/bluetooth/BluetoothProfile;Landroid/bluetooth/BluetoothAdapter$ProfileConnection;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothAdapter$7;->lambda$connectAllProfileProxyLocked$1(Landroid/bluetooth/BluetoothProfile;Landroid/bluetooth/BluetoothAdapter$ProfileConnection;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .registers 2
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3632
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;-><init>()V

    return-void
.end method

.method private blacklist connectAllProfileProxyLocked()Z
    .registers 3

    .line 3700
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmProfileConnections(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/BluetoothAdapter$7$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothAdapter$7$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothAdapter$7;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 3714
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic blacklist lambda$connectAllProfileProxyLocked$1(Landroid/bluetooth/BluetoothProfile;Landroid/bluetooth/BluetoothAdapter$ProfileConnection;)V
    .registers 7
    .param p1, "proxy"    # Landroid/bluetooth/BluetoothProfile;
    .param p2, "connection"    # Landroid/bluetooth/BluetoothAdapter$ProfileConnection;

    .line 3702
    iget-boolean v0, p2, Landroid/bluetooth/BluetoothAdapter$ProfileConnection;->mConnected:Z

    if-eqz v0, :cond_5

    return-void

    .line 3704
    :cond_5
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p2}, Landroid/bluetooth/BluetoothAdapter$ProfileConnection;->-$$Nest$fgetmProfile(Landroid/bluetooth/BluetoothAdapter$ProfileConnection;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$mgetProfile(Landroid/bluetooth/BluetoothAdapter;I)Landroid/os/IBinder;

    move-result-object v0

    .line 3705
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_34

    .line 3706
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to retrieve a binder for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/bluetooth/BluetoothAdapter$ProfileConnection;->-$$Nest$fgetmProfile(Landroid/bluetooth/BluetoothAdapter$ProfileConnection;)I

    move-result v3

    .line 3709
    invoke-static {v3}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3706
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3710
    return-void

    .line 3712
    :cond_34
    invoke-virtual {p2, p1, v0}, Landroid/bluetooth/BluetoothAdapter$ProfileConnection;->connect(Landroid/bluetooth/BluetoothProfile;Landroid/os/IBinder;)V

    .line 3713
    return-void
.end method

.method static synthetic blacklist lambda$onBluetoothOff$2(Landroid/bluetooth/BluetoothProfile;Landroid/bluetooth/BluetoothAdapter$ProfileConnection;)V
    .registers 3
    .param p0, "proxy"    # Landroid/bluetooth/BluetoothProfile;
    .param p1, "connection"    # Landroid/bluetooth/BluetoothAdapter$ProfileConnection;

    .line 3729
    iget-boolean v0, p1, Landroid/bluetooth/BluetoothAdapter$ProfileConnection;->mConnected:Z

    if-eqz v0, :cond_7

    .line 3730
    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothAdapter$ProfileConnection;->disconnect(Landroid/bluetooth/BluetoothProfile;)V

    .line 3732
    :cond_7
    return-void
.end method

.method private synthetic blacklist lambda$onBluetoothServiceUp$0(Landroid/bluetooth/BluetoothDevice;Ljava/util/List;)V
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "pair"    # Ljava/util/List;

    .line 3650
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmService(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmBluetoothMetadataListener(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothMetadataListener;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v2}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothAdapter;)Landroid/content/AttributionSource;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Landroid/bluetooth/IBluetooth;->registerMetadataListener(Landroid/bluetooth/IBluetoothMetadataListener;Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    .line 3657
    goto :goto_27

    .line 3654
    :catch_16
    move-exception v0

    .line 3655
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to register metadata listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3656
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V

    .line 3658
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_27
    return-void
.end method


# virtual methods
.method public blacklist onBluetoothOff()V
    .registers 4

    .line 3726
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetsProfileLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3727
    :try_start_5
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmProfileConnections(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Landroid/bluetooth/BluetoothAdapter$7$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/bluetooth/BluetoothAdapter$7$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 3733
    monitor-exit v0

    .line 3734
    return-void

    .line 3733
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public blacklist onBluetoothOn()V
    .registers 3

    .line 3719
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetsProfileLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3720
    :try_start_5
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter$7;->connectAllProfileProxyLocked()Z

    .line 3721
    monitor-exit v0

    .line 3722
    return-void

    .line 3721
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist onBluetoothServiceDown()V
    .registers 3

    .line 3678
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmServiceLock(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 3680
    :try_start_d
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fputmService(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)V

    .line 3681
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmLeScanClients(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3682
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmLock(Landroid/bluetooth/BluetoothAdapter;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_69

    .line 3683
    :try_start_23
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmBluetoothLeAdvertiser(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 3684
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmBluetoothLeAdvertiser(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->cleanup()V

    .line 3686
    :cond_34
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmBluetoothLeScanner(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 3687
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmBluetoothLeScanner(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/le/BluetoothLeScanner;->cleanup()V

    .line 3689
    :cond_45
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmDistanceMeasurementManager(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/le/DistanceMeasurementManager;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 3690
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmDistanceMeasurementManager(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/le/DistanceMeasurementManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/le/DistanceMeasurementManager;->cleanup()V

    .line 3692
    :cond_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_23 .. :try_end_57} :catchall_66

    .line 3694
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmServiceLock(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 3695
    nop

    .line 3696
    return-void

    .line 3692
    :catchall_66
    move-exception v1

    :try_start_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter$7;
    :try_start_68
    throw v1
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_69

    .line 3694
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter$7;
    :catchall_69
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmServiceLock(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 3695
    throw v0
.end method

.method public blacklist onBluetoothServiceUp(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "bluetoothService"    # Landroid/os/IBinder;

    .line 3636
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3637
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmServiceLock(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 3639
    :try_start_10
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fputmService(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_c4

    .line 3642
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmServiceLock(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 3643
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmServiceLock(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 3644
    nop

    .line 3646
    :try_start_34
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmMetadataListeners(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_b5

    .line 3647
    :try_start_3b
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmMetadataListeners(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Landroid/bluetooth/BluetoothAdapter$7$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothAdapter$7$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothAdapter$7;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 3659
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3b .. :try_end_4a} :catchall_b2

    .line 3660
    :try_start_4a
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmAudioProfilesCallbackWrapper(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/CallbackWrapper;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmService(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/CallbackWrapper;->registerToNewService(Ljava/lang/Object;)V

    .line 3661
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmQualityCallbackWrapper(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/CallbackWrapper;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmService(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/CallbackWrapper;->registerToNewService(Ljava/lang/Object;)V

    .line 3662
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmBluetoothConnectionCallbackWrapper(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/CallbackWrapper;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmService(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/CallbackWrapper;->registerToNewService(Ljava/lang/Object;)V

    .line 3663
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmHciVendorSpecificCallbackRegistration(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;

    move-result-object v0

    monitor-enter v0
    :try_end_7e
    .catchall {:try_start_4a .. :try_end_7e} :catchall_b5

    .line 3665
    :try_start_7e
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmHciVendorSpecificCallbackRegistration(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v2}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmService(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmHciVendorSpecificCallbackStub(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;->registerToService(Landroid/bluetooth/IBluetooth;Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_93} :catch_96
    .catchall {:try_start_7e .. :try_end_93} :catchall_94

    .line 3669
    goto :goto_a0

    .line 3670
    :catchall_94
    move-exception v1

    goto :goto_b0

    .line 3667
    :catch_96
    move-exception v1

    .line 3668
    .local v1, "e":Ljava/lang/Exception;
    :try_start_97
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to register HCI vendor-specific callback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3670
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_a0
    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_97 .. :try_end_a1} :catchall_94

    .line 3672
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmServiceLock(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3673
    nop

    .line 3674
    return-void

    .line 3670
    :goto_b0
    :try_start_b0
    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_94

    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter$7;
    .end local p1    # "bluetoothService":Landroid/os/IBinder;
    :try_start_b1
    throw v1
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b5

    .line 3659
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter$7;
    .restart local p1    # "bluetoothService":Landroid/os/IBinder;
    :catchall_b2
    move-exception v1

    :try_start_b3
    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter$7;
    .end local p1    # "bluetoothService":Landroid/os/IBinder;
    :try_start_b4
    throw v1
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b5

    .line 3672
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter$7;
    .restart local p1    # "bluetoothService":Landroid/os/IBinder;
    :catchall_b5
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmServiceLock(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3673
    throw v0

    .line 3642
    :catchall_c4
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmServiceLock(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 3643
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$7;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmServiceLock(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 3644
    throw v0
.end method
