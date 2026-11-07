.class public final Landroid/bluetooth/BluetoothHeadsetClient;
.super Ljava/lang/Object;
.source "BluetoothHeadsetClient.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_AG_EVENT:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.AG_EVENT"

.field public static final blacklist ACTION_AUDIO_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.AUDIO_STATE_CHANGED"

.field public static final blacklist ACTION_CALL_CHANGED:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.AG_CALL_CHANGED"

.field public static final whitelist ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACTION_LAST_VTAG:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.LAST_VTAG"

.field public static final whitelist ACTION_NETWORK_SERVICE_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.NETWORK_SERVICE_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACTION_RESULT:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.RESULT"

.field public static final blacklist ACTION_RESULT_ERROR:I = 0x1

.field public static final blacklist ACTION_RESULT_ERROR_BLACKLISTED:I = 0x6

.field public static final blacklist ACTION_RESULT_ERROR_BUSY:I = 0x3

.field public static final blacklist ACTION_RESULT_ERROR_CME:I = 0x7

.field public static final blacklist ACTION_RESULT_ERROR_DELAYED:I = 0x5

.field public static final blacklist ACTION_RESULT_ERROR_NO_ANSWER:I = 0x4

.field public static final blacklist ACTION_RESULT_ERROR_NO_CARRIER:I = 0x2

.field public static final blacklist ACTION_RESULT_OK:I = 0x0

.field public static final blacklist ACTION_VENDOR_SPECIFIC_HEADSETCLIENT_EVENT:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.VENDOR_SPECIFIC_EVENT"

.field public static final blacklist CALL_ACCEPT_HOLD:I = 0x1

.field public static final blacklist CALL_ACCEPT_NONE:I = 0x0

.field public static final blacklist CALL_ACCEPT_TERMINATE:I = 0x2

.field public static final blacklist CME_CORPORATE_PERSONALIZATION_PIN_REQUIRED:I = 0x2e

.field public static final blacklist CME_CORPORATE_PERSONALIZATION_PUK_REQUIRED:I = 0x2f

.field public static final blacklist CME_DIAL_STRING_TOO_LONG:I = 0x1a

.field public static final blacklist CME_EAP_NOT_SUPPORTED:I = 0x31

.field public static final blacklist CME_EMERGENCY_SERVICE_ONLY:I = 0x20

.field public static final blacklist CME_HIDDEN_KEY_REQUIRED:I = 0x30

.field public static final blacklist CME_INCORRECT_PARAMETERS:I = 0x32

.field public static final blacklist CME_INCORRECT_PASSWORD:I = 0x10

.field public static final blacklist CME_INVALID_CHARACTER_IN_DIAL_STRING:I = 0x1b

.field public static final blacklist CME_INVALID_CHARACTER_IN_TEXT_STRING:I = 0x19

.field public static final blacklist CME_INVALID_INDEX:I = 0x15

.field public static final blacklist CME_MEMORY_FAILURE:I = 0x17

.field public static final blacklist CME_MEMORY_FULL:I = 0x14

.field public static final blacklist CME_NETWORK_PERSONALIZATION_PIN_REQUIRED:I = 0x28

.field public static final blacklist CME_NETWORK_PERSONALIZATION_PUK_REQUIRED:I = 0x29

.field public static final blacklist CME_NETWORK_SUBSET_PERSONALIZATION_PIN_REQUIRED:I = 0x2a

.field public static final blacklist CME_NETWORK_SUBSET_PERSONALIZATION_PUK_REQUIRED:I = 0x2b

.field public static final blacklist CME_NETWORK_TIMEOUT:I = 0x1f

.field public static final blacklist CME_NOT_FOUND:I = 0x16

.field public static final blacklist CME_NOT_SUPPORTED_FOR_VOIP:I = 0x22

.field public static final blacklist CME_NO_CONNECTION_TO_PHONE:I = 0x1

.field public static final blacklist CME_NO_NETWORK_SERVICE:I = 0x1e

.field public static final blacklist CME_NO_SIMULTANEOUS_VOIP_CS_CALLS:I = 0x21

.field public static final blacklist CME_OPERATION_NOT_ALLOWED:I = 0x3

.field public static final blacklist CME_OPERATION_NOT_SUPPORTED:I = 0x4

.field public static final blacklist CME_PHFSIM_PIN_REQUIRED:I = 0x6

.field public static final blacklist CME_PHFSIM_PUK_REQUIRED:I = 0x7

.field public static final blacklist CME_PHONE_FAILURE:I = 0x0

.field public static final blacklist CME_PHSIM_PIN_REQUIRED:I = 0x5

.field public static final blacklist CME_SERVICE_PROVIDER_PERSONALIZATION_PIN_REQUIRED:I = 0x2c

.field public static final blacklist CME_SERVICE_PROVIDER_PERSONALIZATION_PUK_REQUIRED:I = 0x2d

.field public static final blacklist CME_SIM_BUSY:I = 0xe

.field public static final blacklist CME_SIM_FAILURE:I = 0xd

.field public static final blacklist CME_SIM_NOT_INSERTED:I = 0xa

.field public static final blacklist CME_SIM_PIN2_REQUIRED:I = 0x11

.field public static final blacklist CME_SIM_PIN_REQUIRED:I = 0xb

.field public static final blacklist CME_SIM_PUK2_REQUIRED:I = 0x12

.field public static final blacklist CME_SIM_PUK_REQUIRED:I = 0xc

.field public static final blacklist CME_SIM_WRONG:I = 0xf

.field public static final blacklist CME_SIP_RESPONSE_CODE:I = 0x23

.field public static final blacklist CME_TEXT_STRING_TOO_LONG:I = 0x18

.field private static final blacklist DBG:Z = true

.field public static final blacklist EXTRA_AG_FEATURE_3WAY_CALLING:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_3WAY_CALLING"

.field public static final blacklist EXTRA_AG_FEATURE_ACCEPT_HELD_OR_WAITING_CALL:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ACCEPT_HELD_OR_WAITING_CALL"

.field public static final blacklist EXTRA_AG_FEATURE_ATTACH_NUMBER_TO_VT:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ATTACH_NUMBER_TO_VT"

.field public static final blacklist EXTRA_AG_FEATURE_ECC:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ECC"

.field public static final blacklist EXTRA_AG_FEATURE_MERGE:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_MERGE"

.field public static final blacklist EXTRA_AG_FEATURE_MERGE_AND_DETACH:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_MERGE_AND_DETACH"

.field public static final blacklist EXTRA_AG_FEATURE_REJECT_CALL:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_REJECT_CALL"

.field public static final blacklist EXTRA_AG_FEATURE_RELEASE_AND_ACCEPT:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RELEASE_AND_ACCEPT"

.field public static final blacklist EXTRA_AG_FEATURE_RELEASE_HELD_OR_WAITING_CALL:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RELEASE_HELD_OR_WAITING_CALL"

.field public static final blacklist EXTRA_AG_FEATURE_RESPONSE_AND_HOLD:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RESPONSE_AND_HOLD"

.field public static final blacklist EXTRA_AG_FEATURE_VOICE_RECOGNITION:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_VOICE_RECOGNITION"

.field public static final blacklist EXTRA_AUDIO_WBS:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.AUDIO_WBS"

.field public static final blacklist EXTRA_BATTERY_LEVEL:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.BATTERY_LEVEL"

.field public static final blacklist EXTRA_CALL:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.CALL"

.field public static final blacklist EXTRA_CME_CODE:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.CME_CODE"

.field public static final blacklist EXTRA_IN_BAND_RING:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.IN_BAND_RING"

.field public static final blacklist EXTRA_NETWORK_ROAMING:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.NETWORK_ROAMING"

.field public static final whitelist EXTRA_NETWORK_SERVICE_STATE:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_NETWORK_SERVICE_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_NETWORK_SIGNAL_STRENGTH:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.NETWORK_SIGNAL_STRENGTH"

.field public static final blacklist EXTRA_NETWORK_STATUS:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.NETWORK_STATUS"

.field public static final blacklist EXTRA_NUMBER:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.NUMBER"

.field public static final blacklist EXTRA_OPERATOR_NAME:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.OPERATOR_NAME"

.field public static final blacklist EXTRA_RESULT_CODE:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.RESULT_CODE"

.field public static final blacklist EXTRA_SUBSCRIBER_INFO:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.SUBSCRIBER_INFO"

.field public static final blacklist EXTRA_VENDOR_EVENT_CODE:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.VENDOR_EVENT_CODE"

.field public static final blacklist EXTRA_VENDOR_EVENT_FULL_ARGS:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.VENDOR_EVENT_FULL_ARGS"

.field public static final blacklist EXTRA_VENDOR_ID:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.VENDOR_ID"

.field public static final blacklist EXTRA_VOICE_RECOGNITION:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.VOICE_RECOGNITION"

.field public static final blacklist STATE_AUDIO_CONNECTED:I = 0x2

.field public static final blacklist STATE_AUDIO_CONNECTING:I = 0x1

.field public static final blacklist STATE_AUDIO_DISCONNECTED:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist VDBG:Z = false


# instance fields
.field private final blacklist mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private blacklist mService:Landroid/bluetooth/IBluetoothHeadsetClient;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 65
    const-class v0, Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    iput-object p2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 612
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 613
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 614
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mCloseGuard:Landroid/util/CloseGuard;

    .line 615
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 616
    return-void
.end method

.method private blacklist getService()Landroid/bluetooth/IBluetoothHeadsetClient;
    .registers 2

    .line 649
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    return-object v0
.end method

.method private blacklist isEnabled()Z
    .registers 3

    .line 1646
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

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

    .line 1650
    sget-object v0, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    return-void
.end method


# virtual methods
.method public greylist-max-r acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "flag"    # I

    .line 1022
    const-string v0, "acceptCall()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 1023
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1024
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    if-nez v0, :cond_1f

    .line 1025
    sget-object v1, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_5c

    .line 1027
    :cond_1f
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1029
    :try_start_2b
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->acceptCall(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_31} :catch_32

    return v1

    .line 1030
    :catch_32
    move-exception v1

    .line 1031
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

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

    .line 1034
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5c
    :goto_5c
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api close()V
    .registers 2

    .line 628
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(Landroid/bluetooth/BluetoothProfile;)V

    .line 629
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_e

    .line 630
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V

    .line 632
    :cond_e
    return-void
.end method

.method public greylist-max-r connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 684
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

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 685
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 686
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    if-nez v0, :cond_36

    .line 687
    sget-object v1, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_73

    .line 689
    :cond_36
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 691
    :try_start_42
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->connect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_48} :catch_49

    return v1

    .line 692
    :catch_49
    move-exception v1

    .line 693
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

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

    .line 696
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_73
    :goto_73
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist connectAudio(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1370
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1371
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    if-nez v0, :cond_1a

    .line 1372
    sget-object v1, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_51

    .line 1374
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1376
    :try_start_20
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->connectAudio(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_26} :catch_27

    return v1

    .line 1377
    :catch_27
    move-exception v1

    .line 1378
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

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

    .line 1381
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_51
    :goto_51
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/bluetooth/BluetoothHeadsetClientCall;
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "number"    # Ljava/lang/String;

    .line 1204
    const-string v0, "dial()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 1205
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1206
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    if-nez v0, :cond_1f

    .line 1207
    sget-object v1, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_64

    .line 1209
    :cond_1f
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 1211
    :try_start_2b
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 1212
    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Landroid/content/AttributionSource;)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 1211
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHeadsetClientCall;
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_39} :catch_3a

    return-object v1

    .line 1213
    :catch_3a
    move-exception v1

    .line 1214
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

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

    .line 1217
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_64
    :goto_64
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist-max-r disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 711
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

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 712
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 713
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    if-nez v0, :cond_36

    .line 714
    sget-object v1, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_73

    .line 716
    :cond_36
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 718
    :try_start_42
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_48} :catch_49

    return v1

    .line 719
    :catch_49
    move-exception v1

    .line 720
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

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

    .line 723
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_73
    :goto_73
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist disconnectAudio(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1398
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1399
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    if-nez v0, :cond_1a

    .line 1400
    sget-object v1, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_51

    .line 1402
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1404
    :try_start_20
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->disconnectAudio(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_26} :catch_27

    return v1

    .line 1405
    :catch_27
    move-exception v1

    .line 1406
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

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

    .line 1409
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_51
    :goto_51
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "index"    # I

    .line 1144
    const-string v0, "enterPrivateMode()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 1145
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1146
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    if-nez v0, :cond_1f

    .line 1147
    sget-object v1, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_5c

    .line 1149
    :cond_1f
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1151
    :try_start_2b
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->enterPrivateMode(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_31} :catch_32

    return v1

    .line 1152
    :catch_32
    move-exception v1

    .line 1153
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

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

    .line 1156
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5c
    :goto_5c
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1175
    const-string v0, "explicitCallTransfer()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 1176
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1177
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    if-nez v0, :cond_1f

    .line 1178
    sget-object v1, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_5c

    .line 1180
    :cond_1f
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1182
    :try_start_2b
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_31} :catch_32

    return v1

    .line 1183
    :catch_32
    move-exception v1

    .line 1184
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

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

    .line 1187
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5c
    :goto_5c
    const/4 v1, 0x0

    return v1
.end method

.method protected whitelist test-api finalize()V
    .registers 2

    .line 662
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_9

    .line 663
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 665
    :cond_9
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->close()V

    .line 666
    return-void
.end method

.method public blacklist getAdapter()Landroid/bluetooth/BluetoothAdapter;
    .registers 2

    .line 656
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public blacklist getAudioRouteAllowed(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1342
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1343
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    if-nez v0, :cond_1a

    .line 1344
    sget-object v1, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_51

    .line 1346
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1348
    :try_start_20
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getAudioRouteAllowed(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_26} :catch_27

    return v1

    .line 1349
    :catch_27
    move-exception v1

    .line 1350
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

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

    .line 1353
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_51
    :goto_51
    const/4 v1, 0x0

    return v1
.end method

.method public greylist-max-r getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1291
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1292
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    if-nez v0, :cond_1a

    .line 1293
    sget-object v1, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_51

    .line 1295
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1297
    :try_start_20
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getAudioState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_26} :catch_27

    return v1

    .line 1298
    :catch_27
    move-exception v1

    .line 1299
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

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

    .line 1302
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_51
    :goto_51
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getConnectedDevices()Ljava/util/List;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 737
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 738
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    if-nez v0, :cond_1a

    .line 739
    sget-object v1, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_57

    .line 741
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 743
    :try_start_20
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 744
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 743
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2c} :catch_2d

    return-object v1

    .line 745
    :catch_2d
    move-exception v1

    .line 746
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

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

    .line 749
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

    .line 856
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 857
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    if-nez v0, :cond_1a

    .line 858
    sget-object v1, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_57

    .line 860
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 862
    :try_start_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2c} :catch_2d

    return v1

    .line 863
    :catch_2d
    move-exception v1

    .line 864
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

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

    .line 867
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_57
    :goto_57
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 791
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 792
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    if-nez v0, :cond_1a

    .line 793
    sget-object v1, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_57

    .line 795
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 797
    :try_start_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2c} :catch_2d

    return v1

    .line 798
    :catch_2d
    move-exception v1

    .line 799
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

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

    .line 802
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_57
    :goto_57
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 993
    const-string v0, "getCurrentAgEvents()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 994
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 995
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    if-nez v0, :cond_1f

    .line 996
    sget-object v1, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_5c

    .line 998
    :cond_1f
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1000
    :try_start_2b
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_31} :catch_32

    return-object v1

    .line 1001
    :catch_32
    move-exception v1

    .line 1002
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

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

    .line 1005
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5c
    :goto_5c
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1423
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1424
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    if-nez v0, :cond_1a

    .line 1425
    sget-object v1, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_51

    .line 1427
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1429
    :try_start_20
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_26} :catch_27

    return-object v1

    .line 1430
    :catch_27
    move-exception v1

    .line 1431
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

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

    .line 1434
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_51
    :goto_51
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothHeadsetClientCall;",
            ">;"
        }
    .end annotation

    .line 967
    const-string v0, "getCurrentCalls()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 968
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 969
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    if-nez v0, :cond_1f

    .line 970
    sget-object v1, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_62

    .line 972
    :cond_1f
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 974
    :try_start_2b
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 975
    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getCurrentCalls(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 974
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_37} :catch_38

    return-object v1

    .line 976
    :catch_38
    move-exception v1

    .line 977
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

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

    .line 980
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_62
    :goto_62
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 7
    .param p1, "states"    # [I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 764
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 765
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    if-nez v0, :cond_1a

    .line 766
    sget-object v1, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_57

    .line 768
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 770
    :try_start_20
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 771
    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 770
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2c} :catch_2d

    return-object v1

    .line 773
    :catch_2d
    move-exception v1

    .line 774
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

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

    .line 777
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_57
    :goto_57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1264
    const-string v0, "getLastVoiceTagNumber()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 1265
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1266
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    if-nez v0, :cond_1f

    .line 1267
    sget-object v1, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_5c

    .line 1269
    :cond_1f
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1271
    :try_start_2b
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_31} :catch_32

    return v1

    .line 1272
    :catch_32
    move-exception v1

    .line 1273
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

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

    .line 1276
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5c
    :goto_5c
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getNetworkServiceState(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;
    .registers 13
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1627
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1628
    return-object v0

    .line 1631
    :cond_4
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v1

    .line 1632
    .local v1, "agEvents":Landroid/os/Bundle;
    if-nez v1, :cond_b

    .line 1633
    return-object v0

    .line 1636
    :cond_b
    const-string v2, "android.bluetooth.headsetclient.extra.NETWORK_STATUS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_17

    move v2, v4

    goto :goto_18

    :cond_17
    move v2, v3

    :goto_18
    move v7, v2

    .line 1637
    .local v7, "isServiceAvailable":Z
    const-string v2, "android.bluetooth.headsetclient.extra.NETWORK_SIGNAL_STRENGTH"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 1638
    .local v9, "signalStrength":I
    const-string v2, "android.bluetooth.headsetclient.extra.OPERATOR_NAME"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1639
    .local v8, "operatorName":Ljava/lang/String;
    const-string v0, "android.bluetooth.headsetclient.extra.NETWORK_ROAMING"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_2f

    move v10, v4

    goto :goto_30

    :cond_2f
    move v10, v3

    .line 1641
    .local v10, "isRoaming":Z
    :goto_30
    new-instance v5, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;

    move-object v6, p1

    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .local v6, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-direct/range {v5 .. v10}, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;-><init>(Landroid/bluetooth/BluetoothDevice;ZLjava/lang/String;IZ)V

    return-object v5
.end method

.method public blacklist holdCall(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1048
    const-string v0, "holdCall()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 1049
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1050
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    if-nez v0, :cond_1f

    .line 1051
    sget-object v1, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_5c

    .line 1053
    :cond_1f
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1055
    :try_start_2b
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->holdCall(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_31} :catch_32

    return v1

    .line 1056
    :catch_32
    move-exception v1

    .line 1057
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

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

    .line 1060
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5c
    :goto_5c
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist onServiceConnected(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "service"    # Landroid/os/IBinder;

    .line 638
    invoke-static {p1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 639
    return-void
.end method

.method public blacklist onServiceDisconnected()V
    .registers 2

    .line 645
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 646
    return-void
.end method

.method public greylist-max-r rejectCall(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1078
    const-string v0, "rejectCall()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 1079
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1080
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    if-nez v0, :cond_1f

    .line 1081
    sget-object v1, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_5c

    .line 1083
    :cond_1f
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1085
    :try_start_2b
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->rejectCall(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_31} :catch_32

    return v1

    .line 1086
    :catch_32
    move-exception v1

    .line 1087
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

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

    .line 1090
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5c
    :goto_5c
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "code"    # B

    .line 1234
    const-string v0, "sendDTMF()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 1235
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1236
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    if-nez v0, :cond_1f

    .line 1237
    sget-object v1, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_5c

    .line 1239
    :cond_1f
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1241
    :try_start_2b
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->sendDTMF(Landroid/bluetooth/BluetoothDevice;BLandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_31} :catch_32

    return v1

    .line 1242
    :catch_32
    move-exception v1

    .line 1243
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

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

    .line 1246
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5c
    :goto_5c
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist sendVendorAtCommand(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)Z
    .registers 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "vendorId"    # I
    .param p3, "atCommand"    # Ljava/lang/String;

    .line 912
    const-string v0, "sendVendorSpecificCommand()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 913
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 914
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    if-nez v0, :cond_1f

    .line 915
    sget-object v1, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_5c

    .line 917
    :cond_1f
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 919
    :try_start_2b
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->sendVendorAtCommand(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_31} :catch_32

    return v1

    .line 920
    :catch_32
    move-exception v1

    .line 921
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

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

    .line 924
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5c
    :goto_5c
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setAudioRouteAllowed(Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "allowed"    # Z

    .line 1317
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1318
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    if-nez v0, :cond_1a

    .line 1319
    sget-object v1, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_50

    .line 1321
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1323
    :try_start_20
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->setAudioRouteAllowed(Landroid/bluetooth/BluetoothDevice;ZLandroid/content/AttributionSource;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_26

    .line 1326
    goto :goto_50

    .line 1324
    :catch_26
    move-exception v1

    .line 1325
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

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

    .line 1328
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_50
    :goto_50
    return-void
.end method

.method public whitelist setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 822
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

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 823
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 824
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    if-nez v0, :cond_40

    .line 825
    sget-object v1, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_83

    .line 827
    :cond_40
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 828
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_83

    if-eqz p2, :cond_52

    const/16 v1, 0x64

    if-ne p2, v1, :cond_83

    .line 832
    :cond_52
    :try_start_52
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_58} :catch_59

    return v1

    .line 833
    :catch_59
    move-exception v1

    .line 834
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

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

    .line 837
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_83
    :goto_83
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 884
    const-string v0, "startVoiceRecognition()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 885
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 886
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    if-nez v0, :cond_1f

    .line 887
    sget-object v1, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_5c

    .line 889
    :cond_1f
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 891
    :try_start_2b
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_31} :catch_32

    return v1

    .line 892
    :catch_32
    move-exception v1

    .line 893
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

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

    .line 896
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5c
    :goto_5c
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 941
    const-string v0, "stopVoiceRecognition()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 942
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 943
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    if-nez v0, :cond_1f

    .line 944
    sget-object v1, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_5c

    .line 946
    :cond_1f
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 948
    :try_start_2b
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_31} :catch_32

    return v1

    .line 949
    :catch_32
    move-exception v1

    .line 950
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

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

    .line 953
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5c
    :goto_5c
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist terminateCall(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadsetClientCall;)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "call"    # Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 1112
    const-string v0, "terminateCall()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 1113
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1114
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    if-nez v0, :cond_1f

    .line 1115
    sget-object v1, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_5c

    .line 1117
    :cond_1f
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1119
    :try_start_2b
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->terminateCall(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadsetClientCall;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_31} :catch_32

    return v1

    .line 1120
    :catch_32
    move-exception v1

    .line 1121
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHeadsetClient;->TAG:Ljava/lang/String;

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

    .line 1124
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5c
    :goto_5c
    const/4 v1, 0x0

    return v1
.end method
