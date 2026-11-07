.class public final Landroid/location/GpsSatelliteEphemeris$Builder;
.super Ljava/lang/Object;
.source "GpsSatelliteEphemeris.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsSatelliteEphemeris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mGpsL2Params:Landroid/location/GpsSatelliteEphemeris$GpsL2Params;

.field private blacklist mSatelliteClockModel:Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;

.field private blacklist mSatelliteEphemerisTime:Landroid/location/SatelliteEphemerisTime;

.field private blacklist mSatelliteHealth:Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;

.field private blacklist mSatelliteOrbitModel:Landroid/location/KeplerianOrbitModel;

.field private blacklist mSvid:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmGpsL2Params(Landroid/location/GpsSatelliteEphemeris$Builder;)Landroid/location/GpsSatelliteEphemeris$GpsL2Params;
    .registers 1

    iget-object p0, p0, Landroid/location/GpsSatelliteEphemeris$Builder;->mGpsL2Params:Landroid/location/GpsSatelliteEphemeris$GpsL2Params;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteClockModel(Landroid/location/GpsSatelliteEphemeris$Builder;)Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;
    .registers 1

    iget-object p0, p0, Landroid/location/GpsSatelliteEphemeris$Builder;->mSatelliteClockModel:Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteEphemerisTime(Landroid/location/GpsSatelliteEphemeris$Builder;)Landroid/location/SatelliteEphemerisTime;
    .registers 1

    iget-object p0, p0, Landroid/location/GpsSatelliteEphemeris$Builder;->mSatelliteEphemerisTime:Landroid/location/SatelliteEphemerisTime;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteHealth(Landroid/location/GpsSatelliteEphemeris$Builder;)Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;
    .registers 1

    iget-object p0, p0, Landroid/location/GpsSatelliteEphemeris$Builder;->mSatelliteHealth:Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteOrbitModel(Landroid/location/GpsSatelliteEphemeris$Builder;)Landroid/location/KeplerianOrbitModel;
    .registers 1

    iget-object p0, p0, Landroid/location/GpsSatelliteEphemeris$Builder;->mSatelliteOrbitModel:Landroid/location/KeplerianOrbitModel;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSvid(Landroid/location/GpsSatelliteEphemeris$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/GpsSatelliteEphemeris$Builder;->mSvid:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GpsSatelliteEphemeris$Builder;->mSvid:I

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/location/GpsSatelliteEphemeris;
    .registers 3

    .line 224
    new-instance v0, Landroid/location/GpsSatelliteEphemeris;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/GpsSatelliteEphemeris;-><init>(Landroid/location/GpsSatelliteEphemeris$Builder;Landroid/location/GpsSatelliteEphemeris-IA;)V

    return-object v0
.end method

.method public blacklist setGpsL2Params(Landroid/location/GpsSatelliteEphemeris$GpsL2Params;)Landroid/location/GpsSatelliteEphemeris$Builder;
    .registers 2
    .param p1, "gpsL2Params"    # Landroid/location/GpsSatelliteEphemeris$GpsL2Params;

    .line 188
    iput-object p1, p0, Landroid/location/GpsSatelliteEphemeris$Builder;->mGpsL2Params:Landroid/location/GpsSatelliteEphemeris$GpsL2Params;

    .line 189
    return-object p0
.end method

.method public blacklist setSatelliteClockModel(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;)Landroid/location/GpsSatelliteEphemeris$Builder;
    .registers 2
    .param p1, "satelliteClockModel"    # Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;

    .line 195
    iput-object p1, p0, Landroid/location/GpsSatelliteEphemeris$Builder;->mSatelliteClockModel:Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;

    .line 196
    return-object p0
.end method

.method public blacklist setSatelliteEphemerisTime(Landroid/location/SatelliteEphemerisTime;)Landroid/location/GpsSatelliteEphemeris$Builder;
    .registers 2
    .param p1, "satelliteEphemerisTime"    # Landroid/location/SatelliteEphemerisTime;

    .line 217
    iput-object p1, p0, Landroid/location/GpsSatelliteEphemeris$Builder;->mSatelliteEphemerisTime:Landroid/location/SatelliteEphemerisTime;

    .line 218
    return-object p0
.end method

.method public blacklist setSatelliteHealth(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;)Landroid/location/GpsSatelliteEphemeris$Builder;
    .registers 2
    .param p1, "satelliteHealth"    # Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;

    .line 209
    iput-object p1, p0, Landroid/location/GpsSatelliteEphemeris$Builder;->mSatelliteHealth:Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;

    .line 210
    return-object p0
.end method

.method public blacklist setSatelliteOrbitModel(Landroid/location/KeplerianOrbitModel;)Landroid/location/GpsSatelliteEphemeris$Builder;
    .registers 2
    .param p1, "satelliteOrbitModel"    # Landroid/location/KeplerianOrbitModel;

    .line 202
    iput-object p1, p0, Landroid/location/GpsSatelliteEphemeris$Builder;->mSatelliteOrbitModel:Landroid/location/KeplerianOrbitModel;

    .line 203
    return-object p0
.end method

.method public blacklist setSvid(I)Landroid/location/GpsSatelliteEphemeris$Builder;
    .registers 2
    .param p1, "svid"    # I

    .line 181
    iput p1, p0, Landroid/location/GpsSatelliteEphemeris$Builder;->mSvid:I

    .line 182
    return-object p0
.end method
