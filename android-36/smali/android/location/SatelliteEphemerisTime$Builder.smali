.class public final Landroid/location/SatelliteEphemerisTime$Builder;
.super Ljava/lang/Object;
.source "SatelliteEphemerisTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/SatelliteEphemerisTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mIode:I

.field private blacklist mToeSeconds:I

.field private blacklist mWeekNumber:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIode(Landroid/location/SatelliteEphemerisTime$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/SatelliteEphemerisTime$Builder;->mIode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToeSeconds(Landroid/location/SatelliteEphemerisTime$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/SatelliteEphemerisTime$Builder;->mToeSeconds:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWeekNumber(Landroid/location/SatelliteEphemerisTime$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/SatelliteEphemerisTime$Builder;->mWeekNumber:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/location/SatelliteEphemerisTime;
    .registers 3

    .line 148
    new-instance v0, Landroid/location/SatelliteEphemerisTime;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/SatelliteEphemerisTime;-><init>(Landroid/location/SatelliteEphemerisTime$Builder;Landroid/location/SatelliteEphemerisTime-IA;)V

    return-object v0
.end method

.method public blacklist setIode(I)Landroid/location/SatelliteEphemerisTime$Builder;
    .registers 2
    .param p1, "iode"    # I

    .line 127
    iput p1, p0, Landroid/location/SatelliteEphemerisTime$Builder;->mIode:I

    .line 128
    return-object p0
.end method

.method public blacklist setToeSeconds(I)Landroid/location/SatelliteEphemerisTime$Builder;
    .registers 2
    .param p1, "toeSeconds"    # I

    .line 141
    iput p1, p0, Landroid/location/SatelliteEphemerisTime$Builder;->mToeSeconds:I

    .line 142
    return-object p0
.end method

.method public blacklist setWeekNumber(I)Landroid/location/SatelliteEphemerisTime$Builder;
    .registers 2
    .param p1, "weekNumber"    # I

    .line 134
    iput p1, p0, Landroid/location/SatelliteEphemerisTime$Builder;->mWeekNumber:I

    .line 135
    return-object p0
.end method
