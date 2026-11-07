.class public final Landroid/location/GpsSatelliteEphemeris;
.super Ljava/lang/Object;
.source "GpsSatelliteEphemeris.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsSatelliteEphemeris$Builder;,
        Landroid/location/GpsSatelliteEphemeris$GpsL2Params;,
        Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;,
        Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GpsSatelliteEphemeris;",
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

    .line 114
    new-instance v0, Landroid/location/GpsSatelliteEphemeris$1;

    invoke-direct {v0}, Landroid/location/GpsSatelliteEphemeris$1;-><init>()V

    sput-object v0, Landroid/location/GpsSatelliteEphemeris;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/GpsSatelliteEphemeris$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/location/GpsSatelliteEphemeris$Builder;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Landroid/location/GpsSatelliteEphemeris$Builder;->-$$Nest$fgetmSvid(Landroid/location/GpsSatelliteEphemeris$Builder;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 61
    invoke-static {p1}, Landroid/location/GpsSatelliteEphemeris$Builder;->-$$Nest$fgetmGpsL2Params(Landroid/location/GpsSatelliteEphemeris$Builder;)Landroid/location/GpsSatelliteEphemeris$GpsL2Params;

    move-result-object v0

    const-string v1, "GPSL2Params cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-static {p1}, Landroid/location/GpsSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteClockModel(Landroid/location/GpsSatelliteEphemeris$Builder;)Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;

    move-result-object v0

    const-string v1, "SatelliteClockModel cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {p1}, Landroid/location/GpsSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteOrbitModel(Landroid/location/GpsSatelliteEphemeris$Builder;)Landroid/location/KeplerianOrbitModel;

    move-result-object v0

    const-string v1, "SatelliteOrbitModel cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {p1}, Landroid/location/GpsSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteHealth(Landroid/location/GpsSatelliteEphemeris$Builder;)Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;

    move-result-object v0

    const-string v1, "SatelliteHealth cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {p1}, Landroid/location/GpsSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteEphemerisTime(Landroid/location/GpsSatelliteEphemeris$Builder;)Landroid/location/SatelliteEphemerisTime;

    move-result-object v0

    const-string v1, "SatelliteEphemerisTime cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {p1}, Landroid/location/GpsSatelliteEphemeris$Builder;->-$$Nest$fgetmSvid(Landroid/location/GpsSatelliteEphemeris$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/GpsSatelliteEphemeris;->mSvid:I

    .line 71
    invoke-static {p1}, Landroid/location/GpsSatelliteEphemeris$Builder;->-$$Nest$fgetmGpsL2Params(Landroid/location/GpsSatelliteEphemeris$Builder;)Landroid/location/GpsSatelliteEphemeris$GpsL2Params;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GpsSatelliteEphemeris;->mGpsL2Params:Landroid/location/GpsSatelliteEphemeris$GpsL2Params;

    .line 72
    invoke-static {p1}, Landroid/location/GpsSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteClockModel(Landroid/location/GpsSatelliteEphemeris$Builder;)Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GpsSatelliteEphemeris;->mSatelliteClockModel:Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;

    .line 73
    invoke-static {p1}, Landroid/location/GpsSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteOrbitModel(Landroid/location/GpsSatelliteEphemeris$Builder;)Landroid/location/KeplerianOrbitModel;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GpsSatelliteEphemeris;->mSatelliteOrbitModel:Landroid/location/KeplerianOrbitModel;

    .line 74
    invoke-static {p1}, Landroid/location/GpsSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteHealth(Landroid/location/GpsSatelliteEphemeris$Builder;)Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GpsSatelliteEphemeris;->mSatelliteHealth:Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;

    .line 75
    invoke-static {p1}, Landroid/location/GpsSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteEphemerisTime(Landroid/location/GpsSatelliteEphemeris$Builder;)Landroid/location/SatelliteEphemerisTime;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GpsSatelliteEphemeris;->mSatelliteEphemerisTime:Landroid/location/SatelliteEphemerisTime;

    .line 76
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/GpsSatelliteEphemeris$Builder;Landroid/location/GpsSatelliteEphemeris-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/GpsSatelliteEphemeris;-><init>(Landroid/location/GpsSatelliteEphemeris$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getGpsL2Params()Landroid/location/GpsSatelliteEphemeris$GpsL2Params;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/location/GpsSatelliteEphemeris;->mGpsL2Params:Landroid/location/GpsSatelliteEphemeris$GpsL2Params;

    return-object v0
.end method

.method public blacklist getSatelliteClockModel()Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;
    .registers 2

    .line 93
    iget-object v0, p0, Landroid/location/GpsSatelliteEphemeris;->mSatelliteClockModel:Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;

    return-object v0
.end method

.method public blacklist getSatelliteEphemerisTime()Landroid/location/SatelliteEphemerisTime;
    .registers 2

    .line 111
    iget-object v0, p0, Landroid/location/GpsSatelliteEphemeris;->mSatelliteEphemerisTime:Landroid/location/SatelliteEphemerisTime;

    return-object v0
.end method

.method public blacklist getSatelliteHealth()Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/location/GpsSatelliteEphemeris;->mSatelliteHealth:Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;

    return-object v0
.end method

.method public blacklist getSatelliteOrbitModel()Landroid/location/KeplerianOrbitModel;
    .registers 2

    .line 99
    iget-object v0, p0, Landroid/location/GpsSatelliteEphemeris;->mSatelliteOrbitModel:Landroid/location/KeplerianOrbitModel;

    return-object v0
.end method

.method public blacklist getSvid()I
    .registers 2

    .line 81
    iget v0, p0, Landroid/location/GpsSatelliteEphemeris;->mSvid:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GpsSatelliteEphemeris["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Svid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GpsSatelliteEphemeris;->mSvid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    const-string v1, ", gpsL2Params = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GpsSatelliteEphemeris;->mGpsL2Params:Landroid/location/GpsSatelliteEphemeris$GpsL2Params;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, ", satelliteClockModel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GpsSatelliteEphemeris;->mSatelliteClockModel:Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    const-string v1, ", satelliteOrbitModel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GpsSatelliteEphemeris;->mSatelliteOrbitModel:Landroid/location/KeplerianOrbitModel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, ", satelliteHealth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GpsSatelliteEphemeris;->mSatelliteHealth:Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    const-string v1, ", satelliteEphemerisTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GpsSatelliteEphemeris;->mSatelliteEphemerisTime:Landroid/location/SatelliteEphemerisTime;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 147
    iget v0, p0, Landroid/location/GpsSatelliteEphemeris;->mSvid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v0, p0, Landroid/location/GpsSatelliteEphemeris;->mGpsL2Params:Landroid/location/GpsSatelliteEphemeris$GpsL2Params;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 149
    iget-object v0, p0, Landroid/location/GpsSatelliteEphemeris;->mSatelliteClockModel:Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 150
    iget-object v0, p0, Landroid/location/GpsSatelliteEphemeris;->mSatelliteOrbitModel:Landroid/location/KeplerianOrbitModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 151
    iget-object v0, p0, Landroid/location/GpsSatelliteEphemeris;->mSatelliteHealth:Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 152
    iget-object v0, p0, Landroid/location/GpsSatelliteEphemeris;->mSatelliteEphemerisTime:Landroid/location/SatelliteEphemerisTime;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 153
    return-void
.end method
