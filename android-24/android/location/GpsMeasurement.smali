.class public Landroid/location/GpsMeasurement;
.super Ljava/lang/Object;
.source "GpsMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsMeasurement$1;
    }
.end annotation


# static fields
.field private static final ADR_ALL:S = 0x7s

.field public static final ADR_STATE_CYCLE_SLIP:S = 0x4s

.field public static final ADR_STATE_RESET:S = 0x2s

.field public static final ADR_STATE_UNKNOWN:S = 0x0s

.field public static final ADR_STATE_VALID:S = 0x1s

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/GpsMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private static final GPS_MEASUREMENT_HAS_UNCORRECTED_PSEUDORANGE_RATE:I = 0x40000

.field private static final HAS_AZIMUTH:I = 0x8

.field private static final HAS_AZIMUTH_UNCERTAINTY:I = 0x10

.field private static final HAS_BIT_NUMBER:I = 0x2000

.field private static final HAS_CARRIER_CYCLES:I = 0x400

.field private static final HAS_CARRIER_FREQUENCY:I = 0x200

.field private static final HAS_CARRIER_PHASE:I = 0x800

.field private static final HAS_CARRIER_PHASE_UNCERTAINTY:I = 0x1000

.field private static final HAS_CODE_PHASE:I = 0x80

.field private static final HAS_CODE_PHASE_UNCERTAINTY:I = 0x100

.field private static final HAS_DOPPLER_SHIFT:I = 0x8000

.field private static final HAS_DOPPLER_SHIFT_UNCERTAINTY:I = 0x10000

.field private static final HAS_ELEVATION:I = 0x2

.field private static final HAS_ELEVATION_UNCERTAINTY:I = 0x4

.field private static final HAS_NO_FLAGS:I = 0x0

.field private static final HAS_PSEUDORANGE:I = 0x20

.field private static final HAS_PSEUDORANGE_UNCERTAINTY:I = 0x40

.field private static final HAS_SNR:I = 0x1

.field private static final HAS_TIME_FROM_LAST_BIT:I = 0x4000

.field private static final HAS_USED_IN_FIX:I = 0x20000

.field public static final LOSS_OF_LOCK_CYCLE_SLIP:B = 0x2t

.field public static final LOSS_OF_LOCK_OK:B = 0x1t

.field public static final LOSS_OF_LOCK_UNKNOWN:B = 0x0t

.field public static final MULTIPATH_INDICATOR_DETECTED:B = 0x1t

.field public static final MULTIPATH_INDICATOR_NOT_USED:B = 0x2t

.field public static final MULTIPATH_INDICATOR_UNKNOWN:B = 0x0t

.field private static final STATE_ALL:S = 0x1fs

.field public static final STATE_BIT_SYNC:S = 0x2s

.field public static final STATE_CODE_LOCK:S = 0x1s

.field public static final STATE_MSEC_AMBIGUOUS:S = 0x10s

.field public static final STATE_SUBFRAME_SYNC:S = 0x4s

.field public static final STATE_TOW_DECODED:S = 0x8s

.field public static final STATE_UNKNOWN:S


# instance fields
.field private mAccumulatedDeltaRangeInMeters:D

.field private mAccumulatedDeltaRangeState:S

.field private mAccumulatedDeltaRangeUncertaintyInMeters:D

.field private mAzimuthInDeg:D

.field private mAzimuthUncertaintyInDeg:D

.field private mBitNumber:I

.field private mCarrierCycles:J

.field private mCarrierFrequencyInHz:F

.field private mCarrierPhase:D

.field private mCarrierPhaseUncertainty:D

.field private mCn0InDbHz:D

.field private mCodePhaseInChips:D

.field private mCodePhaseUncertaintyInChips:D

.field private mDopplerShiftInHz:D

.field private mDopplerShiftUncertaintyInHz:D

.field private mElevationInDeg:D

.field private mElevationUncertaintyInDeg:D

.field private mFlags:I

.field private mLossOfLock:B

.field private mMultipathIndicator:B

.field private mPrn:B

.field private mPseudorangeInMeters:D

.field private mPseudorangeRateInMetersPerSec:D

.field private mPseudorangeRateUncertaintyInMetersPerSec:D

.field private mPseudorangeUncertaintyInMeters:D

.field private mReceivedGpsTowInNs:J

.field private mReceivedGpsTowUncertaintyInNs:J

.field private mSnrInDb:D

.field private mState:S

.field private mTimeFromLastBitInMs:S

.field private mTimeOffsetInNs:D

.field private mUsedInFix:Z


# direct methods
.method static synthetic -set0(Landroid/location/GpsMeasurement;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    #@2
    return-wide p1
.end method

.method static synthetic -set1(Landroid/location/GpsMeasurement;S)S
    .locals 0

    #@0
    iput-short p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    #@2
    return p1
.end method

.method static synthetic -set10(Landroid/location/GpsMeasurement;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    #@2
    return-wide p1
.end method

.method static synthetic -set11(Landroid/location/GpsMeasurement;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    #@2
    return-wide p1
.end method

.method static synthetic -set12(Landroid/location/GpsMeasurement;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    #@2
    return-wide p1
.end method

.method static synthetic -set13(Landroid/location/GpsMeasurement;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    #@2
    return-wide p1
.end method

.method static synthetic -set14(Landroid/location/GpsMeasurement;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    #@2
    return-wide p1
.end method

.method static synthetic -set15(Landroid/location/GpsMeasurement;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    #@2
    return-wide p1
.end method

.method static synthetic -set16(Landroid/location/GpsMeasurement;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    #@2
    return-wide p1
.end method

.method static synthetic -set17(Landroid/location/GpsMeasurement;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/location/GpsMeasurement;->mFlags:I

    #@2
    return p1
.end method

.method static synthetic -set18(Landroid/location/GpsMeasurement;B)B
    .locals 0

    #@0
    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    #@2
    return p1
.end method

.method static synthetic -set19(Landroid/location/GpsMeasurement;B)B
    .locals 0

    #@0
    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/location/GpsMeasurement;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    #@2
    return-wide p1
.end method

.method static synthetic -set20(Landroid/location/GpsMeasurement;B)B
    .locals 0

    #@0
    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mPrn:B

    #@2
    return p1
.end method

.method static synthetic -set21(Landroid/location/GpsMeasurement;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    #@2
    return-wide p1
.end method

.method static synthetic -set22(Landroid/location/GpsMeasurement;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    #@2
    return-wide p1
.end method

.method static synthetic -set23(Landroid/location/GpsMeasurement;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    #@2
    return-wide p1
.end method

.method static synthetic -set24(Landroid/location/GpsMeasurement;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    #@2
    return-wide p1
.end method

.method static synthetic -set25(Landroid/location/GpsMeasurement;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    #@2
    return-wide p1
.end method

.method static synthetic -set26(Landroid/location/GpsMeasurement;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    #@2
    return-wide p1
.end method

.method static synthetic -set27(Landroid/location/GpsMeasurement;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    #@2
    return-wide p1
.end method

.method static synthetic -set28(Landroid/location/GpsMeasurement;S)S
    .locals 0

    #@0
    iput-short p1, p0, Landroid/location/GpsMeasurement;->mState:S

    #@2
    return p1
.end method

.method static synthetic -set29(Landroid/location/GpsMeasurement;S)S
    .locals 0

    #@0
    iput-short p1, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    #@2
    return p1
.end method

.method static synthetic -set3(Landroid/location/GpsMeasurement;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    #@2
    return-wide p1
.end method

.method static synthetic -set30(Landroid/location/GpsMeasurement;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    #@2
    return-wide p1
.end method

.method static synthetic -set31(Landroid/location/GpsMeasurement;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    #@2
    return p1
.end method

.method static synthetic -set4(Landroid/location/GpsMeasurement;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    #@2
    return-wide p1
.end method

.method static synthetic -set5(Landroid/location/GpsMeasurement;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    #@2
    return p1
.end method

.method static synthetic -set6(Landroid/location/GpsMeasurement;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    #@2
    return-wide p1
.end method

.method static synthetic -set7(Landroid/location/GpsMeasurement;F)F
    .locals 0

    #@0
    iput p1, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    #@2
    return p1
.end method

.method static synthetic -set8(Landroid/location/GpsMeasurement;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    #@2
    return-wide p1
.end method

.method static synthetic -set9(Landroid/location/GpsMeasurement;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    #@2
    return-wide p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1160
    new-instance v0, Landroid/location/GpsMeasurement$1;

    #@2
    invoke-direct {v0}, Landroid/location/GpsMeasurement$1;-><init>()V

    #@5
    sput-object v0, Landroid/location/GpsMeasurement;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 180
    invoke-direct {p0}, Landroid/location/GpsMeasurement;->initialize()V

    #@6
    .line 179
    return-void
.end method

.method private getAccumulatedDeltaRangeStateString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 441
    iget-short v2, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    #@2
    if-nez v2, :cond_0

    #@4
    .line 442
    const-string/jumbo v2, "Unknown"

    #@7
    return-object v2

    #@8
    .line 444
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    .line 445
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-short v2, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    #@f
    and-int/lit8 v2, v2, 0x1

    #@11
    const/4 v3, 0x1

    #@12
    if-ne v2, v3, :cond_1

    #@14
    .line 446
    const-string/jumbo v2, "Valid|"

    #@17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 448
    :cond_1
    iget-short v2, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    #@1c
    and-int/lit8 v2, v2, 0x2

    #@1e
    const/4 v3, 0x2

    #@1f
    if-ne v2, v3, :cond_2

    #@21
    .line 449
    const-string/jumbo v2, "Reset|"

    #@24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 451
    :cond_2
    iget-short v2, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    #@29
    and-int/lit8 v2, v2, 0x4

    #@2b
    const/4 v3, 0x4

    #@2c
    if-ne v2, v3, :cond_3

    #@2e
    .line 452
    const-string/jumbo v2, "CycleSlip|"

    #@31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 454
    :cond_3
    iget-short v2, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    #@36
    and-int/lit8 v1, v2, -0x8

    #@38
    .line 455
    .local v1, "remainingStates":I
    if-lez v1, :cond_4

    #@3a
    .line 456
    const-string/jumbo v2, "Other("

    #@3d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    .line 457
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    .line 458
    const-string/jumbo v2, ")|"

    #@4a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    .line 460
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@50
    move-result v2

    #@51
    add-int/lit8 v2, v2, -0x1

    #@53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    #@56
    .line 461
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    return-object v2
.end method

.method private getLossOfLockString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 795
    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v1, "<Invalid:"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget-byte v1, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const-string/jumbo v1, ">"

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    return-object v0

    #@23
    .line 797
    :pswitch_0
    const-string/jumbo v0, "Unknown"

    #@26
    return-object v0

    #@27
    .line 799
    :pswitch_1
    const-string/jumbo v0, "Ok"

    #@2a
    return-object v0

    #@2b
    .line 801
    :pswitch_2
    const-string/jumbo v0, "CycleSlip"

    #@2e
    return-object v0

    #@2f
    .line 795
    nop

    #@30
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getMultipathIndicatorString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 960
    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 968
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v1, "<Invalid:"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget-byte v1, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const-string/jumbo v1, ">"

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    return-object v0

    #@23
    .line 962
    :pswitch_0
    const-string/jumbo v0, "Unknown"

    #@26
    return-object v0

    #@27
    .line 964
    :pswitch_1
    const-string/jumbo v0, "Detected"

    #@2a
    return-object v0

    #@2b
    .line 966
    :pswitch_2
    const-string/jumbo v0, "NotUsed"

    #@2e
    return-object v0

    #@2f
    .line 960
    nop

    #@30
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getStateString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 289
    iget-short v2, p0, Landroid/location/GpsMeasurement;->mState:S

    #@2
    if-nez v2, :cond_0

    #@4
    .line 290
    const-string/jumbo v2, "Unknown"

    #@7
    return-object v2

    #@8
    .line 292
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    .line 293
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-short v2, p0, Landroid/location/GpsMeasurement;->mState:S

    #@f
    and-int/lit8 v2, v2, 0x1

    #@11
    const/4 v3, 0x1

    #@12
    if-ne v2, v3, :cond_1

    #@14
    .line 294
    const-string/jumbo v2, "CodeLock|"

    #@17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 296
    :cond_1
    iget-short v2, p0, Landroid/location/GpsMeasurement;->mState:S

    #@1c
    and-int/lit8 v2, v2, 0x2

    #@1e
    const/4 v3, 0x2

    #@1f
    if-ne v2, v3, :cond_2

    #@21
    .line 297
    const-string/jumbo v2, "BitSync|"

    #@24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 299
    :cond_2
    iget-short v2, p0, Landroid/location/GpsMeasurement;->mState:S

    #@29
    and-int/lit8 v2, v2, 0x4

    #@2b
    const/4 v3, 0x4

    #@2c
    if-ne v2, v3, :cond_3

    #@2e
    .line 300
    const-string/jumbo v2, "SubframeSync|"

    #@31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 302
    :cond_3
    iget-short v2, p0, Landroid/location/GpsMeasurement;->mState:S

    #@36
    and-int/lit8 v2, v2, 0x8

    #@38
    const/16 v3, 0x8

    #@3a
    if-ne v2, v3, :cond_4

    #@3c
    .line 303
    const-string/jumbo v2, "TowDecoded|"

    #@3f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    .line 305
    :cond_4
    iget-short v2, p0, Landroid/location/GpsMeasurement;->mState:S

    #@44
    and-int/lit8 v2, v2, 0x10

    #@46
    const/16 v3, 0x10

    #@48
    if-ne v2, v3, :cond_5

    #@4a
    .line 306
    const-string/jumbo v2, "MsecAmbiguous"

    #@4d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    .line 308
    :cond_5
    iget-short v2, p0, Landroid/location/GpsMeasurement;->mState:S

    #@52
    and-int/lit8 v1, v2, -0x20

    #@54
    .line 309
    .local v1, "remainingStates":I
    if-lez v1, :cond_6

    #@56
    .line 310
    const-string/jumbo v2, "Other("

    #@59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    .line 311
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    #@5f
    move-result-object v2

    #@60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    .line 312
    const-string/jumbo v2, ")|"

    #@66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    .line 314
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@6c
    move-result v2

    #@6d
    add-int/lit8 v2, v2, -0x1

    #@6f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    #@72
    .line 315
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v2

    #@76
    return-object v2
.end method

.method private initialize()V
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 1368
    iput v2, p0, Landroid/location/GpsMeasurement;->mFlags:I

    #@5
    .line 1369
    const/16 v0, -0x80

    #@7
    invoke-virtual {p0, v0}, Landroid/location/GpsMeasurement;->setPrn(B)V

    #@a
    .line 1370
    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    #@c
    invoke-virtual {p0, v0, v1}, Landroid/location/GpsMeasurement;->setTimeOffsetInNs(D)V

    #@f
    .line 1371
    invoke-virtual {p0, v2}, Landroid/location/GpsMeasurement;->setState(S)V

    #@12
    .line 1372
    const-wide/high16 v0, -0x8000000000000000L

    #@14
    invoke-virtual {p0, v0, v1}, Landroid/location/GpsMeasurement;->setReceivedGpsTowInNs(J)V

    #@17
    .line 1373
    const-wide v0, 0x7fffffffffffffffL

    #@1c
    invoke-virtual {p0, v0, v1}, Landroid/location/GpsMeasurement;->setReceivedGpsTowUncertaintyInNs(J)V

    #@1f
    .line 1374
    invoke-virtual {p0, v4, v5}, Landroid/location/GpsMeasurement;->setCn0InDbHz(D)V

    #@22
    .line 1375
    invoke-virtual {p0, v4, v5}, Landroid/location/GpsMeasurement;->setPseudorangeRateInMetersPerSec(D)V

    #@25
    .line 1376
    invoke-virtual {p0, v4, v5}, Landroid/location/GpsMeasurement;->setPseudorangeRateUncertaintyInMetersPerSec(D)V

    #@28
    .line 1377
    invoke-virtual {p0, v2}, Landroid/location/GpsMeasurement;->setAccumulatedDeltaRangeState(S)V

    #@2b
    .line 1378
    invoke-virtual {p0, v4, v5}, Landroid/location/GpsMeasurement;->setAccumulatedDeltaRangeInMeters(D)V

    #@2e
    .line 1379
    invoke-virtual {p0, v4, v5}, Landroid/location/GpsMeasurement;->setAccumulatedDeltaRangeUncertaintyInMeters(D)V

    #@31
    .line 1380
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetPseudorangeInMeters()V

    #@34
    .line 1381
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetPseudorangeUncertaintyInMeters()V

    #@37
    .line 1382
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCodePhaseInChips()V

    #@3a
    .line 1383
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCodePhaseUncertaintyInChips()V

    #@3d
    .line 1384
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCarrierFrequencyInHz()V

    #@40
    .line 1385
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCarrierCycles()V

    #@43
    .line 1386
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCarrierPhase()V

    #@46
    .line 1387
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCarrierPhaseUncertainty()V

    #@49
    .line 1388
    invoke-virtual {p0, v2}, Landroid/location/GpsMeasurement;->setLossOfLock(B)V

    #@4c
    .line 1389
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetBitNumber()V

    #@4f
    .line 1390
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetTimeFromLastBitInMs()V

    #@52
    .line 1391
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetDopplerShiftInHz()V

    #@55
    .line 1392
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetDopplerShiftUncertaintyInHz()V

    #@58
    .line 1393
    invoke-virtual {p0, v2}, Landroid/location/GpsMeasurement;->setMultipathIndicator(B)V

    #@5b
    .line 1394
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetSnrInDb()V

    #@5e
    .line 1395
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetElevationInDeg()V

    #@61
    .line 1396
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetElevationUncertaintyInDeg()V

    #@64
    .line 1397
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetAzimuthInDeg()V

    #@67
    .line 1398
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetAzimuthUncertaintyInDeg()V

    #@6a
    .line 1399
    invoke-virtual {p0, v2}, Landroid/location/GpsMeasurement;->setUsedInFix(Z)V

    #@6d
    .line 1367
    return-void
.end method

.method private isFlagSet(I)Z
    .locals 1
    .param p1, "flag"    # I

    #@0
    .prologue
    .line 1411
    iget v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    #@2
    and-int/2addr v0, p1

    #@3
    if-ne v0, p1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method private resetFlag(I)V
    .locals 2
    .param p1, "flag"    # I

    #@0
    .prologue
    .line 1407
    iget v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    #@2
    not-int v1, p1

    #@3
    and-int/2addr v0, v1

    #@4
    iput v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    #@6
    .line 1406
    return-void
.end method

.method private setFlag(I)V
    .locals 1
    .param p1, "flag"    # I

    #@0
    .prologue
    .line 1403
    iget v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    #@2
    or-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    #@5
    .line 1402
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1244
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAccumulatedDeltaRangeInMeters()D
    .locals 2

    #@0
    .prologue
    .line 476
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    #@2
    return-wide v0
.end method

.method public getAccumulatedDeltaRangeState()S
    .locals 1

    #@0
    .prologue
    .line 426
    iget-short v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    #@2
    return v0
.end method

.method public getAccumulatedDeltaRangeUncertaintyInMeters()D
    .locals 2

    #@0
    .prologue
    .line 493
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    #@2
    return-wide v0
.end method

.method public getAzimuthInDeg()D
    .locals 2

    #@0
    .prologue
    .line 1089
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    #@2
    return-wide v0
.end method

.method public getAzimuthUncertaintyInDeg()D
    .locals 2

    #@0
    .prologue
    .line 1124
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    #@2
    return-wide v0
.end method

.method public getBitNumber()I
    .locals 1

    #@0
    .prologue
    .line 820
    iget v0, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    #@2
    return v0
.end method

.method public getCarrierCycles()J
    .locals 2

    #@0
    .prologue
    .line 687
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    #@2
    return-wide v0
.end method

.method public getCarrierFrequencyInHz()F
    .locals 1

    #@0
    .prologue
    .line 654
    iget v0, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    #@2
    return v0
.end method

.method public getCarrierPhase()D
    .locals 2

    #@0
    .prologue
    .line 724
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    #@2
    return-wide v0
.end method

.method public getCarrierPhaseUncertainty()D
    .locals 2

    #@0
    .prologue
    .line 757
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    #@2
    return-wide v0
.end method

.method public getCn0InDbHz()D
    .locals 2

    #@0
    .prologue
    .line 361
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    #@2
    return-wide v0
.end method

.method public getCodePhaseInChips()D
    .locals 2

    #@0
    .prologue
    .line 588
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    #@2
    return-wide v0
.end method

.method public getCodePhaseUncertaintyInChips()D
    .locals 2

    #@0
    .prologue
    .line 621
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    #@2
    return-wide v0
.end method

.method public getDopplerShiftInHz()D
    .locals 2

    #@0
    .prologue
    .line 889
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    #@2
    return-wide v0
.end method

.method public getDopplerShiftUncertaintyInHz()D
    .locals 2

    #@0
    .prologue
    .line 922
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    #@2
    return-wide v0
.end method

.method public getElevationInDeg()D
    .locals 2

    #@0
    .prologue
    .line 1019
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    #@2
    return-wide v0
.end method

.method public getElevationUncertaintyInDeg()D
    .locals 2

    #@0
    .prologue
    .line 1054
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    #@2
    return-wide v0
.end method

.method public getLossOfLock()B
    .locals 1

    #@0
    .prologue
    .line 780
    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    #@2
    return v0
.end method

.method public getMultipathIndicator()B
    .locals 1

    #@0
    .prologue
    .line 945
    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    #@2
    return v0
.end method

.method public getPrn()B
    .locals 1

    #@0
    .prologue
    .line 235
    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mPrn:B

    #@2
    return v0
.end method

.method public getPseudorangeInMeters()D
    .locals 2

    #@0
    .prologue
    .line 519
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    #@2
    return-wide v0
.end method

.method public getPseudorangeRateInMetersPerSec()D
    .locals 2

    #@0
    .prologue
    .line 385
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    #@2
    return-wide v0
.end method

.method public getPseudorangeRateUncertaintyInMetersPerSec()D
    .locals 2

    #@0
    .prologue
    .line 410
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    #@2
    return-wide v0
.end method

.method public getPseudorangeUncertaintyInMeters()D
    .locals 2

    #@0
    .prologue
    .line 553
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    #@2
    return-wide v0
.end method

.method public getReceivedGpsTowInNs()J
    .locals 2

    #@0
    .prologue
    .line 330
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    #@2
    return-wide v0
.end method

.method public getReceivedGpsTowUncertaintyInNs()J
    .locals 2

    #@0
    .prologue
    .line 344
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    #@2
    return-wide v0
.end method

.method public getSnrInDb()D
    .locals 2

    #@0
    .prologue
    .line 985
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    #@2
    return-wide v0
.end method

.method public getState()S
    .locals 1

    #@0
    .prologue
    .line 274
    iget-short v0, p0, Landroid/location/GpsMeasurement;->mState:S

    #@2
    return v0
.end method

.method public getTimeFromLastBitInMs()S
    .locals 1

    #@0
    .prologue
    .line 853
    iget-short v0, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    #@2
    return v0
.end method

.method public getTimeOffsetInNs()D
    .locals 2

    #@0
    .prologue
    .line 257
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    #@2
    return-wide v0
.end method

.method public hasAzimuthInDeg()Z
    .locals 1

    #@0
    .prologue
    .line 1077
    const/16 v0, 0x8

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasAzimuthUncertaintyInDeg()Z
    .locals 1

    #@0
    .prologue
    .line 1112
    const/16 v0, 0x10

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasBitNumber()Z
    .locals 1

    #@0
    .prologue
    .line 811
    const/16 v0, 0x2000

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasCarrierCycles()Z
    .locals 1

    #@0
    .prologue
    .line 677
    const/16 v0, 0x400

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasCarrierFrequencyInHz()Z
    .locals 1

    #@0
    .prologue
    .line 644
    const/16 v0, 0x200

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasCarrierPhase()Z
    .locals 1

    #@0
    .prologue
    .line 710
    const/16 v0, 0x800

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasCarrierPhaseUncertainty()Z
    .locals 1

    #@0
    .prologue
    .line 747
    const/16 v0, 0x1000

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasCodePhaseInChips()Z
    .locals 1

    #@0
    .prologue
    .line 576
    const/16 v0, 0x80

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasCodePhaseUncertaintyInChips()Z
    .locals 1

    #@0
    .prologue
    .line 611
    const/16 v0, 0x100

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasDopplerShiftInHz()Z
    .locals 1

    #@0
    .prologue
    .line 876
    const v0, 0x8000

    #@3
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public hasDopplerShiftUncertaintyInHz()Z
    .locals 1

    #@0
    .prologue
    .line 912
    const/high16 v0, 0x10000

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasElevationInDeg()Z
    .locals 1

    #@0
    .prologue
    .line 1008
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public hasElevationUncertaintyInDeg()Z
    .locals 1

    #@0
    .prologue
    .line 1042
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public hasPseudorangeInMeters()Z
    .locals 1

    #@0
    .prologue
    .line 509
    const/16 v0, 0x20

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasPseudorangeUncertaintyInMeters()Z
    .locals 1

    #@0
    .prologue
    .line 542
    const/16 v0, 0x40

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasSnrInDb()Z
    .locals 1

    #@0
    .prologue
    .line 976
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public hasTimeFromLastBitInMs()Z
    .locals 1

    #@0
    .prologue
    .line 843
    const/16 v0, 0x4000

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isPseudorangeRateCorrected()Z
    .locals 1

    #@0
    .prologue
    .line 402
    const/high16 v0, 0x40000

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method public isUsedInFix()Z
    .locals 1

    #@0
    .prologue
    .line 1150
    iget-boolean v0, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    #@2
    return v0
.end method

.method public reset()V
    .locals 0

    #@0
    .prologue
    .line 227
    invoke-direct {p0}, Landroid/location/GpsMeasurement;->initialize()V

    #@3
    .line 226
    return-void
.end method

.method public resetAzimuthInDeg()V
    .locals 2

    #@0
    .prologue
    .line 1104
    const/16 v0, 0x8

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    #@5
    .line 1105
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@7
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    #@9
    .line 1103
    return-void
.end method

.method public resetAzimuthUncertaintyInDeg()V
    .locals 2

    #@0
    .prologue
    .line 1139
    const/16 v0, 0x10

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    #@5
    .line 1140
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@7
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    #@9
    .line 1138
    return-void
.end method

.method public resetBitNumber()V
    .locals 1

    #@0
    .prologue
    .line 835
    const/16 v0, 0x2000

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    #@5
    .line 836
    const/high16 v0, -0x80000000

    #@7
    iput v0, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    #@9
    .line 834
    return-void
.end method

.method public resetCarrierCycles()V
    .locals 2

    #@0
    .prologue
    .line 702
    const/16 v0, 0x400

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    #@5
    .line 703
    const-wide/high16 v0, -0x8000000000000000L

    #@7
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    #@9
    .line 701
    return-void
.end method

.method public resetCarrierFrequencyInHz()V
    .locals 1

    #@0
    .prologue
    .line 669
    const/16 v0, 0x200

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    #@5
    .line 670
    const/high16 v0, 0x7fc00000    # NaNf

    #@7
    iput v0, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    #@9
    .line 668
    return-void
.end method

.method public resetCarrierPhase()V
    .locals 2

    #@0
    .prologue
    .line 739
    const/16 v0, 0x800

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    #@5
    .line 740
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@7
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    #@9
    .line 738
    return-void
.end method

.method public resetCarrierPhaseUncertainty()V
    .locals 2

    #@0
    .prologue
    .line 772
    const/16 v0, 0x1000

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    #@5
    .line 773
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@7
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    #@9
    .line 771
    return-void
.end method

.method public resetCodePhaseInChips()V
    .locals 2

    #@0
    .prologue
    .line 603
    const/16 v0, 0x80

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    #@5
    .line 604
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@7
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    #@9
    .line 602
    return-void
.end method

.method public resetCodePhaseUncertaintyInChips()V
    .locals 2

    #@0
    .prologue
    .line 636
    const/16 v0, 0x100

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    #@5
    .line 637
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@7
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    #@9
    .line 635
    return-void
.end method

.method public resetDopplerShiftInHz()V
    .locals 2

    #@0
    .prologue
    .line 904
    const v0, 0x8000

    #@3
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    #@6
    .line 905
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@8
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    #@a
    .line 903
    return-void
.end method

.method public resetDopplerShiftUncertaintyInHz()V
    .locals 2

    #@0
    .prologue
    .line 937
    const/high16 v0, 0x10000

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    #@5
    .line 938
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@7
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    #@9
    .line 936
    return-void
.end method

.method public resetElevationInDeg()V
    .locals 2

    #@0
    .prologue
    .line 1034
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    #@4
    .line 1035
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@6
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    #@8
    .line 1033
    return-void
.end method

.method public resetElevationUncertaintyInDeg()V
    .locals 2

    #@0
    .prologue
    .line 1069
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    #@4
    .line 1070
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@6
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    #@8
    .line 1068
    return-void
.end method

.method public resetPseudorangeInMeters()V
    .locals 2

    #@0
    .prologue
    .line 534
    const/16 v0, 0x20

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    #@5
    .line 535
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@7
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    #@9
    .line 533
    return-void
.end method

.method public resetPseudorangeUncertaintyInMeters()V
    .locals 2

    #@0
    .prologue
    .line 568
    const/16 v0, 0x40

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    #@5
    .line 569
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@7
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    #@9
    .line 567
    return-void
.end method

.method public resetSnrInDb()V
    .locals 2

    #@0
    .prologue
    .line 1000
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    #@4
    .line 1001
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@6
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    #@8
    .line 999
    return-void
.end method

.method public resetTimeFromLastBitInMs()V
    .locals 1

    #@0
    .prologue
    .line 868
    const/16 v0, 0x4000

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    #@5
    .line 869
    const/16 v0, -0x8000

    #@7
    iput-short v0, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    #@9
    .line 867
    return-void
.end method

.method public set(Landroid/location/GpsMeasurement;)V
    .locals 2
    .param p1, "measurement"    # Landroid/location/GpsMeasurement;

    #@0
    .prologue
    .line 187
    iget v0, p1, Landroid/location/GpsMeasurement;->mFlags:I

    #@2
    iput v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    #@4
    .line 188
    iget-byte v0, p1, Landroid/location/GpsMeasurement;->mPrn:B

    #@6
    iput-byte v0, p0, Landroid/location/GpsMeasurement;->mPrn:B

    #@8
    .line 189
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    #@a
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    #@c
    .line 190
    iget-short v0, p1, Landroid/location/GpsMeasurement;->mState:S

    #@e
    iput-short v0, p0, Landroid/location/GpsMeasurement;->mState:S

    #@10
    .line 191
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    #@12
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    #@14
    .line 192
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    #@16
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    #@18
    .line 193
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    #@1a
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    #@1c
    .line 194
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    #@1e
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    #@20
    .line 196
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    #@22
    .line 195
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    #@24
    .line 197
    iget-short v0, p1, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    #@26
    iput-short v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    #@28
    .line 198
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    #@2a
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    #@2c
    .line 200
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    #@2e
    .line 199
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    #@30
    .line 201
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    #@32
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    #@34
    .line 202
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    #@36
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    #@38
    .line 203
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    #@3a
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    #@3c
    .line 204
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    #@3e
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    #@40
    .line 205
    iget v0, p1, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    #@42
    iput v0, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    #@44
    .line 206
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    #@46
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    #@48
    .line 207
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    #@4a
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    #@4c
    .line 208
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    #@4e
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    #@50
    .line 209
    iget-byte v0, p1, Landroid/location/GpsMeasurement;->mLossOfLock:B

    #@52
    iput-byte v0, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    #@54
    .line 210
    iget v0, p1, Landroid/location/GpsMeasurement;->mBitNumber:I

    #@56
    iput v0, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    #@58
    .line 211
    iget-short v0, p1, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    #@5a
    iput-short v0, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    #@5c
    .line 212
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    #@5e
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    #@60
    .line 213
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    #@62
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    #@64
    .line 214
    iget-byte v0, p1, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    #@66
    iput-byte v0, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    #@68
    .line 215
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mSnrInDb:D

    #@6a
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    #@6c
    .line 216
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    #@6e
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    #@70
    .line 217
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    #@72
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    #@74
    .line 218
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    #@76
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    #@78
    .line 219
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    #@7a
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    #@7c
    .line 220
    iget-boolean v0, p1, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    #@7e
    iput-boolean v0, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    #@80
    .line 186
    return-void
.end method

.method public setAccumulatedDeltaRangeInMeters(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 483
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    #@2
    .line 482
    return-void
.end method

.method public setAccumulatedDeltaRangeState(S)V
    .locals 0
    .param p1, "value"    # S

    #@0
    .prologue
    .line 433
    iput-short p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    #@2
    .line 432
    return-void
.end method

.method public setAccumulatedDeltaRangeUncertaintyInMeters(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 502
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    #@2
    .line 501
    return-void
.end method

.method public setAzimuthInDeg(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 1096
    const/16 v0, 0x8

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    #@5
    .line 1097
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    #@7
    .line 1095
    return-void
.end method

.method public setAzimuthUncertaintyInDeg(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 1131
    const/16 v0, 0x10

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    #@5
    .line 1132
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    #@7
    .line 1130
    return-void
.end method

.method public setBitNumber(I)V
    .locals 1
    .param p1, "bitNumber"    # I

    #@0
    .prologue
    .line 827
    const/16 v0, 0x2000

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    #@5
    .line 828
    iput p1, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    #@7
    .line 826
    return-void
.end method

.method public setCarrierCycles(J)V
    .locals 1
    .param p1, "value"    # J

    #@0
    .prologue
    .line 694
    const/16 v0, 0x400

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    #@5
    .line 695
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    #@7
    .line 693
    return-void
.end method

.method public setCarrierFrequencyInHz(F)V
    .locals 1
    .param p1, "carrierFrequencyInHz"    # F

    #@0
    .prologue
    .line 661
    const/16 v0, 0x200

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    #@5
    .line 662
    iput p1, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    #@7
    .line 660
    return-void
.end method

.method public setCarrierPhase(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 731
    const/16 v0, 0x800

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    #@5
    .line 732
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    #@7
    .line 730
    return-void
.end method

.method public setCarrierPhaseUncertainty(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 764
    const/16 v0, 0x1000

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    #@5
    .line 765
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    #@7
    .line 763
    return-void
.end method

.method public setCn0InDbHz(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 368
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    #@2
    .line 367
    return-void
.end method

.method public setCodePhaseInChips(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 595
    const/16 v0, 0x80

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    #@5
    .line 596
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    #@7
    .line 594
    return-void
.end method

.method public setCodePhaseUncertaintyInChips(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 628
    const/16 v0, 0x100

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    #@5
    .line 629
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    #@7
    .line 627
    return-void
.end method

.method public setDopplerShiftInHz(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 896
    const v0, 0x8000

    #@3
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    #@6
    .line 897
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    #@8
    .line 895
    return-void
.end method

.method public setDopplerShiftUncertaintyInHz(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 929
    const/high16 v0, 0x10000

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    #@5
    .line 930
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    #@7
    .line 928
    return-void
.end method

.method public setElevationInDeg(D)V
    .locals 1
    .param p1, "elevationInDeg"    # D

    #@0
    .prologue
    .line 1026
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    #@4
    .line 1027
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    #@6
    .line 1025
    return-void
.end method

.method public setElevationUncertaintyInDeg(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 1061
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    #@4
    .line 1062
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    #@6
    .line 1060
    return-void
.end method

.method public setLossOfLock(B)V
    .locals 0
    .param p1, "value"    # B

    #@0
    .prologue
    .line 787
    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    #@2
    .line 786
    return-void
.end method

.method public setMultipathIndicator(B)V
    .locals 0
    .param p1, "value"    # B

    #@0
    .prologue
    .line 952
    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    #@2
    .line 951
    return-void
.end method

.method public setPrn(B)V
    .locals 0
    .param p1, "value"    # B

    #@0
    .prologue
    .line 242
    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mPrn:B

    #@2
    .line 241
    return-void
.end method

.method public setPseudorangeInMeters(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 526
    const/16 v0, 0x20

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    #@5
    .line 527
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    #@7
    .line 525
    return-void
.end method

.method public setPseudorangeRateInMetersPerSec(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 392
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    #@2
    .line 391
    return-void
.end method

.method public setPseudorangeRateUncertaintyInMetersPerSec(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 417
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    #@2
    .line 416
    return-void
.end method

.method public setPseudorangeUncertaintyInMeters(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 560
    const/16 v0, 0x40

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    #@5
    .line 561
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    #@7
    .line 559
    return-void
.end method

.method public setReceivedGpsTowInNs(J)V
    .locals 1
    .param p1, "value"    # J

    #@0
    .prologue
    .line 337
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    #@2
    .line 336
    return-void
.end method

.method public setReceivedGpsTowUncertaintyInNs(J)V
    .locals 1
    .param p1, "value"    # J

    #@0
    .prologue
    .line 351
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    #@2
    .line 350
    return-void
.end method

.method public setSnrInDb(D)V
    .locals 1
    .param p1, "snrInDb"    # D

    #@0
    .prologue
    .line 992
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    #@4
    .line 993
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    #@6
    .line 991
    return-void
.end method

.method public setState(S)V
    .locals 0
    .param p1, "value"    # S

    #@0
    .prologue
    .line 281
    iput-short p1, p0, Landroid/location/GpsMeasurement;->mState:S

    #@2
    .line 280
    return-void
.end method

.method public setTimeFromLastBitInMs(S)V
    .locals 1
    .param p1, "value"    # S

    #@0
    .prologue
    .line 860
    const/16 v0, 0x4000

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    #@5
    .line 861
    iput-short p1, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    #@7
    .line 859
    return-void
.end method

.method public setTimeOffsetInNs(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 264
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    #@2
    .line 263
    return-void
.end method

.method public setUsedInFix(Z)V
    .locals 0
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 1157
    iput-boolean p1, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    #@2
    .line 1156
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    #@0
    .prologue
    const/4 v13, 0x3

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v12, 0x2

    #@3
    const/4 v11, 0x1

    #@4
    const/4 v10, 0x0

    #@5
    .line 1249
    const-string/jumbo v1, "   %-29s = %s\n"

    #@8
    .line 1250
    .local v1, "format":Ljava/lang/String;
    const-string/jumbo v2, "   %-29s = %-25s   %-40s = %s\n"

    #@b
    .line 1251
    .local v2, "formatWithUncertainty":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    const-string/jumbo v3, "GpsMeasurement:\n"

    #@10
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    .line 1253
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "   %-29s = %s\n"

    #@16
    new-array v5, v12, [Ljava/lang/Object;

    #@18
    const-string/jumbo v6, "Prn"

    #@1b
    aput-object v6, v5, v10

    #@1d
    iget-byte v6, p0, Landroid/location/GpsMeasurement;->mPrn:B

    #@1f
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@22
    move-result-object v6

    #@23
    aput-object v6, v5, v11

    #@25
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 1255
    const-string/jumbo v3, "   %-29s = %s\n"

    #@2f
    new-array v5, v12, [Ljava/lang/Object;

    #@31
    const-string/jumbo v6, "TimeOffsetInNs"

    #@34
    aput-object v6, v5, v10

    #@36
    iget-wide v6, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    #@38
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@3b
    move-result-object v6

    #@3c
    aput-object v6, v5, v11

    #@3e
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 1257
    const-string/jumbo v3, "   %-29s = %s\n"

    #@48
    new-array v5, v12, [Ljava/lang/Object;

    #@4a
    const-string/jumbo v6, "State"

    #@4d
    aput-object v6, v5, v10

    #@4f
    invoke-direct {p0}, Landroid/location/GpsMeasurement;->getStateString()Ljava/lang/String;

    #@52
    move-result-object v6

    #@53
    aput-object v6, v5, v11

    #@55
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    .line 1260
    const-string/jumbo v3, "   %-29s = %-25s   %-40s = %s\n"

    #@5f
    .line 1259
    const/4 v5, 0x4

    #@60
    new-array v5, v5, [Ljava/lang/Object;

    #@62
    .line 1261
    const-string/jumbo v6, "ReceivedGpsTowInNs"

    #@65
    aput-object v6, v5, v10

    #@67
    .line 1262
    iget-wide v6, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    #@69
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@6c
    move-result-object v6

    #@6d
    aput-object v6, v5, v11

    #@6f
    .line 1263
    const-string/jumbo v6, "ReceivedGpsTowUncertaintyInNs"

    #@72
    aput-object v6, v5, v12

    #@74
    .line 1264
    iget-wide v6, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    #@76
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@79
    move-result-object v6

    #@7a
    aput-object v6, v5, v13

    #@7c
    .line 1259
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7f
    move-result-object v3

    #@80
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    .line 1266
    const-string/jumbo v3, "   %-29s = %s\n"

    #@86
    new-array v5, v12, [Ljava/lang/Object;

    #@88
    const-string/jumbo v6, "Cn0InDbHz"

    #@8b
    aput-object v6, v5, v10

    #@8d
    iget-wide v6, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    #@8f
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@92
    move-result-object v6

    #@93
    aput-object v6, v5, v11

    #@95
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@98
    move-result-object v3

    #@99
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    .line 1269
    const-string/jumbo v3, "   %-29s = %-25s   %-40s = %s\n"

    #@9f
    .line 1268
    const/4 v5, 0x4

    #@a0
    new-array v5, v5, [Ljava/lang/Object;

    #@a2
    .line 1270
    const-string/jumbo v6, "PseudorangeRateInMetersPerSec"

    #@a5
    aput-object v6, v5, v10

    #@a7
    .line 1271
    iget-wide v6, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    #@a9
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@ac
    move-result-object v6

    #@ad
    aput-object v6, v5, v11

    #@af
    .line 1272
    const-string/jumbo v6, "PseudorangeRateUncertaintyInMetersPerSec"

    #@b2
    aput-object v6, v5, v12

    #@b4
    .line 1273
    iget-wide v6, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    #@b6
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@b9
    move-result-object v6

    #@ba
    aput-object v6, v5, v13

    #@bc
    .line 1268
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@bf
    move-result-object v3

    #@c0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    .line 1275
    const-string/jumbo v3, "   %-29s = %s\n"

    #@c6
    .line 1274
    new-array v5, v12, [Ljava/lang/Object;

    #@c8
    .line 1276
    const-string/jumbo v6, "PseudorangeRateIsCorrected"

    #@cb
    aput-object v6, v5, v10

    #@cd
    .line 1277
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->isPseudorangeRateCorrected()Z

    #@d0
    move-result v6

    #@d1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@d4
    move-result-object v6

    #@d5
    aput-object v6, v5, v11

    #@d7
    .line 1274
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@da
    move-result-object v3

    #@db
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    .line 1280
    const-string/jumbo v3, "   %-29s = %s\n"

    #@e1
    .line 1279
    new-array v5, v12, [Ljava/lang/Object;

    #@e3
    .line 1281
    const-string/jumbo v6, "AccumulatedDeltaRangeState"

    #@e6
    aput-object v6, v5, v10

    #@e8
    .line 1282
    invoke-direct {p0}, Landroid/location/GpsMeasurement;->getAccumulatedDeltaRangeStateString()Ljava/lang/String;

    #@eb
    move-result-object v6

    #@ec
    aput-object v6, v5, v11

    #@ee
    .line 1279
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@f1
    move-result-object v3

    #@f2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    .line 1285
    const-string/jumbo v3, "   %-29s = %-25s   %-40s = %s\n"

    #@f8
    .line 1284
    const/4 v5, 0x4

    #@f9
    new-array v5, v5, [Ljava/lang/Object;

    #@fb
    .line 1286
    const-string/jumbo v6, "AccumulatedDeltaRangeInMeters"

    #@fe
    aput-object v6, v5, v10

    #@100
    .line 1287
    iget-wide v6, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    #@102
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@105
    move-result-object v6

    #@106
    aput-object v6, v5, v11

    #@108
    .line 1288
    const-string/jumbo v6, "AccumulatedDeltaRangeUncertaintyInMeters"

    #@10b
    aput-object v6, v5, v12

    #@10d
    .line 1289
    iget-wide v6, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    #@10f
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@112
    move-result-object v6

    #@113
    aput-object v6, v5, v13

    #@115
    .line 1284
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@118
    move-result-object v3

    #@119
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    .line 1292
    const-string/jumbo v5, "   %-29s = %-25s   %-40s = %s\n"

    #@11f
    .line 1291
    const/4 v3, 0x4

    #@120
    new-array v6, v3, [Ljava/lang/Object;

    #@122
    .line 1293
    const-string/jumbo v3, "PseudorangeInMeters"

    #@125
    aput-object v3, v6, v10

    #@127
    .line 1294
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasPseudorangeInMeters()Z

    #@12a
    move-result v3

    #@12b
    if-eqz v3, :cond_1

    #@12d
    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    #@12f
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@132
    move-result-object v3

    #@133
    :goto_0
    aput-object v3, v6, v11

    #@135
    .line 1295
    const-string/jumbo v3, "PseudorangeUncertaintyInMeters"

    #@138
    aput-object v3, v6, v12

    #@13a
    .line 1296
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasPseudorangeUncertaintyInMeters()Z

    #@13d
    move-result v3

    #@13e
    if-eqz v3, :cond_2

    #@140
    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    #@142
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@145
    move-result-object v3

    #@146
    :goto_1
    aput-object v3, v6, v13

    #@148
    .line 1291
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@14b
    move-result-object v3

    #@14c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    .line 1299
    const-string/jumbo v5, "   %-29s = %-25s   %-40s = %s\n"

    #@152
    .line 1298
    const/4 v3, 0x4

    #@153
    new-array v6, v3, [Ljava/lang/Object;

    #@155
    .line 1300
    const-string/jumbo v3, "CodePhaseInChips"

    #@158
    aput-object v3, v6, v10

    #@15a
    .line 1301
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCodePhaseInChips()Z

    #@15d
    move-result v3

    #@15e
    if-eqz v3, :cond_3

    #@160
    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    #@162
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@165
    move-result-object v3

    #@166
    :goto_2
    aput-object v3, v6, v11

    #@168
    .line 1302
    const-string/jumbo v3, "CodePhaseUncertaintyInChips"

    #@16b
    aput-object v3, v6, v12

    #@16d
    .line 1303
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCodePhaseUncertaintyInChips()Z

    #@170
    move-result v3

    #@171
    if-eqz v3, :cond_4

    #@173
    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    #@175
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@178
    move-result-object v3

    #@179
    :goto_3
    aput-object v3, v6, v13

    #@17b
    .line 1298
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@17e
    move-result-object v3

    #@17f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@182
    .line 1306
    const-string/jumbo v5, "   %-29s = %s\n"

    #@185
    .line 1305
    new-array v6, v12, [Ljava/lang/Object;

    #@187
    .line 1307
    const-string/jumbo v3, "CarrierFrequencyInHz"

    #@18a
    aput-object v3, v6, v10

    #@18c
    .line 1308
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCarrierFrequencyInHz()Z

    #@18f
    move-result v3

    #@190
    if-eqz v3, :cond_5

    #@192
    iget v3, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    #@194
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@197
    move-result-object v3

    #@198
    :goto_4
    aput-object v3, v6, v11

    #@19a
    .line 1305
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@19d
    move-result-object v3

    #@19e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a1
    .line 1311
    const-string/jumbo v5, "   %-29s = %s\n"

    #@1a4
    .line 1310
    new-array v6, v12, [Ljava/lang/Object;

    #@1a6
    .line 1312
    const-string/jumbo v3, "CarrierCycles"

    #@1a9
    aput-object v3, v6, v10

    #@1ab
    .line 1313
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCarrierCycles()Z

    #@1ae
    move-result v3

    #@1af
    if-eqz v3, :cond_6

    #@1b1
    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    #@1b3
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1b6
    move-result-object v3

    #@1b7
    :goto_5
    aput-object v3, v6, v11

    #@1b9
    .line 1310
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1bc
    move-result-object v3

    #@1bd
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c0
    .line 1316
    const-string/jumbo v5, "   %-29s = %-25s   %-40s = %s\n"

    #@1c3
    .line 1315
    const/4 v3, 0x4

    #@1c4
    new-array v6, v3, [Ljava/lang/Object;

    #@1c6
    .line 1317
    const-string/jumbo v3, "CarrierPhase"

    #@1c9
    aput-object v3, v6, v10

    #@1cb
    .line 1318
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCarrierPhase()Z

    #@1ce
    move-result v3

    #@1cf
    if-eqz v3, :cond_7

    #@1d1
    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    #@1d3
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@1d6
    move-result-object v3

    #@1d7
    :goto_6
    aput-object v3, v6, v11

    #@1d9
    .line 1319
    const-string/jumbo v3, "CarrierPhaseUncertainty"

    #@1dc
    aput-object v3, v6, v12

    #@1de
    .line 1320
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCarrierPhaseUncertainty()Z

    #@1e1
    move-result v3

    #@1e2
    if-eqz v3, :cond_8

    #@1e4
    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    #@1e6
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@1e9
    move-result-object v3

    #@1ea
    :goto_7
    aput-object v3, v6, v13

    #@1ec
    .line 1315
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1ef
    move-result-object v3

    #@1f0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f3
    .line 1322
    const-string/jumbo v3, "   %-29s = %s\n"

    #@1f6
    new-array v5, v12, [Ljava/lang/Object;

    #@1f8
    const-string/jumbo v6, "LossOfLock"

    #@1fb
    aput-object v6, v5, v10

    #@1fd
    invoke-direct {p0}, Landroid/location/GpsMeasurement;->getLossOfLockString()Ljava/lang/String;

    #@200
    move-result-object v6

    #@201
    aput-object v6, v5, v11

    #@203
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@206
    move-result-object v3

    #@207
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20a
    .line 1325
    const-string/jumbo v5, "   %-29s = %s\n"

    #@20d
    .line 1324
    new-array v6, v12, [Ljava/lang/Object;

    #@20f
    .line 1326
    const-string/jumbo v3, "BitNumber"

    #@212
    aput-object v3, v6, v10

    #@214
    .line 1327
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasBitNumber()Z

    #@217
    move-result v3

    #@218
    if-eqz v3, :cond_9

    #@21a
    iget v3, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    #@21c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21f
    move-result-object v3

    #@220
    :goto_8
    aput-object v3, v6, v11

    #@222
    .line 1324
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@225
    move-result-object v3

    #@226
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@229
    .line 1330
    const-string/jumbo v5, "   %-29s = %s\n"

    #@22c
    .line 1329
    new-array v6, v12, [Ljava/lang/Object;

    #@22e
    .line 1331
    const-string/jumbo v3, "TimeFromLastBitInMs"

    #@231
    aput-object v3, v6, v10

    #@233
    .line 1332
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasTimeFromLastBitInMs()Z

    #@236
    move-result v3

    #@237
    if-eqz v3, :cond_a

    #@239
    iget-short v3, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    #@23b
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@23e
    move-result-object v3

    #@23f
    :goto_9
    aput-object v3, v6, v11

    #@241
    .line 1329
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@244
    move-result-object v3

    #@245
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@248
    .line 1335
    const-string/jumbo v5, "   %-29s = %-25s   %-40s = %s\n"

    #@24b
    .line 1334
    const/4 v3, 0x4

    #@24c
    new-array v6, v3, [Ljava/lang/Object;

    #@24e
    .line 1336
    const-string/jumbo v3, "DopplerShiftInHz"

    #@251
    aput-object v3, v6, v10

    #@253
    .line 1337
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasDopplerShiftInHz()Z

    #@256
    move-result v3

    #@257
    if-eqz v3, :cond_b

    #@259
    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    #@25b
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@25e
    move-result-object v3

    #@25f
    :goto_a
    aput-object v3, v6, v11

    #@261
    .line 1338
    const-string/jumbo v3, "DopplerShiftUncertaintyInHz"

    #@264
    aput-object v3, v6, v12

    #@266
    .line 1339
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasDopplerShiftUncertaintyInHz()Z

    #@269
    move-result v3

    #@26a
    if-eqz v3, :cond_c

    #@26c
    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    #@26e
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@271
    move-result-object v3

    #@272
    :goto_b
    aput-object v3, v6, v13

    #@274
    .line 1334
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@277
    move-result-object v3

    #@278
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27b
    .line 1341
    const-string/jumbo v3, "   %-29s = %s\n"

    #@27e
    new-array v5, v12, [Ljava/lang/Object;

    #@280
    const-string/jumbo v6, "MultipathIndicator"

    #@283
    aput-object v6, v5, v10

    #@285
    invoke-direct {p0}, Landroid/location/GpsMeasurement;->getMultipathIndicatorString()Ljava/lang/String;

    #@288
    move-result-object v6

    #@289
    aput-object v6, v5, v11

    #@28b
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@28e
    move-result-object v3

    #@28f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@292
    .line 1344
    const-string/jumbo v5, "   %-29s = %s\n"

    #@295
    .line 1343
    new-array v6, v12, [Ljava/lang/Object;

    #@297
    .line 1345
    const-string/jumbo v3, "SnrInDb"

    #@29a
    aput-object v3, v6, v10

    #@29c
    .line 1346
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasSnrInDb()Z

    #@29f
    move-result v3

    #@2a0
    if-eqz v3, :cond_d

    #@2a2
    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    #@2a4
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@2a7
    move-result-object v3

    #@2a8
    :goto_c
    aput-object v3, v6, v11

    #@2aa
    .line 1343
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2ad
    move-result-object v3

    #@2ae
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b1
    .line 1349
    const-string/jumbo v5, "   %-29s = %-25s   %-40s = %s\n"

    #@2b4
    .line 1348
    const/4 v3, 0x4

    #@2b5
    new-array v6, v3, [Ljava/lang/Object;

    #@2b7
    .line 1350
    const-string/jumbo v3, "ElevationInDeg"

    #@2ba
    aput-object v3, v6, v10

    #@2bc
    .line 1351
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasElevationInDeg()Z

    #@2bf
    move-result v3

    #@2c0
    if-eqz v3, :cond_e

    #@2c2
    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    #@2c4
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@2c7
    move-result-object v3

    #@2c8
    :goto_d
    aput-object v3, v6, v11

    #@2ca
    .line 1352
    const-string/jumbo v3, "ElevationUncertaintyInDeg"

    #@2cd
    aput-object v3, v6, v12

    #@2cf
    .line 1353
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasElevationUncertaintyInDeg()Z

    #@2d2
    move-result v3

    #@2d3
    if-eqz v3, :cond_f

    #@2d5
    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    #@2d7
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@2da
    move-result-object v3

    #@2db
    :goto_e
    aput-object v3, v6, v13

    #@2dd
    .line 1348
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2e0
    move-result-object v3

    #@2e1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e4
    .line 1356
    const-string/jumbo v5, "   %-29s = %-25s   %-40s = %s\n"

    #@2e7
    .line 1355
    const/4 v3, 0x4

    #@2e8
    new-array v6, v3, [Ljava/lang/Object;

    #@2ea
    .line 1357
    const-string/jumbo v3, "AzimuthInDeg"

    #@2ed
    aput-object v3, v6, v10

    #@2ef
    .line 1358
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasAzimuthInDeg()Z

    #@2f2
    move-result v3

    #@2f3
    if-eqz v3, :cond_10

    #@2f5
    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    #@2f7
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@2fa
    move-result-object v3

    #@2fb
    :goto_f
    aput-object v3, v6, v11

    #@2fd
    .line 1359
    const-string/jumbo v3, "AzimuthUncertaintyInDeg"

    #@300
    aput-object v3, v6, v12

    #@302
    .line 1360
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasAzimuthUncertaintyInDeg()Z

    #@305
    move-result v3

    #@306
    if-eqz v3, :cond_0

    #@308
    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    #@30a
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@30d
    move-result-object v4

    #@30e
    :cond_0
    aput-object v4, v6, v13

    #@310
    .line 1355
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@313
    move-result-object v3

    #@314
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@317
    .line 1362
    const-string/jumbo v3, "   %-29s = %s\n"

    #@31a
    new-array v4, v12, [Ljava/lang/Object;

    #@31c
    const-string/jumbo v5, "UsedInFix"

    #@31f
    aput-object v5, v4, v10

    #@321
    iget-boolean v5, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    #@323
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@326
    move-result-object v5

    #@327
    aput-object v5, v4, v11

    #@329
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@32c
    move-result-object v3

    #@32d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@330
    .line 1364
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@333
    move-result-object v3

    #@334
    return-object v3

    #@335
    :cond_1
    move-object v3, v4

    #@336
    .line 1294
    goto/16 :goto_0

    #@338
    :cond_2
    move-object v3, v4

    #@339
    .line 1296
    goto/16 :goto_1

    #@33b
    :cond_3
    move-object v3, v4

    #@33c
    .line 1301
    goto/16 :goto_2

    #@33e
    :cond_4
    move-object v3, v4

    #@33f
    .line 1303
    goto/16 :goto_3

    #@341
    :cond_5
    move-object v3, v4

    #@342
    .line 1308
    goto/16 :goto_4

    #@344
    :cond_6
    move-object v3, v4

    #@345
    .line 1313
    goto/16 :goto_5

    #@347
    :cond_7
    move-object v3, v4

    #@348
    .line 1318
    goto/16 :goto_6

    #@34a
    :cond_8
    move-object v3, v4

    #@34b
    .line 1320
    goto/16 :goto_7

    #@34d
    :cond_9
    move-object v3, v4

    #@34e
    .line 1327
    goto/16 :goto_8

    #@350
    :cond_a
    move-object v3, v4

    #@351
    .line 1332
    goto/16 :goto_9

    #@353
    :cond_b
    move-object v3, v4

    #@354
    .line 1337
    goto/16 :goto_a

    #@356
    :cond_c
    move-object v3, v4

    #@357
    .line 1339
    goto/16 :goto_b

    #@359
    :cond_d
    move-object v3, v4

    #@35a
    .line 1346
    goto/16 :goto_c

    #@35c
    :cond_e
    move-object v3, v4

    #@35d
    .line 1351
    goto/16 :goto_d

    #@35f
    :cond_f
    move-object v3, v4

    #@360
    .line 1353
    goto/16 :goto_e

    #@362
    :cond_10
    move-object v3, v4

    #@363
    .line 1358
    goto :goto_f
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1208
    iget v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 1209
    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mPrn:B

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@a
    .line 1210
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@f
    .line 1211
    iget-short v0, p0, Landroid/location/GpsMeasurement;->mState:S

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1212
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    #@16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@19
    .line 1213
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    #@1b
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@1e
    .line 1214
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    #@20
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@23
    .line 1215
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    #@25
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@28
    .line 1216
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    #@2a
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@2d
    .line 1217
    iget-short v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 1218
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    #@34
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@37
    .line 1219
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    #@39
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@3c
    .line 1220
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    #@3e
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@41
    .line 1221
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    #@43
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@46
    .line 1222
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    #@48
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@4b
    .line 1223
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    #@4d
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@50
    .line 1224
    iget v0, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    #@52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@55
    .line 1225
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    #@57
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5a
    .line 1226
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    #@5c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@5f
    .line 1227
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    #@61
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@64
    .line 1228
    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    #@66
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@69
    .line 1229
    iget v0, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    #@6b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6e
    .line 1230
    iget-short v0, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    #@70
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@73
    .line 1231
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    #@75
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@78
    .line 1232
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    #@7a
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@7d
    .line 1233
    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    #@7f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@82
    .line 1234
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    #@84
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@87
    .line 1235
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    #@89
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@8c
    .line 1236
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    #@8e
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@91
    .line 1237
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    #@93
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@96
    .line 1238
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    #@98
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@9b
    .line 1239
    iget-boolean v0, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    #@9d
    if-eqz v0, :cond_0

    #@9f
    const/4 v0, 0x1

    #@a0
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a3
    .line 1207
    return-void

    #@a4
    .line 1239
    :cond_0
    const/4 v0, 0x0

    #@a5
    goto :goto_0
.end method
