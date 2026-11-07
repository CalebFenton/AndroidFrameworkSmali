.class public final Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;
.super Ljava/lang/Object;
.source "GalileoSatelliteEphemeris.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDataValidityStatusE1b:I

.field private blacklist mDataValidityStatusE5a:I

.field private blacklist mDataValidityStatusE5b:I

.field private blacklist mSignalHealthStatusE1b:I

.field private blacklist mSignalHealthStatusE5a:I

.field private blacklist mSignalHealthStatusE5b:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDataValidityStatusE1b(Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;->mDataValidityStatusE1b:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataValidityStatusE5a(Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;->mDataValidityStatusE5a:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataValidityStatusE5b(Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;->mDataValidityStatusE5b:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSignalHealthStatusE1b(Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;->mSignalHealthStatusE1b:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSignalHealthStatusE5a(Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;->mSignalHealthStatusE5a:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSignalHealthStatusE5b(Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;->mSignalHealthStatusE5b:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;
    .registers 3

    .line 475
    new-instance v0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;-><init>(Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;Landroid/location/GalileoSatelliteEphemeris-IA;)V

    return-object v0
.end method

.method public blacklist setDataValidityStatusE1b(I)Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;
    .registers 2
    .param p1, "dataValidityStatusE1b"    # I

    .line 428
    iput p1, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;->mDataValidityStatusE1b:I

    .line 429
    return-object p0
.end method

.method public blacklist setDataValidityStatusE5a(I)Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;
    .registers 2
    .param p1, "dataValidityStatusE5a"    # I

    .line 444
    iput p1, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;->mDataValidityStatusE5a:I

    .line 445
    return-object p0
.end method

.method public blacklist setDataValidityStatusE5b(I)Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;
    .registers 2
    .param p1, "dataValidityStatusE5b"    # I

    .line 460
    iput p1, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;->mDataValidityStatusE5b:I

    .line 461
    return-object p0
.end method

.method public blacklist setSignalHealthStatusE1b(I)Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;
    .registers 2
    .param p1, "signalHealthStatusE1b"    # I

    .line 436
    iput p1, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;->mSignalHealthStatusE1b:I

    .line 437
    return-object p0
.end method

.method public blacklist setSignalHealthStatusE5a(I)Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;
    .registers 2
    .param p1, "signalHealthStatusE5a"    # I

    .line 452
    iput p1, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;->mSignalHealthStatusE5a:I

    .line 453
    return-object p0
.end method

.method public blacklist setSignalHealthStatusE5b(I)Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;
    .registers 2
    .param p1, "signalHealthStatusE5b"    # I

    .line 468
    iput p1, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;->mSignalHealthStatusE5b:I

    .line 469
    return-object p0
.end method
