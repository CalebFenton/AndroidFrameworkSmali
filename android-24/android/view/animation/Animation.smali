.class public abstract Landroid/view/animation/Animation;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/Animation$AnimationListener;,
        Landroid/view/animation/Animation$Description;,
        Landroid/view/animation/Animation$NoImagePreloadHolder;
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
.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 106
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mEnded:Z

    #@7
    .line 111
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mStarted:Z

    #@9
    .line 117
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    #@b
    .line 123
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mInitialized:Z

    #@d
    .line 130
    iput-boolean v3, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    #@f
    .line 136
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    #@11
    .line 141
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    #@13
    .line 146
    const-wide/16 v0, -0x1

    #@15
    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    #@17
    .line 163
    iput v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    #@19
    .line 168
    iput v2, p0, Landroid/view/animation/Animation;->mRepeated:I

    #@1b
    .line 175
    iput v3, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    #@1d
    .line 201
    const/high16 v0, 0x3f800000    # 1.0f

    #@1f
    iput v0, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    #@21
    .line 206
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    #@23
    .line 208
    iput-boolean v3, p0, Landroid/view/animation/Animation;->mMore:Z

    #@25
    .line 209
    iput-boolean v3, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    #@27
    .line 211
    new-instance v0, Landroid/graphics/RectF;

    #@29
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@2c
    iput-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    #@2e
    .line 212
    new-instance v0, Landroid/graphics/RectF;

    #@30
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@33
    iput-object v0, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    #@35
    .line 213
    new-instance v0, Landroid/view/animation/Transformation;

    #@37
    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    #@3a
    iput-object v0, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    #@3c
    .line 214
    new-instance v0, Landroid/view/animation/Transformation;

    #@3e
    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    #@41
    iput-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    #@43
    .line 216
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@46
    move-result-object v0

    #@47
    iput-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    #@49
    .line 228
    invoke-virtual {p0}, Landroid/view/animation/Animation;->ensureInterpolator()V

    #@4c
    .line 227
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
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 106
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mEnded:Z

    #@7
    .line 111
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mStarted:Z

    #@9
    .line 117
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    #@b
    .line 123
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mInitialized:Z

    #@d
    .line 130
    iput-boolean v5, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    #@f
    .line 136
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    #@11
    .line 141
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    #@13
    .line 146
    const-wide/16 v2, -0x1

    #@15
    iput-wide v2, p0, Landroid/view/animation/Animation;->mStartTime:J

    #@17
    .line 163
    iput v4, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    #@19
    .line 168
    iput v4, p0, Landroid/view/animation/Animation;->mRepeated:I

    #@1b
    .line 175
    iput v5, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    #@1d
    .line 201
    const/high16 v2, 0x3f800000    # 1.0f

    #@1f
    iput v2, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    #@21
    .line 206
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    #@23
    .line 208
    iput-boolean v5, p0, Landroid/view/animation/Animation;->mMore:Z

    #@25
    .line 209
    iput-boolean v5, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    #@27
    .line 211
    new-instance v2, Landroid/graphics/RectF;

    #@29
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    #@2c
    iput-object v2, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    #@2e
    .line 212
    new-instance v2, Landroid/graphics/RectF;

    #@30
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    #@33
    iput-object v2, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    #@35
    .line 213
    new-instance v2, Landroid/view/animation/Transformation;

    #@37
    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    #@3a
    iput-object v2, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    #@3c
    .line 214
    new-instance v2, Landroid/view/animation/Transformation;

    #@3e
    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    #@41
    iput-object v2, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    #@43
    .line 216
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@46
    move-result-object v2

    #@47
    iput-object v2, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    #@49
    .line 239
    sget-object v2, Lcom/android/internal/R$styleable;->Animation:[I

    #@4b
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@4e
    move-result-object v0

    #@4f
    .line 241
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
    .line 242
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
    .line 244
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
    .line 245
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
    .line 246
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
    .line 248
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
    .line 249
    const/4 v2, 0x7

    #@8b
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    #@8e
    move-result v2

    #@8f
    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    #@92
    .line 251
    const/16 v2, 0x8

    #@94
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@97
    move-result v2

    #@98
    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    #@9b
    .line 253
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@9e
    move-result v2

    #@9f
    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setBackgroundColor(I)V

    #@a2
    .line 255
    const/16 v2, 0xa

    #@a4
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@a7
    move-result v2

    #@a8
    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    #@ab
    .line 257
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@ae
    move-result v1

    #@af
    .line 259
    .local v1, "resID":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@b2
    .line 261
    if-lez v1, :cond_0

    #@b4
    .line 262
    invoke-virtual {p0, p1, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    #@b7
    .line 265
    :cond_0
    invoke-virtual {p0}, Landroid/view/animation/Animation;->ensureInterpolator()V

    #@ba
    .line 238
    return-void
.end method

.method private fireAnimationEnd()V
    .locals 2

    #@0
    .prologue
    .line 931
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 932
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    #@6
    if-nez v0, :cond_1

    #@8
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    #@a
    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    #@d
    .line 930
    :cond_0
    :goto_0
    return-void

    #@e
    .line 933
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
    .line 924
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 925
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    #@6
    if-nez v0, :cond_1

    #@8
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    #@a
    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    #@d
    .line 923
    :cond_0
    :goto_0
    return-void

    #@e
    .line 926
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
    .line 917
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 918
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    #@6
    if-nez v0, :cond_1

    #@8
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    #@a
    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    #@d
    .line 916
    :cond_0
    :goto_0
    return-void

    #@e
    .line 919
    :cond_1
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    #@10
    iget-object v1, p0, Landroid/view/animation/Animation;->mOnStart:Ljava/lang/Runnable;

    #@12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    #@15
    goto :goto_0
.end method

.method private isCanceled()Z
    .locals 4

    #@0
    .prologue
    .line 913
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    #@2
    const-wide/high16 v2, -0x8000000000000000L

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

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


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 0
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    #@0
    .prologue
    .line 984
    return-void
.end method

.method public cancel()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 306
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 312
    :cond_0
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    #@b
    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    #@d
    .line 313
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    #@f
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mMore:Z

    #@11
    .line 305
    return-void

    #@12
    .line 307
    :cond_1
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationEnd()V

    #@15
    .line 308
    const/4 v0, 0x1

    #@16
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    #@18
    .line 309
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
    .line 270
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/view/animation/Animation;

    #@6
    .line 271
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Landroid/graphics/RectF;

    #@8
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    #@b
    iput-object v1, v0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    #@d
    .line 272
    new-instance v1, Landroid/graphics/RectF;

    #@f
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    #@12
    iput-object v1, v0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    #@14
    .line 273
    new-instance v1, Landroid/view/animation/Transformation;

    #@16
    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    #@19
    iput-object v1, v0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    #@1b
    .line 274
    new-instance v1, Landroid/view/animation/Transformation;

    #@1d
    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    #@20
    iput-object v1, v0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    #@22
    .line 275
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
    .line 269
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
    .line 828
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
    .line 320
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 319
    :cond_0
    :goto_0
    return-void

    #@9
    .line 321
    :cond_1
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    #@c
    .line 322
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    #@e
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@11
    .line 323
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationEnd()V

    #@14
    goto :goto_0
.end method

.method protected ensureInterpolator()V
    .locals 1

    #@0
    .prologue
    .line 816
    iget-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 817
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    #@6
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    #@9
    iput-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    #@b
    .line 815
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
    .line 1065
    :try_start_0
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1066
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 1069
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@c
    .line 1063
    return-void

    #@d
    .line 1068
    :catchall_0
    move-exception v0

    #@e
    .line 1069
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@11
    .line 1068
    throw v0
.end method

.method public getBackgroundColor()I
    .locals 1

    #@0
    .prologue
    .line 765
    iget v0, p0, Landroid/view/animation/Animation;->mBackgroundColor:I

    #@2
    return v0
.end method

.method public getDetachWallpaper()Z
    .locals 1

    #@0
    .prologue
    .line 773
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    #@2
    return v0
.end method

.method public getDuration()J
    .locals 2

    #@0
    .prologue
    .line 690
    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    #@2
    return-wide v0
.end method

.method public getFillAfter()Z
    .locals 1

    #@0
    .prologue
    .line 745
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    #@2
    return v0
.end method

.method public getFillBefore()Z
    .locals 1

    #@0
    .prologue
    .line 734
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    #@2
    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    #@0
    .prologue
    .line 669
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
    .line 1024
    iget-object v2, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    #@4
    .line 1025
    .local v2, "tempRegion":Landroid/graphics/RectF;
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    #@6
    .line 1027
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
    .line 1028
    invoke-virtual {p6}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v4, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    #@14
    .line 1030
    invoke-virtual {p5, v8, v8}, Landroid/graphics/RectF;->inset(FF)V

    #@17
    .line 1031
    invoke-virtual {v2, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    #@1a
    .line 1032
    invoke-virtual {p5, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    #@1d
    .line 1034
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    #@20
    .line 1036
    iget-object v3, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    #@22
    .line 1037
    .local v3, "tempTransformation":Landroid/view/animation/Transformation;
    iget-object v1, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    #@24
    .line 1039
    .local v1, "previousTransformation":Landroid/view/animation/Transformation;
    invoke-virtual {v3, p6}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    #@27
    .line 1040
    invoke-virtual {p6, v1}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    #@2a
    .line 1041
    invoke-virtual {v1, v3}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    #@2d
    .line 1022
    return-void
.end method

.method public getRepeatCount()I
    .locals 1

    #@0
    .prologue
    .line 721
    iget v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    #@2
    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    #@0
    .prologue
    .line 710
    iget v0, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    #@2
    return v0
.end method

.method protected getScaleFactor()F
    .locals 1

    #@0
    .prologue
    .line 646
    iget v0, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    #@2
    return v0
.end method

.method public getStartOffset()J
    .locals 2

    #@0
    .prologue
    .line 700
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    #@2
    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    #@0
    .prologue
    .line 680
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
    .line 842
    iget-wide v10, p0, Landroid/view/animation/Animation;->mStartTime:J

    #@2
    const-wide/16 v12, -0x1

    #@4
    cmp-long v7, v10, v12

    #@6
    if-nez v7, :cond_0

    #@8
    .line 843
    move-wide/from16 v0, p1

    #@a
    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    #@c
    .line 846
    :cond_0
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getStartOffset()J

    #@f
    move-result-wide v8

    #@10
    .line 847
    .local v8, "startOffset":J
    iget-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    #@12
    .line 849
    .local v2, "duration":J
    const-wide/16 v10, 0x0

    #@14
    cmp-long v7, v2, v10

    #@16
    if-eqz v7, :cond_a

    #@18
    .line 850
    iget-wide v10, p0, Landroid/view/animation/Animation;->mStartTime:J

    #@1a
    add-long/2addr v10, v8

    #@1b
    sub-long v10, p1, v10

    #@1d
    long-to-float v7, v10

    #@1e
    .line 851
    long-to-float v10, v2

    #@1f
    .line 850
    div-float v6, v7, v10

    #@21
    .line 857
    .local v6, "normalizedTime":F
    :goto_0
    const/high16 v7, 0x3f800000    # 1.0f

    #@23
    cmpl-float v7, v6, v7

    #@25
    if-gez v7, :cond_c

    #@27
    invoke-direct {p0}, Landroid/view/animation/Animation;->isCanceled()Z

    #@2a
    move-result v4

    #@2b
    .line 858
    .local v4, "expired":Z
    :goto_1
    if-eqz v4, :cond_d

    #@2d
    const/4 v7, 0x0

    #@2e
    :goto_2
    iput-boolean v7, p0, Landroid/view/animation/Animation;->mMore:Z

    #@30
    .line 860
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    #@32
    if-nez v7, :cond_1

    #@34
    const/high16 v7, 0x3f800000    # 1.0f

    #@36
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    #@39
    move-result v7

    #@3a
    const/4 v10, 0x0

    #@3b
    invoke-static {v7, v10}, Ljava/lang/Math;->max(FF)F

    #@3e
    move-result v6

    #@3f
    .line 862
    :cond_1
    const/4 v7, 0x0

    #@40
    cmpl-float v7, v6, v7

    #@42
    if-gez v7, :cond_2

    #@44
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    #@46
    if-eqz v7, :cond_7

    #@48
    :cond_2
    const/high16 v7, 0x3f800000    # 1.0f

    #@4a
    cmpg-float v7, v6, v7

    #@4c
    if-lez v7, :cond_3

    #@4e
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    #@50
    if-eqz v7, :cond_7

    #@52
    .line 863
    :cond_3
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mStarted:Z

    #@54
    if-nez v7, :cond_4

    #@56
    .line 864
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationStart()V

    #@59
    .line 865
    const/4 v7, 0x1

    #@5a
    iput-boolean v7, p0, Landroid/view/animation/Animation;->mStarted:Z

    #@5c
    .line 866
    sget-boolean v7, Landroid/view/animation/Animation$NoImagePreloadHolder;->USE_CLOSEGUARD:Z

    #@5e
    if-eqz v7, :cond_4

    #@60
    .line 867
    iget-object v7, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    #@62
    const-string/jumbo v10, "cancel or detach or getTransformation"

    #@65
    invoke-virtual {v7, v10}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@68
    .line 871
    :cond_4
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    #@6a
    if-eqz v7, :cond_5

    #@6c
    const/high16 v7, 0x3f800000    # 1.0f

    #@6e
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    #@71
    move-result v7

    #@72
    const/4 v10, 0x0

    #@73
    invoke-static {v7, v10}, Ljava/lang/Math;->max(FF)F

    #@76
    move-result v6

    #@77
    .line 873
    :cond_5
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    #@79
    if-eqz v7, :cond_6

    #@7b
    .line 874
    const/high16 v7, 0x3f800000    # 1.0f

    #@7d
    sub-float v6, v7, v6

    #@7f
    .line 877
    :cond_6
    iget-object v7, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    #@81
    invoke-interface {v7, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@84
    move-result v5

    #@85
    .line 878
    .local v5, "interpolatedTime":F
    move-object/from16 v0, p3

    #@87
    invoke-virtual {p0, v5, v0}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    #@8a
    .line 881
    .end local v5    # "interpolatedTime":F
    :cond_7
    if-eqz v4, :cond_9

    #@8c
    .line 882
    iget v7, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    #@8e
    iget v10, p0, Landroid/view/animation/Animation;->mRepeated:I

    #@90
    if-eq v7, v10, :cond_8

    #@92
    invoke-direct {p0}, Landroid/view/animation/Animation;->isCanceled()Z

    #@95
    move-result v7

    #@96
    if-eqz v7, :cond_e

    #@98
    .line 883
    :cond_8
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mEnded:Z

    #@9a
    if-nez v7, :cond_9

    #@9c
    .line 884
    const/4 v7, 0x1

    #@9d
    iput-boolean v7, p0, Landroid/view/animation/Animation;->mEnded:Z

    #@9f
    .line 885
    iget-object v7, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    #@a1
    invoke-virtual {v7}, Ldalvik/system/CloseGuard;->close()V

    #@a4
    .line 886
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationEnd()V

    #@a7
    .line 904
    :cond_9
    :goto_3
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mMore:Z

    #@a9
    if-nez v7, :cond_12

    #@ab
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    #@ad
    if-eqz v7, :cond_12

    #@af
    .line 905
    const/4 v7, 0x0

    #@b0
    iput-boolean v7, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    #@b2
    .line 906
    const/4 v7, 0x1

    #@b3
    return v7

    #@b4
    .line 854
    .end local v4    # "expired":Z
    .end local v6    # "normalizedTime":F
    :cond_a
    iget-wide v10, p0, Landroid/view/animation/Animation;->mStartTime:J

    #@b6
    cmp-long v7, p1, v10

    #@b8
    if-gez v7, :cond_b

    #@ba
    const/4 v6, 0x0

    #@bb
    .restart local v6    # "normalizedTime":F
    goto/16 :goto_0

    #@bd
    .end local v6    # "normalizedTime":F
    :cond_b
    const/high16 v6, 0x3f800000    # 1.0f

    #@bf
    .restart local v6    # "normalizedTime":F
    goto/16 :goto_0

    #@c1
    .line 857
    :cond_c
    const/4 v4, 0x1

    #@c2
    goto/16 :goto_1

    #@c4
    .line 858
    .restart local v4    # "expired":Z
    :cond_d
    const/4 v7, 0x1

    #@c5
    goto/16 :goto_2

    #@c7
    .line 889
    :cond_e
    iget v7, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    #@c9
    if-lez v7, :cond_f

    #@cb
    .line 890
    iget v7, p0, Landroid/view/animation/Animation;->mRepeated:I

    #@cd
    add-int/lit8 v7, v7, 0x1

    #@cf
    iput v7, p0, Landroid/view/animation/Animation;->mRepeated:I

    #@d1
    .line 893
    :cond_f
    iget v7, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    #@d3
    const/4 v10, 0x2

    #@d4
    if-ne v7, v10, :cond_10

    #@d6
    .line 894
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    #@d8
    if-eqz v7, :cond_11

    #@da
    const/4 v7, 0x0

    #@db
    :goto_4
    iput-boolean v7, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    #@dd
    .line 897
    :cond_10
    const-wide/16 v10, -0x1

    #@df
    iput-wide v10, p0, Landroid/view/animation/Animation;->mStartTime:J

    #@e1
    .line 898
    const/4 v7, 0x1

    #@e2
    iput-boolean v7, p0, Landroid/view/animation/Animation;->mMore:Z

    #@e4
    .line 900
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationRepeat()V

    #@e7
    goto :goto_3

    #@e8
    .line 894
    :cond_11
    const/4 v7, 0x1

    #@e9
    goto :goto_4

    #@ea
    .line 909
    :cond_12
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mMore:Z

    #@ec
    return v7
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;F)Z
    .locals 1
    .param p1, "currentTime"    # J
    .param p3, "outTransformation"    # Landroid/view/animation/Transformation;
    .param p4, "scale"    # F

    #@0
    .prologue
    .line 951
    iput p4, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    #@2
    .line 952
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
    .line 757
    iget v0, p0, Landroid/view/animation/Animation;->mZAdjustment:I

    #@2
    return v0
.end method

.method public hasAlpha()Z
    .locals 1

    #@0
    .prologue
    .line 1079
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public hasEnded()Z
    .locals 1

    #@0
    .prologue
    .line 970
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    #@2
    return v0
.end method

.method public hasStarted()Z
    .locals 1

    #@0
    .prologue
    .line 961
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
    .line 353
    invoke-virtual {p0}, Landroid/view/animation/Animation;->reset()V

    #@3
    .line 354
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    #@6
    .line 352
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
    .line 1053
    iget-object v1, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    #@4
    .line 1054
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
    .line 1056
    invoke-virtual {v1, v6, v6}, Landroid/graphics/RectF;->inset(FF)V

    #@e
    .line 1057
    iget-boolean v2, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 1058
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    #@14
    .line 1059
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
    .line 1052
    .end local v0    # "previousTransformation":Landroid/view/animation/Transformation;
    :cond_0
    return-void
.end method

.method public isFillEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 563
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    #@2
    return v0
.end method

.method public isInitialized()Z
    .locals 1

    #@0
    .prologue
    .line 334
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
    .line 284
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    #@4
    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    #@7
    .line 285
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    #@9
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    #@c
    .line 286
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mInitialized:Z

    #@e
    .line 287
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    #@10
    .line 288
    iput v1, p0, Landroid/view/animation/Animation;->mRepeated:I

    #@12
    .line 289
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mMore:Z

    #@14
    .line 290
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    #@16
    .line 291
    const/4 v0, 0x0

    #@17
    iput-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    #@19
    .line 283
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
    .line 999
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1007
    return p2

    #@4
    .line 1001
    :pswitch_0
    return p2

    #@5
    .line 1003
    :pswitch_1
    int-to-float v0, p3

    #@6
    mul-float/2addr v0, p2

    #@7
    return v0

    #@8
    .line 1005
    :pswitch_2
    int-to-float v0, p4

    #@9
    mul-float/2addr v0, p2

    #@a
    return v0

    #@b
    .line 999
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
    .line 452
    iget-wide v2, p0, Landroid/view/animation/Animation;->mStartOffset:J

    #@5
    cmp-long v2, v2, p1

    #@7
    if-lez v2, :cond_0

    #@9
    .line 453
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartOffset:J

    #@b
    .line 454
    iput-wide v8, p0, Landroid/view/animation/Animation;->mDuration:J

    #@d
    .line 455
    iput v6, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    #@f
    .line 456
    return-void

    #@10
    .line 459
    :cond_0
    iget-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    #@12
    iget-wide v4, p0, Landroid/view/animation/Animation;->mStartOffset:J

    #@14
    add-long v0, v2, v4

    #@16
    .line 460
    .local v0, "dur":J
    cmp-long v2, v0, p1

    #@18
    if-lez v2, :cond_1

    #@1a
    .line 461
    iget-wide v2, p0, Landroid/view/animation/Animation;->mStartOffset:J

    #@1c
    sub-long v2, p1, v2

    #@1e
    iput-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    #@20
    .line 462
    move-wide v0, p1

    #@21
    .line 465
    :cond_1
    iget-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    #@23
    cmp-long v2, v2, v8

    #@25
    if-gtz v2, :cond_2

    #@27
    .line 466
    iput-wide v8, p0, Landroid/view/animation/Animation;->mDuration:J

    #@29
    .line 467
    iput v6, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    #@2b
    .line 468
    return-void

    #@2c
    .line 473
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
    .line 477
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
    .line 478
    iget v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    #@40
    if-gez v2, :cond_4

    #@42
    .line 479
    iput v6, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    #@44
    .line 450
    :cond_4
    return-void

    #@45
    .line 474
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
    .line 490
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
    .line 491
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
    .line 489
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    #@0
    .prologue
    .line 808
    iput-object p1, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    #@2
    .line 807
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "bg"    # I

    #@0
    .prologue
    .line 633
    iput p1, p0, Landroid/view/animation/Animation;->mBackgroundColor:I

    #@2
    .line 632
    return-void
.end method

.method public setDetachWallpaper(Z)V
    .locals 0
    .param p1, "detachWallpaper"    # Z

    #@0
    .prologue
    .line 659
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    #@2
    .line 658
    return-void
.end method

.method public setDuration(J)V
    .locals 3
    .param p1, "durationMillis"    # J

    #@0
    .prologue
    .line 435
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 436
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Animation duration cannot be negative"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 438
    :cond_0
    iput-wide p1, p0, Landroid/view/animation/Animation;->mDuration:J

    #@11
    .line 434
    return-void
.end method

.method public setFillAfter(Z)V
    .locals 0
    .param p1, "fillAfter"    # Z

    #@0
    .prologue
    .line 612
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    #@2
    .line 611
    return-void
.end method

.method public setFillBefore(Z)V
    .locals 0
    .param p1, "fillBefore"    # Z

    #@0
    .prologue
    .line 596
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    #@2
    .line 595
    return-void
.end method

.method public setFillEnabled(Z)V
    .locals 0
    .param p1, "fillEnabled"    # Z

    #@0
    .prologue
    .line 578
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    #@2
    .line 577
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resID"    # I

    #@0
    .prologue
    .line 398
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@7
    .line 397
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "i"    # Landroid/view/animation/Interpolator;

    #@0
    .prologue
    .line 409
    iput-object p1, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    #@2
    .line 408
    return-void
.end method

.method public setListenerHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 363
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 364
    new-instance v0, Landroid/view/animation/Animation$1;

    #@6
    invoke-direct {v0, p0}, Landroid/view/animation/Animation$1;-><init>(Landroid/view/animation/Animation;)V

    #@9
    iput-object v0, p0, Landroid/view/animation/Animation;->mOnStart:Ljava/lang/Runnable;

    #@b
    .line 371
    new-instance v0, Landroid/view/animation/Animation$2;

    #@d
    invoke-direct {v0, p0}, Landroid/view/animation/Animation$2;-><init>(Landroid/view/animation/Animation;)V

    #@10
    iput-object v0, p0, Landroid/view/animation/Animation;->mOnRepeat:Ljava/lang/Runnable;

    #@12
    .line 378
    new-instance v0, Landroid/view/animation/Animation$3;

    #@14
    invoke-direct {v0, p0}, Landroid/view/animation/Animation$3;-><init>(Landroid/view/animation/Animation;)V

    #@17
    iput-object v0, p0, Landroid/view/animation/Animation;->mOnEnd:Ljava/lang/Runnable;

    #@19
    .line 386
    :cond_0
    iput-object p1, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    #@1b
    .line 362
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0
    .param p1, "repeatCount"    # I

    #@0
    .prologue
    .line 550
    if-gez p1, :cond_0

    #@2
    .line 551
    const/4 p1, -0x1

    #@3
    .line 553
    :cond_0
    iput p1, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    #@5
    .line 549
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0
    .param p1, "repeatMode"    # I

    #@0
    .prologue
    .line 537
    iput p1, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    #@2
    .line 536
    return-void
.end method

.method public setStartOffset(J)V
    .locals 1
    .param p1, "startOffset"    # J

    #@0
    .prologue
    .line 422
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartOffset:J

    #@2
    .line 421
    return-void
.end method

.method public setStartTime(J)V
    .locals 1
    .param p1, "startTimeMillis"    # J

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 505
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartTime:J

    #@3
    .line 506
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    #@5
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    #@7
    .line 507
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    #@9
    .line 508
    iput v0, p0, Landroid/view/animation/Animation;->mRepeated:I

    #@b
    .line 509
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mMore:Z

    #@e
    .line 504
    return-void
.end method

.method public setZAdjustment(I)V
    .locals 0
    .param p1, "zAdjustment"    # I

    #@0
    .prologue
    .line 623
    iput p1, p0, Landroid/view/animation/Animation;->mZAdjustment:I

    #@2
    .line 622
    return-void
.end method

.method public start()V
    .locals 2

    #@0
    .prologue
    .line 517
    const-wide/16 v0, -0x1

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    #@5
    .line 516
    return-void
.end method

.method public startNow()V
    .locals 2

    #@0
    .prologue
    .line 525
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    #@7
    .line 524
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    #@0
    .prologue
    .line 797
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .locals 1

    #@0
    .prologue
    .line 785
    const/4 v0, 0x1

    #@1
    return v0
.end method
