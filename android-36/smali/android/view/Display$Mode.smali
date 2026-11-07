.class public final Landroid/view/Display$Mode;
.super Ljava/lang/Object;
.source "Display.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Display$Mode$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o EMPTY_ARRAY:[Landroid/view/Display$Mode;

.field public static final blacklist INVALID_MODE_ID:I = -0x1


# instance fields
.field private final blacklist mAlternativeRefreshRates:[F

.field private final greylist-max-o mHeight:I

.field private final blacklist mIsSynthetic:Z

.field private final greylist-max-o mModeId:I

.field private final blacklist mPeakRefreshRate:F

.field private final blacklist mSupportedHdrTypes:[I

.field private final blacklist mVsyncRate:F

.field private final greylist-max-o mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2397
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/Display$Mode;

    sput-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    .line 2707
    new-instance v0, Landroid/view/Display$Mode$1;

    invoke-direct {v0}, Landroid/view/Display$Mode$1;-><init>()V

    sput-object v0, Landroid/view/Display$Mode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIF)V
    .registers 13
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "refreshRate"    # F

    .line 2421
    const/4 v0, 0x0

    new-array v7, v0, [F

    new-array v8, v0, [I

    const/4 v2, -0x1

    move v6, p3

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .end local p1    # "width":I
    .end local p2    # "height":I
    .end local p3    # "refreshRate":F
    .local v3, "width":I
    .local v4, "height":I
    .local v5, "refreshRate":F
    invoke-direct/range {v1 .. v8}, Landroid/view/Display$Mode;-><init>(IIIFF[F[I)V

    .line 2423
    return-void
.end method

.method public constructor greylist-max-r <init>(IIIF)V
    .registers 14
    .param p1, "modeId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "refreshRate"    # F

    .line 2430
    const/4 v0, 0x0

    new-array v7, v0, [F

    new-array v8, v0, [I

    move v6, p4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "modeId":I
    .end local p2    # "width":I
    .end local p3    # "height":I
    .end local p4    # "refreshRate":F
    .local v2, "modeId":I
    .local v3, "width":I
    .local v4, "height":I
    .local v5, "refreshRate":F
    invoke-direct/range {v1 .. v8}, Landroid/view/Display$Mode;-><init>(IIIFF[F[I)V

    .line 2431
    return-void
.end method

.method public constructor blacklist <init>(IIIFFZ[F[I)V
    .registers 10
    .param p1, "modeId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "refreshRate"    # F
    .param p5, "vsyncRate"    # F
    .param p6, "isSynthetic"    # Z
    .param p7, "alternativeRefreshRates"    # [F
    .param p8, "supportedHdrTypes"    # [I

    .line 2457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2458
    iput p1, p0, Landroid/view/Display$Mode;->mModeId:I

    .line 2459
    iput p2, p0, Landroid/view/Display$Mode;->mWidth:I

    .line 2460
    iput p3, p0, Landroid/view/Display$Mode;->mHeight:I

    .line 2461
    iput p4, p0, Landroid/view/Display$Mode;->mPeakRefreshRate:F

    .line 2462
    iput p5, p0, Landroid/view/Display$Mode;->mVsyncRate:F

    .line 2463
    iput-boolean p6, p0, Landroid/view/Display$Mode;->mIsSynthetic:Z

    .line 2464
    array-length v0, p7

    .line 2465
    invoke-static {p7, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    .line 2466
    iget-object v0, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    invoke-static {v0}, Ljava/util/Arrays;->sort([F)V

    .line 2467
    array-length v0, p8

    invoke-static {p8, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/Display$Mode;->mSupportedHdrTypes:[I

    .line 2468
    iget-object v0, p0, Landroid/view/Display$Mode;->mSupportedHdrTypes:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 2469
    return-void
.end method

.method public constructor blacklist <init>(IIIFF[F[I)V
    .registers 17
    .param p1, "modeId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "refreshRate"    # F
    .param p5, "vsyncRate"    # F
    .param p6, "alternativeRefreshRates"    # [F
    .param p7, "supportedHdrTypes"    # [I

    .line 2448
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/view/Display$Mode;-><init>(IIIFFZ[F[I)V

    .line 2450
    return-void
.end method

.method public constructor blacklist <init>(IIIF[F[I)V
    .registers 15
    .param p1, "modeId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "refreshRate"    # F
    .param p5, "alternativeRefreshRates"    # [F
    .param p6, "supportedHdrTypes"    # [I

    .line 2439
    move v5, p4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    .end local p1    # "modeId":I
    .end local p2    # "width":I
    .end local p3    # "height":I
    .end local p4    # "refreshRate":F
    .end local p5    # "alternativeRefreshRates":[F
    .end local p6    # "supportedHdrTypes":[I
    .local v1, "modeId":I
    .local v2, "width":I
    .local v3, "height":I
    .local v4, "refreshRate":F
    .local v6, "alternativeRefreshRates":[F
    .local v7, "supportedHdrTypes":[I
    invoke-direct/range {v0 .. v7}, Landroid/view/Display$Mode;-><init>(IIIFF[F[I)V

    .line 2441
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2690
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 2691
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v8

    .line 2690
    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroid/view/Display$Mode;-><init>(IIIFFZ[F[I)V

    .line 2692
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/Display-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/Display$Mode;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 2686
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "other"    # Ljava/lang/Object;

    .line 2641
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2642
    return v0

    .line 2644
    :cond_4
    instance-of v1, p1, Landroid/view/Display$Mode;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 2645
    return v2

    .line 2647
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/view/Display$Mode;

    .line 2648
    .local v1, "that":Landroid/view/Display$Mode;
    iget v3, p0, Landroid/view/Display$Mode;->mModeId:I

    iget v4, v1, Landroid/view/Display$Mode;->mModeId:I

    if-ne v3, v4, :cond_34

    iget v3, v1, Landroid/view/Display$Mode;->mWidth:I

    iget v4, v1, Landroid/view/Display$Mode;->mHeight:I

    iget v5, v1, Landroid/view/Display$Mode;->mPeakRefreshRate:F

    .line 2649
    invoke-virtual {p0, v3, v4, v5}, Landroid/view/Display$Mode;->matches(IIF)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    iget-object v4, v1, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    .line 2650
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Landroid/view/Display$Mode;->mSupportedHdrTypes:[I

    iget-object v4, v1, Landroid/view/Display$Mode;->mSupportedHdrTypes:[I

    .line 2651
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_35

    :cond_34
    move v0, v2

    .line 2648
    :goto_35
    return v0
.end method

.method public blacklist equalsExceptRefreshRate(Landroid/view/Display$Mode;)Z
    .registers 4
    .param p1, "other"    # Landroid/view/Display$Mode;

    .line 2618
    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    iget v1, p1, Landroid/view/Display$Mode;->mWidth:I

    if-ne v0, v1, :cond_e

    iget v0, p0, Landroid/view/Display$Mode;->mHeight:I

    iget v1, p1, Landroid/view/Display$Mode;->mHeight:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist getAlternativeRefreshRates()[F
    .registers 3

    .line 2562
    iget-object v0, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    iget-object v1, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public whitelist getModeId()I
    .registers 2

    .line 2475
    iget v0, p0, Landroid/view/Display$Mode;->mModeId:I

    return v0
.end method

.method public whitelist getPhysicalHeight()I
    .registers 2

    .line 2507
    iget v0, p0, Landroid/view/Display$Mode;->mHeight:I

    return v0
.end method

.method public whitelist getPhysicalWidth()I
    .registers 2

    .line 2491
    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    return v0
.end method

.method public whitelist getRefreshRate()F
    .registers 2

    .line 2514
    iget v0, p0, Landroid/view/Display$Mode;->mPeakRefreshRate:F

    return v0
.end method

.method public whitelist getSupportedHdrTypes()[I
    .registers 3

    .line 2571
    iget-object v0, p0, Landroid/view/Display$Mode;->mSupportedHdrTypes:[I

    iget-object v1, p0, Landroid/view/Display$Mode;->mSupportedHdrTypes:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getVsyncRate()F
    .registers 2

    .line 2526
    iget v0, p0, Landroid/view/Display$Mode;->mVsyncRate:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 2656
    const/4 v0, 0x1

    .line 2657
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x11

    iget v2, p0, Landroid/view/Display$Mode;->mModeId:I

    add-int/2addr v1, v2

    .line 2658
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x11

    iget v2, p0, Landroid/view/Display$Mode;->mWidth:I

    add-int/2addr v0, v2

    .line 2659
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x11

    iget v2, p0, Landroid/view/Display$Mode;->mHeight:I

    add-int/2addr v1, v2

    .line 2660
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x11

    iget v2, p0, Landroid/view/Display$Mode;->mPeakRefreshRate:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 2661
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x11

    iget v2, p0, Landroid/view/Display$Mode;->mVsyncRate:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 2662
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x11

    iget-object v2, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v0, v2

    .line 2663
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x11

    iget-object v2, p0, Landroid/view/Display$Mode;->mSupportedHdrTypes:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    .line 2664
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    return v1
.end method

.method public blacklist isRefreshRateSet()Z
    .registers 3

    .line 2627
    iget v0, p0, Landroid/view/Display$Mode;->mPeakRefreshRate:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist isResolutionSet()Z
    .registers 3

    .line 2636
    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    iget v0, p0, Landroid/view/Display$Mode;->mHeight:I

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public blacklist isSynthetic()Z
    .registers 2

    .line 2537
    iget-boolean v0, p0, Landroid/view/Display$Mode;->mIsSynthetic:Z

    return v0
.end method

.method public greylist-max-o matches(IIF)Z
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "refreshRate"    # F

    .line 2581
    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    if-ne v0, p1, :cond_16

    iget v0, p0, Landroid/view/Display$Mode;->mHeight:I

    if-ne v0, p2, :cond_16

    iget v0, p0, Landroid/view/Display$Mode;->mPeakRefreshRate:F

    .line 2583
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 2581
    :goto_17
    return v0
.end method

.method public blacklist matchesIfValid(IIF)Z
    .registers 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "peakRefreshRate"    # F

    .line 2597
    invoke-static {p1}, Landroid/view/Display;->isWidthValid(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    invoke-static {p2}, Landroid/view/Display;->isHeightValid(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2598
    invoke-static {p3}, Landroid/view/Display;->isRefreshRateValid(F)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2599
    return v1

    .line 2601
    :cond_14
    invoke-static {p1}, Landroid/view/Display;->isWidthValid(I)Z

    move-result v0

    invoke-static {p2}, Landroid/view/Display;->isHeightValid(I)Z

    move-result v2

    if-eq v0, v2, :cond_1f

    .line 2602
    return v1

    .line 2604
    :cond_1f
    invoke-static {p1}, Landroid/view/Display;->isWidthValid(I)Z

    move-result v0

    if-eqz v0, :cond_29

    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    if-ne v0, p1, :cond_46

    .line 2605
    :cond_29
    invoke-static {p2}, Landroid/view/Display;->isHeightValid(I)Z

    move-result v0

    if-eqz v0, :cond_33

    iget v0, p0, Landroid/view/Display$Mode;->mHeight:I

    if-ne v0, p2, :cond_46

    .line 2606
    :cond_33
    invoke-static {p3}, Landroid/view/Display;->isRefreshRateValid(F)Z

    move-result v0

    if-eqz v0, :cond_47

    iget v0, p0, Landroid/view/Display$Mode;->mPeakRefreshRate:F

    .line 2607
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 2608
    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-ne v0, v2, :cond_46

    goto :goto_47

    :cond_46
    goto :goto_48

    :cond_47
    :goto_47
    const/4 v1, 0x1

    .line 2604
    :goto_48
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2669
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2670
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$Mode;->mModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2671
    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$Mode;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2672
    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$Mode;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2673
    const-string v1, ", fps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$Mode;->mPeakRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2674
    const-string v1, ", vsync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$Mode;->mVsyncRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2675
    const-string v1, ", synthetic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/Display$Mode;->mIsSynthetic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2676
    const-string v1, ", alternativeRefreshRates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    .line 2677
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2678
    const-string v1, ", supportedHdrTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/Display$Mode;->mSupportedHdrTypes:[I

    .line 2679
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2680
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2681
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2669
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 2696
    iget v0, p0, Landroid/view/Display$Mode;->mModeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2697
    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2698
    iget v0, p0, Landroid/view/Display$Mode;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2699
    iget v0, p0, Landroid/view/Display$Mode;->mPeakRefreshRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2700
    iget v0, p0, Landroid/view/Display$Mode;->mVsyncRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2701
    iget-boolean v0, p0, Landroid/view/Display$Mode;->mIsSynthetic:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2702
    iget-object v0, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 2703
    iget-object v0, p0, Landroid/view/Display$Mode;->mSupportedHdrTypes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2704
    return-void
.end method
