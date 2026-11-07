.class public Landroid/bluetooth/AudioInputControl;
.super Ljava/lang/Object;
.source "AudioInputControl.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/AudioInputControl$AudioInputCallback;,
        Landroid/bluetooth/AudioInputControl$GainModeSettable;,
        Landroid/bluetooth/AudioInputControl$GainMode;,
        Landroid/bluetooth/AudioInputControl$MuteSettable;,
        Landroid/bluetooth/AudioInputControl$Mute;,
        Landroid/bluetooth/AudioInputControl$AudioInputStatus;,
        Landroid/bluetooth/AudioInputControl$AudioInputType;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_INPUT_STATUS_ACTIVE:I = 0x1

.field public static final whitelist AUDIO_INPUT_STATUS_INACTIVE:I = 0x0

.field public static final whitelist AUDIO_INPUT_STATUS_UNKNOWN:I = -0x1

.field public static final whitelist AUDIO_INPUT_TYPE_AMBIENT:I = 0x7

.field public static final whitelist AUDIO_INPUT_TYPE_ANALOG:I = 0x3

.field public static final whitelist AUDIO_INPUT_TYPE_BLUETOOTH:I = 0x1

.field public static final whitelist AUDIO_INPUT_TYPE_DIGITAL:I = 0x4

.field public static final whitelist AUDIO_INPUT_TYPE_MICROPHONE:I = 0x2

.field public static final whitelist AUDIO_INPUT_TYPE_RADIO:I = 0x5

.field public static final whitelist AUDIO_INPUT_TYPE_STREAMING:I = 0x6

.field public static final whitelist AUDIO_INPUT_TYPE_UNSPECIFIED:I = 0x0

.field public static final whitelist GAIN_MODE_AUTOMATIC:I = 0x3

.field public static final whitelist GAIN_MODE_AUTOMATIC_ONLY:I = 0x1

.field public static final whitelist GAIN_MODE_MANUAL:I = 0x2

.field public static final whitelist GAIN_MODE_MANUAL_ONLY:I = 0x0

.field public static final whitelist MUTE_DISABLED:I = 0x2

.field public static final whitelist MUTE_MUTED:I = 0x1

.field public static final whitelist MUTE_NOT_MUTED:I

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mCallback:Landroid/bluetooth/IAudioInputCallback;

.field private final blacklist mCallbackWrapper:Landroid/bluetooth/CallbackWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/bluetooth/CallbackWrapper<",
            "Landroid/bluetooth/AudioInputControl$AudioInputCallback;",
            "Landroid/bluetooth/IBluetoothVolumeControl;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final blacklist mInstanceId:I

.field private final blacklist mService:Landroid/bluetooth/IBluetoothVolumeControl;


# direct methods
.method public static synthetic blacklist $r8$lambda$-w4cGYZ8iDxIYCEkWlsfxC63m0s(Landroid/bluetooth/AudioInputControl;ILandroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Boolean;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/AudioInputControl;->lambda$setGainMode$12(ILandroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$9GHhz1Zjl3h6YgSy2579AVl-0VM(Landroid/bluetooth/AudioInputControl;Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/AudioInputControl;->lambda$getGainSetting$9(Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$NaKy8ybAZpn0Py5r5zNwFpfBp-4(Landroid/bluetooth/AudioInputControl;Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/AudioInputControl;->lambda$getAudioInputStatus$8(Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Nf6m0A_YHZWsTGTJM-CezfB2VIY(Landroid/bluetooth/AudioInputControl;Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/AudioInputControl;->lambda$getGainSettingUnit$2(Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$OeXcNB7XUnmHnircLT5FjowYD1M(Landroid/bluetooth/AudioInputControl;Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/AudioInputControl;->lambda$isDescriptionWritable$6(Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Q6L2UYgxyw3qmBs1-XbF1U5Fvxw(Landroid/bluetooth/AudioInputControl;Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/AudioInputControl;->lambda$getDescription$5(Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Sm6FkYzyKDe6uASwrHeNijgqGuM(Landroid/bluetooth/AudioInputControl;ILandroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Boolean;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/AudioInputControl;->lambda$setMute$14(ILandroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$VDw1iTucVxkq7gdEI-1ZBckm4L8(Landroid/bluetooth/AudioInputControl;Landroid/bluetooth/IBluetoothVolumeControl;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/AudioInputControl;->unregisterCallbackFn(Landroid/bluetooth/IBluetoothVolumeControl;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_gn0f316_oi9zaY2z6xBcOayugs(Landroid/bluetooth/AudioInputControl;Ljava/lang/String;Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Boolean;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/AudioInputControl;->lambda$setDescription$7(Ljava/lang/String;Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$_ppg_kc0h12Z0qoHPclujklaSjs(Landroid/bluetooth/AudioInputControl;ILandroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Boolean;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/AudioInputControl;->lambda$setGainSetting$10(ILandroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$dYHdd85JaVhWkoKUB0Vq7mJxl74(Landroid/bluetooth/AudioInputControl;Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/AudioInputControl;->lambda$getGainMode$11(Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$e0u4oA1ggMzmykUNcRQFcPkXtCo(Landroid/bluetooth/AudioInputControl;Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/AudioInputControl;->lambda$getAudioInputType$1(Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$eV7LervOFTx2FwILvLKMAkR63Do(Landroid/bluetooth/AudioInputControl;Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/AudioInputControl;->lambda$getMute$13(Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$pukNPicn84_9BQupMs-463zW6Xg(Landroid/bluetooth/AudioInputControl;Landroid/bluetooth/IBluetoothVolumeControl;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/AudioInputControl;->registerCallbackFn(Landroid/bluetooth/IBluetoothVolumeControl;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qhTZXOSOcz-MdGfVjWiclAfdqPo(Landroid/bluetooth/AudioInputControl;Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/AudioInputControl;->lambda$getGainSettingMin$3(Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$vR3_wDsNhWJTERXwhzcM2Cuzg0w(Landroid/bluetooth/AudioInputControl;Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/AudioInputControl;->lambda$getGainSettingMax$4(Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbackWrapper(Landroid/bluetooth/AudioInputControl;)Landroid/bluetooth/CallbackWrapper;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/AudioInputControl;->mCallbackWrapper:Landroid/bluetooth/CallbackWrapper;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 61
    const-class v0, Landroid/bluetooth/AudioInputControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/AudioInputControl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/IBluetoothVolumeControl;Landroid/content/AttributionSource;)V
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "id"    # I
    .param p3, "service"    # Landroid/bluetooth/IBluetoothVolumeControl;
    .param p4, "source"    # Landroid/content/AttributionSource;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    new-instance v0, Landroid/bluetooth/AudioInputControl$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/AudioInputControl$1;-><init>(Landroid/bluetooth/AudioInputControl;)V

    iput-object v0, p0, Landroid/bluetooth/AudioInputControl;->mCallback:Landroid/bluetooth/IAudioInputCallback;

    .line 239
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Landroid/bluetooth/AudioInputControl;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 240
    iput p2, p0, Landroid/bluetooth/AudioInputControl;->mInstanceId:I

    .line 241
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothVolumeControl;

    iput-object v0, p0, Landroid/bluetooth/AudioInputControl;->mService:Landroid/bluetooth/IBluetoothVolumeControl;

    .line 242
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    iput-object v0, p0, Landroid/bluetooth/AudioInputControl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 243
    new-instance v0, Landroid/bluetooth/CallbackWrapper;

    new-instance v1, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda14;-><init>(Landroid/bluetooth/AudioInputControl;)V

    new-instance v2, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda15;-><init>(Landroid/bluetooth/AudioInputControl;)V

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/CallbackWrapper;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Landroid/bluetooth/AudioInputControl;->mCallbackWrapper:Landroid/bluetooth/CallbackWrapper;

    .line 246
    return-void
.end method

.method static blacklist getAudioInputControlServices(Landroid/bluetooth/IBluetoothVolumeControl;Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;
    .registers 6
    .param p0, "service"    # Landroid/bluetooth/IBluetoothVolumeControl;
    .param p1, "source"    # Landroid/content/AttributionSource;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/IBluetoothVolumeControl;",
            "Landroid/content/AttributionSource;",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/AudioInputControl;",
            ">;"
        }
    .end annotation

    .line 314
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const/4 v0, 0x0

    .line 319
    .local v0, "numberOfAics":I
    :try_start_a
    invoke-interface {p0, p1, p2}, Landroid/bluetooth/IBluetoothVolumeControl;->getNumberOfAudioInputControlServices(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;)I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_10

    move v0, v1

    .line 322
    goto :goto_16

    .line 320
    :catch_10
    move-exception v1

    .line 321
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/AudioInputControl;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V

    .line 323
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_16
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda8;

    invoke-direct {v2, p2, p0, p1}, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda8;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothVolumeControl;Landroid/content/AttributionSource;)V

    .line 324
    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 325
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 323
    return-object v1
.end method

.method static synthetic blacklist lambda$getAudioInputControlServices$0(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothVolumeControl;Landroid/content/AttributionSource;I)Landroid/bluetooth/AudioInputControl;
    .registers 5
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "service"    # Landroid/bluetooth/IBluetoothVolumeControl;
    .param p2, "source"    # Landroid/content/AttributionSource;
    .param p3, "i"    # I

    .line 324
    new-instance v0, Landroid/bluetooth/AudioInputControl;

    invoke-direct {v0, p0, p3, p1, p2}, Landroid/bluetooth/AudioInputControl;-><init>(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/IBluetoothVolumeControl;Landroid/content/AttributionSource;)V

    return-object v0
.end method

.method private synthetic blacklist lambda$getAudioInputStatus$8(Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;
    .registers 5
    .param p1, "s"    # Landroid/bluetooth/IBluetoothVolumeControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 541
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl;->mAttributionSource:Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/bluetooth/AudioInputControl;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Landroid/bluetooth/AudioInputControl;->mInstanceId:I

    invoke-interface {p1, v0, v1, v2}, Landroid/bluetooth/IBluetoothVolumeControl;->getAudioInputStatus(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getAudioInputType$1(Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;
    .registers 5
    .param p1, "s"    # Landroid/bluetooth/IBluetoothVolumeControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 411
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl;->mAttributionSource:Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/bluetooth/AudioInputControl;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Landroid/bluetooth/AudioInputControl;->mInstanceId:I

    invoke-interface {p1, v0, v1, v2}, Landroid/bluetooth/IBluetoothVolumeControl;->getAudioInputType(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getDescription$5(Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/String;
    .registers 5
    .param p1, "s"    # Landroid/bluetooth/IBluetoothVolumeControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 484
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl;->mAttributionSource:Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/bluetooth/AudioInputControl;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Landroid/bluetooth/AudioInputControl;->mInstanceId:I

    invoke-interface {p1, v0, v1, v2}, Landroid/bluetooth/IBluetoothVolumeControl;->getAudioInputDescription(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getGainMode$11(Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;
    .registers 5
    .param p1, "s"    # Landroid/bluetooth/IBluetoothVolumeControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 616
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl;->mAttributionSource:Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/bluetooth/AudioInputControl;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Landroid/bluetooth/AudioInputControl;->mInstanceId:I

    invoke-interface {p1, v0, v1, v2}, Landroid/bluetooth/IBluetoothVolumeControl;->getAudioInputGainMode(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getGainSetting$9(Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;
    .registers 5
    .param p1, "s"    # Landroid/bluetooth/IBluetoothVolumeControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 560
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl;->mAttributionSource:Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/bluetooth/AudioInputControl;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Landroid/bluetooth/AudioInputControl;->mInstanceId:I

    invoke-interface {p1, v0, v1, v2}, Landroid/bluetooth/IBluetoothVolumeControl;->getAudioInputGainSetting(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getGainSettingMax$4(Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;
    .registers 5
    .param p1, "s"    # Landroid/bluetooth/IBluetoothVolumeControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 460
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl;->mAttributionSource:Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/bluetooth/AudioInputControl;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Landroid/bluetooth/AudioInputControl;->mInstanceId:I

    invoke-interface {p1, v0, v1, v2}, Landroid/bluetooth/IBluetoothVolumeControl;->getAudioInputGainSettingMax(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getGainSettingMin$3(Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;
    .registers 5
    .param p1, "s"    # Landroid/bluetooth/IBluetoothVolumeControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 444
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl;->mAttributionSource:Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/bluetooth/AudioInputControl;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Landroid/bluetooth/AudioInputControl;->mInstanceId:I

    invoke-interface {p1, v0, v1, v2}, Landroid/bluetooth/IBluetoothVolumeControl;->getAudioInputGainSettingMin(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getGainSettingUnit$2(Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;
    .registers 5
    .param p1, "s"    # Landroid/bluetooth/IBluetoothVolumeControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 428
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl;->mAttributionSource:Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/bluetooth/AudioInputControl;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Landroid/bluetooth/AudioInputControl;->mInstanceId:I

    invoke-interface {p1, v0, v1, v2}, Landroid/bluetooth/IBluetoothVolumeControl;->getAudioInputGainSettingUnit(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getMute$13(Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;
    .registers 5
    .param p1, "s"    # Landroid/bluetooth/IBluetoothVolumeControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 666
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl;->mAttributionSource:Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/bluetooth/AudioInputControl;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Landroid/bluetooth/AudioInputControl;->mInstanceId:I

    invoke-interface {p1, v0, v1, v2}, Landroid/bluetooth/IBluetoothVolumeControl;->getAudioInputMute(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$isDescriptionWritable$6(Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Boolean;
    .registers 5
    .param p1, "s"    # Landroid/bluetooth/IBluetoothVolumeControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 498
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl;->mAttributionSource:Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/bluetooth/AudioInputControl;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Landroid/bluetooth/AudioInputControl;->mInstanceId:I

    invoke-interface {p1, v0, v1, v2}, Landroid/bluetooth/IBluetoothVolumeControl;->isAudioInputDescriptionWritable(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$setDescription$7(Ljava/lang/String;Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Boolean;
    .registers 6
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "s"    # Landroid/bluetooth/IBluetoothVolumeControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 523
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl;->mAttributionSource:Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/bluetooth/AudioInputControl;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Landroid/bluetooth/AudioInputControl;->mInstanceId:I

    invoke-interface {p2, v0, v1, v2, p1}, Landroid/bluetooth/IBluetoothVolumeControl;->setAudioInputDescription(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$setGainMode$12(ILandroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Boolean;
    .registers 6
    .param p1, "gainMode"    # I
    .param p2, "s"    # Landroid/bluetooth/IBluetoothVolumeControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 649
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl;->mAttributionSource:Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/bluetooth/AudioInputControl;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Landroid/bluetooth/AudioInputControl;->mInstanceId:I

    invoke-interface {p2, v0, v1, v2, p1}, Landroid/bluetooth/IBluetoothVolumeControl;->setAudioInputGainMode(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$setGainSetting$10(ILandroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Boolean;
    .registers 6
    .param p1, "gainSetting"    # I
    .param p2, "s"    # Landroid/bluetooth/IBluetoothVolumeControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 598
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl;->mAttributionSource:Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/bluetooth/AudioInputControl;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Landroid/bluetooth/AudioInputControl;->mInstanceId:I

    invoke-interface {p2, v0, v1, v2, p1}, Landroid/bluetooth/IBluetoothVolumeControl;->setAudioInputGainSetting(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$setMute$14(ILandroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Boolean;
    .registers 6
    .param p1, "mute"    # I
    .param p2, "s"    # Landroid/bluetooth/IBluetoothVolumeControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 696
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl;->mAttributionSource:Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/bluetooth/AudioInputControl;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Landroid/bluetooth/AudioInputControl;->mInstanceId:I

    invoke-interface {p2, v0, v1, v2, p1}, Landroid/bluetooth/IBluetoothVolumeControl;->setAudioInputMute(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private blacklist registerCallbackFn(Landroid/bluetooth/IBluetoothVolumeControl;)V
    .registers 6
    .param p1, "vcs"    # Landroid/bluetooth/IBluetoothVolumeControl;

    .line 251
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl;->mAttributionSource:Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/bluetooth/AudioInputControl;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Landroid/bluetooth/AudioInputControl;->mInstanceId:I

    iget-object v3, p0, Landroid/bluetooth/AudioInputControl;->mCallback:Landroid/bluetooth/IAudioInputCallback;

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothVolumeControl;->registerAudioInputControlCallback(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/IAudioInputCallback;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 255
    goto :goto_12

    .line 253
    :catch_c
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/bluetooth/AudioInputControl;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V

    .line 256
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method private blacklist unregisterCallbackFn(Landroid/bluetooth/IBluetoothVolumeControl;)V
    .registers 6
    .param p1, "vcs"    # Landroid/bluetooth/IBluetoothVolumeControl;

    .line 261
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl;->mAttributionSource:Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/bluetooth/AudioInputControl;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Landroid/bluetooth/AudioInputControl;->mInstanceId:I

    iget-object v3, p0, Landroid/bluetooth/AudioInputControl;->mCallback:Landroid/bluetooth/IAudioInputCallback;

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothVolumeControl;->unregisterAudioInputControlCallback(Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/IAudioInputCallback;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 265
    goto :goto_12

    .line 263
    :catch_c
    move-exception v0

    .line 264
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/bluetooth/AudioInputControl;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V

    .line 266
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method


# virtual methods
.method public whitelist getAudioInputStatus()I
    .registers 4

    .line 539
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl;->mService:Landroid/bluetooth/IBluetoothVolumeControl;

    new-instance v1, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda4;-><init>(Landroid/bluetooth/AudioInputControl;)V

    .line 542
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 539
    invoke-static {v0, v1, v2}, Landroid/bluetooth/BluetoothUtils;->callService(Ljava/lang/Object;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getAudioInputType()I
    .registers 4

    .line 409
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl;->mService:Landroid/bluetooth/IBluetoothVolumeControl;

    new-instance v1, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda11;-><init>(Landroid/bluetooth/AudioInputControl;)V

    .line 412
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 409
    invoke-static {v0, v1, v2}, Landroid/bluetooth/BluetoothUtils;->callService(Ljava/lang/Object;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getDescription()Ljava/lang/String;
    .registers 4

    .line 482
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl;->mService:Landroid/bluetooth/IBluetoothVolumeControl;

    new-instance v1, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda13;-><init>(Landroid/bluetooth/AudioInputControl;)V

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/bluetooth/BluetoothUtils;->callService(Ljava/lang/Object;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getGainMode()I
    .registers 4

    .line 614
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl;->mService:Landroid/bluetooth/IBluetoothVolumeControl;

    new-instance v1, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda16;-><init>(Landroid/bluetooth/AudioInputControl;)V

    .line 617
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 614
    invoke-static {v0, v1, v2}, Landroid/bluetooth/BluetoothUtils;->callService(Ljava/lang/Object;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getGainSetting()I
    .registers 4

    .line 558
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl;->mService:Landroid/bluetooth/IBluetoothVolumeControl;

    new-instance v1, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda9;-><init>(Landroid/bluetooth/AudioInputControl;)V

    .line 561
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 558
    invoke-static {v0, v1, v2}, Landroid/bluetooth/BluetoothUtils;->callService(Ljava/lang/Object;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getGainSettingMax()I
    .registers 4

    .line 458
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl;->mService:Landroid/bluetooth/IBluetoothVolumeControl;

    new-instance v1, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda2;-><init>(Landroid/bluetooth/AudioInputControl;)V

    .line 461
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 458
    invoke-static {v0, v1, v2}, Landroid/bluetooth/BluetoothUtils;->callService(Ljava/lang/Object;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getGainSettingMin()I
    .registers 4

    .line 442
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl;->mService:Landroid/bluetooth/IBluetoothVolumeControl;

    new-instance v1, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda5;-><init>(Landroid/bluetooth/AudioInputControl;)V

    .line 445
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 442
    invoke-static {v0, v1, v2}, Landroid/bluetooth/BluetoothUtils;->callService(Ljava/lang/Object;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getGainSettingUnit()I
    .registers 4

    .line 426
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl;->mService:Landroid/bluetooth/IBluetoothVolumeControl;

    new-instance v1, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda7;-><init>(Landroid/bluetooth/AudioInputControl;)V

    .line 429
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 426
    invoke-static {v0, v1, v2}, Landroid/bluetooth/BluetoothUtils;->callService(Ljava/lang/Object;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getMute()I
    .registers 4

    .line 664
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl;->mService:Landroid/bluetooth/IBluetoothVolumeControl;

    new-instance v1, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda10;-><init>(Landroid/bluetooth/AudioInputControl;)V

    .line 667
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 664
    invoke-static {v0, v1, v2}, Landroid/bluetooth/BluetoothUtils;->callService(Ljava/lang/Object;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist isDescriptionWritable()Z
    .registers 4

    .line 496
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl;->mService:Landroid/bluetooth/IBluetoothVolumeControl;

    new-instance v1, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/AudioInputControl;)V

    .line 499
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 496
    invoke-static {v0, v1, v2}, Landroid/bluetooth/BluetoothUtils;->callService(Ljava/lang/Object;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist registerCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/AudioInputControl$AudioInputCallback;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/bluetooth/AudioInputControl$AudioInputCallback;

    .line 377
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl;->mCallbackWrapper:Landroid/bluetooth/CallbackWrapper;

    iget-object v1, p0, Landroid/bluetooth/AudioInputControl;->mService:Landroid/bluetooth/IBluetoothVolumeControl;

    invoke-virtual {v0, v1, p2, p1}, Landroid/bluetooth/CallbackWrapper;->registerCallback(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 378
    return-void
.end method

.method public whitelist setDescription(Ljava/lang/String;)Z
    .registers 5
    .param p1, "description"    # Ljava/lang/String;

    .line 519
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl;->mService:Landroid/bluetooth/IBluetoothVolumeControl;

    new-instance v1, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda6;-><init>(Landroid/bluetooth/AudioInputControl;Ljava/lang/String;)V

    .line 525
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 520
    invoke-static {v0, v1, v2}, Landroid/bluetooth/BluetoothUtils;->callService(Ljava/lang/Object;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist setGainMode(I)Z
    .registers 5
    .param p1, "gainMode"    # I

    .line 644
    const/4 v0, 0x2

    if-eq p1, v0, :cond_20

    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    goto :goto_20

    .line 645
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal GainMode value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :cond_20
    :goto_20
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl;->mService:Landroid/bluetooth/IBluetoothVolumeControl;

    new-instance v1, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda12;-><init>(Landroid/bluetooth/AudioInputControl;I)V

    .line 650
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 647
    invoke-static {v0, v1, v2}, Landroid/bluetooth/BluetoothUtils;->callService(Ljava/lang/Object;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist setGainSetting(I)Z
    .registers 5
    .param p1, "gainSetting"    # I

    .line 595
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl;->mService:Landroid/bluetooth/IBluetoothVolumeControl;

    new-instance v1, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/AudioInputControl;I)V

    .line 600
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 595
    invoke-static {v0, v1, v2}, Landroid/bluetooth/BluetoothUtils;->callService(Ljava/lang/Object;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist setMute(I)Z
    .registers 5
    .param p1, "mute"    # I

    .line 691
    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_1f

    .line 692
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal mute value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 694
    :cond_1f
    :goto_1f
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl;->mService:Landroid/bluetooth/IBluetoothVolumeControl;

    new-instance v1, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda3;-><init>(Landroid/bluetooth/AudioInputControl;I)V

    .line 697
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 694
    invoke-static {v0, v1, v2}, Landroid/bluetooth/BluetoothUtils;->callService(Ljava/lang/Object;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist unregisterCallback(Landroid/bluetooth/AudioInputControl$AudioInputCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/bluetooth/AudioInputControl$AudioInputCallback;

    .line 394
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl;->mCallbackWrapper:Landroid/bluetooth/CallbackWrapper;

    iget-object v1, p0, Landroid/bluetooth/AudioInputControl;->mService:Landroid/bluetooth/IBluetoothVolumeControl;

    invoke-virtual {v0, v1, p1}, Landroid/bluetooth/CallbackWrapper;->unregisterCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 395
    return-void
.end method
