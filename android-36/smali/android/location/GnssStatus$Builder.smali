.class public final Landroid/location/GnssStatus$Builder;
.super Ljava/lang/Object;
.source "GnssStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mSatellites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/location/GnssStatus$GnssSvInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public whitelist addSatellite(IIFFFZZZZFZF)Landroid/location/GnssStatus$Builder;
    .registers 29
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

    .line 460
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    new-instance v2, Landroid/location/GnssStatus$GnssSvInfo;

    const/4 v15, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-direct/range {v2 .. v15}, Landroid/location/GnssStatus$GnssSvInfo;-><init>(IIFFFZZZZFZFLandroid/location/GnssStatus-IA;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    return-object v0
.end method

.method public whitelist build()Landroid/location/GnssStatus;
    .registers 11

    .line 480
    iget-object v0, p0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 481
    .local v2, "svCount":I
    new-array v3, v2, [I

    .line 482
    .local v3, "svidWithFlags":[I
    new-array v4, v2, [F

    .line 483
    .local v4, "cn0DbHzs":[F
    new-array v5, v2, [F

    .line 484
    .local v5, "elevations":[F
    new-array v6, v2, [F

    .line 485
    .local v6, "azimuths":[F
    new-array v7, v2, [F

    .line 486
    .local v7, "carrierFrequencies":[F
    new-array v8, v2, [F

    .line 488
    .local v8, "basebandCn0DbHzs":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    array-length v1, v3

    if-ge v0, v1, :cond_27

    .line 489
    iget-object v1, p0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GnssStatus$GnssSvInfo;

    invoke-static {v1}, Landroid/location/GnssStatus$GnssSvInfo;->-$$Nest$fgetmSvidWithFlags(Landroid/location/GnssStatus$GnssSvInfo;)I

    move-result v1

    aput v1, v3, v0

    .line 488
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 491
    .end local v0    # "i":I
    :cond_27
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_28
    array-length v1, v4

    if-ge v0, v1, :cond_3c

    .line 492
    iget-object v1, p0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GnssStatus$GnssSvInfo;

    invoke-static {v1}, Landroid/location/GnssStatus$GnssSvInfo;->-$$Nest$fgetmCn0DbHz(Landroid/location/GnssStatus$GnssSvInfo;)F

    move-result v1

    aput v1, v4, v0

    .line 491
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 494
    .end local v0    # "i":I
    :cond_3c
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3d
    array-length v1, v5

    if-ge v0, v1, :cond_51

    .line 495
    iget-object v1, p0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GnssStatus$GnssSvInfo;

    invoke-static {v1}, Landroid/location/GnssStatus$GnssSvInfo;->-$$Nest$fgetmElevation(Landroid/location/GnssStatus$GnssSvInfo;)F

    move-result v1

    aput v1, v5, v0

    .line 494
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 497
    .end local v0    # "i":I
    :cond_51
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_52
    array-length v1, v6

    if-ge v0, v1, :cond_66

    .line 498
    iget-object v1, p0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GnssStatus$GnssSvInfo;

    invoke-static {v1}, Landroid/location/GnssStatus$GnssSvInfo;->-$$Nest$fgetmAzimuth(Landroid/location/GnssStatus$GnssSvInfo;)F

    move-result v1

    aput v1, v6, v0

    .line 497
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 500
    .end local v0    # "i":I
    :cond_66
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_67
    array-length v1, v7

    if-ge v0, v1, :cond_7b

    .line 501
    iget-object v1, p0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GnssStatus$GnssSvInfo;

    invoke-static {v1}, Landroid/location/GnssStatus$GnssSvInfo;->-$$Nest$fgetmCarrierFrequency(Landroid/location/GnssStatus$GnssSvInfo;)F

    move-result v1

    aput v1, v7, v0

    .line 500
    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    .line 503
    .end local v0    # "i":I
    :cond_7b
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7c
    array-length v1, v8

    if-ge v0, v1, :cond_90

    .line 504
    iget-object v1, p0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GnssStatus$GnssSvInfo;

    invoke-static {v1}, Landroid/location/GnssStatus$GnssSvInfo;->-$$Nest$fgetmBasebandCn0DbHz(Landroid/location/GnssStatus$GnssSvInfo;)F

    move-result v1

    aput v1, v8, v0

    .line 503
    add-int/lit8 v0, v0, 0x1

    goto :goto_7c

    .line 507
    .end local v0    # "i":I
    :cond_90
    new-instance v1, Landroid/location/GnssStatus;

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/location/GnssStatus;-><init>(I[I[F[F[F[F[FLandroid/location/GnssStatus-IA;)V

    return-object v1
.end method

.method public whitelist clearSatellites()Landroid/location/GnssStatus$Builder;
    .registers 2

    .line 471
    iget-object v0, p0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 472
    return-object p0
.end method
