.class public Landroid/widget/ProgressBar;
.super Landroid/view/View;
.source "ProgressBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ProgressBar$ProgressTintInfo;,
        Landroid/widget/ProgressBar$RefreshProgressRunnable;,
        Landroid/widget/ProgressBar$RefreshData;,
        Landroid/widget/ProgressBar$SavedState;
    }
.end annotation


# static fields
.field private static final greylist-max-o MAX_LEVEL:I = 0x2710

.field private static final greylist-max-o PROGRESS_ANIM_DURATION:I = 0x50

.field private static final greylist-max-o PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field private final greylist-max-o VISUAL_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/widget/ProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mAggregatedIsVisible:Z

.field private greylist-max-o mAnimation:Landroid/view/animation/AlphaAnimation;

.field private greylist-max-o mAttached:Z

.field private greylist-max-o mBehavior:I

.field private blacklist mCachedLocale:Ljava/util/Locale;

.field private greylist-max-p mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-p mDuration:I

.field private greylist-max-o mHasAnimation:Z

.field private greylist-max-o mInDrawing:Z

.field private greylist-max-p mIndeterminate:Z

.field private greylist-max-o mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mLastProgressAnimator:Landroid/animation/ObjectAnimator;

.field private greylist-max-o mMax:I

.field greylist-max-p mMaxHeight:I

.field private greylist-max-o mMaxInitialized:Z

.field greylist-max-o mMaxWidth:I

.field private greylist-max-o mMin:I

.field greylist-max-p mMinHeight:I

.field private greylist-max-o mMinInitialized:Z

.field greylist-max-p mMinWidth:I

.field greylist-max-r mMirrorForRtl:Z

.field private greylist-max-o mNoInvalidate:Z

.field private greylist mOnlyIndeterminate:Z

.field private blacklist mPercentFormat:Ljava/text/NumberFormat;

.field private greylist-max-o mProgress:I

.field private greylist-max-o mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

.field private final greylist-max-o mRefreshData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ProgressBar$RefreshData;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mRefreshIsPosted:Z

.field private greylist-max-o mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

.field greylist-max-o mSampleWidth:I

.field private greylist-max-o mSecondaryProgress:I

.field private greylist-max-o mShouldStartAnimationDrawable:Z

.field private greylist-max-o mTransformation:Landroid/view/animation/Transformation;

.field private greylist-max-o mUiThreadId:J

.field private greylist-max-o mVisualProgress:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRefreshData(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVisualProgress(Landroid/widget/ProgressBar;)F
    .registers 1

    iget p0, p0, Landroid/widget/ProgressBar;->mVisualProgress:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastProgressAnimator(Landroid/widget/ProgressBar;Landroid/animation/ObjectAnimator;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/ProgressBar;->mLastProgressAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRefreshIsPosted(Landroid/widget/ProgressBar;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVisualProgress(Landroid/widget/ProgressBar;F)V
    .registers 2

    iput p1, p0, Landroid/widget/ProgressBar;->mVisualProgress:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoRefreshProgress(Landroid/widget/ProgressBar;IIZZZ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetVisualProgress(Landroid/widget/ProgressBar;IF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;->setVisualProgress(IF)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 183
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/widget/ProgressBar;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 271
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 272
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 275
    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 276
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 279
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 280
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 283
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 240
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ProgressBar;->mSampleWidth:I

    .line 254
    iput-boolean v0, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    .line 259
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    .line 2443
    new-instance v1, Landroid/widget/ProgressBar$2;

    const-string/jumbo v2, "visual_progress"

    invoke-direct {v1, p0, v2}, Landroid/widget/ProgressBar$2;-><init>(Landroid/widget/ProgressBar;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/widget/ProgressBar;->VISUAL_PROGRESS:Landroid/util/FloatProperty;

    .line 285
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/ProgressBar;->mUiThreadId:J

    .line 286
    invoke-direct {p0}, Landroid/widget/ProgressBar;->initProgressBar()V

    .line 288
    sget-object v1, Lcom/android/internal/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 290
    .local v6, "a":Landroid/content/res/TypedArray;
    sget-object v4, Lcom/android/internal/R$styleable;->ProgressBar:[I

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v7, p3

    move v8, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v3, "context":Landroid/content/Context;
    .local v5, "attrs":Landroid/util/AttributeSet;
    .local v7, "defStyleAttr":I
    .local v8, "defStyleRes":I
    invoke-virtual/range {v2 .. v8}, Landroid/widget/ProgressBar;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 293
    const/4 p1, 0x1

    iput-boolean p1, v2, Landroid/widget/ProgressBar;->mNoInvalidate:Z

    .line 295
    const/16 p2, 0x8

    invoke-virtual {v6, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 296
    .local p2, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_4e

    .line 300
    invoke-static {p2}, Landroid/widget/ProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result p3

    if-eqz p3, :cond_4b

    .line 301
    invoke-virtual {p0, p2}, Landroid/widget/ProgressBar;->setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4e

    .line 303
    :cond_4b
    invoke-virtual {p0, p2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    :cond_4e
    :goto_4e
    const/16 p3, 0x9

    iget p4, v2, Landroid/widget/ProgressBar;->mDuration:I

    invoke-virtual {v6, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, v2, Landroid/widget/ProgressBar;->mDuration:I

    .line 309
    const/16 p3, 0xb

    iget p4, v2, Landroid/widget/ProgressBar;->mMinWidth:I

    invoke-virtual {v6, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, v2, Landroid/widget/ProgressBar;->mMinWidth:I

    .line 310
    iget p3, v2, Landroid/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {v6, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, v2, Landroid/widget/ProgressBar;->mMaxWidth:I

    .line 311
    const/16 p3, 0xc

    iget p4, v2, Landroid/widget/ProgressBar;->mMinHeight:I

    invoke-virtual {v6, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, v2, Landroid/widget/ProgressBar;->mMinHeight:I

    .line 312
    iget p3, v2, Landroid/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {v6, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, v2, Landroid/widget/ProgressBar;->mMaxHeight:I

    .line 314
    const/16 p3, 0xa

    iget p4, v2, Landroid/widget/ProgressBar;->mBehavior:I

    invoke-virtual {v6, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, v2, Landroid/widget/ProgressBar;->mBehavior:I

    .line 316
    const/16 p3, 0xd

    const p4, 0x10a000b

    invoke-virtual {v6, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 319
    .local p3, "resID":I
    if-lez p3, :cond_94

    .line 320
    invoke-virtual {p0, v3, p3}, Landroid/widget/ProgressBar;->setInterpolator(Landroid/content/Context;I)V

    .line 323
    :cond_94
    const/16 p4, 0x1a

    iget v1, v2, Landroid/widget/ProgressBar;->mMin:I

    invoke-virtual {v6, p4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    invoke-virtual {p0, p4}, Landroid/widget/ProgressBar;->setMin(I)V

    .line 324
    const/4 p4, 0x2

    iget v1, v2, Landroid/widget/ProgressBar;->mMax:I

    invoke-virtual {v6, p4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    invoke-virtual {p0, p4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 326
    const/4 p4, 0x3

    iget v1, v2, Landroid/widget/ProgressBar;->mProgress:I

    invoke-virtual {v6, p4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    invoke-virtual {p0, p4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 328
    const/4 p4, 0x4

    iget v1, v2, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    invoke-virtual {v6, p4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    invoke-virtual {p0, p4}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 331
    const/4 p4, 0x7

    invoke-virtual {v6, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 333
    .local p4, "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz p4, :cond_d1

    .line 334
    invoke-static {p4}, Landroid/widget/ProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_ce

    .line 335
    invoke-virtual {p0, p4}, Landroid/widget/ProgressBar;->setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    goto :goto_d1

    .line 337
    :cond_ce
    invoke-virtual {p0, p4}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 341
    :cond_d1
    :goto_d1
    const/4 v1, 0x6

    iget-boolean v4, v2, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    invoke-virtual {v6, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v2, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    .line 344
    iput-boolean v0, v2, Landroid/widget/ProgressBar;->mNoInvalidate:Z

    .line 346
    iget-boolean v1, v2, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-nez v1, :cond_e9

    const/4 v1, 0x5

    iget-boolean v4, v2, Landroid/widget/ProgressBar;->mIndeterminate:Z

    invoke-virtual {v6, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_ea

    :cond_e9
    move v0, p1

    :cond_ea
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 349
    const/16 v0, 0xf

    iget-boolean v1, v2, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v2, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    .line 351
    const/16 v0, 0x11

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/4 v4, -0x1

    const/4 v9, 0x0

    if-eqz v1, :cond_11c

    .line 352
    iget-object v1, v2, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v1, :cond_10c

    .line 353
    new-instance v1, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v1, v9}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar-IA;)V

    iput-object v1, v2, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 355
    :cond_10c
    iget-object v1, v2, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-virtual {v6, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0, v9}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBlendMode:Landroid/graphics/BlendMode;

    .line 357
    iget-object v0, v2, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-boolean p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    .line 360
    :cond_11c
    const/16 v0, 0x10

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_13b

    .line 361
    iget-object v1, v2, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v1, :cond_12f

    .line 362
    new-instance v1, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v1, v9}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar-IA;)V

    iput-object v1, v2, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 364
    :cond_12f
    iget-object v1, v2, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    .line 366
    iget-object v0, v2, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-boolean p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    .line 369
    :cond_13b
    const/16 v0, 0x13

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_15e

    .line 370
    iget-object v1, v2, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v1, :cond_14e

    .line 371
    new-instance v1, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v1, v9}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar-IA;)V

    iput-object v1, v2, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 373
    :cond_14e
    iget-object v1, v2, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-virtual {v6, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0, v9}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundBlendMode:Landroid/graphics/BlendMode;

    .line 375
    iget-object v0, v2, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-boolean p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    .line 378
    :cond_15e
    const/16 v0, 0x12

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 379
    iget-object v1, v2, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v1, :cond_171

    .line 380
    new-instance v1, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v1, v9}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar-IA;)V

    iput-object v1, v2, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 382
    :cond_171
    iget-object v1, v2, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    .line 384
    iget-object v0, v2, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-boolean p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    .line 387
    :cond_17d
    const/16 v0, 0x15

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1a0

    .line 388
    iget-object v1, v2, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v1, :cond_190

    .line 389
    new-instance v1, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v1, v9}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar-IA;)V

    iput-object v1, v2, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 391
    :cond_190
    iget-object v1, v2, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 392
    invoke-virtual {v6, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 391
    invoke-static {v0, v9}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressBlendMode:Landroid/graphics/BlendMode;

    .line 393
    iget-object v0, v2, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-boolean p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    .line 396
    :cond_1a0
    const/16 v0, 0x14

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1bf

    .line 397
    iget-object v1, v2, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v1, :cond_1b3

    .line 398
    new-instance v1, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v1, v9}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar-IA;)V

    iput-object v1, v2, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 400
    :cond_1b3
    iget-object v1, v2, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    .line 402
    iget-object v0, v2, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-boolean p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    .line 405
    :cond_1bf
    const/16 v0, 0x17

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1e2

    .line 406
    iget-object v1, v2, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v1, :cond_1d2

    .line 407
    new-instance v1, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v1, v9}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar-IA;)V

    iput-object v1, v2, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 409
    :cond_1d2
    iget-object v1, v2, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-virtual {v6, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0, v9}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateBlendMode:Landroid/graphics/BlendMode;

    .line 411
    iget-object v0, v2, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-boolean p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    .line 414
    :cond_1e2
    const/16 v0, 0x16

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_201

    .line 415
    iget-object v1, v2, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v1, :cond_1f5

    .line 416
    new-instance v1, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v1, v9}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar-IA;)V

    iput-object v1, v2, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 418
    :cond_1f5
    iget-object v1, v2, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    .line 420
    iget-object v0, v2, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-boolean p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    .line 423
    :cond_201
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 425
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressTints()V

    .line 426
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyIndeterminateTint()V

    .line 429
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_213

    .line 430
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setImportantForAccessibility(I)V

    .line 432
    :cond_213
    return-void
.end method

.method private greylist-max-o applyIndeterminateTint()V
    .registers 4

    .line 881
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_41

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_41

    .line 882
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 883
    .local v0, "tintInfo":Landroid/widget/ProgressBar$ProgressTintInfo;
    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    if-nez v1, :cond_12

    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    if-eqz v1, :cond_41

    .line 884
    :cond_12
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 886
    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    if-eqz v1, :cond_25

    .line 887
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 890
    :cond_25
    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    if-eqz v1, :cond_30

    .line 891
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 896
    :cond_30
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 897
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 901
    .end local v0    # "tintInfo":Landroid/widget/ProgressBar$ProgressTintInfo;
    :cond_41
    return-void
.end method

.method private greylist-max-o applyPrimaryProgressTint()V
    .registers 3

    .line 1006
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    if-eqz v0, :cond_3d

    .line 1008
    :cond_c
    const v0, 0x102000d

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/ProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1009
    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3d

    .line 1010
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    if-eqz v1, :cond_23

    .line 1011
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1013
    :cond_23
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    if-eqz v1, :cond_30

    .line 1014
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 1019
    :cond_30
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1020
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1024
    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_3d
    return-void
.end method

.method private greylist-max-o applyProgressBackgroundTint()V
    .registers 3

    .line 1031
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    if-eqz v0, :cond_3c

    .line 1033
    :cond_c
    const/high16 v0, 0x1020000

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/ProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1034
    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3c

    .line 1035
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    if-eqz v1, :cond_22

    .line 1036
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1038
    :cond_22
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    if-eqz v1, :cond_2f

    .line 1039
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 1044
    :cond_2f
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1045
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1049
    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_3c
    return-void
.end method

.method private greylist-max-o applyProgressTints()V
    .registers 2

    .line 994
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_11

    .line 995
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyPrimaryProgressTint()V

    .line 996
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressBackgroundTint()V

    .line 997
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applySecondaryProgressTint()V

    .line 999
    :cond_11
    return-void
.end method

.method private greylist-max-o applySecondaryProgressTint()V
    .registers 3

    .line 1056
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    if-eqz v0, :cond_3d

    .line 1058
    :cond_c
    const v0, 0x102000f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/ProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1059
    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3d

    .line 1060
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    if-eqz v1, :cond_23

    .line 1061
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1063
    :cond_23
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    if-eqz v1, :cond_30

    .line 1064
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 1069
    :cond_30
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1070
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1074
    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_3d
    return-void
.end method

.method private declared-synchronized greylist-max-o doRefreshProgress(IIZZZ)V
    .registers 13
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z
    .param p4, "callBackToApp"    # Z
    .param p5, "animate"    # Z

    monitor-enter p0

    .line 1563
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    iget v1, p0, Landroid/widget/ProgressBar;->mMin:I

    sub-int/2addr v0, v1

    .line 1564
    .local v0, "range":I
    if-lez v0, :cond_10

    iget v1, p0, Landroid/widget/ProgressBar;->mMin:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_11

    .end local p0    # "this":Landroid/widget/ProgressBar;
    :cond_10
    const/4 v1, 0x0

    .line 1565
    .local v1, "scale":F
    :goto_11
    const v2, 0x102000d

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_1a

    move v2, v4

    goto :goto_1b

    :cond_1a
    move v2, v3

    .line 1567
    .local v2, "isPrimary":Z
    :goto_1b
    if-eqz v2, :cond_44

    if-eqz p5, :cond_44

    .line 1568
    iget-object v5, p0, Landroid/widget/ProgressBar;->VISUAL_PROGRESS:Landroid/util/FloatProperty;

    new-array v6, v4, [F

    aput v1, v6, v3

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1569
    .local v3, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 1570
    const-wide/16 v4, 0x50

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1571
    sget-object v4, Landroid/widget/ProgressBar;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1572
    new-instance v4, Landroid/widget/ProgressBar$1;

    invoke-direct {v4, p0}, Landroid/widget/ProgressBar$1;-><init>(Landroid/widget/ProgressBar;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1578
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 1579
    iput-object v3, p0, Landroid/widget/ProgressBar;->mLastProgressAnimator:Landroid/animation/ObjectAnimator;

    .line 1580
    .end local v3    # "animator":Landroid/animation/ObjectAnimator;
    goto :goto_55

    .line 1581
    :cond_44
    if-eqz v2, :cond_52

    iget-object v3, p0, Landroid/widget/ProgressBar;->mLastProgressAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_52

    .line 1582
    iget-object v3, p0, Landroid/widget/ProgressBar;->mLastProgressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1583
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/ProgressBar;->mLastProgressAnimator:Landroid/animation/ObjectAnimator;

    .line 1585
    :cond_52
    invoke-direct {p0, p1, v1}, Landroid/widget/ProgressBar;->setVisualProgress(IF)V

    .line 1588
    :goto_55
    if-eqz v2, :cond_5c

    if-eqz p4, :cond_5c

    .line 1589
    invoke-virtual {p0, v1, p3, p2}, Landroid/widget/ProgressBar;->onProgressRefresh(FZI)V
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_5e

    .line 1591
    :cond_5c
    monitor-exit p0

    return-void

    .line 1562
    .end local v0    # "range":I
    .end local v1    # "scale":F
    .end local v2    # "isPrimary":Z
    .end local p1    # "id":I
    .end local p2    # "progress":I
    .end local p3    # "fromUser":Z
    .end local p4    # "callBackToApp":Z
    .end local p5    # "animate":Z
    :catchall_5e
    move-exception p1

    :try_start_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw p1
.end method

.method private blacklist formatStateDescription(I)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "progress"    # I

    .line 1616
    iget-object v0, p0, Landroid/widget/ProgressBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 1617
    .local v0, "curLocale":Ljava/util/Locale;
    iget-object v1, p0, Landroid/widget/ProgressBar;->mCachedLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 1618
    iput-object v0, p0, Landroid/widget/ProgressBar;->mCachedLocale:Ljava/util/Locale;

    .line 1619
    invoke-static {v0}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ProgressBar;->mPercentFormat:Ljava/text/NumberFormat;

    .line 1621
    :cond_23
    iget-object v1, p0, Landroid/widget/ProgressBar;->mPercentFormat:Ljava/text/NumberFormat;

    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;->getPercent(I)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getPercent(I)F
    .registers 9
    .param p1, "progress"    # I

    .line 1594
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    .line 1595
    .local v0, "maxProgress":F
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMin()I

    move-result v1

    int-to-float v1, v1

    .line 1596
    .local v1, "minProgress":F
    int-to-float v2, p1

    .line 1597
    .local v2, "currentProgress":F
    sub-float v3, v0, v1

    .line 1598
    .local v3, "diffProgress":F
    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-gtz v5, :cond_13

    .line 1599
    return v4

    .line 1601
    :cond_13
    sub-float v5, v2, v1

    div-float/2addr v5, v3

    .line 1602
    .local v5, "percent":F
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    return v4
.end method

.method private greylist-max-o getTintTarget(IZ)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "layerId"    # I
    .param p2, "shouldFallback"    # Z

    .line 1433
    const/4 v0, 0x0

    .line 1435
    .local v0, "layer":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 1436
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1b

    .line 1437
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 1439
    instance-of v2, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_16

    .line 1440
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1443
    :cond_16
    if-eqz p2, :cond_1b

    if-nez v0, :cond_1b

    .line 1444
    move-object v0, v1

    .line 1448
    :cond_1b
    return-object v0
.end method

.method private greylist-max-o initProgressBar()V
    .registers 3

    .line 649
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ProgressBar;->mMin:I

    .line 650
    const/16 v1, 0x64

    iput v1, p0, Landroid/widget/ProgressBar;->mMax:I

    .line 651
    iput v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    .line 652
    iput v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    .line 653
    iput-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    .line 654
    iput-boolean v0, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    .line 655
    const/16 v0, 0xfa0

    iput v0, p0, Landroid/widget/ProgressBar;->mDuration:I

    .line 656
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/ProgressBar;->mBehavior:I

    .line 657
    const/16 v0, 0x18

    iput v0, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    .line 658
    const/16 v1, 0x30

    iput v1, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    .line 659
    iput v0, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    .line 660
    iput v1, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    .line 661
    return-void
.end method

.method private static greylist-max-o needsTileify(Landroid/graphics/drawable/Drawable;)Z
    .registers 7
    .param p0, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 510
    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1f

    .line 511
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 512
    .local v0, "orig":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v3

    .line 513
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    if-ge v4, v3, :cond_1e

    .line 514
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5}, Landroid/widget/ProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 515
    return v2

    .line 513
    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 518
    .end local v4    # "i":I
    :cond_1e
    return v1

    .line 521
    .end local v0    # "orig":Landroid/graphics/drawable/LayerDrawable;
    .end local v3    # "N":I
    :cond_1f
    instance-of v0, p0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_3c

    .line 522
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 523
    .local v0, "in":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v3

    .line 524
    .restart local v3    # "N":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2b
    if-ge v4, v3, :cond_3b

    .line 525
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5}, Landroid/widget/ProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 526
    return v2

    .line 524
    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 529
    .end local v4    # "i":I
    :cond_3b
    return v1

    .line 534
    .end local v0    # "in":Landroid/graphics/drawable/StateListDrawable;
    .end local v3    # "N":I
    :cond_3c
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_41

    .line 535
    return v2

    .line 538
    :cond_41
    return v1
.end method

.method private declared-synchronized greylist-max-r refreshProgress(IIZZ)V
    .registers 12
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z
    .param p4, "animate"    # Z

    monitor-enter p0

    .line 1700
    :try_start_1
    iget-wide v0, p0, Landroid/widget/ProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_45

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    .line 1701
    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    .end local p1    # "id":I
    .end local p2    # "progress":I
    .end local p3    # "fromUser":Z
    .end local p4    # "animate":Z
    .local v2, "id":I
    .local v3, "progress":I
    .local v4, "fromUser":Z
    .local v6, "animate":Z
    :try_start_15
    invoke-direct/range {v1 .. v6}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZZ)V

    goto :goto_43

    .line 1703
    .end local v2    # "id":I
    .end local v3    # "progress":I
    .end local v4    # "fromUser":Z
    .end local v6    # "animate":Z
    .end local p0    # "this":Landroid/widget/ProgressBar;
    .restart local p1    # "id":I
    .restart local p2    # "progress":I
    .restart local p3    # "fromUser":Z
    .restart local p4    # "animate":Z
    :cond_19
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    .end local p1    # "id":I
    .end local p2    # "progress":I
    .end local p3    # "fromUser":Z
    .end local p4    # "animate":Z
    .restart local v2    # "id":I
    .restart local v3    # "progress":I
    .restart local v4    # "fromUser":Z
    .restart local v6    # "animate":Z
    iget-object p1, v1, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    if-nez p1, :cond_2a

    .line 1704
    new-instance p1, Landroid/widget/ProgressBar$RefreshProgressRunnable;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroid/widget/ProgressBar$RefreshProgressRunnable;-><init>(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar-IA;)V

    iput-object p1, v1, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    .line 1707
    :cond_2a
    invoke-static {v2, v3, v4, v6}, Landroid/widget/ProgressBar$RefreshData;->obtain(IIZZ)Landroid/widget/ProgressBar$RefreshData;

    move-result-object p1

    .line 1708
    .local p1, "rd":Landroid/widget/ProgressBar$RefreshData;
    iget-object p2, v1, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1709
    iget-boolean p2, v1, Landroid/widget/ProgressBar;->mAttached:Z

    if-eqz p2, :cond_43

    iget-boolean p2, v1, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z

    if-nez p2, :cond_43

    .line 1710
    iget-object p2, v1, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, p2}, Landroid/widget/ProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 1711
    const/4 p2, 0x1

    iput-boolean p2, v1, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z
    :try_end_43
    .catchall {:try_start_15 .. :try_end_43} :catchall_4a

    .line 1714
    .end local p1    # "rd":Landroid/widget/ProgressBar$RefreshData;
    :cond_43
    :goto_43
    monitor-exit p0

    return-void

    .line 1699
    .end local v2    # "id":I
    .end local v3    # "progress":I
    .end local v4    # "fromUser":Z
    .end local v6    # "animate":Z
    :catchall_45
    move-exception v0

    move-object v1, p0

    :goto_47
    move-object p1, v0

    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_4a

    throw p1

    :catchall_4a
    move-exception v0

    goto :goto_47
.end method

.method private greylist-max-o setVisualProgress(IF)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "progress"    # F

    .line 1662
    iput p2, p0, Landroid/widget/ProgressBar;->mVisualProgress:F

    .line 1664
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1666
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_13

    .line 1667
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1668
    if-nez v0, :cond_13

    .line 1673
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1677
    :cond_13
    if-eqz v0, :cond_1e

    .line 1678
    const v1, 0x461c4000    # 10000.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    .line 1679
    .local v1, "level":I
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1680
    .end local v1    # "level":I
    goto :goto_21

    .line 1681
    :cond_1e
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 1684
    :goto_21
    invoke-virtual {p0, p1, p2}, Landroid/widget/ProgressBar;->onVisualProgressChanged(IF)V

    .line 1685
    return-void
.end method

.method private greylist-max-o swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "newDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 704
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 705
    .local v0, "oldDrawable":Landroid/graphics/drawable/Drawable;
    iput-object p1, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 707
    iget-object v1, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_26

    .line 708
    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 709
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 711
    :cond_e
    iget-object v2, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_26

    .line 712
    iget-object v2, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWindowVisibility()I

    move-result v3

    if-nez v3, :cond_22

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isShown()Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v3, 0x1

    goto :goto_23

    :cond_22
    move v3, v1

    :goto_23
    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 715
    :cond_26
    return-void
.end method

.method private greylist tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .registers 11
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "clip"    # Z

    .line 550
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_82

    .line 551
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 552
    .local v0, "orig":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    .line 553
    .local v2, "N":I
    new-array v3, v2, [Landroid/graphics/drawable/Drawable;

    .line 555
    .local v3, "outDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    if-ge v4, v2, :cond_30

    .line 556
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v5

    .line 557
    .local v5, "id":I
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const v7, 0x102000d

    if-eq v5, v7, :cond_26

    const v7, 0x102000f

    if-ne v5, v7, :cond_24

    goto :goto_26

    :cond_24
    const/4 v7, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    move v7, v1

    :goto_27
    invoke-direct {p0, v6, v7}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v3, v4

    .line 555
    .end local v5    # "id":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 561
    .end local v4    # "i":I
    :cond_30
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 562
    .local v1, "clone":Landroid/graphics/drawable/LayerDrawable;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_36
    if-ge v4, v2, :cond_81

    .line 563
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 564
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerGravity(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 565
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerWidth(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    .line 566
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerHeight(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    .line 567
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetLeft(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetLeft(II)V

    .line 568
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetRight(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetRight(II)V

    .line 569
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetTop(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetTop(II)V

    .line 570
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetBottom(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetBottom(II)V

    .line 571
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetStart(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetStart(II)V

    .line 572
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetEnd(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetEnd(II)V

    .line 562
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 575
    .end local v4    # "i":I
    :cond_81
    return-object v1

    .line 578
    .end local v0    # "orig":Landroid/graphics/drawable/LayerDrawable;
    .end local v1    # "clone":Landroid/graphics/drawable/LayerDrawable;
    .end local v2    # "N":I
    .end local v3    # "outDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_82
    instance-of v0, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_a8

    .line 579
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 580
    .local v0, "in":Landroid/graphics/drawable/StateListDrawable;
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 581
    .local v1, "out":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v2

    .line 582
    .restart local v2    # "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_93
    if-ge v3, v2, :cond_a7

    .line 583
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/StateListDrawable;->getStateSet(I)[I

    move-result-object v4

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 582
    add-int/lit8 v3, v3, 0x1

    goto :goto_93

    .line 586
    .end local v3    # "i":I
    :cond_a7
    return-object v1

    .line 589
    .end local v0    # "in":Landroid/graphics/drawable/StateListDrawable;
    .end local v1    # "out":Landroid/graphics/drawable/StateListDrawable;
    .end local v2    # "N":I
    :cond_a8
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_d5

    .line 590
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 591
    .local v0, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 592
    .local v2, "clone":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 594
    iget v3, p0, Landroid/widget/ProgressBar;->mSampleWidth:I

    if-gtz v3, :cond_cb

    .line 595
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Landroid/widget/ProgressBar;->mSampleWidth:I

    .line 598
    :cond_cb
    if-eqz p2, :cond_d4

    .line 599
    new-instance v3, Landroid/graphics/drawable/ClipDrawable;

    const/4 v4, 0x3

    invoke-direct {v3, v2, v4, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    return-object v3

    .line 601
    :cond_d4
    return-object v2

    .line 605
    .end local v0    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v2    # "clone":Landroid/graphics/drawable/BitmapDrawable;
    :cond_d5
    return-object p1
.end method

.method private greylist-max-o tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 9
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 619
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_36

    .line 620
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 621
    .local v0, "background":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    .line 622
    .local v1, "N":I
    new-instance v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 623
    .local v2, "newBg":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 625
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    const/16 v4, 0x2710

    if-ge v3, v1, :cond_32

    .line 626
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 627
    .local v5, "frame":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 628
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v4

    invoke-virtual {v2, v5, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 625
    .end local v5    # "frame":Landroid/graphics/drawable/Drawable;
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 630
    .end local v3    # "i":I
    :cond_32
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    .line 631
    move-object p1, v2

    .line 633
    .end local v0    # "background":Landroid/graphics/drawable/AnimationDrawable;
    .end local v1    # "N":I
    .end local v2    # "newBg":Landroid/graphics/drawable/AnimationDrawable;
    :cond_36
    return-object p1
.end method

.method private greylist-max-o updateDrawableBounds(II)V
    .registers 13
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 2106
    iget v0, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    iget v1, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 2107
    iget v0, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    iget v1, p0, Landroid/widget/ProgressBar;->mPaddingBottom:I

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    .line 2109
    move v0, p1

    .line 2110
    .local v0, "right":I
    move v1, p2

    .line 2111
    .local v1, "bottom":I
    const/4 v2, 0x0

    .line 2112
    .local v2, "top":I
    const/4 v3, 0x0

    .line 2114
    .local v3, "left":I
    iget-object v4, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_63

    .line 2116
    iget-boolean v4, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-eqz v4, :cond_4f

    iget-object v4, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v4, v4, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v4, :cond_4f

    .line 2119
    iget-object v4, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 2120
    .local v4, "intrinsicWidth":I
    iget-object v5, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 2121
    .local v5, "intrinsicHeight":I
    int-to-float v6, v4

    int-to-float v7, v5

    div-float/2addr v6, v7

    .line 2122
    .local v6, "intrinsicAspect":F
    int-to-float v7, p1

    int-to-float v8, p2

    div-float/2addr v7, v8

    .line 2123
    .local v7, "boundAspect":F
    cmpl-float v8, v6, v7

    if-eqz v8, :cond_4f

    .line 2124
    cmpl-float v8, v7, v6

    if-lez v8, :cond_42

    .line 2126
    int-to-float v8, p2

    mul-float/2addr v8, v6

    float-to-int v8, v8

    .line 2127
    .local v8, "width":I
    sub-int v9, p1, v8

    div-int/lit8 v3, v9, 0x2

    .line 2128
    add-int v0, v3, v8

    .line 2129
    .end local v8    # "width":I
    goto :goto_4f

    .line 2131
    :cond_42
    int-to-float v8, p1

    const/high16 v9, 0x3f800000    # 1.0f

    div-float/2addr v9, v6

    mul-float/2addr v8, v9

    float-to-int v8, v8

    .line 2132
    .local v8, "height":I
    sub-int v9, p2, v8

    div-int/lit8 v9, v9, 0x2

    .line 2133
    .end local v2    # "top":I
    .local v9, "top":I
    add-int v1, v9, v8

    move v2, v9

    .line 2137
    .end local v4    # "intrinsicWidth":I
    .end local v5    # "intrinsicHeight":I
    .end local v6    # "intrinsicAspect":F
    .end local v7    # "boundAspect":F
    .end local v8    # "height":I
    .end local v9    # "top":I
    .restart local v2    # "top":I
    :cond_4f
    :goto_4f
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_5e

    iget-boolean v4, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    if-eqz v4, :cond_5e

    .line 2138
    move v4, v3

    .line 2139
    .local v4, "tempLeft":I
    sub-int v3, p1, v0

    .line 2140
    sub-int v0, p1, v4

    .line 2142
    .end local v4    # "tempLeft":I
    :cond_5e
    iget-object v4, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2145
    :cond_63
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6d

    .line 2146
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2148
    :cond_6d
    return-void
.end method

.method private greylist-max-o updateDrawableState()V
    .registers 6

    .line 2225
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v0

    .line 2226
    .local v0, "state":[I
    const/4 v1, 0x0

    .line 2228
    .local v1, "changed":Z
    iget-object v2, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 2229
    .local v2, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2230
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 2233
    :cond_14
    iget-object v3, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 2234
    .local v3, "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_23

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 2235
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    or-int/2addr v1, v4

    .line 2238
    :cond_23
    if-eqz v1, :cond_28

    .line 2239
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 2241
    :cond_28
    return-void
.end method


# virtual methods
.method greylist-max-o drawTrack(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2161
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 2162
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_73

    .line 2165
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2167
    .local v1, "saveCount":I
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_28

    iget-boolean v2, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    if-eqz v2, :cond_28

    .line 2168
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2169
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_31

    .line 2171
    :cond_28
    iget v2, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2174
    :goto_31
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawingTime()J

    move-result-wide v2

    .line 2175
    .local v2, "time":J
    iget-boolean v4, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_5d

    .line 2176
    iget-object v4, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v6, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v2, v3, v6}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 2177
    iget-object v4, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v4

    .line 2179
    .local v4, "scale":F
    const/4 v6, 0x1

    :try_start_48
    iput-boolean v6, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    .line 2180
    const v6, 0x461c4000    # 10000.0f

    mul-float/2addr v6, v4

    float-to-int v6, v6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_52
    .catchall {:try_start_48 .. :try_end_52} :catchall_59

    .line 2182
    iput-boolean v5, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    .line 2183
    nop

    .line 2184
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidateOnAnimation()V

    goto :goto_5d

    .line 2182
    :catchall_59
    move-exception v6

    iput-boolean v5, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    .line 2183
    throw v6

    .line 2187
    .end local v4    # "scale":F
    :cond_5d
    :goto_5d
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2188
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2190
    iget-boolean v4, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    if-eqz v4, :cond_73

    instance-of v4, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v4, :cond_73

    .line 2191
    move-object v4, v0

    check-cast v4, Landroid/graphics/drawable/Animatable;

    invoke-interface {v4}, Landroid/graphics/drawable/Animatable;->start()V

    .line 2192
    iput-boolean v5, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    .line 2195
    .end local v1    # "saveCount":I
    .end local v2    # "time":J
    :cond_73
    return-void
.end method

.method public whitelist drawableHotspotChanged(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 2245
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 2247
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 2248
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 2251
    :cond_c
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    .line 2252
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 2254
    :cond_15
    return-void
.end method

.method protected whitelist drawableStateChanged()V
    .registers 1

    .line 2220
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2221
    invoke-direct {p0}, Landroid/widget/ProgressBar;->updateDrawableState()V

    .line 2222
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .line 2396
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2398
    const-string v0, "progress:max"

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2399
    const-string v0, "progress:progress"

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2400
    const-string v0, "progress:secondaryProgress"

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2401
    const-string v0, "progress:indeterminate"

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 2402
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 2353
    const-class v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1479
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method greylist-max-o getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .registers 4

    .line 609
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_e

    .line 610
    .local v0, "roundedCorners":[F
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    :array_e
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public whitelist getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 728
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getIndeterminateTintBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    .line 877
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateBlendMode:Landroid/graphics/BlendMode;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public whitelist getIndeterminateTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 807
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public whitelist getIndeterminateTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 3

    .line 861
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getIndeterminateTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v0

    .line 862
    .local v0, "mode":Landroid/graphics/BlendMode;
    if-eqz v0, :cond_b

    invoke-static {v0}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method public whitelist getInterpolator()Landroid/view/animation/Interpolator;
    .registers 2

    .line 2057
    iget-object v0, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public declared-synchronized whitelist getMax()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    .line 1867
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 1867
    .end local p0    # "this":Landroid/widget/ProgressBar;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public whitelist getMaxHeight()I
    .registers 2

    .line 499
    iget v0, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    return v0
.end method

.method public whitelist getMaxWidth()I
    .registers 2

    .line 465
    iget v0, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    return v0
.end method

.method public declared-synchronized whitelist getMin()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    .line 1852
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mMin:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 1852
    .end local p0    # "this":Landroid/widget/ProgressBar;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public whitelist getMinHeight()I
    .registers 2

    .line 482
    iget v0, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    return v0
.end method

.method public whitelist getMinWidth()I
    .registers 2

    .line 448
    iget v0, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    return v0
.end method

.method public greylist-max-o getMirrorForRtl()Z
    .registers 2

    .line 987
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    return v0
.end method

.method public declared-synchronized whitelist getProgress()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    .line 1819
    :try_start_1
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_9

    :cond_7
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    :goto_9
    monitor-exit p0

    return v0

    .line 1819
    .end local p0    # "this":Landroid/widget/ProgressBar;
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public whitelist getProgressBackgroundTintBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    .line 1300
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundBlendMode:Landroid/graphics/BlendMode;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public whitelist getProgressBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1235
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public whitelist getProgressBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 3

    .line 1287
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressBackgroundTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v0

    .line 1288
    .local v0, "mode":Landroid/graphics/BlendMode;
    if-eqz v0, :cond_b

    invoke-static {v0}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method public whitelist getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 933
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getProgressTintBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    .line 1189
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBlendMode:Landroid/graphics/BlendMode;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public whitelist getProgressTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1119
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public whitelist getProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 3

    .line 1173
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v0

    .line 1174
    .local v0, "mode":Landroid/graphics/BlendMode;
    if-eqz v0, :cond_b

    invoke-static {v0}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method public declared-synchronized whitelist getSecondaryProgress()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    .line 1837
    :try_start_1
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_9

    :cond_7
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    :goto_9
    monitor-exit p0

    return v0

    .line 1837
    .end local p0    # "this":Landroid/widget/ProgressBar;
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public whitelist getSecondaryProgressTintBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    .line 1420
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressBlendMode:Landroid/graphics/BlendMode;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public whitelist getSecondaryProgressTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1347
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public whitelist getSecondaryProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 3

    .line 1404
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getSecondaryProgressTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v0

    .line 1405
    .local v0, "mode":Landroid/graphics/BlendMode;
    if-eqz v0, :cond_b

    invoke-static {v0}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method public final declared-synchronized whitelist incrementProgressBy(I)V
    .registers 3
    .param p1, "diff"    # I

    monitor-enter p0

    .line 1938
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 1939
    monitor-exit p0

    return-void

    .line 1937
    .end local p0    # "this":Landroid/widget/ProgressBar;
    .end local p1    # "diff":I
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public final declared-synchronized whitelist incrementSecondaryProgressBy(I)V
    .registers 3
    .param p1, "diff"    # I

    monitor-enter p0

    .line 1949
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 1950
    monitor-exit p0

    return-void

    .line 1948
    .end local p0    # "this":Landroid/widget/ProgressBar;
    .end local p1    # "diff":I
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public whitelist invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 9
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 2084
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    if-nez v0, :cond_2b

    .line 2085
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2086
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2087
    .local v0, "dirty":Landroid/graphics/Rect;
    iget v1, p0, Landroid/widget/ProgressBar;->mScrollX:I

    iget v2, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    add-int/2addr v1, v2

    .line 2088
    .local v1, "scrollX":I
    iget v2, p0, Landroid/widget/ProgressBar;->mScrollY:I

    iget v3, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    add-int/2addr v2, v3

    .line 2090
    .local v2, "scrollY":I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/widget/ProgressBar;->invalidate(IIII)V

    .line 2092
    .end local v0    # "dirty":Landroid/graphics/Rect;
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    goto :goto_2b

    .line 2093
    :cond_28
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2096
    :cond_2b
    :goto_2b
    return-void
.end method

.method public whitelist isAnimating()Z
    .registers 2

    .line 2413
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public declared-synchronized whitelist isIndeterminate()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    .line 671
    :try_start_1
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 671
    .end local p0    # "this":Landroid/widget/ProgressBar;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .registers 2

    .line 1490
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1491
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1492
    :cond_c
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1493
    :cond_15
    return-void
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 10

    .line 2318
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2319
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_a

    .line 2320
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V

    .line 2322
    :cond_a
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    if-eqz v0, :cond_41

    .line 2323
    monitor-enter p0

    .line 2324
    :try_start_f
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2325
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v0, :cond_33

    .line 2326
    iget-object v2, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar$RefreshData;

    .line 2327
    .local v2, "rd":Landroid/widget/ProgressBar$RefreshData;
    iget v4, v2, Landroid/widget/ProgressBar$RefreshData;->id:I

    iget v5, v2, Landroid/widget/ProgressBar$RefreshData;->progress:I

    iget-boolean v6, v2, Landroid/widget/ProgressBar$RefreshData;->fromUser:Z

    iget-boolean v8, v2, Landroid/widget/ProgressBar$RefreshData;->animate:Z
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_3b

    const/4 v7, 0x1

    move-object v3, p0

    :try_start_2a
    invoke-direct/range {v3 .. v8}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZZ)V

    .line 2328
    invoke-virtual {v2}, Landroid/widget/ProgressBar$RefreshData;->recycle()V

    .line 2325
    .end local v2    # "rd":Landroid/widget/ProgressBar$RefreshData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_33
    move-object v3, p0

    .line 2330
    .end local v1    # "i":I
    iget-object v1, v3, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2331
    .end local v0    # "count":I
    monitor-exit p0

    goto :goto_42

    :catchall_3b
    move-exception v0

    move-object v3, p0

    :goto_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_2a .. :try_end_3e} :catchall_3f

    throw v0

    :catchall_3f
    move-exception v0

    goto :goto_3d

    .line 2322
    :cond_41
    move-object v3, p0

    .line 2333
    :goto_42
    const/4 v0, 0x1

    iput-boolean v0, v3, Landroid/widget/ProgressBar;->mAttached:Z

    .line 2334
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 3

    .line 2338
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_7

    .line 2339
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V

    .line 2341
    :cond_7
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 2342
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2343
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z

    .line 2347
    :cond_13
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2348
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mAttached:Z

    .line 2349
    return-void
.end method

.method protected declared-synchronized whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    monitor-enter p0

    .line 2152
    :try_start_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2154
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 2155
    monitor-exit p0

    return-void

    .line 2151
    .end local p0    # "this":Landroid/widget/ProgressBar;
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public greylist-max-o onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 2359
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2360
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    iget v1, p0, Landroid/widget/ProgressBar;->mMin:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2361
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 2362
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 8
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2367
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2369
    const/4 v0, 0x0

    .line 2370
    .local v0, "rangeInfo":Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2371
    invoke-static {}, Landroid/view/accessibility/Flags;->indeterminateRangeInfo()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2372
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->INDETERMINATE:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    goto :goto_29

    .line 2375
    :cond_13
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 2376
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMin()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    .line 2377
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;-><init>(IFFF)V

    move-object v0, v1

    .line 2380
    :cond_29
    :goto_29
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    .line 2383
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_50

    .line 2385
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 2386
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10404db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    goto :goto_50

    .line 2388
    :cond_47
    iget v1, p0, Landroid/widget/ProgressBar;->mProgress:I

    invoke-direct {p0, v1}, Landroid/widget/ProgressBar;->formatStateDescription(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 2391
    :cond_50
    :goto_50
    return-void
.end method

.method protected declared-synchronized whitelist onMeasure(II)V
    .registers 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    monitor-enter p0

    .line 2199
    const/4 v0, 0x0

    .line 2200
    .local v0, "dw":I
    const/4 v1, 0x0

    .line 2202
    .local v1, "dh":I
    :try_start_3
    iget-object v2, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 2203
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_29

    .line 2204
    iget v3, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    iget v4, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    .line 2205
    iget v3, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    iget v4, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v1, v3

    .line 2208
    .end local p0    # "this":Landroid/widget/ProgressBar;
    :cond_29
    invoke-direct {p0}, Landroid/widget/ProgressBar;->updateDrawableState()V

    .line 2210
    iget v3, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    iget v4, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 2211
    iget v3, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    iget v4, p0, Landroid/widget/ProgressBar;->mPaddingBottom:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 2213
    const/4 v3, 0x0

    invoke-static {v0, p1, v3}, Landroid/widget/ProgressBar;->resolveSizeAndState(III)I

    move-result v4

    .line 2214
    .local v4, "measuredWidth":I
    invoke-static {v1, p2, v3}, Landroid/widget/ProgressBar;->resolveSizeAndState(III)I

    move-result v3

    .line 2215
    .local v3, "measuredHeight":I
    invoke-virtual {p0, v4, v3}, Landroid/widget/ProgressBar;->setMeasuredDimension(II)V
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_46

    .line 2216
    monitor-exit p0

    return-void

    .line 2198
    .end local v0    # "dw":I
    .end local v1    # "dh":I
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "measuredHeight":I
    .end local v4    # "measuredWidth":I
    .end local p1    # "widthMeasureSpec":I
    .end local p2    # "heightMeasureSpec":I
    :catchall_46
    move-exception p1

    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p1
.end method

.method greylist-max-o onProgressRefresh(FZI)V
    .registers 6
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z
    .param p3, "progress"    # I

    .line 1646
    iget-object v0, p0, Landroid/widget/ProgressBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1647
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_29

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_29

    .line 1648
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1649
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 1650
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 1651
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1653
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_29
    return-void
.end method

.method public greylist-max-o onResolveDrawables(I)V
    .registers 4
    .param p1, "layoutDirection"    # I

    .line 1500
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1501
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_7

    .line 1502
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1504
    :cond_7
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_10

    .line 1505
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1507
    :cond_10
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_19

    .line 1508
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1510
    :cond_19
    return-void
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 2309
    move-object v0, p1

    check-cast v0, Landroid/widget/ProgressBar$SavedState;

    .line 2310
    .local v0, "ss":Landroid/widget/ProgressBar$SavedState;
    invoke-virtual {v0}, Landroid/widget/ProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2312
    iget v1, v0, Landroid/widget/ProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2313
    iget v1, v0, Landroid/widget/ProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 2314
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 2298
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2299
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/ProgressBar$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/ProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2301
    .local v1, "ss":Landroid/widget/ProgressBar$SavedState;
    iget v2, p0, Landroid/widget/ProgressBar;->mProgress:I

    iput v2, v1, Landroid/widget/ProgressBar$SavedState;->progress:I

    .line 2302
    iget v2, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    iput v2, v1, Landroid/widget/ProgressBar$SavedState;->secondaryProgress:I

    .line 2304
    return-object v1
.end method

.method protected whitelist onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 2100
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;->updateDrawableBounds(II)V

    .line 2101
    return-void
.end method

.method public whitelist onVisibilityAggregated(Z)V
    .registers 4
    .param p1, "isVisible"    # Z

    .line 2062
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    .line 2064
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mAggregatedIsVisible:Z

    if-eq p1, v0, :cond_20

    .line 2065
    iput-boolean p1, p0, Landroid/widget/ProgressBar;->mAggregatedIsVisible:Z

    .line 2067
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_16

    .line 2069
    if-eqz p1, :cond_13

    .line 2070
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V

    goto :goto_16

    .line 2072
    :cond_13
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V

    .line 2076
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_20

    .line 2077
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2080
    :cond_20
    return-void
.end method

.method greylist-max-o onVisualProgressChanged(IF)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "progress"    # F

    .line 1695
    return-void
.end method

.method public whitelist postInvalidate()V
    .registers 2

    .line 1514
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mNoInvalidate:Z

    if-nez v0, :cond_7

    .line 1515
    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    .line 1517
    :cond_7
    return-void
.end method

.method public declared-synchronized whitelist setIndeterminate(Z)V
    .registers 3
    .param p1, "indeterminate"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    monitor-enter p0

    .line 686
    :try_start_1
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_26

    .end local p0    # "this":Landroid/widget/ProgressBar;
    :cond_9
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eq p1, v0, :cond_26

    .line 687
    iput-boolean p1, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    .line 689
    if-eqz p1, :cond_1a

    .line 691
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/widget/ProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 692
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V

    goto :goto_22

    .line 694
    :cond_1a
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/widget/ProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 695
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V

    .line 698
    :goto_22
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->notifyViewAccessibilityStateChangedIfNeeded(I)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    .line 701
    :cond_26
    monitor-exit p0

    return-void

    .line 685
    .end local p1    # "indeterminate":Z
    :catchall_28
    move-exception p1

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public whitelist setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 749
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3b

    .line 750
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    .line 751
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 752
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 755
    :cond_13
    iput-object p1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 757
    if-eqz p1, :cond_31

    .line 758
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 759
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 760
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 761
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 763
    :cond_2e
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyIndeterminateTint()V

    .line 766
    :cond_31
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_3b

    .line 767
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 768
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 771
    :cond_3b
    return-void
.end method

.method public whitelist setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 915
    if-eqz p1, :cond_6

    .line 916
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 919
    :cond_6
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 920
    return-void
.end method

.method public whitelist setIndeterminateTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 4
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 840
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_c

    .line 841
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar-IA;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 843
    :cond_c
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateBlendMode:Landroid/graphics/BlendMode;

    .line 844
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    .line 846
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyIndeterminateTint()V

    .line 847
    return-void
.end method

.method public whitelist setIndeterminateTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 790
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_c

    .line 791
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar-IA;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 793
    :cond_c
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    .line 794
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    .line 796
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyIndeterminateTint()V

    .line 797
    return-void
.end method

.method public whitelist setIndeterminateTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 823
    if-eqz p1, :cond_9

    .line 824
    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 823
    :goto_a
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setIndeterminateTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 825
    return-void
.end method

.method public whitelist setInterpolator(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resID"    # I

    .line 2024
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2025
    return-void
.end method

.method public whitelist setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 2044
    iput-object p1, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 2045
    return-void
.end method

.method public declared-synchronized whitelist setMax(I)V
    .registers 5
    .param p1, "max"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    monitor-enter p0

    .line 1911
    :try_start_1
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mMinInitialized:Z

    if-eqz v0, :cond_c

    .line 1912
    iget v0, p0, Landroid/widget/ProgressBar;->mMin:I

    if-ge p1, v0, :cond_c

    .line 1913
    iget v0, p0, Landroid/widget/ProgressBar;->mMin:I

    move p1, v0

    .line 1916
    .end local p0    # "this":Landroid/widget/ProgressBar;
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ProgressBar;->mMaxInitialized:Z

    .line 1917
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mMinInitialized:Z

    if-eqz v0, :cond_2c

    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    if-eq p1, v0, :cond_2c

    .line 1918
    iput p1, p0, Landroid/widget/ProgressBar;->mMax:I

    .line 1919
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 1921
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    if-le v0, p1, :cond_22

    .line 1922
    iput p1, p0, Landroid/widget/ProgressBar;->mProgress:I

    .line 1924
    :cond_22
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    const/4 v1, 0x0

    const v2, 0x102000d

    invoke-direct {p0, v2, v0, v1, v1}, Landroid/widget/ProgressBar;->refreshProgress(IIZZ)V

    goto :goto_2e

    .line 1926
    :cond_2c
    iput p1, p0, Landroid/widget/ProgressBar;->mMax:I
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 1928
    :goto_2e
    monitor-exit p0

    return-void

    .line 1910
    .end local p1    # "max":I
    :catchall_30
    move-exception p1

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public whitelist setMaxHeight(I)V
    .registers 2
    .param p1, "maxHeight"    # I

    .line 491
    iput p1, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    .line 492
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->requestLayout()V

    .line 493
    return-void
.end method

.method public whitelist setMaxWidth(I)V
    .registers 2
    .param p1, "maxWidth"    # I

    .line 457
    iput p1, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    .line 458
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->requestLayout()V

    .line 459
    return-void
.end method

.method public declared-synchronized whitelist setMin(I)V
    .registers 5
    .param p1, "min"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    monitor-enter p0

    .line 1881
    :try_start_1
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mMaxInitialized:Z

    if-eqz v0, :cond_c

    .line 1882
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    if-le p1, v0, :cond_c

    .line 1883
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    move p1, v0

    .line 1886
    .end local p0    # "this":Landroid/widget/ProgressBar;
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ProgressBar;->mMinInitialized:Z

    .line 1887
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mMaxInitialized:Z

    if-eqz v0, :cond_2c

    iget v0, p0, Landroid/widget/ProgressBar;->mMin:I

    if-eq p1, v0, :cond_2c

    .line 1888
    iput p1, p0, Landroid/widget/ProgressBar;->mMin:I

    .line 1889
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 1891
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    if-ge v0, p1, :cond_22

    .line 1892
    iput p1, p0, Landroid/widget/ProgressBar;->mProgress:I

    .line 1894
    :cond_22
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    const/4 v1, 0x0

    const v2, 0x102000d

    invoke-direct {p0, v2, v0, v1, v1}, Landroid/widget/ProgressBar;->refreshProgress(IIZZ)V

    goto :goto_2e

    .line 1896
    :cond_2c
    iput p1, p0, Landroid/widget/ProgressBar;->mMin:I
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 1898
    :goto_2e
    monitor-exit p0

    return-void

    .line 1880
    .end local p1    # "min":I
    :catchall_30
    move-exception p1

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public whitelist setMinHeight(I)V
    .registers 2
    .param p1, "minHeight"    # I

    .line 474
    iput p1, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    .line 475
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->requestLayout()V

    .line 476
    return-void
.end method

.method public whitelist setMinWidth(I)V
    .registers 2
    .param p1, "minWidth"    # I

    .line 440
    iput p1, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    .line 441
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->requestLayout()V

    .line 442
    return-void
.end method

.method public declared-synchronized whitelist setProgress(I)V
    .registers 3
    .param p1, "progress"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    monitor-enter p0

    .line 1733
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/ProgressBar;->setProgressInternal(IZZ)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 1734
    monitor-exit p0

    return-void

    .line 1732
    .end local p0    # "this":Landroid/widget/ProgressBar;
    .end local p1    # "progress":I
    :catchall_7
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public whitelist setProgress(IZ)V
    .registers 4
    .param p1, "progress"    # I
    .param p2, "animate"    # Z

    .line 1748
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/ProgressBar;->setProgressInternal(IZZ)Z

    .line 1749
    return-void
.end method

.method public whitelist setProgressBackgroundTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 4
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1267
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_c

    .line 1268
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar-IA;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 1270
    :cond_c
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundBlendMode:Landroid/graphics/BlendMode;

    .line 1271
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    .line 1273
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1c

    .line 1274
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressBackgroundTint()V

    .line 1276
    :cond_1c
    return-void
.end method

.method public whitelist setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1214
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_c

    .line 1215
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar-IA;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 1217
    :cond_c
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    .line 1218
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    .line 1220
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1c

    .line 1221
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressBackgroundTint()V

    .line 1223
    :cond_1c
    return-void
.end method

.method public whitelist setProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 1250
    if-eqz p1, :cond_9

    .line 1251
    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 1250
    :goto_a
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgressBackgroundTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 1252
    return-void
.end method

.method public whitelist setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 16
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 944
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_6e

    .line 945
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    .line 946
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 947
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 950
    :cond_13
    iput-object p1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 952
    if-eqz p1, :cond_3e

    .line 953
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 954
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 955
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 956
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 960
    :cond_2e
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 961
    .local v0, "drawableHeight":I
    iget v1, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    if-ge v1, v0, :cond_3b

    .line 962
    iput v0, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    .line 963
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->requestLayout()V

    .line 966
    :cond_3b
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressTints()V

    .line 969
    .end local v0    # "drawableHeight":I
    :cond_3e
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_48

    .line 970
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 971
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 974
    :cond_48
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/widget/ProgressBar;->updateDrawableBounds(II)V

    .line 975
    invoke-direct {p0}, Landroid/widget/ProgressBar;->updateDrawableState()V

    .line 977
    iget v4, p0, Landroid/widget/ProgressBar;->mProgress:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v3, 0x102000d

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZZ)V

    .line 978
    iget v10, v2, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const v9, 0x102000f

    const/4 v11, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZZ)V

    .line 980
    :cond_6e
    return-void
.end method

.method public whitelist setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 1463
    if-eqz p1, :cond_7

    .line 1464
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1467
    :cond_7
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1468
    return-void
.end method

.method declared-synchronized greylist setProgressInternal(IZZ)Z
    .registers 7
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z
    .param p3, "animate"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    monitor-enter p0

    .line 1754
    :try_start_1
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_23

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1756
    monitor-exit p0

    return v1

    .line 1759
    :cond_8
    :try_start_8
    iget v0, p0, Landroid/widget/ProgressBar;->mMin:I

    iget v2, p0, Landroid/widget/ProgressBar;->mMax:I

    invoke-static {p1, v0, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    .line 1761
    .end local p1    # "progress":I
    .local v0, "progress":I
    iget p1, p0, Landroid/widget/ProgressBar;->mProgress:I
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_23

    if-ne v0, p1, :cond_16

    .line 1763
    monitor-exit p0

    return v1

    .line 1766
    :cond_16
    :try_start_16
    iput v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    .line 1767
    iget p1, p0, Landroid/widget/ProgressBar;->mProgress:I

    const v1, 0x102000d

    invoke-direct {p0, v1, p1, p2, p3}, Landroid/widget/ProgressBar;->refreshProgress(IIZZ)V
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_23

    .line 1768
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 1753
    .end local v0    # "progress":I
    .end local p0    # "this":Landroid/widget/ProgressBar;
    .end local p2    # "fromUser":Z
    .end local p3    # "animate":Z
    :catchall_23
    move-exception p1

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public whitelist setProgressTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 4
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1150
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_c

    .line 1151
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar-IA;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 1153
    :cond_c
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBlendMode:Landroid/graphics/BlendMode;

    .line 1154
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    .line 1156
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1c

    .line 1157
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyPrimaryProgressTint()V

    .line 1159
    :cond_1c
    return-void
.end method

.method public whitelist setProgressTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1098
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_c

    .line 1099
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar-IA;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 1101
    :cond_c
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    .line 1102
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    .line 1104
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1c

    .line 1105
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyPrimaryProgressTint()V

    .line 1107
    :cond_1c
    return-void
.end method

.method public whitelist setProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 1134
    if-eqz p1, :cond_9

    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgressTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 1135
    return-void
.end method

.method public declared-synchronized whitelist setSecondaryProgress(I)V
    .registers 5
    .param p1, "secondaryProgress"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    monitor-enter p0

    .line 1786
    :try_start_1
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_26

    if-eqz v0, :cond_7

    .line 1787
    monitor-exit p0

    return-void

    .line 1790
    :cond_7
    :try_start_7
    iget v0, p0, Landroid/widget/ProgressBar;->mMin:I

    if-ge p1, v0, :cond_e

    .line 1791
    iget v0, p0, Landroid/widget/ProgressBar;->mMin:I

    move p1, v0

    .line 1794
    .end local p0    # "this":Landroid/widget/ProgressBar;
    :cond_e
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    if-le p1, v0, :cond_15

    .line 1795
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    move p1, v0

    .line 1798
    :cond_15
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    if-eq p1, v0, :cond_24

    .line 1799
    iput p1, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    .line 1800
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    const/4 v1, 0x0

    const v2, 0x102000f

    invoke-direct {p0, v2, v0, v1, v1}, Landroid/widget/ProgressBar;->refreshProgress(IIZZ)V
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_26

    .line 1802
    :cond_24
    monitor-exit p0

    return-void

    .line 1785
    .end local p1    # "secondaryProgress":I
    :catchall_26
    move-exception p1

    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public whitelist setSecondaryProgressTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 4
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1381
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_c

    .line 1382
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar-IA;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 1384
    :cond_c
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressBlendMode:Landroid/graphics/BlendMode;

    .line 1385
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    .line 1387
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1c

    .line 1388
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applySecondaryProgressTint()V

    .line 1390
    :cond_1c
    return-void
.end method

.method public whitelist setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1325
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_c

    .line 1326
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar-IA;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 1328
    :cond_c
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    .line 1329
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    .line 1331
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1c

    .line 1332
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applySecondaryProgressTint()V

    .line 1334
    :cond_1c
    return-void
.end method

.method public whitelist setSecondaryProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 1363
    if-eqz p1, :cond_9

    .line 1364
    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 1363
    :goto_a
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setSecondaryProgressTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 1365
    return-void
.end method

.method public whitelist setStateDescription(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "stateDescription"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1642
    invoke-super {p0, p1}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 1643
    return-void
.end method

.method greylist startAnimation()V
    .registers 4

    .line 1957
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_73

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_73

    .line 1961
    :cond_d
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    .line 1962
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    .line 1963
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    goto :goto_6f

    .line 1965
    :cond_1a
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    .line 1967
    iget-object v0, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_27

    .line 1968
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1971
    :cond_27
    iget-object v0, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    if-nez v0, :cond_33

    .line 1972
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    goto :goto_38

    .line 1974
    :cond_33
    iget-object v0, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 1977
    :goto_38
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_47

    .line 1978
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    goto :goto_4c

    .line 1980
    :cond_47
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->reset()V

    .line 1983
    :goto_4c
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Landroid/widget/ProgressBar;->mBehavior:I

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 1984
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 1985
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Landroid/widget/ProgressBar;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1986
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1987
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    .line 1989
    :goto_6f
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 1990
    return-void

    .line 1958
    :cond_73
    :goto_73
    return-void
.end method

.method greylist stopAnimation()V
    .registers 3

    .line 1997
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    .line 1998
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_12

    .line 1999
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/Animatable;

    invoke-interface {v1}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 2000
    iput-boolean v0, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    .line 2002
    :cond_12
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 2003
    return-void
.end method

.method protected whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 1484
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_11

    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_11

    .line 1485
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 1484
    :goto_12
    return v0
.end method
