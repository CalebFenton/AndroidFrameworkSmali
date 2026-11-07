.class public final Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$Builder;
.super Ljava/lang/Object;
.source "BeidouSatelliteEphemeris.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mSatH1:I

.field private blacklist mSvAccur:D


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSatH1(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$Builder;->mSatH1:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSvAccur(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$Builder;->mSvAccur:D

    return-wide v0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;
    .registers 3

    .line 518
    new-instance v0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;-><init>(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$Builder;Landroid/location/BeidouSatelliteEphemeris-IA;)V

    return-object v0
.end method

.method public blacklist setSatH1(I)Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$Builder;
    .registers 2
    .param p1, "satH1"    # I

    .line 504
    iput p1, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$Builder;->mSatH1:I

    .line 505
    return-object p0
.end method

.method public blacklist setSvAccur(D)Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$Builder;
    .registers 3
    .param p1, "svAccur"    # D

    .line 511
    iput-wide p1, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$Builder;->mSvAccur:D

    .line 512
    return-object p0
.end method
