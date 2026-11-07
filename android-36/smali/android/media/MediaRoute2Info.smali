.class public final Landroid/media/MediaRoute2Info;
.super Ljava/lang/Object;
.source "MediaRoute2Info.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRoute2Info$Builder;,
        Landroid/media/MediaRoute2Info$SuitabilityStatus;,
        Landroid/media/MediaRoute2Info$RoutingType;,
        Landroid/media/MediaRoute2Info$Type;,
        Landroid/media/MediaRoute2Info$PlaybackVolume;,
        Landroid/media/MediaRoute2Info$ConnectionState;
    }
.end annotation


# static fields
.field public static final whitelist CONNECTION_STATE_CONNECTED:I = 0x2

.field public static final whitelist CONNECTION_STATE_CONNECTING:I = 0x1

.field public static final whitelist CONNECTION_STATE_DISCONNECTED:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FEATURE_LIVE_AUDIO:Ljava/lang/String; = "android.media.route.feature.LIVE_AUDIO"

.field public static final whitelist FEATURE_LIVE_VIDEO:Ljava/lang/String; = "android.media.route.feature.LIVE_VIDEO"

.field public static final blacklist FEATURE_LOCAL_PLAYBACK:Ljava/lang/String; = "android.media.route.feature.LOCAL_PLAYBACK"

.field public static final whitelist FEATURE_REMOTE_AUDIO_PLAYBACK:Ljava/lang/String; = "android.media.route.feature.REMOTE_AUDIO_PLAYBACK"

.field public static final blacklist FEATURE_REMOTE_GROUP_PLAYBACK:Ljava/lang/String; = "android.media.route.feature.REMOTE_GROUP_PLAYBACK"

.field public static final whitelist FEATURE_REMOTE_PLAYBACK:Ljava/lang/String; = "android.media.route.feature.REMOTE_PLAYBACK"

.field public static final whitelist FEATURE_REMOTE_VIDEO_PLAYBACK:Ljava/lang/String; = "android.media.route.feature.REMOTE_VIDEO_PLAYBACK"

.field private static final blacklist FLAG_ROUTING_TYPE_ALL:I = 0x7

.field public static final blacklist FLAG_ROUTING_TYPE_REMOTE:I = 0x4

.field public static final blacklist FLAG_ROUTING_TYPE_SYSTEM_AUDIO:I = 0x1

.field public static final blacklist FLAG_ROUTING_TYPE_SYSTEM_VIDEO:I = 0x2

.field public static final whitelist PLAYBACK_VOLUME_FIXED:I = 0x0

.field public static final whitelist PLAYBACK_VOLUME_VARIABLE:I = 0x1

.field public static final blacklist ROUTE_ID_DEFAULT:Ljava/lang/String; = "DEFAULT_ROUTE"

.field public static final blacklist ROUTE_ID_DEVICE:Ljava/lang/String; = "DEVICE_ROUTE"

.field public static final whitelist SUITABILITY_STATUS_NOT_SUITABLE_FOR_TRANSFER:I = 0x2

.field public static final whitelist SUITABILITY_STATUS_SUITABLE_FOR_DEFAULT_TRANSFER:I = 0x0

.field public static final whitelist SUITABILITY_STATUS_SUITABLE_FOR_MANUAL_TRANSFER:I = 0x1

.field public static final whitelist TYPE_AUX_LINE:I = 0x13

.field public static final whitelist TYPE_BLE_HEADSET:I = 0x1a

.field public static final whitelist TYPE_BLUETOOTH_A2DP:I = 0x8

.field public static final whitelist TYPE_BUILTIN_SPEAKER:I = 0x2

.field public static final whitelist TYPE_DOCK:I = 0xd

.field public static final whitelist TYPE_GROUP:I = 0x7d0

.field public static final whitelist TYPE_HDMI:I = 0x9

.field public static final whitelist TYPE_HDMI_ARC:I = 0xa

.field public static final whitelist TYPE_HDMI_EARC:I = 0x1d

.field public static final whitelist TYPE_HEARING_AID:I = 0x17

.field public static final whitelist TYPE_LINE_ANALOG:I = 0x5

.field public static final whitelist TYPE_LINE_DIGITAL:I = 0x6

.field public static final whitelist TYPE_MULTICHANNEL_SPEAKER_GROUP:I = 0x20

.field public static final whitelist TYPE_REMOTE_AUDIO_VIDEO_RECEIVER:I = 0x3eb

.field public static final whitelist TYPE_REMOTE_CAR:I = 0x3f0

.field public static final whitelist TYPE_REMOTE_COMPUTER:I = 0x3ee

.field public static final whitelist TYPE_REMOTE_GAME_CONSOLE:I = 0x3ef

.field public static final whitelist TYPE_REMOTE_SMARTPHONE:I = 0x3f2

.field public static final whitelist TYPE_REMOTE_SMARTWATCH:I = 0x3f1

.field public static final whitelist TYPE_REMOTE_SPEAKER:I = 0x3ea

.field public static final whitelist TYPE_REMOTE_TABLET:I = 0x3ec

.field public static final whitelist TYPE_REMOTE_TABLET_DOCKED:I = 0x3ed

.field public static final whitelist TYPE_REMOTE_TV:I = 0x3e9

.field public static final whitelist TYPE_UNKNOWN:I = 0x0

.field public static final whitelist TYPE_USB_ACCESSORY:I = 0xc

.field public static final whitelist TYPE_USB_DEVICE:I = 0xb

.field public static final whitelist TYPE_USB_HEADSET:I = 0x16

.field public static final whitelist TYPE_WIRED_HEADPHONES:I = 0x4

.field public static final whitelist TYPE_WIRED_HEADSET:I = 0x3


# instance fields
.field private final blacklist mAddress:Ljava/lang/String;

.field private final blacklist mAllowedPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mClientPackageName:Ljava/lang/String;

.field private final blacklist mConnectionState:I

.field private final blacklist mDeduplicationIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDescription:Ljava/lang/CharSequence;

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIconUri:Landroid/net/Uri;

.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mIsSystem:Z

.field private final blacklist mIsVisibilityRestricted:Z

.field private final blacklist mName:Ljava/lang/CharSequence;

.field private final blacklist mProviderId:Ljava/lang/String;

.field private final blacklist mProviderPackageName:Ljava/lang/String;

.field private final blacklist mRequiredPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mRoutingTypeFlags:I

.field private final blacklist mSuitabilityStatus:I

.field private final blacklist mType:I

.field private final blacklist mVolume:I

.field private final blacklist mVolumeHandling:I

.field private final blacklist mVolumeMax:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAddress(Landroid/media/MediaRoute2Info;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info;->mAddress:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAllowedPackages(Landroid/media/MediaRoute2Info;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info;->mAllowedPackages:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClientPackageName(Landroid/media/MediaRoute2Info;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info;->mClientPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectionState(Landroid/media/MediaRoute2Info;)I
    .registers 1

    iget p0, p0, Landroid/media/MediaRoute2Info;->mConnectionState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeduplicationIds(Landroid/media/MediaRoute2Info;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info;->mDeduplicationIds:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDescription(Landroid/media/MediaRoute2Info;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info;->mDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/media/MediaRoute2Info;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFeatures(Landroid/media/MediaRoute2Info;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info;->mFeatures:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconUri(Landroid/media/MediaRoute2Info;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info;->mIconUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/media/MediaRoute2Info;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info;->mId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSystem(Landroid/media/MediaRoute2Info;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/MediaRoute2Info;->mIsSystem:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsVisibilityRestricted(Landroid/media/MediaRoute2Info;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/MediaRoute2Info;->mIsVisibilityRestricted:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmName(Landroid/media/MediaRoute2Info;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info;->mName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProviderId(Landroid/media/MediaRoute2Info;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info;->mProviderId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProviderPackageName(Landroid/media/MediaRoute2Info;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info;->mProviderPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRequiredPermissions(Landroid/media/MediaRoute2Info;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info;->mRequiredPermissions:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRoutingTypeFlags(Landroid/media/MediaRoute2Info;)I
    .registers 1

    iget p0, p0, Landroid/media/MediaRoute2Info;->mRoutingTypeFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSuitabilityStatus(Landroid/media/MediaRoute2Info;)I
    .registers 1

    iget p0, p0, Landroid/media/MediaRoute2Info;->mSuitabilityStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Landroid/media/MediaRoute2Info;)I
    .registers 1

    iget p0, p0, Landroid/media/MediaRoute2Info;->mType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolume(Landroid/media/MediaRoute2Info;)I
    .registers 1

    iget p0, p0, Landroid/media/MediaRoute2Info;->mVolume:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolumeHandling(Landroid/media/MediaRoute2Info;)I
    .registers 1

    iget p0, p0, Landroid/media/MediaRoute2Info;->mVolumeHandling:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolumeMax(Landroid/media/MediaRoute2Info;)I
    .registers 1

    iget p0, p0, Landroid/media/MediaRoute2Info;->mVolumeMax:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smvalidateRoutingTypeFlags(I)I
    .registers 1

    invoke-static {p0}, Landroid/media/MediaRoute2Info;->validateRoutingTypeFlags(I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Landroid/media/MediaRoute2Info$1;

    invoke-direct {v0}, Landroid/media/MediaRoute2Info$1;-><init>()V

    sput-object v0, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/MediaRoute2Info$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/media/MediaRoute2Info$Builder;

    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    invoke-static {p1}, Landroid/media/MediaRoute2Info$Builder;->-$$Nest$fgetmId(Landroid/media/MediaRoute2Info$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mId:Ljava/lang/String;

    .line 650
    invoke-static {p1}, Landroid/media/MediaRoute2Info$Builder;->-$$Nest$fgetmName(Landroid/media/MediaRoute2Info$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mName:Ljava/lang/CharSequence;

    .line 651
    invoke-static {p1}, Landroid/media/MediaRoute2Info$Builder;->-$$Nest$fgetmFeatures(Landroid/media/MediaRoute2Info$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mFeatures:Ljava/util/List;

    .line 652
    invoke-static {p1}, Landroid/media/MediaRoute2Info$Builder;->-$$Nest$fgetmType(Landroid/media/MediaRoute2Info$Builder;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaRoute2Info;->mType:I

    .line 653
    invoke-static {p1}, Landroid/media/MediaRoute2Info$Builder;->-$$Nest$fgetmRoutingTypeFlags(Landroid/media/MediaRoute2Info$Builder;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaRoute2Info;->mRoutingTypeFlags:I

    .line 654
    invoke-static {p1}, Landroid/media/MediaRoute2Info$Builder;->-$$Nest$fgetmIsSystem(Landroid/media/MediaRoute2Info$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/MediaRoute2Info;->mIsSystem:Z

    .line 655
    invoke-static {p1}, Landroid/media/MediaRoute2Info$Builder;->-$$Nest$fgetmIconUri(Landroid/media/MediaRoute2Info$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mIconUri:Landroid/net/Uri;

    .line 656
    invoke-static {p1}, Landroid/media/MediaRoute2Info$Builder;->-$$Nest$fgetmDescription(Landroid/media/MediaRoute2Info$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mDescription:Ljava/lang/CharSequence;

    .line 657
    invoke-static {p1}, Landroid/media/MediaRoute2Info$Builder;->-$$Nest$fgetmConnectionState(Landroid/media/MediaRoute2Info$Builder;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaRoute2Info;->mConnectionState:I

    .line 658
    invoke-static {p1}, Landroid/media/MediaRoute2Info$Builder;->-$$Nest$fgetmClientPackageName(Landroid/media/MediaRoute2Info$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mClientPackageName:Ljava/lang/String;

    .line 659
    invoke-static {p1}, Landroid/media/MediaRoute2Info$Builder;->-$$Nest$fgetmProviderPackageName(Landroid/media/MediaRoute2Info$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mProviderPackageName:Ljava/lang/String;

    .line 660
    invoke-static {p1}, Landroid/media/MediaRoute2Info$Builder;->-$$Nest$fgetmVolumeHandling(Landroid/media/MediaRoute2Info$Builder;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaRoute2Info;->mVolumeHandling:I

    .line 661
    invoke-static {p1}, Landroid/media/MediaRoute2Info$Builder;->-$$Nest$fgetmVolumeMax(Landroid/media/MediaRoute2Info$Builder;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaRoute2Info;->mVolumeMax:I

    .line 662
    invoke-static {p1}, Landroid/media/MediaRoute2Info$Builder;->-$$Nest$fgetmVolume(Landroid/media/MediaRoute2Info$Builder;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaRoute2Info;->mVolume:I

    .line 663
    invoke-static {p1}, Landroid/media/MediaRoute2Info$Builder;->-$$Nest$fgetmAddress(Landroid/media/MediaRoute2Info$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mAddress:Ljava/lang/String;

    .line 664
    invoke-static {p1}, Landroid/media/MediaRoute2Info$Builder;->-$$Nest$fgetmDeduplicationIds(Landroid/media/MediaRoute2Info$Builder;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mDeduplicationIds:Ljava/util/Set;

    .line 665
    invoke-static {p1}, Landroid/media/MediaRoute2Info$Builder;->-$$Nest$fgetmExtras(Landroid/media/MediaRoute2Info$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mExtras:Landroid/os/Bundle;

    .line 666
    invoke-static {p1}, Landroid/media/MediaRoute2Info$Builder;->-$$Nest$fgetmProviderId(Landroid/media/MediaRoute2Info$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mProviderId:Ljava/lang/String;

    .line 667
    invoke-static {p1}, Landroid/media/MediaRoute2Info$Builder;->-$$Nest$fgetmIsVisibilityRestricted(Landroid/media/MediaRoute2Info$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/MediaRoute2Info;->mIsVisibilityRestricted:Z

    .line 668
    invoke-static {p1}, Landroid/media/MediaRoute2Info$Builder;->-$$Nest$fgetmAllowedPackages(Landroid/media/MediaRoute2Info$Builder;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mAllowedPackages:Ljava/util/Set;

    .line 669
    invoke-static {p1}, Landroid/media/MediaRoute2Info$Builder;->-$$Nest$fgetmSuitabilityStatus(Landroid/media/MediaRoute2Info$Builder;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaRoute2Info;->mSuitabilityStatus:I

    .line 670
    invoke-static {p1}, Landroid/media/MediaRoute2Info$Builder;->-$$Nest$fgetmRequiredPermissions(Landroid/media/MediaRoute2Info$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mRequiredPermissions:Ljava/util/List;

    .line 671
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 674
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mId:Ljava/lang/String;

    .line 675
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 676
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mName:Ljava/lang/CharSequence;

    .line 677
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mFeatures:Ljava/util/List;

    .line 678
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRoute2Info;->mType:I

    .line 679
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaRoute2Info;->validateRoutingTypeFlags(I)I

    move-result v0

    iput v0, p0, Landroid/media/MediaRoute2Info;->mRoutingTypeFlags:I

    .line 680
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/MediaRoute2Info;->mIsSystem:Z

    .line 681
    const/4 v0, 0x0

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mIconUri:Landroid/net/Uri;

    .line 682
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mDescription:Ljava/lang/CharSequence;

    .line 683
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRoute2Info;->mConnectionState:I

    .line 684
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mClientPackageName:Ljava/lang/String;

    .line 685
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mProviderPackageName:Ljava/lang/String;

    .line 686
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRoute2Info;->mVolumeHandling:I

    .line 687
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRoute2Info;->mVolumeMax:I

    .line 688
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRoute2Info;->mVolume:I

    .line 689
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mAddress:Ljava/lang/String;

    .line 690
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mDeduplicationIds:Ljava/util/Set;

    .line 691
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mExtras:Landroid/os/Bundle;

    .line 692
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mProviderId:Ljava/lang/String;

    .line 693
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/MediaRoute2Info;->mIsVisibilityRestricted:Z

    .line 694
    invoke-virtual {p1}, Landroid/os/Parcel;->createString8Array()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mAllowedPackages:Ljava/util/Set;

    .line 695
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 696
    .local v0, "requiredPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 697
    .local v1, "numRequiredPermissionSets":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a9
    if-ge v2, v1, :cond_b9

    .line 698
    invoke-virtual {p1}, Landroid/os/Parcel;->createString8Array()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    add-int/lit8 v2, v2, 0x1

    goto :goto_a9

    .line 700
    .end local v2    # "i":I
    :cond_b9
    invoke-static {v0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaRoute2Info;->mRequiredPermissions:Ljava/util/List;

    .line 701
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/MediaRoute2Info;->mSuitabilityStatus:I

    .line 702
    return-void
.end method

.method private blacklist dumpVolume(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/MediaRoute2Info;->mVolume:I

    iget v2, p0, Landroid/media/MediaRoute2Info;->mVolumeMax:I

    iget v3, p0, Landroid/media/MediaRoute2Info;->mVolumeHandling:I

    invoke-static {v1, v2, v3}, Landroid/media/MediaRoute2Info;->getVolumeString(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1056
    return-void
.end method

.method private static blacklist getDeviceTypeString(I)Ljava/lang/String;
    .registers 3
    .param p0, "deviceType"    # I

    .line 1230
    sparse-switch p0, :sswitch_data_60

    .line 1285
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "UNKNOWN(%d)"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1282
    :sswitch_12
    const-string v0, "GROUP"

    return-object v0

    .line 1280
    :sswitch_15
    const-string v0, "REMOTE_SMARTPHONE"

    return-object v0

    .line 1278
    :sswitch_18
    const-string v0, "REMOTE_SMARTWATCH"

    return-object v0

    .line 1276
    :sswitch_1b
    const-string v0, "REMOTE_CAR"

    return-object v0

    .line 1274
    :sswitch_1e
    const-string v0, "REMOTE_GAME_CONSOLE"

    return-object v0

    .line 1272
    :sswitch_21
    const-string v0, "REMOTE_COMPUTER"

    return-object v0

    .line 1270
    :sswitch_24
    const-string v0, "REMOTE_TABLET_DOCKED"

    return-object v0

    .line 1268
    :sswitch_27
    const-string v0, "REMOTE_TABLET"

    return-object v0

    .line 1266
    :sswitch_2a
    const-string v0, "REMOTE_AUDIO_VIDEO_RECEIVER"

    return-object v0

    .line 1264
    :sswitch_2d
    const-string v0, "REMOTE_SPEAKER"

    return-object v0

    .line 1262
    :sswitch_30
    const-string v0, "REMOTE_TV"

    return-object v0

    .line 1244
    :sswitch_33
    const-string v0, "HDMI_EARC"

    return-object v0

    .line 1260
    :sswitch_36
    const-string v0, "HEARING_AID"

    return-object v0

    .line 1258
    :sswitch_39
    const-string v0, "USB_HEADSET"

    return-object v0

    .line 1250
    :sswitch_3c
    const-string v0, "AUX_LINE"

    return-object v0

    .line 1252
    :sswitch_3f
    const-string v0, "DOCK"

    return-object v0

    .line 1256
    :sswitch_42
    const-string v0, "USB_ACCESSORY"

    return-object v0

    .line 1254
    :sswitch_45
    const-string v0, "USB_DEVICE"

    return-object v0

    .line 1242
    :sswitch_48
    const-string v0, "HDMI_ARC"

    return-object v0

    .line 1240
    :sswitch_4b
    const-string v0, "HDMI"

    return-object v0

    .line 1238
    :sswitch_4e
    const-string v0, "BLUETOOTH_A2DP"

    return-object v0

    .line 1246
    :sswitch_51
    const-string v0, "LINE_DIGITAL"

    return-object v0

    .line 1248
    :sswitch_54
    const-string v0, "LINE_ANALOG"

    return-object v0

    .line 1236
    :sswitch_57
    const-string v0, "WIRED_HEADPHONES"

    return-object v0

    .line 1234
    :sswitch_5a
    const-string v0, "WIRED_HEADSET"

    return-object v0

    .line 1232
    :sswitch_5d
    const-string v0, "BUILTIN_SPEAKER"

    return-object v0

    :sswitch_data_60
    .sparse-switch
        0x2 -> :sswitch_5d
        0x3 -> :sswitch_5a
        0x4 -> :sswitch_57
        0x5 -> :sswitch_54
        0x6 -> :sswitch_51
        0x8 -> :sswitch_4e
        0x9 -> :sswitch_4b
        0xa -> :sswitch_48
        0xb -> :sswitch_45
        0xc -> :sswitch_42
        0xd -> :sswitch_3f
        0x13 -> :sswitch_3c
        0x16 -> :sswitch_39
        0x17 -> :sswitch_36
        0x1d -> :sswitch_33
        0x3e9 -> :sswitch_30
        0x3ea -> :sswitch_2d
        0x3eb -> :sswitch_2a
        0x3ec -> :sswitch_27
        0x3ed -> :sswitch_24
        0x3ee -> :sswitch_21
        0x3ef -> :sswitch_1e
        0x3f0 -> :sswitch_1b
        0x3f1 -> :sswitch_18
        0x3f2 -> :sswitch_15
        0x7d0 -> :sswitch_12
    .end sparse-switch
.end method

.method private static blacklist getRoutingTypeFlagsString(I)Ljava/lang/String;
    .registers 3
    .param p0, "routingTypeFlags"    # I

    .line 1291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1292
    .local v0, "typeStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_e

    .line 1293
    const-string v1, "SYSTEM_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1295
    :cond_e
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_17

    .line 1296
    const-string v1, "SYSTEM_VIDEO"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1298
    :cond_17
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_20

    .line 1299
    const-string v1, "REMOTE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1301
    :cond_20
    const-string v1, "|"

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static blacklist getVolumeString(III)Ljava/lang/String;
    .registers 8
    .param p0, "volume"    # I
    .param p1, "maxVolume"    # I
    .param p2, "volumeHandling"    # I

    .line 1209
    packed-switch p2, :pswitch_data_26

    .line 1217
    const-string v0, "UNKNOWN"

    .local v0, "volumeHandlingName":Ljava/lang/String;
    goto :goto_c

    .line 1214
    .end local v0    # "volumeHandlingName":Ljava/lang/String;
    :pswitch_6
    const-string v0, "VARIABLE"

    .line 1215
    .restart local v0    # "volumeHandlingName":Ljava/lang/String;
    goto :goto_c

    .line 1211
    .end local v0    # "volumeHandlingName":Ljava/lang/String;
    :pswitch_9
    const-string v0, "FIXED"

    .line 1212
    .restart local v0    # "volumeHandlingName":Ljava/lang/String;
    nop

    .line 1220
    :goto_c
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1223
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1224
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1226
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v0, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 1220
    const-string v3, "volume(current=%d, max=%d, handling=%s(%d))"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic blacklist lambda$toString$0(Ljava/util/Set;)Ljava/lang/String;
    .registers 2
    .param p0, "set"    # Ljava/util/Set;

    .line 1157
    const-string v0, ","

    invoke-static {v0, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist validateRoutingTypeFlags(I)I
    .registers 4
    .param p0, "routingTypeFlags"    # I

    .line 1309
    if-eqz p0, :cond_7

    and-int/lit8 v0, p0, -0x8

    if-nez v0, :cond_7

    .line 1313
    return p0

    .line 1310
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid routing type flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1311
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1167
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MediaRoute2Info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1030
    .local v0, "indent":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRoute2Info;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1031
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRoute2Info;->mName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1032
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mFeatures="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRoute2Info;->mFeatures:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1033
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/MediaRoute2Info;->mType:I

    invoke-static {v2}, Landroid/media/MediaRoute2Info;->getDeviceTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1034
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mRoutingTypeFlags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/MediaRoute2Info;->mRoutingTypeFlags:I

    invoke-static {v2}, Landroid/media/MediaRoute2Info;->getRoutingTypeFlagsString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1035
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mIsSystem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/MediaRoute2Info;->mIsSystem:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1036
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mIconUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRoute2Info;->mIconUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1037
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mDescription="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRoute2Info;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1038
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mConnectionState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/MediaRoute2Info;->mConnectionState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1039
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mClientPackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRoute2Info;->mClientPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1040
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mProviderPackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRoute2Info;->mProviderPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1042
    invoke-direct {p0, p1, v0}, Landroid/media/MediaRoute2Info;->dumpVolume(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1044
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRoute2Info;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1045
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mDeduplicationIds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRoute2Info;->mDeduplicationIds:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1046
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mExtras="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRoute2Info;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1047
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mProviderId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRoute2Info;->mProviderId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1048
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mIsVisibilityRestricted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/MediaRoute2Info;->mIsVisibilityRestricted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1049
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mAllowedPackages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRoute2Info;->mAllowedPackages:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1050
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mSuitabilityStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/MediaRoute2Info;->mSuitabilityStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mRequiredPermissions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRoute2Info;->mRequiredPermissions:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1052
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1060
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1061
    return v0

    .line 1063
    :cond_4
    instance-of v1, p1, Landroid/media/MediaRoute2Info;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1064
    return v2

    .line 1066
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/media/MediaRoute2Info;

    .line 1069
    .local v1, "other":Landroid/media/MediaRoute2Info;
    iget-object v3, p0, Landroid/media/MediaRoute2Info;->mId:Ljava/lang/String;

    iget-object v4, v1, Landroid/media/MediaRoute2Info;->mId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bc

    iget-object v3, p0, Landroid/media/MediaRoute2Info;->mName:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/media/MediaRoute2Info;->mName:Ljava/lang/CharSequence;

    .line 1070
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bc

    iget-object v3, p0, Landroid/media/MediaRoute2Info;->mFeatures:Ljava/util/List;

    iget-object v4, v1, Landroid/media/MediaRoute2Info;->mFeatures:Ljava/util/List;

    .line 1071
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bc

    iget v3, p0, Landroid/media/MediaRoute2Info;->mType:I

    iget v4, v1, Landroid/media/MediaRoute2Info;->mType:I

    if-ne v3, v4, :cond_bc

    iget v3, p0, Landroid/media/MediaRoute2Info;->mRoutingTypeFlags:I

    iget v4, v1, Landroid/media/MediaRoute2Info;->mRoutingTypeFlags:I

    if-ne v3, v4, :cond_bc

    iget-boolean v3, p0, Landroid/media/MediaRoute2Info;->mIsSystem:Z

    iget-boolean v4, v1, Landroid/media/MediaRoute2Info;->mIsSystem:Z

    if-ne v3, v4, :cond_bc

    iget-object v3, p0, Landroid/media/MediaRoute2Info;->mIconUri:Landroid/net/Uri;

    iget-object v4, v1, Landroid/media/MediaRoute2Info;->mIconUri:Landroid/net/Uri;

    .line 1075
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bc

    iget-object v3, p0, Landroid/media/MediaRoute2Info;->mDescription:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/media/MediaRoute2Info;->mDescription:Ljava/lang/CharSequence;

    .line 1076
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bc

    iget v3, p0, Landroid/media/MediaRoute2Info;->mConnectionState:I

    iget v4, v1, Landroid/media/MediaRoute2Info;->mConnectionState:I

    if-ne v3, v4, :cond_bc

    iget-object v3, p0, Landroid/media/MediaRoute2Info;->mClientPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/media/MediaRoute2Info;->mClientPackageName:Ljava/lang/String;

    .line 1078
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bc

    iget-object v3, p0, Landroid/media/MediaRoute2Info;->mProviderPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/media/MediaRoute2Info;->mProviderPackageName:Ljava/lang/String;

    .line 1079
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bc

    iget v3, p0, Landroid/media/MediaRoute2Info;->mVolumeHandling:I

    iget v4, v1, Landroid/media/MediaRoute2Info;->mVolumeHandling:I

    if-ne v3, v4, :cond_bc

    iget v3, p0, Landroid/media/MediaRoute2Info;->mVolumeMax:I

    iget v4, v1, Landroid/media/MediaRoute2Info;->mVolumeMax:I

    if-ne v3, v4, :cond_bc

    iget v3, p0, Landroid/media/MediaRoute2Info;->mVolume:I

    iget v4, v1, Landroid/media/MediaRoute2Info;->mVolume:I

    if-ne v3, v4, :cond_bc

    iget-object v3, p0, Landroid/media/MediaRoute2Info;->mAddress:Ljava/lang/String;

    iget-object v4, v1, Landroid/media/MediaRoute2Info;->mAddress:Ljava/lang/String;

    .line 1083
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bc

    iget-object v3, p0, Landroid/media/MediaRoute2Info;->mDeduplicationIds:Ljava/util/Set;

    iget-object v4, v1, Landroid/media/MediaRoute2Info;->mDeduplicationIds:Ljava/util/Set;

    .line 1084
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bc

    iget-object v3, p0, Landroid/media/MediaRoute2Info;->mProviderId:Ljava/lang/String;

    iget-object v4, v1, Landroid/media/MediaRoute2Info;->mProviderId:Ljava/lang/String;

    .line 1085
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bc

    iget-boolean v3, p0, Landroid/media/MediaRoute2Info;->mIsVisibilityRestricted:Z

    iget-boolean v4, v1, Landroid/media/MediaRoute2Info;->mIsVisibilityRestricted:Z

    if-ne v3, v4, :cond_bc

    iget-object v3, p0, Landroid/media/MediaRoute2Info;->mAllowedPackages:Ljava/util/Set;

    iget-object v4, v1, Landroid/media/MediaRoute2Info;->mAllowedPackages:Ljava/util/Set;

    .line 1087
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bc

    iget-object v3, p0, Landroid/media/MediaRoute2Info;->mRequiredPermissions:Ljava/util/List;

    iget-object v4, v1, Landroid/media/MediaRoute2Info;->mRequiredPermissions:Ljava/util/List;

    .line 1088
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bc

    iget v3, p0, Landroid/media/MediaRoute2Info;->mSuitabilityStatus:I

    iget v4, v1, Landroid/media/MediaRoute2Info;->mSuitabilityStatus:I

    if-ne v3, v4, :cond_bc

    goto :goto_bd

    :cond_bc
    move v0, v2

    .line 1069
    :goto_bd
    return v0
.end method

.method public blacklist getAddress()Ljava/lang/String;
    .registers 2

    .line 850
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getClientPackageName()Ljava/lang/String;
    .registers 2

    .line 801
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mClientPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getConnectionState()I
    .registers 2

    .line 792
    iget v0, p0, Landroid/media/MediaRoute2Info;->mConnectionState:I

    return v0
.end method

.method public whitelist getDeduplicationIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 860
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mDeduplicationIds:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist getDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 781
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 3

    .line 868
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_d

    :cond_6
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/media/MediaRoute2Info;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_d
    return-object v0
.end method

.method public whitelist getFeatures()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 735
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mFeatures:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getIconUri()Landroid/net/Uri;
    .registers 2

    .line 773
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mIconUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 3

    .line 715
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mProviderId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 716
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mProviderId:Ljava/lang/String;

    iget-object v1, p0, Landroid/media/MediaRoute2Info;->mId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/media/MediaRouter2Utils;->toUniqueId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 718
    :cond_11
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/CharSequence;
    .registers 2

    .line 727
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getOriginalId()Ljava/lang/String;
    .registers 2

    .line 878
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProviderId()Ljava/lang/String;
    .registers 2

    .line 890
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mProviderId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProviderPackageName()Ljava/lang/String;
    .registers 2

    .line 817
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mProviderPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRequiredPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 977
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mRequiredPermissions:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getSuitabilityStatus()I
    .registers 2

    .line 1015
    iget v0, p0, Landroid/media/MediaRoute2Info;->mSuitabilityStatus:I

    return v0
.end method

.method public blacklist getSupportedRoutingTypes()I
    .registers 2

    .line 750
    iget v0, p0, Landroid/media/MediaRoute2Info;->mRoutingTypeFlags:I

    return v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 743
    iget v0, p0, Landroid/media/MediaRoute2Info;->mType:I

    return v0
.end method

.method public whitelist getVolume()I
    .registers 2

    .line 841
    iget v0, p0, Landroid/media/MediaRoute2Info;->mVolume:I

    return v0
.end method

.method public whitelist getVolumeHandling()I
    .registers 2

    .line 827
    iget v0, p0, Landroid/media/MediaRoute2Info;->mVolumeHandling:I

    return v0
.end method

.method public whitelist getVolumeMax()I
    .registers 2

    .line 834
    iget v0, p0, Landroid/media/MediaRoute2Info;->mVolumeMax:I

    return v0
.end method

.method public blacklist hasAllFeatures(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 916
    .local p1, "features":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, "features must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 917
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 918
    .local v1, "feature":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getFeatures()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 919
    const/4 v0, 0x0

    return v0

    .line 921
    .end local v1    # "feature":Ljava/lang/String;
    :cond_21
    goto :goto_9

    .line 922
    :cond_22
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist hasAnyFeatures(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 901
    .local p1, "features":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, "features must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 902
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 903
    .local v1, "feature":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getFeatures()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 904
    const/4 v0, 0x1

    return v0

    .line 906
    .end local v1    # "feature":Ljava/lang/String;
    :cond_21
    goto :goto_9

    .line 907
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 24

    .line 1095
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaRoute2Info;->mId:Ljava/lang/String;

    iget-object v2, v0, Landroid/media/MediaRoute2Info;->mName:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroid/media/MediaRoute2Info;->mFeatures:Ljava/util/List;

    iget v4, v0, Landroid/media/MediaRoute2Info;->mType:I

    .line 1099
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v0, Landroid/media/MediaRoute2Info;->mRoutingTypeFlags:I

    .line 1100
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean v6, v0, Landroid/media/MediaRoute2Info;->mIsSystem:Z

    .line 1101
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v7, v0, Landroid/media/MediaRoute2Info;->mIconUri:Landroid/net/Uri;

    iget-object v8, v0, Landroid/media/MediaRoute2Info;->mDescription:Ljava/lang/CharSequence;

    iget v9, v0, Landroid/media/MediaRoute2Info;->mConnectionState:I

    .line 1104
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v0, Landroid/media/MediaRoute2Info;->mClientPackageName:Ljava/lang/String;

    iget-object v11, v0, Landroid/media/MediaRoute2Info;->mProviderPackageName:Ljava/lang/String;

    iget v12, v0, Landroid/media/MediaRoute2Info;->mVolumeHandling:I

    .line 1107
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v13, v0, Landroid/media/MediaRoute2Info;->mVolumeMax:I

    .line 1108
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v14, v0, Landroid/media/MediaRoute2Info;->mVolume:I

    .line 1109
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v15, v0, Landroid/media/MediaRoute2Info;->mAddress:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/media/MediaRoute2Info;->mDeduplicationIds:Ljava/util/Set;

    move-object/from16 v17, v1

    iget-object v1, v0, Landroid/media/MediaRoute2Info;->mProviderId:Ljava/lang/String;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Landroid/media/MediaRoute2Info;->mIsVisibilityRestricted:Z

    .line 1113
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v19, v1

    iget-object v1, v0, Landroid/media/MediaRoute2Info;->mAllowedPackages:Ljava/util/Set;

    move-object/from16 v20, v1

    iget-object v1, v0, Landroid/media/MediaRoute2Info;->mRequiredPermissions:Ljava/util/List;

    move-object/from16 v21, v1

    iget v1, v0, Landroid/media/MediaRoute2Info;->mSuitabilityStatus:I

    .line 1116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v22, v21

    move-object/from16 v21, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v22

    filled-new-array/range {v1 .. v21}, [Ljava/lang/Object;

    move-result-object v1

    .line 1095
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public whitelist isSystemRoute()Z
    .registers 2

    .line 761
    iget-boolean v0, p0, Landroid/media/MediaRoute2Info;->mIsSystem:Z

    return v0
.end method

.method public blacklist isSystemRouteType()Z
    .registers 2

    .line 989
    iget v0, p0, Landroid/media/MediaRoute2Info;->mType:I

    packed-switch v0, :pswitch_data_a

    .line 1007
    :pswitch_5
    const/4 v0, 0x0

    goto :goto_8

    .line 1006
    :pswitch_7
    const/4 v0, 0x1

    .line 989
    :goto_8
    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public blacklist isValid()Z
    .registers 2

    .line 952
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 953
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    .line 956
    :cond_1f
    const/4 v0, 0x1

    return v0

    .line 954
    :cond_21
    :goto_21
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVisibleTo(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 965
    iget-boolean v0, p0, Landroid/media/MediaRoute2Info;->mIsVisibilityRestricted:Z

    if-eqz v0, :cond_19

    .line 966
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getProviderPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mAllowedPackages:Ljava/util/Set;

    .line 967
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 965
    :goto_1a
    return v0
.end method

.method public blacklist supportsRemoteRouting()Z
    .registers 2

    .line 942
    iget v0, p0, Landroid/media/MediaRoute2Info;->mRoutingTypeFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist supportsSystemMediaRouting()Z
    .registers 2

    .line 931
    iget v0, p0, Landroid/media/MediaRoute2Info;->mRoutingTypeFlags:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 1122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1123
    const-string v1, "MediaRoute2Info{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1124
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1125
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1126
    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1127
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1128
    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1129
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getType()I

    move-result v1

    invoke-static {v1}, Landroid/media/MediaRoute2Info;->getDeviceTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1130
    const-string v1, ", routingTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1131
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getSupportedRoutingTypes()I

    move-result v1

    invoke-static {v1}, Landroid/media/MediaRoute2Info;->getRoutingTypeFlagsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1132
    const-string v1, ", isSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1133
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1134
    const-string v1, ", features="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1135
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getFeatures()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1136
    const-string v1, ", iconUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1137
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getIconUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1138
    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1139
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1140
    const-string v1, ", connectionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1141
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getConnectionState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1142
    const-string v1, ", clientPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1143
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getClientPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1144
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/MediaRoute2Info;->mVolume:I

    iget v2, p0, Landroid/media/MediaRoute2Info;->mVolumeMax:I

    iget v3, p0, Landroid/media/MediaRoute2Info;->mVolumeHandling:I

    .line 1145
    invoke-static {v1, v2, v3}, Landroid/media/MediaRoute2Info;->getVolumeString(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1146
    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1147
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1148
    const-string v1, ", deduplicationIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1149
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getDeduplicationIds()Ljava/util/Set;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1150
    const-string v1, ", providerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1151
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1152
    const-string v1, ", isVisibilityRestricted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/MediaRoute2Info;->mIsVisibilityRestricted:Z

    .line 1153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1154
    const-string v1, ", allowedPackages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRoute2Info;->mAllowedPackages:Ljava/util/Set;

    .line 1155
    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1156
    const-string v1, ", mRequiredPermissions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRoute2Info;->mRequiredPermissions:Ljava/util/List;

    .line 1157
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/media/MediaRoute2Info$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/media/MediaRoute2Info$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 1158
    const-string v2, "),("

    const-string v3, "("

    const-string v4, ")"

    invoke-static {v2, v3, v4}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    .line 1157
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1159
    const-string v1, ", suitabilityStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/MediaRoute2Info;->mSuitabilityStatus:I

    .line 1160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1161
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1122
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1172
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1173
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mName:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1174
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mFeatures:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1175
    iget v0, p0, Landroid/media/MediaRoute2Info;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1176
    iget v0, p0, Landroid/media/MediaRoute2Info;->mRoutingTypeFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1177
    iget-boolean v0, p0, Landroid/media/MediaRoute2Info;->mIsSystem:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1178
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mIconUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1179
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1180
    iget v0, p0, Landroid/media/MediaRoute2Info;->mConnectionState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1181
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mClientPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1182
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mProviderPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1183
    iget v0, p0, Landroid/media/MediaRoute2Info;->mVolumeHandling:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1184
    iget v0, p0, Landroid/media/MediaRoute2Info;->mVolumeMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1185
    iget v0, p0, Landroid/media/MediaRoute2Info;->mVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1186
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1187
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mDeduplicationIds:Ljava/util/Set;

    iget-object v1, p0, Landroid/media/MediaRoute2Info;->mDeduplicationIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1188
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1189
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mProviderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1190
    iget-boolean v0, p0, Landroid/media/MediaRoute2Info;->mIsVisibilityRestricted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1191
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mAllowedPackages:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    .line 1192
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mRequiredPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1193
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mRequiredPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 1194
    .local v2, "permissionSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-array v3, v1, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    .line 1195
    .end local v2    # "permissionSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_8a

    .line 1196
    :cond_a2
    iget v0, p0, Landroid/media/MediaRoute2Info;->mSuitabilityStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1197
    return-void
.end method
