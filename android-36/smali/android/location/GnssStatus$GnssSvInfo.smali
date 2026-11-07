.class Landroid/location/GnssStatus$GnssSvInfo;
.super Ljava/lang/Object;
.source "GnssStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GnssSvInfo"
.end annotation


# instance fields
.field private final blacklist mAzimuth:F

.field private final blacklist mBasebandCn0DbHz:F

.field private final blacklist mCarrierFrequency:F

.field private final blacklist mCn0DbHz:F

.field private final blacklist mElevation:F

.field private final blacklist mSvidWithFlags:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAzimuth(Landroid/location/GnssStatus$GnssSvInfo;)F
    .registers 1

    iget p0, p0, Landroid/location/GnssStatus$GnssSvInfo;->mAzimuth:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBasebandCn0DbHz(Landroid/location/GnssStatus$GnssSvInfo;)F
    .registers 1

    iget p0, p0, Landroid/location/GnssStatus$GnssSvInfo;->mBasebandCn0DbHz:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierFrequency(Landroid/location/GnssStatus$GnssSvInfo;)F
    .registers 1

    iget p0, p0, Landroid/location/GnssStatus$GnssSvInfo;->mCarrierFrequency:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCn0DbHz(Landroid/location/GnssStatus$GnssSvInfo;)F
    .registers 1

    iget p0, p0, Landroid/location/GnssStatus$GnssSvInfo;->mCn0DbHz:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmElevation(Landroid/location/GnssStatus$GnssSvInfo;)F
    .registers 1

    iget p0, p0, Landroid/location/GnssStatus$GnssSvInfo;->mElevation:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSvidWithFlags(Landroid/location/GnssStatus$GnssSvInfo;)I
    .registers 1

    iget p0, p0, Landroid/location/GnssStatus$GnssSvInfo;->mSvidWithFlags:I

    return p0
.end method

.method private constructor blacklist <init>(IIFFFZZZZFZF)V
    .registers 17
    .param p1, "constellationType"    # I
    .param p2, "svid"    # I
    .param p3, "cn0DbHz"    # F
    .param p4, "elevation"    # F
    .param p5, "azimuth"    # F
    .param p6, "hasEphemeris"    # Z
    .param p7, "hasAlmanac"    # Z
    .param p8, "usedInFix"    # Z
    .param p9, "hasCarrierFrequency"    # Z
    .param p10, "carrierFrequency"    # F
    .param p11, "hasBasebandCn0DbHz"    # Z
    .param p12, "basebandCn0DbHz"    # F

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    shl-int/lit8 v0, p2, 0xc

    and-int/lit8 v1, p1, 0xf

    const/16 v2, 0x8

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 528
    or-int/2addr v0, p6

    .line 529
    const/4 v1, 0x0

    if-eqz p7, :cond_11

    const/4 v3, 0x2

    goto :goto_12

    :cond_11
    move v3, v1

    :goto_12
    or-int/2addr v0, v3

    .line 530
    if-eqz p8, :cond_17

    const/4 v3, 0x4

    goto :goto_18

    :cond_17
    move v3, v1

    :goto_18
    or-int/2addr v0, v3

    .line 531
    if-eqz p9, :cond_1c

    goto :goto_1d

    :cond_1c
    move v2, v1

    :goto_1d
    or-int/2addr v0, v2

    .line 532
    if-eqz p11, :cond_22

    const/16 v1, 0x10

    :cond_22
    or-int/2addr v0, v1

    iput v0, p0, Landroid/location/GnssStatus$GnssSvInfo;->mSvidWithFlags:I

    .line 533
    iput p3, p0, Landroid/location/GnssStatus$GnssSvInfo;->mCn0DbHz:F

    .line 534
    iput p4, p0, Landroid/location/GnssStatus$GnssSvInfo;->mElevation:F

    .line 535
    iput p5, p0, Landroid/location/GnssStatus$GnssSvInfo;->mAzimuth:F

    .line 536
    const/4 v0, 0x0

    if-eqz p9, :cond_30

    move v1, p10

    goto :goto_31

    :cond_30
    move v1, v0

    :goto_31
    iput v1, p0, Landroid/location/GnssStatus$GnssSvInfo;->mCarrierFrequency:F

    .line 537
    if-eqz p11, :cond_37

    move/from16 v0, p12

    :cond_37
    iput v0, p0, Landroid/location/GnssStatus$GnssSvInfo;->mBasebandCn0DbHz:F

    .line 538
    return-void
.end method

.method synthetic constructor blacklist <init>(IIFFFZZZZFZFLandroid/location/GnssStatus-IA;)V
    .registers 14

    invoke-direct/range {p0 .. p12}, Landroid/location/GnssStatus$GnssSvInfo;-><init>(IIFFFZZZZFZF)V

    return-void
.end method
