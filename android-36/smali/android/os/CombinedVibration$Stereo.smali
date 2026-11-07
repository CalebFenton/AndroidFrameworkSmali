.class public final Landroid/os/CombinedVibration$Stereo;
.super Landroid/os/CombinedVibration;
.source "CombinedVibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CombinedVibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stereo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/CombinedVibration$Stereo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$cdvXeSO9pMJjJ-u7cs1pGfka_30(Landroid/os/CombinedVibration$Stereo;Ljava/lang/Integer;)Ljava/lang/Long;
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/CombinedVibration$Stereo;->lambda$getDuration$0(Ljava/lang/Integer;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$etDOqC3FtktB09k8rHwTuDQO1Ys(Landroid/os/CombinedVibration$Stereo;Landroid/util/SparseArray;Ljava/lang/Integer;)Ljava/lang/Long;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/os/CombinedVibration$Stereo;->lambda$getDuration$1(Landroid/util/SparseArray;Ljava/lang/Integer;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 746
    new-instance v0, Landroid/os/CombinedVibration$Stereo$1;

    invoke-direct {v0}, Landroid/os/CombinedVibration$Stereo$1;-><init>()V

    sput-object v0, Landroid/os/CombinedVibration$Stereo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 543
    invoke-direct {p0}, Landroid/os/CombinedVibration;-><init>()V

    .line 544
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 545
    .local v0, "size":I
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    .line 546
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_25

    .line 547
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 548
    .local v2, "vibratorId":I
    iget-object v3, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    sget-object v4, Landroid/os/VibrationEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/VibrationEffect;

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 546
    .end local v2    # "vibratorId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 550
    .end local v1    # "i":I
    :cond_25
    return-void
.end method

.method constructor blacklist <init>(Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;)V"
        }
    .end annotation

    .line 552
    .local p1, "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect;>;"
    invoke-direct {p0}, Landroid/os/CombinedVibration;-><init>()V

    .line 553
    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    .line 554
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 555
    iget-object v1, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/VibrationEffect;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 554
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 557
    .end local v0    # "i":I
    :cond_27
    return-void
.end method

.method private blacklist getDuration(Ljava/util/function/Function;)J
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 584
    .local p1, "durationFn":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/Long;>;"
    const-wide/high16 v0, -0x8000000000000000L

    .line 585
    .local v0, "maxDuration":J
    const/4 v2, 0x0

    .line 586
    .local v2, "hasUnknownStep":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    iget-object v4, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_35

    .line 587
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 588
    .local v4, "duration":J
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v6, v4, v6

    if-nez v6, :cond_24

    .line 590
    return-wide v4

    .line 592
    :cond_24
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 596
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_30

    const/4 v6, 0x1

    goto :goto_31

    :cond_30
    const/4 v6, 0x0

    :goto_31
    or-int/2addr v2, v6

    .line 586
    .end local v4    # "duration":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 598
    .end local v3    # "i":I
    :cond_35
    if-eqz v2, :cond_3a

    .line 600
    const-wide/16 v3, -0x1

    return-wide v3

    .line 602
    :cond_3a
    return-wide v0
.end method

.method private synthetic blacklist lambda$getDuration$0(Ljava/lang/Integer;)Ljava/lang/Long;
    .registers 4
    .param p1, "idx"    # Ljava/lang/Integer;

    .line 567
    iget-object v0, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getDuration$1(Landroid/util/SparseArray;Ljava/lang/Integer;)Ljava/lang/Long;
    .registers 7
    .param p1, "vibratorInfos"    # Landroid/util/SparseArray;
    .param p2, "idx"    # Ljava/lang/Integer;

    .line 577
    iget-object v0, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    .line 578
    .local v0, "effect":Landroid/os/VibrationEffect;
    iget-object v1, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/VibratorInfo;

    .line 579
    .local v1, "info":Landroid/os/VibratorInfo;
    invoke-virtual {v0, v1}, Landroid/os/VibrationEffect;->getDuration(Landroid/os/VibratorInfo;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public blacklist adapt(Landroid/os/CombinedVibration$VibratorAdapter;)Landroid/os/CombinedVibration;
    .registers 9
    .param p1, "adapter"    # Landroid/os/CombinedVibration$VibratorAdapter;

    .line 649
    invoke-static {}, Landroid/os/CombinedVibration;->startParallel()Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v0

    .line 650
    .local v0, "combination":Landroid/os/CombinedVibration$ParallelCombination;
    const/4 v1, 0x1

    .line 651
    .local v1, "hasSameEffects":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    iget-object v3, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2f

    .line 652
    iget-object v3, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 653
    .local v3, "vibratorId":I
    iget-object v4, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/VibrationEffect;

    .line 654
    .local v4, "effect":Landroid/os/VibrationEffect;
    invoke-interface {p1, v3, v4}, Landroid/os/CombinedVibration$VibratorAdapter;->adaptToVibrator(ILandroid/os/VibrationEffect;)Landroid/os/VibrationEffect;

    move-result-object v5

    .line 655
    .local v5, "newEffect":Landroid/os/VibrationEffect;
    if-nez v5, :cond_24

    .line 657
    const/4 v6, 0x0

    return-object v6

    .line 659
    :cond_24
    invoke-virtual {v0, v3, v5}, Landroid/os/CombinedVibration$ParallelCombination;->addVibrator(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$ParallelCombination;

    .line 660
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    and-int/2addr v1, v6

    .line 651
    .end local v3    # "vibratorId":I
    .end local v4    # "effect":Landroid/os/VibrationEffect;
    .end local v5    # "newEffect":Landroid/os/VibrationEffect;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 662
    .end local v2    # "i":I
    :cond_2f
    if-eqz v1, :cond_32

    .line 663
    return-object p0

    .line 666
    :cond_32
    invoke-virtual {v0}, Landroid/os/CombinedVibration$ParallelCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v2

    return-object v2
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 732
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 691
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 692
    return v0

    .line 694
    :cond_4
    instance-of v1, p1, Landroid/os/CombinedVibration$Stereo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 695
    return v2

    .line 697
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/os/CombinedVibration$Stereo;

    .line 698
    .local v1, "other":Landroid/os/CombinedVibration$Stereo;
    iget-object v3, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    iget-object v4, v1, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eq v3, v4, :cond_1c

    .line 699
    return v2

    .line 701
    :cond_1c
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    iget-object v4, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_43

    .line 702
    iget-object v4, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/VibrationEffect;

    iget-object v5, v1, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    iget-object v6, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    .line 703
    return v2

    .line 701
    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 706
    .end local v3    # "i":I
    :cond_43
    return v0
.end method

.method public blacklist getDuration()J
    .registers 3

    .line 567
    new-instance v0, Landroid/os/CombinedVibration$Stereo$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/os/CombinedVibration$Stereo$$ExternalSyntheticLambda0;-><init>(Landroid/os/CombinedVibration$Stereo;)V

    invoke-direct {p0, v0}, Landroid/os/CombinedVibration$Stereo;->getDuration(Ljava/util/function/Function;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getDuration(Landroid/util/SparseArray;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/VibratorInfo;",
            ">;)J"
        }
    .end annotation

    .line 573
    .local p1, "vibratorInfos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibratorInfo;>;"
    if-nez p1, :cond_7

    .line 574
    invoke-virtual {p0}, Landroid/os/CombinedVibration$Stereo;->getDuration()J

    move-result-wide v0

    return-wide v0

    .line 576
    :cond_7
    new-instance v0, Landroid/os/CombinedVibration$Stereo$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/os/CombinedVibration$Stereo$$ExternalSyntheticLambda1;-><init>(Landroid/os/CombinedVibration$Stereo;Landroid/util/SparseArray;)V

    invoke-direct {p0, v0}, Landroid/os/CombinedVibration$Stereo;->getDuration(Ljava/util/function/Function;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getEffects()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation

    .line 562
    iget-object v0, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    return-object v0
.end method

.method public blacklist hasVendorEffects()Z
    .registers 4

    .line 678
    invoke-static {}, Landroid/os/vibrator/Flags;->vendorVibrationEffects()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 679
    return v1

    .line 681
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v2, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_20

    .line 682
    iget-object v2, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/os/VibrationEffect$VendorEffect;

    if-eqz v2, :cond_1d

    .line 683
    const/4 v1, 0x1

    return v1

    .line 681
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 686
    .end local v0    # "i":I
    :cond_20
    return v1
.end method

.method public blacklist hasVibrator(I)Z
    .registers 3
    .param p1, "vibratorId"    # I

    .line 672
    iget-object v0, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 711
    iget-object v0, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->contentHashCode()I

    move-result v0

    return v0
.end method

.method public blacklist isHapticFeedbackCandidate()Z
    .registers 3

    .line 608
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 609
    iget-object v1, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/VibrationEffect;

    invoke-virtual {v1}, Landroid/os/VibrationEffect;->isHapticFeedbackCandidate()Z

    move-result v1

    if-nez v1, :cond_19

    .line 610
    const/4 v1, 0x0

    return v1

    .line 608
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 613
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist toDebugString()Ljava/lang/String;
    .registers 6

    .line 722
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "Stereo{"

    const-string/jumbo v2, "}"

    const-string v3, ","

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 723
    .local v0, "sj":Ljava/util/StringJoiner;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    iget-object v2, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3e

    .line 724
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v3, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    .line 725
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/VibrationEffect;

    invoke-virtual {v4}, Landroid/os/VibrationEffect;->toDebugString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 724
    const-string/jumbo v4, "vibrator(id=%d): %s"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 723
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 727
    .end local v1    # "i":I
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stereo{mEffects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist transform(Landroid/os/VibrationEffect$Transformation;Ljava/lang/Object;)Landroid/os/CombinedVibration;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ParamT:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/VibrationEffect$Transformation<",
            "TParamT;>;TParamT;)",
            "Landroid/os/CombinedVibration;"
        }
    .end annotation

    .line 630
    .local p1, "transformation":Landroid/os/VibrationEffect$Transformation;, "Landroid/os/VibrationEffect$Transformation<TParamT;>;"
    .local p2, "param":Ljava/lang/Object;, "TParamT;"
    invoke-static {}, Landroid/os/CombinedVibration;->startParallel()Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v0

    .line 631
    .local v0, "combination":Landroid/os/CombinedVibration$ParallelCombination;
    const/4 v1, 0x1

    .line 632
    .local v1, "hasSameEffects":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    iget-object v3, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2b

    .line 633
    iget-object v3, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 634
    .local v3, "vibratorId":I
    iget-object v4, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/VibrationEffect;

    .line 635
    .local v4, "effect":Landroid/os/VibrationEffect;
    invoke-interface {p1, v4, p2}, Landroid/os/VibrationEffect$Transformation;->transform(Landroid/os/VibrationEffect;Ljava/lang/Object;)Landroid/os/VibrationEffect;

    move-result-object v5

    .line 636
    .local v5, "newEffect":Landroid/os/VibrationEffect;
    invoke-virtual {v0, v3, v5}, Landroid/os/CombinedVibration$ParallelCombination;->addVibrator(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$ParallelCombination;

    .line 637
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    and-int/2addr v1, v6

    .line 632
    .end local v3    # "vibratorId":I
    .end local v4    # "effect":Landroid/os/VibrationEffect;
    .end local v5    # "newEffect":Landroid/os/VibrationEffect;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 639
    .end local v2    # "i":I
    :cond_2b
    if-eqz v1, :cond_2e

    .line 640
    return-object p0

    .line 643
    :cond_2e
    invoke-virtual {v0}, Landroid/os/CombinedVibration$ParallelCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v2

    return-object v2
.end method

.method public blacklist validate()V
    .registers 3

    .line 619
    iget-object v0, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const-string v1, "There should be at least one effect set for a combined effect"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 621
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    iget-object v1, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 622
    iget-object v1, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/VibrationEffect;

    invoke-virtual {v1}, Landroid/os/VibrationEffect;->validate()V

    .line 621
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 624
    .end local v0    # "i":I
    :cond_27
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 737
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 738
    iget-object v0, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 739
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget-object v1, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 740
    iget-object v1, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 741
    iget-object v1, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/VibrationEffect;

    invoke-virtual {v1, p1, p2}, Landroid/os/VibrationEffect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 739
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 743
    .end local v0    # "i":I
    :cond_2d
    return-void
.end method
