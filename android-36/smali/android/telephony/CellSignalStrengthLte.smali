.class public final Landroid/telephony/CellSignalStrengthLte;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthLte.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellSignalStrengthLte;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "CellSignalStrengthLte"

.field private static final blacklist MAX_LTE_RSRP:I = -0x2c

.field private static final blacklist MIN_LTE_RSRP:I = -0x8c

.field private static final blacklist SIGNAL_STRENGTH_LTE_RSSI_ASU_UNKNOWN:I = 0x63

.field private static final blacklist SIGNAL_STRENGTH_LTE_RSSI_VALID_ASU_MAX_VALUE:I = 0x1f

.field private static final blacklist SIGNAL_STRENGTH_LTE_RSSI_VALID_ASU_MIN_VALUE:I = 0x0

.field public static final blacklist USE_RSRP:I = 0x1

.field public static final blacklist USE_RSRQ:I = 0x2

.field public static final blacklist USE_RSSNR:I = 0x4

.field private static final blacklist sInvalid:Landroid/telephony/CellSignalStrengthLte;

.field private static final blacklist sRsrpBoost:I

.field private static final blacklist sRsrpThresholds:[I

.field private static final blacklist sRsrqThresholds:[I

.field private static final blacklist sRssnrThresholds:[I


# instance fields
.field private greylist-max-p mCqi:I

.field private blacklist mCqiTableIndex:I

.field private blacklist mLevel:I

.field private blacklist mParametersUseForLevel:I

.field private greylist-max-p mRsrp:I

.field private greylist-max-p mRsrq:I

.field private blacklist mRssi:I

.field private greylist-max-p mRssnr:I

.field private greylist-max-p mSignalStrength:I

.field private greylist-max-p mTimingAdvance:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 216
    const/16 v0, -0x5f

    const/16 v1, -0x55

    const/16 v2, -0x73

    const/16 v3, -0x69

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/telephony/CellSignalStrengthLte;->sRsrpThresholds:[I

    .line 224
    const/16 v0, -0xe

    const/16 v1, -0xc

    const/16 v2, -0x13

    const/16 v3, -0x11

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/telephony/CellSignalStrengthLte;->sRsrqThresholds:[I

    .line 231
    const/4 v0, 0x5

    const/16 v1, 0xd

    const/4 v2, -0x3

    const/4 v3, 0x1

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/telephony/CellSignalStrengthLte;->sRssnrThresholds:[I

    .line 506
    new-instance v0, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthLte;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthLte;->sInvalid:Landroid/telephony/CellSignalStrengthLte;

    .line 590
    new-instance v0, Landroid/telephony/CellSignalStrengthLte$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthLte$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthLte;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .registers 1

    .line 121
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 122
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->setDefaultValues()V

    .line 123
    return-void
.end method

.method public constructor greylist-max-o <init>(IIIIII)V
    .registers 15
    .param p1, "rssi"    # I
    .param p2, "rsrp"    # I
    .param p3, "rsrq"    # I
    .param p4, "rssnr"    # I
    .param p5, "cqi"    # I
    .param p6, "timingAdvance"    # I

    .line 165
    const v5, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    move v7, p6

    .end local p1    # "rssi":I
    .end local p2    # "rsrp":I
    .end local p3    # "rsrq":I
    .end local p4    # "rssnr":I
    .end local p5    # "cqi":I
    .end local p6    # "timingAdvance":I
    .local v1, "rssi":I
    .local v2, "rsrp":I
    .local v3, "rsrq":I
    .local v4, "rssnr":I
    .local v6, "cqi":I
    .local v7, "timingAdvance":I
    invoke-direct/range {v0 .. v7}, Landroid/telephony/CellSignalStrengthLte;-><init>(IIIIIII)V

    .line 166
    return-void
.end method

.method public constructor blacklist <init>(IIIIIII)V
    .registers 10
    .param p1, "rssi"    # I
    .param p2, "rsrp"    # I
    .param p3, "rsrq"    # I
    .param p4, "rssnr"    # I
    .param p5, "cqiTableIndex"    # I
    .param p6, "cqi"    # I
    .param p7, "timingAdvance"    # I

    .line 139
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 140
    const/16 v0, -0x71

    const/16 v1, -0x33

    invoke-static {p1, v0, v1}, Landroid/telephony/CellSignalStrengthLte;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    .line 141
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 142
    const/16 v0, -0x8c

    const/16 v1, -0x2b

    invoke-static {p2, v0, v1}, Landroid/telephony/CellSignalStrengthLte;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 143
    const/16 v0, -0x22

    const/4 v1, 0x3

    invoke-static {p3, v0, v1}, Landroid/telephony/CellSignalStrengthLte;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 144
    const/16 v0, -0x14

    const/16 v1, 0x1e

    invoke-static {p4, v0, v1}, Landroid/telephony/CellSignalStrengthLte;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 145
    const/4 v0, 0x1

    const/4 v1, 0x6

    invoke-static {p5, v0, v1}, Landroid/telephony/CellSignalStrengthLte;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    .line 146
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-static {p6, v1, v0}, Landroid/telephony/CellSignalStrengthLte;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 147
    const/16 v0, 0x502

    invoke-static {p7, v1, v0}, Landroid/telephony/CellSignalStrengthLte;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/telephony/CellSignalStrengthLte;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    .line 149
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 569
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 570
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    .line 571
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 572
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 573
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 574
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 575
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    .line 576
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 577
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    .line 578
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    .line 580
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthLte-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthLte;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/telephony/CellSignalStrengthLte;)V
    .registers 2
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthLte;

    .line 169
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 170
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthLte;->copyFrom(Landroid/telephony/CellSignalStrengthLte;)V

    .line 171
    return-void
.end method

.method public static blacklist convertRssiAsuToDBm(I)I
    .registers 4
    .param p0, "rssiAsu"    # I

    .line 617
    const/16 v0, 0x63

    const v1, 0x7fffffff

    if-eq p0, v0, :cond_2f

    if-ne p0, v1, :cond_a

    goto :goto_2f

    .line 620
    :cond_a
    if-ltz p0, :cond_16

    const/16 v0, 0x1f

    if-le p0, v0, :cond_11

    goto :goto_16

    .line 625
    :cond_11
    mul-int/lit8 v0, p0, 0x2

    add-int/lit8 v0, v0, -0x71

    return v0

    .line 622
    :cond_16
    :goto_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertRssiAsuToDBm: invalid RSSI in ASU="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CellSignalStrengthLte"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    return v1

    .line 618
    :cond_2f
    :goto_2f
    return v1
.end method

.method public static blacklist convertRssnrUnitFromTenDbToDB(I)I
    .registers 3
    .param p0, "rssnr"    # I

    .line 612
    int-to-float v0, p0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private blacklist isLevelForParameter(I)Z
    .registers 3
    .param p1, "parameterType"    # I

    .line 251
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mParametersUseForLevel:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static greylist-max-o log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 607
    const-string v0, "CellSignalStrengthLte"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    return-void
.end method

.method private blacklist updateLevelWithMeasure(I[I)I
    .registers 4
    .param p1, "measure"    # I
    .param p2, "thresholds"    # [I

    .line 372
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_9

    .line 373
    const v0, 0x7fffffff

    .local v0, "level":I
    goto :goto_26

    .line 374
    .end local v0    # "level":I
    :cond_9
    const/4 v0, 0x3

    aget v0, p2, v0

    if-lt p1, v0, :cond_10

    .line 375
    const/4 v0, 0x4

    .restart local v0    # "level":I
    goto :goto_26

    .line 376
    .end local v0    # "level":I
    :cond_10
    const/4 v0, 0x2

    aget v0, p2, v0

    if-lt p1, v0, :cond_17

    .line 377
    const/4 v0, 0x3

    .restart local v0    # "level":I
    goto :goto_26

    .line 378
    .end local v0    # "level":I
    :cond_17
    const/4 v0, 0x1

    aget v0, p2, v0

    if-lt p1, v0, :cond_1e

    .line 379
    const/4 v0, 0x2

    .restart local v0    # "level":I
    goto :goto_26

    .line 380
    .end local v0    # "level":I
    :cond_1e
    const/4 v0, 0x0

    aget v0, p2, v0

    if-lt p1, v0, :cond_25

    .line 381
    const/4 v0, 0x1

    .restart local v0    # "level":I
    goto :goto_26

    .line 383
    .end local v0    # "level":I
    :cond_25
    const/4 v0, 0x0

    .line 385
    .restart local v0    # "level":I
    :goto_26
    return v0
.end method


# virtual methods
.method public bridge synthetic blacklist copy()Landroid/telephony/CellSignalStrength;
    .registers 2

    .line 34
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->copy()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o copy()Landroid/telephony/CellSignalStrengthLte;
    .registers 2

    .line 190
    new-instance v0, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthLte;-><init>(Landroid/telephony/CellSignalStrengthLte;)V

    return-object v0
.end method

.method protected greylist-max-o copyFrom(Landroid/telephony/CellSignalStrengthLte;)V
    .registers 3
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthLte;

    .line 175
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 176
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    .line 177
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 178
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 179
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 180
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    .line 181
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 182
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    .line 183
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    .line 184
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mParametersUseForLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mParametersUseForLevel:I

    .line 185
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 585
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 518
    instance-of v0, p1, Landroid/telephony/CellSignalStrengthLte;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 519
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellSignalStrengthLte;

    .line 521
    .local v0, "s":Landroid/telephony/CellSignalStrengthLte;
    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    if-ne v2, v3, :cond_3a

    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    if-ne v2, v3, :cond_3a

    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    if-ne v2, v3, :cond_3a

    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    if-ne v2, v3, :cond_3a

    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    if-ne v2, v3, :cond_3a

    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    if-ne v2, v3, :cond_3a

    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    if-ne v2, v3, :cond_3a

    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    if-ne v2, v3, :cond_3a

    const/4 v1, 0x1

    :cond_3a
    return v1
.end method

.method public whitelist getAsuLevel()I
    .registers 4

    .line 478
    const/16 v0, 0x63

    .line 479
    .local v0, "lteAsuLevel":I
    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 480
    .local v1, "lteDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_c

    const/16 v0, 0x63

    goto :goto_1b

    .line 481
    :cond_c
    const/16 v2, -0x8c

    if-gt v1, v2, :cond_12

    const/4 v0, 0x0

    goto :goto_1b

    .line 482
    :cond_12
    const/16 v2, -0x2b

    if-lt v1, v2, :cond_19

    const/16 v0, 0x61

    goto :goto_1b

    .line 483
    :cond_19
    add-int/lit16 v0, v1, 0x8c

    .line 485
    :goto_1b
    return v0
.end method

.method public whitelist getCqi()I
    .registers 2

    .line 456
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    return v0
.end method

.method public whitelist getCqiTableIndex()I
    .registers 2

    .line 443
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    return v0
.end method

.method public whitelist getDbm()I
    .registers 2

    .line 466
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    return v0
.end method

.method public whitelist getLevel()I
    .registers 2

    .line 212
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    return v0
.end method

.method public whitelist getRsrp()I
    .registers 2

    .line 430
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    return v0
.end method

.method public whitelist getRsrq()I
    .registers 2

    .line 395
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    return v0
.end method

.method public whitelist getRssi()I
    .registers 2

    .line 408
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    return v0
.end method

.method public whitelist getRssnr()I
    .registers 2

    .line 419
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    return v0
.end method

.method public whitelist getTimingAdvance()I
    .registers 2

    .line 497
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 502
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    .line 503
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 502
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isValid()Z
    .registers 2

    .line 511
    sget-object v0, Landroid/telephony/CellSignalStrengthLte;->sInvalid:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {p0, v0}, Landroid/telephony/CellSignalStrengthLte;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public greylist-max-o setDefaultValues()V
    .registers 2

    .line 196
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 197
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    .line 198
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 199
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 200
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 201
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    .line 202
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 203
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    .line 205
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mParametersUseForLevel:I

    .line 206
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellSignalStrengthLte: rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rsrp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rsrq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rssnr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cqiTableIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cqi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " parametersUseForLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mParametersUseForLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V
    .registers 14
    .param p1, "cc"    # Landroid/os/PersistableBundle;
    .param p2, "ss"    # Landroid/telephony/ServiceState;

    .line 259
    const/4 v0, 0x1

    if-nez p1, :cond_d

    .line 260
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mParametersUseForLevel:I

    .line 261
    sget-object v1, Landroid/telephony/CellSignalStrengthLte;->sRsrpThresholds:[I

    .line 262
    .local v1, "rsrpThresholds":[I
    sget-object v2, Landroid/telephony/CellSignalStrengthLte;->sRsrqThresholds:[I

    .line 263
    .local v2, "rsrqThresholds":[I
    sget-object v3, Landroid/telephony/CellSignalStrengthLte;->sRssnrThresholds:[I

    .line 264
    .local v3, "rssnrThresholds":[I
    const/4 v4, 0x0

    .local v4, "rsrpOnly":Z
    goto :goto_66

    .line 266
    .end local v1    # "rsrpThresholds":[I
    .end local v2    # "rsrqThresholds":[I
    .end local v3    # "rssnrThresholds":[I
    .end local v4    # "rsrpOnly":Z
    :cond_d
    if-eqz p2, :cond_34

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 268
    const-string/jumbo v1, "parameters_used_for_ntn_lte_signal_bar_int"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/telephony/CellSignalStrengthLte;->mParametersUseForLevel:I

    .line 270
    const-string/jumbo v1, "ntn_lte_rsrp_thresholds_int_array"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 272
    .restart local v1    # "rsrpThresholds":[I
    const-string/jumbo v2, "ntn_lte_rsrq_thresholds_int_array"

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 274
    .restart local v2    # "rsrqThresholds":[I
    const-string/jumbo v3, "ntn_lte_rssnr_thresholds_int_array"

    invoke-virtual {p1, v3}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .restart local v3    # "rssnrThresholds":[I
    goto :goto_52

    .line 277
    .end local v1    # "rsrpThresholds":[I
    .end local v2    # "rsrqThresholds":[I
    .end local v3    # "rssnrThresholds":[I
    :cond_34
    const-string/jumbo v1, "parameters_used_for_lte_signal_bar_int"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/telephony/CellSignalStrengthLte;->mParametersUseForLevel:I

    .line 279
    const-string/jumbo v1, "lte_rsrp_thresholds_int_array"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 281
    .restart local v1    # "rsrpThresholds":[I
    const-string/jumbo v2, "lte_rsrq_thresholds_int_array"

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 283
    .restart local v2    # "rsrqThresholds":[I
    const-string/jumbo v3, "lte_rssnr_thresholds_int_array"

    invoke-virtual {p1, v3}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 286
    .restart local v3    # "rssnrThresholds":[I
    :goto_52
    if-nez v1, :cond_56

    sget-object v1, Landroid/telephony/CellSignalStrengthLte;->sRsrpThresholds:[I

    .line 287
    :cond_56
    if-nez v2, :cond_5a

    sget-object v2, Landroid/telephony/CellSignalStrengthLte;->sRsrqThresholds:[I

    .line 288
    :cond_5a
    if-nez v3, :cond_5e

    sget-object v3, Landroid/telephony/CellSignalStrengthLte;->sRssnrThresholds:[I

    .line 298
    :cond_5e
    const-string/jumbo v4, "use_only_rsrp_for_lte_signal_bar_bool"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 302
    .restart local v4    # "rsrpOnly":Z
    :goto_66
    const/4 v5, 0x0

    .line 303
    .local v5, "rsrpBoost":I
    if-eqz p2, :cond_6d

    .line 304
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getArfcnRsrpBoost()I

    move-result v5

    .line 307
    :cond_6d
    iget v6, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    add-int/2addr v6, v5

    const/16 v7, -0x8c

    const/16 v8, -0x2c

    invoke-static {v6, v7, v8}, Landroid/telephony/CellSignalStrengthLte;->inRangeOrUnavailable(III)I

    move-result v6

    .line 309
    .local v6, "rsrp":I
    const v7, 0x7fffffff

    if-eqz v4, :cond_86

    .line 310
    invoke-direct {p0, v6, v1}, Landroid/telephony/CellSignalStrengthLte;->updateLevelWithMeasure(I[I)I

    move-result v8

    .line 312
    .local v8, "level":I
    if-eq v8, v7, :cond_86

    .line 313
    iput v8, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    .line 314
    return-void

    .line 318
    .end local v8    # "level":I
    :cond_86
    const v8, 0x7fffffff

    .line 319
    .local v8, "rsrpLevel":I
    const v9, 0x7fffffff

    .line 320
    .local v9, "rsrqLevel":I
    const v10, 0x7fffffff

    .line 322
    .local v10, "rssnrLevel":I
    invoke-direct {p0, v0}, Landroid/telephony/CellSignalStrengthLte;->isLevelForParameter(I)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 323
    invoke-direct {p0, v6, v1}, Landroid/telephony/CellSignalStrengthLte;->updateLevelWithMeasure(I[I)I

    move-result v8

    .line 328
    :cond_99
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/telephony/CellSignalStrengthLte;->isLevelForParameter(I)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 329
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    invoke-direct {p0, v0, v2}, Landroid/telephony/CellSignalStrengthLte;->updateLevelWithMeasure(I[I)I

    move-result v9

    .line 334
    :cond_a6
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/telephony/CellSignalStrengthLte;->isLevelForParameter(I)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 335
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    invoke-direct {p0, v0, v3}, Landroid/telephony/CellSignalStrengthLte;->updateLevelWithMeasure(I[I)I

    move-result v10

    .line 341
    :cond_b3
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    .line 343
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    if-ne v0, v7, :cond_ec

    .line 345
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    const/16 v7, -0x33

    if-le v0, v7, :cond_c9

    .line 346
    const/4 v0, 0x0

    .local v0, "rssiLevel":I
    goto :goto_ea

    .line 347
    .end local v0    # "rssiLevel":I
    :cond_c9
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    const/16 v7, -0x59

    if-lt v0, v7, :cond_d1

    .line 348
    const/4 v0, 0x4

    .restart local v0    # "rssiLevel":I
    goto :goto_ea

    .line 349
    .end local v0    # "rssiLevel":I
    :cond_d1
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    const/16 v7, -0x61

    if-lt v0, v7, :cond_d9

    .line 350
    const/4 v0, 0x3

    .restart local v0    # "rssiLevel":I
    goto :goto_ea

    .line 351
    .end local v0    # "rssiLevel":I
    :cond_d9
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    const/16 v7, -0x67

    if-lt v0, v7, :cond_e1

    .line 352
    const/4 v0, 0x2

    .restart local v0    # "rssiLevel":I
    goto :goto_ea

    .line 353
    .end local v0    # "rssiLevel":I
    :cond_e1
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    const/16 v7, -0x71

    if-lt v0, v7, :cond_e9

    .line 354
    const/4 v0, 0x1

    .restart local v0    # "rssiLevel":I
    goto :goto_ea

    .line 356
    .end local v0    # "rssiLevel":I
    :cond_e9
    const/4 v0, 0x0

    .line 359
    .restart local v0    # "rssiLevel":I
    :goto_ea
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    .line 361
    .end local v0    # "rssiLevel":I
    :cond_ec
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 552
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 556
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 560
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 561
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 563
    return-void
.end method
