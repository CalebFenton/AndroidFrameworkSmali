.class public final Landroid/bluetooth/BluetoothLeAudio;
.super Ljava/lang/Object;
.source "BluetoothLeAudio.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeAudio$LeAudioNotifyCallback;,
        Landroid/bluetooth/BluetoothLeAudio$AudioLocation;,
        Landroid/bluetooth/BluetoothLeAudio$Callback;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_LE_AUDIO_ACTIVE_DEVICE_CHANGED:Ljava/lang/String; = "android.bluetooth.action.LE_AUDIO_ACTIVE_DEVICE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_LE_AUDIO_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.action.LE_AUDIO_CONNECTION_STATE_CHANGED"

.field public static final whitelist AUDIO_LOCATION_BACK_CENTER:I = 0x100
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_BACK_LEFT:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_BACK_RIGHT:I = 0x20
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_BOTTOM_FRONT_CENTER:I = 0x200000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_BOTTOM_FRONT_LEFT:I = 0x400000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_BOTTOM_FRONT_RIGHT:I = 0x800000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_FRONT_CENTER:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_FRONT_LEFT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_FRONT_LEFT_OF_CENTER:I = 0x40
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_FRONT_LEFT_WIDE:I = 0x1000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_FRONT_RIGHT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_FRONT_RIGHT_OF_CENTER:I = 0x80
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_FRONT_RIGHT_WIDE:I = 0x2000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_INVALID:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_LEFT_SURROUND:I = 0x4000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_LOW_FREQ_EFFECTS_ONE:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_LOW_FREQ_EFFECTS_TWO:I = 0x200
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_MONO:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_RIGHT_SURROUND:I = 0x8000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_SIDE_LEFT:I = 0x400
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_SIDE_RIGHT:I = 0x800
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_TOP_BACK_CENTER:I = 0x100000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_TOP_BACK_LEFT:I = 0x10000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_TOP_BACK_RIGHT:I = 0x20000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_TOP_CENTER:I = 0x8000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_TOP_FRONT_CENTER:I = 0x4000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_TOP_FRONT_LEFT:I = 0x1000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_TOP_FRONT_RIGHT:I = 0x2000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_TOP_SIDE_LEFT:I = 0x40000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_TOP_SIDE_RIGHT:I = 0x80000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_LOCATION_UNKNOWN:I = -0x80000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist CONTEXTS_ALL:I = 0xfff

.field public static final blacklist CONTEXT_TYPE_ALERTS:I = 0x400

.field public static final blacklist CONTEXT_TYPE_CONVERSATIONAL:I = 0x2

.field public static final blacklist CONTEXT_TYPE_EMERGENCY_ALARM:I = 0x800

.field public static final blacklist CONTEXT_TYPE_GAME:I = 0x8

.field public static final blacklist CONTEXT_TYPE_INSTRUCTIONAL:I = 0x10

.field public static final blacklist CONTEXT_TYPE_INVALID:I = 0x0

.field public static final blacklist CONTEXT_TYPE_LIVE:I = 0x40

.field public static final blacklist CONTEXT_TYPE_MEDIA:I = 0x4

.field public static final blacklist CONTEXT_TYPE_NOTIFICATIONS:I = 0x100

.field public static final blacklist CONTEXT_TYPE_RINGTONE:I = 0x200

.field public static final blacklist CONTEXT_TYPE_SOUND_EFFECTS:I = 0x80

.field public static final blacklist CONTEXT_TYPE_UNSPECIFIED:I = 0x1

.field public static final blacklist CONTEXT_TYPE_VOICE_ASSISTANTS:I = 0x20

.field private static final blacklist DBG:Z

.field public static final blacklist EXTRA_LE_AUDIO_AVAILABLE_CONTEXTS:Ljava/lang/String; = "android.bluetooth.extra.LE_AUDIO_AVAILABLE_CONTEXTS"

.field public static final blacklist EXTRA_LE_AUDIO_DIRECTION:Ljava/lang/String; = "android.bluetooth.extra.LE_AUDIO_DIRECTION"

.field public static final whitelist EXTRA_LE_AUDIO_GROUP_ID:Ljava/lang/String; = "android.bluetooth.extra.LE_AUDIO_GROUP_ID"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_LE_AUDIO_SINK_LOCATION:Ljava/lang/String; = "android.bluetooth.extra.LE_AUDIO_SINK_LOCATION"

.field public static final blacklist EXTRA_LE_AUDIO_SOURCE_LOCATION:Ljava/lang/String; = "android.bluetooth.extra.LE_AUDIO_SOURCE_LOCATION"

.field public static final whitelist GROUP_ID_INVALID:I = -0x1

.field public static final blacklist GROUP_STATUS_ACTIVE:I = 0x1

.field public static final blacklist GROUP_STATUS_INACTIVE:I = 0x0

.field public static final whitelist GROUP_STREAM_STATUS_IDLE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist GROUP_STREAM_STATUS_STREAMING:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field static final blacklist LEAUDIO_MONO_LOCATION_ERRATA:J = 0x13b856baL

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist VDBG:Z = false


# instance fields
.field private final blacklist mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mCallback:Landroid/bluetooth/IBluetoothLeAudioCallback;

.field private final blacklist mCallbackWrapper:Landroid/bluetooth/CallbackWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/bluetooth/CallbackWrapper<",
            "Landroid/bluetooth/BluetoothLeAudio$Callback;",
            "Landroid/bluetooth/IBluetoothLeAudio;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mService:Landroid/bluetooth/IBluetoothLeAudio;


# direct methods
.method public static synthetic blacklist $r8$lambda$JSMYALT4cZzppJlA6qcMP17Z8A4(Landroid/bluetooth/BluetoothLeAudio;Landroid/bluetooth/IBluetoothLeAudio;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothLeAudio;->lambda$new$1(Landroid/bluetooth/IBluetoothLeAudio;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tI15x1FC2rIKaZCxBttDDtW_6g4(Landroid/bluetooth/BluetoothLeAudio;Landroid/bluetooth/IBluetoothLeAudio;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothLeAudio;->lambda$new$0(Landroid/bluetooth/IBluetoothLeAudio;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothLeAudio;)Landroid/content/AttributionSource;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbackWrapper(Landroid/bluetooth/BluetoothLeAudio;)Landroid/bluetooth/CallbackWrapper;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothLeAudio;->mCallbackWrapper:Landroid/bluetooth/CallbackWrapper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDBG()Z
    .registers 1

    sget-boolean v0, Landroid/bluetooth/BluetoothLeAudio;->DBG:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 72
    const-class v0, Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

    .line 74
    sget-object v0, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/bluetooth/BluetoothLeAudio;->DBG:Z

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Landroid/bluetooth/BluetoothLeAudio$LeAudioNotifyCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/bluetooth/BluetoothLeAudio$LeAudioNotifyCallback;-><init>(Landroid/bluetooth/BluetoothLeAudio;Landroid/bluetooth/BluetoothLeAudio-IA;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudio;->mCallback:Landroid/bluetooth/IBluetoothLeAudioCallback;

    .line 744
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudio;->mContext:Landroid/content/Context;

    .line 745
    iput-object p2, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 746
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    .line 747
    iput-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mService:Landroid/bluetooth/IBluetoothLeAudio;

    .line 749
    new-instance v0, Landroid/bluetooth/BluetoothLeAudio$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothLeAudio$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothLeAudio;)V

    .line 757
    .local v0, "registerConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/bluetooth/IBluetoothLeAudio;>;"
    new-instance v1, Landroid/bluetooth/BluetoothLeAudio$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothLeAudio$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothLeAudio;)V

    .line 766
    .local v1, "unregisterConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/bluetooth/IBluetoothLeAudio;>;"
    new-instance v2, Landroid/bluetooth/CallbackWrapper;

    invoke-direct {v2, v0, v1}, Landroid/bluetooth/CallbackWrapper;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothLeAudio;->mCallbackWrapper:Landroid/bluetooth/CallbackWrapper;

    .line 767
    new-instance v2, Landroid/util/CloseGuard;

    invoke-direct {v2}, Landroid/util/CloseGuard;-><init>()V

    iput-object v2, p0, Landroid/bluetooth/BluetoothLeAudio;->mCloseGuard:Landroid/util/CloseGuard;

    .line 768
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeAudio;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v3, "close"

    invoke-virtual {v2, v3}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 769
    return-void
.end method

.method private blacklist getService()Landroid/bluetooth/IBluetoothLeAudio;
    .registers 2

    .line 794
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio;->mService:Landroid/bluetooth/IBluetoothLeAudio;

    return-object v0
.end method

.method private static blacklist isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 3
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1338
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1340
    :cond_4
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    return v0

    .line 1341
    :cond_10
    return v0
.end method

.method private synthetic blacklist lambda$new$0(Landroid/bluetooth/IBluetoothLeAudio;)V
    .registers 6
    .param p1, "service"    # Landroid/bluetooth/IBluetoothLeAudio;

    .line 752
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio;->mCallback:Landroid/bluetooth/IBluetoothLeAudioCallback;

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p1, v0, v1}, Landroid/bluetooth/IBluetoothLeAudio;->registerCallback(Landroid/bluetooth/IBluetoothLeAudioCallback;Landroid/content/AttributionSource;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 755
    goto :goto_32

    .line 753
    :catch_8
    move-exception v0

    .line 754
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_32
    return-void
.end method

.method private synthetic blacklist lambda$new$1(Landroid/bluetooth/IBluetoothLeAudio;)V
    .registers 6
    .param p1, "service"    # Landroid/bluetooth/IBluetoothLeAudio;

    .line 760
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio;->mCallback:Landroid/bluetooth/IBluetoothLeAudioCallback;

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p1, v0, v1}, Landroid/bluetooth/IBluetoothLeAudio;->unregisterCallback(Landroid/bluetooth/IBluetoothLeAudioCallback;Landroid/content/AttributionSource;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 763
    goto :goto_32

    .line 761
    :catch_8
    move-exception v0

    .line 762
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_32
    return-void
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 1345
    sget-object v0, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 774
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(Landroid/bluetooth/BluetoothProfile;)V

    .line 775
    return-void
.end method

.method public blacklist connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 828
    sget-boolean v0, Landroid/bluetooth/BluetoothLeAudio;->DBG:Z

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

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    .line 829
    :cond_20
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 830
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-nez v0, :cond_3e

    .line 831
    sget-object v1, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    sget-boolean v1, Landroid/bluetooth/BluetoothLeAudio;->DBG:Z

    if-eqz v1, :cond_7d

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_7d

    .line 833
    :cond_3e
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-static {p1}, Landroid/bluetooth/BluetoothLeAudio;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 835
    :try_start_4c
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothLeAudio;->connect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_52} :catch_53

    return v1

    .line 836
    :catch_53
    move-exception v1

    .line 837
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

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

    .line 840
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_7d
    :goto_7d
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 864
    sget-boolean v0, Landroid/bluetooth/BluetoothLeAudio;->DBG:Z

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

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    .line 865
    :cond_20
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 866
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-nez v0, :cond_3e

    .line 867
    sget-object v1, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    sget-boolean v1, Landroid/bluetooth/BluetoothLeAudio;->DBG:Z

    if-eqz v1, :cond_7d

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_7d

    .line 869
    :cond_3e
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-static {p1}, Landroid/bluetooth/BluetoothLeAudio;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 871
    :try_start_4c
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothLeAudio;->disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_52} :catch_53

    return v1

    .line 872
    :catch_53
    move-exception v1

    .line 873
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

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

    .line 876
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_7d
    :goto_7d
    const/4 v1, 0x0

    return v1
.end method

.method protected whitelist test-api finalize()V
    .registers 2

    .line 807
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_9

    .line 808
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 810
    :cond_9
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeAudio;->close()V

    .line 811
    return-void
.end method

.method public blacklist getActiveDevices()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 1089
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 1090
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-nez v0, :cond_1e

    .line 1091
    sget-object v1, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    sget-boolean v1, Landroid/bluetooth/BluetoothLeAudio;->DBG:Z

    if-eqz v1, :cond_5d

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_5d

    .line 1093
    :cond_1e
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 1095
    :try_start_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    .line 1096
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothLeAudio;->getActiveDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    .line 1095
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_32} :catch_33

    return-object v1

    .line 1097
    :catch_33
    move-exception v1

    .line 1098
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

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

    .line 1101
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5d
    :goto_5d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getAdapter()Landroid/bluetooth/BluetoothAdapter;
    .registers 2

    .line 801
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public whitelist getAudioLocation(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1222
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 1223
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-nez v0, :cond_1e

    .line 1224
    sget-object v1, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    sget-boolean v1, Landroid/bluetooth/BluetoothLeAudio;->DBG:Z

    if-eqz v1, :cond_5d

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_5d

    .line 1226
    :cond_1e
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-static {p1}, Landroid/bluetooth/BluetoothLeAudio;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 1228
    :try_start_2c
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothLeAudio;->getAudioLocation(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_32} :catch_33

    return v1

    .line 1229
    :catch_33
    move-exception v1

    .line 1230
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

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

    .line 1234
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5d
    :goto_5d
    invoke-static {}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/Flags;->leaudioMonoLocationErrataApi()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 1235
    const-wide/32 v1, 0x13b856ba

    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 1236
    const/high16 v1, -0x80000000

    return v1

    .line 1239
    :cond_6f
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getBroadcastToUnicastFallbackGroup()I
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1471
    sget-boolean v0, Landroid/bluetooth/BluetoothLeAudio;->DBG:Z

    if-eqz v0, :cond_b

    sget-object v0, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

    const-string v1, "getBroadcastToUnicastFallbackGroup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    :cond_b
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 1475
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-nez v0, :cond_29

    .line 1476
    sget-object v1, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    sget-boolean v1, Landroid/bluetooth/BluetoothLeAudio;->DBG:Z

    if-eqz v1, :cond_62

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_62

    .line 1478
    :cond_29
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 1480
    :try_start_31
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothLeAudio;->getBroadcastToUnicastFallbackGroup(Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_37} :catch_38

    return v1

    .line 1481
    :catch_38
    move-exception v1

    .line 1482
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

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

    .line 1486
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_62
    :goto_62
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist getCodecStatus(I)Landroid/bluetooth/BluetoothLeAudioCodecStatus;
    .registers 7
    .param p1, "groupId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1359
    sget-boolean v0, Landroid/bluetooth/BluetoothLeAudio;->DBG:Z

    if-eqz v0, :cond_22

    .line 1360
    sget-object v0, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCodecStatus("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :cond_22
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 1365
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-nez v0, :cond_40

    .line 1366
    sget-object v1, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    sget-boolean v1, Landroid/bluetooth/BluetoothLeAudio;->DBG:Z

    if-eqz v1, :cond_79

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_79

    .line 1368
    :cond_40
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 1370
    :try_start_48
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothLeAudio;->getCodecStatus(ILandroid/content/AttributionSource;)Landroid/bluetooth/BluetoothLeAudioCodecStatus;

    move-result-object v1
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4e} :catch_4f

    return-object v1

    .line 1371
    :catch_4f
    move-exception v1

    .line 1372
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

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

    .line 1375
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_79
    :goto_79
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

    .line 922
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 923
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-nez v0, :cond_1e

    .line 924
    sget-object v1, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    sget-boolean v1, Landroid/bluetooth/BluetoothLeAudio;->DBG:Z

    if-eqz v1, :cond_5d

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_5d

    .line 926
    :cond_1e
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 928
    :try_start_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    .line 929
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothLeAudio;->getConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    .line 928
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_32} :catch_33

    return-object v1

    .line 930
    :catch_33
    move-exception v1

    .line 931
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

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

    .line 934
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5d
    :goto_5d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getConnectedGroupLeadDevice(I)Landroid/bluetooth/BluetoothDevice;
    .registers 7
    .param p1, "groupId"    # I

    .line 900
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 901
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-nez v0, :cond_1e

    .line 902
    sget-object v1, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    sget-boolean v1, Landroid/bluetooth/BluetoothLeAudio;->DBG:Z

    if-eqz v1, :cond_5f

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_5f

    .line 904
    :cond_1e
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 906
    :try_start_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    .line 907
    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothLeAudio;->getConnectedGroupLeadDevice(ILandroid/content/AttributionSource;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    .line 906
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_34} :catch_35

    return-object v1

    .line 909
    :catch_35
    move-exception v1

    .line 910
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

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

    .line 913
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5f
    :goto_5f
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1323
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 1324
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-nez v0, :cond_1e

    .line 1325
    sget-object v1, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    sget-boolean v1, Landroid/bluetooth/BluetoothLeAudio;->DBG:Z

    if-eqz v1, :cond_5d

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_5d

    .line 1327
    :cond_1e
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-static {p1}, Landroid/bluetooth/BluetoothLeAudio;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 1329
    :try_start_2c
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothLeAudio;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_32} :catch_33

    return v1

    .line 1330
    :catch_33
    move-exception v1

    .line 1331
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

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

    .line 1334
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5d
    :goto_5d
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 967
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 968
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-nez v0, :cond_1e

    .line 969
    sget-object v1, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    sget-boolean v1, Landroid/bluetooth/BluetoothLeAudio;->DBG:Z

    if-eqz v1, :cond_5d

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_5d

    .line 971
    :cond_1e
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-static {p1}, Landroid/bluetooth/BluetoothLeAudio;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 973
    :try_start_2c
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothLeAudio;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_32} :catch_33

    return v1

    .line 974
    :catch_33
    move-exception v1

    .line 975
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

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

    .line 978
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5d
    :goto_5d
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

    .line 944
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 945
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-nez v0, :cond_1e

    .line 946
    sget-object v1, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    sget-boolean v1, Landroid/bluetooth/BluetoothLeAudio;->DBG:Z

    if-eqz v1, :cond_5d

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_5d

    .line 948
    :cond_1e
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 950
    :try_start_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    .line 951
    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothLeAudio;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    .line 950
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_32} :catch_33

    return-object v1

    .line 953
    :catch_33
    move-exception v1

    .line 954
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

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

    .line 957
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5d
    :goto_5d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getGroupId(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1117
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 1118
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-nez v0, :cond_1e

    .line 1119
    sget-object v1, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    sget-boolean v1, Landroid/bluetooth/BluetoothLeAudio;->DBG:Z

    if-eqz v1, :cond_57

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_57

    .line 1121
    :cond_1e
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1123
    :try_start_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothLeAudio;->getGroupId(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2c} :catch_2d

    return v1

    .line 1124
    :catch_2d
    move-exception v1

    .line 1125
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

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

    .line 1128
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_57
    :goto_57
    const/4 v1, -0x1

    return v1
.end method

.method public blacklist groupAddNode(ILandroid/bluetooth/BluetoothDevice;)Z
    .registers 8
    .param p1, "groupId"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1167
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 1168
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-nez v0, :cond_1e

    .line 1169
    sget-object v1, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    sget-boolean v1, Landroid/bluetooth/BluetoothLeAudio;->DBG:Z

    if-eqz v1, :cond_57

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_57

    .line 1171
    :cond_1e
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1173
    :try_start_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothLeAudio;->groupAddNode(ILandroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2c} :catch_2d

    return v1

    .line 1174
    :catch_2d
    move-exception v1

    .line 1175
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

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

    .line 1178
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_57
    :goto_57
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist groupRemoveNode(ILandroid/bluetooth/BluetoothDevice;)Z
    .registers 8
    .param p1, "groupId"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1193
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 1194
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-nez v0, :cond_1e

    .line 1195
    sget-object v1, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    sget-boolean v1, Landroid/bluetooth/BluetoothLeAudio;->DBG:Z

    if-eqz v1, :cond_57

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_57

    .line 1197
    :cond_1e
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1199
    :try_start_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothLeAudio;->groupRemoveNode(ILandroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2c} :catch_2d

    return v1

    .line 1200
    :catch_2d
    move-exception v1

    .line 1201
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

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

    .line 1204
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_57
    :goto_57
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isInbandRingtoneEnabled(I)Z
    .registers 7
    .param p1, "groupId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1257
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 1258
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-nez v0, :cond_1e

    .line 1259
    sget-object v1, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    sget-boolean v1, Landroid/bluetooth/BluetoothLeAudio;->DBG:Z

    if-eqz v1, :cond_57

    .line 1261
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_57

    .line 1263
    :cond_1e
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1265
    :try_start_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1}, Landroid/bluetooth/IBluetoothLeAudio;->isInbandRingtoneEnabled(Landroid/content/AttributionSource;I)Z

    move-result v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2c} :catch_2d

    return v1

    .line 1266
    :catch_2d
    move-exception v1

    .line 1267
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

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

    .line 1270
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_57
    :goto_57
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist onServiceConnected(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "service"    # Landroid/os/IBinder;

    .line 782
    invoke-static {p1}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudio;->mService:Landroid/bluetooth/IBluetoothLeAudio;

    .line 783
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio;->mCallbackWrapper:Landroid/bluetooth/CallbackWrapper;

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mService:Landroid/bluetooth/IBluetoothLeAudio;

    invoke-virtual {v0, v1}, Landroid/bluetooth/CallbackWrapper;->registerToNewService(Ljava/lang/Object;)V

    .line 784
    return-void
.end method

.method public blacklist onServiceDisconnected()V
    .registers 2

    .line 790
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudio;->mService:Landroid/bluetooth/IBluetoothLeAudio;

    .line 791
    return-void
.end method

.method public whitelist registerCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeAudio$Callback;)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothLeAudio$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1007
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 1008
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 1009
    .local v1, "uid":I
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeAudio;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1010
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeAudio;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_PRIVILEGED"

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1012
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeAudio;->mCallbackWrapper:Landroid/bluetooth/CallbackWrapper;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v3

    invoke-virtual {v2, v3, p2, p1}, Landroid/bluetooth/CallbackWrapper;->registerCallback(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 1013
    return-void
.end method

.method public blacklist setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1062
    sget-boolean v0, Landroid/bluetooth/BluetoothLeAudio;->DBG:Z

    if-eqz v0, :cond_20

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

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    .line 1063
    :cond_20
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 1064
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-nez v0, :cond_3e

    .line 1065
    sget-object v1, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    sget-boolean v1, Landroid/bluetooth/BluetoothLeAudio;->DBG:Z

    if-eqz v1, :cond_7f

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_7f

    .line 1067
    :cond_3e
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_7f

    if-eqz p1, :cond_4e

    invoke-static {p1}, Landroid/bluetooth/BluetoothLeAudio;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 1069
    :cond_4e
    :try_start_4e
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothLeAudio;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_54} :catch_55

    return v1

    .line 1070
    :catch_55
    move-exception v1

    .line 1071
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

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

    .line 1074
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_7f
    :goto_7f
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setBroadcastToUnicastFallbackGroup(I)V
    .registers 7
    .param p1, "groupId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1437
    sget-boolean v0, Landroid/bluetooth/BluetoothLeAudio;->DBG:Z

    if-eqz v0, :cond_22

    sget-object v0, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBroadcastToUnicastFallbackGroup("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :cond_22
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 1441
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-nez v0, :cond_40

    .line 1442
    sget-object v1, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    sget-boolean v1, Landroid/bluetooth/BluetoothLeAudio;->DBG:Z

    if-eqz v1, :cond_78

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_78

    .line 1444
    :cond_40
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 1446
    :try_start_48
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothLeAudio;->setBroadcastToUnicastFallbackGroup(ILandroid/content/AttributionSource;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4d} :catch_4e

    .line 1449
    goto :goto_78

    .line 1447
    :catch_4e
    move-exception v1

    .line 1448
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

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

    .line 1451
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_78
    :goto_78
    return-void
.end method

.method public whitelist setCodecConfigPreference(ILandroid/bluetooth/BluetoothLeAudioCodecConfig;Landroid/bluetooth/BluetoothLeAudioCodecConfig;)V
    .registers 9
    .param p1, "groupId"    # I
    .param p2, "inputCodecConfig"    # Landroid/bluetooth/BluetoothLeAudioCodecConfig;
    .param p3, "outputCodecConfig"    # Landroid/bluetooth/BluetoothLeAudioCodecConfig;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1395
    sget-boolean v0, Landroid/bluetooth/BluetoothLeAudio;->DBG:Z

    if-eqz v0, :cond_22

    sget-object v0, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCodecConfigPreference("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    :cond_22
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 1402
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-nez v0, :cond_4d

    .line 1403
    sget-object v1, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    sget-boolean v1, Landroid/bluetooth/BluetoothLeAudio;->DBG:Z

    if-eqz v1, :cond_45

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    .line 1405
    :cond_45
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Service is unavailable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1406
    :cond_4d
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_85

    .line 1408
    :try_start_55
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/bluetooth/IBluetoothLeAudio;->setCodecConfigPreference(ILandroid/bluetooth/BluetoothLeAudioCodecConfig;Landroid/bluetooth/BluetoothLeAudioCodecConfig;Landroid/content/AttributionSource;)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5a} :catch_5b

    .line 1412
    goto :goto_85

    .line 1410
    :catch_5b
    move-exception v1

    .line 1411
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

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

    .line 1414
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_85
    :goto_85
    return-void
.end method

.method public whitelist setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1290
    sget-boolean v0, Landroid/bluetooth/BluetoothLeAudio;->DBG:Z

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

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    .line 1291
    :cond_2a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 1292
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-nez v0, :cond_48

    .line 1293
    sget-object v1, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    sget-boolean v1, Landroid/bluetooth/BluetoothLeAudio;->DBG:Z

    if-eqz v1, :cond_8d

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_8d

    .line 1295
    :cond_48
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 1296
    invoke-static {p1}, Landroid/bluetooth/BluetoothLeAudio;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_8d

    if-eqz p2, :cond_5c

    const/16 v1, 0x64

    if-ne p2, v1, :cond_8d

    .line 1300
    :cond_5c
    :try_start_5c
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothLeAudio;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_62} :catch_63

    return v1

    .line 1301
    :catch_63
    move-exception v1

    .line 1302
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

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

    .line 1305
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_8d
    :goto_8d
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setVolume(I)V
    .registers 7
    .param p1, "volume"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1142
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 1143
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-nez v0, :cond_1e

    .line 1144
    sget-object v1, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    sget-boolean v1, Landroid/bluetooth/BluetoothLeAudio;->DBG:Z

    if-eqz v1, :cond_56

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeAudio;->log(Ljava/lang/String;)V

    goto :goto_56

    .line 1146
    :cond_1e
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 1148
    :try_start_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothLeAudio;->setVolume(ILandroid/content/AttributionSource;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c

    .line 1151
    goto :goto_56

    .line 1149
    :catch_2c
    move-exception v1

    .line 1150
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeAudio;->TAG:Ljava/lang/String;

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

    .line 1153
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_56
    :goto_56
    return-void
.end method

.method public whitelist unregisterCallback(Landroid/bluetooth/BluetoothLeAudio$Callback;)V
    .registers 7
    .param p1, "callback"    # Landroid/bluetooth/BluetoothLeAudio$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1035
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 1036
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 1037
    .local v1, "uid":I
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeAudio;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1038
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeAudio;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_PRIVILEGED"

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1040
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeAudio;->mCallbackWrapper:Landroid/bluetooth/CallbackWrapper;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Landroid/bluetooth/CallbackWrapper;->unregisterCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1041
    return-void
.end method
