.class public final Landroid/os/CombinedVibration$Mono;
.super Landroid/os/CombinedVibration;
.source "CombinedVibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CombinedVibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mono"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/CombinedVibration$Mono;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEffect:Landroid/os/VibrationEffect;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 514
    new-instance v0, Landroid/os/CombinedVibration$Mono$1;

    invoke-direct {v0}, Landroid/os/CombinedVibration$Mono$1;-><init>()V

    sput-object v0, Landroid/os/CombinedVibration$Mono;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 378
    invoke-direct {p0}, Landroid/os/CombinedVibration;-><init>()V

    .line 379
    sget-object v0, Landroid/os/VibrationEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    iput-object v0, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    .line 380
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/VibrationEffect;)V
    .registers 2
    .param p1, "effect"    # Landroid/os/VibrationEffect;

    .line 382
    invoke-direct {p0}, Landroid/os/CombinedVibration;-><init>()V

    .line 383
    iput-object p1, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    .line 384
    return-void
.end method


# virtual methods
.method public blacklist adapt(Landroid/os/CombinedVibration$VibratorAdapter;)Landroid/os/CombinedVibration;
    .registers 10
    .param p1, "adapter"    # Landroid/os/CombinedVibration$VibratorAdapter;

    .line 440
    invoke-static {}, Landroid/os/CombinedVibration;->startParallel()Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v0

    .line 441
    .local v0, "combination":Landroid/os/CombinedVibration$ParallelCombination;
    const/4 v1, 0x1

    .line 442
    .local v1, "hasSameEffects":Z
    invoke-interface {p1}, Landroid/os/CombinedVibration$VibratorAdapter;->getAvailableVibratorIds()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v3, :cond_26

    aget v5, v2, v4

    .line 443
    .local v5, "vibratorId":I
    iget-object v6, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-interface {p1, v5, v6}, Landroid/os/CombinedVibration$VibratorAdapter;->adaptToVibrator(ILandroid/os/VibrationEffect;)Landroid/os/VibrationEffect;

    move-result-object v6

    .line 444
    .local v6, "newEffect":Landroid/os/VibrationEffect;
    if-nez v6, :cond_19

    .line 446
    const/4 v2, 0x0

    return-object v2

    .line 448
    :cond_19
    invoke-virtual {v0, v5, v6}, Landroid/os/CombinedVibration$ParallelCombination;->addVibrator(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$ParallelCombination;

    .line 449
    iget-object v7, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    and-int/2addr v1, v7

    .line 442
    .end local v5    # "vibratorId":I
    .end local v6    # "newEffect":Landroid/os/VibrationEffect;
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 451
    :cond_26
    if-eqz v1, :cond_29

    .line 452
    return-object p0

    .line 455
    :cond_29
    invoke-virtual {v0}, Landroid/os/CombinedVibration$ParallelCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v2

    return-object v2
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 504
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 475
    if-ne p0, p1, :cond_4

    .line 476
    const/4 v0, 0x1

    return v0

    .line 478
    :cond_4
    instance-of v0, p1, Landroid/os/CombinedVibration$Mono;

    if-nez v0, :cond_a

    .line 479
    const/4 v0, 0x0

    return v0

    .line 481
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/os/CombinedVibration$Mono;

    .line 482
    .local v0, "other":Landroid/os/CombinedVibration$Mono;
    iget-object v1, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    iget-object v2, v0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist getDuration()J
    .registers 3

    .line 393
    iget-object v0, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getDuration(Landroid/util/SparseArray;)J
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/VibratorInfo;",
            ">;)J"
        }
    .end annotation

    .line 399
    .local p1, "vibratorInfos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibratorInfo;>;"
    if-nez p1, :cond_7

    .line 400
    invoke-virtual {p0}, Landroid/os/CombinedVibration$Mono;->getDuration()J

    move-result-wide v0

    return-wide v0

    .line 402
    :cond_7
    const-wide/16 v0, 0x0

    .line 403
    .local v0, "maxDuration":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_34

    .line 404
    iget-object v3, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/VibratorInfo;

    invoke-virtual {v3, v4}, Landroid/os/VibrationEffect;->getDuration(Landroid/os/VibratorInfo;)J

    move-result-wide v3

    .line 405
    .local v3, "duration":J
    const-wide v5, 0x7fffffffffffffffL

    cmp-long v5, v3, v5

    if-eqz v5, :cond_33

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_2c

    goto :goto_33

    .line 408
    :cond_2c
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 403
    .end local v3    # "duration":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 406
    .restart local v3    # "duration":J
    :cond_33
    :goto_33
    return-wide v3

    .line 410
    .end local v2    # "i":I
    .end local v3    # "duration":J
    :cond_34
    return-wide v0
.end method

.method public blacklist getEffect()Landroid/os/VibrationEffect;
    .registers 2

    .line 388
    iget-object v0, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    return-object v0
.end method

.method public blacklist hasVendorEffects()Z
    .registers 2

    .line 467
    invoke-static {}, Landroid/os/vibrator/Flags;->vendorVibrationEffects()Z

    move-result v0

    if-nez v0, :cond_8

    .line 468
    const/4 v0, 0x0

    return v0

    .line 470
    :cond_8
    iget-object v0, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$VendorEffect;

    return v0
.end method

.method public blacklist hasVibrator(I)Z
    .registers 3
    .param p1, "vibratorId"    # I

    .line 461
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 487
    iget-object v0, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isHapticFeedbackCandidate()Z
    .registers 2

    .line 416
    iget-object v0, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->isHapticFeedbackCandidate()Z

    move-result v0

    return v0
.end method

.method public blacklist toDebugString()Ljava/lang/String;
    .registers 2

    .line 499
    iget-object v0, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->toDebugString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mono{mEffect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

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
    .registers 5
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

    .line 429
    .local p1, "transformation":Landroid/os/VibrationEffect$Transformation;, "Landroid/os/VibrationEffect$Transformation<TParamT;>;"
    .local p2, "param":Ljava/lang/Object;, "TParamT;"
    iget-object v0, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-interface {p1, v0, p2}, Landroid/os/VibrationEffect$Transformation;->transform(Landroid/os/VibrationEffect;Ljava/lang/Object;)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 430
    .local v0, "newEffect":Landroid/os/VibrationEffect;
    iget-object v1, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 431
    return-object p0

    .line 434
    :cond_f
    invoke-static {v0}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v1

    return-object v1
.end method

.method public blacklist validate()V
    .registers 2

    .line 422
    iget-object v0, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    .line 423
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 509
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    iget-object v0, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v0, p1, p2}, Landroid/os/VibrationEffect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 511
    return-void
.end method
