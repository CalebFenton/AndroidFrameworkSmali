.class public final Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime$Builder;
.super Ljava/lang/Object;
.source "BeidouSatelliteEphemeris.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAode:I

.field private blacklist mBeidouWeekNumber:I

.field private blacklist mToeSeconds:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAode(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime$Builder;->mAode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBeidouWeekNumber(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime$Builder;->mBeidouWeekNumber:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToeSeconds(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime$Builder;->mToeSeconds:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime;
    .registers 3

    .line 643
    new-instance v0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime;-><init>(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime$Builder;Landroid/location/BeidouSatelliteEphemeris-IA;)V

    return-object v0
.end method

.method public blacklist setAode(I)Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime$Builder;
    .registers 2
    .param p1, "iode"    # I

    .line 619
    iput p1, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime$Builder;->mAode:I

    .line 620
    return-object p0
.end method

.method public blacklist setBeidouWeekNumber(I)Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime$Builder;
    .registers 2
    .param p1, "beidouWeekNumber"    # I

    .line 627
    iput p1, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime$Builder;->mBeidouWeekNumber:I

    .line 628
    return-object p0
.end method

.method public blacklist setToeSeconds(I)Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime$Builder;
    .registers 2
    .param p1, "toeSeconds"    # I

    .line 634
    iput p1, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime$Builder;->mToeSeconds:I

    .line 635
    return-object p0
.end method
