.class public final Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;
.super Ljava/lang/Object;
.source "GpsSatelliteEphemeris.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mFitInt:D

.field private blacklist mSvAccur:D

.field private blacklist mSvHealth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFitInt(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;->mFitInt:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSvAccur(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;->mSvAccur:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSvHealth(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;->mSvHealth:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;
    .registers 3

    .line 351
    new-instance v0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;-><init>(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;Landroid/location/GpsSatelliteEphemeris-IA;)V

    return-object v0
.end method

.method public blacklist setFitInt(D)Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;
    .registers 3
    .param p1, "fitInt"    # D

    .line 344
    iput-wide p1, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;->mFitInt:D

    .line 345
    return-object p0
.end method

.method public blacklist setSvAccur(D)Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;
    .registers 3
    .param p1, "svAccur"    # D

    .line 337
    iput-wide p1, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;->mSvAccur:D

    .line 338
    return-object p0
.end method

.method public blacklist setSvHealth(I)Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;
    .registers 2
    .param p1, "svHealth"    # I

    .line 330
    iput p1, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;->mSvHealth:I

    .line 331
    return-object p0
.end method
