.class public final Landroid/media/tv/TvInputHardwareInfo;
.super Ljava/lang/Object;
.source "TvInputHardwareInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvInputHardwareInfo$Builder;,
        Landroid/media/tv/TvInputHardwareInfo$CableConnectionStatus;
    }
.end annotation


# static fields
.field public static final whitelist CABLE_CONNECTION_STATUS_CONNECTED:I = 0x1

.field public static final whitelist CABLE_CONNECTION_STATUS_DISCONNECTED:I = 0x2

.field public static final whitelist CABLE_CONNECTION_STATUS_UNKNOWN:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o TAG:Ljava/lang/String; = "TvInputHardwareInfo"

.field public static final whitelist TV_INPUT_TYPE_COMPONENT:I = 0x6

.field public static final whitelist TV_INPUT_TYPE_COMPOSITE:I = 0x3

.field public static final whitelist TV_INPUT_TYPE_DISPLAY_PORT:I = 0xa

.field public static final whitelist TV_INPUT_TYPE_DVI:I = 0x8

.field public static final whitelist TV_INPUT_TYPE_HDMI:I = 0x9

.field public static final whitelist TV_INPUT_TYPE_OTHER_HARDWARE:I = 0x1

.field public static final whitelist TV_INPUT_TYPE_SCART:I = 0x5

.field public static final whitelist TV_INPUT_TYPE_SVIDEO:I = 0x4

.field public static final whitelist TV_INPUT_TYPE_TUNER:I = 0x2

.field public static final whitelist TV_INPUT_TYPE_VGA:I = 0x7


# instance fields
.field private greylist-max-o mAudioAddress:Ljava/lang/String;

.field private greylist-max-o mAudioType:I

.field private greylist-max-o mCableConnectionStatus:I

.field private greylist-max-o mDeviceId:I

.field private greylist-max-o mHdmiPortId:I

.field private greylist-max-o mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAudioType(Landroid/media/tv/TvInputHardwareInfo;)I
    .registers 1

    iget p0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAudioAddress(Landroid/media/tv/TvInputHardwareInfo;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAudioType(Landroid/media/tv/TvInputHardwareInfo;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCableConnectionStatus(Landroid/media/tv/TvInputHardwareInfo;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mCableConnectionStatus:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDeviceId(Landroid/media/tv/TvInputHardwareInfo;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHdmiPortId(Landroid/media/tv/TvInputHardwareInfo;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmType(Landroid/media/tv/TvInputHardwareInfo;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 79
    new-instance v0, Landroid/media/tv/TvInputHardwareInfo$1;

    invoke-direct {v0}, Landroid/media/tv/TvInputHardwareInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/TvInputHardwareInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/TvInputHardwareInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/TvInputHardwareInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAudioAddress()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getAudioType()I
    .registers 2

    .line 119
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    return v0
.end method

.method public whitelist getCableConnectionStatus()I
    .registers 2

    .line 143
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mCableConnectionStatus:I

    return v0
.end method

.method public whitelist getDeviceId()I
    .registers 2

    .line 111
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    return v0
.end method

.method public whitelist getHdmiPortId()I
    .registers 3

    .line 127
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_9

    .line 130
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    return v0

    .line 128
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 115
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    return v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    .line 185
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_24

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    .line 188
    :cond_24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mCableConnectionStatus:I

    .line 189
    return-void
.end method

.method public blacklist toBuilder()Landroid/media/tv/TvInputHardwareInfo$Builder;
    .registers 4

    .line 193
    new-instance v0, Landroid/media/tv/TvInputHardwareInfo$Builder;

    invoke-direct {v0}, Landroid/media/tv/TvInputHardwareInfo$Builder;-><init>()V

    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    .line 194
    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputHardwareInfo$Builder;->deviceId(I)Landroid/media/tv/TvInputHardwareInfo$Builder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    .line 195
    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputHardwareInfo$Builder;->type(I)Landroid/media/tv/TvInputHardwareInfo$Builder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    .line 196
    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputHardwareInfo$Builder;->audioType(I)Landroid/media/tv/TvInputHardwareInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    .line 197
    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputHardwareInfo$Builder;->audioAddress(Ljava/lang/String;)Landroid/media/tv/TvInputHardwareInfo$Builder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mCableConnectionStatus:I

    .line 198
    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputHardwareInfo$Builder;->cableConnectionStatus(I)Landroid/media/tv/TvInputHardwareInfo$Builder;

    move-result-object v0

    .line 199
    .local v0, "newBuilder":Landroid/media/tv/TvInputHardwareInfo$Builder;
    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2e

    .line 200
    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputHardwareInfo$Builder;->hdmiPortId(I)Landroid/media/tv/TvInputHardwareInfo$Builder;

    .line 202
    :cond_2e
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 150
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "TvInputHardwareInfo {id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    const-string v1, ", audio_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    const-string v1, ", audio_addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_44

    .line 155
    const-string v1, ", hdmi_port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    :cond_44
    const-string v1, ", cable_connection_status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputHardwareInfo;->mCableConnectionStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 170
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget-object v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1f

    .line 175
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    :cond_1f
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mCableConnectionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    return-void
.end method
