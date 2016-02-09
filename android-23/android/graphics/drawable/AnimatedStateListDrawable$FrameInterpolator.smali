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
.field private mFrameTimes:[I

.field private mFrames:I

.field private mTotalDuration:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AnimationDrawable;Z)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/AnimationDrawable;
    .param p2, "reversed"    # Z

    #@0
    .prologue
    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 682
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->updateFrames(Landroid/graphics/drawable/AnimationDrawable;Z)I

    #@6
    .line 681
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 8
    .param p1, "input"    # F

    #@0
    .prologue
    .line 711
    iget v6, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mTotalDuration:I

    #@2
    int-to-float v6, v6

    #@3
    mul-float/2addr v6, p1

    #@4
    const/high16 v7, 0x3f000000    # 0.5f

    #@6
    add-float/2addr v6, v7

    #@7
    float-to-int v1, v6

    #@8
    .line 712
    .local v1, "elapsed":I
    iget v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrames:I

    #@a
    .line 713
    .local v0, "N":I
    iget-object v3, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrameTimes:[I

    #@c
    .line 716
    .local v3, "frameTimes":[I
    move v5, v1

    #@d
    .line 717
    .local v5, "remaining":I
    const/4 v4, 0x0

    #@e
    .line 718
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    #@10
    aget v6, v3, v4

    #@12
    if-lt v5, v6, :cond_0

    #@14
    .line 719
    aget v6, v3, v4

    #@16
    sub-int/2addr v5, v6

    #@17
    .line 720
    add-int/lit8 v4, v4, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 725
    :cond_0
    if-ge v4, v0, :cond_1

    #@1c
    .line 726
    int-to-float v6, v5

    #@1d
    iget v7, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mTotalDuration:I

    #@1f
    int-to-float v7, v7

    #@20
    div-float v2, v6, v7

    #@22
    .line 731
    .local v2, "frameElapsed":F
    :goto_1
    int-to-float v6, v4

    #@23
    int-to-float v7, v0

    #@24
    div-float/2addr v6, v7

    #@25
    add-float/2addr v6, v2

    #@26
    return v6

    #@27
    .line 728
    .end local v2    # "frameElapsed":F
    :cond_1
    const/4 v2, 0x0

    #@28
    .restart local v2    # "frameElapsed":F
    goto :goto_1
.end method

.method public getTotalDuration()I
    .locals 1

    #@0
    .prologue
    .line 706
    iget v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mTotalDuration:I

    #@2
    return v0
.end method

.method public updateFrames(Landroid/graphics/drawable/AnimationDrawable;Z)I
    .locals 6
    .param p1, "d"    # Landroid/graphics/drawable/AnimationDrawable;
    .param p2, "reversed"    # Z

    #@0
    .prologue
    .line 686
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    #@3
    move-result v0

    #@4
    .line 687
    .local v0, "N":I
    iput v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrames:I

    #@6
    .line 689
    iget-object v5, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrameTimes:[I

    #@8
    if-eqz v5, :cond_0

    #@a
    iget-object v5, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrameTimes:[I

    #@c
    array-length v5, v5

    #@d
    if-ge v5, v0, :cond_1

    #@f
    .line 690
    :cond_0
    new-array v5, v0, [I

    #@11
    iput-object v5, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrameTimes:[I

    #@13
    .line 693
    :cond_1
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrameTimes:[I

    #@15
    .line 694
    .local v2, "frameTimes":[I
    const/4 v4, 0x0

    #@16
    .line 695
    .local v4, "totalDuration":I
    const/4 v3, 0x0

    #@17
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    #@19
    .line 696
    if-eqz p2, :cond_2

    #@1b
    sub-int v5, v0, v3

    #@1d
    add-int/lit8 v5, v5, -0x1

    #@1f
    :goto_1
    invoke-virtual {p1, v5}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    #@22
    move-result v1

    #@23
    .line 697
    .local v1, "duration":I
    aput v1, v2, v3

    #@25
    .line 698
    add-int/2addr v4, v1

    #@26
    .line 695
    add-int/lit8 v3, v3, 0x1

    #@28
    goto :goto_0

    #@29
    .end local v1    # "duration":I
    :cond_2
    move v5, v3

    #@2a
    .line 696
    goto :goto_1

    #@2b
    .line 701
    :cond_3
    iput v4, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mTotalDuration:I

    #@2d
    .line 702
    return v4
.end method
