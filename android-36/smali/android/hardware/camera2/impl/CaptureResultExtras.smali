.class public Landroid/hardware/camera2/impl/CaptureResultExtras;
.super Ljava/lang/Object;
.source "CaptureResultExtras.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/impl/CaptureResultExtras;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o afTriggerId:I

.field private blacklist errorPhysicalCameraId:Ljava/lang/String;

.field private greylist-max-o errorStreamId:I

.field private greylist-max-o frameNumber:J

.field private blacklist hasReadoutTimestamp:Z

.field private blacklist lastCompletedRegularFrameNumber:J

.field private blacklist lastCompletedReprocessFrameNumber:J

.field private blacklist lastCompletedZslFrameNumber:J

.field private greylist-max-o partialResultCount:I

.field private greylist-max-o precaptureTriggerId:I

.field private blacklist readoutTimestamp:J

.field private greylist-max-o requestId:I

.field private greylist-max-o subsequenceId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Landroid/hardware/camera2/impl/CaptureResultExtras$1;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CaptureResultExtras$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/impl/CaptureResultExtras;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIIIJIILjava/lang/String;JJJZJ)V
    .registers 35
    .param p1, "requestId"    # I
    .param p2, "subsequenceId"    # I
    .param p3, "afTriggerId"    # I
    .param p4, "precaptureTriggerId"    # I
    .param p5, "frameNumber"    # J
    .param p7, "partialResultCount"    # I
    .param p8, "errorStreamId"    # I
    .param p9, "errorPhysicalCameraId"    # Ljava/lang/String;
    .param p10, "lastCompletedRegularFrameNumber"    # J
    .param p12, "lastCompletedReprocessFrameNumber"    # J
    .param p14, "lastCompletedZslFrameNumber"    # J
    .param p16, "hasReadoutTimestamp"    # Z
    .param p17, "readoutTimestamp"    # J

    .line 62
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 63
    move/from16 v1, p1

    iput v1, v0, Landroid/hardware/camera2/impl/CaptureResultExtras;->requestId:I

    .line 64
    move/from16 v2, p2

    iput v2, v0, Landroid/hardware/camera2/impl/CaptureResultExtras;->subsequenceId:I

    .line 65
    move/from16 v3, p3

    iput v3, v0, Landroid/hardware/camera2/impl/CaptureResultExtras;->afTriggerId:I

    .line 66
    move/from16 v4, p4

    iput v4, v0, Landroid/hardware/camera2/impl/CaptureResultExtras;->precaptureTriggerId:I

    .line 67
    move-wide/from16 v5, p5

    iput-wide v5, v0, Landroid/hardware/camera2/impl/CaptureResultExtras;->frameNumber:J

    .line 68
    move/from16 v7, p7

    iput v7, v0, Landroid/hardware/camera2/impl/CaptureResultExtras;->partialResultCount:I

    .line 69
    move/from16 v8, p8

    iput v8, v0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorStreamId:I

    .line 70
    move-object/from16 v9, p9

    iput-object v9, v0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorPhysicalCameraId:Ljava/lang/String;

    .line 71
    move-wide/from16 v10, p10

    iput-wide v10, v0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedRegularFrameNumber:J

    .line 72
    move-wide/from16 v12, p12

    iput-wide v12, v0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedReprocessFrameNumber:J

    .line 73
    move-wide/from16 v14, p14

    iput-wide v14, v0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedZslFrameNumber:J

    .line 74
    move/from16 v1, p16

    iput-boolean v1, v0, Landroid/hardware/camera2/impl/CaptureResultExtras;->hasReadoutTimestamp:Z

    .line 75
    move-wide/from16 v1, p17

    iput-wide v1, v0, Landroid/hardware/camera2/impl/CaptureResultExtras;->readoutTimestamp:J

    .line 76
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->readFromParcel(Landroid/os/Parcel;)V

    .line 54
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/camera2/impl/CaptureResultExtras-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getAfTriggerId()I
    .registers 2

    .line 141
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->afTriggerId:I

    return v0
.end method

.method public blacklist getErrorPhysicalCameraId()Ljava/lang/String;
    .registers 2

    .line 129
    iget-object v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorPhysicalCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getErrorStreamId()I
    .registers 2

    .line 157
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorStreamId:I

    return v0
.end method

.method public greylist-max-o getFrameNumber()J
    .registers 3

    .line 149
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->frameNumber:J

    return-wide v0
.end method

.method public blacklist getLastCompletedRegularFrameNumber()J
    .registers 3

    .line 161
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedRegularFrameNumber:J

    return-wide v0
.end method

.method public blacklist getLastCompletedReprocessFrameNumber()J
    .registers 3

    .line 165
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedReprocessFrameNumber:J

    return-wide v0
.end method

.method public blacklist getLastCompletedZslFrameNumber()J
    .registers 3

    .line 169
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedZslFrameNumber:J

    return-wide v0
.end method

.method public greylist-max-o getPartialResultCount()I
    .registers 2

    .line 153
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->partialResultCount:I

    return v0
.end method

.method public greylist-max-o getPrecaptureTriggerId()I
    .registers 2

    .line 145
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->precaptureTriggerId:I

    return v0
.end method

.method public blacklist getReadoutTimestamp()J
    .registers 3

    .line 177
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->readoutTimestamp:J

    return-wide v0
.end method

.method public greylist-max-o getRequestId()I
    .registers 2

    .line 133
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->requestId:I

    return v0
.end method

.method public greylist-max-o getSubsequenceId()I
    .registers 2

    .line 137
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->subsequenceId:I

    return v0
.end method

.method public blacklist hasReadoutTimestamp()Z
    .registers 2

    .line 173
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->hasReadoutTimestamp:Z

    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->requestId:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->subsequenceId:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->afTriggerId:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->precaptureTriggerId:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->frameNumber:J

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->partialResultCount:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorStreamId:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 116
    .local v0, "errorPhysicalCameraIdPresent":Z
    if-eqz v0, :cond_36

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorPhysicalCameraId:Ljava/lang/String;

    .line 119
    :cond_36
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedRegularFrameNumber:J

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedReprocessFrameNumber:J

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedZslFrameNumber:J

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->hasReadoutTimestamp:Z

    .line 123
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->hasReadoutTimestamp:Z

    if-eqz v1, :cond_58

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->readoutTimestamp:J

    .line 126
    :cond_58
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 85
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->requestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->subsequenceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->afTriggerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->precaptureTriggerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->frameNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 90
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->partialResultCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorStreamId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorPhysicalCameraId:Ljava/lang/String;

    if-eqz v0, :cond_39

    iget-object v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorPhysicalCameraId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 94
    iget-object v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->errorPhysicalCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3d

    .line 96
    :cond_39
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 98
    :goto_3d
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedRegularFrameNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedReprocessFrameNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->lastCompletedZslFrameNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 101
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->hasReadoutTimestamp:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 102
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->hasReadoutTimestamp:Z

    if-eqz v0, :cond_5a

    .line 103
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CaptureResultExtras;->readoutTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 105
    :cond_5a
    return-void
.end method
