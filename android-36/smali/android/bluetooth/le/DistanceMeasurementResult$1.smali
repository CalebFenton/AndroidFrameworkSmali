.class Landroid/bluetooth/le/DistanceMeasurementResult$1;
.super Ljava/lang/Object;
.source "DistanceMeasurementResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/DistanceMeasurementResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/le/DistanceMeasurementResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/DistanceMeasurementResult;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 385
    new-instance v0, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;-><init>(DD)V

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->setAzimuthAngle(D)Landroid/bluetooth/le/DistanceMeasurementResult$Builder;

    move-result-object v0

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->setErrorAzimuthAngle(D)Landroid/bluetooth/le/DistanceMeasurementResult$Builder;

    move-result-object v0

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->setAltitudeAngle(D)Landroid/bluetooth/le/DistanceMeasurementResult$Builder;

    move-result-object v0

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->setErrorAltitudeAngle(D)Landroid/bluetooth/le/DistanceMeasurementResult$Builder;

    move-result-object v0

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->setDelaySpreadMeters(D)Landroid/bluetooth/le/DistanceMeasurementResult$Builder;

    move-result-object v0

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->setConfidenceLevel(D)Landroid/bluetooth/le/DistanceMeasurementResult$Builder;

    move-result-object v0

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->setDetectedAttackLevel(I)Landroid/bluetooth/le/DistanceMeasurementResult$Builder;

    move-result-object v0

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->setVelocityMetersPerSecond(D)Landroid/bluetooth/le/DistanceMeasurementResult$Builder;

    move-result-object v0

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->setMeasurementTimestampNanos(J)Landroid/bluetooth/le/DistanceMeasurementResult$Builder;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Landroid/bluetooth/le/DistanceMeasurementResult$Builder;->build()Landroid/bluetooth/le/DistanceMeasurementResult;

    move-result-object v0

    .line 385
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 382
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/DistanceMeasurementResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/DistanceMeasurementResult;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/bluetooth/le/DistanceMeasurementResult;
    .registers 3
    .param p1, "size"    # I

    .line 400
    new-array v0, p1, [Landroid/bluetooth/le/DistanceMeasurementResult;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 382
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/DistanceMeasurementResult$1;->newArray(I)[Landroid/bluetooth/le/DistanceMeasurementResult;

    move-result-object p1

    return-object p1
.end method
