.class public final Landroid/bluetooth/BluetoothMap;
.super Ljava/lang/Object;
.source "BluetoothMap.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothMap$1;,
        Landroid/bluetooth/BluetoothMap$2;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.map.profile.action.CONNECTION_STATE_CHANGED"

.field private static final DBG:Z = true

.field public static final RESULT_CANCELED:I = 0x2

.field public static final RESULT_FAILURE:I = 0x0

.field public static final RESULT_SUCCESS:I = 0x1

.field public static final STATE_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothMap"

.field private static final VDBG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mService:Landroid/bluetooth/IBluetoothMap;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static synthetic -get0(Landroid/bluetooth/BluetoothMap;)Landroid/content/ServiceConnection;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothMap;->mConnection:Landroid/content/ServiceConnection;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/bluetooth/BluetoothMap;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothMap;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/IBluetoothMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothMap;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/bluetooth/BluetoothMap;Landroid/bluetooth/IBluetoothMap;)Landroid/bluetooth/IBluetoothMap;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    new-instance v2, Landroid/bluetooth/BluetoothMap$1;

    #@5
    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothMap$1;-><init>(Landroid/bluetooth/BluetoothMap;)V

    #@8
    .line 55
    iput-object v2, p0, Landroid/bluetooth/BluetoothMap;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@a
    .line 371
    new-instance v2, Landroid/bluetooth/BluetoothMap$2;

    #@c
    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothMap$2;-><init>(Landroid/bluetooth/BluetoothMap;)V

    #@f
    iput-object v2, p0, Landroid/bluetooth/BluetoothMap;->mConnection:Landroid/content/ServiceConnection;

    #@11
    .line 88
    const-string/jumbo v2, "BluetoothMap"

    #@14
    const-string/jumbo v3, "Create BluetoothMap proxy object"

    #@17
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 89
    iput-object p1, p0, Landroid/bluetooth/BluetoothMap;->mContext:Landroid/content/Context;

    #@1c
    .line 90
    iput-object p2, p0, Landroid/bluetooth/BluetoothMap;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@1e
    .line 91
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    #@21
    move-result-object v2

    #@22
    iput-object v2, p0, Landroid/bluetooth/BluetoothMap;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@24
    .line 92
    iget-object v2, p0, Landroid/bluetooth/BluetoothMap;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@26
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    #@29
    move-result-object v1

    #@2a
    .line 93
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    #@2c
    .line 95
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothMap;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@2e
    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    .line 100
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothMap;->doBind()Z

    #@34
    .line 87
    return-void

    #@35
    .line 96
    :catch_0
    move-exception v0

    #@36
    .line 97
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothMap"

    #@39
    const-string/jumbo v3, ""

    #@3c
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3f
    goto :goto_0
.end method

.method public static doesClassMatchSink(Landroid/bluetooth/BluetoothClass;)Z
    .locals 1
    .param p0, "btClass"    # Landroid/bluetooth/BluetoothClass;

    #@0
    .prologue
    .line 247
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    #@3
    move-result v0

    #@4
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 254
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 252
    :sswitch_0
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 247
    nop

    #@c
    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x104 -> :sswitch_0
        0x108 -> :sswitch_0
        0x10c -> :sswitch_0
    .end sparse-switch
.end method

.method private isEnabled()Z
    .locals 3

    #@0
    .prologue
    .line 393
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    #@3
    move-result-object v0

    #@4
    .line 394
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
    .line 395
    :cond_0
    const-string/jumbo v1, "Bluetooth is Not enabled"

    #@13
    invoke-static {v1}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    #@16
    .line 396
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
    .line 399
    if-nez p1, :cond_0

    #@3
    return v1

    #@4
    .line 401
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
    .line 402
    :cond_1
    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 389
    const-string/jumbo v0, "BluetoothMap"

    #@3
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 388
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 6

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 130
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothMap;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@3
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v1

    #@7
    .line 131
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    #@9
    .line 133
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothMap;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@b
    invoke-interface {v1, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    .line 139
    :cond_0
    :goto_0
    :try_start_2
    iget-object v4, p0, Landroid/bluetooth/BluetoothMap;->mConnection:Landroid/content/ServiceConnection;

    #@10
    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@11
    .line 140
    :try_start_3
    iget-object v3, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@13
    if-eqz v3, :cond_1

    #@15
    .line 142
    const/4 v3, 0x0

    #@16
    :try_start_4
    iput-object v3, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    #@18
    .line 143
    iget-object v3, p0, Landroid/bluetooth/BluetoothMap;->mContext:Landroid/content/Context;

    #@1a
    iget-object v5, p0, Landroid/bluetooth/BluetoothMap;->mConnection:Landroid/content/ServiceConnection;

    #@1c
    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1f
    :cond_1
    :goto_1
    :try_start_5
    monitor-exit v4

    #@20
    .line 149
    const/4 v3, 0x0

    #@21
    iput-object v3, p0, Landroid/bluetooth/BluetoothMap;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@23
    monitor-exit p0

    #@24
    .line 129
    return-void

    #@25
    .line 134
    :catch_0
    move-exception v0

    #@26
    .line 135
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v3, "BluetoothMap"

    #@29
    const-string/jumbo v4, ""

    #@2c
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@2f
    goto :goto_0

    #@30
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mgr":Landroid/bluetooth/IBluetoothManager;
    :catchall_0
    move-exception v3

    #@31
    monitor-exit p0

    #@32
    throw v3

    #@33
    .line 144
    .restart local v1    # "mgr":Landroid/bluetooth/IBluetoothManager;
    :catch_1
    move-exception v2

    #@34
    .line 145
    .local v2, "re":Ljava/lang/Exception;
    :try_start_7
    const-string/jumbo v3, "BluetoothMap"

    #@37
    const-string/jumbo v5, ""

    #@3a
    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@3d
    goto :goto_1

    #@3e
    .line 139
    .end local v2    # "re":Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    #@3f
    :try_start_8
    monitor-exit v4

    #@40
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "connect("

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, ")"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const-string/jumbo v1, "not supported for MAPS"

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-static {v0}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    #@25
    .line 213
    const/4 v0, 0x0

    #@26
    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 224
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
    invoke-static {v1}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    #@1f
    .line 225
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    #@21
    if-eqz v1, :cond_0

    #@23
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMap;->isEnabled()Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_0

    #@29
    .line 226
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothMap;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@2c
    move-result v1

    #@2d
    .line 225
    if-eqz v1, :cond_0

    #@2f
    .line 228
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    #@31
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothMap;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    move-result v1

    #@35
    return v1

    #@36
    .line 229
    :catch_0
    move-exception v0

    #@37
    .line 230
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothMap"

    #@3a
    new-instance v2, Ljava/lang/Throwable;

    #@3c
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@3f
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 231
    return v3

    #@47
    .line 234
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    #@49
    if-nez v1, :cond_1

    #@4b
    const-string/jumbo v1, "BluetoothMap"

    #@4e
    const-string/jumbo v2, "Proxy not attached to service"

    #@51
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    .line 235
    :cond_1
    return v3
.end method

.method doBind()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 104
    new-instance v1, Landroid/content/Intent;

    #@3
    const-class v2, Landroid/bluetooth/IBluetoothMap;

    #@5
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@c
    .line 105
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/bluetooth/BluetoothMap;->mContext:Landroid/content/Context;

    #@e
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    #@15
    move-result-object v0

    #@16
    .line 106
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@19
    .line 107
    if-eqz v0, :cond_0

    #@1b
    iget-object v2, p0, Landroid/bluetooth/BluetoothMap;->mContext:Landroid/content/Context;

    #@1d
    iget-object v3, p0, Landroid/bluetooth/BluetoothMap;->mConnection:Landroid/content/ServiceConnection;

    #@1f
    .line 108
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@22
    move-result-object v4

    #@23
    .line 107
    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_0

    #@29
    .line 112
    const/4 v2, 0x1

    #@2a
    return v2

    #@2b
    .line 109
    :cond_0
    const-string/jumbo v2, "BluetoothMap"

    #@2e
    new-instance v3, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v4, "Could not bind to Bluetooth MAP Service with "

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
    .line 110
    return v5
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 117
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothMap;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 119
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 115
    return-void

    #@7
    .line 118
    :catchall_0
    move-exception v0

    #@8
    .line 119
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@b
    .line 118
    throw v0
.end method

.method public getClient()Landroid/bluetooth/BluetoothDevice;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 178
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 180
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    #@7
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothMap;->getClient()Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 181
    :catch_0
    move-exception v0

    #@d
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothMap"

    #@10
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 186
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v3

    #@18
    .line 183
    :cond_0
    const-string/jumbo v1, "BluetoothMap"

    #@1b
    const-string/jumbo v2, "Proxy not attached to service"

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 184
    new-instance v1, Ljava/lang/Throwable;

    #@23
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    #@26
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-static {v1}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    #@2d
    goto :goto_0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 3
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
    .line 264
    const-string/jumbo v1, "getConnectedDevices()"

    #@3
    invoke-static {v1}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    #@6
    .line 265
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    #@8
    if-eqz v1, :cond_0

    #@a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMap;->isEnabled()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 267
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    #@12
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothMap;->getConnectedDevices()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v1

    #@16
    return-object v1

    #@17
    .line 268
    :catch_0
    move-exception v0

    #@18
    .line 269
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothMap"

    #@1b
    new-instance v2, Ljava/lang/Throwable;

    #@1d
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@20
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 270
    new-instance v1, Ljava/util/ArrayList;

    #@29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@2c
    return-object v1

    #@2d
    .line 273
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    #@2f
    if-nez v1, :cond_1

    #@31
    const-string/jumbo v1, "BluetoothMap"

    #@34
    const-string/jumbo v2, "Proxy not attached to service"

    #@37
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 274
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    #@3c
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@3f
    return-object v1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v2, "getConnectionState("

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
    invoke-static {v1}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    #@1f
    .line 303
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    #@21
    if-eqz v1, :cond_0

    #@23
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMap;->isEnabled()Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_0

    #@29
    .line 304
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothMap;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@2c
    move-result v1

    #@2d
    .line 303
    if-eqz v1, :cond_0

    #@2f
    .line 306
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    #@31
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothMap;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    move-result v1

    #@35
    return v1

    #@36
    .line 307
    :catch_0
    move-exception v0

    #@37
    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothMap"

    #@3a
    new-instance v2, Ljava/lang/Throwable;

    #@3c
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@3f
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 309
    return v3

    #@47
    .line 312
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    #@49
    if-nez v1, :cond_1

    #@4b
    const-string/jumbo v1, "BluetoothMap"

    #@4e
    const-string/jumbo v2, "Proxy not attached to service"

    #@51
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    .line 313
    :cond_1
    return v3
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 3
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
    .line 283
    const-string/jumbo v1, "getDevicesMatchingStates()"

    #@3
    invoke-static {v1}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    #@6
    .line 284
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    #@8
    if-eqz v1, :cond_0

    #@a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMap;->isEnabled()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 286
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    #@12
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothMap;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v1

    #@16
    return-object v1

    #@17
    .line 287
    :catch_0
    move-exception v0

    #@18
    .line 288
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothMap"

    #@1b
    new-instance v2, Ljava/lang/Throwable;

    #@1d
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@20
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 289
    new-instance v1, Ljava/util/ArrayList;

    #@29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@2c
    return-object v1

    #@2d
    .line 292
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    #@2f
    if-nez v1, :cond_1

    #@31
    const-string/jumbo v1, "BluetoothMap"

    #@34
    const-string/jumbo v2, "Proxy not attached to service"

    #@37
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 293
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    #@3c
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@3f
    return-object v1
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 358
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    #@3
    if-eqz v1, :cond_0

    #@5
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMap;->isEnabled()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 359
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothMap;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@e
    move-result v1

    #@f
    .line 358
    if-eqz v1, :cond_0

    #@11
    .line 361
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    #@13
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothMap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 362
    :catch_0
    move-exception v0

    #@19
    .line 363
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothMap"

    #@1c
    new-instance v2, Ljava/lang/Throwable;

    #@1e
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@21
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 364
    return v3

    #@29
    .line 367
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    #@2b
    if-nez v1, :cond_1

    #@2d
    const-string/jumbo v1, "BluetoothMap"

    #@30
    const-string/jumbo v2, "Proxy not attached to service"

    #@33
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 368
    :cond_1
    return v3
.end method

.method public getState()I
    .locals 3

    #@0
    .prologue
    .line 159
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 161
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    #@6
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothMap;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 162
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothMap"

    #@f
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 167
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, -0x1

    #@17
    return v1

    #@18
    .line 164
    :cond_0
    const-string/jumbo v1, "BluetoothMap"

    #@1b
    const-string/jumbo v2, "Proxy not attached to service"

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 165
    new-instance v1, Ljava/lang/Throwable;

    #@23
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    #@26
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-static {v1}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    #@2d
    goto :goto_0
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    .line 196
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 198
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    #@6
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothMap;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 199
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothMap"

    #@f
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 204
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    #@17
    return v1

    #@18
    .line 201
    :cond_0
    const-string/jumbo v1, "BluetoothMap"

    #@1b
    const-string/jumbo v2, "Proxy not attached to service"

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 202
    new-instance v1, Ljava/lang/Throwable;

    #@23
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    #@26
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-static {v1}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    #@2d
    goto :goto_0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 328
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
    invoke-static {v1}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    #@2a
    .line 329
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    #@2c
    if-eqz v1, :cond_1

    #@2e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMap;->isEnabled()Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_1

    #@34
    .line 330
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothMap;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@37
    move-result v1

    #@38
    .line 329
    if-eqz v1, :cond_1

    #@3a
    .line 331
    if-eqz p2, :cond_0

    #@3c
    .line 332
    const/16 v1, 0x64

    #@3e
    if-eq p2, v1, :cond_0

    #@40
    .line 333
    return v3

    #@41
    .line 336
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    #@43
    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothMap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    move-result v1

    #@47
    return v1

    #@48
    .line 337
    :catch_0
    move-exception v0

    #@49
    .line 338
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothMap"

    #@4c
    new-instance v2, Ljava/lang/Throwable;

    #@4e
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@51
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    .line 339
    return v3

    #@59
    .line 342
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    #@5b
    if-nez v1, :cond_2

    #@5d
    const-string/jumbo v1, "BluetoothMap"

    #@60
    const-string/jumbo v2, "Proxy not attached to service"

    #@63
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    .line 343
    :cond_2
    return v3
.end method
