.class public abstract Landroid/view/animation/Animation;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/Animation$AnimationListener;,
        Landroid/view/animation/Animation$NoImagePreloadHolder;,
        Landroid/view/animation/Animation$Description;
    }
.end annotation


# static fields
.field public static final whitelist ABSOLUTE:I = 0x0

.field public static final whitelist INFINITE:I = -0x1

.field public static final whitelist RELATIVE_TO_PARENT:I = 0x2

.field public static final whitelist RELATIVE_TO_SELF:I = 0x1

.field public static final whitelist RESTART:I = 0x1

.field public static final whitelist REVERSE:I = 0x2

.field public static final whitelist START_ON_FIRST_FRAME:I = -0x1

.field public static final whitelist ZORDER_BOTTOM:I = -0x1

.field public static final whitelist ZORDER_NORMAL:I = 0x0

.field public static final whitelist ZORDER_TOP:I = 0x1


# instance fields
.field private final greylist-max-o guard:Ldalvik/system/CloseGuard;

.field private blacklist mBackdropColor:I

.field greylist-max-o mCycleFlip:Z

.field greylist-max-o mDuration:J

.field greylist-max-o mEnded:Z

.field greylist-max-o mFillAfter:Z

.field greylist-max-o mFillBefore:Z

.field greylist-max-o mFillEnabled:Z

.field private blacklist mHasRoundedCorners:Z

.field greylist-max-o mInitialized:Z

.field greylist-max-o mInterpolator:Landroid/view/animation/Interpolator;

.field private greylist-max-p mListener:Landroid/view/animation/Animation$AnimationListener;

.field private greylist-max-o mListenerHandler:Landroid/os/Handler;

.field private greylist-max-o mMore:Z

.field private greylist-max-o mOnEnd:Ljava/lang/Runnable;

.field private greylist-max-o mOnRepeat:Ljava/lang/Runnable;

.field private greylist-max-o mOnStart:Ljava/lang/Runnable;

.field private greylist-max-o mOneMoreTime:Z

.field greylist mPreviousRegion:Landroid/graphics/RectF;

.field greylist mPreviousTransformation:Landroid/view/animation/Transformation;

.field greylist mRegion:Landroid/graphics/RectF;

.field greylist-max-o mRepeatCount:I

.field greylist-max-o mRepeatMode:I

.field greylist-max-o mRepeated:I

.field private greylist-max-o mScaleFactor:F

.field private blacklist mShowBackdrop:Z

.field private greylist-max-o mShowWallpaper:Z

.field greylist-max-o mStartOffset:J

.field greylist-max-o mStartTime:J

.field greylist-max-o mStarted:Z

.field greylist mTransformation:Landroid/view/animation/Transformation;

.field private greylist-max-o mZAdjustment:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 5

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 115
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 121
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 127
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 134
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    .line 140
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    .line 145
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    .line 150
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 167
    iput v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 172
    iput v0, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 179
    iput v1, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    .line 208
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    .line 220
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 221
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 223
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 225
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 227
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 229
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 232
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    .line 244
    invoke-virtual {p0}, Landroid/view/animation/Animation;->ensureInterpolator()V

    .line 245
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 115
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 121
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 127
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 134
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    .line 140
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    .line 145
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    .line 150
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 167
    iput v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 172
    iput v0, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 179
    iput v1, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    .line 208
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    .line 220
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 221
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 223
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 225
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 227
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 229
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 232
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v2

    iput-object v2, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    .line 255
    sget-object v2, Lcom/android/internal/R$styleable;->Animation:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 257
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 258
    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 260
    const/16 v3, 0x9

    iget-boolean v4, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 261
    const/4 v3, 0x3

    iget-boolean v4, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 262
    const/4 v3, 0x4

    iget-boolean v4, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 264
    const/4 v3, 0x6

    iget v4, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 265
    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 267
    const/16 v3, 0x8

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 269
    const/16 v3, 0xc

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setBackdropColor(I)V

    .line 271
    nop

    .line 272
    const/16 v3, 0xa

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 271
    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 273
    nop

    .line 274
    const/16 v3, 0xe

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 273
    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setShowWallpaper(Z)V

    .line 275
    nop

    .line 276
    const/16 v3, 0xd

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 275
    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setHasRoundedCorners(Z)V

    .line 277
    nop

    .line 278
    const/16 v3, 0xb

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 277
    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setShowBackdrop(Z)V

    .line 280
    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 282
    .local v0, "resID":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 284
    if-lez v0, :cond_d6

    .line 285
    invoke-virtual {p0, p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    .line 288
    :cond_d6
    invoke-virtual {p0}, Landroid/view/animation/Animation;->ensureInterpolator()V

    .line 289
    return-void
.end method

.method private greylist-max-o fireAnimationEnd()V
    .registers 3

    .line 1100
    invoke-direct {p0}, Landroid/view/animation/Animation;->hasAnimationListener()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1101
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroid/view/animation/Animation;->dispatchAnimationEnd()V

    goto :goto_15

    .line 1102
    :cond_e
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/animation/Animation;->mOnEnd:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 1104
    :cond_15
    :goto_15
    return-void
.end method

.method private greylist-max-o fireAnimationRepeat()V
    .registers 3

    .line 1093
    invoke-direct {p0}, Landroid/view/animation/Animation;->hasAnimationListener()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1094
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroid/view/animation/Animation;->dispatchAnimationRepeat()V

    goto :goto_15

    .line 1095
    :cond_e
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/animation/Animation;->mOnRepeat:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 1097
    :cond_15
    :goto_15
    return-void
.end method

.method private greylist-max-o fireAnimationStart()V
    .registers 3

    .line 1086
    invoke-direct {p0}, Landroid/view/animation/Animation;->hasAnimationListener()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1087
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroid/view/animation/Animation;->dispatchAnimationStart()V

    goto :goto_15

    .line 1088
    :cond_e
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/animation/Animation;->mOnStart:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 1090
    :cond_15
    :goto_15
    return-void
.end method

.method private blacklist hasAnimationListener()Z
    .registers 2

    .line 952
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private greylist-max-o isCanceled()Z
    .registers 5

    .line 1082
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method


# virtual methods
.method protected whitelist applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 1172
    return-void
.end method

.method public whitelist cancel()V
    .registers 3

    .line 329
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    if-nez v0, :cond_13

    .line 330
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationEnd()V

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 332
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 335
    :cond_13
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 336
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 337
    return-void
.end method

.method protected whitelist clone()Landroid/view/animation/Animation;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 293
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 294
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 295
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 296
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 297
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 298
    return-object v0
.end method

.method protected bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist computeDurationHint()J
    .registers 5

    .line 983
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getRepeatCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist detach()V
    .registers 2

    .line 344
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    if-nez v0, :cond_13

    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 346
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 347
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationEnd()V

    .line 349
    :cond_13
    return-void
.end method

.method blacklist dispatchAnimationEnd()V
    .registers 2

    .line 1119
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_9

    .line 1120
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 1122
    :cond_9
    return-void
.end method

.method blacklist dispatchAnimationRepeat()V
    .registers 2

    .line 1113
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_9

    .line 1114
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    .line 1116
    :cond_9
    return-void
.end method

.method blacklist dispatchAnimationStart()V
    .registers 2

    .line 1107
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_9

    .line 1108
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 1110
    :cond_9
    return-void
.end method

.method protected whitelist ensureInterpolator()V
    .registers 2

    .line 971
    iget-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_b

    .line 972
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 974
    :cond_b
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1254
    :try_start_0
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 1255
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_e

    .line 1258
    :cond_9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1259
    nop

    .line 1260
    return-void

    .line 1258
    :catchall_e
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1259
    throw v0
.end method

.method public whitelist getBackdropColor()I
    .registers 2

    .line 924
    iget v0, p0, Landroid/view/animation/Animation;->mBackdropColor:I

    return v0
.end method

.method public whitelist getBackgroundColor()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 850
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDetachWallpaper()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 861
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getDuration()J
    .registers 3

    .line 771
    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    return-wide v0
.end method

.method public blacklist getExtensionEdges()I
    .registers 2

    .line 891
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getFillAfter()Z
    .registers 2

    .line 826
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    return v0
.end method

.method public whitelist getFillBefore()Z
    .registers 2

    .line 815
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    return v0
.end method

.method public whitelist getInterpolator()Landroid/view/animation/Interpolator;
    .registers 2

    .line 750
    iget-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public greylist getInvalidateRegion(IIIILandroid/graphics/RectF;Landroid/view/animation/Transformation;)V
    .registers 13
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "invalidate"    # Landroid/graphics/RectF;
    .param p6, "transformation"    # Landroid/view/animation/Transformation;

    .line 1212
    iget-object v0, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 1213
    .local v0, "tempRegion":Landroid/graphics/RectF;
    iget-object v1, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 1215
    .local v1, "previousRegion":Landroid/graphics/RectF;
    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    invoke-virtual {p5, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1216
    invoke-virtual {p6}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1218
    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p5, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 1219
    invoke-virtual {v0, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1220
    invoke-virtual {p5, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 1222
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1224
    iget-object v2, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 1225
    .local v2, "tempTransformation":Landroid/view/animation/Transformation;
    iget-object v3, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 1227
    .local v3, "previousTransformation":Landroid/view/animation/Transformation;
    invoke-virtual {v2, p6}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 1228
    invoke-virtual {p6, v3}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 1229
    invoke-virtual {v3, v2}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 1230
    return-void
.end method

.method public whitelist getRepeatCount()I
    .registers 2

    .line 802
    iget v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    return v0
.end method

.method public whitelist getRepeatMode()I
    .registers 2

    .line 791
    iget v0, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    return v0
.end method

.method protected whitelist getScaleFactor()F
    .registers 2

    .line 668
    iget v0, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    return v0
.end method

.method public whitelist getShowBackdrop()Z
    .registers 2

    .line 910
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mShowBackdrop:Z

    return v0
.end method

.method public greylist-max-o getShowWallpaper()Z
    .registers 2

    .line 871
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mShowWallpaper:Z

    return v0
.end method

.method public whitelist getStartOffset()J
    .registers 3

    .line 781
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    return-wide v0
.end method

.method public whitelist getStartTime()J
    .registers 3

    .line 761
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    return-wide v0
.end method

.method public whitelist getTransformation(JLandroid/view/animation/Transformation;)Z
    .registers 20
    .param p1, "currentTime"    # J
    .param p3, "outTransformation"    # Landroid/view/animation/Transformation;

    .line 1012
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-wide v3, v0, Landroid/view/animation/Animation;->mStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_e

    .line 1013
    iput-wide v1, v0, Landroid/view/animation/Animation;->mStartTime:J

    .line 1016
    :cond_e
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v3

    .line 1017
    .local v3, "startOffset":J
    iget-wide v7, v0, Landroid/view/animation/Animation;->mDuration:J

    .line 1019
    .local v7, "duration":J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v9, :cond_26

    .line 1020
    iget-wide v12, v0, Landroid/view/animation/Animation;->mStartTime:J

    add-long/2addr v12, v3

    sub-long v12, v1, v12

    long-to-float v9, v12

    long-to-float v12, v7

    div-float/2addr v9, v12

    .local v9, "normalizedTime":F
    goto :goto_2f

    .line 1024
    .end local v9    # "normalizedTime":F
    :cond_26
    iget-wide v12, v0, Landroid/view/animation/Animation;->mStartTime:J

    cmp-long v9, v1, v12

    if-gez v9, :cond_2e

    move v9, v10

    goto :goto_2f

    :cond_2e
    move v9, v11

    .line 1027
    .restart local v9    # "normalizedTime":F
    :goto_2f
    cmpl-float v12, v9, v11

    const/4 v14, 0x1

    if-gez v12, :cond_3d

    invoke-direct {v0}, Landroid/view/animation/Animation;->isCanceled()Z

    move-result v12

    if-eqz v12, :cond_3b

    goto :goto_3d

    :cond_3b
    const/4 v12, 0x0

    goto :goto_3e

    :cond_3d
    :goto_3d
    move v12, v14

    .line 1028
    .local v12, "expired":Z
    :goto_3e
    if-nez v12, :cond_42

    move v15, v14

    goto :goto_43

    :cond_42
    const/4 v15, 0x0

    :goto_43
    iput-boolean v15, v0, Landroid/view/animation/Animation;->mMore:Z

    .line 1030
    iget-boolean v15, v0, Landroid/view/animation/Animation;->mFillEnabled:Z

    if-nez v15, :cond_51

    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v15

    invoke-static {v15, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 1032
    :cond_51
    cmpl-float v15, v9, v10

    if-gez v15, :cond_59

    iget-boolean v15, v0, Landroid/view/animation/Animation;->mFillBefore:Z

    if-eqz v15, :cond_62

    :cond_59
    cmpg-float v15, v9, v11

    if-lez v15, :cond_65

    iget-boolean v15, v0, Landroid/view/animation/Animation;->mFillAfter:Z

    if-eqz v15, :cond_62

    goto :goto_65

    .line 1050
    :cond_62
    move-object/from16 v10, p3

    goto :goto_90

    .line 1033
    :cond_65
    :goto_65
    iget-boolean v15, v0, Landroid/view/animation/Animation;->mStarted:Z

    if-nez v15, :cond_79

    .line 1034
    invoke-direct {v0}, Landroid/view/animation/Animation;->fireAnimationStart()V

    .line 1035
    iput-boolean v14, v0, Landroid/view/animation/Animation;->mStarted:Z

    .line 1036
    sget-boolean v15, Landroid/view/animation/Animation$NoImagePreloadHolder;->USE_CLOSEGUARD:Z

    if-eqz v15, :cond_79

    .line 1037
    iget-object v15, v0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    const-string v13, "cancel or detach or getTransformation"

    invoke-virtual {v15, v13}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 1041
    :cond_79
    iget-boolean v13, v0, Landroid/view/animation/Animation;->mFillEnabled:Z

    if-eqz v13, :cond_85

    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v13

    invoke-static {v13, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 1043
    :cond_85
    iget-boolean v10, v0, Landroid/view/animation/Animation;->mCycleFlip:Z

    if-eqz v10, :cond_8b

    .line 1044
    sub-float/2addr v11, v9

    move v9, v11

    .line 1047
    :cond_8b
    move-object/from16 v10, p3

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->getTransformationAt(FLandroid/view/animation/Transformation;)V

    .line 1050
    :goto_90
    if-eqz v12, :cond_c8

    .line 1051
    iget v11, v0, Landroid/view/animation/Animation;->mRepeatCount:I

    iget v13, v0, Landroid/view/animation/Animation;->mRepeated:I

    if-eq v11, v13, :cond_ba

    invoke-direct {v0}, Landroid/view/animation/Animation;->isCanceled()Z

    move-result v11

    if-eqz v11, :cond_9f

    goto :goto_ba

    .line 1058
    :cond_9f
    iget v11, v0, Landroid/view/animation/Animation;->mRepeatCount:I

    if-lez v11, :cond_a8

    .line 1059
    iget v11, v0, Landroid/view/animation/Animation;->mRepeated:I

    add-int/2addr v11, v14

    iput v11, v0, Landroid/view/animation/Animation;->mRepeated:I

    .line 1062
    :cond_a8
    iget v11, v0, Landroid/view/animation/Animation;->mRepeatMode:I

    const/4 v13, 0x2

    if-ne v11, v13, :cond_b2

    .line 1063
    iget-boolean v11, v0, Landroid/view/animation/Animation;->mCycleFlip:Z

    xor-int/2addr v11, v14

    iput-boolean v11, v0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 1066
    :cond_b2
    iput-wide v5, v0, Landroid/view/animation/Animation;->mStartTime:J

    .line 1067
    iput-boolean v14, v0, Landroid/view/animation/Animation;->mMore:Z

    .line 1069
    invoke-direct {v0}, Landroid/view/animation/Animation;->fireAnimationRepeat()V

    goto :goto_c8

    .line 1052
    :cond_ba
    :goto_ba
    iget-boolean v5, v0, Landroid/view/animation/Animation;->mEnded:Z

    if-nez v5, :cond_c8

    .line 1053
    iput-boolean v14, v0, Landroid/view/animation/Animation;->mEnded:Z

    .line 1054
    iget-object v5, v0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v5}, Ldalvik/system/CloseGuard;->close()V

    .line 1055
    invoke-direct {v0}, Landroid/view/animation/Animation;->fireAnimationEnd()V

    .line 1073
    :cond_c8
    :goto_c8
    iget-boolean v5, v0, Landroid/view/animation/Animation;->mMore:Z

    if-nez v5, :cond_d4

    iget-boolean v5, v0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    if-eqz v5, :cond_d4

    .line 1074
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 1075
    return v14

    .line 1078
    :cond_d4
    iget-boolean v5, v0, Landroid/view/animation/Animation;->mMore:Z

    return v5
.end method

.method public whitelist getTransformation(JLandroid/view/animation/Transformation;F)Z
    .registers 6
    .param p1, "currentTime"    # J
    .param p3, "outTransformation"    # Landroid/view/animation/Transformation;
    .param p4, "scale"    # F

    .line 1138
    iput p4, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    .line 1139
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    return v0
.end method

.method public blacklist getTransformationAt(FLandroid/view/animation/Transformation;)V
    .registers 4
    .param p1, "normalizedTime"    # F
    .param p2, "outTransformation"    # Landroid/view/animation/Transformation;

    .line 997
    iget-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 998
    .local v0, "interpolatedTime":F
    invoke-virtual {p0, v0, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 999
    return-void
.end method

.method public whitelist getZAdjustment()I
    .registers 2

    .line 838
    iget v0, p0, Landroid/view/animation/Animation;->mZAdjustment:I

    return v0
.end method

.method public greylist-max-o hasAlpha()Z
    .registers 2

    .line 1268
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hasEnded()Z
    .registers 2

    .line 1157
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    return v0
.end method

.method public blacklist hasRoundedCorners()Z
    .registers 2

    .line 881
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mHasRoundedCorners:Z

    return v0
.end method

.method public whitelist hasStarted()Z
    .registers 2

    .line 1148
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    return v0
.end method

.method public whitelist initialize(IIII)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .line 377
    invoke-virtual {p0}, Landroid/view/animation/Animation;->reset()V

    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 379
    return-void
.end method

.method public greylist initializeInvalidateRegion(IIII)V
    .registers 10
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1242
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 1243
    .local v0, "region":Landroid/graphics/RectF;
    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1245
    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 1246
    iget-boolean v1, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    if-eqz v1, :cond_1e

    .line 1247
    iget-object v1, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 1248
    .local v1, "previousTransformation":Landroid/view/animation/Transformation;
    iget-object v2, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    invoke-virtual {p0, v2, v1}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 1250
    .end local v1    # "previousTransformation":Landroid/view/animation/Transformation;
    :cond_1e
    return-void
.end method

.method public whitelist isFillEnabled()Z
    .registers 2

    .line 581
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    return v0
.end method

.method public whitelist isInitialized()Z
    .registers 2

    .line 358
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    return v0
.end method

.method public whitelist reset()V
    .registers 2

    .line 307
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 308
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 310
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 311
    iput v0, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 313
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    .line 315
    return-void
.end method

.method protected whitelist resolveSize(IFII)F
    .registers 6
    .param p1, "type"    # I
    .param p2, "value"    # F
    .param p3, "size"    # I
    .param p4, "parentSize"    # I

    .line 1186
    packed-switch p1, :pswitch_data_c

    .line 1194
    return p2

    .line 1192
    :pswitch_4
    int-to-float v0, p4

    mul-float/2addr v0, p2

    return v0

    .line 1190
    :pswitch_7
    int-to-float v0, p3

    mul-float/2addr v0, p2

    return v0

    .line 1188
    :pswitch_a
    return p2

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_a
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method public whitelist restrictDuration(J)V
    .registers 11
    .param p1, "durationMillis"    # J

    .line 470
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    cmp-long v0, v0, p1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-lez v0, :cond_10

    .line 471
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartOffset:J

    .line 472
    iput-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 473
    iput v1, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 474
    return-void

    .line 477
    :cond_10
    iget-wide v4, p0, Landroid/view/animation/Animation;->mDuration:J

    iget-wide v6, p0, Landroid/view/animation/Animation;->mStartOffset:J

    add-long/2addr v4, v6

    .line 478
    .local v4, "dur":J
    cmp-long v0, v4, p1

    if-lez v0, :cond_20

    .line 479
    iget-wide v6, p0, Landroid/view/animation/Animation;->mStartOffset:J

    sub-long v6, p1, v6

    iput-wide v6, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 480
    move-wide v4, p1

    .line 483
    :cond_20
    iget-wide v6, p0, Landroid/view/animation/Animation;->mDuration:J

    cmp-long v0, v6, v2

    if-gtz v0, :cond_2b

    .line 484
    iput-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 485
    iput v1, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 486
    return-void

    .line 491
    :cond_2b
    iget v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    if-ltz v0, :cond_3e

    iget v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    int-to-long v2, v0

    cmp-long v0, v2, p1

    if-gtz v0, :cond_3e

    iget v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    int-to-long v2, v0

    mul-long/2addr v2, v4

    cmp-long v0, v2, p1

    if-lez v0, :cond_4b

    .line 495
    :cond_3e
    div-long v2, p1, v4

    long-to-int v0, v2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 496
    iget v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    if-gez v0, :cond_4b

    .line 497
    iput v1, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 500
    :cond_4b
    return-void
.end method

.method public whitelist scaleCurrentDuration(F)V
    .registers 4
    .param p1, "scale"    # F

    .line 508
    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    long-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 509
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    long-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    .line 510
    return-void
.end method

.method public whitelist setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .line 963
    iput-object p1, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    .line 964
    return-void
.end method

.method public whitelist setBackdropColor(I)V
    .registers 2
    .param p1, "backdropColor"    # I

    .line 740
    iput p1, p0, Landroid/view/animation/Animation;->mBackdropColor:I

    .line 741
    return-void
.end method

.method public whitelist setBackgroundColor(I)V
    .registers 2
    .param p1, "bg"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 656
    return-void
.end method

.method public whitelist setDetachWallpaper(Z)V
    .registers 2
    .param p1, "detachWallpaper"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 684
    return-void
.end method

.method public whitelist setDuration(J)V
    .registers 5
    .param p1, "durationMillis"    # J

    .line 453
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 456
    iput-wide p1, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 457
    return-void

    .line 454
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Animation duration cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFillAfter(Z)V
    .registers 2
    .param p1, "fillAfter"    # Z

    .line 630
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    .line 631
    return-void
.end method

.method public whitelist setFillBefore(Z)V
    .registers 2
    .param p1, "fillBefore"    # Z

    .line 614
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    .line 615
    return-void
.end method

.method public whitelist setFillEnabled(Z)V
    .registers 2
    .param p1, "fillEnabled"    # Z

    .line 596
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    .line 597
    return-void
.end method

.method public blacklist setHasRoundedCorners(Z)V
    .registers 2
    .param p1, "hasRoundedCorners"    # Z

    .line 708
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mHasRoundedCorners:Z

    .line 709
    return-void
.end method

.method public whitelist setInterpolator(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resID"    # I

    .line 416
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 417
    return-void
.end method

.method public whitelist setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2
    .param p1, "i"    # Landroid/view/animation/Interpolator;

    .line 427
    iput-object p1, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 428
    return-void
.end method

.method public greylist-max-o setListenerHandler(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 387
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_19

    .line 388
    new-instance v0, Landroid/view/animation/Animation$1;

    invoke-direct {v0, p0}, Landroid/view/animation/Animation$1;-><init>(Landroid/view/animation/Animation;)V

    iput-object v0, p0, Landroid/view/animation/Animation;->mOnStart:Ljava/lang/Runnable;

    .line 393
    new-instance v0, Landroid/view/animation/Animation$2;

    invoke-direct {v0, p0}, Landroid/view/animation/Animation$2;-><init>(Landroid/view/animation/Animation;)V

    iput-object v0, p0, Landroid/view/animation/Animation;->mOnRepeat:Ljava/lang/Runnable;

    .line 398
    new-instance v0, Landroid/view/animation/Animation$3;

    invoke-direct {v0, p0}, Landroid/view/animation/Animation$3;-><init>(Landroid/view/animation/Animation;)V

    iput-object v0, p0, Landroid/view/animation/Animation;->mOnEnd:Ljava/lang/Runnable;

    .line 404
    :cond_19
    iput-object p1, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    .line 405
    return-void
.end method

.method public whitelist setRepeatCount(I)V
    .registers 2
    .param p1, "repeatCount"    # I

    .line 568
    if-gez p1, :cond_3

    .line 569
    const/4 p1, -0x1

    .line 571
    :cond_3
    iput p1, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 572
    return-void
.end method

.method public whitelist setRepeatMode(I)V
    .registers 2
    .param p1, "repeatMode"    # I

    .line 555
    iput p1, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    .line 556
    return-void
.end method

.method public whitelist setShowBackdrop(Z)V
    .registers 2
    .param p1, "showBackdrop"    # Z

    .line 727
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mShowBackdrop:Z

    .line 728
    return-void
.end method

.method public greylist-max-o setShowWallpaper(Z)V
    .registers 2
    .param p1, "showWallpaper"    # Z

    .line 695
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mShowWallpaper:Z

    .line 696
    return-void
.end method

.method public whitelist setStartOffset(J)V
    .registers 3
    .param p1, "startOffset"    # J

    .line 440
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartOffset:J

    .line 441
    return-void
.end method

.method public whitelist setStartTime(J)V
    .registers 4
    .param p1, "startTimeMillis"    # J

    .line 523
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 524
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 525
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 526
    iput v0, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 527
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 528
    return-void
.end method

.method public whitelist setZAdjustment(I)V
    .registers 2
    .param p1, "zAdjustment"    # I

    .line 641
    iput p1, p0, Landroid/view/animation/Animation;->mZAdjustment:I

    .line 642
    return-void
.end method

.method public whitelist start()V
    .registers 3

    .line 535
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 536
    return-void
.end method

.method public whitelist startNow()V
    .registers 3

    .line 543
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 544
    return-void
.end method

.method public whitelist willChangeBounds()Z
    .registers 2

    .line 948
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist willChangeTransformationMatrix()Z
    .registers 2

    .line 936
    const/4 v0, 0x1

    return v0
.end method
