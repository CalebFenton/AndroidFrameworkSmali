.class public final Landroid/location/GnssMeasurement;
.super Ljava/lang/Object;
.source "GnssMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssMeasurement$AdrState;,
        Landroid/location/GnssMeasurement$State;,
        Landroid/location/GnssMeasurement$MultipathIndicator;
    }
.end annotation


# static fields
.field public static final blacklist ADR_STATE_ALL:I = 0x1f

.field public static final whitelist ADR_STATE_CYCLE_SLIP:I = 0x4

.field public static final whitelist ADR_STATE_HALF_CYCLE_REPORTED:I = 0x10

.field public static final whitelist ADR_STATE_HALF_CYCLE_RESOLVED:I = 0x8

.field public static final whitelist ADR_STATE_RESET:I = 0x2

.field public static final whitelist ADR_STATE_UNKNOWN:I = 0x0

.field public static final whitelist ADR_STATE_VALID:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist HAS_BASEBAND_CN0:I = 0x8000

.field private static final blacklist HAS_CODE_TYPE:I = 0x4000

.field private static final blacklist HAS_CORRELATION_VECTOR:I = 0x200000

.field private static final greylist-max-o HAS_NO_FLAGS:I = 0x0

.field private static final blacklist HAS_SATELLITE_PVT:I = 0x100000

.field public static final whitelist MULTIPATH_INDICATOR_DETECTED:I = 0x1

.field public static final whitelist MULTIPATH_INDICATOR_NOT_DETECTED:I = 0x2

.field public static final whitelist MULTIPATH_INDICATOR_UNKNOWN:I = 0x0

.field public static final whitelist STATE_2ND_CODE_LOCK:I = 0x10000

.field private static final greylist-max-o STATE_ALL:I = 0x3fff

.field public static final whitelist STATE_BDS_D2_BIT_SYNC:I = 0x100

.field public static final whitelist STATE_BDS_D2_SUBFRAME_SYNC:I = 0x200

.field public static final whitelist STATE_BIT_SYNC:I = 0x2

.field public static final whitelist STATE_CODE_LOCK:I = 0x1

.field public static final whitelist STATE_GAL_E1BC_CODE_LOCK:I = 0x400

.field public static final whitelist STATE_GAL_E1B_PAGE_SYNC:I = 0x1000

.field public static final whitelist STATE_GAL_E1C_2ND_CODE_LOCK:I = 0x800

.field public static final whitelist STATE_GLO_STRING_SYNC:I = 0x40

.field public static final whitelist STATE_GLO_TOD_DECODED:I = 0x80

.field public static final whitelist STATE_GLO_TOD_KNOWN:I = 0x8000

.field public static final whitelist STATE_MSEC_AMBIGUOUS:I = 0x10

.field public static final whitelist STATE_SBAS_SYNC:I = 0x2000

.field public static final whitelist STATE_SUBFRAME_SYNC:I = 0x4

.field public static final whitelist STATE_SYMBOL_SYNC:I = 0x20

.field public static final whitelist STATE_TOW_DECODED:I = 0x8

.field public static final whitelist STATE_TOW_KNOWN:I = 0x4000

.field public static final whitelist STATE_UNKNOWN:I


# instance fields
.field private greylist-max-o mAccumulatedDeltaRangeMeters:D

.field private greylist-max-o mAccumulatedDeltaRangeState:I

.field private greylist-max-o mAccumulatedDeltaRangeUncertaintyMeters:D

.field private greylist-max-o mAutomaticGainControlLevelInDb:D

.field private blacklist mBasebandCn0DbHz:D

.field private greylist-max-o mCarrierCycles:J

.field private greylist-max-o mCarrierFrequencyHz:F

.field private greylist-max-o mCarrierPhase:D

.field private greylist-max-o mCarrierPhaseUncertainty:D

.field private greylist-max-o mCn0DbHz:D

.field private blacklist mCodeType:Ljava/lang/String;

.field private greylist-max-o mConstellationType:I

.field private greylist-max-o mFlags:I

.field private blacklist mFullInterSignalBiasNanos:D

.field private blacklist mFullInterSignalBiasUncertaintyNanos:D

.field private greylist-max-o mMultipathIndicator:I

.field private greylist-max-o mPseudorangeRateMetersPerSecond:D

.field private greylist-max-o mPseudorangeRateUncertaintyMetersPerSecond:D

.field private blacklist mReadOnlyCorrelationVectors:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroid/location/CorrelationVector;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mReceivedSvTimeNanos:J

.field private greylist-max-o mReceivedSvTimeUncertaintyNanos:J

.field private blacklist mSatelliteInterSignalBiasNanos:D

.field private blacklist mSatelliteInterSignalBiasUncertaintyNanos:D

.field private blacklist mSatellitePvt:Landroid/location/SatellitePvt;

.field private greylist-max-o mSnrInDb:D

.field private greylist-max-o mState:I

.field private greylist-max-o mSvid:I

.field private greylist-max-o mTimeOffsetNanos:D


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmAccumulatedDeltaRangeMeters(Landroid/location/GnssMeasurement;D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAccumulatedDeltaRangeState(Landroid/location/GnssMeasurement;I)V
    .registers 2

    iput p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAccumulatedDeltaRangeUncertaintyMeters(Landroid/location/GnssMeasurement;D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAutomaticGainControlLevelInDb(Landroid/location/GnssMeasurement;D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBasebandCn0DbHz(Landroid/location/GnssMeasurement;D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mBasebandCn0DbHz:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCarrierCycles(Landroid/location/GnssMeasurement;J)V
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCarrierFrequencyHz(Landroid/location/GnssMeasurement;F)V
    .registers 2

    iput p1, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCarrierPhase(Landroid/location/GnssMeasurement;D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCarrierPhaseUncertainty(Landroid/location/GnssMeasurement;D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCn0DbHz(Landroid/location/GnssMeasurement;D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCodeType(Landroid/location/GnssMeasurement;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/location/GnssMeasurement;->mCodeType:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConstellationType(Landroid/location/GnssMeasurement;I)V
    .registers 2

    iput p1, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFlags(Landroid/location/GnssMeasurement;I)V
    .registers 2

    iput p1, p0, Landroid/location/GnssMeasurement;->mFlags:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFullInterSignalBiasNanos(Landroid/location/GnssMeasurement;D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mFullInterSignalBiasNanos:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFullInterSignalBiasUncertaintyNanos(Landroid/location/GnssMeasurement;D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mFullInterSignalBiasUncertaintyNanos:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMultipathIndicator(Landroid/location/GnssMeasurement;I)V
    .registers 2

    iput p1, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPseudorangeRateMetersPerSecond(Landroid/location/GnssMeasurement;D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPseudorangeRateUncertaintyMetersPerSecond(Landroid/location/GnssMeasurement;D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReadOnlyCorrelationVectors(Landroid/location/GnssMeasurement;Ljava/util/Collection;)V
    .registers 2

    iput-object p1, p0, Landroid/location/GnssMeasurement;->mReadOnlyCorrelationVectors:Ljava/util/Collection;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReceivedSvTimeNanos(Landroid/location/GnssMeasurement;J)V
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReceivedSvTimeUncertaintyNanos(Landroid/location/GnssMeasurement;J)V
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSatelliteInterSignalBiasNanos(Landroid/location/GnssMeasurement;D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mSatelliteInterSignalBiasNanos:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSatelliteInterSignalBiasUncertaintyNanos(Landroid/location/GnssMeasurement;D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mSatelliteInterSignalBiasUncertaintyNanos:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSatellitePvt(Landroid/location/GnssMeasurement;Landroid/location/SatellitePvt;)V
    .registers 2

    iput-object p1, p0, Landroid/location/GnssMeasurement;->mSatellitePvt:Landroid/location/SatellitePvt;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSnrInDb(Landroid/location/GnssMeasurement;D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmState(Landroid/location/GnssMeasurement;I)V
    .registers 2

    iput p1, p0, Landroid/location/GnssMeasurement;->mState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSvid(Landroid/location/GnssMeasurement;I)V
    .registers 2

    iput p1, p0, Landroid/location/GnssMeasurement;->mSvid:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTimeOffsetNanos(Landroid/location/GnssMeasurement;D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1935
    new-instance v0, Landroid/location/GnssMeasurement$1;

    invoke-direct {v0}, Landroid/location/GnssMeasurement$1;-><init>()V

    sput-object v0, Landroid/location/GnssMeasurement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    invoke-direct {p0}, Landroid/location/GnssMeasurement;->initialize()V

    .line 268
    return-void
.end method

.method private greylist-max-o getAccumulatedDeltaRangeStateString()Ljava/lang/String;
    .registers 5

    .line 1090
    iget v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    if-nez v0, :cond_7

    .line 1091
    const-string v0, "Unknown"

    return-object v0

    .line 1093
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1094
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_17

    .line 1095
    const-string v1, "Valid|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    :cond_17
    iget v1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_22

    .line 1098
    const-string v1, "Reset|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    :cond_22
    iget v1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2d

    .line 1101
    const-string v1, "CycleSlip|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    :cond_2d
    iget v1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_39

    .line 1105
    const-string v1, "HalfCycleResolved|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    :cond_39
    iget v1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_45

    .line 1109
    const-string v1, "HalfCycleReported|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    :cond_45
    iget v1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    and-int/lit8 v1, v1, -0x20

    .line 1112
    .local v1, "remainingStates":I
    if-lez v1, :cond_5c

    .line 1113
    const-string v3, "Other("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    const-string v3, ")|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    :cond_5c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o getMultipathIndicatorString()Ljava/lang/String;
    .registers 3

    .line 1415
    iget v0, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    packed-switch v0, :pswitch_data_2a

    .line 1423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Invalid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1421
    :pswitch_21
    const-string v0, "NotDetected"

    return-object v0

    .line 1419
    :pswitch_24
    const-string v0, "Detected"

    return-object v0

    .line 1417
    :pswitch_27
    const-string v0, "Unknown"

    return-object v0

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_27
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method

.method private greylist-max-o getStateString()Ljava/lang/String;
    .registers 4

    .line 411
    iget v0, p0, Landroid/location/GnssMeasurement;->mState:I

    if-nez v0, :cond_7

    .line 412
    const-string v0, "Unknown"

    return-object v0

    .line 415
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_17

    .line 417
    const-string v1, "CodeLock|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    :cond_17
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_22

    .line 420
    const-string v1, "BitSync|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    :cond_22
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2d

    .line 423
    const-string v1, "SubframeSync|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    :cond_2d
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_38

    .line 426
    const-string v1, "TowDecoded|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    :cond_38
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_43

    .line 429
    const-string v1, "TowKnown|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    :cond_43
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4e

    .line 432
    const-string v1, "MsecAmbiguous|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    :cond_4e
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_59

    .line 435
    const-string v1, "SymbolSync|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    :cond_59
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_64

    .line 438
    const-string v1, "GloStringSync|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    :cond_64
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_6f

    .line 441
    const-string v1, "GloTodDecoded|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    :cond_6f
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_7c

    .line 444
    const-string v1, "GloTodKnown|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :cond_7c
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_87

    .line 447
    const-string v1, "BdsD2BitSync|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :cond_87
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_92

    .line 450
    const-string v1, "BdsD2SubframeSync|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    :cond_92
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_9d

    .line 453
    const-string v1, "GalE1bcCodeLock|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    :cond_9d
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_a8

    .line 456
    const-string v1, "E1c2ndCodeLock|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    :cond_a8
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_b3

    .line 459
    const-string v1, "GalE1bPageSync|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    :cond_b3
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_be

    .line 462
    const-string v1, "SbasSync|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    :cond_be
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_ca

    .line 465
    const-string v1, "2ndCodeLock|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    :cond_ca
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v1, v1, -0x4000

    .line 469
    .local v1, "remainingStates":I
    if-lez v1, :cond_e1

    .line 470
    const-string v2, "Other("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    const-string v2, ")|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    :cond_e1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 475
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o initialize()V
    .registers 4

    .line 2144
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    .line 2145
    invoke-virtual {p0, v0}, Landroid/location/GnssMeasurement;->setSvid(I)V

    .line 2146
    const-wide/high16 v1, -0x3c20000000000000L    # -9.223372036854776E18

    invoke-virtual {p0, v1, v2}, Landroid/location/GnssMeasurement;->setTimeOffsetNanos(D)V

    .line 2147
    invoke-virtual {p0, v0}, Landroid/location/GnssMeasurement;->setState(I)V

    .line 2148
    const-wide/high16 v1, -0x8000000000000000L

    invoke-virtual {p0, v1, v2}, Landroid/location/GnssMeasurement;->setReceivedSvTimeNanos(J)V

    .line 2149
    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {p0, v1, v2}, Landroid/location/GnssMeasurement;->setReceivedSvTimeUncertaintyNanos(J)V

    .line 2150
    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/location/GnssMeasurement;->setCn0DbHz(D)V

    .line 2151
    invoke-virtual {p0, v1, v2}, Landroid/location/GnssMeasurement;->setPseudorangeRateMetersPerSecond(D)V

    .line 2152
    invoke-virtual {p0, v1, v2}, Landroid/location/GnssMeasurement;->setPseudorangeRateUncertaintyMetersPerSecond(D)V

    .line 2153
    invoke-virtual {p0, v0}, Landroid/location/GnssMeasurement;->setAccumulatedDeltaRangeState(I)V

    .line 2154
    invoke-virtual {p0, v1, v2}, Landroid/location/GnssMeasurement;->setAccumulatedDeltaRangeMeters(D)V

    .line 2155
    invoke-virtual {p0, v1, v2}, Landroid/location/GnssMeasurement;->setAccumulatedDeltaRangeUncertaintyMeters(D)V

    .line 2156
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCarrierFrequencyHz()V

    .line 2157
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCarrierCycles()V

    .line 2158
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCarrierPhase()V

    .line 2159
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCarrierPhaseUncertainty()V

    .line 2160
    invoke-virtual {p0, v0}, Landroid/location/GnssMeasurement;->setMultipathIndicator(I)V

    .line 2161
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetSnrInDb()V

    .line 2162
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetAutomaticGainControlLevel()V

    .line 2163
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCodeType()V

    .line 2164
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetBasebandCn0DbHz()V

    .line 2165
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetFullInterSignalBiasNanos()V

    .line 2166
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetFullInterSignalBiasUncertaintyNanos()V

    .line 2167
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetSatelliteInterSignalBiasNanos()V

    .line 2168
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetSatelliteInterSignalBiasUncertaintyNanos()V

    .line 2169
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetSatellitePvt()V

    .line 2170
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCorrelationVectors()V

    .line 2171
    return-void
.end method

.method private greylist-max-o isFlagSet(I)Z
    .registers 3
    .param p1, "flag"    # I

    .line 2182
    iget v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private greylist-max-o resetFlag(I)V
    .registers 4
    .param p1, "flag"    # I

    .line 2178
    iget v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    .line 2179
    return-void
.end method

.method private greylist-max-o setFlag(I)V
    .registers 3
    .param p1, "flag"    # I

    .line 2174
    iget v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    .line 2175
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 2030
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAccumulatedDeltaRangeMeters()D
    .registers 3

    .line 1149
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    return-wide v0
.end method

.method public whitelist getAccumulatedDeltaRangeState()I
    .registers 2

    .line 1072
    iget v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    return v0
.end method

.method public whitelist getAccumulatedDeltaRangeUncertaintyMeters()D
    .registers 3

    .line 1169
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    return-wide v0
.end method

.method public whitelist getAutomaticGainControlLevelDb()D
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1497
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    return-wide v0
.end method

.method public whitelist getBasebandCn0DbHz()D
    .registers 3

    .line 942
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mBasebandCn0DbHz:D

    return-wide v0
.end method

.method public whitelist getCarrierCycles()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1247
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    return-wide v0
.end method

.method public whitelist getCarrierFrequencyHz()F
    .registers 2

    .line 1203
    iget v0, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    return v0
.end method

.method public whitelist getCarrierPhase()D
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1306
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    return-wide v0
.end method

.method public whitelist getCarrierPhaseUncertainty()D
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1360
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    return-wide v0
.end method

.method public whitelist getCn0DbHz()D
    .registers 3

    .line 911
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    return-wide v0
.end method

.method public whitelist getCodeType()Ljava/lang/String;
    .registers 2

    .line 1592
    iget-object v0, p0, Landroid/location/GnssMeasurement;->mCodeType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getConstellationType()I
    .registers 2

    .line 346
    iget v0, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    return v0
.end method

.method public whitelist getCorrelationVectors()Ljava/util/Collection;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/location/CorrelationVector;",
            ">;"
        }
    .end annotation

    .line 1904
    iget-object v0, p0, Landroid/location/GnssMeasurement;->mReadOnlyCorrelationVectors:Ljava/util/Collection;

    return-object v0
.end method

.method public whitelist getFullInterSignalBiasNanos()D
    .registers 3

    .line 1661
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mFullInterSignalBiasNanos:D

    return-wide v0
.end method

.method public whitelist getFullInterSignalBiasUncertaintyNanos()D
    .registers 3

    .line 1702
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mFullInterSignalBiasUncertaintyNanos:D

    return-wide v0
.end method

.method public whitelist getMultipathIndicator()I
    .registers 2

    .line 1397
    iget v0, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    return v0
.end method

.method public whitelist getPseudorangeRateMetersPerSecond()D
    .registers 3

    .line 983
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    return-wide v0
.end method

.method public whitelist getPseudorangeRateUncertaintyMetersPerSecond()D
    .registers 3

    .line 1001
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    return-wide v0
.end method

.method public whitelist getReceivedSvTimeNanos()J
    .registers 3

    .line 873
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    return-wide v0
.end method

.method public whitelist getReceivedSvTimeUncertaintyNanos()J
    .registers 3

    .line 889
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    return-wide v0
.end method

.method public whitelist getSatelliteInterSignalBiasNanos()D
    .registers 3

    .line 1762
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mSatelliteInterSignalBiasNanos:D

    return-wide v0
.end method

.method public whitelist getSatelliteInterSignalBiasUncertaintyNanos()D
    .registers 3

    .line 1803
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mSatelliteInterSignalBiasUncertaintyNanos:D

    return-wide v0
.end method

.method public whitelist getSatellitePvt()Landroid/location/SatellitePvt;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1851
    iget-object v0, p0, Landroid/location/GnssMeasurement;->mSatellitePvt:Landroid/location/SatellitePvt;

    return-object v0
.end method

.method public whitelist getSnrInDb()D
    .registers 3

    .line 1440
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    return-wide v0
.end method

.method public whitelist getState()I
    .registers 2

    .line 393
    iget v0, p0, Landroid/location/GnssMeasurement;->mState:I

    return v0
.end method

.method public whitelist getSvid()I
    .registers 2

    .line 326
    iget v0, p0, Landroid/location/GnssMeasurement;->mSvid:I

    return v0
.end method

.method public whitelist getTimeOffsetNanos()D
    .registers 3

    .line 372
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    return-wide v0
.end method

.method public whitelist hasAutomaticGainControlLevelDb()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1470
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasBasebandCn0DbHz()Z
    .registers 2

    .line 927
    const v0, 0x8000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasCarrierCycles()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1233
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasCarrierFrequencyHz()Z
    .registers 2

    .line 1189
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasCarrierPhase()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1286
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasCarrierPhaseUncertainty()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1346
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasCodeType()Z
    .registers 2

    .line 1526
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasCorrelationVectors()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1887
    const/high16 v0, 0x200000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasFullInterSignalBiasNanos()Z
    .registers 2

    .line 1622
    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasFullInterSignalBiasUncertaintyNanos()Z
    .registers 2

    .line 1690
    const/high16 v0, 0x20000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasSatelliteInterSignalBiasNanos()Z
    .registers 2

    .line 1733
    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasSatelliteInterSignalBiasUncertaintyNanos()Z
    .registers 2

    .line 1791
    const/high16 v0, 0x80000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasSatellitePvt()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1837
    const/high16 v0, 0x100000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasSnrInDb()Z
    .registers 2

    .line 1431
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public blacklist reset()V
    .registers 1

    .line 316
    invoke-direct {p0}, Landroid/location/GnssMeasurement;->initialize()V

    .line 317
    return-void
.end method

.method public blacklist resetAutomaticGainControlLevel()V
    .registers 2

    .line 1518
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 1519
    return-void
.end method

.method public blacklist resetBasebandCn0DbHz()V
    .registers 2

    .line 963
    const v0, 0x8000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 964
    return-void
.end method

.method public blacklist resetCarrierCycles()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1275
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 1276
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    .line 1277
    return-void
.end method

.method public blacklist resetCarrierFrequencyHz()V
    .registers 2

    .line 1222
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 1223
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    .line 1224
    return-void
.end method

.method public blacklist resetCarrierPhase()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1335
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 1336
    return-void
.end method

.method public blacklist resetCarrierPhaseUncertainty()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1389
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 1390
    return-void
.end method

.method public blacklist resetCodeType()V
    .registers 2

    .line 1613
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 1614
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Landroid/location/GnssMeasurement;->mCodeType:Ljava/lang/String;

    .line 1615
    return-void
.end method

.method public blacklist resetCorrelationVectors()V
    .registers 2

    .line 1931
    const/high16 v0, 0x200000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 1932
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/GnssMeasurement;->mReadOnlyCorrelationVectors:Ljava/util/Collection;

    .line 1933
    return-void
.end method

.method public blacklist resetFullInterSignalBiasNanos()V
    .registers 2

    .line 1682
    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 1683
    return-void
.end method

.method public blacklist resetFullInterSignalBiasUncertaintyNanos()V
    .registers 2

    .line 1725
    const/high16 v0, 0x20000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 1726
    return-void
.end method

.method public blacklist resetSatelliteInterSignalBiasNanos()V
    .registers 2

    .line 1783
    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 1784
    return-void
.end method

.method public blacklist resetSatelliteInterSignalBiasUncertaintyNanos()V
    .registers 2

    .line 1826
    const/high16 v0, 0x80000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 1827
    return-void
.end method

.method public blacklist resetSatellitePvt()V
    .registers 2

    .line 1876
    const/high16 v0, 0x100000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 1877
    return-void
.end method

.method public blacklist resetSnrInDb()V
    .registers 2

    .line 1459
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 1460
    return-void
.end method

.method public blacklist set(Landroid/location/GnssMeasurement;)V
    .registers 4
    .param p1, "measurement"    # Landroid/location/GnssMeasurement;

    .line 276
    iget v0, p1, Landroid/location/GnssMeasurement;->mFlags:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    .line 277
    iget v0, p1, Landroid/location/GnssMeasurement;->mSvid:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mSvid:I

    .line 278
    iget v0, p1, Landroid/location/GnssMeasurement;->mConstellationType:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    .line 279
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    .line 280
    iget v0, p1, Landroid/location/GnssMeasurement;->mState:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mState:I

    .line 281
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    .line 282
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    .line 283
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    .line 284
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mBasebandCn0DbHz:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mBasebandCn0DbHz:D

    .line 285
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    .line 286
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    .line 288
    iget v0, p1, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    .line 289
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    .line 290
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    .line 292
    iget v0, p1, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    iput v0, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    .line 293
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    .line 294
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    .line 295
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    .line 296
    iget v0, p1, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    .line 297
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mSnrInDb:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    .line 298
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    .line 299
    iget-object v0, p1, Landroid/location/GnssMeasurement;->mCodeType:Ljava/lang/String;

    iput-object v0, p0, Landroid/location/GnssMeasurement;->mCodeType:Ljava/lang/String;

    .line 300
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mFullInterSignalBiasNanos:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mFullInterSignalBiasNanos:D

    .line 301
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mFullInterSignalBiasUncertaintyNanos:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mFullInterSignalBiasUncertaintyNanos:D

    .line 303
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mSatelliteInterSignalBiasNanos:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mSatelliteInterSignalBiasNanos:D

    .line 304
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mSatelliteInterSignalBiasUncertaintyNanos:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mSatelliteInterSignalBiasUncertaintyNanos:D

    .line 306
    iget-object v0, p1, Landroid/location/GnssMeasurement;->mSatellitePvt:Landroid/location/SatellitePvt;

    iput-object v0, p0, Landroid/location/GnssMeasurement;->mSatellitePvt:Landroid/location/SatellitePvt;

    .line 307
    iget-object v0, p1, Landroid/location/GnssMeasurement;->mReadOnlyCorrelationVectors:Ljava/util/Collection;

    iput-object v0, p0, Landroid/location/GnssMeasurement;->mReadOnlyCorrelationVectors:Ljava/util/Collection;

    .line 308
    return-void
.end method

.method public blacklist setAccumulatedDeltaRangeMeters(D)V
    .registers 3
    .param p1, "value"    # D

    .line 1158
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    .line 1159
    return-void
.end method

.method public blacklist setAccumulatedDeltaRangeState(I)V
    .registers 2
    .param p1, "value"    # I

    .line 1081
    iput p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    .line 1082
    return-void
.end method

.method public blacklist setAccumulatedDeltaRangeUncertaintyMeters(D)V
    .registers 3
    .param p1, "value"    # D

    .line 1181
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    .line 1182
    return-void
.end method

.method public blacklist setAutomaticGainControlLevelInDb(D)V
    .registers 4
    .param p1, "agcLevelDb"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1508
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 1509
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    .line 1510
    return-void
.end method

.method public blacklist setBasebandCn0DbHz(D)V
    .registers 4
    .param p1, "value"    # D

    .line 952
    const v0, 0x8000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 953
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mBasebandCn0DbHz:D

    .line 954
    return-void
.end method

.method public blacklist setCarrierCycles(J)V
    .registers 4
    .param p1, "value"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1261
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 1262
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    .line 1263
    return-void
.end method

.method public blacklist setCarrierFrequencyHz(F)V
    .registers 3
    .param p1, "carrierFrequencyHz"    # F

    .line 1212
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 1213
    iput p1, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    .line 1214
    return-void
.end method

.method public blacklist setCarrierPhase(D)V
    .registers 4
    .param p1, "value"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1320
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 1321
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    .line 1322
    return-void
.end method

.method public blacklist setCarrierPhaseUncertainty(D)V
    .registers 4
    .param p1, "value"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1374
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 1375
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    .line 1376
    return-void
.end method

.method public blacklist setCn0DbHz(D)V
    .registers 3
    .param p1, "value"    # D

    .line 920
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    .line 921
    return-void
.end method

.method public blacklist setCodeType(Ljava/lang/String;)V
    .registers 3
    .param p1, "codeType"    # Ljava/lang/String;

    .line 1602
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 1603
    iput-object p1, p0, Landroid/location/GnssMeasurement;->mCodeType:Ljava/lang/String;

    .line 1604
    return-void
.end method

.method public blacklist setConstellationType(I)V
    .registers 2
    .param p1, "value"    # I

    .line 355
    iput p1, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    .line 356
    return-void
.end method

.method public blacklist setCorrelationVectors(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/location/CorrelationVector;",
            ">;)V"
        }
    .end annotation

    .line 1916
    .local p1, "correlationVectors":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/location/CorrelationVector;>;"
    if-eqz p1, :cond_15

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_15

    .line 1919
    :cond_9
    const/high16 v0, 0x200000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 1920
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GnssMeasurement;->mReadOnlyCorrelationVectors:Ljava/util/Collection;

    goto :goto_18

    .line 1917
    :cond_15
    :goto_15
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCorrelationVectors()V

    .line 1922
    :goto_18
    return-void
.end method

.method public blacklist setFullInterSignalBiasNanos(D)V
    .registers 4
    .param p1, "fullInterSignalBiasNanos"    # D

    .line 1671
    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 1672
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mFullInterSignalBiasNanos:D

    .line 1673
    return-void
.end method

.method public blacklist setFullInterSignalBiasUncertaintyNanos(D)V
    .registers 4
    .param p1, "fullInterSignalBiasUncertaintyNanos"    # D

    .line 1713
    const/high16 v0, 0x20000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 1714
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mFullInterSignalBiasUncertaintyNanos:D

    .line 1715
    return-void
.end method

.method public blacklist setMultipathIndicator(I)V
    .registers 2
    .param p1, "value"    # I

    .line 1406
    iput p1, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    .line 1407
    return-void
.end method

.method public blacklist setPseudorangeRateMetersPerSecond(D)V
    .registers 3
    .param p1, "value"    # D

    .line 992
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    .line 993
    return-void
.end method

.method public blacklist setPseudorangeRateUncertaintyMetersPerSecond(D)V
    .registers 3
    .param p1, "value"    # D

    .line 1010
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    .line 1011
    return-void
.end method

.method public blacklist setReceivedSvTimeNanos(J)V
    .registers 3
    .param p1, "value"    # J

    .line 882
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    .line 883
    return-void
.end method

.method public blacklist setReceivedSvTimeUncertaintyNanos(J)V
    .registers 3
    .param p1, "value"    # J

    .line 898
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    .line 899
    return-void
.end method

.method public blacklist setSatelliteInterSignalBiasNanos(D)V
    .registers 4
    .param p1, "satelliteInterSignalBiasNanos"    # D

    .line 1772
    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 1773
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mSatelliteInterSignalBiasNanos:D

    .line 1774
    return-void
.end method

.method public blacklist setSatelliteInterSignalBiasUncertaintyNanos(D)V
    .registers 4
    .param p1, "satelliteInterSignalBiasUncertaintyNanos"    # D

    .line 1814
    const/high16 v0, 0x80000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 1815
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mSatelliteInterSignalBiasUncertaintyNanos:D

    .line 1816
    return-void
.end method

.method public blacklist setSatellitePvt(Landroid/location/SatellitePvt;)V
    .registers 3
    .param p1, "satellitePvt"    # Landroid/location/SatellitePvt;

    .line 1861
    if-nez p1, :cond_6

    .line 1862
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetSatellitePvt()V

    goto :goto_d

    .line 1864
    :cond_6
    const/high16 v0, 0x100000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 1865
    iput-object p1, p0, Landroid/location/GnssMeasurement;->mSatellitePvt:Landroid/location/SatellitePvt;

    .line 1867
    :goto_d
    return-void
.end method

.method public blacklist setSnrInDb(D)V
    .registers 4
    .param p1, "snrInDb"    # D

    .line 1449
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 1450
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    .line 1451
    return-void
.end method

.method public blacklist setState(I)V
    .registers 2
    .param p1, "value"    # I

    .line 402
    iput p1, p0, Landroid/location/GnssMeasurement;->mState:I

    .line 403
    return-void
.end method

.method public blacklist setSvid(I)V
    .registers 2
    .param p1, "value"    # I

    .line 335
    iput p1, p0, Landroid/location/GnssMeasurement;->mSvid:I

    .line 336
    return-void
.end method

.method public blacklist setTimeOffsetNanos(D)V
    .registers 3
    .param p1, "value"    # D

    .line 381
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    .line 382
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 11

    .line 2035
    const-string v0, "   %-29s = %s\n"

    .line 2036
    .local v0, "format":Ljava/lang/String;
    const-string v1, "   %-29s = %-25s   %-40s = %s\n"

    .line 2037
    .local v1, "formatWithUncertainty":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GnssMeasurement:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2039
    .local v2, "builder":Ljava/lang/StringBuilder;
    iget v3, p0, Landroid/location/GnssMeasurement;->mSvid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Svid"

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "   %-29s = %s\n"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2040
    iget v3, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "ConstellationType"

    filled-new-array {v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2041
    iget-wide v5, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v5, "TimeOffsetNanos"

    filled-new-array {v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2043
    const-string v3, "State"

    invoke-direct {p0}, Landroid/location/GnssMeasurement;->getStateString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2045
    iget-wide v5, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    .line 2048
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v5, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    .line 2050
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "ReceivedSvTimeNanos"

    const-string v7, "ReceivedSvTimeUncertaintyNanos"

    filled-new-array {v6, v3, v7, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 2045
    const-string v5, "   %-29s = %-25s   %-40s = %s\n"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2052
    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v6, "Cn0DbHz"

    filled-new-array {v6, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2054
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasBasebandCn0DbHz()Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 2055
    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mBasebandCn0DbHz:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v6, "BasebandCn0DbHz"

    filled-new-array {v6, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2058
    :cond_a0
    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    .line 2061
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    .line 2063
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const-string v7, "PseudorangeRateMetersPerSecond"

    const-string v8, "PseudorangeRateUncertaintyMetersPerSecond"

    filled-new-array {v7, v3, v8, v6}, [Ljava/lang/Object;

    move-result-object v3

    .line 2058
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2065
    nop

    .line 2068
    invoke-direct {p0}, Landroid/location/GnssMeasurement;->getAccumulatedDeltaRangeStateString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "AccumulatedDeltaRangeState"

    filled-new-array {v6, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 2065
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2070
    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    .line 2073
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    .line 2075
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const-string v7, "AccumulatedDeltaRangeMeters"

    const-string v8, "AccumulatedDeltaRangeUncertaintyMeters"

    filled-new-array {v7, v3, v8, v6}, [Ljava/lang/Object;

    move-result-object v3

    .line 2070
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2077
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierFrequencyHz()Z

    move-result v3

    if-eqz v3, :cond_101

    .line 2078
    iget v3, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v6, "CarrierFrequencyHz"

    filled-new-array {v6, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2081
    :cond_101
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierCycles()Z

    move-result v3

    if-eqz v3, :cond_11a

    .line 2082
    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v6, "CarrierCycles"

    filled-new-array {v6, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2085
    :cond_11a
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierPhase()Z

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_127

    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierPhaseUncertainty()Z

    move-result v3

    if-eqz v3, :cond_153

    .line 2086
    :cond_127
    nop

    .line 2089
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierPhase()Z

    move-result v3

    if-eqz v3, :cond_135

    iget-wide v7, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_136

    :cond_135
    move-object v3, v6

    .line 2091
    :goto_136
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierPhaseUncertainty()Z

    move-result v7

    if-eqz v7, :cond_143

    iget-wide v7, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    goto :goto_144

    :cond_143
    move-object v7, v6

    :goto_144
    const-string v8, "CarrierPhase"

    const-string v9, "CarrierPhaseUncertainty"

    filled-new-array {v8, v3, v9, v7}, [Ljava/lang/Object;

    move-result-object v3

    .line 2086
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2094
    :cond_153
    const-string v3, "MultipathIndicator"

    invoke-direct {p0}, Landroid/location/GnssMeasurement;->getMultipathIndicatorString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v3, v7}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2096
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasSnrInDb()Z

    move-result v3

    if-eqz v3, :cond_17d

    .line 2097
    iget-wide v7, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v7, "SnrInDb"

    filled-new-array {v7, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2100
    :cond_17d
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasAutomaticGainControlLevelDb()Z

    move-result v3

    if-eqz v3, :cond_196

    .line 2101
    iget-wide v7, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v7, "AgcLevelDb"

    filled-new-array {v7, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2104
    :cond_196
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCodeType()Z

    move-result v3

    if-eqz v3, :cond_1ab

    .line 2105
    const-string v3, "CodeType"

    iget-object v7, p0, Landroid/location/GnssMeasurement;->mCodeType:Ljava/lang/String;

    filled-new-array {v3, v7}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2108
    :cond_1ab
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasFullInterSignalBiasNanos()Z

    move-result v3

    if-nez v3, :cond_1b7

    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasFullInterSignalBiasUncertaintyNanos()Z

    move-result v3

    if-eqz v3, :cond_1e3

    .line 2109
    :cond_1b7
    nop

    .line 2112
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasFullInterSignalBiasNanos()Z

    move-result v3

    if-eqz v3, :cond_1c5

    iget-wide v3, p0, Landroid/location/GnssMeasurement;->mFullInterSignalBiasNanos:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_1c6

    :cond_1c5
    move-object v3, v6

    .line 2114
    :goto_1c6
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasFullInterSignalBiasUncertaintyNanos()Z

    move-result v4

    if-eqz v4, :cond_1d3

    .line 2115
    iget-wide v7, p0, Landroid/location/GnssMeasurement;->mFullInterSignalBiasUncertaintyNanos:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    goto :goto_1d4

    :cond_1d3
    move-object v4, v6

    :goto_1d4
    const-string v7, "InterSignalBiasNs"

    const-string v8, "InterSignalBiasUncertaintyNs"

    filled-new-array {v7, v3, v8, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 2109
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2118
    :cond_1e3
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasSatelliteInterSignalBiasNanos()Z

    move-result v3

    if-nez v3, :cond_1ef

    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasSatelliteInterSignalBiasUncertaintyNanos()Z

    move-result v3

    if-eqz v3, :cond_21b

    .line 2119
    :cond_1ef
    nop

    .line 2122
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasSatelliteInterSignalBiasNanos()Z

    move-result v3

    if-eqz v3, :cond_1fd

    iget-wide v3, p0, Landroid/location/GnssMeasurement;->mSatelliteInterSignalBiasNanos:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_1fe

    :cond_1fd
    move-object v3, v6

    .line 2124
    :goto_1fe
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasSatelliteInterSignalBiasUncertaintyNanos()Z

    move-result v4

    if-eqz v4, :cond_20b

    .line 2125
    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mSatelliteInterSignalBiasUncertaintyNanos:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_20c

    .line 2126
    :cond_20b
    nop

    :goto_20c
    const-string v4, "SatelliteInterSignalBiasNs"

    const-string v7, "SatelliteInterSignalBiasUncertaintyNs"

    filled-new-array {v4, v3, v7, v6}, [Ljava/lang/Object;

    move-result-object v3

    .line 2119
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2129
    :cond_21b
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasSatellitePvt()Z

    move-result v3

    if-eqz v3, :cond_22a

    .line 2130
    iget-object v3, p0, Landroid/location/GnssMeasurement;->mSatellitePvt:Landroid/location/SatellitePvt;

    invoke-virtual {v3}, Landroid/location/SatellitePvt;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2133
    :cond_22a
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCorrelationVectors()Z

    move-result v3

    if-eqz v3, :cond_24f

    .line 2134
    iget-object v3, p0, Landroid/location/GnssMeasurement;->mReadOnlyCorrelationVectors:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_236
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/CorrelationVector;

    .line 2135
    .local v4, "correlationVector":Landroid/location/CorrelationVector;
    invoke-virtual {v4}, Landroid/location/CorrelationVector;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2136
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2137
    .end local v4    # "correlationVector":Landroid/location/CorrelationVector;
    goto :goto_236

    .line 2140
    :cond_24f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1990
    iget v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1991
    iget v0, p0, Landroid/location/GnssMeasurement;->mSvid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1992
    iget v0, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1993
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1994
    iget v0, p0, Landroid/location/GnssMeasurement;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1995
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1996
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1997
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1998
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1999
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2000
    iget v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2001
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2002
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2003
    iget v0, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2004
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2005
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2006
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2007
    iget v0, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2008
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2009
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2010
    iget-object v0, p0, Landroid/location/GnssMeasurement;->mCodeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2011
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mBasebandCn0DbHz:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2012
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mFullInterSignalBiasNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2013
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mFullInterSignalBiasUncertaintyNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2014
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mSatelliteInterSignalBiasNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2015
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mSatelliteInterSignalBiasUncertaintyNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2016
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasSatellitePvt()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 2017
    iget-object v0, p0, Landroid/location/GnssMeasurement;->mSatellitePvt:Landroid/location/SatellitePvt;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2019
    :cond_8d
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCorrelationVectors()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 2020
    iget-object v0, p0, Landroid/location/GnssMeasurement;->mReadOnlyCorrelationVectors:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 2021
    .local v0, "correlationVectorCount":I
    iget-object v1, p0, Landroid/location/GnssMeasurement;->mReadOnlyCorrelationVectors:Ljava/util/Collection;

    new-array v2, v0, [Landroid/location/CorrelationVector;

    .line 2022
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/location/CorrelationVector;

    .line 2023
    .local v1, "correlationVectorArray":[Landroid/location/CorrelationVector;
    array-length v2, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2024
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2026
    .end local v0    # "correlationVectorCount":I
    .end local v1    # "correlationVectorArray":[Landroid/location/CorrelationVector;
    :cond_aa
    return-void
.end method
