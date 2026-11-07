.class public final Landroid/hardware/usb/DisplayPortAltModeInfo;
.super Ljava/lang/Object;
.source "DisplayPortAltModeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/DisplayPortAltModeInfo$LinkTrainingStatus;,
        Landroid/hardware/usb/DisplayPortAltModeInfo$DisplayPortAltModeStatus;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/usb/DisplayPortAltModeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DISPLAYPORT_ALT_MODE_STATUS_CAPABLE_DISABLED:I = 0x2

.field public static final whitelist DISPLAYPORT_ALT_MODE_STATUS_ENABLED:I = 0x3

.field public static final whitelist DISPLAYPORT_ALT_MODE_STATUS_NOT_CAPABLE:I = 0x1

.field public static final whitelist DISPLAYPORT_ALT_MODE_STATUS_UNKNOWN:I = 0x0

.field public static final whitelist LINK_TRAINING_STATUS_FAILURE:I = 0x2

.field public static final whitelist LINK_TRAINING_STATUS_SUCCESS:I = 0x1

.field public static final whitelist LINK_TRAINING_STATUS_UNKNOWN:I


# instance fields
.field private final blacklist mCableStatus:I

.field private final blacklist mHotPlugDetect:Z

.field private final blacklist mLinkTrainingStatus:I

.field private final blacklist mNumLanes:I

.field private final blacklist mPartnerSinkStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 265
    new-instance v0, Landroid/hardware/usb/DisplayPortAltModeInfo$1;

    invoke-direct {v0}, Landroid/hardware/usb/DisplayPortAltModeInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/DisplayPortAltModeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mPartnerSinkStatus:I

    .line 134
    iput v0, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mCableStatus:I

    .line 135
    iput v0, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mNumLanes:I

    .line 136
    iput-boolean v0, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mHotPlugDetect:Z

    .line 137
    iput v0, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mLinkTrainingStatus:I

    .line 138
    return-void
.end method

.method public constructor blacklist <init>(IIIZI)V
    .registers 6
    .param p1, "partnerSinkStatus"    # I
    .param p2, "cableStatus"    # I
    .param p3, "numLanes"    # I
    .param p4, "hotPlugDetect"    # Z
    .param p5, "linkTrainingStatus"    # I

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput p1, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mPartnerSinkStatus:I

    .line 144
    iput p2, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mCableStatus:I

    .line 145
    iput p3, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mNumLanes:I

    .line 146
    iput-boolean p4, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mHotPlugDetect:Z

    .line 147
    iput p5, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mLinkTrainingStatus:I

    .line 148
    return-void
.end method

.method private blacklist displayPortAltModeStatusToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "status"    # I

    .line 204
    packed-switch p1, :pswitch_data_10

    .line 212
    const-string v0, "unknown"

    return-object v0

    .line 210
    :pswitch_6
    const-string v0, "enabled"

    return-object v0

    .line 208
    :pswitch_9
    const-string v0, "capable disabled"

    return-object v0

    .line 206
    :pswitch_c
    const-string v0, "not capable"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private blacklist linkTrainingStatusToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "status"    # I

    .line 217
    packed-switch p1, :pswitch_data_c

    .line 223
    const-string v0, "unknown"

    return-object v0

    .line 221
    :pswitch_6
    const-string v0, "failure"

    return-object v0

    .line 219
    :pswitch_9
    const-string v0, "success"

    return-object v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 245
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 246
    return v0

    .line 248
    :cond_4
    instance-of v1, p1, Landroid/hardware/usb/DisplayPortAltModeInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 249
    return v2

    .line 251
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/hardware/usb/DisplayPortAltModeInfo;

    .line 252
    .local v1, "other":Landroid/hardware/usb/DisplayPortAltModeInfo;
    iget v3, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mPartnerSinkStatus:I

    iget v4, v1, Landroid/hardware/usb/DisplayPortAltModeInfo;->mPartnerSinkStatus:I

    if-ne v3, v4, :cond_2c

    iget v3, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mCableStatus:I

    iget v4, v1, Landroid/hardware/usb/DisplayPortAltModeInfo;->mCableStatus:I

    if-ne v3, v4, :cond_2c

    iget v3, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mNumLanes:I

    iget v4, v1, Landroid/hardware/usb/DisplayPortAltModeInfo;->mNumLanes:I

    if-ne v3, v4, :cond_2c

    iget-boolean v3, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mHotPlugDetect:Z

    iget-boolean v4, v1, Landroid/hardware/usb/DisplayPortAltModeInfo;->mHotPlugDetect:Z

    if-ne v3, v4, :cond_2c

    iget v3, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mLinkTrainingStatus:I

    iget v4, v1, Landroid/hardware/usb/DisplayPortAltModeInfo;->mLinkTrainingStatus:I

    if-ne v3, v4, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v2

    :goto_2d
    return v0
.end method

.method public whitelist getCableStatus()I
    .registers 2

    .line 163
    iget v0, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mCableStatus:I

    return v0
.end method

.method public whitelist getLinkTrainingStatus()I
    .registers 2

    .line 186
    iget v0, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mLinkTrainingStatus:I

    return v0
.end method

.method public whitelist getNumberOfLanes()I
    .registers 2

    .line 171
    iget v0, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mNumLanes:I

    return v0
.end method

.method public whitelist getPartnerSinkStatus()I
    .registers 2

    .line 155
    iget v0, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mPartnerSinkStatus:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 261
    iget v0, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mPartnerSinkStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mCableStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mNumLanes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mHotPlugDetect:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget v4, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mLinkTrainingStatus:I

    .line 262
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 261
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isHotPlugDetectActive()Z
    .registers 2

    .line 179
    iget-boolean v0, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mHotPlugDetect:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayPortAltModeInfo{partnerSink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mPartnerSinkStatus:I

    .line 231
    invoke-direct {p0, v1}, Landroid/hardware/usb/DisplayPortAltModeInfo;->displayPortAltModeStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mCableStatus:I

    .line 233
    invoke-direct {p0, v1}, Landroid/hardware/usb/DisplayPortAltModeInfo;->displayPortAltModeStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numLanes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mNumLanes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hotPlugDetect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mHotPlugDetect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", linkTrainingStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mLinkTrainingStatus:I

    .line 239
    invoke-direct {p0, v1}, Landroid/hardware/usb/DisplayPortAltModeInfo;->linkTrainingStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 196
    iget v0, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mPartnerSinkStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget v0, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mCableStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget v0, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mNumLanes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-boolean v0, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mHotPlugDetect:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 200
    iget v0, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mLinkTrainingStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    return-void
.end method
