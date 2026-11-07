.class Landroid/uwb/RangingMeasurement$1;
.super Ljava/lang/Object;
.source "RangingMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/uwb/RangingMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/uwb/RangingMeasurement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/uwb/RangingMeasurement;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 361
    new-instance v0, Landroid/uwb/RangingMeasurement$Builder;

    invoke-direct {v0}, Landroid/uwb/RangingMeasurement$Builder;-><init>()V

    .line 362
    .local v0, "builder":Landroid/uwb/RangingMeasurement$Builder;
    const-class v1, Landroid/uwb/UwbAddress;

    .line 363
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/uwb/UwbAddress;

    .line 362
    invoke-virtual {v0, v1}, Landroid/uwb/RangingMeasurement$Builder;->setRemoteDeviceAddress(Landroid/uwb/UwbAddress;)Landroid/uwb/RangingMeasurement$Builder;

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/uwb/RangingMeasurement$Builder;->setStatus(I)Landroid/uwb/RangingMeasurement$Builder;

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/uwb/RangingMeasurement$Builder;->setElapsedRealtimeNanos(J)Landroid/uwb/RangingMeasurement$Builder;

    .line 366
    const-class v1, Landroid/uwb/DistanceMeasurement;

    .line 367
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/uwb/DistanceMeasurement;

    .line 366
    invoke-virtual {v0, v1}, Landroid/uwb/RangingMeasurement$Builder;->setDistanceMeasurement(Landroid/uwb/DistanceMeasurement;)Landroid/uwb/RangingMeasurement$Builder;

    .line 368
    const-class v1, Landroid/uwb/AngleOfArrivalMeasurement;

    .line 369
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/uwb/AngleOfArrivalMeasurement;

    .line 368
    invoke-virtual {v0, v1}, Landroid/uwb/RangingMeasurement$Builder;->setAngleOfArrivalMeasurement(Landroid/uwb/AngleOfArrivalMeasurement;)Landroid/uwb/RangingMeasurement$Builder;

    .line 370
    const-class v1, Landroid/uwb/AngleOfArrivalMeasurement;

    .line 371
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/uwb/AngleOfArrivalMeasurement;

    .line 370
    invoke-virtual {v0, v1}, Landroid/uwb/RangingMeasurement$Builder;->setDestinationAngleOfArrivalMeasurement(Landroid/uwb/AngleOfArrivalMeasurement;)Landroid/uwb/RangingMeasurement$Builder;

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/uwb/RangingMeasurement$Builder;->setLineOfSight(I)Landroid/uwb/RangingMeasurement$Builder;

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/uwb/RangingMeasurement$Builder;->setMeasurementFocus(I)Landroid/uwb/RangingMeasurement$Builder;

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/uwb/RangingMeasurement$Builder;->setRssiDbm(I)Landroid/uwb/RangingMeasurement$Builder;

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/uwb/RangingMeasurement$Builder;->setHusPrimarySessionId(J)Landroid/uwb/RangingMeasurement$Builder;

    .line 376
    nop

    .line 377
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 378
    .local v1, "metadata":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_7d

    invoke-virtual {v0, v1}, Landroid/uwb/RangingMeasurement$Builder;->setRangingMeasurementMetadata(Landroid/os/PersistableBundle;)Landroid/uwb/RangingMeasurement$Builder;

    .line 379
    :cond_7d
    invoke-virtual {v0}, Landroid/uwb/RangingMeasurement$Builder;->build()Landroid/uwb/RangingMeasurement;

    move-result-object v2

    return-object v2
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

    .line 358
    invoke-virtual {p0, p1}, Landroid/uwb/RangingMeasurement$1;->createFromParcel(Landroid/os/Parcel;)Landroid/uwb/RangingMeasurement;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/uwb/RangingMeasurement;
    .registers 3
    .param p1, "size"    # I

    .line 384
    new-array v0, p1, [Landroid/uwb/RangingMeasurement;

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

    .line 358
    invoke-virtual {p0, p1}, Landroid/uwb/RangingMeasurement$1;->newArray(I)[Landroid/uwb/RangingMeasurement;

    move-result-object p1

    return-object p1
.end method
