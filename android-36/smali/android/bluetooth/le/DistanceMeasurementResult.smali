.class public final Landroid/bluetooth/le/DistanceMeasurementResult;
.super Ljava/lang/Object;
.source "DistanceMeasurementResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/DistanceMeasurementResult$Builder;,
        Landroid/bluetooth/le/DistanceMeasurementResult$Nadm;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/DistanceMeasurementResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist NADM_ATTACK_IS_EXTREMELY_LIKELY:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NADM_ATTACK_IS_EXTREMELY_UNLIKELY:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NADM_ATTACK_IS_LIKELY:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NADM_ATTACK_IS_POSSIBLE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NADM_ATTACK_IS_UNLIKELY:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NADM_ATTACK_IS_VERY_LIKELY:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NADM_ATTACK_IS_VERY_UNLIKELY:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NADM_UNKNOWN:I = 0xff
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final blacklist mAltitudeAngle:D

.field private final blacklist mAzimuthAngle:D

.field private final blacklist mConfidenceLevel:D

.field private final blacklist mDelaySpreadMeters:D

.field private final blacklist mDetectedAttackLevel:I

.field private final blacklist mErrorAltitudeAngle:D

.field private final blacklist mErrorAzimuthAngle:D

.field private final blacklist mErrorMeters:D

.field private final blacklist mMeasurementTimestampNanos:J

.field private final blacklist mMeters:D

.field private final blacklist mVelocityMetersPerSecond:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 381
    new-instance v0, Landroid/bluetooth/le/DistanceMeasurementResult$1;

    invoke-direct {v0}, Landroid/bluetooth/le/DistanceMeasurementResult$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/DistanceMeasurementResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(DDDDDDDDIDJ)V
    .registers 38
    .param p1, "meters"    # D
    .param p3, "errorMeters"    # D
    .param p5, "azimuthAngle"    # D
    .param p7, "errorAzimuthAngle"    # D
    .param p9, "altitudeAngle"    # D
    .param p11, "errorAltitudeAngle"    # D
    .param p13, "delaySpreadMeters"    # D
    .param p15, "confidenceLevel"    # D
    .param p17, "detectedAttackLevel"    # I
    .param p18, "velocityMetersPerSecond"    # D
    .param p20, "measurementTimestampNanos"    # J

    .line 148
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 149
    move-wide/from16 v1, p1

    iput-wide v1, v0, Landroid/bluetooth/le/DistanceMeasurementResult;->mMeters:D

    .line 150
    move-wide/from16 v3, p3

    iput-wide v3, v0, Landroid/bluetooth/le/DistanceMeasurementResult;->mErrorMeters:D

    .line 151
    move-wide/from16 v5, p5

    iput-wide v5, v0, Landroid/bluetooth/le/DistanceMeasurementResult;->mAzimuthAngle:D

    .line 152
    move-wide/from16 v7, p7

    iput-wide v7, v0, Landroid/bluetooth/le/DistanceMeasurementResult;->mErrorAzimuthAngle:D

    .line 153
    move-wide/from16 v9, p9

    iput-wide v9, v0, Landroid/bluetooth/le/DistanceMeasurementResult;->mAltitudeAngle:D

    .line 154
    move-wide/from16 v11, p11

    iput-wide v11, v0, Landroid/bluetooth/le/DistanceMeasurementResult;->mErrorAltitudeAngle:D

    .line 155
    move-wide/from16 v13, p13

    iput-wide v13, v0, Landroid/bluetooth/le/DistanceMeasurementResult;->mDelaySpreadMeters:D

    .line 156
    move-wide/from16 v1, p15

    iput-wide v1, v0, Landroid/bluetooth/le/DistanceMeasurementResult;->mConfidenceLevel:D

    .line 157
    move/from16 v15, p17

    iput v15, v0, Landroid/bluetooth/le/DistanceMeasurementResult;->mDetectedAttackLevel:I

    .line 158
    move-wide/from16 v1, p18

    iput-wide v1, v0, Landroid/bluetooth/le/DistanceMeasurementResult;->mVelocityMetersPerSecond:D

    .line 159
    move-wide/from16 v1, p20

    iput-wide v1, v0, Landroid/bluetooth/le/DistanceMeasurementResult;->mMeasurementTimestampNanos:J

    .line 160
    return-void
.end method

.method synthetic constructor blacklist <init>(DDDDDDDDIDJLandroid/bluetooth/le/DistanceMeasurementResult-IA;)V
    .registers 23

    invoke-direct/range {p0 .. p21}, Landroid/bluetooth/le/DistanceMeasurementResult;-><init>(DDDDDDDDIDJ)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAltitudeAngle()D
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 240
    iget-wide v0, p0, Landroid/bluetooth/le/DistanceMeasurementResult;->mAltitudeAngle:D

    return-wide v0
.end method

.method public whitelist getAzimuthAngle()D
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 209
    iget-wide v0, p0, Landroid/bluetooth/le/DistanceMeasurementResult;->mAzimuthAngle:D

    return-wide v0
.end method

.method public whitelist getConfidenceLevel()D
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 278
    iget-wide v0, p0, Landroid/bluetooth/le/DistanceMeasurementResult;->mConfidenceLevel:D

    return-wide v0
.end method

.method public whitelist getDelaySpreadMeters()D
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 265
    iget-wide v0, p0, Landroid/bluetooth/le/DistanceMeasurementResult;->mDelaySpreadMeters:D

    return-wide v0
.end method

.method public whitelist getDetectedAttackLevel()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 290
    iget v0, p0, Landroid/bluetooth/le/DistanceMeasurementResult;->mDetectedAttackLevel:I

    return v0
.end method

.method public whitelist getErrorAltitudeAngle()D
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 253
    iget-wide v0, p0, Landroid/bluetooth/le/DistanceMeasurementResult;->mErrorAltitudeAngle:D

    return-wide v0
.end method

.method public whitelist getErrorAzimuthAngle()D
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 222
    iget-wide v0, p0, Landroid/bluetooth/le/DistanceMeasurementResult;->mErrorAzimuthAngle:D

    return-wide v0
.end method

.method public whitelist getErrorMeters()D
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 184
    iget-wide v0, p0, Landroid/bluetooth/le/DistanceMeasurementResult;->mErrorMeters:D

    return-wide v0
.end method

.method public whitelist getMeasurementTimestampNanos()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 316
    iget-wide v0, p0, Landroid/bluetooth/le/DistanceMeasurementResult;->mMeasurementTimestampNanos:J

    return-wide v0
.end method

.method public whitelist getResultMeters()D
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 170
    iget-wide v0, p0, Landroid/bluetooth/le/DistanceMeasurementResult;->mMeters:D

    return-wide v0
.end method

.method public whitelist getVelocityMetersPerSecond()D
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 303
    iget-wide v0, p0, Landroid/bluetooth/le/DistanceMeasurementResult;->mVelocityMetersPerSecond:D

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DistanceMeasurement[meters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/le/DistanceMeasurementResult;->mMeters:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorMeters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/le/DistanceMeasurementResult;->mErrorMeters:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", azimuthAngle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/le/DistanceMeasurementResult;->mAzimuthAngle:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorAzimuthAngle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/le/DistanceMeasurementResult;->mErrorAzimuthAngle:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", altitudeAngle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/le/DistanceMeasurementResult;->mAltitudeAngle:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorAltitudeAngle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/le/DistanceMeasurementResult;->mErrorAltitudeAngle:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", delaySpreadMeters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/le/DistanceMeasurementResult;->mDelaySpreadMeters:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", confidenceLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/le/DistanceMeasurementResult;->mConfidenceLevel:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", detectedAttackLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/DistanceMeasurementResult;->mDetectedAttackLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", velocityMetersPerSecond: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/le/DistanceMeasurementResult;->mVelocityMetersPerSecond:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", elapsedRealtimeNanos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/le/DistanceMeasurementResult;->mMeasurementTimestampNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 336
    iget-wide v0, p0, Landroid/bluetooth/le/DistanceMeasurementResult;->mMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 337
    iget-wide v0, p0, Landroid/bluetooth/le/DistanceMeasurementResult;->mErrorMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 338
    iget-wide v0, p0, Landroid/bluetooth/le/DistanceMeasurementResult;->mAzimuthAngle:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 339
    iget-wide v0, p0, Landroid/bluetooth/le/DistanceMeasurementResult;->mErrorAzimuthAngle:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 340
    iget-wide v0, p0, Landroid/bluetooth/le/DistanceMeasurementResult;->mAltitudeAngle:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 341
    iget-wide v0, p0, Landroid/bluetooth/le/DistanceMeasurementResult;->mErrorAltitudeAngle:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 342
    iget-wide v0, p0, Landroid/bluetooth/le/DistanceMeasurementResult;->mDelaySpreadMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 343
    iget-wide v0, p0, Landroid/bluetooth/le/DistanceMeasurementResult;->mConfidenceLevel:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 344
    iget v0, p0, Landroid/bluetooth/le/DistanceMeasurementResult;->mDetectedAttackLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    iget-wide v0, p0, Landroid/bluetooth/le/DistanceMeasurementResult;->mVelocityMetersPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 346
    iget-wide v0, p0, Landroid/bluetooth/le/DistanceMeasurementResult;->mMeasurementTimestampNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 347
    return-void
.end method
