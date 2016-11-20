.class public Landroid/view/animation/LayoutAnimationController;
.super Ljava/lang/Object;
.source "LayoutAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    }
.end annotation


# static fields
.field public static final ORDER_NORMAL:I = 0x0

.field public static final ORDER_RANDOM:I = 0x2

.field public static final ORDER_REVERSE:I = 0x1


# instance fields
.field protected mAnimation:Landroid/view/animation/Animation;

.field private mDelay:F

.field private mDuration:J

.field protected mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxDelay:J

.field private mOrder:I

.field protected mRandomizer:Ljava/util/Random;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 106
    sget-object v3, Lcom/android/internal/R$styleable;->LayoutAnimation:[I

    #@6
    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object v0

    #@a
    .line 109
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    #@b
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@e
    move-result-object v3

    #@f
    .line 108
    invoke-static {v3}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    #@12
    move-result-object v1

    #@13
    .line 110
    .local v1, "d":Landroid/view/animation/Animation$Description;
    iget v3, v1, Landroid/view/animation/Animation$Description;->value:F

    #@15
    iput v3, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    #@17
    .line 112
    const/4 v3, 0x3

    #@18
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1b
    move-result v3

    #@1c
    iput v3, p0, Landroid/view/animation/LayoutAnimationController;->mOrder:I

    #@1e
    .line 114
    const/4 v3, 0x2

    #@1f
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@22
    move-result v2

    #@23
    .line 115
    .local v2, "resource":I
    if-lez v2, :cond_0

    #@25
    .line 116
    invoke-virtual {p0, p1, v2}, Landroid/view/animation/LayoutAnimationController;->setAnimation(Landroid/content/Context;I)V

    #@28
    .line 119
    :cond_0
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@2b
    move-result v2

    #@2c
    .line 120
    if-lez v2, :cond_1

    #@2e
    .line 121
    invoke-virtual {p0, p1, v2}, Landroid/view/animation/LayoutAnimationController;->setInterpolator(Landroid/content/Context;I)V

    #@31
    .line 124
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@34
    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    .line 134
    const/high16 v0, 0x3f000000    # 0.5f

    #@2
    invoke-direct {p0, p1, v0}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    #@5
    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;F)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "delay"    # F

    #@0
    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 145
    iput p2, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    #@5
    .line 146
    invoke-virtual {p0, p1}, Landroid/view/animation/LayoutAnimationController;->setAnimation(Landroid/view/animation/Animation;)V

    #@8
    .line 144
    return-void
.end method


# virtual methods
.method public getAnimation()Landroid/view/animation/Animation;
    .locals 1

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    #@2
    return-object v0
.end method

.method public final getAnimationForView(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 323
    invoke-virtual {p0, p1}, Landroid/view/animation/LayoutAnimationController;->getDelayForView(Landroid/view/View;)J

    #@3
    move-result-wide v4

    #@4
    iget-object v6, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    #@6
    invoke-virtual {v6}, Landroid/view/animation/Animation;->getStartOffset()J

    #@9
    move-result-wide v6

    #@a
    add-long v2, v4, v6

    #@c
    .line 324
    .local v2, "delay":J
    iget-wide v4, p0, Landroid/view/animation/LayoutAnimationController;->mMaxDelay:J

    #@e
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    #@11
    move-result-wide v4

    #@12
    iput-wide v4, p0, Landroid/view/animation/LayoutAnimationController;->mMaxDelay:J

    #@14
    .line 327
    :try_start_0
    iget-object v4, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    #@16
    invoke-virtual {v4}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    #@19
    move-result-object v0

    #@1a
    .line 328
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 329
    return-object v0

    #@1e
    .line 330
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :catch_0
    move-exception v1

    #@1f
    .line 331
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v4, 0x0

    #@20
    return-object v4
.end method

.method public getDelay()F
    .locals 1

    #@0
    .prologue
    .line 268
    iget v0, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    #@2
    return v0
.end method

.method protected getDelayForView(Landroid/view/View;)J
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 371
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v1

    #@4
    .line 372
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, v1, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    #@6
    .line 374
    .local v3, "params":Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    if-nez v3, :cond_0

    #@8
    .line 375
    const-wide/16 v8, 0x0

    #@a
    return-wide v8

    #@b
    .line 378
    :cond_0
    iget v5, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    #@d
    iget-object v8, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    #@f
    invoke-virtual {v8}, Landroid/view/animation/Animation;->getDuration()J

    #@12
    move-result-wide v8

    #@13
    long-to-float v8, v8

    #@14
    mul-float v0, v5, v8

    #@16
    .line 379
    .local v0, "delay":F
    invoke-virtual {p0, v3}, Landroid/view/animation/LayoutAnimationController;->getTransformedIndex(Landroid/view/animation/LayoutAnimationController$AnimationParameters;)I

    #@19
    move-result v5

    #@1a
    int-to-float v5, v5

    #@1b
    mul-float/2addr v5, v0

    #@1c
    float-to-long v6, v5

    #@1d
    .line 380
    .local v6, "viewDelay":J
    iget v5, v3, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    #@1f
    int-to-float v5, v5

    #@20
    mul-float v4, v0, v5

    #@22
    .line 382
    .local v4, "totalDelay":F
    iget-object v5, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    #@24
    if-nez v5, :cond_1

    #@26
    .line 383
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    #@28
    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    #@2b
    iput-object v5, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    #@2d
    .line 386
    :cond_1
    long-to-float v5, v6

    #@2e
    div-float v2, v5, v4

    #@30
    .line 387
    .local v2, "normalizedDelay":F
    iget-object v5, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    #@32
    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@35
    move-result v2

    #@36
    .line 389
    mul-float v5, v2, v4

    #@38
    float-to-long v8, v5

    #@39
    return-wide v8
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    #@0
    .prologue
    .line 256
    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    #@2
    return-object v0
.end method

.method public getOrder()I
    .locals 1

    #@0
    .prologue
    .line 158
    iget v0, p0, Landroid/view/animation/LayoutAnimationController;->mOrder:I

    #@2
    return v0
.end method

.method protected getTransformedIndex(Landroid/view/animation/LayoutAnimationController$AnimationParameters;)I
    .locals 2
    .param p1, "params"    # Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    #@0
    .prologue
    .line 404
    invoke-virtual {p0}, Landroid/view/animation/LayoutAnimationController;->getOrder()I

    #@3
    move-result v0

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 414
    iget v0, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    #@9
    return v0

    #@a
    .line 406
    :pswitch_0
    iget v0, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    #@c
    add-int/lit8 v0, v0, -0x1

    #@e
    iget v1, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    #@10
    sub-int/2addr v0, v1

    #@11
    return v0

    #@12
    .line 408
    :pswitch_1
    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mRandomizer:Ljava/util/Random;

    #@14
    if-nez v0, :cond_0

    #@16
    .line 409
    new-instance v0, Ljava/util/Random;

    #@18
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    #@1b
    iput-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mRandomizer:Ljava/util/Random;

    #@1d
    .line 411
    :cond_0
    iget v0, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    #@1f
    int-to-float v0, v0

    #@20
    iget-object v1, p0, Landroid/view/animation/LayoutAnimationController;->mRandomizer:Ljava/util/Random;

    #@22
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    #@25
    move-result v1

    #@26
    mul-float/2addr v0, v1

    #@27
    float-to-int v0, v0

    #@28
    return v0

    #@29
    .line 404
    nop

    #@2a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isDone()Z
    .locals 6

    #@0
    .prologue
    .line 342
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    .line 343
    iget-object v2, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    #@6
    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartTime()J

    #@9
    move-result-wide v2

    #@a
    iget-wide v4, p0, Landroid/view/animation/LayoutAnimationController;->mMaxDelay:J

    #@c
    add-long/2addr v2, v4

    #@d
    iget-wide v4, p0, Landroid/view/animation/LayoutAnimationController;->mDuration:J

    #@f
    add-long/2addr v2, v4

    #@10
    .line 342
    cmp-long v0, v0, v2

    #@12
    if-lez v0, :cond_0

    #@14
    const/4 v0, 0x1

    #@15
    :goto_0
    return v0

    #@16
    :cond_0
    const/4 v0, 0x0

    #@17
    goto :goto_0
.end method

.method public setAnimation(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    #@0
    .prologue
    .line 186
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/view/animation/LayoutAnimationController;->setAnimation(Landroid/view/animation/Animation;)V

    #@7
    .line 185
    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    .line 201
    iput-object p1, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    #@2
    .line 202
    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    #@4
    const/4 v1, 0x1

    #@5
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    #@8
    .line 200
    return-void
.end method

.method public setDelay(F)V
    .locals 0
    .param p1, "delay"    # F

    #@0
    .prologue
    .line 284
    iput p1, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    #@2
    .line 283
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    #@0
    .prologue
    .line 231
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/view/animation/LayoutAnimationController;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@7
    .line 230
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    #@0
    .prologue
    .line 246
    iput-object p1, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    #@2
    .line 245
    return-void
.end method

.method public setOrder(I)V
    .locals 0
    .param p1, "order"    # I

    #@0
    .prologue
    .line 170
    iput p1, p0, Landroid/view/animation/LayoutAnimationController;->mOrder:I

    #@2
    .line 169
    return-void
.end method

.method public start()V
    .locals 4

    #@0
    .prologue
    .line 301
    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    #@2
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    #@5
    move-result-wide v0

    #@6
    iput-wide v0, p0, Landroid/view/animation/LayoutAnimationController;->mDuration:J

    #@8
    .line 302
    const-wide/high16 v0, -0x8000000000000000L

    #@a
    iput-wide v0, p0, Landroid/view/animation/LayoutAnimationController;->mMaxDelay:J

    #@c
    .line 303
    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    #@e
    const-wide/16 v2, -0x1

    #@10
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    #@13
    .line 300
    return-void
.end method

.method public willOverlap()Z
    .locals 2

    #@0
    .prologue
    .line 294
    iget v0, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    #@2
    const/high16 v1, 0x3f800000    # 1.0f

    #@4
    cmpg-float v0, v0, v1

    #@6
    if-gez v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method
