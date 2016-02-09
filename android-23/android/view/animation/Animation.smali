.class public abstract Landroid/view/animation/Animation;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/Animation$Description;,
        Landroid/view/animation/Animation$AnimationListener;
    }
.end annotation


# static fields
.field public static final ABSOLUTE:I = 0x0

.field public static final INFINITE:I = -0x1

.field public static final RELATIVE_TO_PARENT:I = 0x2

.field public static final RELATIVE_TO_SELF:I = 0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field public static final START_ON_FIRST_FRAME:I = -0x1

.field private static final USE_CLOSEGUARD:Z

.field public static final ZORDER_BOTTOM:I = -0x1

.field public static final ZORDER_NORMAL:I = 0x0

.field public static final ZORDER_TOP:I = 0x1


# instance fields
.field private final guard:Ldalvik/system/CloseGuard;

.field private mBackgroundColor:I

.field mCycleFlip:Z

.field private mDetachWallpaper:Z

.field mDuration:J

.field mEnded:Z

.field mFillAfter:Z

.field mFillBefore:Z

.field mFillEnabled:Z

.field mInitialized:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mListener:Landroid/view/animation/Animation$AnimationListener;

.field private mListenerHandler:Landroid/os/Handler;

.field private mMore:Z

.field private mOnEnd:Ljava/lang/Runnable;

.field private mOnRepeat:Ljava/lang/Runnable;

.field private mOnStart:Ljava/lang/Runnable;

.field private mOneMoreTime:Z

.field mPreviousRegion:Landroid/graphics/RectF;

.field mPreviousTransformation:Landroid/view/animation/Transformation;

.field mRegion:Landroid/graphics/RectF;

.field mRepeatCount:I

.field mRepeatMode:I

.field mRepeated:I

.field private mScaleFactor:F

.field mStartOffset:J

.field mStartTime:J

.field mStarted:Z

.field mTransformation:Landroid/view/animation/Transformation;

.field private mZAdjustment:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 96
    const-string/jumbo v0, "log.closeguard.Animation"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    .line 95
    sput-boolean v0, Landroid/view/animation/Animation;->USE_CLOSEGUARD:Z

    #@a
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 101
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mEnded:Z

    #@7
    .line 106
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mStarted:Z

    #@9
    .line 112
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    #@b
    .line 118
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mInitialized:Z

    #@d
    .line 125
    iput-boolean v3, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    #@f
    .line 131
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    #@11
    .line 136
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    #@13
    .line 141
    const-wide/16 v0, -0x1

    #@15
    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    #@17
    .line 158
    iput v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    #@19
    .line 163
    iput v2, p0, Landroid/view/animation/Animation;->mRepeated:I

    #@1b
    .line 170
    iput v3, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    #@1d
    .line 196
    const/high16 v0, 0x3f800000    # 1.0f

    #@1f
    iput v0, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    #@21
    .line 201
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    #@23
    .line 203
    iput-boolean v3, p0, Landroid/view/animation/Animation;->mMore:Z

    #@25
    .line 204
    iput-boolean v3, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    #@27
    .line 206
    new-instance v0, Landroid/graphics/RectF;

    #@29
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@2c
    iput-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    #@2e
    .line 207
    new-instance v0, Landroid/graphics/RectF;

    #@30
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@33
    iput-object v0, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    #@35
    .line 208
    new-instance v0, Landroid/view/animation/Transformation;

    #@37
    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    #@3a
    iput-object v0, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    #@3c
    .line 209
    new-instance v0, Landroid/view/animation/Transformation;

    #@3e
    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    #@41
    iput-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    #@43
    .line 211
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@46
    move-result-object v0

    #@47
    iput-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    #@49
    .line 223
    invoke-virtual {p0}, Landroid/view/animation/Animation;->ensureInterpolator()V

    #@4c
    .line 222
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 101
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mEnded:Z

    #@7
    .line 106
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mStarted:Z

    #@9
    .line 112
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    #@b
    .line 118
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mInitialized:Z

    #@d
    .line 125
    iput-boolean v5, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    #@f
    .line 131
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    #@11
    .line 136
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    #@13
    .line 141
    const-wide/16 v2, -0x1

    #@15
    iput-wide v2, p0, Landroid/view/animation/Animation;->mStartTime:J

    #@17
    .line 158
    iput v4, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    #@19
    .line 163
    iput v4, p0, Landroid/view/animation/Animation;->mRepeated:I

    #@1b
    .line 170
    iput v5, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    #@1d
    .line 196
    const/high16 v2, 0x3f800000    # 1.0f

    #@1f
    iput v2, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    #@21
    .line 201
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    #@23
    .line 203
    iput-boolean v5, p0, Landroid/view/animation/Animation;->mMore:Z

    #@25
    .line 204
    iput-boolean v5, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    #@27
    .line 206
    new-instance v2, Landroid/graphics/RectF;

    #@29
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    #@2c
    iput-object v2, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    #@2e
    .line 207
    new-instance v2, Landroid/graphics/RectF;

    #@30
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    #@33
    iput-object v2, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    #@35
    .line 208
    new-instance v2, Landroid/view/animation/Transformation;

    #@37
    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    #@3a
    iput-object v2, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    #@3c
    .line 209
    new-instance v2, Landroid/view/animation/Transformation;

    #@3e
    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    #@41
    iput-object v2, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    #@43
    .line 211
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@46
    move-result-object v2

    #@47
    iput-object v2, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    #@49
    .line 234
    sget-object v2, Lcom/android/internal/R$styleable;->Animation:[I

    #@4b
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@4e
    move-result-object v0

    #@4f
    .line 236
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    #@50
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@53
    move-result v2

    #@54
    int-to-long v2, v2

    #@55
    invoke-virtual {p0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    #@58
    .line 237
    const/4 v2, 0x5

    #@59
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@5c
    move-result v2

    #@5d
    int-to-long v2, v2

    #@5e
    invoke-virtual {p0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    #@61
    .line 239
    iget-boolean v2, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    #@63
    const/16 v3, 0x9

    #@65
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@68
    move-result v2

    #@69
    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    #@6c
    .line 240
    iget-boolean v2, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    #@6e
    const/4 v3, 0x3

    #@6f
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@72
    move-result v2

    #@73
    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    #@76
    .line 241
    iget-boolean v2, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    #@78
    const/4 v3, 0x4

    #@79
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@7c
    move-result v2

    #@7d
    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    #@80
    .line 243
    iget v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    #@82
    const/4 v3, 0x6

    #@83
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@86
    move-result v2

    #@87
    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    #@8a
    .line 244
    const/4 v2, 0x7

    #@8b
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    #@8e
    move-result v2

    #@8f
    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    #@92
    .line 246
    const/16 v2, 0x8

    #@94
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@97
    move-result v2

    #@98
    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    #@9b
    .line 248
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@9e
    move-result v2

    #@9f
    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setBackgroundColor(I)V

    #@a2
    .line 250
    const/16 v2, 0xa

    #@a4
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@a7
    move-result v2

    #@a8
    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    #@ab
    .line 252
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@ae
    move-result v1

    #@af
    .line 254
    .local v1, "resID":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@b2
    .line 256
    if-lez v1, :cond_0

    #@b4
    .line 257
    invoke-virtual {p0, p1, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    #@b7
    .line 260
    :cond_0
    invoke-virtual {p0}, Landroid/view/animation/Animation;->ensureInterpolator()V

    #@ba
    .line 233
    return-void
.end method

.method private fireAnimationEnd()V
    .locals 2

    #@0
    .prologue
    .line 922
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 923
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    #@6
    if-nez v0, :cond_1

    #@8
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    #@a
    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    #@d
    .line 921
    :cond_0
    :goto_0
    return-void

    #@e
    .line 924
    :cond_1
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    #@10
    iget-object v1, p0, Landroid/view/animation/Animation;->mOnEnd:Ljava/lang/Runnable;

    #@12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    #@15
    goto :goto_0
.end method

.method private fireAnimationRepeat()V
    .locals 2

    #@0
    .prologue
    .line 915
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 916
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    #@6
    if-nez v0, :cond_1

    #@8
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    #@a
    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    #@d
    .line 914
    :cond_0
    :goto_0
    return-void

    #@e
    .line 917
    :cond_1
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    #@10
    iget-object v1, p0, Landroid/view/animation/Animation;->mOnRepeat:Ljava/lang/Runnable;

    #@12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    #@15
    goto :goto_0
.end method

.method private fireAnimationStart()V
    .locals 2

    #@0
    .prologue
    .line 908
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 909
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    #@6
    if-nez v0, :cond_1

    #@8
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    #@a
    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    #@d
    .line 907
    :cond_0
    :goto_0
    return-void

    #@e
    .line 910
    :cond_1
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    #@10
    iget-object v1, p0, Landroid/view/animation/Animation;->mOnStart:Ljava/lang/Runnable;

    #@12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    #@15
    goto :goto_0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 0
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    #@0
    .prologue
    .line 975
    return-void
.end method

.method public cancel()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 301
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 307
    :cond_0
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    #@b
    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    #@d
    .line 308
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    #@f
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mMore:Z

    #@11
    .line 300
    return-void

    #@12
    .line 302
    :cond_1
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationEnd()V

    #@15
    .line 303
    const/4 v0, 0x1

    #@16
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    #@18
    .line 304
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    #@1a
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@1d
    goto :goto_0
.end method

.method protected clone()Landroid/view/animation/Animation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 265
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/view/animation/Animation;

    #@6
    .line 266
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Landroid/graphics/RectF;

    #@8
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    #@b
    iput-object v1, v0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    #@d
    .line 267
    new-instance v1, Landroid/graphics/RectF;

    #@f
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    #@12
    iput-object v1, v0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    #@14
    .line 268
    new-instance v1, Landroid/view/animation/Transformation;

    #@16
    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    #@19
    iput-object v1, v0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    #@1b
    .line 269
    new-instance v1, Landroid/view/animation/Transformation;

    #@1d
    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    #@20
    iput-object v1, v0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    #@22
    .line 270
    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public computeDurationHint()J
    .locals 4

    #@0
    .prologue
    .line 823
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getStartOffset()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    #@7
    move-result-wide v2

    #@8
    add-long/2addr v0, v2

    #@9
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getRepeatCount()I

    #@c
    move-result v2

    #@d
    add-int/lit8 v2, v2, 0x1

    #@f
    int-to-long v2, v2

    #@10
    mul-long/2addr v0, v2

    #@11
    return-wide v0
.end method

.method public detach()V
    .locals 1

    #@0
    .prologue
    .line 315
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 314
    :cond_0
    :goto_0
    return-void

    #@9
    .line 316
    :cond_1
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    #@c
    .line 317
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    #@e
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@11
    .line 318
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationEnd()V

    #@14
    goto :goto_0
.end method

.method protected ensureInterpolator()V
    .locals 1

    #@0
    .prologue
    .line 811
    iget-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 812
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    #@6
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    #@9
    iput-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    #@b
    .line 810
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 1056
    :try_start_0
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1057
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 1060
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@c
    .line 1054
    return-void

    #@d
    .line 1059
    :catchall_0
    move-exception v0

    #@e
    .line 1060
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@11
    .line 1059
    throw v0
.end method

.method public getBackgroundColor()I
    .locals 1

    #@0
    .prologue
    .line 760
    iget v0, p0, Landroid/view/animation/Animation;->mBackgroundColor:I

    #@2
    return v0
.end method

.method public getDetachWallpaper()Z
    .locals 1

    #@0
    .prologue
    .line 768
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    #@2
    return v0
.end method

.method public getDuration()J
    .locals 2

    #@0
    .prologue
    .line 685
    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    #@2
    return-wide v0
.end method

.method public getFillAfter()Z
    .locals 1

    #@0
    .prologue
    .line 740
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    #@2
    return v0
.end method

.method public getFillBefore()Z
    .locals 1

    #@0
    .prologue
    .line 729
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    #@2
    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    #@0
    .prologue
    .line 664
    iget-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    #@2
    return-object v0
.end method

.method public getInvalidateRegion(IIIILandroid/graphics/RectF;Landroid/view/animation/Transformation;)V
    .locals 9
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "invalidate"    # Landroid/graphics/RectF;
    .param p6, "transformation"    # Landroid/view/animation/Transformation;

    #@0
    .prologue
    const/high16 v8, -0x40800000    # -1.0f

    #@2
    .line 1015
    iget-object v2, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    #@4
    .line 1016
    .local v2, "tempRegion":Landroid/graphics/RectF;
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    #@6
    .line 1018
    .local v0, "previousRegion":Landroid/graphics/RectF;
    int-to-float v4, p1

    #@7
    int-to-float v5, p2

    #@8
    int-to-float v6, p3

    #@9
    int-to-float v7, p4

    #@a
    invoke-virtual {p5, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    #@d
    .line 1019
    invoke-virtual {p6}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v4, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    #@14
    .line 1021
    invoke-virtual {p5, v8, v8}, Landroid/graphics/RectF;->inset(FF)V

    #@17
    .line 1022
    invoke-virtual {v2, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    #@1a
    .line 1023
    invoke-virtual {p5, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    #@1d
    .line 1025
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    #@20
    .line 1027
    iget-object v3, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    #@22
    .line 1028
    .local v3, "tempTransformation":Landroid/view/animation/Transformation;
    iget-object v1, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    #@24
    .line 1030
    .local v1, "previousTransformation":Landroid/view/animation/Transformation;
    invoke-virtual {v3, p6}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    #@27
    .line 1031
    invoke-virtual {p6, v1}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    #@2a
    .line 1032
    invoke-virtual {v1, v3}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    #@2d
    .line 1013
    return-void
.end method

.method public getRepeatCount()I
    .locals 1

    #@0
    .prologue
    .line 716
    iget v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    #@2
    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    #@0
    .prologue
    .line 705
    iget v0, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    #@2
    return v0
.end method

.method protected getScaleFactor()F
    .locals 1

    #@0
    .prologue
    .line 641
    iget v0, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    #@2
    return v0
.end method

.method public getStartOffset()J
    .locals 2

    #@0
    .prologue
    .line 695
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    #@2
    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    #@0
    .prologue
    .line 675
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    #@2
    return-wide v0
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 15
    .param p1, "currentTime"    # J
    .param p3, "outTransformation"    # Landroid/view/animation/Transformation;

    #@0
    .prologue
    .line 837
    iget-wide v10, p0, Landroid/view/animation/Animation;->mStartTime:J

    #@2
    const-wide/16 v12, -0x1

    #@4
    cmp-long v7, v10, v12

    #@6
    if-nez v7, :cond_0

    #@8
    .line 838
    move-wide/from16 v0, p1

    #@a
    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    #@c
    .line 841
    :cond_0
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getStartOffset()J

    #@f
    move-result-wide v8

    #@10
    .line 842
    .local v8, "startOffset":J
    iget-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    #@12
    .line 844
    .local v2, "duration":J
    const-wide/16 v10, 0x0

    #@14
    cmp-long v7, v2, v10

    #@16
    if-eqz v7, :cond_9

    #@18
    .line 845
    iget-wide v10, p0, Landroid/view/animation/Animation;->mStartTime:J

    #@1a
    add-long/2addr v10, v8

    #@1b
    sub-long v10, p1, v10

    #@1d
    long-to-float v7, v10

    #@1e
    .line 846
    long-to-float v10, v2

    #@1f
    .line 845
    div-float v6, v7, v10

    #@21
    .line 852
    .local v6, "normalizedTime":F
    :goto_0
    const/high16 v7, 0x3f800000    # 1.0f

    #@23
    cmpl-float v7, v6, v7

    #@25
    if-ltz v7, :cond_b

    #@27
    const/4 v4, 0x1

    #@28
    .line 853
    .local v4, "expired":Z
    :goto_1
    if-eqz v4, :cond_c

    #@2a
    const/4 v7, 0x0

    #@2b
    :goto_2
    iput-boolean v7, p0, Landroid/view/animation/Animation;->mMore:Z

    #@2d
    .line 855
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    #@2f
    if-nez v7, :cond_1

    #@31
    const/high16 v7, 0x3f800000    # 1.0f

    #@33
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    #@36
    move-result v7

    #@37
    const/4 v10, 0x0

    #@38
    invoke-static {v7, v10}, Ljava/lang/Math;->max(FF)F

    #@3b
    move-result v6

    #@3c
    .line 857
    :cond_1
    const/4 v7, 0x0

    #@3d
    cmpl-float v7, v6, v7

    #@3f
    if-gez v7, :cond_2

    #@41
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    #@43
    if-eqz v7, :cond_7

    #@45
    :cond_2
    const/high16 v7, 0x3f800000    # 1.0f

    #@47
    cmpg-float v7, v6, v7

    #@49
    if-lez v7, :cond_3

    #@4b
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    #@4d
    if-eqz v7, :cond_7

    #@4f
    .line 858
    :cond_3
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mStarted:Z

    #@51
    if-nez v7, :cond_4

    #@53
    .line 859
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationStart()V

    #@56
    .line 860
    const/4 v7, 0x1

    #@57
    iput-boolean v7, p0, Landroid/view/animation/Animation;->mStarted:Z

    #@59
    .line 861
    sget-boolean v7, Landroid/view/animation/Animation;->USE_CLOSEGUARD:Z

    #@5b
    if-eqz v7, :cond_4

    #@5d
    .line 862
    iget-object v7, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    #@5f
    const-string/jumbo v10, "cancel or detach or getTransformation"

    #@62
    invoke-virtual {v7, v10}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@65
    .line 866
    :cond_4
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    #@67
    if-eqz v7, :cond_5

    #@69
    const/high16 v7, 0x3f800000    # 1.0f

    #@6b
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    #@6e
    move-result v7

    #@6f
    const/4 v10, 0x0

    #@70
    invoke-static {v7, v10}, Ljava/lang/Math;->max(FF)F

    #@73
    move-result v6

    #@74
    .line 868
    :cond_5
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    #@76
    if-eqz v7, :cond_6

    #@78
    .line 869
    const/high16 v7, 0x3f800000    # 1.0f

    #@7a
    sub-float v6, v7, v6

    #@7c
    .line 872
    :cond_6
    iget-object v7, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    #@7e
    invoke-interface {v7, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@81
    move-result v5

    #@82
    .line 873
    .local v5, "interpolatedTime":F
    move-object/from16 v0, p3

    #@84
    invoke-virtual {p0, v5, v0}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    #@87
    .line 876
    .end local v5    # "interpolatedTime":F
    :cond_7
    if-eqz v4, :cond_8

    #@89
    .line 877
    iget v7, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    #@8b
    iget v10, p0, Landroid/view/animation/Animation;->mRepeated:I

    #@8d
    if-ne v7, v10, :cond_d

    #@8f
    .line 878
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mEnded:Z

    #@91
    if-nez v7, :cond_8

    #@93
    .line 879
    const/4 v7, 0x1

    #@94
    iput-boolean v7, p0, Landroid/view/animation/Animation;->mEnded:Z

    #@96
    .line 880
    iget-object v7, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    #@98
    invoke-virtual {v7}, Ldalvik/system/CloseGuard;->close()V

    #@9b
    .line 881
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationEnd()V

    #@9e
    .line 899
    :cond_8
    :goto_3
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mMore:Z

    #@a0
    if-nez v7, :cond_11

    #@a2
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    #@a4
    if-eqz v7, :cond_11

    #@a6
    .line 900
    const/4 v7, 0x0

    #@a7
    iput-boolean v7, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    #@a9
    .line 901
    const/4 v7, 0x1

    #@aa
    return v7

    #@ab
    .line 849
    .end local v4    # "expired":Z
    .end local v6    # "normalizedTime":F
    :cond_9
    iget-wide v10, p0, Landroid/view/animation/Animation;->mStartTime:J

    #@ad
    cmp-long v7, p1, v10

    #@af
    if-gez v7, :cond_a

    #@b1
    const/4 v6, 0x0

    #@b2
    .restart local v6    # "normalizedTime":F
    goto/16 :goto_0

    #@b4
    .end local v6    # "normalizedTime":F
    :cond_a
    const/high16 v6, 0x3f800000    # 1.0f

    #@b6
    .restart local v6    # "normalizedTime":F
    goto/16 :goto_0

    #@b8
    .line 852
    :cond_b
    const/4 v4, 0x0

    #@b9
    .restart local v4    # "expired":Z
    goto/16 :goto_1

    #@bb
    .line 853
    :cond_c
    const/4 v7, 0x1

    #@bc
    goto/16 :goto_2

    #@be
    .line 884
    :cond_d
    iget v7, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    #@c0
    if-lez v7, :cond_e

    #@c2
    .line 885
    iget v7, p0, Landroid/view/animation/Animation;->mRepeated:I

    #@c4
    add-int/lit8 v7, v7, 0x1

    #@c6
    iput v7, p0, Landroid/view/animation/Animation;->mRepeated:I

    #@c8
    .line 888
    :cond_e
    iget v7, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    #@ca
    const/4 v10, 0x2

    #@cb
    if-ne v7, v10, :cond_f

    #@cd
    .line 889
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    #@cf
    if-eqz v7, :cond_10

    #@d1
    const/4 v7, 0x0

    #@d2
    :goto_4
    iput-boolean v7, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    #@d4
    .line 892
    :cond_f
    const-wide/16 v10, -0x1

    #@d6
    iput-wide v10, p0, Landroid/view/animation/Animation;->mStartTime:J

    #@d8
    .line 893
    const/4 v7, 0x1

    #@d9
    iput-boolean v7, p0, Landroid/view/animation/Animation;->mMore:Z

    #@db
    .line 895
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationRepeat()V

    #@de
    goto :goto_3

    #@df
    .line 889
    :cond_10
    const/4 v7, 0x1

    #@e0
    goto :goto_4

    #@e1
    .line 904
    :cond_11
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mMore:Z

    #@e3
    return v7
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;F)Z
    .locals 1
    .param p1, "currentTime"    # J
    .param p3, "outTransformation"    # Landroid/view/animation/Transformation;
    .param p4, "scale"    # F

    #@0
    .prologue
    .line 942
    iput p4, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    #@2
    .line 943
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getZAdjustment()I
    .locals 1

    #@0
    .prologue
    .line 752
    iget v0, p0, Landroid/view/animation/Animation;->mZAdjustment:I

    #@2
    return v0
.end method

.method public hasAlpha()Z
    .locals 1

    #@0
    .prologue
    .line 1070
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public hasEnded()Z
    .locals 1

    #@0
    .prologue
    .line 961
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    #@2
    return v0
.end method

.method public hasStarted()Z
    .locals 1

    #@0
    .prologue
    .line 952
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    #@2
    return v0
.end method

.method public initialize(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    #@0
    .prologue
    .line 348
    invoke-virtual {p0}, Landroid/view/animation/Animation;->reset()V

    #@3
    .line 349
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    #@6
    .line 347
    return-void
.end method

.method public initializeInvalidateRegion(IIII)V
    .locals 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    const/high16 v6, -0x40800000    # -1.0f

    #@2
    .line 1044
    iget-object v1, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    #@4
    .line 1045
    .local v1, "region":Landroid/graphics/RectF;
    int-to-float v2, p1

    #@5
    int-to-float v3, p2

    #@6
    int-to-float v4, p3

    #@7
    int-to-float v5, p4

    #@8
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    #@b
    .line 1047
    invoke-virtual {v1, v6, v6}, Landroid/graphics/RectF;->inset(FF)V

    #@e
    .line 1048
    iget-boolean v2, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 1049
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    #@14
    .line 1050
    .local v0, "previousTransformation":Landroid/view/animation/Transformation;
    iget-object v2, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    #@16
    const/4 v3, 0x0

    #@17
    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@1a
    move-result v2

    #@1b
    invoke-virtual {p0, v2, v0}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    #@1e
    .line 1043
    .end local v0    # "previousTransformation":Landroid/view/animation/Transformation;
    :cond_0
    return-void
.end method

.method public isFillEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 558
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    #@2
    return v0
.end method

.method public isInitialized()Z
    .locals 1

    #@0
    .prologue
    .line 329
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    #@2
    return v0
.end method

.method public reset()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 279
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    #@4
    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    #@7
    .line 280
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    #@9
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    #@c
    .line 281
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mInitialized:Z

    #@e
    .line 282
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    #@10
    .line 283
    iput v1, p0, Landroid/view/animation/Animation;->mRepeated:I

    #@12
    .line 284
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mMore:Z

    #@14
    .line 285
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    #@16
    .line 286
    const/4 v0, 0x0

    #@17
    iput-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    #@19
    .line 278
    return-void
.end method

.method protected resolveSize(IFII)F
    .locals 1
    .param p1, "type"    # I
    .param p2, "value"    # F
    .param p3, "size"    # I
    .param p4, "parentSize"    # I

    #@0
    .prologue
    .line 990
    packed-switch p1, :pswitch_data_0

    #@3
    .line 998
    return p2

    #@4
    .line 992
    :pswitch_0
    return p2

    #@5
    .line 994
    :pswitch_1
    int-to-float v0, p3

    #@6
    mul-float/2addr v0, p2

    #@7
    return v0

    #@8
    .line 996
    :pswitch_2
    int-to-float v0, p4

    #@9
    mul-float/2addr v0, p2

    #@a
    return v0

    #@b
    .line 990
    nop

    #@c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public restrictDuration(J)V
    .locals 11
    .param p1, "durationMillis"    # J

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    .line 447
    iget-wide v2, p0, Landroid/view/animation/Animation;->mStartOffset:J

    #@5
    cmp-long v2, v2, p1

    #@7
    if-lez v2, :cond_0

    #@9
    .line 448
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartOffset:J

    #@b
    .line 449
    iput-wide v8, p0, Landroid/view/animation/Animation;->mDuration:J

    #@d
    .line 450
    iput v6, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    #@f
    .line 451
    return-void

    #@10
    .line 454
    :cond_0
    iget-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    #@12
    iget-wide v4, p0, Landroid/view/animation/Animation;->mStartOffset:J

    #@14
    add-long v0, v2, v4

    #@16
    .line 455
    .local v0, "dur":J
    cmp-long v2, v0, p1

    #@18
    if-lez v2, :cond_1

    #@1a
    .line 456
    iget-wide v2, p0, Landroid/view/animation/Animation;->mStartOffset:J

    #@1c
    sub-long v2, p1, v2

    #@1e
    iput-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    #@20
    .line 457
    move-wide v0, p1

    #@21
    .line 460
    :cond_1
    iget-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    #@23
    cmp-long v2, v2, v8

    #@25
    if-gtz v2, :cond_2

    #@27
    .line 461
    iput-wide v8, p0, Landroid/view/animation/Animation;->mDuration:J

    #@29
    .line 462
    iput v6, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    #@2b
    .line 463
    return-void

    #@2c
    .line 468
    :cond_2
    iget v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    #@2e
    if-ltz v2, :cond_3

    #@30
    iget v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    #@32
    int-to-long v2, v2

    #@33
    cmp-long v2, v2, p1

    #@35
    if-lez v2, :cond_5

    #@37
    .line 472
    :cond_3
    :goto_0
    div-long v2, p1, v0

    #@39
    long-to-int v2, v2

    #@3a
    add-int/lit8 v2, v2, -0x1

    #@3c
    iput v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    #@3e
    .line 473
    iget v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    #@40
    if-gez v2, :cond_4

    #@42
    .line 474
    iput v6, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    #@44
    .line 445
    :cond_4
    return-void

    #@45
    .line 469
    :cond_5
    iget v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    #@47
    int-to-long v2, v2

    #@48
    mul-long/2addr v2, v0

    #@49
    cmp-long v2, v2, p1

    #@4b
    if-lez v2, :cond_4

    #@4d
    goto :goto_0
.end method

.method public scaleCurrentDuration(F)V
    .locals 2
    .param p1, "scale"    # F

    #@0
    .prologue
    .line 485
    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    #@2
    long-to-float v0, v0

    #@3
    mul-float/2addr v0, p1

    #@4
    float-to-long v0, v0

    #@5
    iput-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    #@7
    .line 486
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    #@9
    long-to-float v0, v0

    #@a
    mul-float/2addr v0, p1

    #@b
    float-to-long v0, v0

    #@c
    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    #@e
    .line 484
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    #@0
    .prologue
    .line 803
    iput-object p1, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    #@2
    .line 802
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "bg"    # I

    #@0
    .prologue
    .line 628
    iput p1, p0, Landroid/view/animation/Animation;->mBackgroundColor:I

    #@2
    .line 627
    return-void
.end method

.method public setDetachWallpaper(Z)V
    .locals 0
    .param p1, "detachWallpaper"    # Z

    #@0
    .prologue
    .line 654
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    #@2
    .line 653
    return-void
.end method

.method public setDuration(J)V
    .locals 3
    .param p1, "durationMillis"    # J

    #@0
    .prologue
    .line 430
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 431
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Animation duration cannot be negative"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 433
    :cond_0
    iput-wide p1, p0, Landroid/view/animation/Animation;->mDuration:J

    #@11
    .line 429
    return-void
.end method

.method public setFillAfter(Z)V
    .locals 0
    .param p1, "fillAfter"    # Z

    #@0
    .prologue
    .line 607
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    #@2
    .line 606
    return-void
.end method

.method public setFillBefore(Z)V
    .locals 0
    .param p1, "fillBefore"    # Z

    #@0
    .prologue
    .line 591
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    #@2
    .line 590
    return-void
.end method

.method public setFillEnabled(Z)V
    .locals 0
    .param p1, "fillEnabled"    # Z

    #@0
    .prologue
    .line 573
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    #@2
    .line 572
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resID"    # I

    #@0
    .prologue
    .line 393
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@7
    .line 392
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "i"    # Landroid/view/animation/Interpolator;

    #@0
    .prologue
    .line 404
    iput-object p1, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    #@2
    .line 403
    return-void
.end method

.method public setListenerHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 358
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 359
    new-instance v0, Landroid/view/animation/Animation$1;

    #@6
    invoke-direct {v0, p0}, Landroid/view/animation/Animation$1;-><init>(Landroid/view/animation/Animation;)V

    #@9
    iput-object v0, p0, Landroid/view/animation/Animation;->mOnStart:Ljava/lang/Runnable;

    #@b
    .line 366
    new-instance v0, Landroid/view/animation/Animation$2;

    #@d
    invoke-direct {v0, p0}, Landroid/view/animation/Animation$2;-><init>(Landroid/view/animation/Animation;)V

    #@10
    iput-object v0, p0, Landroid/view/animation/Animation;->mOnRepeat:Ljava/lang/Runnable;

    #@12
    .line 373
    new-instance v0, Landroid/view/animation/Animation$3;

    #@14
    invoke-direct {v0, p0}, Landroid/view/animation/Animation$3;-><init>(Landroid/view/animation/Animation;)V

    #@17
    iput-object v0, p0, Landroid/view/animation/Animation;->mOnEnd:Ljava/lang/Runnable;

    #@19
    .line 381
    :cond_0
    iput-object p1, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    #@1b
    .line 357
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0
    .param p1, "repeatCount"    # I

    #@0
    .prologue
    .line 545
    if-gez p1, :cond_0

    #@2
    .line 546
    const/4 p1, -0x1

    #@3
    .line 548
    :cond_0
    iput p1, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    #@5
    .line 544
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0
    .param p1, "repeatMode"    # I

    #@0
    .prologue
    .line 532
    iput p1, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    #@2
    .line 531
    return-void
.end method

.method public setStartOffset(J)V
    .locals 1
    .param p1, "startOffset"    # J

    #@0
    .prologue
    .line 417
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartOffset:J

    #@2
    .line 416
    return-void
.end method

.method public setStartTime(J)V
    .locals 1
    .param p1, "startTimeMillis"    # J

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 500
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartTime:J

    #@3
    .line 501
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    #@5
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    #@7
    .line 502
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    #@9
    .line 503
    iput v0, p0, Landroid/view/animation/Animation;->mRepeated:I

    #@b
    .line 504
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mMore:Z

    #@e
    .line 499
    return-void
.end method

.method public setZAdjustment(I)V
    .locals 0
    .param p1, "zAdjustment"    # I

    #@0
    .prologue
    .line 618
    iput p1, p0, Landroid/view/animation/Animation;->mZAdjustment:I

    #@2
    .line 617
    return-void
.end method

.method public start()V
    .locals 2

    #@0
    .prologue
    .line 512
    const-wide/16 v0, -0x1

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    #@5
    .line 511
    return-void
.end method

.method public startNow()V
    .locals 2

    #@0
    .prologue
    .line 520
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    #@7
    .line 519
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    #@0
    .prologue
    .line 792
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .locals 1

    #@0
    .prologue
    .line 780
    const/4 v0, 0x1

    #@1
    return v0
.end method
