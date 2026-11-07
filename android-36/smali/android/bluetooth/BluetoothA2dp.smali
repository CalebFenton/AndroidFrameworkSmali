.class public final Landroid/bluetooth/BluetoothA2dp;
.super Ljava/lang/Object;
.source "BluetoothA2dp.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothA2dp$Type;,
        Landroid/bluetooth/BluetoothA2dp$OptionalCodecsPreferenceStatus;,
        Landroid/bluetooth/BluetoothA2dp$OptionalCodecsSupportStatus;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_ACTIVE_DEVICE_CHANGED:Ljava/lang/String; = "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACTION_AVRCP_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.a2dp.profile.action.AVRCP_CONNECTION_STATE_CHANGED"

.field public static final whitelist ACTION_CODEC_CONFIG_CHANGED:Ljava/lang/String; = "android.bluetooth.a2dp.profile.action.CODEC_CONFIG_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

.field public static final whitelist ACTION_PLAYING_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

.field private static final blacklist DBG:Z = true

.field public static final whitelist DYNAMIC_BUFFER_SUPPORT_A2DP_OFFLOAD:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DYNAMIC_BUFFER_SUPPORT_A2DP_SOFTWARE_ENCODING:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DYNAMIC_BUFFER_SUPPORT_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPTIONAL_CODECS_NOT_SUPPORTED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPTIONAL_CODECS_PREF_DISABLED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPTIONAL_CODECS_PREF_ENABLED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPTIONAL_CODECS_PREF_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPTIONAL_CODECS_SUPPORTED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPTIONAL_CODECS_SUPPORT_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATE_NOT_PLAYING:I = 0xb

.field public static final whitelist STATE_PLAYING:I = 0xa

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist VDBG:Z = false


# instance fields
.field private final blacklist mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private blacklist mService:Landroid/bluetooth/IBluetoothA2dp;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 63
    const-class v0, Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p2, p0, Landroid/bluetooth/BluetoothA2dp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 281
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothA2dp;->mAttributionSource:Landroid/content/AttributionSource;

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    .line 283
    return-void
.end method

.method private blacklist enableDisableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "enable"    # Z

    .line 874
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->getService()Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v0

    .line 875
    .local v0, "service":Landroid/bluetooth/IBluetoothA2dp;
    if-nez v0, :cond_1a

    .line 876
    sget-object v1, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    goto :goto_5e

    .line 878
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 880
    if-eqz p2, :cond_2e

    .line 881
    :try_start_28
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothA2dp;->enableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)V

    goto :goto_33

    .line 883
    :cond_2e
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothA2dp;->disableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_33} :catch_34

    .line 887
    :goto_33
    goto :goto_5e

    .line 885
    :catch_34
    move-exception v1

    .line 886
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

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

    .line 889
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5e
    :goto_5e
    return-void
.end method

.method private blacklist getService()Landroid/bluetooth/IBluetoothA2dp;
    .registers 2

    .line 306
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    return-object v0
.end method

.method private blacklist isEnabled()Z
    .registers 3

    .line 1101
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    .line 1102
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 1113
    sget-object v0, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    return-void
.end method

.method private static blacklist verifyDeviceNotNull(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .registers 5
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "methodName"    # Ljava/lang/String;

    .line 1106
    if-eqz p0, :cond_3

    .line 1110
    return-void

    .line 1107
    :cond_3
    sget-object v0, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": device param is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Device cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist close()V
    .registers 2

    .line 288
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(Landroid/bluetooth/BluetoothProfile;)V

    .line 289
    return-void
.end method

.method public greylist connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 340
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

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    .line 341
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->getService()Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v0

    .line 342
    .local v0, "service":Landroid/bluetooth/IBluetoothA2dp;
    if-nez v0, :cond_36

    .line 343
    sget-object v1, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    goto :goto_73

    .line 345
    :cond_36
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 347
    :try_start_42
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_48} :catch_49

    return v1

    .line 348
    :catch_49
    move-exception v1

    .line 349
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

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

    .line 352
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_73
    :goto_73
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist disableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 857
    sget-object v0, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableOptionalCodecs("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const-string v0, "disableOptionalCodecs"

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothA2dp;->verifyDeviceNotNull(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 859
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/bluetooth/BluetoothA2dp;->enableDisableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 860
    return-void
.end method

.method public greylist disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 378
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

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    .line 379
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->getService()Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v0

    .line 380
    .local v0, "service":Landroid/bluetooth/IBluetoothA2dp;
    if-nez v0, :cond_36

    .line 381
    sget-object v1, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    goto :goto_73

    .line 383
    :cond_36
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 385
    :try_start_42
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_48} :catch_49

    return v1

    .line 386
    :catch_49
    move-exception v1

    .line 387
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

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

    .line 390
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_73
    :goto_73
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist enableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 828
    sget-object v0, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableOptionalCodecs("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const-string v0, "enableOptionalCodecs"

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothA2dp;->verifyDeviceNotNull(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 830
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/bluetooth/BluetoothA2dp;->enableDisableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 831
    return-void
.end method

.method public whitelist test-api finalize()V
    .registers 1

    .line 321
    return-void
.end method

.method public greylist getActiveDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 6

    .line 505
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->getService()Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v0

    .line 506
    .local v0, "service":Landroid/bluetooth/IBluetoothA2dp;
    if-nez v0, :cond_1a

    .line 507
    sget-object v1, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    goto :goto_59

    .line 509
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 511
    :try_start_20
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mAttributionSource:Landroid/content/AttributionSource;

    .line 512
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothA2dp;->getActiveDevice(Landroid/content/AttributionSource;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mAttributionSource:Landroid/content/AttributionSource;

    .line 511
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2e} :catch_2f

    return-object v1

    .line 513
    :catch_2f
    move-exception v1

    .line 514
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

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

    .line 517
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_59
    :goto_59
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getAdapter()Landroid/bluetooth/BluetoothAdapter;
    .registers 2

    .line 313
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public whitelist getBufferConstraints()Landroid/bluetooth/BufferConstraints;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1050
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->getService()Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v0

    .line 1051
    .local v0, "service":Landroid/bluetooth/IBluetoothA2dp;
    if-nez v0, :cond_1a

    .line 1052
    sget-object v1, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    goto :goto_51

    .line 1054
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1056
    :try_start_20
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothA2dp;->getBufferConstraints(Landroid/content/AttributionSource;)Landroid/bluetooth/BufferConstraints;

    move-result-object v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_26} :catch_27

    return-object v1

    .line 1057
    :catch_27
    move-exception v1

    .line 1058
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

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

    .line 1061
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_51
    :goto_51
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 749
    sget-object v0, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCodecStatus("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const-string v0, "getCodecStatus"

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothA2dp;->verifyDeviceNotNull(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 751
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->getService()Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v0

    .line 752
    .local v0, "service":Landroid/bluetooth/IBluetoothA2dp;
    if-nez v0, :cond_3d

    .line 753
    sget-object v1, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    goto :goto_7a

    .line 755
    :cond_3d
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 757
    :try_start_49
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v1
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4f} :catch_50

    return-object v1

    .line 758
    :catch_50
    move-exception v1

    .line 759
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

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

    .line 762
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_7a
    :goto_7a
    const/4 v1, 0x0

    return-object v1
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

    .line 399
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->getService()Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v0

    .line 400
    .local v0, "service":Landroid/bluetooth/IBluetoothA2dp;
    if-nez v0, :cond_1a

    .line 401
    sget-object v1, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    goto :goto_57

    .line 403
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 405
    :try_start_20
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mAttributionSource:Landroid/content/AttributionSource;

    .line 406
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothA2dp;->getConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mAttributionSource:Landroid/content/AttributionSource;

    .line 405
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2c} :catch_2d

    return-object v1

    .line 407
    :catch_2d
    move-exception v1

    .line 408
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

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

    .line 411
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_57
    :goto_57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 614
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->getService()Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v0

    .line 615
    .local v0, "service":Landroid/bluetooth/IBluetoothA2dp;
    if-nez v0, :cond_1a

    .line 616
    sget-object v1, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    goto :goto_57

    .line 618
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 620
    :try_start_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothA2dp;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2c} :catch_2d

    return v1

    .line 621
    :catch_2d
    move-exception v1

    .line 622
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

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

    .line 625
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_57
    :goto_57
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 442
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->getService()Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v0

    .line 443
    .local v0, "service":Landroid/bluetooth/IBluetoothA2dp;
    if-nez v0, :cond_1a

    .line 444
    sget-object v1, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    goto :goto_57

    .line 446
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 448
    :try_start_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2c} :catch_2d

    return v1

    .line 449
    :catch_2d
    move-exception v1

    .line 450
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

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
    :cond_57
    :goto_57
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

    .line 420
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->getService()Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v0

    .line 421
    .local v0, "service":Landroid/bluetooth/IBluetoothA2dp;
    if-nez v0, :cond_1a

    .line 422
    sget-object v1, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    goto :goto_57

    .line 424
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 426
    :try_start_20
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mAttributionSource:Landroid/content/AttributionSource;

    .line 427
    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothA2dp;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mAttributionSource:Landroid/content/AttributionSource;

    .line 426
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2c} :catch_2d

    return-object v1

    .line 429
    :catch_2d
    move-exception v1

    .line 430
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

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

    .line 433
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_57
    :goto_57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getDynamicBufferSupport()I
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1018
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->getService()Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v0

    .line 1019
    .local v0, "service":Landroid/bluetooth/IBluetoothA2dp;
    if-nez v0, :cond_1a

    .line 1020
    sget-object v1, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    goto :goto_51

    .line 1022
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1024
    :try_start_20
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothA2dp;->getDynamicBufferSupport(Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_26} :catch_27

    return v1

    .line 1025
    :catch_27
    move-exception v1

    .line 1026
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

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

    .line 1029
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_51
    :goto_51
    const/4 v1, 0x0

    return v1
.end method

.method public greylist-max-p getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 596
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->connectionPolicyToPriority(I)I

    move-result v0

    return v0
.end method

.method public whitelist getSupportedCodecTypes()Ljava/util/Collection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/bluetooth/BluetoothCodecType;",
            ">;"
        }
    .end annotation

    .line 714
    sget-object v0, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    const-string v1, "getSupportedSourceCodecTypes()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->getService()Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v0

    .line 716
    .local v0, "service":Landroid/bluetooth/IBluetoothA2dp;
    if-nez v0, :cond_21

    .line 717
    sget-object v1, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    goto :goto_56

    .line 719
    :cond_21
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 721
    :try_start_27
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothA2dp;->getSupportedCodecTypes()Ljava/util/List;

    move-result-object v1
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2b} :catch_2c

    return-object v1

    .line 722
    :catch_2c
    move-exception v1

    .line 723
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

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

    .line 726
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_56
    :goto_56
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isA2dpPlaying("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    .line 666
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->getService()Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v0

    .line 667
    .local v0, "service":Landroid/bluetooth/IBluetoothA2dp;
    if-nez v0, :cond_36

    .line 668
    sget-object v1, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    goto :goto_73

    .line 670
    :cond_36
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 672
    :try_start_42
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothA2dp;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_48} :catch_49

    return v1

    .line 673
    :catch_49
    move-exception v1

    .line 674
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

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

    .line 677
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_73
    :goto_73
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isOptionalCodecsEnabled("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    .line 944
    const-string v0, "isOptionalCodecsEnabled"

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothA2dp;->verifyDeviceNotNull(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 945
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->getService()Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v0

    .line 946
    .local v0, "service":Landroid/bluetooth/IBluetoothA2dp;
    if-nez v0, :cond_3b

    .line 947
    sget-object v1, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    goto :goto_78

    .line 949
    :cond_3b
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 951
    :try_start_47
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothA2dp;->isOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4d} :catch_4e

    return v1

    .line 952
    :catch_4e
    move-exception v1

    .line 953
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

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

    .line 956
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_78
    :goto_78
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist isOptionalCodecsSupported(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isOptionalCodecsSupported("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    .line 910
    const-string v0, "isOptionalCodecsSupported"

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothA2dp;->verifyDeviceNotNull(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 911
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->getService()Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v0

    .line 912
    .local v0, "service":Landroid/bluetooth/IBluetoothA2dp;
    if-nez v0, :cond_3b

    .line 913
    sget-object v1, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    goto :goto_78

    .line 915
    :cond_3b
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 917
    :try_start_47
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothA2dp;->isOptionalCodecsSupported(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4d} :catch_4e

    return v1

    .line 918
    :catch_4e
    move-exception v1

    .line 919
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

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

    .line 922
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_78
    :goto_78
    const/4 v1, -0x1

    return v1
.end method

.method public blacklist onServiceConnected(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "service"    # Landroid/os/IBinder;

    .line 295
    invoke-static {p1}, Landroid/bluetooth/IBluetoothA2dp$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    .line 296
    return-void
.end method

.method public blacklist onServiceDisconnected()V
    .registers 2

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    .line 303
    return-void
.end method

.method public greylist setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setActiveDevice("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    .line 478
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->getService()Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v0

    .line 479
    .local v0, "service":Landroid/bluetooth/IBluetoothA2dp;
    if-nez v0, :cond_36

    .line 480
    sget-object v1, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    goto :goto_75

    .line 482
    :cond_36
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_75

    if-eqz p1, :cond_44

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 484
    :cond_44
    :try_start_44
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothA2dp;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4a} :catch_4b

    return v1

    .line 485
    :catch_4b
    move-exception v1

    .line 486
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

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

    .line 489
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_75
    :goto_75
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setAvrcpAbsoluteVolume(I)V
    .registers 7
    .param p1, "volume"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 642
    sget-object v0, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    const-string v1, "setAvrcpAbsoluteVolume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->getService()Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v0

    .line 644
    .local v0, "service":Landroid/bluetooth/IBluetoothA2dp;
    if-nez v0, :cond_21

    .line 645
    sget-object v1, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    goto :goto_57

    .line 647
    :cond_21
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 649
    :try_start_27
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothA2dp;->setAvrcpAbsoluteVolume(ILandroid/content/AttributionSource;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2c} :catch_2d

    .line 652
    goto :goto_57

    .line 650
    :catch_2d
    move-exception v1

    .line 651
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

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

    .line 654
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_57
    :goto_57
    return-void
.end method

.method public whitelist setBufferLengthMillis(II)Z
    .registers 9
    .param p1, "codec"    # I
    .param p2, "value"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1082
    const/4 v0, 0x0

    if-gez p2, :cond_1c

    .line 1083
    sget-object v1, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to set audio buffer length to a negative value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    return v0

    .line 1086
    :cond_1c
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->getService()Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v1

    .line 1087
    .local v1, "service":Landroid/bluetooth/IBluetoothA2dp;
    if-nez v1, :cond_36

    .line 1088
    sget-object v2, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    goto :goto_6d

    .line 1090
    :cond_36
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 1092
    :try_start_3c
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, p1, p2, v2}, Landroid/bluetooth/IBluetoothA2dp;->setBufferLengthMillis(IILandroid/content/AttributionSource;)Z

    move-result v0
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_42} :catch_43

    return v0

    .line 1093
    :catch_43
    move-exception v2

    .line 1094
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_6d
    :goto_6d
    return v0
.end method

.method public whitelist setCodecConfigPreference(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecConfig;)V
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "codecConfig"    # Landroid/bluetooth/BluetoothCodecConfig;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 786
    sget-object v0, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCodecConfigPreference("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const-string v0, "setCodecConfigPreference"

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothA2dp;->verifyDeviceNotNull(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 788
    if-eqz p2, :cond_76

    .line 792
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->getService()Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v0

    .line 793
    .local v0, "service":Landroid/bluetooth/IBluetoothA2dp;
    if-nez v0, :cond_3f

    .line 794
    sget-object v1, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    goto :goto_75

    .line 796
    :cond_3f
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_75

    .line 798
    :try_start_45
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothA2dp;->setCodecConfigPreference(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecConfig;Landroid/content/AttributionSource;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4a} :catch_4b

    .line 801
    goto :goto_75

    .line 799
    :catch_4b
    move-exception v1

    .line 800
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

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

    .line 803
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_75
    :goto_75
    return-void

    .line 789
    .end local v0    # "service":Landroid/bluetooth/IBluetoothA2dp;
    :cond_76
    sget-object v0, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    const-string v1, "setCodecConfigPreference: Codec config can\'t be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "codecConfig cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 562
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

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    .line 563
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->getService()Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v0

    .line 564
    .local v0, "service":Landroid/bluetooth/IBluetoothA2dp;
    if-nez v0, :cond_40

    .line 565
    sget-object v1, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    goto :goto_83

    .line 567
    :cond_40
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 568
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_83

    if-eqz p2, :cond_52

    const/16 v1, 0x64

    if-ne p2, v1, :cond_83

    .line 572
    :cond_52
    :try_start_52
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothA2dp;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_58} :catch_59

    return v1

    .line 573
    :catch_59
    move-exception v1

    .line 574
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

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

    .line 577
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_83
    :goto_83
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "value"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOptionalCodecsEnabled("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    .line 979
    const-string v0, "setOptionalCodecsEnabled"

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothA2dp;->verifyDeviceNotNull(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 980
    const/4 v0, -0x1

    if-eq p2, v0, :cond_42

    if-eqz p2, :cond_42

    const/4 v0, 0x1

    if-eq p2, v0, :cond_42

    .line 983
    sget-object v0, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value passed to setOptionalCodecsEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    return-void

    .line 986
    :cond_42
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->getService()Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v0

    .line 987
    .local v0, "service":Landroid/bluetooth/IBluetoothA2dp;
    if-nez v0, :cond_5c

    .line 988
    sget-object v1, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    goto :goto_98

    .line 990
    :cond_5c
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_98

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 992
    :try_start_68
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothA2dp;->setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_6d} :catch_6e

    .line 995
    goto :goto_98

    .line 993
    :catch_6e
    move-exception v1

    .line 994
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothA2dp;->TAG:Ljava/lang/String;

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

    .line 997
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_98
    :goto_98
    return-void
.end method

.method public blacklist setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPriority("

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

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    .line 538
    invoke-static {p2}, Landroid/bluetooth/BluetoothAdapter;->priorityToConnectionPolicy(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothA2dp;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    return v0
.end method

.method public blacklist shouldSendVolumeKeys(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 689
    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dp;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 690
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 691
    .local v0, "uuids":[Landroid/os/ParcelUuid;
    if-nez v0, :cond_14

    return v1

    .line 693
    :cond_14
    array-length v2, v0

    move v3, v1

    :goto_16
    if-ge v3, v2, :cond_27

    aget-object v4, v0, v3

    .line 694
    .local v4, "uuid":Landroid/os/ParcelUuid;
    sget-object v5, Landroid/bluetooth/BluetoothUuid;->AVRCP_TARGET:Landroid/os/ParcelUuid;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 695
    const/4 v1, 0x1

    return v1

    .line 693
    .end local v4    # "uuid":Landroid/os/ParcelUuid;
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 699
    .end local v0    # "uuids":[Landroid/os/ParcelUuid;
    :cond_27
    return v1
.end method
