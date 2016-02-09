.class public Landroid/widget/RatingBar;
.super Landroid/widget/AbsSeekBar;
.source "RatingBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RatingBar$OnRatingBarChangeListener;
    }
.end annotation


# instance fields
.field private mNumStars:I

.field private mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

.field private mProgressOnStartTracking:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 121
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 117
    const v0, 0x101007c

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 83
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    const/high16 v7, -0x40800000    # -1.0f

    #@4
    const/4 v4, 0x0

    #@5
    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@8
    .line 76
    const/4 v6, 0x5

    #@9
    iput v6, p0, Landroid/widget/RatingBar;->mNumStars:I

    #@b
    .line 90
    sget-object v6, Lcom/android/internal/R$styleable;->RatingBar:[I

    #@d
    .line 89
    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@10
    move-result-object v0

    #@11
    .line 91
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v6, p0, Landroid/widget/RatingBar;->mNumStars:I

    #@13
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@16
    move-result v1

    #@17
    .line 92
    .local v1, "numStars":I
    iget-boolean v6, p0, Landroid/widget/RatingBar;->mIsUserSeekable:Z

    #@19
    if-eqz v6, :cond_2

    #@1b
    :goto_0
    const/4 v6, 0x3

    #@1c
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1f
    move-result v4

    #@20
    invoke-virtual {p0, v4}, Landroid/widget/RatingBar;->setIsIndicator(Z)V

    #@23
    .line 93
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@26
    move-result v2

    #@27
    .line 94
    .local v2, "rating":F
    const/4 v4, 0x2

    #@28
    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@2b
    move-result v3

    #@2c
    .line 95
    .local v3, "stepSize":F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@2f
    .line 97
    if-lez v1, :cond_0

    #@31
    iget v4, p0, Landroid/widget/RatingBar;->mNumStars:I

    #@33
    if-eq v1, v4, :cond_0

    #@35
    .line 98
    invoke-virtual {p0, v1}, Landroid/widget/RatingBar;->setNumStars(I)V

    #@38
    .line 101
    :cond_0
    cmpl-float v4, v3, v8

    #@3a
    if-ltz v4, :cond_3

    #@3c
    .line 102
    invoke-virtual {p0, v3}, Landroid/widget/RatingBar;->setStepSize(F)V

    #@3f
    .line 107
    :goto_1
    cmpl-float v4, v2, v8

    #@41
    if-ltz v4, :cond_1

    #@43
    .line 108
    invoke-virtual {p0, v2}, Landroid/widget/RatingBar;->setRating(F)V

    #@46
    .line 113
    :cond_1
    const v4, 0x3f8ccccd    # 1.1f

    #@49
    iput v4, p0, Landroid/widget/RatingBar;->mTouchProgressOffset:F

    #@4b
    .line 86
    return-void

    #@4c
    .end local v2    # "rating":F
    .end local v3    # "stepSize":F
    :cond_2
    move v4, v5

    #@4d
    .line 92
    goto :goto_0

    #@4e
    .line 104
    .restart local v2    # "rating":F
    .restart local v3    # "stepSize":F
    :cond_3
    const/high16 v4, 0x3f000000    # 0.5f

    #@50
    invoke-virtual {p0, v4}, Landroid/widget/RatingBar;->setStepSize(F)V

    #@53
    goto :goto_1
.end method

.method private getProgressPerStar()F
    .locals 2

    #@0
    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    #@2
    .line 237
    iget v0, p0, Landroid/widget/RatingBar;->mNumStars:I

    #@4
    if-lez v0, :cond_0

    #@6
    .line 238
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMax()I

    #@9
    move-result v0

    #@a
    int-to-float v0, v0

    #@b
    mul-float/2addr v0, v1

    #@c
    iget v1, p0, Landroid/widget/RatingBar;->mNumStars:I

    #@e
    int-to-float v1, v1

    #@f
    div-float/2addr v0, v1

    #@10
    return v0

    #@11
    .line 240
    :cond_0
    return v1
.end method

.method private updateSecondaryProgress(I)V
    .locals 8
    .param p1, "progress"    # I

    #@0
    .prologue
    .line 271
    invoke-direct {p0}, Landroid/widget/RatingBar;->getProgressPerStar()F

    #@3
    move-result v1

    #@4
    .line 272
    .local v1, "ratio":F
    const/4 v3, 0x0

    #@5
    cmpl-float v3, v1, v3

    #@7
    if-lez v3, :cond_0

    #@9
    .line 273
    int-to-float v3, p1

    #@a
    div-float v0, v3, v1

    #@c
    .line 274
    .local v0, "progressInStars":F
    float-to-double v4, v0

    #@d
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    #@10
    move-result-wide v4

    #@11
    float-to-double v6, v1

    #@12
    mul-double/2addr v4, v6

    #@13
    double-to-int v2, v4

    #@14
    .line 275
    .local v2, "secondaryProgress":I
    invoke-virtual {p0, v2}, Landroid/widget/RatingBar;->setSecondaryProgress(I)V

    #@17
    .line 270
    .end local v0    # "progressInStars":F
    .end local v2    # "secondaryProgress":I
    :cond_0
    return-void
.end method


# virtual methods
.method dispatchRatingChange(Z)V
    .locals 2
    .param p1, "fromUser"    # Z

    #@0
    .prologue
    .line 315
    iget-object v0, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 316
    iget-object v0, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    #@6
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getRating()F

    #@9
    move-result v1

    #@a
    invoke-interface {v0, p0, v1, p1}, Landroid/widget/RatingBar$OnRatingBarChangeListener;->onRatingChanged(Landroid/widget/RatingBar;FZ)V

    #@d
    .line 314
    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 333
    const-class v0, Landroid/widget/RatingBar;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 1

    #@0
    .prologue
    .line 247
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    #@2
    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    #@5
    return-object v0
.end method

.method public getNumStars()I
    .locals 1

    #@0
    .prologue
    .line 186
    iget v0, p0, Landroid/widget/RatingBar;->mNumStars:I

    #@2
    return v0
.end method

.method public getOnRatingBarChangeListener()Landroid/widget/RatingBar$OnRatingBarChangeListener;
    .locals 1

    #@0
    .prologue
    .line 138
    iget-object v0, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    #@2
    return-object v0
.end method

.method public getRating()F
    .locals 2

    #@0
    .prologue
    .line 204
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    #@3
    move-result v0

    #@4
    int-to-float v0, v0

    #@5
    invoke-direct {p0}, Landroid/widget/RatingBar;->getProgressPerStar()F

    #@8
    move-result v1

    #@9
    div-float/2addr v0, v1

    #@a
    return v0
.end method

.method public getStepSize()F
    .locals 2

    #@0
    .prologue
    .line 230
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getNumStars()I

    #@3
    move-result v0

    #@4
    int-to-float v0, v0

    #@5
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMax()I

    #@8
    move-result v1

    #@9
    int-to-float v1, v1

    #@a
    div-float/2addr v0, v1

    #@b
    return v0
.end method

.method public isIndicator()Z
    .locals 1

    #@0
    .prologue
    .line 160
    iget-boolean v0, p0, Landroid/widget/RatingBar;->mIsUserSeekable:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x1

    #@7
    goto :goto_0
.end method

.method onKeyChange()V
    .locals 1

    #@0
    .prologue
    .line 310
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    #@3
    .line 311
    const/4 v0, 0x1

    #@4
    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->dispatchRatingChange(Z)V

    #@7
    .line 309
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 281
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSeekBar;->onMeasure(II)V

    #@4
    .line 283
    iget-object v1, p0, Landroid/widget/RatingBar;->mSampleTile:Landroid/graphics/Bitmap;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 286
    iget-object v1, p0, Landroid/widget/RatingBar;->mSampleTile:Landroid/graphics/Bitmap;

    #@a
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    #@d
    move-result v1

    #@e
    iget v2, p0, Landroid/widget/RatingBar;->mNumStars:I

    #@10
    mul-int v0, v1, v2

    #@12
    .line 287
    .local v0, "width":I
    const/4 v1, 0x0

    #@13
    invoke-static {v0, p1, v1}, Landroid/widget/RatingBar;->resolveSizeAndState(III)I

    #@16
    move-result v1

    #@17
    .line 288
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMeasuredHeight()I

    #@1a
    move-result v2

    #@1b
    .line 287
    invoke-virtual {p0, v1, v2}, Landroid/widget/RatingBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .end local v0    # "width":I
    :cond_0
    monitor-exit p0

    #@1f
    .line 280
    return-void

    #@20
    :catchall_0
    move-exception v1

    #@21
    monitor-exit p0

    #@22
    throw v1
.end method

.method onProgressRefresh(FZI)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z
    .param p3, "progress"    # I

    #@0
    .prologue
    .line 252
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsSeekBar;->onProgressRefresh(FZI)V

    #@3
    .line 255
    invoke-direct {p0, p3}, Landroid/widget/RatingBar;->updateSecondaryProgress(I)V

    #@6
    .line 257
    if-nez p2, :cond_0

    #@8
    .line 259
    const/4 v0, 0x0

    #@9
    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->dispatchRatingChange(Z)V

    #@c
    .line 251
    :cond_0
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    #@0
    .prologue
    .line 294
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/widget/RatingBar;->mProgressOnStartTracking:I

    #@6
    .line 296
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    #@9
    .line 293
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 2

    #@0
    .prologue
    .line 301
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    #@3
    .line 303
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    #@6
    move-result v0

    #@7
    iget v1, p0, Landroid/widget/RatingBar;->mProgressOnStartTracking:I

    #@9
    if-eq v0, v1, :cond_0

    #@b
    .line 304
    const/4 v0, 0x1

    #@c
    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->dispatchRatingChange(Z)V

    #@f
    .line 300
    :cond_0
    return-void
.end method

.method public setIsIndicator(Z)V
    .locals 3
    .param p1, "isIndicator"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 150
    if-eqz p1, :cond_0

    #@4
    move v0, v1

    #@5
    :goto_0
    iput-boolean v0, p0, Landroid/widget/RatingBar;->mIsUserSeekable:Z

    #@7
    .line 151
    if-eqz p1, :cond_1

    #@9
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/RatingBar;->setFocusable(Z)V

    #@c
    .line 149
    return-void

    #@d
    :cond_0
    move v0, v2

    #@e
    .line 150
    goto :goto_0

    #@f
    :cond_1
    move v1, v2

    #@10
    .line 151
    goto :goto_1
.end method

.method public declared-synchronized setMax(I)V
    .locals 1
    .param p1, "max"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 324
    if-gtz p1, :cond_0

    #@3
    monitor-exit p0

    #@4
    .line 325
    return-void

    #@5
    .line 328
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->setMax(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    .line 322
    return-void

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public setNumStars(I)V
    .locals 0
    .param p1, "numStars"    # I

    #@0
    .prologue
    .line 171
    if-gtz p1, :cond_0

    #@2
    .line 172
    return-void

    #@3
    .line 175
    :cond_0
    iput p1, p0, Landroid/widget/RatingBar;->mNumStars:I

    #@5
    .line 178
    invoke-virtual {p0}, Landroid/widget/RatingBar;->requestLayout()V

    #@8
    .line 170
    return-void
.end method

.method public setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/RatingBar$OnRatingBarChangeListener;

    #@0
    .prologue
    .line 130
    iput-object p1, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    #@2
    .line 129
    return-void
.end method

.method public setRating(F)V
    .locals 1
    .param p1, "rating"    # F

    #@0
    .prologue
    .line 195
    invoke-direct {p0}, Landroid/widget/RatingBar;->getProgressPerStar()F

    #@3
    move-result v0

    #@4
    mul-float/2addr v0, p1

    #@5
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@8
    move-result v0

    #@9
    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->setProgress(I)V

    #@c
    .line 194
    return-void
.end method

.method public setStepSize(F)V
    .locals 4
    .param p1, "stepSize"    # F

    #@0
    .prologue
    .line 214
    const/4 v2, 0x0

    #@1
    cmpg-float v2, p1, v2

    #@3
    if-gtz v2, :cond_0

    #@5
    .line 215
    return-void

    #@6
    .line 218
    :cond_0
    iget v2, p0, Landroid/widget/RatingBar;->mNumStars:I

    #@8
    int-to-float v2, v2

    #@9
    div-float v0, v2, p1

    #@b
    .line 219
    .local v0, "newMax":F
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMax()I

    #@e
    move-result v2

    #@f
    int-to-float v2, v2

    #@10
    div-float v2, v0, v2

    #@12
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    #@15
    move-result v3

    #@16
    int-to-float v3, v3

    #@17
    mul-float/2addr v2, v3

    #@18
    float-to-int v1, v2

    #@19
    .line 220
    .local v1, "newProgress":I
    float-to-int v2, v0

    #@1a
    invoke-virtual {p0, v2}, Landroid/widget/RatingBar;->setMax(I)V

    #@1d
    .line 221
    invoke-virtual {p0, v1}, Landroid/widget/RatingBar;->setProgress(I)V

    #@20
    .line 213
    return-void
.end method
