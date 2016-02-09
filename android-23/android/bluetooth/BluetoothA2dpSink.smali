.class public final Landroid/bluetooth/BluetoothA2dpSink;
.super Ljava/lang/Object;
.source "BluetoothA2dpSink.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothA2dpSink$1;,
        Landroid/bluetooth/BluetoothA2dpSink$2;
    }
.end annotation


# static fields
.field public static final ACTION_AUDIO_CONFIG_CHANGED:Ljava/lang/String; = "android.bluetooth.a2dp-sink.profile.action.AUDIO_CONFIG_CHANGED"

.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_PLAYING_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.a2dp-sink.profile.action.PLAYING_STATE_CHANGED"

.field private static final DBG:Z = true

.field public static final EXTRA_AUDIO_CONFIG:Ljava/lang/String; = "android.bluetooth.a2dp-sink.profile.extra.AUDIO_CONFIG"

.field public static final STATE_NOT_PLAYING:I = 0xb

.field public static final STATE_PLAYING:I = 0xa

.field private static final TAG:Ljava/lang/String; = "BluetoothA2dpSink"

.field private static final VDBG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mService:Landroid/bluetooth/IBluetoothA2dpSink;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static synthetic -get0(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/content/ServiceConnection;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink;->mConnection:Landroid/content/ServiceConnection;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/IBluetoothA2dpSink;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/bluetooth/BluetoothA2dpSink;Landroid/bluetooth/IBluetoothA2dpSink;)Landroid/bluetooth/IBluetoothA2dpSink;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    #@2
    return-object p1
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@0
    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 131
    new-instance v2, Landroid/bluetooth/BluetoothA2dpSink$1;

    #@5
    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothA2dpSink$1;-><init>(Landroid/bluetooth/BluetoothA2dpSink;)V

    #@8
    .line 130
    iput-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@a
    .line 398
    new-instance v2, Landroid/bluetooth/BluetoothA2dpSink$2;

    #@c
    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothA2dpSink$2;-><init>(Landroid/bluetooth/BluetoothA2dpSink;)V

    #@f
    iput-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mConnection:Landroid/content/ServiceConnection;

    #@11
    .line 164
    iput-object p1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mContext:Landroid/content/Context;

    #@13
    .line 165
    iput-object p2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@15
    .line 166
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    #@18
    move-result-object v2

    #@19
    iput-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@1b
    .line 167
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@1d
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    #@20
    move-result-object v1

    #@21
    .line 168
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    #@23
    .line 170
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@25
    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 176
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dpSink;->doBind()Z

    #@2b
    .line 163
    return-void

    #@2c
    .line 171
    :catch_0
    move-exception v0

    #@2d
    .line 172
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothA2dpSink"

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
    .line 418
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

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
    .line 419
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
    .line 423
    if-nez p1, :cond_0

    #@3
    return v1

    #@4
    .line 425
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
    .line 426
    :cond_1
    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 430
    const-string/jumbo v0, "BluetoothA2dpSink"

    #@3
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 429
    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    #@0
    .prologue
    .line 380
    packed-switch p0, :pswitch_data_0

    #@3
    .line 394
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
    .line 382
    :pswitch_1
    const-string/jumbo v0, "disconnected"

    #@22
    return-object v0

    #@23
    .line 384
    :pswitch_2
    const-string/jumbo v0, "connecting"

    #@26
    return-object v0

    #@27
    .line 386
    :pswitch_3
    const-string/jumbo v0, "connected"

    #@2a
    return-object v0

    #@2b
    .line 388
    :pswitch_4
    const-string/jumbo v0, "disconnecting"

    #@2e
    return-object v0

    #@2f
    .line 390
    :pswitch_5
    const-string/jumbo v0, "playing"

    #@32
    return-object v0

    #@33
    .line 392
    :pswitch_6
    const-string/jumbo v0, "not playing"

    #@36
    return-object v0

    #@37
    .line 380
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
.method close()V
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 192
    iput-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@3
    .line 193
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@5
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    #@8
    move-result-object v1

    #@9
    .line 194
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    #@b
    .line 196
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@d
    invoke-interface {v1, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 202
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothA2dpSink;->mConnection:Landroid/content/ServiceConnection;

    #@12
    monitor-enter v4

    #@13
    .line 203
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 205
    const/4 v3, 0x0

    #@18
    :try_start_2
    iput-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    #@1a
    .line 206
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mContext:Landroid/content/Context;

    #@1c
    iget-object v5, p0, Landroid/bluetooth/BluetoothA2dpSink;->mConnection:Landroid/content/ServiceConnection;

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
    .line 191
    return-void

    #@23
    .line 197
    :catch_0
    move-exception v0

    #@24
    .line 198
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BluetoothA2dpSink"

    #@27
    const-string/jumbo v4, ""

    #@2a
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2d
    goto :goto_0

    #@2e
    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    #@2f
    .line 208
    .local v2, "re":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v3, "BluetoothA2dpSink"

    #@32
    const-string/jumbo v5, ""

    #@35
    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@38
    goto :goto_1

    #@39
    .line 202
    .end local v2    # "re":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    #@3a
    monitor-exit v4

    #@3b
    throw v3
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 240
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
    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dpSink;->log(Ljava/lang/String;)V

    #@1f
    .line 241
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    #@21
    if-eqz v1, :cond_0

    #@23
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_0

    #@29
    .line 242
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@2c
    move-result v1

    #@2d
    .line 241
    if-eqz v1, :cond_0

    #@2f
    .line 244
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    #@31
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dpSink;->connect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    move-result v1

    #@35
    return v1

    #@36
    .line 245
    :catch_0
    move-exception v0

    #@37
    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothA2dpSink"

    #@3a
    new-instance v2, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v3, "Stack:"

    #@42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    new-instance v3, Ljava/lang/Throwable;

    #@48
    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    #@4b
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    .line 247
    return v4

    #@5b
    .line 250
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    #@5d
    if-nez v1, :cond_1

    #@5f
    const-string/jumbo v1, "BluetoothA2dpSink"

    #@62
    const-string/jumbo v2, "Proxy not attached to service"

    #@65
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    .line 251
    :cond_1
    return v4
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 281
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
    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dpSink;->log(Ljava/lang/String;)V

    #@1f
    .line 282
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    #@21
    if-eqz v1, :cond_0

    #@23
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_0

    #@29
    .line 283
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@2c
    move-result v1

    #@2d
    .line 282
    if-eqz v1, :cond_0

    #@2f
    .line 285
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    #@31
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dpSink;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    move-result v1

    #@35
    return v1

    #@36
    .line 286
    :catch_0
    move-exception v0

    #@37
    .line 287
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothA2dpSink"

    #@3a
    new-instance v2, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v3, "Stack:"

    #@42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    new-instance v3, Ljava/lang/Throwable;

    #@48
    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    #@4b
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    .line 288
    return v4

    #@5b
    .line 291
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    #@5d
    if-nez v1, :cond_1

    #@5f
    const-string/jumbo v1, "BluetoothA2dpSink"

    #@62
    const-string/jumbo v2, "Proxy not attached to service"

    #@65
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    .line 292
    :cond_1
    return v4
.end method

.method doBind()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 180
    new-instance v1, Landroid/content/Intent;

    #@3
    const-class v2, Landroid/bluetooth/IBluetoothA2dpSink;

    #@5
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@c
    .line 181
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mContext:Landroid/content/Context;

    #@e
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    #@15
    move-result-object v0

    #@16
    .line 182
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@19
    .line 183
    if-eqz v0, :cond_0

    #@1b
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mContext:Landroid/content/Context;

    #@1d
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mConnection:Landroid/content/ServiceConnection;

    #@1f
    .line 184
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@22
    move-result-object v4

    #@23
    .line 183
    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_0

    #@29
    .line 188
    const/4 v2, 0x1

    #@2a
    return v2

    #@2b
    .line 185
    :cond_0
    const-string/jumbo v2, "BluetoothA2dpSink"

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
    .line 186
    return v5
.end method

.method public finalize()V
    .locals 0

    #@0
    .prologue
    .line 215
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dpSink;->close()V

    #@3
    .line 214
    return-void
.end method

.method public getAudioConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAudioConfig;
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 360
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    #@3
    if-eqz v1, :cond_0

    #@5
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 361
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@e
    move-result v1

    #@f
    .line 360
    if-eqz v1, :cond_0

    #@11
    .line 363
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    #@13
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dpSink;->getAudioConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAudioConfig;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result-object v1

    #@17
    return-object v1

    #@18
    .line 364
    :catch_0
    move-exception v0

    #@19
    .line 365
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothA2dpSink"

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
    .line 366
    return-object v4

    #@3d
    .line 369
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    #@3f
    if-nez v1, :cond_1

    #@41
    const-string/jumbo v1, "BluetoothA2dpSink"

    #@44
    const-string/jumbo v2, "Proxy not attached to service"

    #@47
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    .line 370
    :cond_1
    return-object v4
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
    .line 300
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 302
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    #@c
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothA2dpSink;->getConnectedDevices()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 303
    :catch_0
    move-exception v0

    #@12
    .line 304
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothA2dpSink"

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
    .line 305
    new-instance v1, Ljava/util/ArrayList;

    #@37
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@3a
    return-object v1

    #@3b
    .line 308
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    #@3d
    if-nez v1, :cond_1

    #@3f
    const-string/jumbo v1, "BluetoothA2dpSink"

    #@42
    const-string/jumbo v2, "Proxy not attached to service"

    #@45
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 309
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
    .line 334
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    #@3
    if-eqz v1, :cond_0

    #@5
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 335
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@e
    move-result v1

    #@f
    .line 334
    if-eqz v1, :cond_0

    #@11
    .line 337
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    #@13
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dpSink;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 338
    :catch_0
    move-exception v0

    #@19
    .line 339
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothA2dpSink"

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
    .line 340
    return v4

    #@3d
    .line 343
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    #@3f
    if-nez v1, :cond_1

    #@41
    const-string/jumbo v1, "BluetoothA2dpSink"

    #@44
    const-string/jumbo v2, "Proxy not attached to service"

    #@47
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    .line 344
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
    .line 317
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 319
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    #@c
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dpSink;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 320
    :catch_0
    move-exception v0

    #@12
    .line 321
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothA2dpSink"

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
    .line 322
    new-instance v1, Ljava/util/ArrayList;

    #@37
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@3a
    return-object v1

    #@3b
    .line 325
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    #@3d
    if-nez v1, :cond_1

    #@3f
    const-string/jumbo v1, "BluetoothA2dpSink"

    #@42
    const-string/jumbo v2, "Proxy not attached to service"

    #@45
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 326
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    #@4a
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@4d
    return-object v1
.end method
