.class public final Landroid/bluetooth/BluetoothAvrcpController;
.super Ljava/lang/Object;
.source "BluetoothAvrcpController.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothAvrcpController$1;,
        Landroid/bluetooth/BluetoothAvrcpController$2;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.acrcp-controller.profile.action.CONNECTION_STATE_CHANGED"

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothAvrcpController"

.field private static final VDBG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mService:Landroid/bluetooth/IBluetoothAvrcpController;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static synthetic -get0(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/content/ServiceConnection;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mConnection:Landroid/content/ServiceConnection;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/bluetooth/IBluetoothAvrcpController;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/bluetooth/BluetoothAvrcpController;Landroid/bluetooth/IBluetoothAvrcpController;)Landroid/bluetooth/IBluetoothAvrcpController;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    #@2
    return-object p1
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@0
    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    new-instance v2, Landroid/bluetooth/BluetoothAvrcpController$1;

    #@5
    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothAvrcpController$1;-><init>(Landroid/bluetooth/BluetoothAvrcpController;)V

    #@8
    .line 71
    iput-object v2, p0, Landroid/bluetooth/BluetoothAvrcpController;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@a
    .line 226
    new-instance v2, Landroid/bluetooth/BluetoothAvrcpController$2;

    #@c
    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothAvrcpController$2;-><init>(Landroid/bluetooth/BluetoothAvrcpController;)V

    #@f
    iput-object v2, p0, Landroid/bluetooth/BluetoothAvrcpController;->mConnection:Landroid/content/ServiceConnection;

    #@11
    .line 106
    iput-object p1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mContext:Landroid/content/Context;

    #@13
    .line 107
    iput-object p2, p0, Landroid/bluetooth/BluetoothAvrcpController;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@15
    .line 108
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    #@18
    move-result-object v2

    #@19
    iput-object v2, p0, Landroid/bluetooth/BluetoothAvrcpController;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@1b
    .line 109
    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpController;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@1d
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    #@20
    move-result-object v1

    #@21
    .line 110
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    #@23
    .line 112
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpController;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@25
    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 118
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAvrcpController;->doBind()Z

    #@2b
    .line 105
    return-void

    #@2c
    .line 113
    :catch_0
    move-exception v0

    #@2d
    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothAvrcpController"

    #@30
    const-string/jumbo v3, ""

    #@33
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@36
    goto :goto_0
.end method

.method private isEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

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
    .line 247
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
    .line 251
    if-nez p1, :cond_0

    #@3
    return v1

    #@4
    .line 253
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
    .line 254
    :cond_1
    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 258
    const-string/jumbo v0, "BluetoothAvrcpController"

    #@3
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 257
    return-void
.end method


# virtual methods
.method close()V
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 134
    iput-object v3, p0, Landroid/bluetooth/BluetoothAvrcpController;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@3
    .line 135
    iget-object v3, p0, Landroid/bluetooth/BluetoothAvrcpController;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@5
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    #@8
    move-result-object v1

    #@9
    .line 136
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    #@b
    .line 138
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAvrcpController;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@d
    invoke-interface {v1, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 144
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothAvrcpController;->mConnection:Landroid/content/ServiceConnection;

    #@12
    monitor-enter v4

    #@13
    .line 145
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 147
    const/4 v3, 0x0

    #@18
    :try_start_2
    iput-object v3, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    #@1a
    .line 148
    iget-object v3, p0, Landroid/bluetooth/BluetoothAvrcpController;->mContext:Landroid/content/Context;

    #@1c
    iget-object v5, p0, Landroid/bluetooth/BluetoothAvrcpController;->mConnection:Landroid/content/ServiceConnection;

    #@1e
    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@21
    :cond_1
    :goto_1
    monitor-exit v4

    #@22
    .line 133
    return-void

    #@23
    .line 139
    :catch_0
    move-exception v0

    #@24
    .line 140
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BluetoothAvrcpController"

    #@27
    const-string/jumbo v4, ""

    #@2a
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2d
    goto :goto_0

    #@2e
    .line 149
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    #@2f
    .line 150
    .local v2, "re":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v3, "BluetoothAvrcpController"

    #@32
    const-string/jumbo v5, ""

    #@35
    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@38
    goto :goto_1

    #@39
    .line 144
    .end local v2    # "re":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    #@3a
    monitor-exit v4

    #@3b
    throw v3
.end method

.method doBind()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 122
    new-instance v1, Landroid/content/Intent;

    #@3
    const-class v2, Landroid/bluetooth/IBluetoothAvrcpController;

    #@5
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@c
    .line 123
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpController;->mContext:Landroid/content/Context;

    #@e
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    #@15
    move-result-object v0

    #@16
    .line 124
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@19
    .line 125
    if-eqz v0, :cond_0

    #@1b
    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpController;->mContext:Landroid/content/Context;

    #@1d
    iget-object v3, p0, Landroid/bluetooth/BluetoothAvrcpController;->mConnection:Landroid/content/ServiceConnection;

    #@1f
    .line 126
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@22
    move-result-object v4

    #@23
    .line 125
    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_0

    #@29
    .line 130
    const/4 v2, 0x1

    #@2a
    return v2

    #@2b
    .line 127
    :cond_0
    const-string/jumbo v2, "BluetoothAvrcpController"

    #@2e
    new-instance v3, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v4, "Could not bind to Bluetooth AVRCP Controller Service with "

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
    .line 128
    return v5
.end method

.method public finalize()V
    .locals 0

    #@0
    .prologue
    .line 157
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAvrcpController;->close()V

    #@3
    .line 156
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
    .line 165
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAvrcpController;->isEnabled()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 167
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    #@c
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothAvrcpController;->getConnectedDevices()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 168
    :catch_0
    move-exception v0

    #@12
    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothAvrcpController"

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
    .line 170
    new-instance v1, Ljava/util/ArrayList;

    #@37
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@3a
    return-object v1

    #@3b
    .line 173
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    #@3d
    if-nez v1, :cond_1

    #@3f
    const-string/jumbo v1, "BluetoothAvrcpController"

    #@42
    const-string/jumbo v2, "Proxy not attached to service"

    #@45
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 174
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    #@4a
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@4d
    return-object v1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 199
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    #@3
    if-eqz v1, :cond_0

    #@5
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAvrcpController;->isEnabled()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 200
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothAvrcpController;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@e
    move-result v1

    #@f
    .line 199
    if-eqz v1, :cond_0

    #@11
    .line 202
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    #@13
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothAvrcpController;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 203
    :catch_0
    move-exception v0

    #@19
    .line 204
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothAvrcpController"

    #@1c
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "Stack:"

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    new-instance v3, Ljava/lang/Throwable;

    #@2a
    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    #@2d
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 205
    return v4

    #@3d
    .line 208
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    #@3f
    if-nez v1, :cond_1

    #@41
    const-string/jumbo v1, "BluetoothAvrcpController"

    #@44
    const-string/jumbo v2, "Proxy not attached to service"

    #@47
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    .line 209
    :cond_1
    return v4
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
    .line 182
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAvrcpController;->isEnabled()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 184
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    #@c
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothAvrcpController;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 185
    :catch_0
    move-exception v0

    #@12
    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothAvrcpController"

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
    .line 187
    new-instance v1, Ljava/util/ArrayList;

    #@37
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@3a
    return-object v1

    #@3b
    .line 190
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    #@3d
    if-nez v1, :cond_1

    #@3f
    const-string/jumbo v1, "BluetoothAvrcpController"

    #@42
    const-string/jumbo v2, "Proxy not attached to service"

    #@45
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 191
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    #@4a
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@4d
    return-object v1
.end method

.method public sendPassThroughCmd(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "keyCode"    # I
    .param p3, "keyState"    # I

    #@0
    .prologue
    .line 213
    const-string/jumbo v1, "BluetoothAvrcpController"

    #@3
    const-string/jumbo v2, "sendPassThroughCmd"

    #@6
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 214
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    #@b
    if-eqz v1, :cond_0

    #@d
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAvrcpController;->isEnabled()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 216
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    #@15
    invoke-interface {v1, p1, p2, p3}, Landroid/bluetooth/IBluetoothAvrcpController;->sendPassThroughCmd(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 217
    return-void

    #@19
    .line 218
    :catch_0
    move-exception v0

    #@1a
    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothAvrcpController"

    #@1d
    const-string/jumbo v2, "Error talking to BT service in sendPassThroughCmd()"

    #@20
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@23
    .line 220
    return-void

    #@24
    .line 223
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    #@26
    if-nez v1, :cond_1

    #@28
    const-string/jumbo v1, "BluetoothAvrcpController"

    #@2b
    const-string/jumbo v2, "Proxy not attached to service"

    #@2e
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 212
    :cond_1
    return-void
.end method
