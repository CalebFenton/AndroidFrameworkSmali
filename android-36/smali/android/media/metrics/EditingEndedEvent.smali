.class public final Landroid/media/metrics/EditingEndedEvent;
.super Landroid/media/metrics/Event;
.source "EditingEndedEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/metrics/EditingEndedEvent$Builder;,
        Landroid/media/metrics/EditingEndedEvent$OperationType;,
        Landroid/media/metrics/EditingEndedEvent$ErrorCode;,
        Landroid/media/metrics/EditingEndedEvent$FinalState;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/metrics/EditingEndedEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist ERROR_CODE_AUDIO_PROCESSING_FAILED:I = 0x12

.field public static final whitelist ERROR_CODE_DECODER_INIT_FAILED:I = 0xb

.field public static final whitelist ERROR_CODE_DECODING_FAILED:I = 0xc

.field public static final whitelist ERROR_CODE_DECODING_FORMAT_UNSUPPORTED:I = 0xd

.field public static final whitelist ERROR_CODE_ENCODER_INIT_FAILED:I = 0xe

.field public static final whitelist ERROR_CODE_ENCODING_FAILED:I = 0xf

.field public static final whitelist ERROR_CODE_ENCODING_FORMAT_UNSUPPORTED:I = 0x10

.field public static final whitelist ERROR_CODE_FAILED_RUNTIME_CHECK:I = 0x2

.field public static final whitelist ERROR_CODE_IO_BAD_HTTP_STATUS:I = 0x6

.field public static final whitelist ERROR_CODE_IO_CLEARTEXT_NOT_PERMITTED:I = 0x9

.field public static final whitelist ERROR_CODE_IO_FILE_NOT_FOUND:I = 0x7

.field public static final whitelist ERROR_CODE_IO_NETWORK_CONNECTION_FAILED:I = 0x4

.field public static final whitelist ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT:I = 0x5

.field public static final whitelist ERROR_CODE_IO_NO_PERMISSION:I = 0x8

.field public static final whitelist ERROR_CODE_IO_READ_POSITION_OUT_OF_RANGE:I = 0xa

.field public static final whitelist ERROR_CODE_IO_UNSPECIFIED:I = 0x3

.field public static final whitelist ERROR_CODE_MUXING_FAILED:I = 0x13

.field public static final whitelist ERROR_CODE_NONE:I = 0x1

.field public static final whitelist ERROR_CODE_VIDEO_FRAME_PROCESSING_FAILED:I = 0x11

.field public static final whitelist FINAL_STATE_CANCELED:I = 0x2

.field public static final whitelist FINAL_STATE_ERROR:I = 0x3

.field public static final whitelist FINAL_STATE_SUCCEEDED:I = 0x1

.field public static final whitelist OPERATION_TYPE_AUDIO_EDIT:J = 0x8L

.field public static final whitelist OPERATION_TYPE_AUDIO_TRANSCODE:J = 0x2L

.field public static final whitelist OPERATION_TYPE_AUDIO_TRANSMUX:J = 0x20L

.field public static final whitelist OPERATION_TYPE_PAUSED:J = 0x40L

.field public static final whitelist OPERATION_TYPE_RESUMED:J = 0x80L

.field public static final whitelist OPERATION_TYPE_VIDEO_EDIT:J = 0x4L

.field public static final whitelist OPERATION_TYPE_VIDEO_TRANSCODE:J = 0x1L

.field public static final whitelist OPERATION_TYPE_VIDEO_TRANSMUX:J = 0x10L

.field public static final whitelist PROGRESS_PERCENT_UNKNOWN:I = -0x1

.field public static final whitelist TIME_SINCE_CREATED_UNKNOWN:I = -0x1


# instance fields
.field private final blacklist mErrorCode:I

.field private final blacklist mExporterName:Ljava/lang/String;

.field private final blacklist mFinalProgressPercent:F

.field private final blacklist mFinalState:I

.field private final blacklist mInputMediaItemInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/metrics/MediaItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMuxerName:Ljava/lang/String;

.field private final blacklist mOperationTypes:J

.field private final blacklist mOutputMediaItemInfo:Landroid/media/metrics/MediaItemInfo;

.field private final blacklist mTimeSinceCreatedMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 417
    new-instance v0, Landroid/media/metrics/EditingEndedEvent$1;

    invoke-direct {v0}, Landroid/media/metrics/EditingEndedEvent$1;-><init>()V

    sput-object v0, Landroid/media/metrics/EditingEndedEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IFIJLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/media/metrics/MediaItemInfo;JLandroid/os/Bundle;)V
    .registers 14
    .param p1, "finalState"    # I
    .param p2, "finalProgressPercent"    # F
    .param p3, "errorCode"    # I
    .param p4, "timeSinceCreatedMillis"    # J
    .param p6, "exporterName"    # Ljava/lang/String;
    .param p7, "muxerName"    # Ljava/lang/String;
    .param p9, "outputMediaItemInfo"    # Landroid/media/metrics/MediaItemInfo;
    .param p10, "operationTypes"    # J
    .param p12, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFIJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/media/metrics/MediaItemInfo;",
            ">;",
            "Landroid/media/metrics/MediaItemInfo;",
            "J",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 226
    .local p8, "inputMediaItemInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/metrics/MediaItemInfo;>;"
    invoke-direct {p0}, Landroid/media/metrics/Event;-><init>()V

    .line 227
    iput p1, p0, Landroid/media/metrics/EditingEndedEvent;->mFinalState:I

    .line 228
    iput p2, p0, Landroid/media/metrics/EditingEndedEvent;->mFinalProgressPercent:F

    .line 229
    iput p3, p0, Landroid/media/metrics/EditingEndedEvent;->mErrorCode:I

    .line 230
    iput-wide p4, p0, Landroid/media/metrics/EditingEndedEvent;->mTimeSinceCreatedMillis:J

    .line 231
    iput-object p6, p0, Landroid/media/metrics/EditingEndedEvent;->mExporterName:Ljava/lang/String;

    .line 232
    iput-object p7, p0, Landroid/media/metrics/EditingEndedEvent;->mMuxerName:Ljava/lang/String;

    .line 233
    iput-object p8, p0, Landroid/media/metrics/EditingEndedEvent;->mInputMediaItemInfos:Ljava/util/ArrayList;

    .line 234
    iput-object p9, p0, Landroid/media/metrics/EditingEndedEvent;->mOutputMediaItemInfo:Landroid/media/metrics/MediaItemInfo;

    .line 235
    iput-wide p10, p0, Landroid/media/metrics/EditingEndedEvent;->mOperationTypes:J

    .line 236
    invoke-virtual {p12}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/metrics/EditingEndedEvent;->mMetricsBundle:Landroid/os/Bundle;

    .line 237
    return-void
.end method

.method synthetic constructor blacklist <init>(IFIJLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/media/metrics/MediaItemInfo;JLandroid/os/Bundle;Landroid/media/metrics/EditingEndedEvent-IA;)V
    .registers 14

    invoke-direct/range {p0 .. p12}, Landroid/media/metrics/EditingEndedEvent;-><init>(IFIJLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/media/metrics/MediaItemInfo;JLandroid/os/Bundle;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 403
    invoke-direct {p0}, Landroid/media/metrics/Event;-><init>()V

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/metrics/EditingEndedEvent;->mFinalState:I

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/media/metrics/EditingEndedEvent;->mFinalProgressPercent:F

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/metrics/EditingEndedEvent;->mErrorCode:I

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/metrics/EditingEndedEvent;->mTimeSinceCreatedMillis:J

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/metrics/EditingEndedEvent;->mExporterName:Ljava/lang/String;

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/metrics/EditingEndedEvent;->mMuxerName:Ljava/lang/String;

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/metrics/EditingEndedEvent;->mInputMediaItemInfos:Ljava/util/ArrayList;

    .line 411
    iget-object v0, p0, Landroid/media/metrics/EditingEndedEvent;->mInputMediaItemInfos:Ljava/util/ArrayList;

    sget-object v1, Landroid/media/metrics/MediaItemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 412
    sget-object v0, Landroid/media/metrics/MediaItemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/metrics/MediaItemInfo;

    iput-object v0, p0, Landroid/media/metrics/EditingEndedEvent;->mOutputMediaItemInfo:Landroid/media/metrics/MediaItemInfo;

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/metrics/EditingEndedEvent;->mOperationTypes:J

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/metrics/EditingEndedEvent;->mMetricsBundle:Landroid/os/Bundle;

    .line 415
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/metrics/EditingEndedEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/metrics/EditingEndedEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 400
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 356
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 357
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_64

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_64

    .line 358
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/media/metrics/EditingEndedEvent;

    .line 359
    .local v2, "that":Landroid/media/metrics/EditingEndedEvent;
    iget v3, p0, Landroid/media/metrics/EditingEndedEvent;->mFinalState:I

    iget v4, v2, Landroid/media/metrics/EditingEndedEvent;->mFinalState:I

    if-ne v3, v4, :cond_62

    iget v3, p0, Landroid/media/metrics/EditingEndedEvent;->mFinalProgressPercent:F

    iget v4, v2, Landroid/media/metrics/EditingEndedEvent;->mFinalProgressPercent:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_62

    iget v3, p0, Landroid/media/metrics/EditingEndedEvent;->mErrorCode:I

    iget v4, v2, Landroid/media/metrics/EditingEndedEvent;->mErrorCode:I

    if-ne v3, v4, :cond_62

    iget-object v3, p0, Landroid/media/metrics/EditingEndedEvent;->mInputMediaItemInfos:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/media/metrics/EditingEndedEvent;->mInputMediaItemInfos:Ljava/util/ArrayList;

    .line 362
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    iget-object v3, p0, Landroid/media/metrics/EditingEndedEvent;->mOutputMediaItemInfo:Landroid/media/metrics/MediaItemInfo;

    iget-object v4, v2, Landroid/media/metrics/EditingEndedEvent;->mOutputMediaItemInfo:Landroid/media/metrics/MediaItemInfo;

    .line 363
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    iget-wide v3, p0, Landroid/media/metrics/EditingEndedEvent;->mOperationTypes:J

    iget-wide v5, v2, Landroid/media/metrics/EditingEndedEvent;->mOperationTypes:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_62

    iget-wide v3, p0, Landroid/media/metrics/EditingEndedEvent;->mTimeSinceCreatedMillis:J

    iget-wide v5, v2, Landroid/media/metrics/EditingEndedEvent;->mTimeSinceCreatedMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_62

    iget-object v3, p0, Landroid/media/metrics/EditingEndedEvent;->mExporterName:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/metrics/EditingEndedEvent;->mExporterName:Ljava/lang/String;

    .line 366
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    iget-object v3, p0, Landroid/media/metrics/EditingEndedEvent;->mMuxerName:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/metrics/EditingEndedEvent;->mMuxerName:Ljava/lang/String;

    .line 367
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    goto :goto_63

    :cond_62
    move v0, v1

    .line 359
    :goto_63
    return v0

    .line 357
    .end local v2    # "that":Landroid/media/metrics/EditingEndedEvent;
    :cond_64
    :goto_64
    return v1
.end method

.method public whitelist getErrorCode()I
    .registers 2

    .line 256
    iget v0, p0, Landroid/media/metrics/EditingEndedEvent;->mErrorCode:I

    return v0
.end method

.method public whitelist getExporterName()Ljava/lang/String;
    .registers 2

    .line 281
    iget-object v0, p0, Landroid/media/metrics/EditingEndedEvent;->mExporterName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFinalProgressPercent()F
    .registers 2

    .line 250
    iget v0, p0, Landroid/media/metrics/EditingEndedEvent;->mFinalProgressPercent:F

    return v0
.end method

.method public whitelist getFinalState()I
    .registers 2

    .line 242
    iget v0, p0, Landroid/media/metrics/EditingEndedEvent;->mFinalState:I

    return v0
.end method

.method public whitelist getInputMediaItemInfos()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/metrics/MediaItemInfo;",
            ">;"
        }
    .end annotation

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/media/metrics/EditingEndedEvent;->mInputMediaItemInfos:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getMetricsBundle()Landroid/os/Bundle;
    .registers 2

    .line 318
    iget-object v0, p0, Landroid/media/metrics/EditingEndedEvent;->mMetricsBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getMuxerName()Ljava/lang/String;
    .registers 2

    .line 290
    iget-object v0, p0, Landroid/media/metrics/EditingEndedEvent;->mMuxerName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOperationTypes()J
    .registers 3

    .line 307
    iget-wide v0, p0, Landroid/media/metrics/EditingEndedEvent;->mOperationTypes:J

    return-wide v0
.end method

.method public whitelist getOutputMediaItemInfo()Landroid/media/metrics/MediaItemInfo;
    .registers 2

    .line 302
    iget-object v0, p0, Landroid/media/metrics/EditingEndedEvent;->mOutputMediaItemInfo:Landroid/media/metrics/MediaItemInfo;

    return-object v0
.end method

.method public whitelist getTimeSinceCreatedMillis()J
    .registers 3

    .line 271
    iget-wide v0, p0, Landroid/media/metrics/EditingEndedEvent;->mTimeSinceCreatedMillis:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 11

    .line 372
    iget v0, p0, Landroid/media/metrics/EditingEndedEvent;->mFinalState:I

    .line 373
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/media/metrics/EditingEndedEvent;->mFinalProgressPercent:F

    .line 374
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v0, p0, Landroid/media/metrics/EditingEndedEvent;->mErrorCode:I

    .line 375
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/media/metrics/EditingEndedEvent;->mInputMediaItemInfos:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/media/metrics/EditingEndedEvent;->mOutputMediaItemInfo:Landroid/media/metrics/MediaItemInfo;

    iget-wide v6, p0, Landroid/media/metrics/EditingEndedEvent;->mOperationTypes:J

    .line 378
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v7, p0, Landroid/media/metrics/EditingEndedEvent;->mTimeSinceCreatedMillis:J

    .line 379
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, p0, Landroid/media/metrics/EditingEndedEvent;->mExporterName:Ljava/lang/String;

    iget-object v9, p0, Landroid/media/metrics/EditingEndedEvent;->mMuxerName:Ljava/lang/String;

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    .line 372
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EditingEndedEvent { finalState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/EditingEndedEvent;->mFinalState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", finalProgressPercent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/EditingEndedEvent;->mFinalProgressPercent:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/EditingEndedEvent;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeSinceCreatedMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/metrics/EditingEndedEvent;->mTimeSinceCreatedMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", exporterName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/metrics/EditingEndedEvent;->mExporterName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", muxerName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/metrics/EditingEndedEvent;->mMuxerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inputMediaItemInfos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/metrics/EditingEndedEvent;->mInputMediaItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputMediaItemInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/metrics/EditingEndedEvent;->mOutputMediaItemInfo:Landroid/media/metrics/MediaItemInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", operationTypes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/metrics/EditingEndedEvent;->mOperationTypes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 386
    iget v0, p0, Landroid/media/metrics/EditingEndedEvent;->mFinalState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    iget v0, p0, Landroid/media/metrics/EditingEndedEvent;->mFinalProgressPercent:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 388
    iget v0, p0, Landroid/media/metrics/EditingEndedEvent;->mErrorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    iget-wide v0, p0, Landroid/media/metrics/EditingEndedEvent;->mTimeSinceCreatedMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 390
    iget-object v0, p0, Landroid/media/metrics/EditingEndedEvent;->mExporterName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Landroid/media/metrics/EditingEndedEvent;->mMuxerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Landroid/media/metrics/EditingEndedEvent;->mInputMediaItemInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 393
    iget-object v0, p0, Landroid/media/metrics/EditingEndedEvent;->mOutputMediaItemInfo:Landroid/media/metrics/MediaItemInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 394
    iget-wide v0, p0, Landroid/media/metrics/EditingEndedEvent;->mOperationTypes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 395
    iget-object v0, p0, Landroid/media/metrics/EditingEndedEvent;->mMetricsBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 396
    return-void
.end method
