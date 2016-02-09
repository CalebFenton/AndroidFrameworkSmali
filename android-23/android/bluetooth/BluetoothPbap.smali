.class public Landroid/bluetooth/BluetoothPbap;
.super Ljava/lang/Object;
.source "BluetoothPbap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothPbap$ServiceListener;,
        Landroid/bluetooth/BluetoothPbap$1;,
        Landroid/bluetooth/BluetoothPbap$2;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final PBAP_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.pbap.intent.PBAP_PREVIOUS_STATE"

.field public static final PBAP_STATE:Ljava/lang/String; = "android.bluetooth.pbap.intent.PBAP_STATE"

.field public static final PBAP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

.field public static final RESULT_CANCELED:I = 0x2

.field public static final RESULT_FAILURE:I = 0x0

.field public static final RESULT_SUCCESS:I = 0x1

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothPbap"

.field private static final VDBG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mService:Landroid/bluetooth/IBluetoothPbap;

.field private mServiceListener:Landroid/bluetooth/BluetoothPbap$ServiceListener;


# direct methods
.method static synthetic -get0(Landroid/bluetooth/BluetoothPbap;)Landroid/content/ServiceConnection;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap;->mConnection:Landroid/content/ServiceConnection;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/bluetooth/BluetoothPbap;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/IBluetoothPbap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap$ServiceListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap;->mServiceListener:Landroid/bluetooth/BluetoothPbap$ServiceListener;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/bluetooth/BluetoothPbap;Landroid/bluetooth/IBluetoothPbap;)Landroid/bluetooth/IBluetoothPbap;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Landroid/bluetooth/BluetoothPbap;->log(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothPbap$ServiceListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Landroid/bluetooth/BluetoothPbap$ServiceListener;

    #@0
    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 113
    new-instance v2, Landroid/bluetooth/BluetoothPbap$1;

    #@5
    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothPbap$1;-><init>(Landroid/bluetooth/BluetoothPbap;)V

    #@8
    .line 112
    iput-object v2, p0, Landroid/bluetooth/BluetoothPbap;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@a
    .line 302
    new-instance v2, Landroid/bluetooth/BluetoothPbap$2;

    #@c
    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothPbap$2;-><init>(Landroid/bluetooth/BluetoothPbap;)V

    #@f
    iput-object v2, p0, Landroid/bluetooth/BluetoothPbap;->mConnection:Landroid/content/ServiceConnection;

    #@11
    .line 145
    iput-object p1, p0, Landroid/bluetooth/BluetoothPbap;->mContext:Landroid/content/Context;

    #@13
    .line 146
    iput-object p2, p0, Landroid/bluetooth/BluetoothPbap;->mServiceListener:Landroid/bluetooth/BluetoothPbap$ServiceListener;

    #@15
    .line 147
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    #@18
    move-result-object v2

    #@19
    iput-object v2, p0, Landroid/bluetooth/BluetoothPbap;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@1b
    .line 148
    iget-object v2, p0, Landroid/bluetooth/BluetoothPbap;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@1d
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    #@20
    move-result-object v1

    #@21
    .line 149
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    #@23
    .line 151
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothPbap;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@25
    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 156
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothPbap;->doBind()Z

    #@2b
    .line 144
    return-void

    #@2c
    .line 152
    :catch_0
    move-exception v0

    #@2d
    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothPbap"

    #@30
    const-string/jumbo v3, ""

    #@33
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@36
    goto :goto_0
.end method

.method public static doesClassMatchSink(Landroid/bluetooth/BluetoothClass;)Z
    .locals 1
    .param p0, "btClass"    # Landroid/bluetooth/BluetoothClass;

    #@0
    .prologue
    .line 291
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    #@3
    move-result v0

    #@4
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 298
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 296
    :sswitch_0
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 291
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

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 320
    const-string/jumbo v0, "BluetoothPbap"

    #@3
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 319
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 6

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 186
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothPbap;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@3
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v1

    #@7
    .line 187
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    #@9
    .line 189
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothPbap;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@b
    invoke-interface {v1, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    .line 195
    :cond_0
    :goto_0
    :try_start_2
    iget-object v4, p0, Landroid/bluetooth/BluetoothPbap;->mConnection:Landroid/content/ServiceConnection;

    #@10
    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@11
    .line 196
    :try_start_3
    iget-object v3, p0, Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@13
    if-eqz v3, :cond_1

    #@15
    .line 198
    const/4 v3, 0x0

    #@16
    :try_start_4
    iput-object v3, p0, Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;

    #@18
    .line 199
    iget-object v3, p0, Landroid/bluetooth/BluetoothPbap;->mContext:Landroid/content/Context;

    #@1a
    iget-object v5, p0, Landroid/bluetooth/BluetoothPbap;->mConnection:Landroid/content/ServiceConnection;

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
    .line 205
    const/4 v3, 0x0

    #@21
    iput-object v3, p0, Landroid/bluetooth/BluetoothPbap;->mServiceListener:Landroid/bluetooth/BluetoothPbap$ServiceListener;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@23
    monitor-exit p0

    #@24
    .line 185
    return-void

    #@25
    .line 190
    :catch_0
    move-exception v0

    #@26
    .line 191
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v3, "BluetoothPbap"

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
    .line 200
    .restart local v1    # "mgr":Landroid/bluetooth/IBluetoothManager;
    :catch_1
    move-exception v2

    #@34
    .line 201
    .local v2, "re":Ljava/lang/Exception;
    :try_start_7
    const-string/jumbo v3, "BluetoothPbap"

    #@37
    const-string/jumbo v5, ""

    #@3a
    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@3d
    goto :goto_1

    #@3e
    .line 195
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

.method public disconnect()Z
    .locals 3

    #@0
    .prologue
    .line 269
    const-string/jumbo v1, "disconnect()"

    #@3
    invoke-static {v1}, Landroid/bluetooth/BluetoothPbap;->log(Ljava/lang/String;)V

    #@6
    .line 270
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 272
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;

    #@c
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothPbap;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 273
    const/4 v1, 0x1

    #@10
    return v1

    #@11
    .line 274
    :catch_0
    move-exception v0

    #@12
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothPbap"

    #@15
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 279
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    #@1d
    return v1

    #@1e
    .line 276
    :cond_0
    const-string/jumbo v1, "BluetoothPbap"

    #@21
    const-string/jumbo v2, "Proxy not attached to service"

    #@24
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 277
    new-instance v1, Ljava/lang/Throwable;

    #@29
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    #@2c
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-static {v1}, Landroid/bluetooth/BluetoothPbap;->log(Ljava/lang/String;)V

    #@33
    goto :goto_0
.end method

.method doBind()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 160
    new-instance v1, Landroid/content/Intent;

    #@3
    const-class v2, Landroid/bluetooth/IBluetoothPbap;

    #@5
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@c
    .line 161
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/bluetooth/BluetoothPbap;->mContext:Landroid/content/Context;

    #@e
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    #@15
    move-result-object v0

    #@16
    .line 162
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@19
    .line 163
    if-eqz v0, :cond_0

    #@1b
    iget-object v2, p0, Landroid/bluetooth/BluetoothPbap;->mContext:Landroid/content/Context;

    #@1d
    iget-object v3, p0, Landroid/bluetooth/BluetoothPbap;->mConnection:Landroid/content/ServiceConnection;

    #@1f
    .line 164
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@22
    move-result-object v4

    #@23
    .line 163
    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_0

    #@29
    .line 168
    const/4 v2, 0x1

    #@2a
    return v2

    #@2b
    .line 165
    :cond_0
    const-string/jumbo v2, "BluetoothPbap"

    #@2e
    new-instance v3, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v4, "Could not bind to Bluetooth Pbap Service with "

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
    .line 166
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
    .line 173
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothPbap;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 175
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 171
    return-void

    #@7
    .line 174
    :catchall_0
    move-exception v0

    #@8
    .line 175
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@b
    .line 174
    throw v0
.end method

.method public getClient()Landroid/bluetooth/BluetoothDevice;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 234
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 236
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;

    #@7
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothPbap;->getClient()Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 237
    :catch_0
    move-exception v0

    #@d
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothPbap"

    #@10
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 242
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v3

    #@18
    .line 239
    :cond_0
    const-string/jumbo v1, "BluetoothPbap"

    #@1b
    const-string/jumbo v2, "Proxy not attached to service"

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 240
    new-instance v1, Ljava/lang/Throwable;

    #@23
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    #@26
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-static {v1}, Landroid/bluetooth/BluetoothPbap;->log(Ljava/lang/String;)V

    #@2d
    goto :goto_0
.end method

.method public getState()I
    .locals 3

    #@0
    .prologue
    .line 215
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 217
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;

    #@6
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothPbap;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 218
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothPbap"

    #@f
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 223
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, -0x1

    #@17
    return v1

    #@18
    .line 220
    :cond_0
    const-string/jumbo v1, "BluetoothPbap"

    #@1b
    const-string/jumbo v2, "Proxy not attached to service"

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 221
    new-instance v1, Ljava/lang/Throwable;

    #@23
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    #@26
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-static {v1}, Landroid/bluetooth/BluetoothPbap;->log(Ljava/lang/String;)V

    #@2d
    goto :goto_0
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    .line 252
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 254
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;

    #@6
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothPbap;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 255
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothPbap"

    #@f
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 260
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    #@17
    return v1

    #@18
    .line 257
    :cond_0
    const-string/jumbo v1, "BluetoothPbap"

    #@1b
    const-string/jumbo v2, "Proxy not attached to service"

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 258
    new-instance v1, Ljava/lang/Throwable;

    #@23
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    #@26
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-static {v1}, Landroid/bluetooth/BluetoothPbap;->log(Ljava/lang/String;)V

    #@2d
    goto :goto_0
.end method
