.class public final Landroid/location/QzssSatelliteEphemeris;
.super Ljava/lang/Object;
.source "QzssSatelliteEphemeris.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/QzssSatelliteEphemeris$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/QzssSatelliteEphemeris;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mGpsL2Params:Landroid/location/GpsSatelliteEphemeris$GpsL2Params;

.field private final blacklist mSatelliteClockModel:Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;

.field private final blacklist mSatelliteEphemerisTime:Landroid/location/SatelliteEphemerisTime;

.field private final blacklist mSatelliteHealth:Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;

.field private final blacklist mSatelliteOrbitModel:Landroid/location/KeplerianOrbitModel;

.field private final blacklist mSvid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 126
    new-instance v0, Landroid/location/QzssSatelliteEphemeris$1;

    invoke-direct {v0}, Landroid/location/QzssSatelliteEphemeris$1;-><init>()V

    sput-object v0, Landroid/location/QzssSatelliteEphemeris;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/QzssSatelliteEphemeris$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/location/QzssSatelliteEphemeris$Builder;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-static {p1}, Landroid/location/QzssSatelliteEphemeris$Builder;->-$$Nest$fgetmSvid(Landroid/location/QzssSatelliteEphemeris$Builder;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 109
    invoke-static {p1}, Landroid/location/QzssSatelliteEphemeris$Builder;->-$$Nest$fgetmGpsL2Params(Landroid/location/QzssSatelliteEphemeris$Builder;)Landroid/location/GpsSatelliteEphemeris$GpsL2Params;

    move-result-object v0

    const-string v1, "GpsL2Params cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-static {p1}, Landroid/location/QzssSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteClockModel(Landroid/location/QzssSatelliteEphemeris$Builder;)Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;

    move-result-object v0

    const-string v1, "SatelliteClockModel cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {p1}, Landroid/location/QzssSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteOrbitModel(Landroid/location/QzssSatelliteEphemeris$Builder;)Landroid/location/KeplerianOrbitModel;

    move-result-object v0

    const-string v1, "SatelliteOrbitModel cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-static {p1}, Landroid/location/QzssSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteHealth(Landroid/location/QzssSatelliteEphemeris$Builder;)Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;

    move-result-object v0

    const-string v1, "SatelliteHealth cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {p1}, Landroid/location/QzssSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteEphemerisTime(Landroid/location/QzssSatelliteEphemeris$Builder;)Landroid/location/SatelliteEphemerisTime;

    move-result-object v0

    const-string v1, "SatelliteEphemerisTime cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {p1}, Landroid/location/QzssSatelliteEphemeris$Builder;->-$$Nest$fgetmSvid(Landroid/location/QzssSatelliteEphemeris$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/QzssSatelliteEphemeris;->mSvid:I

    .line 119
    invoke-static {p1}, Landroid/location/QzssSatelliteEphemeris$Builder;->-$$Nest$fgetmGpsL2Params(Landroid/location/QzssSatelliteEphemeris$Builder;)Landroid/location/GpsSatelliteEphemeris$GpsL2Params;

    move-result-object v0

    iput-object v0, p0, Landroid/location/QzssSatelliteEphemeris;->mGpsL2Params:Landroid/location/GpsSatelliteEphemeris$GpsL2Params;

    .line 120
    invoke-static {p1}, Landroid/location/QzssSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteClockModel(Landroid/location/QzssSatelliteEphemeris$Builder;)Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;

    move-result-object v0

    iput-object v0, p0, Landroid/location/QzssSatelliteEphemeris;->mSatelliteClockModel:Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;

    .line 121
    invoke-static {p1}, Landroid/location/QzssSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteOrbitModel(Landroid/location/QzssSatelliteEphemeris$Builder;)Landroid/location/KeplerianOrbitModel;

    move-result-object v0

    iput-object v0, p0, Landroid/location/QzssSatelliteEphemeris;->mSatelliteOrbitModel:Landroid/location/KeplerianOrbitModel;

    .line 122
    invoke-static {p1}, Landroid/location/QzssSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteHealth(Landroid/location/QzssSatelliteEphemeris$Builder;)Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;

    move-result-object v0

    iput-object v0, p0, Landroid/location/QzssSatelliteEphemeris;->mSatelliteHealth:Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;

    .line 123
    invoke-static {p1}, Landroid/location/QzssSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteEphemerisTime(Landroid/location/QzssSatelliteEphemeris$Builder;)Landroid/location/SatelliteEphemerisTime;

    move-result-object v0

    iput-object v0, p0, Landroid/location/QzssSatelliteEphemeris;->mSatelliteEphemerisTime:Landroid/location/SatelliteEphemerisTime;

    .line 124
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/QzssSatelliteEphemeris$Builder;Landroid/location/QzssSatelliteEphemeris-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/QzssSatelliteEphemeris;-><init>(Landroid/location/QzssSatelliteEphemeris$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getGpsL2Params()Landroid/location/GpsSatelliteEphemeris$GpsL2Params;
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/location/QzssSatelliteEphemeris;->mGpsL2Params:Landroid/location/GpsSatelliteEphemeris$GpsL2Params;

    return-object v0
.end method

.method public blacklist getSatelliteClockModel()Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;
    .registers 2

    .line 75
    iget-object v0, p0, Landroid/location/QzssSatelliteEphemeris;->mSatelliteClockModel:Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;

    return-object v0
.end method

.method public blacklist getSatelliteEphemerisTime()Landroid/location/SatelliteEphemerisTime;
    .registers 2

    .line 93
    iget-object v0, p0, Landroid/location/QzssSatelliteEphemeris;->mSatelliteEphemerisTime:Landroid/location/SatelliteEphemerisTime;

    return-object v0
.end method

.method public blacklist getSatelliteHealth()Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/location/QzssSatelliteEphemeris;->mSatelliteHealth:Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;

    return-object v0
.end method

.method public blacklist getSatelliteOrbitModel()Landroid/location/KeplerianOrbitModel;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/location/QzssSatelliteEphemeris;->mSatelliteOrbitModel:Landroid/location/KeplerianOrbitModel;

    return-object v0
.end method

.method public blacklist getSvid()I
    .registers 2

    .line 63
    iget v0, p0, Landroid/location/QzssSatelliteEphemeris;->mSvid:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QzssSatelliteEphemeris["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Svid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/QzssSatelliteEphemeris;->mSvid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    const-string v1, ", gpsL2Params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/QzssSatelliteEphemeris;->mGpsL2Params:Landroid/location/GpsSatelliteEphemeris$GpsL2Params;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, ", satelliteClockModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/QzssSatelliteEphemeris;->mSatelliteClockModel:Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    const-string v1, ", satelliteOrbitModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/QzssSatelliteEphemeris;->mSatelliteOrbitModel:Landroid/location/KeplerianOrbitModel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    const-string v1, ", satelliteHealth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/QzssSatelliteEphemeris;->mSatelliteHealth:Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    const-string v1, ", satelliteEphemerisTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/QzssSatelliteEphemeris;->mSatelliteEphemerisTime:Landroid/location/SatelliteEphemerisTime;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 98
    iget v0, p0, Landroid/location/QzssSatelliteEphemeris;->mSvid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-object v0, p0, Landroid/location/QzssSatelliteEphemeris;->mGpsL2Params:Landroid/location/GpsSatelliteEphemeris$GpsL2Params;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 100
    iget-object v0, p0, Landroid/location/QzssSatelliteEphemeris;->mSatelliteClockModel:Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 101
    iget-object v0, p0, Landroid/location/QzssSatelliteEphemeris;->mSatelliteOrbitModel:Landroid/location/KeplerianOrbitModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 102
    iget-object v0, p0, Landroid/location/QzssSatelliteEphemeris;->mSatelliteHealth:Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 103
    iget-object v0, p0, Landroid/location/QzssSatelliteEphemeris;->mSatelliteEphemerisTime:Landroid/location/SatelliteEphemerisTime;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 104
    return-void
.end method
