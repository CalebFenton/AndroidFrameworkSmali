.class public Landroid/hardware/CameraSessionStats;
.super Ljava/lang/Object;
.source "CameraSessionStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CAMERA_API_LEVEL_1:I = 0x1

.field public static final blacklist CAMERA_API_LEVEL_2:I = 0x2

.field public static final blacklist CAMERA_FACING_BACK:I = 0x0

.field public static final blacklist CAMERA_FACING_EXTERNAL:I = 0x2

.field public static final blacklist CAMERA_FACING_FRONT:I = 0x1

.field public static final blacklist CAMERA_STATE_ACTIVE:I = 0x1

.field public static final blacklist CAMERA_STATE_CLOSED:I = 0x3

.field public static final blacklist CAMERA_STATE_IDLE:I = 0x2

.field public static final blacklist CAMERA_STATE_OPEN:I

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/CameraSessionStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mApiLevel:I

.field private blacklist mCameraExtensionSessionStats:Landroid/hardware/CameraExtensionSessionStats;

.field private blacklist mCameraId:Ljava/lang/String;

.field private blacklist mClientName:Ljava/lang/String;

.field private blacklist mDeviceError:Z

.field private blacklist mFacing:I

.field private blacklist mInternalReconfigure:I

.field private blacklist mIsNdk:Z

.field private blacklist mLatencyMs:I

.field private blacklist mLogId:J

.field private blacklist mMaxPreviewFps:F

.field private blacklist mMostRequestedFpsRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNewCameraState:I

.field private blacklist mRequestCount:J

.field private blacklist mResultErrorCount:J

.field private blacklist mSessionIndex:I

.field private blacklist mSessionType:I

.field private blacklist mStreamStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/CameraStreamStats;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUsedUltraWide:Z

.field private blacklist mUsedZoomOverride:Z

.field private blacklist mUserTag:Ljava/lang/String;

.field private blacklist mVideoStabilizationMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 121
    new-instance v0, Landroid/hardware/CameraSessionStats$1;

    invoke-direct {v0}, Landroid/hardware/CameraSessionStats$1;-><init>()V

    sput-object v0, Landroid/hardware/CameraSessionStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 7

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mFacing:I

    .line 77
    iput v0, p0, Landroid/hardware/CameraSessionStats;->mNewCameraState:I

    .line 78
    iput v0, p0, Landroid/hardware/CameraSessionStats;->mApiLevel:I

    .line 79
    const/4 v1, 0x0

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 79
    iput-boolean v1, p0, Landroid/hardware/CameraSessionStats;->mIsNdk:Z

    .line 80
    iput v0, p0, Landroid/hardware/CameraSessionStats;->mLatencyMs:I

    .line 81
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/hardware/CameraSessionStats;->mLogId:J

    .line 82
    const/4 v5, 0x0

    iput v5, p0, Landroid/hardware/CameraSessionStats;->mMaxPreviewFps:F

    .line 83
    iput v0, p0, Landroid/hardware/CameraSessionStats;->mSessionType:I

    .line 84
    iput v0, p0, Landroid/hardware/CameraSessionStats;->mInternalReconfigure:I

    .line 85
    iput-wide v3, p0, Landroid/hardware/CameraSessionStats;->mRequestCount:J

    .line 86
    iput-wide v3, p0, Landroid/hardware/CameraSessionStats;->mResultErrorCount:J

    .line 87
    iput-boolean v1, p0, Landroid/hardware/CameraSessionStats;->mDeviceError:Z

    .line 88
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/hardware/CameraSessionStats;->mStreamStats:Ljava/util/ArrayList;

    .line 89
    iput v0, p0, Landroid/hardware/CameraSessionStats;->mVideoStabilizationMode:I

    .line 90
    iput-boolean v1, p0, Landroid/hardware/CameraSessionStats;->mUsedUltraWide:Z

    .line 91
    iput-boolean v1, p0, Landroid/hardware/CameraSessionStats;->mUsedZoomOverride:Z

    .line 92
    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, v2, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Landroid/hardware/CameraSessionStats;->mMostRequestedFpsRange:Landroid/util/Range;

    .line 93
    iput v1, p0, Landroid/hardware/CameraSessionStats;->mSessionIndex:I

    .line 94
    new-instance v0, Landroid/hardware/CameraExtensionSessionStats;

    invoke-direct {v0}, Landroid/hardware/CameraExtensionSessionStats;-><init>()V

    iput-object v0, p0, Landroid/hardware/CameraSessionStats;->mCameraExtensionSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    .line 95
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {p0, p1}, Landroid/hardware/CameraSessionStats;->readFromParcel(Landroid/os/Parcel;)V

    .line 136
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/CameraSessionStats-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/CameraSessionStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IILjava/lang/String;IZIFIIJI)V
    .registers 16
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "facing"    # I
    .param p3, "newCameraState"    # I
    .param p4, "clientName"    # Ljava/lang/String;
    .param p5, "apiLevel"    # I
    .param p6, "isNdk"    # Z
    .param p7, "creationDuration"    # I
    .param p8, "maxPreviewFps"    # F
    .param p9, "sessionType"    # I
    .param p10, "internalReconfigure"    # I
    .param p11, "logId"    # J
    .param p13, "sessionIdx"    # I

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Landroid/hardware/CameraSessionStats;->mCameraId:Ljava/lang/String;

    .line 102
    iput p2, p0, Landroid/hardware/CameraSessionStats;->mFacing:I

    .line 103
    iput p3, p0, Landroid/hardware/CameraSessionStats;->mNewCameraState:I

    .line 104
    iput-object p4, p0, Landroid/hardware/CameraSessionStats;->mClientName:Ljava/lang/String;

    .line 105
    iput p5, p0, Landroid/hardware/CameraSessionStats;->mApiLevel:I

    .line 106
    iput-boolean p6, p0, Landroid/hardware/CameraSessionStats;->mIsNdk:Z

    .line 107
    iput p7, p0, Landroid/hardware/CameraSessionStats;->mLatencyMs:I

    .line 108
    iput-wide p11, p0, Landroid/hardware/CameraSessionStats;->mLogId:J

    .line 109
    iput p8, p0, Landroid/hardware/CameraSessionStats;->mMaxPreviewFps:F

    .line 110
    iput p9, p0, Landroid/hardware/CameraSessionStats;->mSessionType:I

    .line 111
    iput p10, p0, Landroid/hardware/CameraSessionStats;->mInternalReconfigure:I

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/CameraSessionStats;->mStreamStats:Ljava/util/ArrayList;

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mVideoStabilizationMode:I

    .line 114
    const/4 v0, 0x0

    .line 116
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 114
    iput-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mUsedUltraWide:Z

    .line 115
    iput-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mUsedZoomOverride:Z

    .line 116
    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, v1, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Landroid/hardware/CameraSessionStats;->mMostRequestedFpsRange:Landroid/util/Range;

    .line 117
    iput p13, p0, Landroid/hardware/CameraSessionStats;->mSessionIndex:I

    .line 118
    new-instance v0, Landroid/hardware/CameraExtensionSessionStats;

    invoke-direct {v0}, Landroid/hardware/CameraExtensionSessionStats;-><init>()V

    iput-object v0, p0, Landroid/hardware/CameraSessionStats;->mCameraExtensionSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    .line 119
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getApiLevel()I
    .registers 2

    .line 220
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mApiLevel:I

    return v0
.end method

.method public blacklist getCameraId()Ljava/lang/String;
    .registers 2

    .line 204
    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getClientName()Ljava/lang/String;
    .registers 2

    .line 216
    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mClientName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDeviceErrorFlag()Z
    .registers 2

    .line 256
    iget-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mDeviceError:Z

    return v0
.end method

.method public blacklist getExtensionSessionStats()Landroid/hardware/CameraExtensionSessionStats;
    .registers 2

    .line 284
    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mCameraExtensionSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    return-object v0
.end method

.method public blacklist getFacing()I
    .registers 2

    .line 208
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mFacing:I

    return v0
.end method

.method public blacklist getInternalReconfigureCount()I
    .registers 2

    .line 244
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mInternalReconfigure:I

    return v0
.end method

.method public blacklist getLatencyMs()I
    .registers 2

    .line 228
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mLatencyMs:I

    return v0
.end method

.method public blacklist getLogId()J
    .registers 3

    .line 232
    iget-wide v0, p0, Landroid/hardware/CameraSessionStats;->mLogId:J

    return-wide v0
.end method

.method public blacklist getMaxPreviewFps()F
    .registers 2

    .line 236
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mMaxPreviewFps:F

    return v0
.end method

.method public blacklist getMostRequestedFpsRange()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mMostRequestedFpsRange:Landroid/util/Range;

    return-object v0
.end method

.method public blacklist getNewCameraState()I
    .registers 2

    .line 212
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mNewCameraState:I

    return v0
.end method

.method public blacklist getRequestCount()J
    .registers 3

    .line 248
    iget-wide v0, p0, Landroid/hardware/CameraSessionStats;->mRequestCount:J

    return-wide v0
.end method

.method public blacklist getResultErrorCount()J
    .registers 3

    .line 252
    iget-wide v0, p0, Landroid/hardware/CameraSessionStats;->mResultErrorCount:J

    return-wide v0
.end method

.method public blacklist getSessionIndex()I
    .registers 2

    .line 280
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mSessionIndex:I

    return v0
.end method

.method public blacklist getSessionType()I
    .registers 2

    .line 240
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mSessionType:I

    return v0
.end method

.method public blacklist getStreamStats()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/CameraStreamStats;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mStreamStats:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getUsedUltraWide()Z
    .registers 2

    .line 272
    iget-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mUsedUltraWide:Z

    return v0
.end method

.method public blacklist getUsedZoomOverride()Z
    .registers 2

    .line 276
    iget-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mUsedZoomOverride:Z

    return v0
.end method

.method public blacklist getUserTag()Ljava/lang/String;
    .registers 2

    .line 264
    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mUserTag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVideoStabilizationMode()I
    .registers 2

    .line 268
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mVideoStabilizationMode:I

    return v0
.end method

.method public blacklist isNdk()Z
    .registers 2

    .line 224
    iget-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mIsNdk:Z

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/CameraSessionStats;->mCameraId:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mFacing:I

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mNewCameraState:I

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/CameraSessionStats;->mClientName:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mApiLevel:I

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mIsNdk:Z

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mLatencyMs:I

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/CameraSessionStats;->mLogId:J

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mMaxPreviewFps:F

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mSessionType:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mInternalReconfigure:I

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/CameraSessionStats;->mRequestCount:J

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/CameraSessionStats;->mResultErrorCount:J

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mDeviceError:Z

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v0, "streamStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/CameraStreamStats;>;"
    sget-object v1, Landroid/hardware/CameraStreamStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 188
    iput-object v0, p0, Landroid/hardware/CameraSessionStats;->mStreamStats:Ljava/util/ArrayList;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/CameraSessionStats;->mUserTag:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/CameraSessionStats;->mVideoStabilizationMode:I

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/CameraSessionStats;->mUsedUltraWide:Z

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/CameraSessionStats;->mUsedZoomOverride:Z

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/CameraSessionStats;->mSessionIndex:I

    .line 197
    sget-object v1, Landroid/hardware/CameraExtensionSessionStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/CameraExtensionSessionStats;

    iput-object v1, p0, Landroid/hardware/CameraSessionStats;->mCameraExtensionSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 199
    .local v1, "minFps":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 200
    .local v2, "maxFps":I
    new-instance v3, Landroid/util/Range;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v3, p0, Landroid/hardware/CameraSessionStats;->mMostRequestedFpsRange:Landroid/util/Range;

    .line 201
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 145
    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mFacing:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mNewCameraState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mClientName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mApiLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mIsNdk:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 151
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mLatencyMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-wide v0, p0, Landroid/hardware/CameraSessionStats;->mLogId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 153
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mMaxPreviewFps:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 154
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mSessionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mInternalReconfigure:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-wide v0, p0, Landroid/hardware/CameraSessionStats;->mRequestCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 157
    iget-wide v0, p0, Landroid/hardware/CameraSessionStats;->mResultErrorCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 158
    iget-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mDeviceError:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 159
    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mStreamStats:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 160
    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mUserTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mVideoStabilizationMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mUsedUltraWide:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 163
    iget-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mUsedZoomOverride:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 164
    iget v0, p0, Landroid/hardware/CameraSessionStats;->mSessionIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mCameraExtensionSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/hardware/CameraExtensionSessionStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 166
    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mMostRequestedFpsRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mMostRequestedFpsRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    return-void
.end method
