.class public final Landroid/location/BeidouSatelliteEphemeris$Builder;
.super Ljava/lang/Object;
.source "BeidouSatelliteEphemeris.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/BeidouSatelliteEphemeris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mSatelliteClockModel:Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;

.field private blacklist mSatelliteEphemerisTime:Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime;

.field private blacklist mSatelliteHealth:Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;

.field private blacklist mSatelliteOrbitModel:Landroid/location/KeplerianOrbitModel;

.field private blacklist mSvid:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteClockModel(Landroid/location/BeidouSatelliteEphemeris$Builder;)Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;
    .registers 1

    iget-object p0, p0, Landroid/location/BeidouSatelliteEphemeris$Builder;->mSatelliteClockModel:Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteEphemerisTime(Landroid/location/BeidouSatelliteEphemeris$Builder;)Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime;
    .registers 1

    iget-object p0, p0, Landroid/location/BeidouSatelliteEphemeris$Builder;->mSatelliteEphemerisTime:Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteHealth(Landroid/location/BeidouSatelliteEphemeris$Builder;)Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;
    .registers 1

    iget-object p0, p0, Landroid/location/BeidouSatelliteEphemeris$Builder;->mSatelliteHealth:Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteOrbitModel(Landroid/location/BeidouSatelliteEphemeris$Builder;)Landroid/location/KeplerianOrbitModel;
    .registers 1

    iget-object p0, p0, Landroid/location/BeidouSatelliteEphemeris$Builder;->mSatelliteOrbitModel:Landroid/location/KeplerianOrbitModel;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSvid(Landroid/location/BeidouSatelliteEphemeris$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/BeidouSatelliteEphemeris$Builder;->mSvid:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/location/BeidouSatelliteEphemeris;
    .registers 3

    .line 202
    new-instance v0, Landroid/location/BeidouSatelliteEphemeris;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/BeidouSatelliteEphemeris;-><init>(Landroid/location/BeidouSatelliteEphemeris$Builder;Landroid/location/BeidouSatelliteEphemeris-IA;)V

    return-object v0
.end method

.method public blacklist setSatelliteClockModel(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;)Landroid/location/BeidouSatelliteEphemeris$Builder;
    .registers 2
    .param p1, "satelliteClockModel"    # Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;

    .line 173
    iput-object p1, p0, Landroid/location/BeidouSatelliteEphemeris$Builder;->mSatelliteClockModel:Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;

    .line 174
    return-object p0
.end method

.method public blacklist setSatelliteEphemerisTime(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime;)Landroid/location/BeidouSatelliteEphemeris$Builder;
    .registers 2
    .param p1, "satelliteEphemerisTime"    # Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime;

    .line 195
    iput-object p1, p0, Landroid/location/BeidouSatelliteEphemeris$Builder;->mSatelliteEphemerisTime:Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime;

    .line 196
    return-object p0
.end method

.method public blacklist setSatelliteHealth(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;)Landroid/location/BeidouSatelliteEphemeris$Builder;
    .registers 2
    .param p1, "satelliteHealth"    # Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;

    .line 187
    iput-object p1, p0, Landroid/location/BeidouSatelliteEphemeris$Builder;->mSatelliteHealth:Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;

    .line 188
    return-object p0
.end method

.method public blacklist setSatelliteOrbitModel(Landroid/location/KeplerianOrbitModel;)Landroid/location/BeidouSatelliteEphemeris$Builder;
    .registers 2
    .param p1, "satelliteOrbitModel"    # Landroid/location/KeplerianOrbitModel;

    .line 180
    iput-object p1, p0, Landroid/location/BeidouSatelliteEphemeris$Builder;->mSatelliteOrbitModel:Landroid/location/KeplerianOrbitModel;

    .line 181
    return-object p0
.end method

.method public blacklist setSvid(I)Landroid/location/BeidouSatelliteEphemeris$Builder;
    .registers 2
    .param p1, "svid"    # I

    .line 165
    iput p1, p0, Landroid/location/BeidouSatelliteEphemeris$Builder;->mSvid:I

    .line 166
    return-object p0
.end method
