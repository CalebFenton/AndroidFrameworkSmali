.class public final Landroid/location/GnssMeasurement;
.super Ljava/lang/Object;
.source "GnssMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssMeasurement$1;
    }
.end annotation


# static fields
.field private static final ADR_ALL:I = 0x7

.field public static final ADR_STATE_CYCLE_SLIP:I = 0x4

.field public static final ADR_STATE_RESET:I = 0x2

.field public static final ADR_STATE_UNKNOWN:I = 0x0

.field public static final ADR_STATE_VALID:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/GnssMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAS_CARRIER_CYCLES:I = 0x400

.field private static final HAS_CARRIER_FREQUENCY:I = 0x200

.field private static final HAS_CARRIER_PHASE:I = 0x800

.field private static final HAS_CARRIER_PHASE_UNCERTAINTY:I = 0x1000

.field private static final HAS_NO_FLAGS:I = 0x0

.field private static final HAS_SNR:I = 0x1

.field public static final MULTIPATH_INDICATOR_DETECTED:I = 0x1

.field public static final MULTIPATH_INDICATOR_NOT_DETECTED:I = 0x2

.field public static final MULTIPATH_INDICATOR_NOT_USED:I = 0x2

.field public static final MULTIPATH_INDICATOR_UNKNOWN:I = 0x0

.field private static final STATE_ALL:I = 0x3fff

.field public static final STATE_BDS_D2_BIT_SYNC:I = 0x100

.field public static final STATE_BDS_D2_SUBFRAME_SYNC:I = 0x200

.field public static final STATE_BIT_SYNC:I = 0x2

.field public static final STATE_CODE_LOCK:I = 0x1

.field public static final STATE_GAL_E1BC_CODE_LOCK:I = 0x400

.field public static final STATE_GAL_E1B_PAGE_SYNC:I = 0x1000

.field public static final STATE_GAL_E1C_2ND_CODE_LOCK:I = 0x800

.field public static final STATE_GLO_STRING_SYNC:I = 0x40

.field public static final STATE_GLO_TOD_DECODED:I = 0x80

.field public static final STATE_MSEC_AMBIGUOUS:I = 0x10

.field public static final STATE_SBAS_SYNC:I = 0x2000

.field public static final STATE_SUBFRAME_SYNC:I = 0x4

.field public static final STATE_SYMBOL_SYNC:I = 0x20

.field public static final STATE_TOW_DECODED:I = 0x8

.field public static final STATE_UNKNOWN:I


# instance fields
.field private mAccumulatedDeltaRangeMeters:D

.field private mAccumulatedDeltaRangeState:I

.field private mAccumulatedDeltaRangeUncertaintyMeters:D

.field private mCarrierCycles:J

.field private mCarrierFrequencyHz:F

.field private mCarrierPhase:D

.field private mCarrierPhaseUncertainty:D

.field private mCn0DbHz:D

.field private mConstellationType:I

.field private mFlags:I

.field private mMultipathIndicator:I

.field private mPseudorangeRateMetersPerSecond:D

.field private mPseudorangeRateUncertaintyMetersPerSecond:D

.field private mReceivedSvTimeNanos:J

.field private mReceivedSvTimeUncertaintyNanos:J

.field private mSnrInDb:D

.field private mState:I

.field private mSvid:I

.field private mTimeOffsetNanos:D


# direct methods
.method static synthetic -set0(Landroid/location/GnssMeasurement;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    #@2
    return-wide p1
.end method

.method static synthetic -set1(Landroid/location/GnssMeasurement;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    #@2
    return p1
.end method

.method static synthetic -set10(Landroid/location/GnssMeasurement;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    #@2
    return p1
.end method

.method static synthetic -set11(Landroid/location/GnssMeasurement;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    #@2
    return-wide p1
.end method

.method static synthetic -set12(Landroid/location/GnssMeasurement;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    #@2
    return-wide p1
.end method

.method static synthetic -set13(Landroid/location/GnssMeasurement;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    #@2
    return-wide p1
.end method

.method static synthetic -set14(Landroid/location/GnssMeasurement;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    #@2
    return-wide p1
.end method

.method static synthetic -set15(Landroid/location/GnssMeasurement;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    #@2
    return-wide p1
.end method

.method static synthetic -set16(Landroid/location/GnssMeasurement;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/location/GnssMeasurement;->mState:I

    #@2
    return p1
.end method

.method static synthetic -set17(Landroid/location/GnssMeasurement;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/location/GnssMeasurement;->mSvid:I

    #@2
    return p1
.end method

.method static synthetic -set18(Landroid/location/GnssMeasurement;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    #@2
    return-wide p1
.end method

.method static synthetic -set2(Landroid/location/GnssMeasurement;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    #@2
    return-wide p1
.end method

.method static synthetic -set3(Landroid/location/GnssMeasurement;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    #@2
    return-wide p1
.end method

.method static synthetic -set4(Landroid/location/GnssMeasurement;F)F
    .locals 0

    #@0
    iput p1, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    #@2
    return p1
.end method

.method static synthetic -set5(Landroid/location/GnssMeasurement;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    #@2
    return-wide p1
.end method

.method static synthetic -set6(Landroid/location/GnssMeasurement;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    #@2
    return-wide p1
.end method

.method static synthetic -set7(Landroid/location/GnssMeasurement;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    #@2
    return-wide p1
.end method

.method static synthetic -set8(Landroid/location/GnssMeasurement;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    #@2
    return p1
.end method

.method static synthetic -set9(Landroid/location/GnssMeasurement;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/location/GnssMeasurement;->mFlags:I

    #@2
    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 849
    new-instance v0, Landroid/location/GnssMeasurement$1;

    #@2
    invoke-direct {v0}, Landroid/location/GnssMeasurement$1;-><init>()V

    #@5
    sput-object v0, Landroid/location/GnssMeasurement;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 156
    invoke-direct {p0}, Landroid/location/GnssMeasurement;->initialize()V

    #@6
    .line 155
    return-void
.end method

.method private getAccumulatedDeltaRangeStateString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 544
    iget v2, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    #@2
    if-nez v2, :cond_0

    #@4
    .line 545
    const-string/jumbo v2, "Unknown"

    #@7
    return-object v2

    #@8
    .line 547
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    .line 548
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v2, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    #@f
    and-int/lit8 v2, v2, 0x1

    #@11
    const/4 v3, 0x1

    #@12
    if-ne v2, v3, :cond_1

    #@14
    .line 549
    const-string/jumbo v2, "Valid|"

    #@17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 551
    :cond_1
    iget v2, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    #@1c
    and-int/lit8 v2, v2, 0x2

    #@1e
    const/4 v3, 0x2

    #@1f
    if-ne v2, v3, :cond_2

    #@21
    .line 552
    const-string/jumbo v2, "Reset|"

    #@24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 554
    :cond_2
    iget v2, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    #@29
    and-int/lit8 v2, v2, 0x4

    #@2b
    const/4 v3, 0x4

    #@2c
    if-ne v2, v3, :cond_3

    #@2e
    .line 555
    const-string/jumbo v2, "CycleSlip|"

    #@31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 557
    :cond_3
    iget v2, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    #@36
    and-int/lit8 v1, v2, -0x8

    #@38
    .line 558
    .local v1, "remainingStates":I
    if-lez v1, :cond_4

    #@3a
    .line 559
    const-string/jumbo v2, "Other("

    #@3d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    .line 560
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    .line 561
    const-string/jumbo v2, ")|"

    #@4a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    .line 563
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@50
    move-result v2

    #@51
    add-int/lit8 v2, v2, -0x1

    #@53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    #@56
    .line 564
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    return-object v2
.end method

.method private getMultipathIndicatorString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 801
    iget v0, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 809
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
    iget v1, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

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
    .line 803
    :pswitch_0
    const-string/jumbo v0, "Unknown"

    #@26
    return-object v0

    #@27
    .line 805
    :pswitch_1
    const-string/jumbo v0, "Detected"

    #@2a
    return-object v0

    #@2b
    .line 807
    :pswitch_2
    const-string/jumbo v0, "NotUsed"

    #@2e
    return-object v0

    #@2f
    .line 801
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
    .locals 3

    #@0
    .prologue
    .line 288
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    #@2
    if-nez v2, :cond_0

    #@4
    .line 289
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
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    #@f
    and-int/lit8 v2, v2, 0x1

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 294
    const-string/jumbo v2, "CodeLock|"

    #@16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 296
    :cond_1
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    #@1b
    and-int/lit8 v2, v2, 0x2

    #@1d
    if-eqz v2, :cond_2

    #@1f
    .line 297
    const-string/jumbo v2, "BitSync|"

    #@22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 299
    :cond_2
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    #@27
    and-int/lit8 v2, v2, 0x4

    #@29
    if-eqz v2, :cond_3

    #@2b
    .line 300
    const-string/jumbo v2, "SubframeSync|"

    #@2e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 302
    :cond_3
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    #@33
    and-int/lit8 v2, v2, 0x8

    #@35
    if-eqz v2, :cond_4

    #@37
    .line 303
    const-string/jumbo v2, "TowDecoded|"

    #@3a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    .line 305
    :cond_4
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    #@3f
    and-int/lit8 v2, v2, 0x10

    #@41
    if-eqz v2, :cond_5

    #@43
    .line 306
    const-string/jumbo v2, "MsecAmbiguous|"

    #@46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    .line 308
    :cond_5
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    #@4b
    and-int/lit8 v2, v2, 0x20

    #@4d
    if-eqz v2, :cond_6

    #@4f
    .line 309
    const-string/jumbo v2, "SymbolSync|"

    #@52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 311
    :cond_6
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    #@57
    and-int/lit8 v2, v2, 0x40

    #@59
    if-eqz v2, :cond_7

    #@5b
    .line 312
    const-string/jumbo v2, "GloStringSync|"

    #@5e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    .line 314
    :cond_7
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    #@63
    and-int/lit16 v2, v2, 0x80

    #@65
    if-eqz v2, :cond_8

    #@67
    .line 315
    const-string/jumbo v2, "GloTodDecoded|"

    #@6a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    .line 317
    :cond_8
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    #@6f
    and-int/lit16 v2, v2, 0x100

    #@71
    if-eqz v2, :cond_9

    #@73
    .line 318
    const-string/jumbo v2, "BdsD2BitSync|"

    #@76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    .line 320
    :cond_9
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    #@7b
    and-int/lit16 v2, v2, 0x200

    #@7d
    if-eqz v2, :cond_a

    #@7f
    .line 321
    const-string/jumbo v2, "BdsD2SubframeSync|"

    #@82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    .line 323
    :cond_a
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    #@87
    and-int/lit16 v2, v2, 0x400

    #@89
    if-eqz v2, :cond_b

    #@8b
    .line 324
    const-string/jumbo v2, "GalE1bcCodeLock|"

    #@8e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    .line 326
    :cond_b
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    #@93
    and-int/lit16 v2, v2, 0x800

    #@95
    if-eqz v2, :cond_c

    #@97
    .line 327
    const-string/jumbo v2, "E1c2ndCodeLock|"

    #@9a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    .line 329
    :cond_c
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    #@9f
    and-int/lit16 v2, v2, 0x1000

    #@a1
    if-eqz v2, :cond_d

    #@a3
    .line 330
    const-string/jumbo v2, "GalE1bPageSync|"

    #@a6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    .line 332
    :cond_d
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    #@ab
    and-int/lit16 v2, v2, 0x2000

    #@ad
    if-eqz v2, :cond_e

    #@af
    .line 333
    const-string/jumbo v2, "SbasSync|"

    #@b2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    .line 336
    :cond_e
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    #@b7
    and-int/lit16 v1, v2, -0x4000

    #@b9
    .line 337
    .local v1, "remainingStates":I
    if-lez v1, :cond_f

    #@bb
    .line 338
    const-string/jumbo v2, "Other("

    #@be
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    .line 339
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    #@c4
    move-result-object v2

    #@c5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    .line 340
    const-string/jumbo v2, ")|"

    #@cb
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    .line 342
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@d1
    move-result v2

    #@d2
    add-int/lit8 v2, v2, -0x1

    #@d4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    #@d7
    .line 343
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v2

    #@db
    return-object v2
.end method

.method private initialize()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const-wide/16 v2, 0x1

    #@3
    .line 979
    iput v4, p0, Landroid/location/GnssMeasurement;->mFlags:I

    #@5
    .line 980
    invoke-virtual {p0, v4}, Landroid/location/GnssMeasurement;->setSvid(I)V

    #@8
    .line 981
    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    #@a
    invoke-virtual {p0, v0, v1}, Landroid/location/GnssMeasurement;->setTimeOffsetNanos(D)V

    #@d
    .line 982
    invoke-virtual {p0, v4}, Landroid/location/GnssMeasurement;->setState(I)V

    #@10
    .line 983
    const-wide/high16 v0, -0x8000000000000000L

    #@12
    invoke-virtual {p0, v0, v1}, Landroid/location/GnssMeasurement;->setReceivedSvTimeNanos(J)V

    #@15
    .line 984
    const-wide v0, 0x7fffffffffffffffL

    #@1a
    invoke-virtual {p0, v0, v1}, Landroid/location/GnssMeasurement;->setReceivedSvTimeUncertaintyNanos(J)V

    #@1d
    .line 985
    invoke-virtual {p0, v2, v3}, Landroid/location/GnssMeasurement;->setCn0DbHz(D)V

    #@20
    .line 986
    invoke-virtual {p0, v2, v3}, Landroid/location/GnssMeasurement;->setPseudorangeRateMetersPerSecond(D)V

    #@23
    .line 987
    invoke-virtual {p0, v2, v3}, Landroid/location/GnssMeasurement;->setPseudorangeRateUncertaintyMetersPerSecond(D)V

    #@26
    .line 988
    invoke-virtual {p0, v4}, Landroid/location/GnssMeasurement;->setAccumulatedDeltaRangeState(I)V

    #@29
    .line 989
    invoke-virtual {p0, v2, v3}, Landroid/location/GnssMeasurement;->setAccumulatedDeltaRangeMeters(D)V

    #@2c
    .line 990
    invoke-virtual {p0, v2, v3}, Landroid/location/GnssMeasurement;->setAccumulatedDeltaRangeUncertaintyMeters(D)V

    #@2f
    .line 991
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCarrierFrequencyHz()V

    #@32
    .line 992
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCarrierCycles()V

    #@35
    .line 993
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCarrierPhase()V

    #@38
    .line 994
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCarrierPhaseUncertainty()V

    #@3b
    .line 995
    invoke-virtual {p0, v4}, Landroid/location/GnssMeasurement;->setMultipathIndicator(I)V

    #@3e
    .line 996
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetSnrInDb()V

    #@41
    .line 978
    return-void
.end method

.method private isFlagSet(I)Z
    .locals 1
    .param p1, "flag"    # I

    #@0
    .prologue
    .line 1008
    iget v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

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
    .line 1004
    iget v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    #@2
    not-int v1, p1

    #@3
    and-int/2addr v0, v1

    #@4
    iput v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    #@6
    .line 1003
    return-void
.end method

.method private setFlag(I)V
    .locals 1
    .param p1, "flag"    # I

    #@0
    .prologue
    .line 1000
    iget v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    #@2
    or-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    #@5
    .line 999
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 908
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAccumulatedDeltaRangeMeters()D
    .locals 2

    #@0
    .prologue
    .line 582
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    #@2
    return-wide v0
.end method

.method public getAccumulatedDeltaRangeState()I
    .locals 1

    #@0
    .prologue
    .line 526
    iget v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    #@2
    return v0
.end method

.method public getAccumulatedDeltaRangeUncertaintyMeters()D
    .locals 2

    #@0
    .prologue
    .line 602
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    #@2
    return-wide v0
.end method

.method public getCarrierCycles()J
    .locals 2

    #@0
    .prologue
    .line 672
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    #@2
    return-wide v0
.end method

.method public getCarrierFrequencyHz()F
    .locals 1

    #@0
    .prologue
    .line 634
    iget v0, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    #@2
    return v0
.end method

.method public getCarrierPhase()D
    .locals 2

    #@0
    .prologue
    .line 716
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    #@2
    return-wide v0
.end method

.method public getCarrierPhaseUncertainty()D
    .locals 2

    #@0
    .prologue
    .line 755
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    #@2
    return-wide v0
.end method

.method public getCn0DbHz()D
    .locals 2

    #@0
    .prologue
    .line 460
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    #@2
    return-wide v0
.end method

.method public getConstellationType()I
    .locals 1

    #@0
    .prologue
    .line 224
    iget v0, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    #@2
    return v0
.end method

.method public getMultipathIndicator()I
    .locals 1

    #@0
    .prologue
    .line 783
    iget v0, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    #@2
    return v0
.end method

.method public getPseudorangeRateMetersPerSecond()D
    .locals 2

    #@0
    .prologue
    .line 489
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    #@2
    return-wide v0
.end method

.method public getPseudorangeRateUncertaintyMetersPerSecond()D
    .locals 2

    #@0
    .prologue
    .line 507
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    #@2
    return-wide v0
.end method

.method public getReceivedSvTimeNanos()J
    .locals 2

    #@0
    .prologue
    .line 424
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    #@2
    return-wide v0
.end method

.method public getReceivedSvTimeUncertaintyNanos()J
    .locals 2

    #@0
    .prologue
    .line 440
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    #@2
    return-wide v0
.end method

.method public getSnrInDb()D
    .locals 2

    #@0
    .prologue
    .line 826
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    #@2
    return-wide v0
.end method

.method public getState()I
    .locals 1

    #@0
    .prologue
    .line 270
    iget v0, p0, Landroid/location/GnssMeasurement;->mState:I

    #@2
    return v0
.end method

.method public getSvid()I
    .locals 1

    #@0
    .prologue
    .line 204
    iget v0, p0, Landroid/location/GnssMeasurement;->mSvid:I

    #@2
    return v0
.end method

.method public getTimeOffsetNanos()D
    .locals 2

    #@0
    .prologue
    .line 250
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    #@2
    return-wide v0
.end method

.method public hasCarrierCycles()Z
    .locals 1

    #@0
    .prologue
    .line 661
    const/16 v0, 0x400

    #@2
    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasCarrierFrequencyHz()Z
    .locals 1

    #@0
    .prologue
    .line 622
    const/16 v0, 0x200

    #@2
    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasCarrierPhase()Z
    .locals 1

    #@0
    .prologue
    .line 699
    const/16 v0, 0x800

    #@2
    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasCarrierPhaseUncertainty()Z
    .locals 1

    #@0
    .prologue
    .line 744
    const/16 v0, 0x1000

    #@2
    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasSnrInDb()Z
    .locals 1

    #@0
    .prologue
    .line 817
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public reset()V
    .locals 0

    #@0
    .prologue
    .line 194
    invoke-direct {p0}, Landroid/location/GnssMeasurement;->initialize()V

    #@3
    .line 193
    return-void
.end method

.method public resetCarrierCycles()V
    .locals 2

    #@0
    .prologue
    .line 691
    const/16 v0, 0x400

    #@2
    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    #@5
    .line 692
    const-wide/high16 v0, -0x8000000000000000L

    #@7
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    #@9
    .line 690
    return-void
.end method

.method public resetCarrierFrequencyHz()V
    .locals 1

    #@0
    .prologue
    .line 653
    const/16 v0, 0x200

    #@2
    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    #@5
    .line 654
    const/high16 v0, 0x7fc00000    # NaNf

    #@7
    iput v0, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    #@9
    .line 652
    return-void
.end method

.method public resetCarrierPhase()V
    .locals 2

    #@0
    .prologue
    .line 735
    const/16 v0, 0x800

    #@2
    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    #@5
    .line 736
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@7
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    #@9
    .line 734
    return-void
.end method

.method public resetCarrierPhaseUncertainty()V
    .locals 2

    #@0
    .prologue
    .line 774
    const/16 v0, 0x1000

    #@2
    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    #@5
    .line 775
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@7
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    #@9
    .line 773
    return-void
.end method

.method public resetSnrInDb()V
    .locals 2

    #@0
    .prologue
    .line 845
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    #@4
    .line 846
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@6
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    #@8
    .line 844
    return-void
.end method

.method public set(Landroid/location/GnssMeasurement;)V
    .locals 2
    .param p1, "measurement"    # Landroid/location/GnssMeasurement;

    #@0
    .prologue
    .line 165
    iget v0, p1, Landroid/location/GnssMeasurement;->mFlags:I

    #@2
    iput v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    #@4
    .line 166
    iget v0, p1, Landroid/location/GnssMeasurement;->mSvid:I

    #@6
    iput v0, p0, Landroid/location/GnssMeasurement;->mSvid:I

    #@8
    .line 167
    iget v0, p1, Landroid/location/GnssMeasurement;->mConstellationType:I

    #@a
    iput v0, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    #@c
    .line 168
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    #@e
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    #@10
    .line 169
    iget v0, p1, Landroid/location/GnssMeasurement;->mState:I

    #@12
    iput v0, p0, Landroid/location/GnssMeasurement;->mState:I

    #@14
    .line 170
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    #@16
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    #@18
    .line 171
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    #@1a
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    #@1c
    .line 172
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    #@1e
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    #@20
    .line 173
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    #@22
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    #@24
    .line 175
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    #@26
    .line 174
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    #@28
    .line 176
    iget v0, p1, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    #@2a
    iput v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    #@2c
    .line 177
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    #@2e
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    #@30
    .line 179
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    #@32
    .line 178
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    #@34
    .line 180
    iget v0, p1, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    #@36
    iput v0, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    #@38
    .line 181
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    #@3a
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    #@3c
    .line 182
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    #@3e
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    #@40
    .line 183
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    #@42
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    #@44
    .line 184
    iget v0, p1, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    #@46
    iput v0, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    #@48
    .line 185
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mSnrInDb:D

    #@4a
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    #@4c
    .line 164
    return-void
.end method

.method public setAccumulatedDeltaRangeMeters(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 591
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    #@2
    .line 590
    return-void
.end method

.method public setAccumulatedDeltaRangeState(I)V
    .locals 0
    .param p1, "value"    # I

    #@0
    .prologue
    .line 535
    iput p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    #@2
    .line 534
    return-void
.end method

.method public setAccumulatedDeltaRangeUncertaintyMeters(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 614
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    #@2
    .line 613
    return-void
.end method

.method public setCarrierCycles(J)V
    .locals 1
    .param p1, "value"    # J

    #@0
    .prologue
    .line 681
    const/16 v0, 0x400

    #@2
    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    #@5
    .line 682
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    #@7
    .line 680
    return-void
.end method

.method public setCarrierFrequencyHz(F)V
    .locals 1
    .param p1, "carrierFrequencyHz"    # F

    #@0
    .prologue
    .line 643
    const/16 v0, 0x200

    #@2
    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    #@5
    .line 644
    iput p1, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    #@7
    .line 642
    return-void
.end method

.method public setCarrierPhase(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 725
    const/16 v0, 0x800

    #@2
    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    #@5
    .line 726
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    #@7
    .line 724
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
    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    #@5
    .line 765
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    #@7
    .line 763
    return-void
.end method

.method public setCn0DbHz(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 469
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    #@2
    .line 468
    return-void
.end method

.method public setConstellationType(I)V
    .locals 0
    .param p1, "value"    # I

    #@0
    .prologue
    .line 233
    iput p1, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    #@2
    .line 232
    return-void
.end method

.method public setMultipathIndicator(I)V
    .locals 0
    .param p1, "value"    # I

    #@0
    .prologue
    .line 792
    iput p1, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    #@2
    .line 791
    return-void
.end method

.method public setPseudorangeRateMetersPerSecond(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 498
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    #@2
    .line 497
    return-void
.end method

.method public setPseudorangeRateUncertaintyMetersPerSecond(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 516
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    #@2
    .line 515
    return-void
.end method

.method public setReceivedSvTimeNanos(J)V
    .locals 1
    .param p1, "value"    # J

    #@0
    .prologue
    .line 433
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    #@2
    .line 432
    return-void
.end method

.method public setReceivedSvTimeUncertaintyNanos(J)V
    .locals 1
    .param p1, "value"    # J

    #@0
    .prologue
    .line 449
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    #@2
    .line 448
    return-void
.end method

.method public setSnrInDb(D)V
    .locals 1
    .param p1, "snrInDb"    # D

    #@0
    .prologue
    .line 835
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    #@4
    .line 836
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    #@6
    .line 834
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "value"    # I

    #@0
    .prologue
    .line 279
    iput p1, p0, Landroid/location/GnssMeasurement;->mState:I

    #@2
    .line 278
    return-void
.end method

.method public setSvid(I)V
    .locals 0
    .param p1, "value"    # I

    #@0
    .prologue
    .line 213
    iput p1, p0, Landroid/location/GnssMeasurement;->mSvid:I

    #@2
    .line 212
    return-void
.end method

.method public setTimeOffsetNanos(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 259
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    #@2
    .line 258
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
    .line 913
    const-string/jumbo v1, "   %-29s = %s\n"

    #@8
    .line 914
    .local v1, "format":Ljava/lang/String;
    const-string/jumbo v2, "   %-29s = %-25s   %-40s = %s\n"

    #@b
    .line 915
    .local v2, "formatWithUncertainty":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    const-string/jumbo v3, "GnssMeasurement:\n"

    #@10
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    .line 917
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "   %-29s = %s\n"

    #@16
    new-array v5, v12, [Ljava/lang/Object;

    #@18
    const-string/jumbo v6, "Svid"

    #@1b
    aput-object v6, v5, v10

    #@1d
    iget v6, p0, Landroid/location/GnssMeasurement;->mSvid:I

    #@1f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    .line 918
    const-string/jumbo v3, "   %-29s = %s\n"

    #@2f
    new-array v5, v12, [Ljava/lang/Object;

    #@31
    const-string/jumbo v6, "ConstellationType"

    #@34
    aput-object v6, v5, v10

    #@36
    iget v6, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    #@38
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    .line 919
    const-string/jumbo v3, "   %-29s = %s\n"

    #@48
    new-array v5, v12, [Ljava/lang/Object;

    #@4a
    const-string/jumbo v6, "TimeOffsetNanos"

    #@4d
    aput-object v6, v5, v10

    #@4f
    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    #@51
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@54
    move-result-object v6

    #@55
    aput-object v6, v5, v11

    #@57
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    .line 921
    const-string/jumbo v3, "   %-29s = %s\n"

    #@61
    new-array v5, v12, [Ljava/lang/Object;

    #@63
    const-string/jumbo v6, "State"

    #@66
    aput-object v6, v5, v10

    #@68
    invoke-direct {p0}, Landroid/location/GnssMeasurement;->getStateString()Ljava/lang/String;

    #@6b
    move-result-object v6

    #@6c
    aput-object v6, v5, v11

    #@6e
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@71
    move-result-object v3

    #@72
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    .line 924
    const-string/jumbo v3, "   %-29s = %-25s   %-40s = %s\n"

    #@78
    .line 923
    const/4 v5, 0x4

    #@79
    new-array v5, v5, [Ljava/lang/Object;

    #@7b
    .line 925
    const-string/jumbo v6, "ReceivedSvTimeNanos"

    #@7e
    aput-object v6, v5, v10

    #@80
    .line 926
    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    #@82
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@85
    move-result-object v6

    #@86
    aput-object v6, v5, v11

    #@88
    .line 927
    const-string/jumbo v6, "ReceivedSvTimeUncertaintyNanos"

    #@8b
    aput-object v6, v5, v12

    #@8d
    .line 928
    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    #@8f
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@92
    move-result-object v6

    #@93
    aput-object v6, v5, v13

    #@95
    .line 923
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@98
    move-result-object v3

    #@99
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    .line 930
    const-string/jumbo v3, "   %-29s = %s\n"

    #@9f
    new-array v5, v12, [Ljava/lang/Object;

    #@a1
    const-string/jumbo v6, "Cn0DbHz"

    #@a4
    aput-object v6, v5, v10

    #@a6
    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    #@a8
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@ab
    move-result-object v6

    #@ac
    aput-object v6, v5, v11

    #@ae
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b1
    move-result-object v3

    #@b2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    .line 933
    const-string/jumbo v3, "   %-29s = %-25s   %-40s = %s\n"

    #@b8
    .line 932
    const/4 v5, 0x4

    #@b9
    new-array v5, v5, [Ljava/lang/Object;

    #@bb
    .line 934
    const-string/jumbo v6, "PseudorangeRateMetersPerSecond"

    #@be
    aput-object v6, v5, v10

    #@c0
    .line 935
    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    #@c2
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@c5
    move-result-object v6

    #@c6
    aput-object v6, v5, v11

    #@c8
    .line 936
    const-string/jumbo v6, "PseudorangeRateUncertaintyMetersPerSecond"

    #@cb
    aput-object v6, v5, v12

    #@cd
    .line 937
    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    #@cf
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@d2
    move-result-object v6

    #@d3
    aput-object v6, v5, v13

    #@d5
    .line 932
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d8
    move-result-object v3

    #@d9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    .line 940
    const-string/jumbo v3, "   %-29s = %s\n"

    #@df
    .line 939
    new-array v5, v12, [Ljava/lang/Object;

    #@e1
    .line 941
    const-string/jumbo v6, "AccumulatedDeltaRangeState"

    #@e4
    aput-object v6, v5, v10

    #@e6
    .line 942
    invoke-direct {p0}, Landroid/location/GnssMeasurement;->getAccumulatedDeltaRangeStateString()Ljava/lang/String;

    #@e9
    move-result-object v6

    #@ea
    aput-object v6, v5, v11

    #@ec
    .line 939
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@ef
    move-result-object v3

    #@f0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    .line 945
    const-string/jumbo v3, "   %-29s = %-25s   %-40s = %s\n"

    #@f6
    .line 944
    const/4 v5, 0x4

    #@f7
    new-array v5, v5, [Ljava/lang/Object;

    #@f9
    .line 946
    const-string/jumbo v6, "AccumulatedDeltaRangeMeters"

    #@fc
    aput-object v6, v5, v10

    #@fe
    .line 947
    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    #@100
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@103
    move-result-object v6

    #@104
    aput-object v6, v5, v11

    #@106
    .line 948
    const-string/jumbo v6, "AccumulatedDeltaRangeUncertaintyMeters"

    #@109
    aput-object v6, v5, v12

    #@10b
    .line 949
    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    #@10d
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@110
    move-result-object v6

    #@111
    aput-object v6, v5, v13

    #@113
    .line 944
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@116
    move-result-object v3

    #@117
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    .line 952
    const-string/jumbo v5, "   %-29s = %s\n"

    #@11d
    .line 951
    new-array v6, v12, [Ljava/lang/Object;

    #@11f
    .line 953
    const-string/jumbo v3, "CarrierFrequencyHz"

    #@122
    aput-object v3, v6, v10

    #@124
    .line 954
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierFrequencyHz()Z

    #@127
    move-result v3

    #@128
    if-eqz v3, :cond_1

    #@12a
    iget v3, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    #@12c
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@12f
    move-result-object v3

    #@130
    :goto_0
    aput-object v3, v6, v11

    #@132
    .line 951
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@135
    move-result-object v3

    #@136
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    .line 957
    const-string/jumbo v5, "   %-29s = %s\n"

    #@13c
    .line 956
    new-array v6, v12, [Ljava/lang/Object;

    #@13e
    .line 958
    const-string/jumbo v3, "CarrierCycles"

    #@141
    aput-object v3, v6, v10

    #@143
    .line 959
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierCycles()Z

    #@146
    move-result v3

    #@147
    if-eqz v3, :cond_2

    #@149
    iget-wide v8, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    #@14b
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@14e
    move-result-object v3

    #@14f
    :goto_1
    aput-object v3, v6, v11

    #@151
    .line 956
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@154
    move-result-object v3

    #@155
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    .line 962
    const-string/jumbo v5, "   %-29s = %-25s   %-40s = %s\n"

    #@15b
    .line 961
    const/4 v3, 0x4

    #@15c
    new-array v6, v3, [Ljava/lang/Object;

    #@15e
    .line 963
    const-string/jumbo v3, "CarrierPhase"

    #@161
    aput-object v3, v6, v10

    #@163
    .line 964
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierPhase()Z

    #@166
    move-result v3

    #@167
    if-eqz v3, :cond_3

    #@169
    iget-wide v8, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    #@16b
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@16e
    move-result-object v3

    #@16f
    :goto_2
    aput-object v3, v6, v11

    #@171
    .line 965
    const-string/jumbo v3, "CarrierPhaseUncertainty"

    #@174
    aput-object v3, v6, v12

    #@176
    .line 966
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierPhaseUncertainty()Z

    #@179
    move-result v3

    #@17a
    if-eqz v3, :cond_4

    #@17c
    iget-wide v8, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    #@17e
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@181
    move-result-object v3

    #@182
    :goto_3
    aput-object v3, v6, v13

    #@184
    .line 961
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@187
    move-result-object v3

    #@188
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18b
    .line 968
    const-string/jumbo v3, "   %-29s = %s\n"

    #@18e
    new-array v5, v12, [Ljava/lang/Object;

    #@190
    const-string/jumbo v6, "MultipathIndicator"

    #@193
    aput-object v6, v5, v10

    #@195
    invoke-direct {p0}, Landroid/location/GnssMeasurement;->getMultipathIndicatorString()Ljava/lang/String;

    #@198
    move-result-object v6

    #@199
    aput-object v6, v5, v11

    #@19b
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@19e
    move-result-object v3

    #@19f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a2
    .line 971
    const-string/jumbo v3, "   %-29s = %s\n"

    #@1a5
    .line 970
    new-array v5, v12, [Ljava/lang/Object;

    #@1a7
    .line 972
    const-string/jumbo v6, "SnrInDb"

    #@1aa
    aput-object v6, v5, v10

    #@1ac
    .line 973
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasSnrInDb()Z

    #@1af
    move-result v6

    #@1b0
    if-eqz v6, :cond_0

    #@1b2
    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    #@1b4
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@1b7
    move-result-object v4

    #@1b8
    :cond_0
    aput-object v4, v5, v11

    #@1ba
    .line 970
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1bd
    move-result-object v3

    #@1be
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c1
    .line 975
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c4
    move-result-object v3

    #@1c5
    return-object v3

    #@1c6
    :cond_1
    move-object v3, v4

    #@1c7
    .line 954
    goto/16 :goto_0

    #@1c9
    :cond_2
    move-object v3, v4

    #@1ca
    .line 959
    goto :goto_1

    #@1cb
    :cond_3
    move-object v3, v4

    #@1cc
    .line 964
    goto :goto_2

    #@1cd
    :cond_4
    move-object v3, v4

    #@1ce
    .line 966
    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 885
    iget v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 886
    iget v0, p0, Landroid/location/GnssMeasurement;->mSvid:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 887
    iget v0, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 888
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@14
    .line 889
    iget v0, p0, Landroid/location/GnssMeasurement;->mState:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 890
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    #@1b
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@1e
    .line 891
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    #@20
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@23
    .line 892
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    #@25
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@28
    .line 893
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    #@2a
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@2d
    .line 894
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    #@2f
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@32
    .line 895
    iget v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    #@34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 896
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    #@39
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@3c
    .line 897
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    #@3e
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@41
    .line 898
    iget v0, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    #@43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@46
    .line 899
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    #@48
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@4b
    .line 900
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    #@4d
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@50
    .line 901
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    #@52
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@55
    .line 902
    iget v0, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    #@57
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5a
    .line 903
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    #@5c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@5f
    .line 884
    return-void
.end method
