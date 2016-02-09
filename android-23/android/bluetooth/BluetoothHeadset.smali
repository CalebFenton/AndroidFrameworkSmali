.class public final Landroid/bluetooth/BluetoothHeadset;
.super Ljava/lang/Object;
.source "BluetoothHeadset.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothHeadset$1;,
        Landroid/bluetooth/BluetoothHeadset$2;,
        Landroid/bluetooth/BluetoothHeadset$3;
    }
.end annotation


# static fields
.field public static final ACTION_AUDIO_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_VENDOR_SPECIFIC_HEADSET_EVENT:Ljava/lang/String; = "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT"

.field public static final AT_CMD_TYPE_ACTION:I = 0x4

.field public static final AT_CMD_TYPE_BASIC:I = 0x3

.field public static final AT_CMD_TYPE_READ:I = 0x0

.field public static final AT_CMD_TYPE_SET:I = 0x2

.field public static final AT_CMD_TYPE_TEST:I = 0x1

.field private static final DBG:Z = true

.field public static final EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_ARGS:Ljava/lang/String; = "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_ARGS"

.field public static final EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_CMD:Ljava/lang/String; = "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD"

.field public static final EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_CMD_TYPE:Ljava/lang/String; = "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD_TYPE"

.field private static final MESSAGE_HEADSET_SERVICE_CONNECTED:I = 0x64

.field private static final MESSAGE_HEADSET_SERVICE_DISCONNECTED:I = 0x65

.field public static final STATE_AUDIO_CONNECTED:I = 0xc

.field public static final STATE_AUDIO_CONNECTING:I = 0xb

.field public static final STATE_AUDIO_DISCONNECTED:I = 0xa

.field private static final TAG:Ljava/lang/String; = "BluetoothHeadset"

.field private static final VDBG:Z = false

.field public static final VENDOR_RESULT_CODE_COMMAND_ANDROID:Ljava/lang/String; = "+ANDROID"

.field public static final VENDOR_SPECIFIC_HEADSET_EVENT_COMPANY_ID_CATEGORY:Ljava/lang/String; = "android.bluetooth.headset.intent.category.companyid"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mConnection:Landroid/bluetooth/IBluetoothProfileServiceConnection;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mService:Landroid/bluetooth/IBluetoothHeadset;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static synthetic -get0(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/IBluetoothProfileServiceConnection;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mConnection:Landroid/bluetooth/IBluetoothProfileServiceConnection;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/bluetooth/BluetoothHeadset;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/IBluetoothHeadset;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/IBluetoothHeadset;)Landroid/bluetooth/IBluetoothHeadset;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@2
    return-object p1
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@0
    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 234
    new-instance v2, Landroid/bluetooth/BluetoothHeadset$1;

    #@5
    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothHeadset$1;-><init>(Landroid/bluetooth/BluetoothHeadset;)V

    #@8
    .line 233
    iput-object v2, p0, Landroid/bluetooth/BluetoothHeadset;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@a
    .line 931
    new-instance v2, Landroid/bluetooth/BluetoothHeadset$2;

    #@c
    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothHeadset$2;-><init>(Landroid/bluetooth/BluetoothHeadset;)V

    #@f
    .line 930
    iput-object v2, p0, Landroid/bluetooth/BluetoothHeadset;->mConnection:Landroid/bluetooth/IBluetoothProfileServiceConnection;

    #@11
    .line 969
    new-instance v2, Landroid/bluetooth/BluetoothHeadset$3;

    #@13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@16
    move-result-object v3

    #@17
    invoke-direct {v2, p0, v3}, Landroid/bluetooth/BluetoothHeadset$3;-><init>(Landroid/bluetooth/BluetoothHeadset;Landroid/os/Looper;)V

    #@1a
    iput-object v2, p0, Landroid/bluetooth/BluetoothHeadset;->mHandler:Landroid/os/Handler;

    #@1c
    .line 259
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadset;->mContext:Landroid/content/Context;

    #@1e
    .line 260
    iput-object p2, p0, Landroid/bluetooth/BluetoothHeadset;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@20
    .line 261
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    #@23
    move-result-object v2

    #@24
    iput-object v2, p0, Landroid/bluetooth/BluetoothHeadset;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@26
    .line 263
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadset;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@28
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    #@2b
    move-result-object v1

    #@2c
    .line 264
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    #@2e
    .line 266
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadset;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@30
    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    .line 272
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->doBind()Z

    #@36
    .line 258
    return-void

    #@37
    .line 267
    :catch_0
    move-exception v0

    #@38
    .line 268
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothHeadset"

    #@3b
    const-string/jumbo v3, ""

    #@3e
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@41
    goto :goto_0
.end method

.method public static isBluetoothVoiceDialingEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 628
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    .line 629
    const v1, 0x112004f

    #@7
    .line 628
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method private isDisabled()Z
    .locals 2

    #@0
    .prologue
    .line 954
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    #@5
    move-result v0

    #@6
    const/16 v1, 0xa

    #@8
    if-ne v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    return v0

    #@c
    .line 955
    :cond_0
    const/4 v0, 0x0

    #@d
    return v0
.end method

.method private isEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 949
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

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
    .line 950
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
    .line 959
    if-nez p1, :cond_0

    #@3
    return v1

    #@4
    .line 961
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
    .line 962
    :cond_1
    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 966
    const-string/jumbo v0, "BluetoothHeadset"

    #@3
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 965
    return-void
.end method


# virtual methods
.method public acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    .line 639
    const-string/jumbo v1, "acceptIncomingConnect"

    #@3
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    #@6
    .line 640
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@8
    if-eqz v1, :cond_0

    #@a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 642
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@12
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result v1

    #@16
    return v1

    #@17
    .line 643
    :catch_0
    move-exception v0

    #@18
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadset"

    #@1b
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 648
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    #@23
    return v1

    #@24
    .line 645
    :cond_0
    const-string/jumbo v1, "BluetoothHeadset"

    #@27
    const-string/jumbo v2, "Proxy not attached to service"

    #@2a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 646
    const-string/jumbo v1, "BluetoothHeadset"

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

.method public clccResponse(IIIIZLjava/lang/String;I)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "direction"    # I
    .param p3, "status"    # I
    .param p4, "mode"    # I
    .param p5, "mpty"    # Z
    .param p6, "number"    # Ljava/lang/String;
    .param p7, "type"    # I

    #@0
    .prologue
    .line 834
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 836
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@c
    move v1, p1

    #@d
    move v2, p2

    #@e
    move v3, p3

    #@f
    move v4, p4

    #@10
    move v5, p5

    #@11
    move-object v6, p6

    #@12
    move/from16 v7, p7

    #@14
    invoke-interface/range {v0 .. v7}, Landroid/bluetooth/IBluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 833
    :goto_0
    return-void

    #@18
    .line 837
    :catch_0
    move-exception v8

    #@19
    .line 838
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "BluetoothHeadset"

    #@1c
    invoke-virtual {v8}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    goto :goto_0

    #@24
    .line 841
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v0, "BluetoothHeadset"

    #@27
    const-string/jumbo v1, "Proxy not attached to service"

    #@2a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 842
    const-string/jumbo v0, "BluetoothHeadset"

    #@30
    new-instance v1, Ljava/lang/Throwable;

    #@32
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    #@35
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    goto :goto_0
.end method

.method close()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 307
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadset;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@3
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    #@6
    move-result-object v1

    #@7
    .line 308
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    #@9
    .line 310
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadset;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@b
    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 315
    :cond_0
    :goto_0
    iput-object v4, p0, Landroid/bluetooth/BluetoothHeadset;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@10
    .line 316
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->doUnbind()V

    #@13
    .line 304
    return-void

    #@14
    .line 311
    :catch_0
    move-exception v0

    #@15
    .line 312
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BluetoothHeadset"

    #@18
    const-string/jumbo v3, ""

    #@1b
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1e
    goto :goto_0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 342
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
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    #@1f
    .line 343
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@21
    if-eqz v1, :cond_0

    #@23
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_0

    #@29
    .line 344
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@2c
    move-result v1

    #@2d
    .line 343
    if-eqz v1, :cond_0

    #@2f
    .line 346
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@31
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->connect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    move-result v1

    #@35
    return v1

    #@36
    .line 347
    :catch_0
    move-exception v0

    #@37
    .line 348
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadset"

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
    .line 349
    return v3

    #@47
    .line 352
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@49
    if-nez v1, :cond_1

    #@4b
    const-string/jumbo v1, "BluetoothHeadset"

    #@4e
    const-string/jumbo v2, "Proxy not attached to service"

    #@51
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    .line 353
    :cond_1
    return v3
.end method

.method public connectAudio()Z
    .locals 3

    #@0
    .prologue
    .line 720
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 722
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@c
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadset;->connectAudio()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 723
    :catch_0
    move-exception v0

    #@12
    .line 724
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadset"

    #@15
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 730
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    #@1d
    return v1

    #@1e
    .line 727
    :cond_0
    const-string/jumbo v1, "BluetoothHeadset"

    #@21
    const-string/jumbo v2, "Proxy not attached to service"

    #@24
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 728
    const-string/jumbo v1, "BluetoothHeadset"

    #@2a
    new-instance v2, Ljava/lang/Throwable;

    #@2c
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@2f
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    goto :goto_0
.end method

.method public disableWBS()Z
    .locals 3

    #@0
    .prologue
    .line 917
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 919
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@c
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadset;->disableWBS()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 920
    :catch_0
    move-exception v0

    #@12
    .line 921
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadset"

    #@15
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 927
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    #@1d
    return v1

    #@1e
    .line 924
    :cond_0
    const-string/jumbo v1, "BluetoothHeadset"

    #@21
    const-string/jumbo v2, "Proxy not attached to service"

    #@24
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 925
    const-string/jumbo v1, "BluetoothHeadset"

    #@2a
    new-instance v2, Ljava/lang/Throwable;

    #@2c
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@2f
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 383
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
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    #@1f
    .line 384
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@21
    if-eqz v1, :cond_0

    #@23
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_0

    #@29
    .line 385
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@2c
    move-result v1

    #@2d
    .line 384
    if-eqz v1, :cond_0

    #@2f
    .line 387
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@31
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    move-result v1

    #@35
    return v1

    #@36
    .line 388
    :catch_0
    move-exception v0

    #@37
    .line 389
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadset"

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
    .line 390
    return v3

    #@47
    .line 393
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@49
    if-nez v1, :cond_1

    #@4b
    const-string/jumbo v1, "BluetoothHeadset"

    #@4e
    const-string/jumbo v2, "Proxy not attached to service"

    #@51
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    .line 394
    :cond_1
    return v3
.end method

.method public disconnectAudio()Z
    .locals 3

    #@0
    .prologue
    .line 743
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 745
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@c
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadset;->disconnectAudio()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 746
    :catch_0
    move-exception v0

    #@12
    .line 747
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadset"

    #@15
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 753
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    #@1d
    return v1

    #@1e
    .line 750
    :cond_0
    const-string/jumbo v1, "BluetoothHeadset"

    #@21
    const-string/jumbo v2, "Proxy not attached to service"

    #@24
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 751
    const-string/jumbo v1, "BluetoothHeadset"

    #@2a
    new-instance v2, Ljava/lang/Throwable;

    #@2c
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@2f
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    goto :goto_0
.end method

.method doBind()Z
    .locals 4

    #@0
    .prologue
    .line 277
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@2
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    #@5
    move-result-object v1

    #@6
    .line 278
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadset;->mConnection:Landroid/bluetooth/IBluetoothProfileServiceConnection;

    #@8
    const/4 v3, 0x1

    #@9
    .line 277
    invoke-interface {v1, v3, v2}, Landroid/bluetooth/IBluetoothManager;->bindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result v1

    #@d
    return v1

    #@e
    .line 279
    :catch_0
    move-exception v0

    #@f
    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadset"

    #@12
    const-string/jumbo v2, "Unable to bind HeadsetService"

    #@15
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18
    .line 282
    const/4 v1, 0x0

    #@19
    return v1
.end method

.method doUnbind()V
    .locals 5

    #@0
    .prologue
    .line 286
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadset;->mConnection:Landroid/bluetooth/IBluetoothProfileServiceConnection;

    #@2
    monitor-enter v2

    #@3
    .line 287
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 289
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@9
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    #@c
    move-result-object v1

    #@d
    .line 290
    iget-object v3, p0, Landroid/bluetooth/BluetoothHeadset;->mConnection:Landroid/bluetooth/IBluetoothProfileServiceConnection;

    #@f
    const/4 v4, 0x1

    #@10
    .line 289
    invoke-interface {v1, v4, v3}, Landroid/bluetooth/IBluetoothManager;->unbindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    :cond_0
    :goto_0
    monitor-exit v2

    #@14
    .line 285
    return-void

    #@15
    .line 291
    :catch_0
    move-exception v0

    #@16
    .line 292
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "BluetoothHeadset"

    #@19
    const-string/jumbo v3, "Unable to unbind HeadsetService"

    #@1c
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1f
    goto :goto_0

    #@20
    .line 286
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@21
    monitor-exit v2

    #@22
    throw v1
.end method

.method public enableWBS()Z
    .locals 3

    #@0
    .prologue
    .line 895
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 897
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@c
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadset;->enableWBS()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 898
    :catch_0
    move-exception v0

    #@12
    .line 899
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadset"

    #@15
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 905
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    #@1d
    return v1

    #@1e
    .line 902
    :cond_0
    const-string/jumbo v1, "BluetoothHeadset"

    #@21
    const-string/jumbo v2, "Proxy not attached to service"

    #@24
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 903
    const-string/jumbo v1, "BluetoothHeadset"

    #@2a
    new-instance v2, Ljava/lang/Throwable;

    #@2c
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@2f
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    goto :goto_0
.end method

.method public getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    .line 676
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isDisabled()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 681
    :cond_0
    const-string/jumbo v1, "BluetoothHeadset"

    #@d
    const-string/jumbo v2, "Proxy not attached to service"

    #@10
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 682
    const-string/jumbo v1, "BluetoothHeadset"

    #@16
    new-instance v2, Ljava/lang/Throwable;

    #@18
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@1b
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 684
    :goto_0
    const/16 v1, 0xa

    #@24
    return v1

    #@25
    .line 678
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@27
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    move-result v1

    #@2b
    return v1

    #@2c
    .line 679
    :catch_0
    move-exception v0

    #@2d
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadset"

    #@30
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    goto :goto_0
.end method

.method public getBatteryUsageHint(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    .line 609
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 610
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@d
    move-result v1

    #@e
    .line 609
    if-eqz v1, :cond_0

    #@10
    .line 612
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@12
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->getBatteryUsageHint(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result v1

    #@16
    return v1

    #@17
    .line 613
    :catch_0
    move-exception v0

    #@18
    .line 614
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadset"

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
    .line 617
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@29
    if-nez v1, :cond_1

    #@2b
    const-string/jumbo v1, "BluetoothHeadset"

    #@2e
    const-string/jumbo v2, "Proxy not attached to service"

    #@31
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 618
    :cond_1
    const/4 v1, -0x1

    #@35
    return v1
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
    .line 402
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 404
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@c
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadset;->getConnectedDevices()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 405
    :catch_0
    move-exception v0

    #@12
    .line 406
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadset"

    #@15
    new-instance v2, Ljava/lang/Throwable;

    #@17
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@1a
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 407
    new-instance v1, Ljava/util/ArrayList;

    #@23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@26
    return-object v1

    #@27
    .line 410
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@29
    if-nez v1, :cond_1

    #@2b
    const-string/jumbo v1, "BluetoothHeadset"

    #@2e
    const-string/jumbo v2, "Proxy not attached to service"

    #@31
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 411
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    #@36
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@39
    return-object v1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 436
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@3
    if-eqz v1, :cond_0

    #@5
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 437
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@e
    move-result v1

    #@f
    .line 436
    if-eqz v1, :cond_0

    #@11
    .line 439
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@13
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 440
    :catch_0
    move-exception v0

    #@19
    .line 441
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadset"

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
    .line 442
    return v3

    #@29
    .line 445
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@2b
    if-nez v1, :cond_1

    #@2d
    const-string/jumbo v1, "BluetoothHeadset"

    #@30
    const-string/jumbo v2, "Proxy not attached to service"

    #@33
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 446
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
    .line 419
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 421
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@c
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 422
    :catch_0
    move-exception v0

    #@12
    .line 423
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadset"

    #@15
    new-instance v2, Ljava/lang/Throwable;

    #@17
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@1a
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 424
    new-instance v1, Ljava/util/ArrayList;

    #@23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@26
    return-object v1

    #@27
    .line 427
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@29
    if-nez v1, :cond_1

    #@2b
    const-string/jumbo v1, "BluetoothHeadset"

    #@2e
    const-string/jumbo v2, "Proxy not attached to service"

    #@31
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 428
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    #@36
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@39
    return-object v1
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 498
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@3
    if-eqz v1, :cond_0

    #@5
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 499
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@e
    move-result v1

    #@f
    .line 498
    if-eqz v1, :cond_0

    #@11
    .line 501
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@13
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 502
    :catch_0
    move-exception v0

    #@19
    .line 503
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadset"

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
    .line 504
    return v3

    #@29
    .line 507
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@2b
    if-nez v1, :cond_1

    #@2d
    const-string/jumbo v1, "BluetoothHeadset"

    #@30
    const-string/jumbo v2, "Proxy not attached to service"

    #@33
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 508
    :cond_1
    return v3
.end method

.method public isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    .line 581
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 582
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@d
    move-result v1

    #@e
    .line 581
    if-eqz v1, :cond_0

    #@10
    .line 584
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@12
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result v1

    #@16
    return v1

    #@17
    .line 585
    :catch_0
    move-exception v0

    #@18
    .line 586
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadset"

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
    .line 589
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@29
    if-nez v1, :cond_1

    #@2b
    const-string/jumbo v1, "BluetoothHeadset"

    #@2e
    const-string/jumbo v2, "Proxy not attached to service"

    #@31
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 590
    :cond_1
    const/4 v1, 0x0

    #@35
    return v1
.end method

.method public isAudioOn()Z
    .locals 3

    #@0
    .prologue
    .line 698
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 700
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@c
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadset;->isAudioOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 701
    :catch_0
    move-exception v0

    #@12
    .line 702
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadset"

    #@15
    new-instance v2, Ljava/lang/Throwable;

    #@17
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@1a
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 705
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@23
    if-nez v1, :cond_1

    #@25
    const-string/jumbo v1, "BluetoothHeadset"

    #@28
    const-string/jumbo v2, "Proxy not attached to service"

    #@2b
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 706
    :cond_1
    const/4 v1, 0x0

    #@2f
    return v1
.end method

.method public phoneStateChanged(IIILjava/lang/String;I)V
    .locals 7
    .param p1, "numActive"    # I
    .param p2, "numHeld"    # I
    .param p3, "callState"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "type"    # I

    #@0
    .prologue
    .line 815
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 817
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@c
    move v1, p1

    #@d
    move v2, p2

    #@e
    move v3, p3

    #@f
    move-object v4, p4

    #@10
    move v5, p5

    #@11
    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 814
    :goto_0
    return-void

    #@15
    .line 818
    :catch_0
    move-exception v6

    #@16
    .line 819
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "BluetoothHeadset"

    #@19
    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    goto :goto_0

    #@21
    .line 822
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v0, "BluetoothHeadset"

    #@24
    const-string/jumbo v1, "Proxy not attached to service"

    #@27
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 823
    const-string/jumbo v0, "BluetoothHeadset"

    #@2d
    new-instance v1, Ljava/lang/Throwable;

    #@2f
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    #@32
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    goto :goto_0
.end method

.method public rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    .line 656
    const-string/jumbo v1, "rejectIncomingConnect"

    #@3
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    #@6
    .line 657
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 659
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@c
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 660
    :catch_0
    move-exception v0

    #@12
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadset"

    #@15
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 665
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    #@1d
    return v1

    #@1e
    .line 662
    :cond_0
    const-string/jumbo v1, "BluetoothHeadset"

    #@21
    const-string/jumbo v2, "Proxy not attached to service"

    #@24
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 663
    const-string/jumbo v1, "BluetoothHeadset"

    #@2a
    new-instance v2, Ljava/lang/Throwable;

    #@2c
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@2f
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    goto :goto_0
.end method

.method public sendVendorSpecificResultCode(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 867
    const-string/jumbo v1, "sendVendorSpecificResultCode()"

    #@3
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    #@6
    .line 869
    if-nez p2, :cond_0

    #@8
    .line 870
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v2, "command is null"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 872
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@13
    if-eqz v1, :cond_1

    #@15
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 873
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@1e
    move-result v1

    #@1f
    .line 872
    if-eqz v1, :cond_1

    #@21
    .line 875
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@23
    invoke-interface {v1, p1, p2, p3}, Landroid/bluetooth/IBluetoothHeadset;->sendVendorSpecificResultCode(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    move-result v1

    #@27
    return v1

    #@28
    .line 876
    :catch_0
    move-exception v0

    #@29
    .line 877
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadset"

    #@2c
    new-instance v2, Ljava/lang/Throwable;

    #@2e
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@31
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 880
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@3a
    if-nez v1, :cond_2

    #@3c
    .line 881
    const-string/jumbo v1, "BluetoothHeadset"

    #@3f
    const-string/jumbo v2, "Proxy not attached to service"

    #@42
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 883
    :cond_2
    const/4 v1, 0x0

    #@46
    return v1
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 465
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
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    #@2a
    .line 466
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@2c
    if-eqz v1, :cond_1

    #@2e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_1

    #@34
    .line 467
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@37
    move-result v1

    #@38
    .line 466
    if-eqz v1, :cond_1

    #@3a
    .line 468
    if-eqz p2, :cond_0

    #@3c
    .line 469
    const/16 v1, 0x64

    #@3e
    if-eq p2, v1, :cond_0

    #@40
    .line 470
    return v3

    #@41
    .line 473
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@43
    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    move-result v1

    #@47
    return v1

    #@48
    .line 474
    :catch_0
    move-exception v0

    #@49
    .line 475
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadset"

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
    .line 476
    return v3

    #@59
    .line 479
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@5b
    if-nez v1, :cond_2

    #@5d
    const-string/jumbo v1, "BluetoothHeadset"

    #@60
    const-string/jumbo v2, "Proxy not attached to service"

    #@63
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    .line 480
    :cond_2
    return v3
.end method

.method public startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    .line 768
    const-string/jumbo v1, "startScoUsingVirtualVoiceCall()"

    #@3
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    #@6
    .line 769
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@8
    if-eqz v1, :cond_0

    #@a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 771
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@18
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result v1

    #@1c
    return v1

    #@1d
    .line 772
    :catch_0
    move-exception v0

    #@1e
    .line 773
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadset"

    #@21
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 779
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    #@29
    return v1

    #@2a
    .line 776
    :cond_0
    const-string/jumbo v1, "BluetoothHeadset"

    #@2d
    const-string/jumbo v2, "Proxy not attached to service"

    #@30
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 777
    const-string/jumbo v1, "BluetoothHeadset"

    #@36
    new-instance v2, Ljava/lang/Throwable;

    #@38
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@3b
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    goto :goto_0
.end method

.method public startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    .line 533
    const-string/jumbo v1, "startVoiceRecognition()"

    #@3
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    #@6
    .line 534
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@8
    if-eqz v1, :cond_0

    #@a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 535
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@13
    move-result v1

    #@14
    .line 534
    if-eqz v1, :cond_0

    #@16
    .line 537
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@18
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result v1

    #@1c
    return v1

    #@1d
    .line 538
    :catch_0
    move-exception v0

    #@1e
    .line 539
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadset"

    #@21
    new-instance v2, Ljava/lang/Throwable;

    #@23
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@26
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 542
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@2f
    if-nez v1, :cond_1

    #@31
    const-string/jumbo v1, "BluetoothHeadset"

    #@34
    const-string/jumbo v2, "Proxy not attached to service"

    #@37
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 543
    :cond_1
    const/4 v1, 0x0

    #@3b
    return v1
.end method

.method public stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    .line 791
    const-string/jumbo v1, "stopScoUsingVirtualVoiceCall()"

    #@3
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    #@6
    .line 792
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@8
    if-eqz v1, :cond_0

    #@a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 794
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@18
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result v1

    #@1c
    return v1

    #@1d
    .line 795
    :catch_0
    move-exception v0

    #@1e
    .line 796
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadset"

    #@21
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 802
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    #@29
    return v1

    #@2a
    .line 799
    :cond_0
    const-string/jumbo v1, "BluetoothHeadset"

    #@2d
    const-string/jumbo v2, "Proxy not attached to service"

    #@30
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 800
    const-string/jumbo v1, "BluetoothHeadset"

    #@36
    new-instance v2, Ljava/lang/Throwable;

    #@38
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@3b
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    goto :goto_0
.end method

.method public stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    .line 557
    const-string/jumbo v1, "stopVoiceRecognition()"

    #@3
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    #@6
    .line 558
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@8
    if-eqz v1, :cond_0

    #@a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 559
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@13
    move-result v1

    #@14
    .line 558
    if-eqz v1, :cond_0

    #@16
    .line 561
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@18
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result v1

    #@1c
    return v1

    #@1d
    .line 562
    :catch_0
    move-exception v0

    #@1e
    .line 563
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadset"

    #@21
    new-instance v2, Ljava/lang/Throwable;

    #@23
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@26
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 566
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    #@2f
    if-nez v1, :cond_1

    #@31
    const-string/jumbo v1, "BluetoothHeadset"

    #@34
    const-string/jumbo v2, "Proxy not attached to service"

    #@37
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 567
    :cond_1
    const/4 v1, 0x0

    #@3b
    return v1
.end method
