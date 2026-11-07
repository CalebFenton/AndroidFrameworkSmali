.class public Landroid/location/GpsMeasurementsEvent;
.super Ljava/lang/Object;
.source "GpsMeasurementsEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsMeasurementsEvent$Listener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GpsMeasurementsEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STATUS_GPS_LOCATION_DISABLED:I = 0x2

.field public static final whitelist STATUS_NOT_SUPPORTED:I = 0x0

.field public static final whitelist STATUS_READY:I = 0x1


# instance fields
.field private final greylist-max-o mClock:Landroid/location/GpsClock;

.field private final greylist-max-o mReadOnlyMeasurements:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroid/location/GpsMeasurement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 109
    new-instance v0, Landroid/location/GpsMeasurementsEvent$1;

    invoke-direct {v0}, Landroid/location/GpsMeasurementsEvent$1;-><init>()V

    sput-object v0, Landroid/location/GpsMeasurementsEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/location/GpsClock;[Landroid/location/GpsMeasurement;)V
    .registers 5
    .param p1, "clock"    # Landroid/location/GpsClock;
    .param p2, "measurements"    # [Landroid/location/GpsMeasurement;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    if-eqz p1, :cond_1f

    .line 86
    if-eqz p2, :cond_17

    array-length v0, p2

    if-eqz v0, :cond_17

    .line 91
    iput-object p1, p0, Landroid/location/GpsMeasurementsEvent;->mClock:Landroid/location/GpsClock;

    .line 92
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 93
    .local v0, "measurementCollection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/location/GpsMeasurement;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Landroid/location/GpsMeasurementsEvent;->mReadOnlyMeasurements:Ljava/util/Collection;

    .line 94
    return-void

    .line 87
    .end local v0    # "measurementCollection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/location/GpsMeasurement;>;"
    :cond_17
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Parameter \'measurements\' must not be null or empty."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1f
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Parameter \'clock\' must not be null."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getClock()Landroid/location/GpsClock;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/location/GpsMeasurementsEvent;->mClock:Landroid/location/GpsClock;

    return-object v0
.end method

.method public whitelist getMeasurements()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/location/GpsMeasurement;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Landroid/location/GpsMeasurementsEvent;->mReadOnlyMeasurements:Ljava/util/Collection;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ GpsMeasurementsEvent:\n\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/location/GpsMeasurementsEvent;->mClock:Landroid/location/GpsClock;

    invoke-virtual {v1}, Landroid/location/GpsClock;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v2, p0, Landroid/location/GpsMeasurementsEvent;->mReadOnlyMeasurements:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GpsMeasurement;

    .line 155
    .local v3, "measurement":Landroid/location/GpsMeasurement;
    invoke-virtual {v3}, Landroid/location/GpsMeasurement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .end local v3    # "measurement":Landroid/location/GpsMeasurement;
    goto :goto_1b

    .line 159
    :cond_32
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 137
    iget-object v0, p0, Landroid/location/GpsMeasurementsEvent;->mClock:Landroid/location/GpsClock;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 139
    iget-object v0, p0, Landroid/location/GpsMeasurementsEvent;->mReadOnlyMeasurements:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 140
    .local v0, "measurementsCount":I
    iget-object v1, p0, Landroid/location/GpsMeasurementsEvent;->mReadOnlyMeasurements:Ljava/util/Collection;

    new-array v2, v0, [Landroid/location/GpsMeasurement;

    .line 141
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/location/GpsMeasurement;

    .line 142
    .local v1, "measurementsArray":[Landroid/location/GpsMeasurement;
    array-length v2, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 144
    return-void
.end method
