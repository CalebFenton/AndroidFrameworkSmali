.class public final Landroid/bluetooth/BluetoothHealth;
.super Ljava/lang/Object;
.source "BluetoothHealth.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothHealth$BluetoothHealthCallbackWrapper;,
        Landroid/bluetooth/BluetoothHealth$1;,
        Landroid/bluetooth/BluetoothHealth$2;
    }
.end annotation


# static fields
.field public static final APP_CONFIG_REGISTRATION_FAILURE:I = 0x1

.field public static final APP_CONFIG_REGISTRATION_SUCCESS:I = 0x0

.field public static final APP_CONFIG_UNREGISTRATION_FAILURE:I = 0x3

.field public static final APP_CONFIG_UNREGISTRATION_SUCCESS:I = 0x2

.field public static final CHANNEL_TYPE_ANY:I = 0xc

.field public static final CHANNEL_TYPE_RELIABLE:I = 0xa

.field public static final CHANNEL_TYPE_STREAMING:I = 0xb

.field private static final DBG:Z = true

.field public static final HEALTH_OPERATION_ERROR:I = 0x1771

.field public static final HEALTH_OPERATION_GENERIC_FAILURE:I = 0x1773

.field public static final HEALTH_OPERATION_INVALID_ARGS:I = 0x1772

.field public static final HEALTH_OPERATION_NOT_ALLOWED:I = 0x1775

.field public static final HEALTH_OPERATION_NOT_FOUND:I = 0x1774

.field public static final HEALTH_OPERATION_SUCCESS:I = 0x1770

.field public static final SINK_ROLE:I = 0x2

.field public static final SOURCE_ROLE:I = 0x1

.field public static final STATE_CHANNEL_CONNECTED:I = 0x2

.field public static final STATE_CHANNEL_CONNECTING:I = 0x1

.field public static final STATE_CHANNEL_DISCONNECTED:I = 0x0

.field public static final STATE_CHANNEL_DISCONNECTING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothHealth"

.field private static final VDBG:Z


# instance fields
.field mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mService:Landroid/bluetooth/IBluetoothHealth;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static synthetic -get0(Landroid/bluetooth/BluetoothHealth;)Landroid/content/ServiceConnection;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth;->mConnection:Landroid/content/ServiceConnection;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/bluetooth/BluetoothHealth;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/bluetooth/BluetoothHealth;)Landroid/bluetooth/IBluetoothHealth;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/bluetooth/BluetoothHealth;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/bluetooth/BluetoothHealth;Landroid/bluetooth/IBluetoothHealth;)Landroid/bluetooth/IBluetoothHealth;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    #@2
    return-object p1
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@0
    .prologue
    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 101
    new-instance v2, Landroid/bluetooth/BluetoothHealth$1;

    #@5
    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothHealth$1;-><init>(Landroid/bluetooth/BluetoothHealth;)V

    #@8
    .line 100
    iput-object v2, p0, Landroid/bluetooth/BluetoothHealth;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@a
    .line 522
    new-instance v2, Landroid/bluetooth/BluetoothHealth$2;

    #@c
    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothHealth$2;-><init>(Landroid/bluetooth/BluetoothHealth;)V

    #@f
    iput-object v2, p0, Landroid/bluetooth/BluetoothHealth;->mConnection:Landroid/content/ServiceConnection;

    #@11
    .line 471
    iput-object p1, p0, Landroid/bluetooth/BluetoothHealth;->mContext:Landroid/content/Context;

    #@13
    .line 472
    iput-object p2, p0, Landroid/bluetooth/BluetoothHealth;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@15
    .line 473
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    #@18
    move-result-object v2

    #@19
    iput-object v2, p0, Landroid/bluetooth/BluetoothHealth;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@1b
    .line 474
    iget-object v2, p0, Landroid/bluetooth/BluetoothHealth;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@1d
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    #@20
    move-result-object v1

    #@21
    .line 475
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    #@23
    .line 477
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothHealth;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@25
    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 483
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHealth;->doBind()Z

    #@2b
    .line 470
    return-void

    #@2c
    .line 478
    :catch_0
    move-exception v0

    #@2d
    .line 479
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothHealth"

    #@30
    const-string/jumbo v3, ""

    #@33
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@36
    goto :goto_0
.end method

.method private checkAppParam(Ljava/lang/String;IILandroid/bluetooth/BluetoothHealthCallback;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "role"    # I
    .param p3, "channelType"    # I
    .param p4, "callback"    # Landroid/bluetooth/BluetoothHealthCallback;

    #@0
    .prologue
    const/16 v3, 0xc

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    .line 557
    if-eqz p1, :cond_0

    #@6
    if-eq p2, v1, :cond_1

    #@8
    const/4 v0, 0x2

    #@9
    if-eq p2, v0, :cond_1

    #@b
    .line 561
    :cond_0
    return v2

    #@c
    .line 558
    :cond_1
    const/16 v0, 0xa

    #@e
    if-eq p3, v0, :cond_2

    #@10
    .line 559
    const/16 v0, 0xb

    #@12
    if-eq p3, v0, :cond_2

    #@14
    .line 560
    if-ne p3, v3, :cond_0

    #@16
    :cond_2
    if-eqz p4, :cond_0

    #@18
    .line 563
    if-ne p2, v1, :cond_3

    #@1a
    if-ne p3, v3, :cond_3

    #@1c
    return v2

    #@1d
    .line 564
    :cond_3
    return v1
.end method

.method private isEnabled()Z
    .locals 3

    #@0
    .prologue
    .line 541
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    #@3
    move-result-object v0

    #@4
    .line 543
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    #@9
    move-result v1

    #@a
    const/16 v2, 0xc

    #@c
    if-ne v1, v2, :cond_0

    #@e
    const/4 v1, 0x1

    #@f
    return v1

    #@10
    .line 544
    :cond_0
    const-string/jumbo v1, "Bluetooth is Not enabled"

    #@13
    invoke-static {v1}, Landroid/bluetooth/BluetoothHealth;->log(Ljava/lang/String;)V

    #@16
    .line 545
    const/4 v1, 0x0

    #@17
    return v1
.end method

.method private isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 549
    if-nez p1, :cond_0

    #@3
    return v1

    #@4
    .line 551
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
    .line 552
    :cond_1
    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 568
    const-string/jumbo v0, "BluetoothHealth"

    #@3
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 567
    return-void
.end method


# virtual methods
.method close()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 500
    iget-object v3, p0, Landroid/bluetooth/BluetoothHealth;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@3
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    #@6
    move-result-object v1

    #@7
    .line 501
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    #@9
    .line 503
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothHealth;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@b
    invoke-interface {v1, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 509
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothHealth;->mConnection:Landroid/content/ServiceConnection;

    #@10
    monitor-enter v4

    #@11
    .line 510
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    if-eqz v3, :cond_1

    #@15
    .line 512
    const/4 v3, 0x0

    #@16
    :try_start_2
    iput-object v3, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    #@18
    .line 513
    iget-object v3, p0, Landroid/bluetooth/BluetoothHealth;->mContext:Landroid/content/Context;

    #@1a
    iget-object v5, p0, Landroid/bluetooth/BluetoothHealth;->mConnection:Landroid/content/ServiceConnection;

    #@1c
    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1f
    :cond_1
    :goto_1
    monitor-exit v4

    #@20
    .line 519
    iput-object v6, p0, Landroid/bluetooth/BluetoothHealth;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@22
    .line 498
    return-void

    #@23
    .line 504
    :catch_0
    move-exception v0

    #@24
    .line 505
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BluetoothHealth"

    #@27
    const-string/jumbo v4, ""

    #@2a
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2d
    goto :goto_0

    #@2e
    .line 514
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    #@2f
    .line 515
    .local v2, "re":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v3, "BluetoothHealth"

    #@32
    const-string/jumbo v5, ""

    #@35
    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@38
    goto :goto_1

    #@39
    .line 509
    .end local v2    # "re":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    #@3a
    monitor-exit v4

    #@3b
    throw v3
.end method

.method public connectChannelToSink(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .param p3, "channelType"    # I

    #@0
    .prologue
    .line 261
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHealth;->isEnabled()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHealth;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 262
    if-eqz p2, :cond_0

    #@12
    .line 264
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    #@14
    invoke-interface {v1, p1, p2, p3}, Landroid/bluetooth/IBluetoothHealth;->connectChannelToSink(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result v1

    #@18
    return v1

    #@19
    .line 265
    :catch_0
    move-exception v0

    #@1a
    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHealth"

    #@1d
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 272
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    #@25
    return v1

    #@26
    .line 269
    :cond_0
    const-string/jumbo v1, "BluetoothHealth"

    #@29
    const-string/jumbo v2, "Proxy not attached to service"

    #@2c
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 270
    const-string/jumbo v1, "BluetoothHealth"

    #@32
    new-instance v2, Ljava/lang/Throwable;

    #@34
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@37
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    goto :goto_0
.end method

.method public connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;

    #@0
    .prologue
    .line 232
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHealth;->isEnabled()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHealth;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 233
    if-eqz p2, :cond_0

    #@12
    .line 235
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    #@14
    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHealth;->connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result v1

    #@18
    return v1

    #@19
    .line 236
    :catch_0
    move-exception v0

    #@1a
    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHealth"

    #@1d
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 243
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    #@25
    return v1

    #@26
    .line 240
    :cond_0
    const-string/jumbo v1, "BluetoothHealth"

    #@29
    const-string/jumbo v2, "Proxy not attached to service"

    #@2c
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 241
    const-string/jumbo v1, "BluetoothHealth"

    #@32
    new-instance v2, Ljava/lang/Throwable;

    #@34
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@37
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    goto :goto_0
.end method

.method public disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .param p3, "channelId"    # I

    #@0
    .prologue
    .line 290
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHealth;->isEnabled()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHealth;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 291
    if-eqz p2, :cond_0

    #@12
    .line 293
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    #@14
    invoke-interface {v1, p1, p2, p3}, Landroid/bluetooth/IBluetoothHealth;->disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result v1

    #@18
    return v1

    #@19
    .line 294
    :catch_0
    move-exception v0

    #@1a
    .line 295
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHealth"

    #@1d
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 301
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    #@25
    return v1

    #@26
    .line 298
    :cond_0
    const-string/jumbo v1, "BluetoothHealth"

    #@29
    const-string/jumbo v2, "Proxy not attached to service"

    #@2c
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 299
    const-string/jumbo v1, "BluetoothHealth"

    #@32
    new-instance v2, Ljava/lang/Throwable;

    #@34
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@37
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    goto :goto_0
.end method

.method doBind()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 487
    new-instance v1, Landroid/content/Intent;

    #@3
    const-class v2, Landroid/bluetooth/IBluetoothHealth;

    #@5
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@c
    .line 488
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/bluetooth/BluetoothHealth;->mContext:Landroid/content/Context;

    #@e
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    #@15
    move-result-object v0

    #@16
    .line 489
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@19
    .line 490
    if-eqz v0, :cond_0

    #@1b
    iget-object v2, p0, Landroid/bluetooth/BluetoothHealth;->mContext:Landroid/content/Context;

    #@1d
    iget-object v3, p0, Landroid/bluetooth/BluetoothHealth;->mConnection:Landroid/content/ServiceConnection;

    #@1f
    .line 491
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@22
    move-result-object v4

    #@23
    .line 490
    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_0

    #@29
    .line 495
    const/4 v2, 0x1

    #@2a
    return v2

    #@2b
    .line 492
    :cond_0
    const-string/jumbo v2, "BluetoothHealth"

    #@2e
    new-instance v3, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v4, "Could not bind to Bluetooth Health Service with "

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
    .line 493
    return v5
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
    .line 378
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHealth;->isEnabled()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 380
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    #@c
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHealth;->getConnectedHealthDevices()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 381
    :catch_0
    move-exception v0

    #@12
    .line 382
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHealth"

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "Stack:"

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    new-instance v3, Ljava/lang/Throwable;

    #@23
    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    #@26
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 383
    new-instance v1, Ljava/util/ArrayList;

    #@37
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@3a
    return-object v1

    #@3b
    .line 386
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    #@3d
    if-nez v1, :cond_1

    #@3f
    const-string/jumbo v1, "BluetoothHealth"

    #@42
    const-string/jumbo v2, "Proxy not attached to service"

    #@45
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 387
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    #@4a
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@4d
    return-object v1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    .line 350
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHealth;->isEnabled()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHealth;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 352
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    #@12
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHealth;->getHealthDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result v1

    #@16
    return v1

    #@17
    .line 353
    :catch_0
    move-exception v0

    #@18
    .line 354
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHealth"

    #@1b
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 360
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    #@23
    return v1

    #@24
    .line 357
    :cond_0
    const-string/jumbo v1, "BluetoothHealth"

    #@27
    const-string/jumbo v2, "Proxy not attached to service"

    #@2a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 358
    const-string/jumbo v1, "BluetoothHealth"

    #@30
    new-instance v2, Ljava/lang/Throwable;

    #@32
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@35
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    goto :goto_0
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
    .line 410
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHealth;->isEnabled()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 412
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    #@c
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHealth;->getHealthDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 413
    :catch_0
    move-exception v0

    #@12
    .line 414
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHealth"

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "Stack:"

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    new-instance v3, Ljava/lang/Throwable;

    #@23
    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    #@26
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 415
    new-instance v1, Ljava/util/ArrayList;

    #@37
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@3a
    return-object v1

    #@3b
    .line 418
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    #@3d
    if-nez v1, :cond_1

    #@3f
    const-string/jumbo v1, "BluetoothHealth"

    #@42
    const-string/jumbo v2, "Proxy not attached to service"

    #@45
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 419
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    #@4a
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@4d
    return-object v1
.end method

.method public getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 319
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    #@3
    if-eqz v1, :cond_0

    #@5
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHealth;->isEnabled()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHealth;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 320
    if-eqz p2, :cond_0

    #@13
    .line 322
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    #@15
    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHealth;->getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result-object v1

    #@19
    return-object v1

    #@1a
    .line 323
    :catch_0
    move-exception v0

    #@1b
    .line 324
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHealth"

    #@1e
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 330
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v3

    #@26
    .line 327
    :cond_0
    const-string/jumbo v1, "BluetoothHealth"

    #@29
    const-string/jumbo v2, "Proxy not attached to service"

    #@2c
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 328
    const-string/jumbo v1, "BluetoothHealth"

    #@32
    new-instance v2, Ljava/lang/Throwable;

    #@34
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@37
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    goto :goto_0
.end method

.method public registerAppConfiguration(Ljava/lang/String;IIILandroid/bluetooth/BluetoothHealthCallback;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dataType"    # I
    .param p3, "role"    # I
    .param p4, "channelType"    # I
    .param p5, "callback"    # Landroid/bluetooth/BluetoothHealthCallback;

    #@0
    .prologue
    .line 172
    const/4 v2, 0x0

    #@1
    .line 173
    .local v2, "result":Z
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHealth;->isEnabled()Z

    #@4
    move-result v4

    #@5
    if-eqz v4, :cond_0

    #@7
    invoke-direct {p0, p1, p3, p4, p5}, Landroid/bluetooth/BluetoothHealth;->checkAppParam(Ljava/lang/String;IILandroid/bluetooth/BluetoothHealthCallback;)Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_0

    #@d
    .line 176
    new-instance v3, Landroid/bluetooth/BluetoothHealth$BluetoothHealthCallbackWrapper;

    #@f
    invoke-direct {v3, p5}, Landroid/bluetooth/BluetoothHealth$BluetoothHealthCallbackWrapper;-><init>(Landroid/bluetooth/BluetoothHealthCallback;)V

    #@12
    .line 178
    .local v3, "wrapper":Landroid/bluetooth/BluetoothHealth$BluetoothHealthCallbackWrapper;
    new-instance v0, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    #@14
    invoke-direct {v0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothHealthAppConfiguration;-><init>(Ljava/lang/String;III)V

    #@17
    .line 180
    .local v0, "config":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    iget-object v4, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    #@19
    if-eqz v4, :cond_1

    #@1b
    .line 182
    :try_start_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    #@1d
    invoke-interface {v4, v0, v3}, Landroid/bluetooth/IBluetoothHealth;->registerAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/IBluetoothHealthCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    move-result v2

    #@21
    .line 190
    .end local v2    # "result":Z
    :goto_0
    return v2

    #@22
    .line 173
    .end local v0    # "config":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v3    # "wrapper":Landroid/bluetooth/BluetoothHealth$BluetoothHealthCallbackWrapper;
    .restart local v2    # "result":Z
    :cond_0
    return v2

    #@23
    .line 183
    .restart local v0    # "config":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .restart local v3    # "wrapper":Landroid/bluetooth/BluetoothHealth$BluetoothHealthCallbackWrapper;
    :catch_0
    move-exception v1

    #@24
    .line 184
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "BluetoothHealth"

    #@27
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@2a
    move-result-object v5

    #@2b
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    goto :goto_0

    #@2f
    .line 187
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v4, "BluetoothHealth"

    #@32
    const-string/jumbo v5, "Proxy not attached to service"

    #@35
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 188
    const-string/jumbo v4, "BluetoothHealth"

    #@3b
    new-instance v5, Ljava/lang/Throwable;

    #@3d
    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    #@40
    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@43
    move-result-object v5

    #@44
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    goto :goto_0
.end method

.method public registerSinkAppConfiguration(Ljava/lang/String;ILandroid/bluetooth/BluetoothHealthCallback;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dataType"    # I
    .param p3, "callback"    # Landroid/bluetooth/BluetoothHealthCallback;

    #@0
    .prologue
    .line 147
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHealth;->isEnabled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    if-nez p1, :cond_1

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 150
    :cond_1
    const/4 v3, 0x2

    #@b
    .line 151
    const/16 v4, 0xc

    #@d
    move-object v0, p0

    #@e
    move-object v1, p1

    #@f
    move v2, p2

    #@10
    move-object v5, p3

    #@11
    .line 150
    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothHealth;->registerAppConfiguration(Ljava/lang/String;IIILandroid/bluetooth/BluetoothHealthCallback;)Z

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .locals 4
    .param p1, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;

    #@0
    .prologue
    .line 203
    const/4 v1, 0x0

    #@1
    .line 204
    .local v1, "result":Z
    iget-object v2, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    #@3
    if-eqz v2, :cond_0

    #@5
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHealth;->isEnabled()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    if-eqz p1, :cond_0

    #@d
    .line 206
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;

    #@f
    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothHealth;->unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result v1

    #@13
    .line 215
    .end local v1    # "result":Z
    :goto_0
    return v1

    #@14
    .line 207
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    #@15
    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothHealth"

    #@18
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    goto :goto_0

    #@20
    .line 211
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v2, "BluetoothHealth"

    #@23
    const-string/jumbo v3, "Proxy not attached to service"

    #@26
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 212
    const-string/jumbo v2, "BluetoothHealth"

    #@2c
    new-instance v3, Ljava/lang/Throwable;

    #@2e
    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    #@31
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    goto :goto_0
.end method
