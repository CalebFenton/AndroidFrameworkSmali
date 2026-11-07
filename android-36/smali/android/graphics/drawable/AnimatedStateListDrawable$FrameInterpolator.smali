.class Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;
.super Ljava/lang/Object;
.source "AnimatedStateListDrawable.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameInterpolator"
.end annotation


# instance fields
.field private greylist-max-o mFrameTimes:[I

.field private greylist-max-o mFrames:I

.field private greylist-max-o mTotalDuration:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/graphics/drawable/AnimationDrawable;Z)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/AnimationDrawable;
    .param p2, "reversed"    # Z

    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 688
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->updateFrames(Landroid/graphics/drawable/AnimationDrawable;Z)I

    .line 689
    return-void
.end method


# virtual methods
.method public whitelist getInterpolation(F)F
    .registers 10
    .param p1, "input"    # F

    .line 717
    iget v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mTotalDuration:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 718
    .local v0, "elapsed":I
    iget v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrames:I

    .line 719
    .local v1, "N":I
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrameTimes:[I

    .line 722
    .local v2, "frameTimes":[I
    move v3, v0

    .line 723
    .local v3, "remaining":I
    const/4 v4, 0x0

    .line 724
    .local v4, "i":I
    :goto_e
    if-ge v4, v1, :cond_1a

    aget v5, v2, v4

    if-lt v3, v5, :cond_1a

    .line 725
    aget v5, v2, v4

    sub-int/2addr v3, v5

    .line 726
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 731
    :cond_1a
    if-ge v4, v1, :cond_22

    .line 732
    int-to-float v5, v3

    iget v6, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mTotalDuration:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    .local v5, "frameElapsed":F
    goto :goto_23

    .line 734
    .end local v5    # "frameElapsed":F
    :cond_22
    const/4 v5, 0x0

    .line 737
    .restart local v5    # "frameElapsed":F
    :goto_23
    int-to-float v6, v4

    int-to-float v7, v1

    div-float/2addr v6, v7

    add-float/2addr v6, v5

    return v6
.end method

.method public greylist-max-o getTotalDuration()I
    .registers 2

    .line 712
    iget v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mTotalDuration:I

    return v0
.end method

.method public greylist-max-o updateFrames(Landroid/graphics/drawable/AnimationDrawable;Z)I
    .registers 8
    .param p1, "d"    # Landroid/graphics/drawable/AnimationDrawable;
    .param p2, "reversed"    # Z

    .line 692
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 693
    .local v0, "N":I
    iput v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrames:I

    .line 695
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrameTimes:[I

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrameTimes:[I

    array-length v1, v1

    if-ge v1, v0, :cond_13

    .line 696
    :cond_f
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrameTimes:[I

    .line 699
    :cond_13
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrameTimes:[I

    .line 700
    .local v1, "frameTimes":[I
    const/4 v2, 0x0

    .line 701
    .local v2, "totalDuration":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    if-ge v3, v0, :cond_2b

    .line 702
    if-eqz p2, :cond_20

    sub-int v4, v0, v3

    add-int/lit8 v4, v4, -0x1

    goto :goto_21

    :cond_20
    move v4, v3

    :goto_21
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v4

    .line 703
    .local v4, "duration":I
    aput v4, v1, v3

    .line 704
    add-int/2addr v2, v4

    .line 701
    .end local v4    # "duration":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 707
    .end local v3    # "i":I
    :cond_2b
    iput v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mTotalDuration:I

    .line 708
    return v2
.end method
