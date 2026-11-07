.class public final Landroid/bluetooth/BluetoothHeadset;
.super Ljava/lang/Object;
.source "BluetoothHeadset.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothHeadset$DisconnectAudioReturnValues;,
        Landroid/bluetooth/BluetoothHeadset$ConnectAudioReturnValues;,
        Landroid/bluetooth/BluetoothHeadset$GetAudioRouteAllowedReturnValues;,
        Landroid/bluetooth/BluetoothHeadset$SetAudioRouteAllowedReturnValues;,
        Landroid/bluetooth/BluetoothHeadset$GetAudioStateReturnValues;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_ACTIVE_DEVICE_CHANGED:Ljava/lang/String; = "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_AUDIO_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

.field public static final whitelist ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

.field public static final blacklist ACTION_HF_INDICATORS_VALUE_CHANGED:Ljava/lang/String; = "android.bluetooth.headset.action.HF_INDICATORS_VALUE_CHANGED"

.field public static final whitelist ACTION_VENDOR_SPECIFIC_HEADSET_EVENT:Ljava/lang/String; = "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT"

.field public static final whitelist AT_CMD_TYPE_ACTION:I = 0x4

.field public static final whitelist AT_CMD_TYPE_BASIC:I = 0x3

.field public static final whitelist AT_CMD_TYPE_READ:I = 0x0

.field public static final whitelist AT_CMD_TYPE_SET:I = 0x2

.field public static final whitelist AT_CMD_TYPE_TEST:I = 0x1

.field private static final blacklist DBG:Z

.field public static final blacklist EXTRA_HF_INDICATORS_IND_ID:Ljava/lang/String; = "android.bluetooth.headset.extra.HF_INDICATORS_IND_ID"

.field public static final blacklist EXTRA_HF_INDICATORS_IND_VALUE:Ljava/lang/String; = "android.bluetooth.headset.extra.HF_INDICATORS_IND_VALUE"

.field public static final whitelist EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_ARGS:Ljava/lang/String; = "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_ARGS"

.field public static final whitelist EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_CMD:Ljava/lang/String; = "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD"

.field public static final whitelist EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_CMD_TYPE:Ljava/lang/String; = "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD_TYPE"

.field public static final whitelist STATE_AUDIO_CONNECTED:I = 0xc

.field public static final whitelist STATE_AUDIO_CONNECTING:I = 0xb

.field public static final whitelist STATE_AUDIO_DISCONNECTED:I = 0xa

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist VDBG:Z = false

.field public static final whitelist VENDOR_RESULT_CODE_COMMAND_ANDROID:Ljava/lang/String; = "+ANDROID"

.field public static final blacklist VENDOR_SPECIFIC_HEADSET_EVENT_CGMI:Ljava/lang/String; = "+CGMI"

.field public static final blacklist VENDOR_SPECIFIC_HEADSET_EVENT_CGMM:Ljava/lang/String; = "+CGMM"

.field public static final blacklist VENDOR_SPECIFIC_HEADSET_EVENT_CGMR:Ljava/lang/String; = "+CGMR"

.field public static final blacklist VENDOR_SPECIFIC_HEADSET_EVENT_CGSN:Ljava/lang/String; = "+CGSN"

.field public static final whitelist VENDOR_SPECIFIC_HEADSET_EVENT_COMPANY_ID_CATEGORY:Ljava/lang/String; = "android.bluetooth.headset.intent.category.companyid"

.field public static final blacklist VENDOR_SPECIFIC_HEADSET_EVENT_IPHONEACCEV:Ljava/lang/String; = "+IPHONEACCEV"

.field public static final blacklist VENDOR_SPECIFIC_HEADSET_EVENT_IPHONEACCEV_BATTERY_LEVEL:I = 0x1

.field public static final blacklist VENDOR_SPECIFIC_HEADSET_EVENT_XAPL:Ljava/lang/String; = "+XAPL"

.field public static final blacklist VENDOR_SPECIFIC_HEADSET_EVENT_XEVENT:Ljava/lang/String; = "+XEVENT"

.field public static final blacklist VENDOR_SPECIFIC_HEADSET_EVENT_XEVENT_BATTERY_LEVEL:Ljava/lang/String; = "BATTERY"


# instance fields
.field private final blacklist mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private blacklist mService:Landroid/bluetooth/IBluetoothHeadset;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 67
    const-class v0, Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    .line 69
    sget-object v0, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object p2, p0, Landroid/bluetooth/BluetoothHeadset;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 368
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mAttributionSource:Landroid/content/AttributionSource;

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    .line 370
    return-void
.end method

.method private blacklist getService()Landroid/bluetooth/IBluetoothHeadset;
    .registers 2

    .line 399
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    return-object v0
.end method

.method private blacklist isDisabled()Z
    .registers 3

    .line 1282
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private greylist isEnabled()Z
    .registers 3

    .line 1278
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 1286
    sget-object v0, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    return-void
.end method


# virtual methods
.method public greylist close()V
    .registers 2

    .line 381
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(Landroid/bluetooth/BluetoothProfile;)V

    .line 382
    return-void
.end method

.method public whitelist connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 441
    sget-boolean v0, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    .line 442
    :cond_20
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->getService()Landroid/bluetooth/IBluetoothHeadset;

    move-result-object v0

    .line 443
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadset;
    if-nez v0, :cond_3e

    .line 444
    sget-object v1, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_7b

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    goto :goto_7b

    .line 446
    :cond_3e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 448
    :try_start_4a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHeadset;->connect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_50} :catch_51

    return v1

    .line 449
    :catch_51
    move-exception v1

    .line 450
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_7b
    :goto_7b
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist connectAudio()I
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 987
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->getService()Landroid/bluetooth/IBluetoothHeadset;

    move-result-object v0

    .line 988
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadset;
    if-nez v0, :cond_20

    .line 989
    sget-object v1, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_1d

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    .line 991
    :cond_1d
    const/16 v1, 0x9

    return v1

    .line 992
    :cond_20
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 994
    :try_start_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothHeadset;->connectAudio(Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2c} :catch_2d

    return v1

    .line 995
    :catch_2d
    move-exception v1

    .line 996
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_57
    sget-object v1, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    const-string v2, "connectAudio: Bluetooth disabled, but profile service still bound"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const v1, 0x7fffffff

    return v1
.end method

.method public whitelist disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 479
    sget-boolean v0, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    .line 480
    :cond_20
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->getService()Landroid/bluetooth/IBluetoothHeadset;

    move-result-object v0

    .line 481
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadset;
    if-nez v0, :cond_3e

    .line 482
    sget-object v1, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_7b

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    goto :goto_7b

    .line 484
    :cond_3e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 486
    :try_start_4a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHeadset;->disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_50} :catch_51

    return v1

    .line 487
    :catch_51
    move-exception v1

    .line 488
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_7b
    :goto_7b
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist disconnectAudio()I
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1037
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->getService()Landroid/bluetooth/IBluetoothHeadset;

    move-result-object v0

    .line 1038
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadset;
    if-nez v0, :cond_20

    .line 1039
    sget-object v1, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_1d

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    .line 1041
    :cond_1d
    const/16 v1, 0x9

    return v1

    .line 1042
    :cond_20
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1044
    :try_start_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothHeadset;->disconnectAudio(Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2c} :catch_2d

    return v1

    .line 1045
    :catch_2d
    move-exception v1

    .line 1046
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_57
    sget-object v1, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    const-string v2, "disconnectAudio: Bluetooth disabled, but profile service still bound"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    const v1, 0x7fffffff

    return v1
.end method

.method protected whitelist test-api finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 415
    return-void
.end method

.method public greylist getActiveDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 6

    .line 1230
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->getService()Landroid/bluetooth/IBluetoothHeadset;

    move-result-object v0

    .line 1231
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadset;
    if-nez v0, :cond_1e

    .line 1232
    sget-object v1, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_5d

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    goto :goto_5d

    .line 1234
    :cond_1e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 1236
    :try_start_24
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mAttributionSource:Landroid/content/AttributionSource;

    .line 1237
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothHeadset;->getActiveDevice(Landroid/content/AttributionSource;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadset;->mAttributionSource:Landroid/content/AttributionSource;

    .line 1236
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_32} :catch_33

    return-object v1

    .line 1238
    :catch_33
    move-exception v1

    .line 1239
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5d
    :goto_5d
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getAdapter()Landroid/bluetooth/BluetoothAdapter;
    .registers 2

    .line 406
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public whitelist getAudioRouteAllowed()I
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 904
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->getService()Landroid/bluetooth/IBluetoothHeadset;

    move-result-object v0

    .line 905
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadset;
    if-nez v0, :cond_20

    .line 906
    sget-object v1, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_1d

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    .line 908
    :cond_1d
    const/16 v1, 0x9

    return v1

    .line 909
    :cond_20
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 911
    :try_start_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothHeadset;->getAudioRouteAllowed(Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2c} :catch_34

    if-eqz v1, :cond_31

    .line 912
    const/16 v1, 0x190

    goto :goto_33

    .line 913
    :cond_31
    const/16 v1, 0x191

    .line 911
    :goto_33
    return v1

    .line 914
    :catch_34
    move-exception v1

    .line 915
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5e
    sget-object v1, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    const-string v2, "getAudioRouteAllowed: Bluetooth disabled, but profile service still bound"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const v1, 0x7fffffff

    return v1
.end method

.method public whitelist getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 814
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->getService()Landroid/bluetooth/IBluetoothHeadset;

    move-result-object v0

    .line 816
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadset;
    if-nez v0, :cond_21

    .line 817
    sget-object v1, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_58

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    goto :goto_58

    .line 819
    :cond_21
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_58

    .line 821
    :try_start_27
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2d} :catch_2e

    return v1

    .line 822
    :catch_2e
    move-exception v1

    .line 823
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_58
    :goto_58
    const/16 v1, 0xa

    return v1
.end method

.method public whitelist getConnectedDevices()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 500
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->getService()Landroid/bluetooth/IBluetoothHeadset;

    move-result-object v0

    .line 501
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadset;
    if-nez v0, :cond_1e

    .line 502
    sget-object v1, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_5b

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    goto :goto_5b

    .line 504
    :cond_1e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 506
    :try_start_24
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mAttributionSource:Landroid/content/AttributionSource;

    .line 507
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothHeadset;->getConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadset;->mAttributionSource:Landroid/content/AttributionSource;

    .line 506
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_30} :catch_31

    return-object v1

    .line 508
    :catch_31
    move-exception v1

    .line 509
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5b
    :goto_5b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 631
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->getService()Landroid/bluetooth/IBluetoothHeadset;

    move-result-object v0

    .line 632
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadset;
    if-nez v0, :cond_1e

    .line 633
    sget-object v1, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_5b

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    goto :goto_5b

    .line 635
    :cond_1e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 637
    :try_start_2a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHeadset;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_30} :catch_31

    return v1

    .line 638
    :catch_31
    move-exception v1

    .line 639
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5b
    :goto_5b
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 543
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->getService()Landroid/bluetooth/IBluetoothHeadset;

    move-result-object v0

    .line 544
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadset;
    if-nez v0, :cond_1e

    .line 545
    sget-object v1, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_5b

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    goto :goto_5b

    .line 547
    :cond_1e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 549
    :try_start_2a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_30} :catch_31

    return v1

    .line 550
    :catch_31
    move-exception v1

    .line 551
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5b
    :goto_5b
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 7
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 521
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->getService()Landroid/bluetooth/IBluetoothHeadset;

    move-result-object v0

    .line 522
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadset;
    if-nez v0, :cond_1e

    .line 523
    sget-object v1, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_5b

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    goto :goto_5b

    .line 525
    :cond_1e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 527
    :try_start_24
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mAttributionSource:Landroid/content/AttributionSource;

    .line 528
    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHeadset;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadset;->mAttributionSource:Landroid/content/AttributionSource;

    .line 527
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_30} :catch_31

    return-object v1

    .line 530
    :catch_31
    move-exception v1

    .line 531
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5b
    :goto_5b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-r getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 613
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->connectionPolicyToPriority(I)I

    move-result v0

    return v0
.end method

.method public whitelist isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 772
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->getService()Landroid/bluetooth/IBluetoothHeadset;

    move-result-object v0

    .line 773
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadset;
    if-nez v0, :cond_1e

    .line 774
    sget-object v1, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_5b

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    goto :goto_5b

    .line 776
    :cond_1e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 778
    :try_start_2a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_30} :catch_31

    return v1

    .line 779
    :catch_31
    move-exception v1

    .line 780
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5b
    :goto_5b
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isInbandRingingEnabled()Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1261
    sget-boolean v0, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "isInbandRingingEnabled()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    .line 1262
    :cond_9
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->getService()Landroid/bluetooth/IBluetoothHeadset;

    move-result-object v0

    .line 1263
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadset;
    if-nez v0, :cond_27

    .line 1264
    sget-object v1, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_5e

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    goto :goto_5e

    .line 1266
    :cond_27
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 1268
    :try_start_2d
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothHeadset;->isInbandRingingEnabled(Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_33} :catch_34

    return v1

    .line 1269
    :catch_34
    move-exception v1

    .line 1270
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5e
    :goto_5e
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isNoiseReductionSupported(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 655
    sget-boolean v0, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "isNoiseReductionSupported()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    .line 656
    :cond_9
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->getService()Landroid/bluetooth/IBluetoothHeadset;

    move-result-object v0

    .line 657
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadset;
    if-nez v0, :cond_27

    .line 658
    sget-object v1, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_64

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    goto :goto_64

    .line 660
    :cond_27
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 662
    :try_start_33
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHeadset;->isNoiseReductionSupported(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_39} :catch_3a

    return v1

    .line 663
    :catch_3a
    move-exception v1

    .line 664
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_64
    :goto_64
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isVoiceRecognitionSupported(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 680
    sget-boolean v0, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "isVoiceRecognitionSupported()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    .line 681
    :cond_9
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->getService()Landroid/bluetooth/IBluetoothHeadset;

    move-result-object v0

    .line 682
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadset;
    if-nez v0, :cond_27

    .line 683
    sget-object v1, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_64

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    goto :goto_64

    .line 685
    :cond_27
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 687
    :try_start_33
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHeadset;->isVoiceRecognitionSupported(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_39} :catch_3a

    return v1

    .line 688
    :catch_3a
    move-exception v1

    .line 689
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_64
    :goto_64
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist onServiceConnected(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "service"    # Landroid/os/IBinder;

    .line 388
    invoke-static {p1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadset;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    .line 389
    return-void
.end method

.method public blacklist onServiceDisconnected()V
    .registers 2

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    .line 396
    return-void
.end method

.method public whitelist sendVendorSpecificResultCode(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;

    .line 1154
    sget-boolean v0, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v0, :cond_9

    .line 1155
    const-string v0, "sendVendorSpecificResultCode()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    .line 1157
    :cond_9
    if-eqz p2, :cond_68

    .line 1160
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->getService()Landroid/bluetooth/IBluetoothHeadset;

    move-result-object v0

    .line 1161
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadset;
    if-nez v0, :cond_29

    .line 1162
    sget-object v1, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_66

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    goto :goto_66

    .line 1164
    :cond_29
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 1166
    :try_start_35
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/bluetooth/IBluetoothHeadset;->sendVendorSpecificResultCode(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3b} :catch_3c

    return v1

    .line 1168
    :catch_3c
    move-exception v1

    .line 1169
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_66
    :goto_66
    const/4 v1, 0x0

    return v1

    .line 1158
    .end local v0    # "service":Landroid/bluetooth/IBluetoothHeadset;
    :cond_68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "command is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1200
    sget-boolean v0, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v0, :cond_1c

    .line 1201
    sget-object v0, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActiveDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    :cond_1c
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->getService()Landroid/bluetooth/IBluetoothHeadset;

    move-result-object v0

    .line 1204
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadset;
    if-nez v0, :cond_3a

    .line 1205
    sget-object v1, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_79

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    goto :goto_79

    .line 1207
    :cond_3a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_79

    if-eqz p1, :cond_48

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 1209
    :cond_48
    :try_start_48
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHeadset;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4e} :catch_4f

    return v1

    .line 1210
    :catch_4f
    move-exception v1

    .line 1211
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_79
    :goto_79
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setAudioRouteAllowed(Z)I
    .registers 7
    .param p1, "allowed"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 871
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->getService()Landroid/bluetooth/IBluetoothHeadset;

    move-result-object v0

    .line 872
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadset;
    if-nez v0, :cond_20

    .line 873
    sget-object v1, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_1d

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    .line 875
    :cond_1d
    const/16 v1, 0x9

    return v1

    .line 876
    :cond_20
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 878
    :try_start_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHeadset;->setAudioRouteAllowed(ZLandroid/content/AttributionSource;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2d

    .line 879
    const/4 v1, 0x0

    return v1

    .line 880
    :catch_2d
    move-exception v1

    .line 881
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_57
    sget-object v1, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    const-string v2, "setAudioRouteAllowed: Bluetooth disabled, but profile service still bound"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    const v1, 0x7fffffff

    return v1
.end method

.method public whitelist setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 579
    sget-boolean v0, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConnectionPolicy("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    .line 580
    :cond_2a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->getService()Landroid/bluetooth/IBluetoothHeadset;

    move-result-object v0

    .line 581
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadset;
    if-nez v0, :cond_48

    .line 582
    sget-object v1, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_8b

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    goto :goto_8b

    .line 584
    :cond_48
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 585
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_8b

    if-eqz p2, :cond_5a

    const/16 v1, 0x64

    if-ne p2, v1, :cond_8b

    .line 589
    :cond_5a
    :try_start_5a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothHeadset;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_60} :catch_61

    return v1

    .line 590
    :catch_61
    move-exception v1

    .line 591
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_8b
    :goto_8b
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setForceScoAudio(Z)V
    .registers 7
    .param p1, "forced"    # Z

    .line 934
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->getService()Landroid/bluetooth/IBluetoothHeadset;

    move-result-object v0

    .line 935
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadset;
    if-nez v0, :cond_1e

    .line 936
    sget-object v1, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_54

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    goto :goto_54

    .line 938
    :cond_1e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 940
    :try_start_24
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHeadset;->setForceScoAudio(ZLandroid/content/AttributionSource;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_2a

    .line 943
    goto :goto_54

    .line 941
    :catch_2a
    move-exception v1

    .line 942
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_54
    :goto_54
    return-void
.end method

.method public whitelist startScoUsingVirtualVoiceCall()Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1082
    sget-boolean v0, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "startScoUsingVirtualVoiceCall()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    .line 1083
    :cond_9
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->getService()Landroid/bluetooth/IBluetoothHeadset;

    move-result-object v0

    .line 1084
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadset;
    if-nez v0, :cond_27

    .line 1085
    sget-object v1, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_5e

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    goto :goto_5e

    .line 1087
    :cond_27
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 1089
    :try_start_2d
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothHeadset;->startScoUsingVirtualVoiceCall(Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_33} :catch_34

    return v1

    .line 1090
    :catch_34
    move-exception v1

    .line 1091
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5e
    :goto_5e
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 716
    sget-boolean v0, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "startVoiceRecognition()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    .line 717
    :cond_9
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->getService()Landroid/bluetooth/IBluetoothHeadset;

    move-result-object v0

    .line 718
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadset;
    if-nez v0, :cond_27

    .line 719
    sget-object v1, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_64

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    goto :goto_64

    .line 721
    :cond_27
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 723
    :try_start_33
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_39} :catch_3a

    return v1

    .line 724
    :catch_3a
    move-exception v1

    .line 725
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_64
    :goto_64
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist stopScoUsingVirtualVoiceCall()Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1118
    sget-boolean v0, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "stopScoUsingVirtualVoiceCall()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    .line 1119
    :cond_9
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->getService()Landroid/bluetooth/IBluetoothHeadset;

    move-result-object v0

    .line 1120
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadset;
    if-nez v0, :cond_27

    .line 1121
    sget-object v1, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_5e

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    goto :goto_5e

    .line 1123
    :cond_27
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 1125
    :try_start_2d
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothHeadset;->stopScoUsingVirtualVoiceCall(Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_33} :catch_34

    return v1

    .line 1126
    :catch_34
    move-exception v1

    .line 1127
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5e
    :goto_5e
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 746
    sget-boolean v0, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "stopVoiceRecognition()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    .line 747
    :cond_9
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->getService()Landroid/bluetooth/IBluetoothHeadset;

    move-result-object v0

    .line 748
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadset;
    if-nez v0, :cond_27

    .line 749
    sget-object v1, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    sget-boolean v1, Landroid/bluetooth/BluetoothHeadset;->DBG:Z

    if-eqz v1, :cond_64

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->log(Ljava/lang/String;)V

    goto :goto_64

    .line 751
    :cond_27
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadset;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 753
    :try_start_33
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_39} :catch_3a

    return v1

    .line 754
    :catch_3a
    move-exception v1

    .line 755
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadset;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_64
    :goto_64
    const/4 v1, 0x0

    return v1
.end method
