.class public final Landroid/location/GnssReflectingPlane$Builder;
.super Ljava/lang/Object;
.source "GnssReflectingPlane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssReflectingPlane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAltitudeMeters:D

.field private blacklist mAzimuthDegrees:D

.field private blacklist mLatitudeDegrees:D

.field private blacklist mLongitudeDegrees:D


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAltitudeMeters(Landroid/location/GnssReflectingPlane$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssReflectingPlane$Builder;->mAltitudeMeters:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAzimuthDegrees(Landroid/location/GnssReflectingPlane$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssReflectingPlane$Builder;->mAzimuthDegrees:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLatitudeDegrees(Landroid/location/GnssReflectingPlane$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssReflectingPlane$Builder;->mLatitudeDegrees:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLongitudeDegrees(Landroid/location/GnssReflectingPlane$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssReflectingPlane$Builder;->mLongitudeDegrees:D

    return-wide v0
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/location/GnssReflectingPlane;
    .registers 3

    .line 193
    new-instance v0, Landroid/location/GnssReflectingPlane;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/GnssReflectingPlane;-><init>(Landroid/location/GnssReflectingPlane$Builder;Landroid/location/GnssReflectingPlane-IA;)V

    return-object v0
.end method

.method public whitelist setAltitudeMeters(D)Landroid/location/GnssReflectingPlane$Builder;
    .registers 3
    .param p1, "altitudeMeters"    # D

    .line 180
    iput-wide p1, p0, Landroid/location/GnssReflectingPlane$Builder;->mAltitudeMeters:D

    .line 181
    return-object p0
.end method

.method public whitelist setAzimuthDegrees(D)Landroid/location/GnssReflectingPlane$Builder;
    .registers 3
    .param p1, "azimuthDegrees"    # D

    .line 187
    iput-wide p1, p0, Landroid/location/GnssReflectingPlane$Builder;->mAzimuthDegrees:D

    .line 188
    return-object p0
.end method

.method public whitelist setLatitudeDegrees(D)Landroid/location/GnssReflectingPlane$Builder;
    .registers 3
    .param p1, "latitudeDegrees"    # D

    .line 163
    iput-wide p1, p0, Landroid/location/GnssReflectingPlane$Builder;->mLatitudeDegrees:D

    .line 164
    return-object p0
.end method

.method public whitelist setLongitudeDegrees(D)Landroid/location/GnssReflectingPlane$Builder;
    .registers 3
    .param p1, "longitudeDegrees"    # D

    .line 170
    iput-wide p1, p0, Landroid/location/GnssReflectingPlane$Builder;->mLongitudeDegrees:D

    .line 171
    return-object p0
.end method
