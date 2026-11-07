.class public final Landroid/uwb/RangingMeasurement;
.super Ljava/lang/Object;
.source "RangingMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/uwb/RangingMeasurement$Builder;,
        Landroid/uwb/RangingMeasurement$MeasurementFocus;,
        Landroid/uwb/RangingMeasurement$LineOfSight;,
        Landroid/uwb/RangingMeasurement$Status;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/uwb/RangingMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LOS:I = 0x0

.field public static final whitelist LOS_UNDETERMINED:I = 0xff

.field public static final whitelist MEASUREMENT_FOCUS_ANGLE_OF_ARRIVAL_AZIMUTH:I = 0x2

.field public static final whitelist MEASUREMENT_FOCUS_ANGLE_OF_ARRIVAL_ELEVATION:I = 0x3

.field public static final whitelist MEASUREMENT_FOCUS_NONE:I = 0x0

.field public static final whitelist MEASUREMENT_FOCUS_RANGE:I = 0x1

.field public static final whitelist NLOS:I = 0x1

.field public static final blacklist NON_HYBRID_UWB_SESSION_ID:I = 0x0

.field public static final whitelist RANGING_STATUS_FAILURE_OUT_OF_RANGE:I = 0x1

.field public static final whitelist RANGING_STATUS_FAILURE_UNKNOWN_ERROR:I = -0x1

.field public static final whitelist RANGING_STATUS_SUCCESS:I = 0x0

.field public static final whitelist RSSI_MAX:I = -0x1

.field public static final whitelist RSSI_MIN:I = -0x7f

.field public static final whitelist RSSI_UNKNOWN:I = -0x80


# instance fields
.field private final blacklist mAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

.field private final blacklist mDestinationAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

.field private final blacklist mDistanceMeasurement:Landroid/uwb/DistanceMeasurement;

.field private final blacklist mElapsedRealtimeNanos:J

.field private final blacklist mHusPrimarySessionId:J

.field private final blacklist mLineOfSight:I

.field private final blacklist mMeasurementFocus:I

.field private final blacklist mRangingMeasurementMetadata:Landroid/os/PersistableBundle;

.field private final blacklist mRemoteDeviceAddress:Landroid/uwb/UwbAddress;

.field private final blacklist mRssiDbm:I

.field private final blacklist mStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 357
    new-instance v0, Landroid/uwb/RangingMeasurement$1;

    invoke-direct {v0}, Landroid/uwb/RangingMeasurement$1;-><init>()V

    sput-object v0, Landroid/uwb/RangingMeasurement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/uwb/UwbAddress;IJLandroid/uwb/DistanceMeasurement;Landroid/uwb/AngleOfArrivalMeasurement;Landroid/uwb/AngleOfArrivalMeasurement;IIIJLandroid/os/PersistableBundle;)V
    .registers 14
    .param p1, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p2, "status"    # I
    .param p3, "elapsedRealtimeNanos"    # J
    .param p5, "distanceMeasurement"    # Landroid/uwb/DistanceMeasurement;
    .param p6, "angleOfArrivalMeasurement"    # Landroid/uwb/AngleOfArrivalMeasurement;
    .param p7, "destinationAngleOfArrivalMeasurement"    # Landroid/uwb/AngleOfArrivalMeasurement;
    .param p8, "lineOfSight"    # I
    .param p9, "measurementFocus"    # I
    .param p10, "rssiDbm"    # I
    .param p11, "husPrimarySessionId"    # J
    .param p13, "rangingMeasurementMetadata"    # Landroid/os/PersistableBundle;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Landroid/uwb/RangingMeasurement;->mRemoteDeviceAddress:Landroid/uwb/UwbAddress;

    .line 73
    iput p2, p0, Landroid/uwb/RangingMeasurement;->mStatus:I

    .line 74
    iput-wide p3, p0, Landroid/uwb/RangingMeasurement;->mElapsedRealtimeNanos:J

    .line 75
    iput-object p5, p0, Landroid/uwb/RangingMeasurement;->mDistanceMeasurement:Landroid/uwb/DistanceMeasurement;

    .line 76
    iput-object p6, p0, Landroid/uwb/RangingMeasurement;->mAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    .line 77
    iput-object p7, p0, Landroid/uwb/RangingMeasurement;->mDestinationAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    .line 78
    iput p8, p0, Landroid/uwb/RangingMeasurement;->mLineOfSight:I

    .line 79
    iput p9, p0, Landroid/uwb/RangingMeasurement;->mMeasurementFocus:I

    .line 80
    iput p10, p0, Landroid/uwb/RangingMeasurement;->mRssiDbm:I

    .line 81
    iput-wide p11, p0, Landroid/uwb/RangingMeasurement;->mHusPrimarySessionId:J

    .line 82
    iput-object p13, p0, Landroid/uwb/RangingMeasurement;->mRangingMeasurementMetadata:Landroid/os/PersistableBundle;

    .line 83
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/uwb/UwbAddress;IJLandroid/uwb/DistanceMeasurement;Landroid/uwb/AngleOfArrivalMeasurement;Landroid/uwb/AngleOfArrivalMeasurement;IIIJLandroid/os/PersistableBundle;Landroid/uwb/RangingMeasurement-IA;)V
    .registers 15

    invoke-direct/range {p0 .. p13}, Landroid/uwb/RangingMeasurement;-><init>(Landroid/uwb/UwbAddress;IJLandroid/uwb/DistanceMeasurement;Landroid/uwb/AngleOfArrivalMeasurement;Landroid/uwb/AngleOfArrivalMeasurement;IIIJLandroid/os/PersistableBundle;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 297
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 298
    return v0

    .line 301
    :cond_4
    instance-of v1, p1, Landroid/uwb/RangingMeasurement;

    const/4 v2, 0x0

    if-eqz v1, :cond_89

    .line 302
    move-object v1, p1

    check-cast v1, Landroid/uwb/RangingMeasurement;

    .line 303
    .local v1, "other":Landroid/uwb/RangingMeasurement;
    invoke-static {}, Lcom/android/x/uwb/com/android/uwb/flags/Flags;->uwbFira3025q4()Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-wide v3, p0, Landroid/uwb/RangingMeasurement;->mHusPrimarySessionId:J

    .line 304
    invoke-virtual {v1}, Landroid/uwb/RangingMeasurement;->getHusPrimarySessionId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1d

    goto :goto_1f

    :cond_1d
    move v3, v2

    goto :goto_20

    :cond_1f
    :goto_1f
    move v3, v0

    .line 306
    .local v3, "isHusPrimarySessionIdEqual":Z
    :goto_20
    iget-object v4, p0, Landroid/uwb/RangingMeasurement;->mRemoteDeviceAddress:Landroid/uwb/UwbAddress;

    invoke-virtual {v1}, Landroid/uwb/RangingMeasurement;->getRemoteDeviceAddress()Landroid/uwb/UwbAddress;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    iget v4, p0, Landroid/uwb/RangingMeasurement;->mStatus:I

    .line 307
    invoke-virtual {v1}, Landroid/uwb/RangingMeasurement;->getStatus()I

    move-result v5

    if-ne v4, v5, :cond_87

    iget-wide v4, p0, Landroid/uwb/RangingMeasurement;->mElapsedRealtimeNanos:J

    .line 308
    invoke-virtual {v1}, Landroid/uwb/RangingMeasurement;->getElapsedRealtimeNanos()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_87

    iget-object v4, p0, Landroid/uwb/RangingMeasurement;->mDistanceMeasurement:Landroid/uwb/DistanceMeasurement;

    .line 309
    invoke-virtual {v1}, Landroid/uwb/RangingMeasurement;->getDistanceMeasurement()Landroid/uwb/DistanceMeasurement;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    iget-object v4, p0, Landroid/uwb/RangingMeasurement;->mAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    .line 311
    invoke-virtual {v1}, Landroid/uwb/RangingMeasurement;->getAngleOfArrivalMeasurement()Landroid/uwb/AngleOfArrivalMeasurement;

    move-result-object v5

    .line 310
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    iget-object v4, p0, Landroid/uwb/RangingMeasurement;->mDestinationAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    .line 314
    invoke-virtual {v1}, Landroid/uwb/RangingMeasurement;->getDestinationAngleOfArrivalMeasurement()Landroid/uwb/AngleOfArrivalMeasurement;

    move-result-object v5

    .line 312
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    iget v4, p0, Landroid/uwb/RangingMeasurement;->mLineOfSight:I

    .line 315
    invoke-virtual {v1}, Landroid/uwb/RangingMeasurement;->getLineOfSight()I

    move-result v5

    if-ne v4, v5, :cond_87

    iget v4, p0, Landroid/uwb/RangingMeasurement;->mMeasurementFocus:I

    .line 316
    invoke-virtual {v1}, Landroid/uwb/RangingMeasurement;->getMeasurementFocus()I

    move-result v5

    if-ne v4, v5, :cond_87

    iget v4, p0, Landroid/uwb/RangingMeasurement;->mRssiDbm:I

    .line 317
    invoke-virtual {v1}, Landroid/uwb/RangingMeasurement;->getRssiDbm()I

    move-result v5

    if-ne v4, v5, :cond_87

    if-eqz v3, :cond_87

    iget-object v4, p0, Landroid/uwb/RangingMeasurement;->mRangingMeasurementMetadata:Landroid/os/PersistableBundle;

    iget-object v5, v1, Landroid/uwb/RangingMeasurement;->mRangingMeasurementMetadata:Landroid/os/PersistableBundle;

    .line 319
    invoke-static {v4, v5}, Landroid/uwb/util/PersistableBundleUtils;->isEqual(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z

    move-result v4

    if-eqz v4, :cond_87

    goto :goto_88

    :cond_87
    move v0, v2

    .line 306
    :goto_88
    return v0

    .line 322
    .end local v1    # "other":Landroid/uwb/RangingMeasurement;
    .end local v3    # "isHusPrimarySessionIdEqual":Z
    :cond_89
    return v2
.end method

.method public whitelist getAngleOfArrivalMeasurement()Landroid/uwb/AngleOfArrivalMeasurement;
    .registers 2

    .line 165
    iget-object v0, p0, Landroid/uwb/RangingMeasurement;->mAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    return-object v0
.end method

.method public whitelist getDestinationAngleOfArrivalMeasurement()Landroid/uwb/AngleOfArrivalMeasurement;
    .registers 2

    .line 176
    iget-object v0, p0, Landroid/uwb/RangingMeasurement;->mDestinationAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    return-object v0
.end method

.method public whitelist getDistanceMeasurement()Landroid/uwb/DistanceMeasurement;
    .registers 2

    .line 154
    iget-object v0, p0, Landroid/uwb/RangingMeasurement;->mDistanceMeasurement:Landroid/uwb/DistanceMeasurement;

    return-object v0
.end method

.method public whitelist getElapsedRealtimeNanos()J
    .registers 3

    .line 143
    iget-wide v0, p0, Landroid/uwb/RangingMeasurement;->mElapsedRealtimeNanos:J

    return-wide v0
.end method

.method public blacklist getHusPrimarySessionId()J
    .registers 3

    .line 236
    iget-wide v0, p0, Landroid/uwb/RangingMeasurement;->mHusPrimarySessionId:J

    return-wide v0
.end method

.method public whitelist getLineOfSight()I
    .registers 2

    .line 210
    iget v0, p0, Landroid/uwb/RangingMeasurement;->mLineOfSight:I

    return v0
.end method

.method public whitelist getMeasurementFocus()I
    .registers 2

    .line 279
    iget v0, p0, Landroid/uwb/RangingMeasurement;->mMeasurementFocus:I

    return v0
.end method

.method public whitelist getRangingMeasurementMetadata()Landroid/os/PersistableBundle;
    .registers 2

    .line 289
    iget-object v0, p0, Landroid/uwb/RangingMeasurement;->mRangingMeasurementMetadata:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public whitelist getRemoteDeviceAddress()Landroid/uwb/UwbAddress;
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/uwb/RangingMeasurement;->mRemoteDeviceAddress:Landroid/uwb/UwbAddress;

    return-object v0
.end method

.method public whitelist getRssiDbm()I
    .registers 2

    .line 217
    iget v0, p0, Landroid/uwb/RangingMeasurement;->mRssiDbm:I

    return v0
.end method

.method public whitelist getStatus()I
    .registers 2

    .line 132
    iget v0, p0, Landroid/uwb/RangingMeasurement;->mStatus:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 12

    .line 330
    iget-object v0, p0, Landroid/uwb/RangingMeasurement;->mRemoteDeviceAddress:Landroid/uwb/UwbAddress;

    iget v1, p0, Landroid/uwb/RangingMeasurement;->mStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Landroid/uwb/RangingMeasurement;->mElapsedRealtimeNanos:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Landroid/uwb/RangingMeasurement;->mDistanceMeasurement:Landroid/uwb/DistanceMeasurement;

    iget-object v4, p0, Landroid/uwb/RangingMeasurement;->mAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    iget-object v5, p0, Landroid/uwb/RangingMeasurement;->mDestinationAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    iget v6, p0, Landroid/uwb/RangingMeasurement;->mLineOfSight:I

    .line 332
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Landroid/uwb/RangingMeasurement;->mMeasurementFocus:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Landroid/uwb/RangingMeasurement;->mRssiDbm:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-wide v9, p0, Landroid/uwb/RangingMeasurement;->mHusPrimarySessionId:J

    .line 333
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-object v10, p0, Landroid/uwb/RangingMeasurement;->mRangingMeasurementMetadata:Landroid/os/PersistableBundle;

    invoke-static {v10}, Landroid/uwb/util/PersistableBundleUtils;->getHashCode(Landroid/os/PersistableBundle;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    .line 330
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RangingMeasurement[remote device address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/uwb/RangingMeasurement;->mRemoteDeviceAddress:Landroid/uwb/UwbAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", distance measurement: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/uwb/RangingMeasurement;->mDistanceMeasurement:Landroid/uwb/DistanceMeasurement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", aoa measurement: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/uwb/RangingMeasurement;->mAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dest aoa measurement: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/uwb/RangingMeasurement;->mDestinationAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lineOfSight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/uwb/RangingMeasurement;->mLineOfSight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", measurementFocus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/uwb/RangingMeasurement;->mMeasurementFocus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rssiDbm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/uwb/RangingMeasurement;->mRssiDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", husPrimarySessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/uwb/RangingMeasurement;->mHusPrimarySessionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ranging measurement metadata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/uwb/RangingMeasurement;->mRangingMeasurementMetadata:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", elapsed real time nanos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/uwb/RangingMeasurement;->mElapsedRealtimeNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/uwb/RangingMeasurement;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

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

    .line 344
    iget-object v0, p0, Landroid/uwb/RangingMeasurement;->mRemoteDeviceAddress:Landroid/uwb/UwbAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 345
    iget v0, p0, Landroid/uwb/RangingMeasurement;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    iget-wide v0, p0, Landroid/uwb/RangingMeasurement;->mElapsedRealtimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 347
    iget-object v0, p0, Landroid/uwb/RangingMeasurement;->mDistanceMeasurement:Landroid/uwb/DistanceMeasurement;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 348
    iget-object v0, p0, Landroid/uwb/RangingMeasurement;->mAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 349
    iget-object v0, p0, Landroid/uwb/RangingMeasurement;->mDestinationAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 350
    iget v0, p0, Landroid/uwb/RangingMeasurement;->mLineOfSight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    iget v0, p0, Landroid/uwb/RangingMeasurement;->mMeasurementFocus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    iget v0, p0, Landroid/uwb/RangingMeasurement;->mRssiDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    iget-wide v0, p0, Landroid/uwb/RangingMeasurement;->mHusPrimarySessionId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 354
    iget-object v0, p0, Landroid/uwb/RangingMeasurement;->mRangingMeasurementMetadata:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 355
    return-void
.end method
