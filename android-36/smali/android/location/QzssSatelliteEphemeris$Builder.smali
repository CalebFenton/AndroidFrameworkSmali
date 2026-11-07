.class public final Landroid/location/QzssSatelliteEphemeris$Builder;
.super Ljava/lang/Object;
.source "QzssSatelliteEphemeris.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/QzssSatelliteEphemeris;
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
.method static bridge synthetic blacklist -$$Nest$fgetmGpsL2Params(Landroid/location/QzssSatelliteEphemeris$Builder;)Landroid/location/GpsSatelliteEphemeris$GpsL2Params;
    .registers 1

    iget-object p0, p0, Landroid/location/QzssSatelliteEphemeris$Builder;->mGpsL2Params:Landroid/location/GpsSatelliteEphemeris$GpsL2Params;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteClockModel(Landroid/location/QzssSatelliteEphemeris$Builder;)Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;
    .registers 1

    iget-object p0, p0, Landroid/location/QzssSatelliteEphemeris$Builder;->mSatelliteClockModel:Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteEphemerisTime(Landroid/location/QzssSatelliteEphemeris$Builder;)Landroid/location/SatelliteEphemerisTime;
    .registers 1

    iget-object p0, p0, Landroid/location/QzssSatelliteEphemeris$Builder;->mSatelliteEphemerisTime:Landroid/location/SatelliteEphemerisTime;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteHealth(Landroid/location/QzssSatelliteEphemeris$Builder;)Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;
    .registers 1

    iget-object p0, p0, Landroid/location/QzssSatelliteEphemeris$Builder;->mSatelliteHealth:Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteOrbitModel(Landroid/location/QzssSatelliteEphemeris$Builder;)Landroid/location/KeplerianOrbitModel;
    .registers 1

    iget-object p0, p0, Landroid/location/QzssSatelliteEphemeris$Builder;->mSatelliteOrbitModel:Landroid/location/KeplerianOrbitModel;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSvid(Landroid/location/QzssSatelliteEphemeris$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/QzssSatelliteEphemeris$Builder;->mSvid:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/location/QzssSatelliteEphemeris;
    .registers 3

    .line 226
    new-instance v0, Landroid/location/QzssSatelliteEphemeris;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/QzssSatelliteEphemeris;-><init>(Landroid/location/QzssSatelliteEphemeris$Builder;Landroid/location/QzssSatelliteEphemeris-IA;)V

    return-object v0
.end method

.method public blacklist setGpsL2Params(Landroid/location/GpsSatelliteEphemeris$GpsL2Params;)Landroid/location/QzssSatelliteEphemeris$Builder;
    .registers 2
    .param p1, "gpsL2Params"    # Landroid/location/GpsSatelliteEphemeris$GpsL2Params;

    .line 190
    iput-object p1, p0, Landroid/location/QzssSatelliteEphemeris$Builder;->mGpsL2Params:Landroid/location/GpsSatelliteEphemeris$GpsL2Params;

    .line 191
    return-object p0
.end method

.method public blacklist setSatelliteClockModel(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;)Landroid/location/QzssSatelliteEphemeris$Builder;
    .registers 2
    .param p1, "satelliteClockModel"    # Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;

    .line 197
    iput-object p1, p0, Landroid/location/QzssSatelliteEphemeris$Builder;->mSatelliteClockModel:Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;

    .line 198
    return-object p0
.end method

.method public blacklist setSatelliteEphemerisTime(Landroid/location/SatelliteEphemerisTime;)Landroid/location/QzssSatelliteEphemeris$Builder;
    .registers 2
    .param p1, "satelliteEphemerisTime"    # Landroid/location/SatelliteEphemerisTime;

    .line 219
    iput-object p1, p0, Landroid/location/QzssSatelliteEphemeris$Builder;->mSatelliteEphemerisTime:Landroid/location/SatelliteEphemerisTime;

    .line 220
    return-object p0
.end method

.method public blacklist setSatelliteHealth(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;)Landroid/location/QzssSatelliteEphemeris$Builder;
    .registers 2
    .param p1, "satelliteHealth"    # Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;

    .line 211
    iput-object p1, p0, Landroid/location/QzssSatelliteEphemeris$Builder;->mSatelliteHealth:Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;

    .line 212
    return-object p0
.end method

.method public blacklist setSatelliteOrbitModel(Landroid/location/KeplerianOrbitModel;)Landroid/location/QzssSatelliteEphemeris$Builder;
    .registers 2
    .param p1, "satelliteOrbitModel"    # Landroid/location/KeplerianOrbitModel;

    .line 204
    iput-object p1, p0, Landroid/location/QzssSatelliteEphemeris$Builder;->mSatelliteOrbitModel:Landroid/location/KeplerianOrbitModel;

    .line 205
    return-object p0
.end method

.method public blacklist setSvid(I)Landroid/location/QzssSatelliteEphemeris$Builder;
    .registers 2
    .param p1, "svid"    # I

    .line 183
    iput p1, p0, Landroid/location/QzssSatelliteEphemeris$Builder;->mSvid:I

    .line 184
    return-object p0
.end method
