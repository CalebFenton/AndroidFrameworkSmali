.class public final Landroid/media/AudioPlaybackConfiguration;
.super Ljava/lang/Object;
.source "AudioPlaybackConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioPlaybackConfiguration$IPlayerShell;,
        Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;,
        Landroid/media/AudioPlaybackConfiguration$FormatInfo;,
        Landroid/media/AudioPlaybackConfiguration$PlayerMuteEvent;,
        Landroid/media/AudioPlaybackConfiguration$PlayerState;,
        Landroid/media/AudioPlaybackConfiguration$PlayerType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEBUG:Z = false

.field public static final blacklist EXTRA_PLAYER_EVENT_CHANNEL_MASK:Ljava/lang/String; = "android.media.extra.PLAYER_EVENT_CHANNEL_MASK"

.field public static final blacklist EXTRA_PLAYER_EVENT_MUTE:Ljava/lang/String; = "android.media.extra.PLAYER_EVENT_MUTE"

.field public static final blacklist EXTRA_PLAYER_EVENT_SAMPLE_RATE:Ljava/lang/String; = "android.media.extra.PLAYER_EVENT_SAMPLE_RATE"

.field public static final blacklist EXTRA_PLAYER_EVENT_SPATIALIZED:Ljava/lang/String; = "android.media.extra.PLAYER_EVENT_SPATIALIZED"

.field public static final whitelist MUTED_BY_APP_OPS:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MUTED_BY_CLIENT_VOLUME:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MUTED_BY_MASTER:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MUTED_BY_OP_CONTROL_AUDIO:I = 0x80
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MUTED_BY_OP_PLAY_AUDIO:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MUTED_BY_PORT_VOLUME:I = 0x40
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MUTED_BY_STREAM_MUTED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MUTED_BY_STREAM_VOLUME:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MUTED_BY_VOLUME_SHAPER:I = 0x20
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist PLAYER_DEVICEIDS_INVALID:[I

.field public static final blacklist PLAYER_DEVICEID_INVALID:I = 0x0

.field public static final greylist-max-o PLAYER_PIID_INVALID:I = -0x1

.field public static final whitelist PLAYER_STATE_IDLE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PLAYER_STATE_PAUSED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PLAYER_STATE_RELEASED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PLAYER_STATE_STARTED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PLAYER_STATE_STOPPED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PLAYER_STATE_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PLAYER_TYPE_AAUDIO:I = 0xd
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o PLAYER_TYPE_EXTERNAL_PROXY:I = 0xf

.field public static final greylist-max-o PLAYER_TYPE_HW_SOURCE:I = 0xe

.field public static final whitelist PLAYER_TYPE_JAM_AUDIOTRACK:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PLAYER_TYPE_JAM_MEDIAPLAYER:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PLAYER_TYPE_JAM_SOUNDPOOL:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PLAYER_TYPE_SLES_AUDIOPLAYER_BUFFERQUEUE:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PLAYER_TYPE_SLES_AUDIOPLAYER_URI_FD:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PLAYER_TYPE_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist PLAYER_UPDATE_DEVICE_ID:I = 0x5

.field public static final blacklist PLAYER_UPDATE_FORMAT:I = 0x8

.field public static final blacklist PLAYER_UPDATE_MUTED:I = 0x7

.field public static final blacklist PLAYER_UPDATE_PORT_ID:I = 0x6

.field public static final greylist-max-o PLAYER_UPID_INVALID:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String;

.field public static greylist-max-o sPlayerDeathMonitor:Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;


# instance fields
.field private greylist-max-o mClientPid:I

.field private greylist-max-o mClientUid:I

.field private blacklist mDeviceIds:[I

.field private blacklist mFormatInfo:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

.field private greylist-max-o mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

.field private blacklist mMutedState:I

.field private greylist-max-o mPlayerAttr:Landroid/media/AudioAttributes;

.field private final greylist-max-o mPlayerIId:I

.field private greylist-max-o mPlayerState:I

.field private greylist-max-o mPlayerType:I

.field private blacklist mSessionId:I

.field private final blacklist mUpdateablePropLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPlayerIId(Landroid/media/AudioPlaybackConfiguration;)I
    .registers 1

    iget p0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mplayerDied(Landroid/media/AudioPlaybackConfiguration;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/AudioPlaybackConfiguration;->playerDied()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 53
    new-instance v0, Ljava/lang/String;

    const-string v1, "AudioPlaybackConfiguration"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/media/AudioPlaybackConfiguration;->TAG:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/media/AudioPlaybackConfiguration;->PLAYER_DEVICEIDS_INVALID:[I

    .line 818
    new-instance v0, Landroid/media/AudioPlaybackConfiguration$1;

    invoke-direct {v0}, Landroid/media/AudioPlaybackConfiguration$1;-><init>()V

    sput-object v0, Landroid/media/AudioPlaybackConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(I)V
    .registers 3
    .param p1, "piid"    # I

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    .line 360
    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->PLAYER_DEVICEIDS_INVALID:[I

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    .line 373
    iput p1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    .line 374
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    .line 375
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/media/PlayerBase$PlayerIdCard;III)V
    .registers 7
    .param p1, "pic"    # Landroid/media/PlayerBase$PlayerIdCard;
    .param p2, "piid"    # I
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    .line 360
    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->PLAYER_DEVICEIDS_INVALID:[I

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    .line 385
    iput p2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    .line 386
    iget v0, p1, Landroid/media/PlayerBase$PlayerIdCard;->mPlayerType:I

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    .line 387
    iput p3, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    .line 388
    iput p4, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    .line 389
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    .line 390
    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->PLAYER_DEVICEIDS_INVALID:[I

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    .line 391
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    .line 392
    iget-object v0, p1, Landroid/media/PlayerBase$PlayerIdCard;->mAttributes:Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    .line 393
    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->sPlayerDeathMonitor:Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;

    if-eqz v0, :cond_38

    iget-object v0, p1, Landroid/media/PlayerBase$PlayerIdCard;->mIPlayer:Landroid/media/IPlayer;

    if-eqz v0, :cond_38

    .line 394
    new-instance v0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    iget-object v1, p1, Landroid/media/PlayerBase$PlayerIdCard;->mIPlayer:Landroid/media/IPlayer;

    invoke-direct {v0, p0, v1}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;-><init>(Landroid/media/AudioPlaybackConfiguration;Landroid/media/IPlayer;)V

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    goto :goto_3b

    .line 396
    :cond_38
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    .line 398
    :goto_3b
    iget v0, p1, Landroid/media/PlayerBase$PlayerIdCard;->mSessionId:I

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mSessionId:I

    .line 399
    sget-object v0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->DEFAULT:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mFormatInfo:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    .line 400
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    .line 360
    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->PLAYER_DEVICEIDS_INVALID:[I

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    .line 868
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    .line 869
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    .line 870
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2d

    .line 871
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v1, v0

    .line 870
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 873
    .end local v0    # "i":I
    :cond_2d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    .line 874
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    .line 875
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    .line 876
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    .line 877
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    .line 878
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    .line 879
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IPlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlayer;

    move-result-object v0

    .line 880
    .local v0, "p":Landroid/media/IPlayer;
    const/4 v1, 0x0

    if-nez v0, :cond_61

    goto :goto_67

    :cond_61
    new-instance v2, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    invoke-direct {v2, v1, v0}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;-><init>(Landroid/media/AudioPlaybackConfiguration;Landroid/media/IPlayer;)V

    move-object v1, v2

    :goto_67
    iput-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    .line 881
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioPlaybackConfiguration;->mSessionId:I

    .line 882
    sget-object v1, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    iput-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mFormatInfo:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    .line 883
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/AudioPlaybackConfiguration-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioPlaybackConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o anonymizedCopy(Landroid/media/AudioPlaybackConfiguration;)Landroid/media/AudioPlaybackConfiguration;
    .registers 6
    .param p0, "in"    # Landroid/media/AudioPlaybackConfiguration;

    .line 433
    new-instance v0, Landroid/media/AudioPlaybackConfiguration;

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    invoke-direct {v0, v1}, Landroid/media/AudioPlaybackConfiguration;-><init>(I)V

    .line 434
    .local v0, "anonymCopy":Landroid/media/AudioPlaybackConfiguration;
    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    iput v1, v0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    .line 436
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    .line 437
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    .line 438
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 440
    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getAllowedCapturePolicy()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2e

    .line 441
    goto :goto_2f

    :cond_2e
    const/4 v3, 0x3

    .line 439
    :goto_2f
    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setAllowedCapturePolicy(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 442
    .local v1, "builder":Landroid/media/AudioAttributes$Builder;
    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v2

    invoke-static {v2}, Landroid/media/AudioAttributes;->isSystemUsage(I)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 443
    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setSystemUsage(I)Landroid/media/AudioAttributes$Builder;

    goto :goto_52

    .line 445
    :cond_49
    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 447
    :goto_52
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    iput-object v2, v0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    .line 449
    const/4 v2, -0x1

    iput v2, v0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    .line 450
    iput v2, v0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    .line 451
    iput v2, v0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    .line 452
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    .line 453
    const/4 v2, 0x0

    new-array v3, v2, [I

    sget-object v4, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->DEFAULT:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    invoke-direct {v0, v3, v2, v2, v4}, Landroid/media/AudioPlaybackConfiguration;->setUpdateableFields([IIILandroid/media/AudioPlaybackConfiguration$FormatInfo;)V

    .line 458
    return-object v0
.end method

.method private blacklist isMuteAffectingActiveState()Z
    .registers 2

    .line 782
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_15

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_15

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method private greylist-max-o playerDied()V
    .registers 3

    .line 776
    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->sPlayerDeathMonitor:Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;

    if-eqz v0, :cond_b

    .line 777
    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->sPlayerDeathMonitor:Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    invoke-interface {v0, v1}, Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;->playerDeath(I)V

    .line 779
    :cond_b
    return-void
.end method

.method public static blacklist playerStateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I

    .line 215
    packed-switch p0, :pswitch_data_36

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 225
    :pswitch_17
    const-string v0, "PLAYER_UPDATE_FORMAT"

    return-object v0

    .line 224
    :pswitch_1a
    const-string v0, "PLAYER_UPDATE_MUTED"

    return-object v0

    .line 223
    :pswitch_1d
    const-string v0, "PLAYER_UPDATE_PORT_ID"

    return-object v0

    .line 222
    :pswitch_20
    const-string v0, "PLAYER_UPDATE_DEVICE_ID"

    return-object v0

    .line 221
    :pswitch_23
    const-string v0, "PLAYER_STATE_STOPPED"

    return-object v0

    .line 220
    :pswitch_26
    const-string v0, "PLAYER_STATE_PAUSED"

    return-object v0

    .line 219
    :pswitch_29
    const-string v0, "PLAYER_STATE_STARTED"

    return-object v0

    .line 218
    :pswitch_2c
    const-string v0, "PLAYER_STATE_IDLE"

    return-object v0

    .line 217
    :pswitch_2f
    const-string v0, "PLAYER_STATE_RELEASED"

    return-object v0

    .line 216
    :pswitch_32
    const-string v0, "PLAYER_STATE_UNKNOWN"

    return-object v0

    nop

    :pswitch_data_36
    .packed-switch -0x1
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method private blacklist setUpdateableFields([IIILandroid/media/AudioPlaybackConfiguration$FormatInfo;)V
    .registers 7
    .param p1, "deviceIds"    # [I
    .param p2, "sessionId"    # I
    .param p3, "mutedState"    # I
    .param p4, "format"    # Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    .line 417
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    .line 418
    :try_start_3
    iput-object p1, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    .line 419
    iput p2, p0, Landroid/media/AudioPlaybackConfiguration;->mSessionId:I

    .line 420
    iput p3, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    .line 421
    iput-object p4, p0, Landroid/media/AudioPlaybackConfiguration;->mFormatInfo:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    .line 422
    monitor-exit v0

    .line 423
    return-void

    .line 422
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static greylist-max-o toLogFriendlyPlayerState(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .line 1091
    packed-switch p0, :pswitch_data_22

    .line 1102
    const-string v0, "unknown player state - FIXME"

    return-object v0

    .line 1100
    :pswitch_6
    const-string v0, "muted updated"

    return-object v0

    .line 1099
    :pswitch_9
    const-string v0, "port updated"

    return-object v0

    .line 1098
    :pswitch_c
    const-string v0, "device updated"

    return-object v0

    .line 1097
    :pswitch_f
    const-string v0, "stopped"

    return-object v0

    .line 1096
    :pswitch_12
    const-string v0, "paused"

    return-object v0

    .line 1095
    :pswitch_15
    const-string v0, "started"

    return-object v0

    .line 1094
    :pswitch_18
    const-string v0, "idle"

    return-object v0

    .line 1093
    :pswitch_1b
    const-string v0, "released"

    return-object v0

    .line 1092
    :pswitch_1e
    const-string v0, "unknown"

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch -0x1
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static greylist-max-o toLogFriendlyPlayerType(I)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # I

    .line 1072
    packed-switch p0, :pswitch_data_38

    .line 1085
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown player type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - FIXME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1083
    :pswitch_1d
    const-string v0, "external proxy"

    return-object v0

    .line 1082
    :pswitch_20
    const-string v0, "hardware source"

    return-object v0

    .line 1081
    :pswitch_23
    const-string v0, "AAudio"

    return-object v0

    .line 1080
    :pswitch_26
    const-string v0, "OpenSL ES AudioPlayer (URI/FD)"

    return-object v0

    .line 1078
    :pswitch_29
    const-string v0, "OpenSL ES AudioPlayer (Buffer Queue)"

    return-object v0

    .line 1076
    :pswitch_2c
    const-string v0, "android.media.SoundPool"

    return-object v0

    .line 1075
    :pswitch_2f
    const-string v0, "android.media.MediaPlayer"

    return-object v0

    .line 1074
    :pswitch_32
    const-string v0, "android.media.AudioTrack"

    return-object v0

    .line 1073
    :pswitch_35
    const-string v0, "unknown"

    return-object v0

    :pswitch_data_38
    .packed-switch -0x1
        :pswitch_35
        :pswitch_3
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 843
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 816
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 887
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 888
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_40

    instance-of v2, p1, Landroid/media/AudioPlaybackConfiguration;

    if-nez v2, :cond_c

    goto :goto_40

    .line 890
    :cond_c
    move-object v2, p1

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 892
    .local v2, "that":Landroid/media/AudioPlaybackConfiguration;
    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    iget v4, v2, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    if-ne v3, v4, :cond_3e

    iget-object v3, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    iget-object v4, v2, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    .line 893
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    iget v4, v2, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    if-ne v3, v4, :cond_3e

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    iget v4, v2, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    if-ne v3, v4, :cond_3e

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    iget v4, v2, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    if-ne v3, v4, :cond_3e

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    iget v4, v2, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    if-ne v3, v4, :cond_3e

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mSessionId:I

    iget v4, v2, Landroid/media/AudioPlaybackConfiguration;->mSessionId:I

    if-ne v3, v4, :cond_3e

    goto :goto_3f

    :cond_3e
    move v0, v1

    .line 892
    :goto_3f
    return v0

    .line 888
    .end local v2    # "that":Landroid/media/AudioPlaybackConfiguration;
    :cond_40
    :goto_40
    return v1
.end method

.method public whitelist getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 2

    .line 466
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public whitelist getAudioDeviceInfo()Landroid/media/AudioDeviceInfo;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 499
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    .line 500
    :try_start_3
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    .line 501
    .local v1, "deviceIds":[I
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_14

    .line 502
    array-length v0, v1

    if-nez v0, :cond_b

    .line 503
    const/4 v0, 0x0

    return-object v0

    .line 505
    :cond_b
    const/4 v0, 0x0

    aget v0, v1, v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/media/AudioManager;->getDeviceForPortId(II)Landroid/media/AudioDeviceInfo;

    move-result-object v0

    return-object v0

    .line 501
    .end local v1    # "deviceIds":[I
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public whitelist getAudioDeviceInfos()Ljava/util/List;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 519
    .local v0, "audioDeviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v1

    .line 520
    :try_start_8
    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    .line 521
    .local v2, "deviceIds":[I
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_1f

    .line 523
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v3, v2

    if-ge v1, v3, :cond_1e

    .line 524
    aget v3, v2, v1

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/media/AudioManager;->getDeviceForPortId(II)Landroid/media/AudioDeviceInfo;

    move-result-object v3

    .line 526
    .local v3, "audioDeviceInfo":Landroid/media/AudioDeviceInfo;
    if-eqz v3, :cond_1b

    .line 527
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    .end local v3    # "audioDeviceInfo":Landroid/media/AudioDeviceInfo;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 530
    .end local v1    # "i":I
    :cond_1e
    return-object v0

    .line 521
    .end local v2    # "deviceIds":[I
    :catchall_1f
    move-exception v2

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method public whitelist getChannelMask()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 663
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    .line 664
    :try_start_3
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mFormatInfo:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    iget v1, v1, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mNativeChannelMask:I

    invoke-static {v1}, Landroid/media/AudioFormat;->convertNativeChannelMaskToOutMask(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 665
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public whitelist getClientPid()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 486
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    return v0
.end method

.method public whitelist getClientUid()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 476
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    return v0
.end method

.method greylist-max-o getIPlayer()Landroid/media/IPlayer;
    .registers 3

    .line 674
    monitor-enter p0

    .line 675
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    .line 676
    .local v0, "ips":Landroid/media/AudioPlaybackConfiguration$IPlayerShell;
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_d

    .line 677
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->getIPlayer()Landroid/media/IPlayer;

    move-result-object v1

    :goto_c
    return-object v1

    .line 676
    .end local v0    # "ips":Landroid/media/AudioPlaybackConfiguration$IPlayerShell;
    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public whitelist getMutedBy()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 570
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    .line 571
    :try_start_3
    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    monitor-exit v0

    return v1

    .line 572
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist getPlayerInterfaceId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 613
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    return v0
.end method

.method public whitelist getPlayerProxy()Landroid/media/PlayerProxy;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 624
    monitor-enter p0

    .line 625
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    .line 626
    .local v0, "ips":Landroid/media/AudioPlaybackConfiguration$IPlayerShell;
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_e

    .line 627
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_d

    :cond_8
    new-instance v1, Landroid/media/PlayerProxy;

    invoke-direct {v1, p0}, Landroid/media/PlayerProxy;-><init>(Landroid/media/AudioPlaybackConfiguration;)V

    :goto_d
    return-object v1

    .line 626
    .end local v0    # "ips":Landroid/media/AudioPlaybackConfiguration$IPlayerShell;
    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method

.method public whitelist getPlayerState()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 603
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    return v0
.end method

.method public whitelist getPlayerType()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 584
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    packed-switch v0, :pswitch_data_a

    .line 589
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    return v0

    .line 587
    :pswitch_8
    const/4 v0, -0x1

    return v0

    :pswitch_data_a
    .packed-switch 0xe
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public whitelist getSampleRate()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 650
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    .line 651
    :try_start_3
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mFormatInfo:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    iget v1, v1, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mSampleRate:I

    monitor-exit v0

    return v1

    .line 652
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public whitelist getSessionId()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 541
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    .line 542
    :try_start_3
    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mSessionId:I

    monitor-exit v0

    return v1

    .line 543
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public greylist-max-o handleAudioAttributesEvent(Landroid/media/AudioAttributes;)Z
    .registers 3
    .param p1, "attr"    # Landroid/media/AudioAttributes;

    .line 686
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {p1, v0}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 687
    .local v0, "changed":Z
    iput-object p1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    .line 688
    return v0
.end method

.method public blacklist handleFormatEvent(Landroid/media/AudioPlaybackConfiguration$FormatInfo;)Z
    .registers 4
    .param p1, "fi"    # Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    .line 725
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    .line 726
    :try_start_3
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mFormatInfo:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    invoke-virtual {v1, p1}, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 727
    .local v1, "changed":Z
    :goto_e
    iput-object p1, p0, Landroid/media/AudioPlaybackConfiguration;->mFormatInfo:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    .line 728
    monitor-exit v0

    return v1

    .line 729
    .end local v1    # "changed":Z
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public blacklist handleMutedEvent(I)Z
    .registers 4
    .param p1, "mutedState"    # I

    .line 711
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    .line 712
    :try_start_3
    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    if-eq v1, p1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 713
    .local v1, "changed":Z
    :goto_a
    iput p1, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    .line 714
    monitor-exit v0

    return v1

    .line 715
    .end local v1    # "changed":Z
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist handleSessionIdEvent(I)Z
    .registers 4
    .param p1, "sessionId"    # I

    .line 697
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    .line 698
    :try_start_3
    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mSessionId:I

    if-eq p1, v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 699
    .local v1, "changed":Z
    :goto_a
    iput p1, p0, Landroid/media/AudioPlaybackConfiguration;->mSessionId:I

    .line 700
    monitor-exit v0

    return v1

    .line 701
    .end local v1    # "changed":Z
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist handleStateEvent(I[I)Z
    .registers 9
    .param p1, "event"    # I
    .param p2, "deviceIds"    # [I

    .line 745
    const/4 v0, 0x0

    .line 746
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v1

    .line 749
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    if-eq p1, v4, :cond_16

    .line 750
    :try_start_9
    iget v5, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    if-eq v5, p1, :cond_f

    move v5, v3

    goto :goto_10

    :cond_f
    move v5, v2

    :goto_10
    move v0, v5

    .line 751
    iput p1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    goto :goto_16

    .line 763
    :catchall_14
    move-exception v2

    goto :goto_3b

    .line 754
    :cond_16
    :goto_16
    const/4 v5, 0x2

    if-eq p1, v5, :cond_1b

    if-ne p1, v4, :cond_29

    .line 755
    :cond_1b
    if-nez v0, :cond_25

    iget-object v4, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    invoke-static {v4, p2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-nez v4, :cond_26

    :cond_25
    move v2, v3

    :cond_26
    move v0, v2

    .line 756
    iput-object p2, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    .line 759
    :cond_29
    if-eqz v0, :cond_39

    if-nez p1, :cond_39

    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    if-eqz v2, :cond_39

    .line 760
    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->release()V

    .line 761
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    .line 763
    :cond_39
    monitor-exit v1

    .line 764
    return v0

    .line 763
    :goto_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_9 .. :try_end_3c} :catchall_14

    throw v2
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 835
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v1

    .line 836
    :try_start_3
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    .line 837
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mSessionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 836
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 838
    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public greylist-max-o init()V
    .registers 2

    .line 406
    monitor-enter p0

    .line 407
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    if-eqz v0, :cond_a

    .line 408
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->monitorDeath()V

    .line 410
    :cond_a
    monitor-exit p0

    .line 411
    return-void

    .line 410
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public whitelist isActive()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 796
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    packed-switch v0, :pswitch_data_e

    .line 805
    const/4 v0, 0x0

    return v0

    .line 798
    :pswitch_7
    invoke-direct {p0}, Landroid/media/AudioPlaybackConfiguration;->isMuteAffectingActiveState()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :pswitch_data_e
    .packed-switch 0x2
        :pswitch_7
    .end packed-switch
.end method

.method public whitelist isMuted()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 556
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    .line 557
    :try_start_3
    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 558
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public whitelist isSpatialized()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 638
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    .line 639
    :try_start_3
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mFormatInfo:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    iget-boolean v1, v1, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mIsSpatialized:Z

    monitor-exit v0

    return v1

    .line 640
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 904
    .local v0, "apcToString":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v1

    .line 905
    :try_start_8
    const-string v2, "AudioPlaybackConfiguration piid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " deviceIds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    .line 906
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    .line 907
    invoke-static {v3}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerType(I)Ljava/lang/String;

    move-result-object v3

    .line 906
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " u/pid:"

    .line 907
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    .line 908
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    .line 909
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    .line 910
    invoke-static {v3}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerState(I)Ljava/lang/String;

    move-result-object v3

    .line 909
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " attr:"

    .line 910
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sessionId:"

    .line 911
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mSessionId:I

    .line 912
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mutedState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    if-nez v2, :cond_83

    .line 914
    const-string v2, "none "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_db

    .line 916
    :cond_83
    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8e

    .line 917
    const-string v2, "master "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    :cond_8e
    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_99

    .line 920
    const-string v2, "streamVolume "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    :cond_99
    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_a4

    .line 923
    const-string v2, "streamMute "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    :cond_a4
    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_af

    .line 926
    const-string v2, "opPlayAudio "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    :cond_af
    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_ba

    .line 929
    const-string v2, "clientVolume "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    :cond_ba
    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_c5

    .line 932
    const-string v2, "volumeShaper "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    :cond_c5
    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_d0

    .line 935
    const-string v2, "portVolume "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    :cond_d0
    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_db

    .line 938
    const-string v2, "opControlAudio "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    :cond_db
    :goto_db
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioPlaybackConfiguration;->mFormatInfo:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 942
    monitor-exit v1
    :try_end_e7
    .catchall {:try_start_8 .. :try_end_e7} :catchall_ec

    .line 943
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 942
    :catchall_ec
    move-exception v2

    :try_start_ed
    monitor-exit v1
    :try_end_ee
    .catchall {:try_start_ed .. :try_end_ee} :catchall_ec

    throw v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 848
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mUpdateablePropLock:Ljava/lang/Object;

    monitor-enter v0

    .line 849
    :try_start_3
    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 850
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mDeviceIds:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 851
    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mMutedState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 852
    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 854
    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 855
    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    .line 858
    monitor-enter p0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_4a

    .line 859
    :try_start_2d
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    .line 860
    .local v1, "ips":Landroid/media/AudioPlaybackConfiguration$IPlayerShell;
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_47

    .line 861
    if-nez v1, :cond_34

    const/4 v3, 0x0

    goto :goto_38

    :cond_34
    :try_start_34
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->getIPlayer()Landroid/media/IPlayer;

    move-result-object v3

    :goto_38
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 862
    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mSessionId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 863
    iget-object v3, p0, Landroid/media/AudioPlaybackConfiguration;->mFormatInfo:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    invoke-virtual {v3, p1, v2}, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 864
    .end local v1    # "ips":Landroid/media/AudioPlaybackConfiguration$IPlayerShell;
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_34 .. :try_end_46} :catchall_4a

    .line 865
    return-void

    .line 860
    :catchall_47
    move-exception v1

    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    .end local p0    # "this":Landroid/media/AudioPlaybackConfiguration;
    .end local p1    # "dest":Landroid/os/Parcel;
    .end local p2    # "flags":I
    :try_start_49
    throw v1

    .line 864
    .restart local p0    # "this":Landroid/media/AudioPlaybackConfiguration;
    .restart local p1    # "dest":Landroid/os/Parcel;
    .restart local p2    # "flags":I
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4a

    throw v1
.end method
