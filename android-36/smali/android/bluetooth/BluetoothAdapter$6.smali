.class Landroid/bluetooth/BluetoothAdapter$6;
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


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 3547
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onBluetoothOff()V
    .registers 5

    .line 3613
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBluetoothOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3616
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetsServiceLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 3618
    :try_start_14
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetsProxyServiceStateCallbacks()Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/IBluetoothManagerCallback;
    :try_end_2c
    .catchall {:try_start_14 .. :try_end_2c} :catchall_46

    .line 3620
    .local v1, "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    :try_start_2c
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothOff()V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2f} :catch_30
    .catchall {:try_start_2c .. :try_end_2f} :catchall_46

    .line 3623
    goto :goto_38

    .line 3621
    :catch_30
    move-exception v2

    .line 3622
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_31
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_46

    .line 3624
    .end local v1    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_38
    goto :goto_20

    .line 3626
    :cond_39
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetsServiceLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3627
    nop

    .line 3628
    return-void

    .line 3626
    :catchall_46
    move-exception v0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetsServiceLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3627
    throw v0
.end method

.method public blacklist onBluetoothOn()V
    .registers 5

    .line 3593
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBluetoothOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3596
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetsServiceLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 3598
    :try_start_14
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetsProxyServiceStateCallbacks()Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/IBluetoothManagerCallback;
    :try_end_2c
    .catchall {:try_start_14 .. :try_end_2c} :catchall_46

    .line 3600
    .local v1, "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    :try_start_2c
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothOn()V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2f} :catch_30
    .catchall {:try_start_2c .. :try_end_2f} :catchall_46

    .line 3603
    goto :goto_38

    .line 3601
    :catch_30
    move-exception v2

    .line 3602
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_31
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_46

    .line 3604
    .end local v1    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_38
    goto :goto_20

    .line 3606
    :cond_39
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetsServiceLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3607
    nop

    .line 3608
    return-void

    .line 3606
    :catchall_46
    move-exception v0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetsServiceLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3607
    throw v0
.end method

.method public blacklist onBluetoothServiceDown()V
    .registers 5

    .line 3572
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBluetoothServiceDown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3575
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetsServiceLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 3577
    const/4 v0, 0x0

    :try_start_15
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfputsService(Landroid/bluetooth/IBluetooth;)V

    .line 3578
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetsProxyServiceStateCallbacks()Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/IBluetoothManagerCallback;
    :try_end_30
    .catchall {:try_start_15 .. :try_end_30} :catchall_4a

    .line 3580
    .local v1, "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    :try_start_30
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceDown()V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_33} :catch_34
    .catchall {:try_start_30 .. :try_end_33} :catchall_4a

    .line 3583
    goto :goto_3c

    .line 3581
    :catch_34
    move-exception v2

    .line 3582
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_35
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_4a

    .line 3584
    .end local v1    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3c
    goto :goto_24

    .line 3586
    :cond_3d
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetsServiceLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 3587
    nop

    .line 3588
    return-void

    .line 3586
    :catchall_4a
    move-exception v0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetsServiceLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 3587
    throw v0
.end method

.method public blacklist onBluetoothServiceUp(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "bluetoothService"    # Landroid/os/IBinder;

    .line 3551
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBluetoothServiceUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3554
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetsServiceLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 3556
    :try_start_25
    invoke-static {p1}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfputsService(Landroid/bluetooth/IBluetooth;)V

    .line 3557
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetsProxyServiceStateCallbacks()Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/IBluetoothManagerCallback;
    :try_end_44
    .catchall {:try_start_25 .. :try_end_44} :catchall_5e

    .line 3559
    .local v1, "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    :try_start_44
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceUp(Landroid/os/IBinder;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_47} :catch_48
    .catchall {:try_start_44 .. :try_end_47} :catchall_5e

    .line 3562
    goto :goto_50

    .line 3560
    :catch_48
    move-exception v2

    .line 3561
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_49
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_5e

    .line 3563
    .end local v1    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_50
    goto :goto_38

    .line 3565
    :cond_51
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetsServiceLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 3566
    nop

    .line 3567
    return-void

    .line 3565
    :catchall_5e
    move-exception v0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetsServiceLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 3566
    throw v0
.end method
