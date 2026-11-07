.class public final Landroid/location/GalileoSatelliteEphemeris$Builder;
.super Ljava/lang/Object;
.source "GalileoSatelliteEphemeris.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GalileoSatelliteEphemeris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mSatelliteClockModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSatelliteEphemerisTime:Landroid/location/SatelliteEphemerisTime;

.field private blacklist mSatelliteHealth:Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;

.field private blacklist mSatelliteOrbitModel:Landroid/location/KeplerianOrbitModel;

.field private blacklist mSvid:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteClockModels(Landroid/location/GalileoSatelliteEphemeris$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/location/GalileoSatelliteEphemeris$Builder;->mSatelliteClockModels:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteEphemerisTime(Landroid/location/GalileoSatelliteEphemeris$Builder;)Landroid/location/SatelliteEphemerisTime;
    .registers 1

    iget-object p0, p0, Landroid/location/GalileoSatelliteEphemeris$Builder;->mSatelliteEphemerisTime:Landroid/location/SatelliteEphemerisTime;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteHealth(Landroid/location/GalileoSatelliteEphemeris$Builder;)Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;
    .registers 1

    iget-object p0, p0, Landroid/location/GalileoSatelliteEphemeris$Builder;->mSatelliteHealth:Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteOrbitModel(Landroid/location/GalileoSatelliteEphemeris$Builder;)Landroid/location/KeplerianOrbitModel;
    .registers 1

    iget-object p0, p0, Landroid/location/GalileoSatelliteEphemeris$Builder;->mSatelliteOrbitModel:Landroid/location/KeplerianOrbitModel;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSvid(Landroid/location/GalileoSatelliteEphemeris$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/GalileoSatelliteEphemeris$Builder;->mSvid:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/location/GalileoSatelliteEphemeris;
    .registers 3

    .line 210
    new-instance v0, Landroid/location/GalileoSatelliteEphemeris;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/GalileoSatelliteEphemeris;-><init>(Landroid/location/GalileoSatelliteEphemeris$Builder;Landroid/location/GalileoSatelliteEphemeris-IA;)V

    return-object v0
.end method

.method public blacklist setSatelliteClockModels(Ljava/util/List;)Landroid/location/GalileoSatelliteEphemeris$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;",
            ">;)",
            "Landroid/location/GalileoSatelliteEphemeris$Builder;"
        }
    .end annotation

    .line 181
    .local p1, "satelliteClockModels":Ljava/util/List;, "Ljava/util/List<Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;>;"
    iput-object p1, p0, Landroid/location/GalileoSatelliteEphemeris$Builder;->mSatelliteClockModels:Ljava/util/List;

    .line 182
    return-object p0
.end method

.method public blacklist setSatelliteEphemerisTime(Landroid/location/SatelliteEphemerisTime;)Landroid/location/GalileoSatelliteEphemeris$Builder;
    .registers 2
    .param p1, "satelliteEphemerisTime"    # Landroid/location/SatelliteEphemerisTime;

    .line 203
    iput-object p1, p0, Landroid/location/GalileoSatelliteEphemeris$Builder;->mSatelliteEphemerisTime:Landroid/location/SatelliteEphemerisTime;

    .line 204
    return-object p0
.end method

.method public blacklist setSatelliteHealth(Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;)Landroid/location/GalileoSatelliteEphemeris$Builder;
    .registers 2
    .param p1, "satelliteHealth"    # Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;

    .line 195
    iput-object p1, p0, Landroid/location/GalileoSatelliteEphemeris$Builder;->mSatelliteHealth:Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;

    .line 196
    return-object p0
.end method

.method public blacklist setSatelliteOrbitModel(Landroid/location/KeplerianOrbitModel;)Landroid/location/GalileoSatelliteEphemeris$Builder;
    .registers 2
    .param p1, "satelliteOrbitModel"    # Landroid/location/KeplerianOrbitModel;

    .line 188
    iput-object p1, p0, Landroid/location/GalileoSatelliteEphemeris$Builder;->mSatelliteOrbitModel:Landroid/location/KeplerianOrbitModel;

    .line 189
    return-object p0
.end method

.method public blacklist setSvid(I)Landroid/location/GalileoSatelliteEphemeris$Builder;
    .registers 2
    .param p1, "svid"    # I

    .line 173
    iput p1, p0, Landroid/location/GalileoSatelliteEphemeris$Builder;->mSvid:I

    .line 174
    return-object p0
.end method
