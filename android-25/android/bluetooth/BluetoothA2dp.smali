.class public final Landroid/bluetooth/BluetoothA2dp;
.super Ljava/lang/Object;
.source "BluetoothA2dp.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothA2dp$1;,
        Landroid/bluetooth/BluetoothA2dp$2;
    }
.end annotation


# static fields
.field public static final ACTION_AVRCP_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.a2dp.profile.action.AVRCP_CONNECTION_STATE_CHANGED"

.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_PLAYING_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

.field private static final DBG:Z = true

.field public static final STATE_NOT_PLAYING:I = 0xb

.field public static final STATE_PLAYING:I = 0xa

.field private static final TAG:Ljava/lang/String; = "BluetoothA2dp"

.field private static final VDBG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mService:Landroid/bluetooth/IBluetoothA2dp;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mServiceLock"
    .end annotation
.end field

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method static synthetic -get0(Landroid/bluetooth/BluetoothA2dp;)Landroid/content/ServiceConnection;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp;->mConnection:Landroid/content/ServiceConnection;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/bluetooth/BluetoothA2dp;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/IBluetoothA2dp;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/IBluetoothA2dp;)Landroid/bluetooth/IBluetoothA2dp;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@2
    return-object p1
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@0
    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 120
    new-instance v2, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@5
    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    #@8
    iput-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@a
    .line 125
    new-instance v2, Landroid/bluetooth/BluetoothA2dp$1;

    #@c
    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothA2dp$1;-><init>(Landroid/bluetooth/BluetoothA2dp;)V

    #@f
    .line 124
    iput-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@11
    .line 570
    new-instance v2, Landroid/bluetooth/BluetoothA2dp$2;

    #@13
    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothA2dp$2;-><init>(Landroid/bluetooth/BluetoothA2dp;)V

    #@16
    iput-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mConnection:Landroid/content/ServiceConnection;

    #@18
    .line 160
    iput-object p1, p0, Landroid/bluetooth/BluetoothA2dp;->mContext:Landroid/content/Context;

    #@1a
    .line 161
    iput-object p2, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@1c
    .line 162
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    #@1f
    move-result-object v2

    #@20
    iput-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@22
    .line 163
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@24
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    #@27
    move-result-object v1

    #@28
    .line 164
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    #@2a
    .line 166
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@2c
    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 172
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dp;->doBind()Z

    #@32
    .line 159
    return-void

    #@33
    .line 167
    :catch_0
    move-exception v0

    #@34
    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothA2dp"

    #@37
    const-string/jumbo v3, ""

    #@3a
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3d
    goto :goto_0
.end method

.method private isEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 599
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    #@5
    move-result v0

    #@6
    const/16 v1, 0xc

    #@8
    if-ne v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    return v0

    #@c
    .line 600
    :cond_0
    const/4 v0, 0x0

    #@d
    return v0
.end method

.method private isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 604
    if-nez p1, :cond_0

    #@3
    return v1

    #@4
    .line 606
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    const/4 v0, 0x1

    #@f
    return v0

    #@10
    .line 607
    :cond_1
    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 611
    const-string/jumbo v0, "BluetoothA2dp"

    #@3
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 610
    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    #@0
    .prologue
    .line 552
    packed-switch p0, :pswitch_data_0

    #@3
    .line 566
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "<unknown state "

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string/jumbo v1, ">"

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    return-object v0

    #@1f
    .line 554
    :pswitch_1
    const-string/jumbo v0, "disconnected"

    #@22
    return-object v0

    #@23
    .line 556
    :pswitch_2
    const-string/jumbo v0, "connecting"

    #@26
    return-object v0

    #@27
    .line 558
    :pswitch_3
    const-string/jumbo v0, "connected"

    #@2a
    return-object v0

    #@2b
    .line 560
    :pswitch_4
    const-string/jumbo v0, "disconnecting"

    #@2e
    return-object v0

    #@2f
    .line 562
    :pswitch_5
    const-string/jumbo v0, "playing"

    #@32
    return-object v0

    #@33
    .line 564
    :pswitch_6
    const-string/jumbo v0, "not playing"

    #@36
    return-object v0

    #@37
    .line 552
    nop

    #@38
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public adjustAvrcpAbsoluteVolume(I)V
    .locals 3
    .param p1, "direction"    # I

    #@0
    .prologue
    .line 466
    const-string/jumbo v1, "BluetoothA2dp"

    #@3
    const-string/jumbo v2, "adjustAvrcpAbsoluteVolume"

    #@6
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 468
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@b
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    #@12
    .line 469
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@14
    if-eqz v1, :cond_0

    #@16
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_0

    #@1c
    .line 470
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@1e
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->adjustAvrcpAbsoluteVolume(I)V

    #@21
    .line 472
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@23
    if-nez v1, :cond_1

    #@25
    const-string/jumbo v1, "BluetoothA2dp"

    #@28
    const-string/jumbo v2, "Proxy not attached to service"

    #@2b
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 476
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@30
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@37
    .line 465
    :goto_0
    return-void

    #@38
    .line 473
    :catch_0
    move-exception v0

    #@39
    .line 474
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "BluetoothA2dp"

    #@3c
    const-string/jumbo v2, "Error talking to BT service in adjustAvrcpAbsoluteVolume()"

    #@3f
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    .line 476
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@44
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@4b
    goto :goto_0

    #@4c
    .line 475
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@4d
    .line 476
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@4f
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@56
    .line 475
    throw v1
.end method

.method close()V
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 188
    iput-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@3
    .line 189
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@5
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    #@8
    move-result-object v1

    #@9
    .line 190
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    #@b
    .line 192
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@d
    invoke-interface {v1, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 199
    :cond_0
    :goto_0
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@12
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    #@19
    .line 200
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@1b
    if-eqz v3, :cond_1

    #@1d
    .line 201
    const/4 v3, 0x0

    #@1e
    iput-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@20
    .line 202
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mContext:Landroid/content/Context;

    #@22
    iget-object v4, p0, Landroid/bluetooth/BluetoothA2dp;->mConnection:Landroid/content/ServiceConnection;

    #@24
    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    .line 207
    :cond_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@29
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@30
    .line 187
    :goto_1
    return-void

    #@31
    .line 193
    :catch_0
    move-exception v0

    #@32
    .line 194
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BluetoothA2dp"

    #@35
    const-string/jumbo v4, ""

    #@38
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3b
    goto :goto_0

    #@3c
    .line 204
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    #@3d
    .line 205
    .local v2, "re":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "BluetoothA2dp"

    #@40
    const-string/jumbo v4, ""

    #@43
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@46
    .line 207
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@48
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@4f
    goto :goto_1

    #@50
    .line 206
    .end local v2    # "re":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    #@51
    .line 207
    iget-object v4, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@53
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@5a
    .line 206
    throw v3
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v2, "connect("

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v2, ")"

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    #@1f
    .line 240
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@21
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    #@28
    .line 241
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@2a
    if-eqz v1, :cond_0

    #@2c
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_0

    #@32
    .line 242
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@35
    move-result v1

    #@36
    .line 241
    if-eqz v1, :cond_0

    #@38
    .line 243
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@3a
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    move-result v1

    #@3e
    .line 251
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@40
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@47
    .line 243
    return v1

    #@48
    .line 245
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@4a
    if-nez v1, :cond_1

    #@4c
    const-string/jumbo v1, "BluetoothA2dp"

    #@4f
    const-string/jumbo v2, "Proxy not attached to service"

    #@52
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    .line 251
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@57
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@5e
    .line 246
    return v4

    #@5f
    .line 247
    :catch_0
    move-exception v0

    #@60
    .line 248
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "BluetoothA2dp"

    #@63
    new-instance v2, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v3, "Stack:"

    #@6b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v2

    #@6f
    new-instance v3, Ljava/lang/Throwable;

    #@71
    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    #@74
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@77
    move-result-object v3

    #@78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v2

    #@7c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v2

    #@80
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@83
    .line 251
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@85
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@88
    move-result-object v1

    #@89
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@8c
    .line 249
    return v4

    #@8d
    .line 250
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@8e
    .line 251
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@90
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@93
    move-result-object v2

    #@94
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@97
    .line 250
    throw v1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v2, "disconnect("

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v2, ")"

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    #@1f
    .line 284
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@21
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    #@28
    .line 285
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@2a
    if-eqz v1, :cond_0

    #@2c
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_0

    #@32
    .line 286
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@35
    move-result v1

    #@36
    .line 285
    if-eqz v1, :cond_0

    #@38
    .line 287
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@3a
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    move-result v1

    #@3e
    .line 295
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@40
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@47
    .line 287
    return v1

    #@48
    .line 289
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@4a
    if-nez v1, :cond_1

    #@4c
    const-string/jumbo v1, "BluetoothA2dp"

    #@4f
    const-string/jumbo v2, "Proxy not attached to service"

    #@52
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    .line 295
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@57
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@5e
    .line 290
    return v4

    #@5f
    .line 291
    :catch_0
    move-exception v0

    #@60
    .line 292
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "BluetoothA2dp"

    #@63
    new-instance v2, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v3, "Stack:"

    #@6b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v2

    #@6f
    new-instance v3, Ljava/lang/Throwable;

    #@71
    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    #@74
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@77
    move-result-object v3

    #@78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v2

    #@7c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v2

    #@80
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@83
    .line 295
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@85
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@88
    move-result-object v1

    #@89
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@8c
    .line 293
    return v4

    #@8d
    .line 294
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@8e
    .line 295
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@90
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@93
    move-result-object v2

    #@94
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@97
    .line 294
    throw v1
.end method

.method doBind()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 176
    new-instance v1, Landroid/content/Intent;

    #@3
    const-class v2, Landroid/bluetooth/IBluetoothA2dp;

    #@5
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@c
    .line 177
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mContext:Landroid/content/Context;

    #@e
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    #@15
    move-result-object v0

    #@16
    .line 178
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@19
    .line 179
    if-eqz v0, :cond_0

    #@1b
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mContext:Landroid/content/Context;

    #@1d
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dp;->mConnection:Landroid/content/ServiceConnection;

    #@1f
    .line 180
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@22
    move-result-object v4

    #@23
    .line 179
    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_0

    #@29
    .line 184
    const/4 v2, 0x1

    #@2a
    return v2

    #@2b
    .line 181
    :cond_0
    const-string/jumbo v2, "BluetoothA2dp"

    #@2e
    new-instance v3, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v4, "Could not bind to Bluetooth A2DP Service with "

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 182
    return v5
.end method

.method public finalize()V
    .locals 0

    #@0
    .prologue
    .line 211
    return-void
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 305
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    #@9
    .line 306
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@b
    if-eqz v1, :cond_0

    #@d
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 307
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@15
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothA2dp;->getConnectedDevices()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result-object v1

    #@19
    .line 315
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@1b
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@22
    .line 307
    return-object v1

    #@23
    .line 309
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@25
    if-nez v1, :cond_1

    #@27
    const-string/jumbo v1, "BluetoothA2dp"

    #@2a
    const-string/jumbo v2, "Proxy not attached to service"

    #@2d
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 310
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    #@32
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    .line 315
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@37
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@3e
    .line 310
    return-object v1

    #@3f
    .line 311
    :catch_0
    move-exception v0

    #@40
    .line 312
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "BluetoothA2dp"

    #@43
    new-instance v2, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v3, "Stack:"

    #@4b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    new-instance v3, Ljava/lang/Throwable;

    #@51
    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    #@54
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@57
    move-result-object v3

    #@58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v2

    #@60
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@63
    .line 313
    new-instance v1, Ljava/util/ArrayList;

    #@65
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@68
    .line 315
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@6a
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@6d
    move-result-object v2

    #@6e
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@71
    .line 313
    return-object v1

    #@72
    .line 314
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@73
    .line 315
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@75
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@78
    move-result-object v2

    #@79
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@7c
    .line 314
    throw v1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 345
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    #@a
    .line 346
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@c
    if-eqz v1, :cond_0

    #@e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 347
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@17
    move-result v1

    #@18
    .line 346
    if-eqz v1, :cond_0

    #@1a
    .line 348
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@1c
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v1

    #@20
    .line 356
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@22
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@29
    .line 348
    return v1

    #@2a
    .line 350
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@2c
    if-nez v1, :cond_1

    #@2e
    const-string/jumbo v1, "BluetoothA2dp"

    #@31
    const-string/jumbo v2, "Proxy not attached to service"

    #@34
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    .line 356
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@39
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@40
    .line 351
    return v4

    #@41
    .line 352
    :catch_0
    move-exception v0

    #@42
    .line 353
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "BluetoothA2dp"

    #@45
    new-instance v2, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v3, "Stack:"

    #@4d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    new-instance v3, Ljava/lang/Throwable;

    #@53
    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    #@56
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@65
    .line 356
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@67
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@6e
    .line 354
    return v4

    #@6f
    .line 355
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@70
    .line 356
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@72
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@79
    .line 355
    throw v1
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 4
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 325
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    #@9
    .line 326
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@b
    if-eqz v1, :cond_0

    #@d
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 327
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@15
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result-object v1

    #@19
    .line 335
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@1b
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@22
    .line 327
    return-object v1

    #@23
    .line 329
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@25
    if-nez v1, :cond_1

    #@27
    const-string/jumbo v1, "BluetoothA2dp"

    #@2a
    const-string/jumbo v2, "Proxy not attached to service"

    #@2d
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 330
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    #@32
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    .line 335
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@37
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@3e
    .line 330
    return-object v1

    #@3f
    .line 331
    :catch_0
    move-exception v0

    #@40
    .line 332
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "BluetoothA2dp"

    #@43
    new-instance v2, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v3, "Stack:"

    #@4b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    new-instance v3, Ljava/lang/Throwable;

    #@51
    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    #@54
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@57
    move-result-object v3

    #@58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v2

    #@60
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@63
    .line 333
    new-instance v1, Ljava/util/ArrayList;

    #@65
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@68
    .line 335
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@6a
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@6d
    move-result-object v2

    #@6e
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@71
    .line 333
    return-object v1

    #@72
    .line 334
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@73
    .line 335
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@75
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@78
    move-result-object v2

    #@79
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@7c
    .line 334
    throw v1
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 414
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    #@a
    .line 415
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@c
    if-eqz v1, :cond_0

    #@e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 416
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@17
    move-result v1

    #@18
    .line 415
    if-eqz v1, :cond_0

    #@1a
    .line 417
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@1c
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v1

    #@20
    .line 425
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@22
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@29
    .line 417
    return v1

    #@2a
    .line 419
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@2c
    if-nez v1, :cond_1

    #@2e
    const-string/jumbo v1, "BluetoothA2dp"

    #@31
    const-string/jumbo v2, "Proxy not attached to service"

    #@34
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    .line 425
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@39
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@40
    .line 420
    return v4

    #@41
    .line 421
    :catch_0
    move-exception v0

    #@42
    .line 422
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "BluetoothA2dp"

    #@45
    new-instance v2, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v3, "Stack:"

    #@4d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    new-instance v3, Ljava/lang/Throwable;

    #@53
    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    #@56
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@65
    .line 425
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@67
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@6e
    .line 423
    return v4

    #@6f
    .line 424
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@70
    .line 425
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@72
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@79
    .line 424
    throw v1
.end method

.method public isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 510
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    #@a
    .line 511
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@c
    if-eqz v1, :cond_0

    #@e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 512
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@17
    move-result v1

    #@18
    .line 511
    if-eqz v1, :cond_0

    #@1a
    .line 513
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@1c
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v1

    #@20
    .line 521
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@22
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@29
    .line 513
    return v1

    #@2a
    .line 515
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@2c
    if-nez v1, :cond_1

    #@2e
    const-string/jumbo v1, "BluetoothA2dp"

    #@31
    const-string/jumbo v2, "Proxy not attached to service"

    #@34
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    .line 521
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@39
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@40
    .line 516
    return v4

    #@41
    .line 517
    :catch_0
    move-exception v0

    #@42
    .line 518
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "BluetoothA2dp"

    #@45
    new-instance v2, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v3, "Stack:"

    #@4d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    new-instance v3, Ljava/lang/Throwable;

    #@53
    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    #@56
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@65
    .line 521
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@67
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@6e
    .line 519
    return v4

    #@6f
    .line 520
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@70
    .line 521
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@72
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@79
    .line 520
    throw v1
.end method

.method public isAvrcpAbsoluteVolumeSupported()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 436
    const-string/jumbo v1, "BluetoothA2dp"

    #@4
    const-string/jumbo v2, "isAvrcpAbsoluteVolumeSupported"

    #@7
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 438
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@c
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    #@13
    .line 439
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@15
    if-eqz v1, :cond_0

    #@17
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_0

    #@1d
    .line 440
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@1f
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothA2dp;->isAvrcpAbsoluteVolumeSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v1

    #@23
    .line 448
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@25
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@2c
    .line 440
    return v1

    #@2d
    .line 442
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@2f
    if-nez v1, :cond_1

    #@31
    const-string/jumbo v1, "BluetoothA2dp"

    #@34
    const-string/jumbo v2, "Proxy not attached to service"

    #@37
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    .line 448
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@3c
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@43
    .line 443
    return v3

    #@44
    .line 444
    :catch_0
    move-exception v0

    #@45
    .line 445
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "BluetoothA2dp"

    #@48
    const-string/jumbo v2, "Error talking to BT service in isAvrcpAbsoluteVolumeSupported()"

    #@4b
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4e
    .line 448
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@50
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@57
    .line 446
    return v3

    #@58
    .line 447
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@59
    .line 448
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@5b
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@5e
    move-result-object v2

    #@5f
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@62
    .line 447
    throw v1
.end method

.method public setAvrcpAbsoluteVolume(I)V
    .locals 3
    .param p1, "volume"    # I

    #@0
    .prologue
    .line 487
    const-string/jumbo v1, "BluetoothA2dp"

    #@3
    const-string/jumbo v2, "setAvrcpAbsoluteVolume"

    #@6
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 489
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@b
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    #@12
    .line 490
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@14
    if-eqz v1, :cond_0

    #@16
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_0

    #@1c
    .line 491
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@1e
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->setAvrcpAbsoluteVolume(I)V

    #@21
    .line 493
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@23
    if-nez v1, :cond_1

    #@25
    const-string/jumbo v1, "BluetoothA2dp"

    #@28
    const-string/jumbo v2, "Proxy not attached to service"

    #@2b
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 497
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@30
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@37
    .line 486
    :goto_0
    return-void

    #@38
    .line 494
    :catch_0
    move-exception v0

    #@39
    .line 495
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "BluetoothA2dp"

    #@3c
    const-string/jumbo v2, "Error talking to BT service in setAvrcpAbsoluteVolume()"

    #@3f
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    .line 497
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@44
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@4b
    goto :goto_0

    #@4c
    .line 496
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@4d
    .line 497
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@4f
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@56
    .line 496
    throw v1
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v2, "setPriority("

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v2, ", "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    const-string/jumbo v2, ")"

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    #@2a
    .line 378
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@2c
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    #@33
    .line 379
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@35
    if-eqz v1, :cond_1

    #@37
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    #@3a
    move-result v1

    #@3b
    if-eqz v1, :cond_1

    #@3d
    .line 380
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    move-result v1

    #@41
    .line 379
    if-eqz v1, :cond_1

    #@43
    .line 381
    if-eqz p2, :cond_0

    #@45
    .line 382
    const/16 v1, 0x64

    #@47
    if-eq p2, v1, :cond_0

    #@49
    .line 393
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@4b
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@52
    .line 383
    return v4

    #@53
    .line 385
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@55
    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@58
    move-result v1

    #@59
    .line 393
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@5b
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@5e
    move-result-object v2

    #@5f
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@62
    .line 385
    return v1

    #@63
    .line 387
    :cond_1
    :try_start_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    #@65
    if-nez v1, :cond_2

    #@67
    const-string/jumbo v1, "BluetoothA2dp"

    #@6a
    const-string/jumbo v2, "Proxy not attached to service"

    #@6d
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@70
    .line 393
    :cond_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@72
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@75
    move-result-object v1

    #@76
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@79
    .line 388
    return v4

    #@7a
    .line 389
    :catch_0
    move-exception v0

    #@7b
    .line 390
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v1, "BluetoothA2dp"

    #@7e
    new-instance v2, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    const-string/jumbo v3, "Stack:"

    #@86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v2

    #@8a
    new-instance v3, Ljava/lang/Throwable;

    #@8c
    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    #@8f
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@92
    move-result-object v3

    #@93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v2

    #@97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v2

    #@9b
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@9e
    .line 393
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@a0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@a3
    move-result-object v1

    #@a4
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@a7
    .line 391
    return v4

    #@a8
    .line 392
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@a9
    .line 393
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@ab
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@ae
    move-result-object v2

    #@af
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@b2
    .line 392
    throw v1
.end method

.method public shouldSendVolumeKeys(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 532
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_2

    #@7
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_2

    #@d
    .line 533
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    #@10
    move-result-object v1

    #@11
    .line 534
    .local v1, "uuids":[Landroid/os/ParcelUuid;
    if-nez v1, :cond_0

    #@13
    return v3

    #@14
    .line 536
    :cond_0
    array-length v4, v1

    #@15
    move v2, v3

    #@16
    :goto_0
    if-ge v2, v4, :cond_2

    #@18
    aget-object v0, v1, v2

    #@1a
    .line 537
    .local v0, "uuid":Landroid/os/ParcelUuid;
    invoke-static {v0}, Landroid/bluetooth/BluetoothUuid;->isAvrcpTarget(Landroid/os/ParcelUuid;)Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_1

    #@20
    .line 538
    const/4 v2, 0x1

    #@21
    return v2

    #@22
    .line 536
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_0

    #@25
    .line 542
    .end local v0    # "uuid":Landroid/os/ParcelUuid;
    .end local v1    # "uuids":[Landroid/os/ParcelUuid;
    :cond_2
    return v3
.end method
