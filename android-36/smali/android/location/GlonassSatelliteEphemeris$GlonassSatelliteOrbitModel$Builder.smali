.class public final Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;
.super Ljava/lang/Object;
.source "GlonassSatelliteEphemeris.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mX:D

.field private blacklist mXAccel:D

.field private blacklist mXDot:D

.field private blacklist mY:D

.field private blacklist mYAccel:D

.field private blacklist mYDot:D

.field private blacklist mZ:D

.field private blacklist mZAccel:D

.field private blacklist mZDot:D


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmX(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->mX:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmXAccel(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->mXAccel:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmXDot(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->mXDot:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmY(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->mY:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmYAccel(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->mYAccel:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmYDot(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->mYDot:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmZ(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->mZ:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmZAccel(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->mZAccel:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmZDot(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->mZDot:D

    return-wide v0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;
    .registers 3

    .line 760
    new-instance v0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;-><init>(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;Landroid/location/GlonassSatelliteEphemeris-IA;)V

    return-object v0
.end method

.method public blacklist setX(D)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;
    .registers 3
    .param p1, "x"    # D

    .line 697
    iput-wide p1, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->mX:D

    .line 698
    return-object p0
.end method

.method public blacklist setXAccel(D)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;
    .registers 3
    .param p1, "xAccel"    # D

    .line 711
    iput-wide p1, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->mXAccel:D

    .line 712
    return-object p0
.end method

.method public blacklist setXDot(D)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;
    .registers 3
    .param p1, "xDot"    # D

    .line 704
    iput-wide p1, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->mXDot:D

    .line 705
    return-object p0
.end method

.method public blacklist setY(D)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;
    .registers 3
    .param p1, "y"    # D

    .line 718
    iput-wide p1, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->mY:D

    .line 719
    return-object p0
.end method

.method public blacklist setYAccel(D)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;
    .registers 3
    .param p1, "yAccel"    # D

    .line 732
    iput-wide p1, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->mYAccel:D

    .line 733
    return-object p0
.end method

.method public blacklist setYDot(D)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;
    .registers 3
    .param p1, "yDot"    # D

    .line 725
    iput-wide p1, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->mYDot:D

    .line 726
    return-object p0
.end method

.method public blacklist setZ(D)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;
    .registers 3
    .param p1, "z"    # D

    .line 739
    iput-wide p1, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->mZ:D

    .line 740
    return-object p0
.end method

.method public blacklist setZAccel(D)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;
    .registers 3
    .param p1, "zAccel"    # D

    .line 753
    iput-wide p1, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->mZAccel:D

    .line 754
    return-object p0
.end method

.method public blacklist setZDot(D)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;
    .registers 3
    .param p1, "zDot"    # D

    .line 746
    iput-wide p1, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->mZDot:D

    .line 747
    return-object p0
.end method
