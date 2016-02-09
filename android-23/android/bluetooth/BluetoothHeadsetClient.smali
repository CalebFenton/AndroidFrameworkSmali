.class public final Landroid/bluetooth/BluetoothHeadsetClient;
.super Ljava/lang/Object;
.source "BluetoothHeadsetClient.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothHeadsetClient$1;,
        Landroid/bluetooth/BluetoothHeadsetClient$2;
    }
.end annotation


# static fields
.field public static final ACTION_AG_EVENT:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.AG_EVENT"

.field public static final ACTION_AUDIO_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.AUDIO_STATE_CHANGED"

.field public static final ACTION_CALL_CHANGED:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.AG_CALL_CHANGED"

.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_LAST_VTAG:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.LAST_VTAG"

.field public static final ACTION_RESULT:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.RESULT"

.field public static final ACTION_RESULT_ERROR:I = 0x1

.field public static final ACTION_RESULT_ERROR_BLACKLISTED:I = 0x6

.field public static final ACTION_RESULT_ERROR_BUSY:I = 0x3

.field public static final ACTION_RESULT_ERROR_CME:I = 0x7

.field public static final ACTION_RESULT_ERROR_DELAYED:I = 0x5

.field public static final ACTION_RESULT_ERROR_NO_ANSWER:I = 0x4

.field public static final ACTION_RESULT_ERROR_NO_CARRIER:I = 0x2

.field public static final ACTION_RESULT_OK:I = 0x0

.field public static final CALL_ACCEPT_HOLD:I = 0x1

.field public static final CALL_ACCEPT_NONE:I = 0x0

.field public static final CALL_ACCEPT_TERMINATE:I = 0x2

.field public static final CME_CORPORATE_PERSONALIZATION_PIN_REQUIRED:I = 0x2e

.field public static final CME_CORPORATE_PERSONALIZATION_PUK_REQUIRED:I = 0x2f

.field public static final CME_DIAL_STRING_TOO_LONG:I = 0x1a

.field public static final CME_EAP_NOT_SUPPORTED:I = 0x31

.field public static final CME_EMERGENCY_SERVICE_ONLY:I = 0x20

.field public static final CME_HIDDEN_KEY_REQUIRED:I = 0x30

.field public static final CME_INCORRECT_PARAMETERS:I = 0x32

.field public static final CME_INCORRECT_PASSWORD:I = 0x10

.field public static final CME_INVALID_CHARACTER_IN_DIAL_STRING:I = 0x1b

.field public static final CME_INVALID_CHARACTER_IN_TEXT_STRING:I = 0x19

.field public static final CME_INVALID_INDEX:I = 0x15

.field public static final CME_MEMORY_FAILURE:I = 0x17

.field public static final CME_MEMORY_FULL:I = 0x14

.field public static final CME_NETWORK_PERSONALIZATION_PIN_REQUIRED:I = 0x28

.field public static final CME_NETWORK_PERSONALIZATION_PUK_REQUIRED:I = 0x29

.field public static final CME_NETWORK_SUBSET_PERSONALIZATION_PIN_REQUIRED:I = 0x2a

.field public static final CME_NETWORK_SUBSET_PERSONALIZATION_PUK_REQUIRED:I = 0x2b

.field public static final CME_NETWORK_TIMEOUT:I = 0x1f

.field public static final CME_NOT_FOUND:I = 0x16

.field public static final CME_NOT_SUPPORTED_FOR_VOIP:I = 0x22

.field public static final CME_NO_CONNECTION_TO_PHONE:I = 0x1

.field public static final CME_NO_NETWORK_SERVICE:I = 0x1e

.field public static final CME_NO_SIMULTANOUS_VOIP_CS_CALLS:I = 0x21

.field public static final CME_OPERATION_NOT_ALLOWED:I = 0x3

.field public static final CME_OPERATION_NOT_SUPPORTED:I = 0x4

.field public static final CME_PHFSIM_PIN_REQUIRED:I = 0x6

.field public static final CME_PHFSIM_PUK_REQUIRED:I = 0x7

.field public static final CME_PHONE_FAILURE:I = 0x0

.field public static final CME_PHSIM_PIN_REQUIRED:I = 0x5

.field public static final CME_SERVICE_PROVIDER_PERSONALIZATION_PIN_REQUIRED:I = 0x2c

.field public static final CME_SERVICE_PROVIDER_PERSONALIZATION_PUK_REQUIRED:I = 0x2d

.field public static final CME_SIM_BUSY:I = 0xe

.field public static final CME_SIM_FAILURE:I = 0xd

.field public static final CME_SIM_NOT_INSERTED:I = 0xa

.field public static final CME_SIM_PIN2_REQUIRED:I = 0x11

.field public static final CME_SIM_PIN_REQUIRED:I = 0xb

.field public static final CME_SIM_PUK2_REQUIRED:I = 0x12

.field public static final CME_SIM_PUK_REQUIRED:I = 0xc

.field public static final CME_SIM_WRONG:I = 0xf

.field public static final CME_SIP_RESPONSE_CODE:I = 0x23

.field public static final CME_TEXT_STRING_TOO_LONG:I = 0x18

.field private static final DBG:Z = true

.field public static final EXTRA_AG_FEATURE_3WAY_CALLING:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_3WAY_CALLING"

.field public static final EXTRA_AG_FEATURE_ACCEPT_HELD_OR_WAITING_CALL:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ACCEPT_HELD_OR_WAITING_CALL"

.field public static final EXTRA_AG_FEATURE_ATTACH_NUMBER_TO_VT:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ATTACH_NUMBER_TO_VT"

.field public static final EXTRA_AG_FEATURE_ECC:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ECC"

.field public static final EXTRA_AG_FEATURE_MERGE:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_MERGE"

.field public static final EXTRA_AG_FEATURE_MERGE_AND_DETACH:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_MERGE_AND_DETACH"

.field public static final EXTRA_AG_FEATURE_REJECT_CALL:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_REJECT_CALL"

.field public static final EXTRA_AG_FEATURE_RELEASE_AND_ACCEPT:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RELEASE_AND_ACCEPT"

.field public static final EXTRA_AG_FEATURE_RELEASE_HELD_OR_WAITING_CALL:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RELEASE_HELD_OR_WAITING_CALL"

.field public static final EXTRA_AG_FEATURE_RESPONSE_AND_HOLD:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RESPONSE_AND_HOLD"

.field public static final EXTRA_AG_FEATURE_VOICE_RECOGNITION:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_VOICE_RECOGNITION"

.field public static final EXTRA_AUDIO_WBS:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.AUDIO_WBS"

.field public static final EXTRA_BATTERY_LEVEL:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.BATTERY_LEVEL"

.field public static final EXTRA_CALL:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.CALL"

.field public static final EXTRA_CME_CODE:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.CME_CODE"

.field public static final EXTRA_IN_BAND_RING:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.IN_BAND_RING"

.field public static final EXTRA_NETWORK_ROAMING:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.NETWORK_ROAMING"

.field public static final EXTRA_NETWORK_SIGNAL_STRENGTH:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.NETWORK_SIGNAL_STRENGTH"

.field public static final EXTRA_NETWORK_STATUS:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.NETWORK_STATUS"

.field public static final EXTRA_NUMBER:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.NUMBER"

.field public static final EXTRA_OPERATOR_NAME:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.OPERATOR_NAME"

.field public static final EXTRA_RESULT_CODE:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.RESULT_CODE"

.field public static final EXTRA_SUBSCRIBER_INFO:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.SUBSCRIBER_INFO"

.field public static final EXTRA_VOICE_RECOGNITION:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.VOICE_RECOGNITION"

.field public static final STATE_AUDIO_CONNECTED:I = 0x2

.field public static final STATE_AUDIO_CONNECTING:I = 0x1

.field public static final STATE_AUDIO_DISCONNECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothHeadsetClient"

.field private static final VDBG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mService:Landroid/bluetooth/IBluetoothHeadsetClient;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static synthetic -get0(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/content/ServiceConnection;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mConnection:Landroid/content/ServiceConnection;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/IBluetoothHeadsetClient;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/bluetooth/BluetoothHeadsetClient;Landroid/bluetooth/IBluetoothHeadsetClient;)Landroid/bluetooth/IBluetoothHeadsetClient;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@2
    return-object p1
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@0
    .prologue
    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 373
    new-instance v2, Landroid/bluetooth/BluetoothHeadsetClient$1;

    #@5
    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothHeadsetClient$1;-><init>(Landroid/bluetooth/BluetoothHeadsetClient;)V

    #@8
    .line 372
    iput-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@a
    .line 1131
    new-instance v2, Landroid/bluetooth/BluetoothHeadsetClient$2;

    #@c
    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothHeadsetClient$2;-><init>(Landroid/bluetooth/BluetoothHeadsetClient;)V

    #@f
    iput-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mConnection:Landroid/content/ServiceConnection;

    #@11
    .line 407
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mContext:Landroid/content/Context;

    #@13
    .line 408
    iput-object p2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@15
    .line 409
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    #@18
    move-result-object v2

    #@19
    iput-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@1b
    .line 411
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@1d
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    #@20
    move-result-object v1

    #@21
    .line 412
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    #@23
    .line 414
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@25
    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 420
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->doBind()Z

    #@2b
    .line 406
    return-void

    #@2c
    .line 415
    :catch_0
    move-exception v0

    #@2d
    .line 416
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothHeadsetClient"

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
    .line 1153
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

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
    .line 1154
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
    .line 1158
    if-nez p1, :cond_0

    #@3
    return v1

    #@4
    .line 1160
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
    .line 1161
    :cond_1
    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1165
    const-string/jumbo v0, "BluetoothHeadsetClient"

    #@3
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 1164
    return-void
.end method


# virtual methods
.method public acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "flag"    # I

    #@0
    .prologue
    .line 733
    const-string/jumbo v1, "acceptCall()"

    #@3
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    #@6
    .line 734
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@8
    if-eqz v1, :cond_0

    #@a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 735
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@13
    move-result v1

    #@14
    .line 734
    if-eqz v1, :cond_0

    #@16
    .line 737
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@18
    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHeadsetClient;->acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result v1

    #@1c
    return v1

    #@1d
    .line 738
    :catch_0
    move-exception v0

    #@1e
    .line 739
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadsetClient"

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
    .line 742
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@2f
    if-nez v1, :cond_1

    #@31
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@34
    const-string/jumbo v2, "Proxy not attached to service"

    #@37
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 743
    :cond_1
    const/4 v1, 0x0

    #@3b
    return v1
.end method

.method public acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    .line 1015
    const-string/jumbo v1, "acceptIncomingConnect"

    #@3
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    #@6
    .line 1016
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@8
    if-eqz v1, :cond_0

    #@a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 1018
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@12
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result v1

    #@16
    return v1

    #@17
    .line 1019
    :catch_0
    move-exception v0

    #@18
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@1b
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 1024
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    #@23
    return v1

    #@24
    .line 1021
    :cond_0
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@27
    const-string/jumbo v2, "Proxy not attached to service"

    #@2a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 1022
    const-string/jumbo v1, "BluetoothHeadsetClient"

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

.method close()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 444
    iget-object v3, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@3
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    #@6
    move-result-object v1

    #@7
    .line 445
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    #@9
    .line 447
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@b
    invoke-interface {v1, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 453
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mConnection:Landroid/content/ServiceConnection;

    #@10
    monitor-enter v4

    #@11
    .line 454
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    if-eqz v3, :cond_1

    #@15
    .line 456
    const/4 v3, 0x0

    #@16
    :try_start_2
    iput-object v3, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@18
    .line 457
    iget-object v3, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mContext:Landroid/content/Context;

    #@1a
    iget-object v5, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mConnection:Landroid/content/ServiceConnection;

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
    .line 463
    iput-object v6, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@22
    .line 441
    return-void

    #@23
    .line 448
    :catch_0
    move-exception v0

    #@24
    .line 449
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BluetoothHeadsetClient"

    #@27
    const-string/jumbo v4, ""

    #@2a
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2d
    goto :goto_0

    #@2e
    .line 458
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    #@2f
    .line 459
    .local v2, "re":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v3, "BluetoothHeadsetClient"

    #@32
    const-string/jumbo v5, ""

    #@35
    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@38
    goto :goto_1

    #@39
    .line 453
    .end local v2    # "re":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    #@3a
    monitor-exit v4

    #@3b
    throw v3
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 480
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
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    #@1f
    .line 481
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@21
    if-eqz v1, :cond_0

    #@23
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_0

    #@29
    .line 482
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@2c
    move-result v1

    #@2d
    .line 481
    if-eqz v1, :cond_0

    #@2f
    .line 484
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@31
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->connect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    move-result v1

    #@35
    return v1

    #@36
    .line 485
    :catch_0
    move-exception v0

    #@37
    .line 486
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadsetClient"

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
    .line 487
    return v3

    #@47
    .line 490
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@49
    if-nez v1, :cond_1

    #@4b
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@4e
    const-string/jumbo v2, "Proxy not attached to service"

    #@51
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    .line 491
    :cond_1
    return v3
.end method

.method public connectAudio()Z
    .locals 3

    #@0
    .prologue
    .line 1072
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 1074
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@c
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->connectAudio()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 1075
    :catch_0
    move-exception v0

    #@12
    .line 1076
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@15
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 1082
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    #@1d
    return v1

    #@1e
    .line 1079
    :cond_0
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@21
    const-string/jumbo v2, "Proxy not attached to service"

    #@24
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 1080
    const-string/jumbo v1, "BluetoothHeadsetClient"

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

.method public dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 921
    const-string/jumbo v1, "dial()"

    #@3
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    #@6
    .line 922
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@8
    if-eqz v1, :cond_0

    #@a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 923
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@13
    move-result v1

    #@14
    .line 922
    if-eqz v1, :cond_0

    #@16
    .line 925
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@18
    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHeadsetClient;->dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result v1

    #@1c
    return v1

    #@1d
    .line 926
    :catch_0
    move-exception v0

    #@1e
    .line 927
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadsetClient"

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
    .line 930
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@2f
    if-nez v1, :cond_1

    #@31
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@34
    const-string/jumbo v2, "Proxy not attached to service"

    #@37
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 931
    :cond_1
    const/4 v1, 0x0

    #@3b
    return v1
.end method

.method public dialMemory(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "location"    # I

    #@0
    .prologue
    .line 946
    const-string/jumbo v1, "dialMemory()"

    #@3
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    #@6
    .line 947
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@8
    if-eqz v1, :cond_0

    #@a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 948
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@13
    move-result v1

    #@14
    .line 947
    if-eqz v1, :cond_0

    #@16
    .line 950
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@18
    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHeadsetClient;->dialMemory(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result v1

    #@1c
    return v1

    #@1d
    .line 951
    :catch_0
    move-exception v0

    #@1e
    .line 952
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadsetClient"

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
    .line 955
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@2f
    if-nez v1, :cond_1

    #@31
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@34
    const-string/jumbo v2, "Proxy not attached to service"

    #@37
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 956
    :cond_1
    const/4 v1, 0x0

    #@3b
    return v1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 504
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
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    #@1f
    .line 505
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@21
    if-eqz v1, :cond_0

    #@23
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_0

    #@29
    .line 506
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@2c
    move-result v1

    #@2d
    .line 505
    if-eqz v1, :cond_0

    #@2f
    .line 508
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@31
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    move-result v1

    #@35
    return v1

    #@36
    .line 509
    :catch_0
    move-exception v0

    #@37
    .line 510
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadsetClient"

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
    .line 511
    return v3

    #@47
    .line 514
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@49
    if-nez v1, :cond_1

    #@4b
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@4e
    const-string/jumbo v2, "Proxy not attached to service"

    #@51
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    .line 515
    :cond_1
    return v3
.end method

.method public disconnectAudio()Z
    .locals 3

    #@0
    .prologue
    .line 1096
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 1098
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@c
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->disconnectAudio()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 1099
    :catch_0
    move-exception v0

    #@12
    .line 1100
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@15
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 1106
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    #@1d
    return v1

    #@1e
    .line 1103
    :cond_0
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@21
    const-string/jumbo v2, "Proxy not attached to service"

    #@24
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 1104
    const-string/jumbo v1, "BluetoothHeadsetClient"

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
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 424
    new-instance v1, Landroid/content/Intent;

    #@3
    const-class v2, Landroid/bluetooth/IBluetoothHeadsetClient;

    #@5
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@c
    .line 425
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mContext:Landroid/content/Context;

    #@e
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    #@15
    move-result-object v0

    #@16
    .line 426
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@19
    .line 427
    if-eqz v0, :cond_0

    #@1b
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mContext:Landroid/content/Context;

    #@1d
    iget-object v3, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mConnection:Landroid/content/ServiceConnection;

    #@1f
    .line 428
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@22
    move-result-object v4

    #@23
    .line 427
    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_0

    #@29
    .line 432
    const/4 v2, 0x1

    #@2a
    return v2

    #@2b
    .line 429
    :cond_0
    const-string/jumbo v2, "BluetoothHeadsetClient"

    #@2e
    new-instance v3, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v4, "Could not bind to Bluetooth Headset Client Service with "

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
    .line 430
    return v5
.end method

.method public enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 843
    const-string/jumbo v1, "enterPrivateMode()"

    #@3
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    #@6
    .line 844
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@8
    if-eqz v1, :cond_0

    #@a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 845
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@13
    move-result v1

    #@14
    .line 844
    if-eqz v1, :cond_0

    #@16
    .line 847
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@18
    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHeadsetClient;->enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result v1

    #@1c
    return v1

    #@1d
    .line 848
    :catch_0
    move-exception v0

    #@1e
    .line 849
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadsetClient"

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
    .line 852
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@2f
    if-nez v1, :cond_1

    #@31
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@34
    const-string/jumbo v2, "Proxy not attached to service"

    #@37
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 853
    :cond_1
    const/4 v1, 0x0

    #@3b
    return v1
.end method

.method public explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    .line 872
    const-string/jumbo v1, "explicitCallTransfer()"

    #@3
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    #@6
    .line 873
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@8
    if-eqz v1, :cond_0

    #@a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 874
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@13
    move-result v1

    #@14
    .line 873
    if-eqz v1, :cond_0

    #@16
    .line 876
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@18
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result v1

    #@1c
    return v1

    #@1d
    .line 877
    :catch_0
    move-exception v0

    #@1e
    .line 878
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadsetClient"

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
    .line 881
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@2f
    if-nez v1, :cond_1

    #@31
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@34
    const-string/jumbo v2, "Proxy not attached to service"

    #@37
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 882
    :cond_1
    const/4 v1, 0x0

    #@3b
    return v1
.end method

.method public getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    .line 1050
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 1052
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@c
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 1053
    :catch_0
    move-exception v0

    #@12
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@15
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 1058
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    #@1d
    return v1

    #@1e
    .line 1055
    :cond_0
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@21
    const-string/jumbo v2, "Proxy not attached to service"

    #@24
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 1056
    const-string/jumbo v1, "BluetoothHeadsetClient"

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
    .line 526
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 528
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@c
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getConnectedDevices()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 529
    :catch_0
    move-exception v0

    #@12
    .line 530
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadsetClient"

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
    .line 531
    new-instance v1, Ljava/util/ArrayList;

    #@23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@26
    return-object v1

    #@27
    .line 534
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@29
    if-nez v1, :cond_1

    #@2b
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@2e
    const-string/jumbo v2, "Proxy not attached to service"

    #@31
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 535
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
    .line 570
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@3
    if-eqz v1, :cond_0

    #@5
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 571
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@e
    move-result v1

    #@f
    .line 570
    if-eqz v1, :cond_0

    #@11
    .line 573
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@13
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 574
    :catch_0
    move-exception v0

    #@19
    .line 575
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadsetClient"

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
    .line 576
    return v3

    #@29
    .line 579
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@2b
    if-nez v1, :cond_1

    #@2d
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@30
    const-string/jumbo v2, "Proxy not attached to service"

    #@33
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 580
    :cond_1
    return v3
.end method

.method public getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 707
    const-string/jumbo v1, "getCurrentCalls()"

    #@4
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    #@7
    .line 708
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@9
    if-eqz v1, :cond_0

    #@b
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 709
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@14
    move-result v1

    #@15
    .line 708
    if-eqz v1, :cond_0

    #@17
    .line 711
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@19
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    move-result-object v1

    #@1d
    return-object v1

    #@1e
    .line 712
    :catch_0
    move-exception v0

    #@1f
    .line 713
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@22
    new-instance v2, Ljava/lang/Throwable;

    #@24
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@27
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 716
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@30
    if-nez v1, :cond_1

    #@32
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@35
    const-string/jumbo v2, "Proxy not attached to service"

    #@38
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 717
    :cond_1
    return-object v3
.end method

.method public getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1117
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@3
    if-eqz v1, :cond_0

    #@5
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 1119
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@d
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 1120
    :catch_0
    move-exception v0

    #@13
    .line 1121
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@16
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 1127
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v3

    #@1e
    .line 1124
    :cond_0
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@21
    const-string/jumbo v2, "Proxy not attached to service"

    #@24
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 1125
    const-string/jumbo v1, "BluetoothHeadsetClient"

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

.method public getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothHeadsetClientCall;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 686
    const-string/jumbo v1, "getCurrentCalls()"

    #@4
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    #@7
    .line 687
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@9
    if-eqz v1, :cond_0

    #@b
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 688
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@14
    move-result v1

    #@15
    .line 687
    if-eqz v1, :cond_0

    #@17
    .line 690
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@19
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    move-result-object v1

    #@1d
    return-object v1

    #@1e
    .line 691
    :catch_0
    move-exception v0

    #@1f
    .line 692
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@22
    new-instance v2, Ljava/lang/Throwable;

    #@24
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@27
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 695
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@30
    if-nez v1, :cond_1

    #@32
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@35
    const-string/jumbo v2, "Proxy not attached to service"

    #@38
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 696
    :cond_1
    return-object v3
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
    .line 549
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 551
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@c
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 552
    :catch_0
    move-exception v0

    #@12
    .line 553
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadsetClient"

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
    .line 554
    new-instance v1, Ljava/util/ArrayList;

    #@23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@26
    return-object v1

    #@27
    .line 557
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@29
    if-nez v1, :cond_1

    #@2b
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@2e
    const-string/jumbo v2, "Proxy not attached to service"

    #@31
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 558
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    #@36
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@39
    return-object v1
.end method

.method public getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    .line 998
    const-string/jumbo v1, "getLastVoiceTagNumber()"

    #@3
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    #@6
    .line 999
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@8
    if-eqz v1, :cond_0

    #@a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 1000
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@13
    move-result v1

    #@14
    .line 999
    if-eqz v1, :cond_0

    #@16
    .line 1002
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@18
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result v1

    #@1c
    return v1

    #@1d
    .line 1003
    :catch_0
    move-exception v0

    #@1e
    .line 1004
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadsetClient"

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
    .line 1007
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@2f
    if-nez v1, :cond_1

    #@31
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@34
    const-string/jumbo v2, "Proxy not attached to service"

    #@37
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 1008
    :cond_1
    const/4 v1, 0x0

    #@3b
    return v1
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 612
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@3
    if-eqz v1, :cond_0

    #@5
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 613
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@e
    move-result v1

    #@f
    .line 612
    if-eqz v1, :cond_0

    #@11
    .line 615
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@13
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 616
    :catch_0
    move-exception v0

    #@19
    .line 617
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadsetClient"

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
    .line 618
    return v3

    #@29
    .line 621
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@2b
    if-nez v1, :cond_1

    #@2d
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@30
    const-string/jumbo v2, "Proxy not attached to service"

    #@33
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 622
    :cond_1
    return v3
.end method

.method public holdCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    .line 756
    const-string/jumbo v1, "holdCall()"

    #@3
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    #@6
    .line 757
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@8
    if-eqz v1, :cond_0

    #@a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 758
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@13
    move-result v1

    #@14
    .line 757
    if-eqz v1, :cond_0

    #@16
    .line 760
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@18
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->holdCall(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result v1

    #@1c
    return v1

    #@1d
    .line 761
    :catch_0
    move-exception v0

    #@1e
    .line 762
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadsetClient"

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
    .line 765
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@2f
    if-nez v1, :cond_1

    #@31
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@34
    const-string/jumbo v2, "Proxy not attached to service"

    #@37
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 766
    :cond_1
    const/4 v1, 0x0

    #@3b
    return v1
.end method

.method public redial(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    .line 896
    const-string/jumbo v1, "redial()"

    #@3
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    #@6
    .line 897
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@8
    if-eqz v1, :cond_0

    #@a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 898
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@13
    move-result v1

    #@14
    .line 897
    if-eqz v1, :cond_0

    #@16
    .line 900
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@18
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->redial(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result v1

    #@1c
    return v1

    #@1d
    .line 901
    :catch_0
    move-exception v0

    #@1e
    .line 902
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadsetClient"

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
    .line 905
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@2f
    if-nez v1, :cond_1

    #@31
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@34
    const-string/jumbo v2, "Proxy not attached to service"

    #@37
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 906
    :cond_1
    const/4 v1, 0x0

    #@3b
    return v1
.end method

.method public rejectCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    .line 783
    const-string/jumbo v1, "rejectCall()"

    #@3
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    #@6
    .line 784
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@8
    if-eqz v1, :cond_0

    #@a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 785
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@13
    move-result v1

    #@14
    .line 784
    if-eqz v1, :cond_0

    #@16
    .line 787
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@18
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->rejectCall(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result v1

    #@1c
    return v1

    #@1d
    .line 788
    :catch_0
    move-exception v0

    #@1e
    .line 789
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadsetClient"

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
    .line 792
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@2f
    if-nez v1, :cond_1

    #@31
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@34
    const-string/jumbo v2, "Proxy not attached to service"

    #@37
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 793
    :cond_1
    const/4 v1, 0x0

    #@3b
    return v1
.end method

.method public rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    .line 1031
    const-string/jumbo v1, "rejectIncomingConnect"

    #@3
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    #@6
    .line 1032
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 1034
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@c
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 1035
    :catch_0
    move-exception v0

    #@12
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@15
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 1040
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    #@1d
    return v1

    #@1e
    .line 1037
    :cond_0
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@21
    const-string/jumbo v2, "Proxy not attached to service"

    #@24
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 1038
    const-string/jumbo v1, "BluetoothHeadsetClient"

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

.method public sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "code"    # B

    #@0
    .prologue
    .line 971
    const-string/jumbo v1, "sendDTMF()"

    #@3
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    #@6
    .line 972
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@8
    if-eqz v1, :cond_0

    #@a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 973
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@13
    move-result v1

    #@14
    .line 972
    if-eqz v1, :cond_0

    #@16
    .line 975
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@18
    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHeadsetClient;->sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result v1

    #@1c
    return v1

    #@1d
    .line 976
    :catch_0
    move-exception v0

    #@1e
    .line 977
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadsetClient"

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
    .line 980
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@2f
    if-nez v1, :cond_1

    #@31
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@34
    const-string/jumbo v2, "Proxy not attached to service"

    #@37
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 981
    :cond_1
    const/4 v1, 0x0

    #@3b
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
    .line 589
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
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    #@2a
    .line 590
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@2c
    if-eqz v1, :cond_1

    #@2e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_1

    #@34
    .line 591
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@37
    move-result v1

    #@38
    .line 590
    if-eqz v1, :cond_1

    #@3a
    .line 592
    if-eqz p2, :cond_0

    #@3c
    .line 593
    const/16 v1, 0x64

    #@3e
    if-eq p2, v1, :cond_0

    #@40
    .line 594
    return v3

    #@41
    .line 597
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@43
    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHeadsetClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    move-result v1

    #@47
    return v1

    #@48
    .line 598
    :catch_0
    move-exception v0

    #@49
    .line 599
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadsetClient"

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
    .line 600
    return v3

    #@59
    .line 603
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@5b
    if-nez v1, :cond_2

    #@5d
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@60
    const-string/jumbo v2, "Proxy not attached to service"

    #@63
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    .line 604
    :cond_2
    return v3
.end method

.method public startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    .line 639
    const-string/jumbo v1, "startVoiceRecognition()"

    #@3
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    #@6
    .line 640
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@8
    if-eqz v1, :cond_0

    #@a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 641
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@13
    move-result v1

    #@14
    .line 640
    if-eqz v1, :cond_0

    #@16
    .line 643
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@18
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result v1

    #@1c
    return v1

    #@1d
    .line 644
    :catch_0
    move-exception v0

    #@1e
    .line 645
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadsetClient"

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
    .line 648
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@2f
    if-nez v1, :cond_1

    #@31
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@34
    const-string/jumbo v2, "Proxy not attached to service"

    #@37
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 649
    :cond_1
    const/4 v1, 0x0

    #@3b
    return v1
.end method

.method public stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    .line 666
    const-string/jumbo v1, "stopVoiceRecognition()"

    #@3
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    #@6
    .line 667
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@8
    if-eqz v1, :cond_0

    #@a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 668
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@13
    move-result v1

    #@14
    .line 667
    if-eqz v1, :cond_0

    #@16
    .line 670
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@18
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result v1

    #@1c
    return v1

    #@1d
    .line 671
    :catch_0
    move-exception v0

    #@1e
    .line 672
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadsetClient"

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
    .line 675
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@2f
    if-nez v1, :cond_1

    #@31
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@34
    const-string/jumbo v2, "Proxy not attached to service"

    #@37
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 676
    :cond_1
    const/4 v1, 0x0

    #@3b
    return v1
.end method

.method public terminateCall(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 813
    const-string/jumbo v1, "terminateCall()"

    #@3
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    #@6
    .line 814
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@8
    if-eqz v1, :cond_0

    #@a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 815
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    #@13
    move-result v1

    #@14
    .line 814
    if-eqz v1, :cond_0

    #@16
    .line 817
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@18
    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHeadsetClient;->terminateCall(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result v1

    #@1c
    return v1

    #@1d
    .line 818
    :catch_0
    move-exception v0

    #@1e
    .line 819
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothHeadsetClient"

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
    .line 822
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    #@2f
    if-nez v1, :cond_1

    #@31
    const-string/jumbo v1, "BluetoothHeadsetClient"

    #@34
    const-string/jumbo v2, "Proxy not attached to service"

    #@37
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 823
    :cond_1
    const/4 v1, 0x0

    #@3b
    return v1
.end method
