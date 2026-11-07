.class public final Landroid/location/GpsSatelliteEphemeris$GpsL2Params$Builder;
.super Ljava/lang/Object;
.source "GpsSatelliteEphemeris.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsSatelliteEphemeris$GpsL2Params;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mL2Code:I

.field private blacklist mL2Flag:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmL2Code(Landroid/location/GpsSatelliteEphemeris$GpsL2Params$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/GpsSatelliteEphemeris$GpsL2Params$Builder;->mL2Code:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmL2Flag(Landroid/location/GpsSatelliteEphemeris$GpsL2Params$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/GpsSatelliteEphemeris$GpsL2Params$Builder;->mL2Flag:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsL2Params$Builder;->mL2Code:I

    .line 423
    iput v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsL2Params$Builder;->mL2Flag:I

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/location/GpsSatelliteEphemeris$GpsL2Params;
    .registers 3

    .line 442
    new-instance v0, Landroid/location/GpsSatelliteEphemeris$GpsL2Params;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/GpsSatelliteEphemeris$GpsL2Params;-><init>(Landroid/location/GpsSatelliteEphemeris$GpsL2Params$Builder;Landroid/location/GpsSatelliteEphemeris-IA;)V

    return-object v0
.end method

.method public blacklist setL2Code(I)Landroid/location/GpsSatelliteEphemeris$GpsL2Params$Builder;
    .registers 2
    .param p1, "l2Code"    # I

    .line 428
    iput p1, p0, Landroid/location/GpsSatelliteEphemeris$GpsL2Params$Builder;->mL2Code:I

    .line 429
    return-object p0
.end method

.method public blacklist setL2Flag(I)Landroid/location/GpsSatelliteEphemeris$GpsL2Params$Builder;
    .registers 2
    .param p1, "l2Flag"    # I

    .line 435
    iput p1, p0, Landroid/location/GpsSatelliteEphemeris$GpsL2Params$Builder;->mL2Flag:I

    .line 436
    return-object p0
.end method
