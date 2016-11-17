.class public Landroid/widget/ProgressBar;
.super Landroid/view/View;
.source "ProgressBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ProgressBar$1;,
        Landroid/widget/ProgressBar$AccessibilityEventSender;,
        Landroid/widget/ProgressBar$ProgressTintInfo;,
        Landroid/widget/ProgressBar$RefreshData;,
        Landroid/widget/ProgressBar$RefreshProgressRunnable;,
        Landroid/widget/ProgressBar$SavedState;
    }
.end annotation


# static fields
.field private static final MAX_LEVEL:I = 0x2710

.field private static final PROGRESS_ANIM_DURATION:I = 0x50

.field private static final PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xc8


# instance fields
.field private final VISUAL_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Landroid/widget/ProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field private mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

.field private mAggregatedIsVisible:Z

.field private mAnimation:Landroid/view/animation/AlphaAnimation;

.field private mAttached:Z

.field private mBehavior:I

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mDuration:I

.field private mHasAnimation:Z

.field private mInDrawing:Z

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMax:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field mMirrorForRtl:Z

.field private mNoInvalidate:Z

.field private mOnlyIndeterminate:Z

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

.field private final mRefreshData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ProgressBar$RefreshData;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshIsPosted:Z

.field private mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

.field mSampleTile:Landroid/graphics/Bitmap;

.field private mSecondaryProgress:I

.field private mShouldStartAnimationDrawable:Z

.field private mTransformation:Landroid/view/animation/Transformation;

.field private mUiThreadId:J

.field private mVisualProgress:F


# direct methods
.method static synthetic -get0(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/ProgressBar;)F
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/ProgressBar;->mVisualProgress:F

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/widget/ProgressBar;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/widget/ProgressBar;F)F
    .locals 0

    #@0
    iput p1, p0, Landroid/widget/ProgressBar;->mVisualProgress:F

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/ProgressBar;IIZZZ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z
    .param p4, "callBackToApp"    # Z
    .param p5, "animate"    # Z

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/ProgressBar;IF)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "progress"    # F

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;->setVisualProgress(IF)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 206
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    #@2
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    #@5
    .line 205
    sput-object v0, Landroid/widget/ProgressBar;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    #@7
    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 260
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 259
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 264
    const v0, 0x1010077

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 263
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 268
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 267
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 272
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 247
    const/4 v4, 0x0

    #@4
    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    #@6
    .line 251
    new-instance v4, Ljava/util/ArrayList;

    #@8
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v4, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    #@d
    .line 2042
    new-instance v4, Landroid/widget/ProgressBar$1;

    #@f
    const-string/jumbo v5, "visual_progress"

    #@12
    invoke-direct {v4, p0, v5}, Landroid/widget/ProgressBar$1;-><init>(Landroid/widget/ProgressBar;Ljava/lang/String;)V

    #@15
    .line 2041
    iput-object v4, p0, Landroid/widget/ProgressBar;->VISUAL_PROGRESS:Landroid/util/FloatProperty;

    #@17
    .line 274
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    #@1e
    move-result-wide v4

    #@1f
    iput-wide v4, p0, Landroid/widget/ProgressBar;->mUiThreadId:J

    #@21
    .line 275
    invoke-direct {p0}, Landroid/widget/ProgressBar;->initProgressBar()V

    #@24
    .line 278
    sget-object v4, Lcom/android/internal/R$styleable;->ProgressBar:[I

    #@26
    .line 277
    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@29
    move-result-object v0

    #@2a
    .line 280
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    #@2b
    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mNoInvalidate:Z

    #@2d
    .line 282
    const/16 v4, 0x8

    #@2f
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@32
    move-result-object v2

    #@33
    .line 283
    .local v2, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@35
    .line 287
    invoke-static {v2}, Landroid/widget/ProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    #@38
    move-result v4

    #@39
    if-eqz v4, :cond_14

    #@3b
    .line 288
    invoke-virtual {p0, v2}, Landroid/widget/ProgressBar;->setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    #@3e
    .line 295
    :cond_0
    :goto_0
    iget v4, p0, Landroid/widget/ProgressBar;->mDuration:I

    #@40
    const/16 v5, 0x9

    #@42
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@45
    move-result v4

    #@46
    iput v4, p0, Landroid/widget/ProgressBar;->mDuration:I

    #@48
    .line 297
    iget v4, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    #@4a
    const/16 v5, 0xb

    #@4c
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@4f
    move-result v4

    #@50
    iput v4, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    #@52
    .line 298
    iget v4, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    #@54
    const/4 v5, 0x0

    #@55
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@58
    move-result v4

    #@59
    iput v4, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    #@5b
    .line 299
    iget v4, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    #@5d
    const/16 v5, 0xc

    #@5f
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@62
    move-result v4

    #@63
    iput v4, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    #@65
    .line 300
    iget v4, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    #@67
    const/4 v5, 0x1

    #@68
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@6b
    move-result v4

    #@6c
    iput v4, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    #@6e
    .line 302
    iget v4, p0, Landroid/widget/ProgressBar;->mBehavior:I

    #@70
    const/16 v5, 0xa

    #@72
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@75
    move-result v4

    #@76
    iput v4, p0, Landroid/widget/ProgressBar;->mBehavior:I

    #@78
    .line 305
    const/16 v4, 0xd

    #@7a
    .line 306
    const v5, 0x10a000b

    #@7d
    .line 304
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@80
    move-result v3

    #@81
    .line 307
    .local v3, "resID":I
    if-lez v3, :cond_1

    #@83
    .line 308
    invoke-virtual {p0, p1, v3}, Landroid/widget/ProgressBar;->setInterpolator(Landroid/content/Context;I)V

    #@86
    .line 311
    :cond_1
    iget v4, p0, Landroid/widget/ProgressBar;->mMax:I

    #@88
    const/4 v5, 0x2

    #@89
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@8c
    move-result v4

    #@8d
    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    #@90
    .line 313
    iget v4, p0, Landroid/widget/ProgressBar;->mProgress:I

    #@92
    const/4 v5, 0x3

    #@93
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@96
    move-result v4

    #@97
    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    #@9a
    .line 316
    iget v4, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    #@9c
    const/4 v5, 0x4

    #@9d
    .line 315
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@a0
    move-result v4

    #@a1
    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    #@a4
    .line 319
    const/4 v4, 0x7

    #@a5
    .line 318
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@a8
    move-result-object v1

    #@a9
    .line 320
    .local v1, "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    #@ab
    .line 321
    invoke-static {v1}, Landroid/widget/ProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    #@ae
    move-result v4

    #@af
    if-eqz v4, :cond_15

    #@b1
    .line 322
    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    #@b4
    .line 329
    :cond_2
    :goto_1
    iget-boolean v4, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    #@b6
    const/4 v5, 0x6

    #@b7
    .line 328
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@ba
    move-result v4

    #@bb
    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    #@bd
    .line 331
    const/4 v4, 0x0

    #@be
    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mNoInvalidate:Z

    #@c0
    .line 333
    iget-boolean v4, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    #@c2
    if-nez v4, :cond_16

    #@c4
    .line 334
    iget-boolean v4, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    #@c6
    const/4 v5, 0x5

    #@c7
    .line 333
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@ca
    move-result v4

    #@cb
    :goto_2
    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    #@ce
    .line 336
    iget-boolean v4, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    #@d0
    const/16 v5, 0xf

    #@d2
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@d5
    move-result v4

    #@d6
    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    #@d8
    .line 338
    const/16 v4, 0x11

    #@da
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@dd
    move-result v4

    #@de
    if-eqz v4, :cond_4

    #@e0
    .line 339
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@e2
    if-nez v4, :cond_3

    #@e4
    .line 340
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    #@e6
    const/4 v5, 0x0

    #@e7
    invoke-direct {v4, v5}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    #@ea
    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@ec
    .line 342
    :cond_3
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@ee
    .line 343
    const/16 v5, 0x11

    #@f0
    const/4 v6, -0x1

    #@f1
    .line 342
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@f4
    move-result v5

    #@f5
    .line 343
    const/4 v6, 0x0

    #@f6
    .line 342
    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@f9
    move-result-object v5

    #@fa
    iput-object v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    #@fc
    .line 344
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@fe
    const/4 v5, 0x1

    #@ff
    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    #@101
    .line 347
    :cond_4
    const/16 v4, 0x10

    #@103
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@106
    move-result v4

    #@107
    if-eqz v4, :cond_6

    #@109
    .line 348
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@10b
    if-nez v4, :cond_5

    #@10d
    .line 349
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    #@10f
    const/4 v5, 0x0

    #@110
    invoke-direct {v4, v5}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    #@113
    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@115
    .line 351
    :cond_5
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@117
    .line 352
    const/16 v5, 0x10

    #@119
    .line 351
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@11c
    move-result-object v5

    #@11d
    iput-object v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    #@11f
    .line 353
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@121
    const/4 v5, 0x1

    #@122
    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    #@124
    .line 356
    :cond_6
    const/16 v4, 0x13

    #@126
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@129
    move-result v4

    #@12a
    if-eqz v4, :cond_8

    #@12c
    .line 357
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@12e
    if-nez v4, :cond_7

    #@130
    .line 358
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    #@132
    const/4 v5, 0x0

    #@133
    invoke-direct {v4, v5}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    #@136
    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@138
    .line 360
    :cond_7
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@13a
    .line 361
    const/16 v5, 0x13

    #@13c
    const/4 v6, -0x1

    #@13d
    .line 360
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@140
    move-result v5

    #@141
    .line 361
    const/4 v6, 0x0

    #@142
    .line 360
    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@145
    move-result-object v5

    #@146
    iput-object v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    #@148
    .line 362
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@14a
    const/4 v5, 0x1

    #@14b
    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    #@14d
    .line 365
    :cond_8
    const/16 v4, 0x12

    #@14f
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@152
    move-result v4

    #@153
    if-eqz v4, :cond_a

    #@155
    .line 366
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@157
    if-nez v4, :cond_9

    #@159
    .line 367
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    #@15b
    const/4 v5, 0x0

    #@15c
    invoke-direct {v4, v5}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    #@15f
    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@161
    .line 369
    :cond_9
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@163
    .line 370
    const/16 v5, 0x12

    #@165
    .line 369
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@168
    move-result-object v5

    #@169
    iput-object v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    #@16b
    .line 371
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@16d
    const/4 v5, 0x1

    #@16e
    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    #@170
    .line 374
    :cond_a
    const/16 v4, 0x15

    #@172
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@175
    move-result v4

    #@176
    if-eqz v4, :cond_c

    #@178
    .line 375
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@17a
    if-nez v4, :cond_b

    #@17c
    .line 376
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    #@17e
    const/4 v5, 0x0

    #@17f
    invoke-direct {v4, v5}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    #@182
    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@184
    .line 378
    :cond_b
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@186
    .line 379
    const/16 v5, 0x15

    #@188
    const/4 v6, -0x1

    #@189
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@18c
    move-result v5

    #@18d
    const/4 v6, 0x0

    #@18e
    .line 378
    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@191
    move-result-object v5

    #@192
    iput-object v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    #@194
    .line 380
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@196
    const/4 v5, 0x1

    #@197
    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    #@199
    .line 383
    :cond_c
    const/16 v4, 0x14

    #@19b
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@19e
    move-result v4

    #@19f
    if-eqz v4, :cond_e

    #@1a1
    .line 384
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@1a3
    if-nez v4, :cond_d

    #@1a5
    .line 385
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    #@1a7
    const/4 v5, 0x0

    #@1a8
    invoke-direct {v4, v5}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    #@1ab
    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@1ad
    .line 387
    :cond_d
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@1af
    .line 388
    const/16 v5, 0x14

    #@1b1
    .line 387
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@1b4
    move-result-object v5

    #@1b5
    iput-object v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    #@1b7
    .line 389
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@1b9
    const/4 v5, 0x1

    #@1ba
    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    #@1bc
    .line 392
    :cond_e
    const/16 v4, 0x17

    #@1be
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@1c1
    move-result v4

    #@1c2
    if-eqz v4, :cond_10

    #@1c4
    .line 393
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@1c6
    if-nez v4, :cond_f

    #@1c8
    .line 394
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    #@1ca
    const/4 v5, 0x0

    #@1cb
    invoke-direct {v4, v5}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    #@1ce
    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@1d0
    .line 396
    :cond_f
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@1d2
    .line 397
    const/16 v5, 0x17

    #@1d4
    const/4 v6, -0x1

    #@1d5
    .line 396
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1d8
    move-result v5

    #@1d9
    .line 397
    const/4 v6, 0x0

    #@1da
    .line 396
    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@1dd
    move-result-object v5

    #@1de
    iput-object v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    #@1e0
    .line 398
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@1e2
    const/4 v5, 0x1

    #@1e3
    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    #@1e5
    .line 401
    :cond_10
    const/16 v4, 0x16

    #@1e7
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@1ea
    move-result v4

    #@1eb
    if-eqz v4, :cond_12

    #@1ed
    .line 402
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@1ef
    if-nez v4, :cond_11

    #@1f1
    .line 403
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    #@1f3
    const/4 v5, 0x0

    #@1f4
    invoke-direct {v4, v5}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    #@1f7
    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@1f9
    .line 405
    :cond_11
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@1fb
    .line 406
    const/16 v5, 0x16

    #@1fd
    .line 405
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@200
    move-result-object v5

    #@201
    iput-object v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    #@203
    .line 407
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@205
    const/4 v5, 0x1

    #@206
    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    #@208
    .line 410
    :cond_12
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@20b
    .line 412
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressTints()V

    #@20e
    .line 413
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyIndeterminateTint()V

    #@211
    .line 416
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getImportantForAccessibility()I

    #@214
    move-result v4

    #@215
    if-nez v4, :cond_13

    #@217
    .line 417
    const/4 v4, 0x1

    #@218
    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setImportantForAccessibility(I)V

    #@21b
    .line 271
    :cond_13
    return-void

    #@21c
    .line 290
    .end local v1    # "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "resID":I
    :cond_14
    invoke-virtual {p0, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    #@21f
    goto/16 :goto_0

    #@221
    .line 324
    .restart local v1    # "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "resID":I
    :cond_15
    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@224
    goto/16 :goto_1

    #@226
    .line 333
    :cond_16
    const/4 v4, 0x1

    #@227
    goto/16 :goto_2
.end method

.method private applyIndeterminateTint()V
    .locals 3

    #@0
    .prologue
    .line 748
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v1, :cond_3

    #@4
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@6
    if-eqz v1, :cond_3

    #@8
    .line 749
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@a
    .line 750
    .local v0, "tintInfo":Landroid/widget/ProgressBar$ProgressTintInfo;
    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    #@c
    if-nez v1, :cond_0

    #@e
    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    #@10
    if-eqz v1, :cond_3

    #@12
    .line 751
    :cond_0
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@14
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@17
    move-result-object v1

    #@18
    iput-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@1a
    .line 753
    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 754
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@20
    iget-object v2, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    #@22
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    #@25
    .line 757
    :cond_1
    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    #@27
    if-eqz v1, :cond_2

    #@29
    .line 758
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@2b
    iget-object v2, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2d
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@30
    .line 763
    :cond_2
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@32
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@35
    move-result v1

    #@36
    if-eqz v1, :cond_3

    #@38
    .line 764
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@3a
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@41
    .line 747
    .end local v0    # "tintInfo":Landroid/widget/ProgressBar$ProgressTintInfo;
    :cond_3
    return-void
.end method

.method private applyPrimaryProgressTint()V
    .locals 3

    #@0
    .prologue
    .line 864
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@2
    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    #@4
    if-nez v1, :cond_0

    #@6
    .line 865
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@8
    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    #@a
    .line 864
    if-eqz v1, :cond_3

    #@c
    .line 866
    :cond_0
    const v1, 0x102000d

    #@f
    const/4 v2, 0x1

    #@10
    invoke-direct {p0, v1, v2}, Landroid/widget/ProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object v0

    #@14
    .line 867
    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    #@16
    .line 868
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@18
    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 869
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@1e
    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    #@20
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    #@23
    .line 871
    :cond_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@25
    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    #@27
    if-eqz v1, :cond_2

    #@29
    .line 872
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@2b
    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2d
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@30
    .line 877
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_3

    #@36
    .line 878
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@3d
    .line 863
    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method private applyProgressBackgroundTint()V
    .locals 3

    #@0
    .prologue
    .line 889
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@2
    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    #@4
    if-nez v1, :cond_0

    #@6
    .line 890
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@8
    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    #@a
    .line 889
    if-eqz v1, :cond_3

    #@c
    .line 891
    :cond_0
    const/high16 v1, 0x1020000

    #@e
    const/4 v2, 0x0

    #@f
    invoke-direct {p0, v1, v2}, Landroid/widget/ProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    #@12
    move-result-object v0

    #@13
    .line 892
    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    #@15
    .line 893
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@17
    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 894
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@1d
    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    #@1f
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    #@22
    .line 896
    :cond_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@24
    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    #@26
    if-eqz v1, :cond_2

    #@28
    .line 897
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@2a
    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2c
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@2f
    .line 902
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@32
    move-result v1

    #@33
    if-eqz v1, :cond_3

    #@35
    .line 903
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@3c
    .line 888
    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method private applyProgressTints()V
    .locals 1

    #@0
    .prologue
    .line 852
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 853
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyPrimaryProgressTint()V

    #@b
    .line 854
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressBackgroundTint()V

    #@e
    .line 855
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applySecondaryProgressTint()V

    #@11
    .line 851
    :cond_0
    return-void
.end method

.method private applySecondaryProgressTint()V
    .locals 3

    #@0
    .prologue
    .line 914
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@2
    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    #@4
    if-nez v1, :cond_0

    #@6
    .line 915
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@8
    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    #@a
    .line 914
    if-eqz v1, :cond_3

    #@c
    .line 916
    :cond_0
    const v1, 0x102000f

    #@f
    const/4 v2, 0x0

    #@10
    invoke-direct {p0, v1, v2}, Landroid/widget/ProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object v0

    #@14
    .line 917
    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    #@16
    .line 918
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@18
    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 919
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@1e
    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    #@20
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    #@23
    .line 921
    :cond_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@25
    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    #@27
    if-eqz v1, :cond_2

    #@29
    .line 922
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@2b
    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2d
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@30
    .line 927
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_3

    #@36
    .line 928
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@3d
    .line 913
    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method private declared-synchronized doRefreshProgress(IIZZZ)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z
    .param p4, "callBackToApp"    # Z
    .param p5, "animate"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 1313
    :try_start_0
    iget v4, p0, Landroid/widget/ProgressBar;->mMax:I

    #@5
    if-lez v4, :cond_1

    #@7
    int-to-float v4, p2

    #@8
    iget v5, p0, Landroid/widget/ProgressBar;->mMax:I

    #@a
    int-to-float v5, v5

    #@b
    div-float v2, v4, v5

    #@d
    .line 1314
    .local v2, "scale":F
    :goto_0
    const v4, 0x102000d

    #@10
    if-ne p1, v4, :cond_2

    #@12
    .line 1316
    .local v1, "isPrimary":Z
    :goto_1
    if-eqz v1, :cond_3

    #@14
    if-eqz p5, :cond_3

    #@16
    .line 1317
    iget-object v3, p0, Landroid/widget/ProgressBar;->VISUAL_PROGRESS:Landroid/util/FloatProperty;

    #@18
    const/4 v4, 0x1

    #@19
    new-array v4, v4, [F

    #@1b
    const/4 v5, 0x0

    #@1c
    aput v2, v4, v5

    #@1e
    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@21
    move-result-object v0

    #@22
    .line 1318
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const/4 v3, 0x1

    #@23
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    #@26
    .line 1319
    const-wide/16 v4, 0x50

    #@28
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@2b
    .line 1320
    sget-object v3, Landroid/widget/ProgressBar;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    #@2d
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@30
    .line 1321
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    #@33
    .line 1326
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :goto_2
    if-eqz v1, :cond_0

    #@35
    if-eqz p4, :cond_0

    #@37
    .line 1327
    invoke-virtual {p0, v2, p3, p2}, Landroid/widget/ProgressBar;->onProgressRefresh(FZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    :cond_0
    monitor-exit p0

    #@3b
    .line 1312
    return-void

    #@3c
    .line 1313
    .end local v1    # "isPrimary":Z
    .end local v2    # "scale":F
    :cond_1
    const/4 v2, 0x0

    #@3d
    .restart local v2    # "scale":F
    goto :goto_0

    #@3e
    :cond_2
    move v1, v3

    #@3f
    .line 1314
    goto :goto_1

    #@40
    .line 1323
    .restart local v1    # "isPrimary":Z
    :cond_3
    :try_start_1
    invoke-direct {p0, p1, v2}, Landroid/widget/ProgressBar;->setVisualProgress(IF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    goto :goto_2

    #@44
    .end local v1    # "isPrimary":Z
    .end local v2    # "scale":F
    :catchall_0
    move-exception v3

    #@45
    monitor-exit p0

    #@46
    throw v3
.end method

.method private getTintTarget(IZ)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "layerId"    # I
    .param p2, "shouldFallback"    # Z

    #@0
    .prologue
    .line 1188
    const/4 v1, 0x0

    #@1
    .line 1190
    .local v1, "layer":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@3
    .line 1191
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    #@5
    .line 1192
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@8
    move-result-object v2

    #@9
    iput-object v2, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@b
    .line 1194
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    #@d
    if-eqz v2, :cond_0

    #@f
    move-object v2, v0

    #@10
    .line 1195
    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    #@12
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    #@15
    move-result-object v1

    #@16
    .line 1198
    .end local v1    # "layer":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-eqz p2, :cond_1

    #@18
    if-nez v1, :cond_1

    #@1a
    .line 1199
    move-object v1, v0

    #@1b
    .line 1203
    :cond_1
    return-object v1
.end method

.method private initProgressBar()V
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x30

    #@2
    const/16 v2, 0x18

    #@4
    const/4 v1, 0x0

    #@5
    .line 568
    const/16 v0, 0x64

    #@7
    iput v0, p0, Landroid/widget/ProgressBar;->mMax:I

    #@9
    .line 569
    iput v1, p0, Landroid/widget/ProgressBar;->mProgress:I

    #@b
    .line 570
    iput v1, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    #@d
    .line 571
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    #@f
    .line 572
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    #@11
    .line 573
    const/16 v0, 0xfa0

    #@13
    iput v0, p0, Landroid/widget/ProgressBar;->mDuration:I

    #@15
    .line 574
    const/4 v0, 0x1

    #@16
    iput v0, p0, Landroid/widget/ProgressBar;->mBehavior:I

    #@18
    .line 575
    iput v2, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    #@1a
    .line 576
    iput v3, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    #@1c
    .line 577
    iput v2, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    #@1e
    .line 578
    iput v3, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    #@20
    .line 567
    return-void
.end method

.method private static needsTileify(Landroid/graphics/drawable/Drawable;)Z
    .locals 7
    .param p0, "dr"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 429
    instance-of v4, p0, Landroid/graphics/drawable/LayerDrawable;

    #@4
    if-eqz v4, :cond_2

    #@6
    move-object v3, p0

    #@7
    .line 430
    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    #@9
    .line 431
    .local v3, "orig":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    #@c
    move-result v0

    #@d
    .line 432
    .local v0, "N":I
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@10
    .line 433
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object v4

    #@14
    invoke-static {v4}, Landroid/widget/ProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_0

    #@1a
    .line 434
    return v6

    #@1b
    .line 432
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 437
    :cond_1
    return v5

    #@1f
    .line 440
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "orig":Landroid/graphics/drawable/LayerDrawable;
    :cond_2
    instance-of v4, p0, Landroid/graphics/drawable/StateListDrawable;

    #@21
    if-eqz v4, :cond_5

    #@23
    move-object v2, p0

    #@24
    .line 441
    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    #@26
    .line 442
    .local v2, "in":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    #@29
    move-result v0

    #@2a
    .line 443
    .restart local v0    # "N":I
    const/4 v1, 0x0

    #@2b
    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    #@2d
    .line 444
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    #@30
    move-result-object v4

    #@31
    invoke-static {v4}, Landroid/widget/ProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    #@34
    move-result v4

    #@35
    if-eqz v4, :cond_3

    #@37
    .line 445
    return v6

    #@38
    .line 443
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 448
    :cond_4
    return v5

    #@3c
    .line 453
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "in":Landroid/graphics/drawable/StateListDrawable;
    :cond_5
    instance-of v4, p0, Landroid/graphics/drawable/BitmapDrawable;

    #@3e
    if-eqz v4, :cond_6

    #@40
    .line 454
    return v6

    #@41
    .line 457
    :cond_6
    return v5
.end method

.method private declared-synchronized refreshProgress(IIZZ)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z
    .param p4, "animate"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1381
    :try_start_0
    iget-wide v0, p0, Landroid/widget/ProgressBar;->mUiThreadId:J

    #@3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    #@a
    move-result-wide v2

    #@b
    cmp-long v0, v0, v2

    #@d
    if-nez v0, :cond_1

    #@f
    .line 1382
    const/4 v4, 0x1

    #@10
    move-object v0, p0

    #@11
    move v1, p1

    #@12
    move v2, p2

    #@13
    move v3, p3

    #@14
    move v5, p4

    #@15
    invoke-direct/range {v0 .. v5}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :cond_0
    :goto_0
    monitor-exit p0

    #@19
    .line 1380
    return-void

    #@1a
    .line 1384
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    #@1c
    if-nez v0, :cond_2

    #@1e
    .line 1385
    new-instance v0, Landroid/widget/ProgressBar$RefreshProgressRunnable;

    #@20
    const/4 v1, 0x0

    #@21
    invoke-direct {v0, p0, v1}, Landroid/widget/ProgressBar$RefreshProgressRunnable;-><init>(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar$RefreshProgressRunnable;)V

    #@24
    iput-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    #@26
    .line 1388
    :cond_2
    invoke-static {p1, p2, p3, p4}, Landroid/widget/ProgressBar$RefreshData;->obtain(IIZZ)Landroid/widget/ProgressBar$RefreshData;

    #@29
    move-result-object v6

    #@2a
    .line 1389
    .local v6, "rd":Landroid/widget/ProgressBar$RefreshData;
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2f
    .line 1390
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mAttached:Z

    #@31
    if-eqz v0, :cond_0

    #@33
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z

    #@35
    if-nez v0, :cond_0

    #@37
    .line 1391
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    #@39
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->post(Ljava/lang/Runnable;)Z

    #@3c
    .line 1392
    const/4 v0, 0x1

    #@3d
    iput-boolean v0, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    goto :goto_0

    #@40
    .end local v6    # "rd":Landroid/widget/ProgressBar$RefreshData;
    :catchall_0
    move-exception v0

    #@41
    monitor-exit p0

    #@42
    throw v0
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1986
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1987
    new-instance v0, Landroid/widget/ProgressBar$AccessibilityEventSender;

    #@7
    invoke-direct {v0, p0, v1}, Landroid/widget/ProgressBar$AccessibilityEventSender;-><init>(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar$AccessibilityEventSender;)V

    #@a
    iput-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    #@c
    .line 1991
    :goto_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    #@e
    const-wide/16 v2, 0xc8

    #@10
    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    #@13
    .line 1985
    return-void

    #@14
    .line 1989
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    #@16
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@19
    goto :goto_0
.end method

.method private setVisualProgress(IF)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "progress"    # F

    #@0
    .prologue
    .line 1344
    iput p2, p0, Landroid/widget/ProgressBar;->mVisualProgress:F

    #@2
    .line 1346
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    #@4
    .line 1348
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 1349
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    #@a
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v0

    #@e
    .line 1350
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    #@10
    .line 1355
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    #@12
    .line 1359
    :cond_0
    if-eqz v0, :cond_1

    #@14
    .line 1360
    const v2, 0x461c4000    # 10000.0f

    #@17
    mul-float/2addr v2, p2

    #@18
    float-to-int v1, v2

    #@19
    .line 1361
    .local v1, "level":I
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    #@1c
    .line 1366
    .end local v1    # "level":I
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/ProgressBar;->onVisualProgressChanged(IF)V

    #@1f
    .line 1343
    return-void

    #@20
    .line 1363
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V

    #@23
    goto :goto_0
.end method

.method private swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "newDrawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 618
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    #@3
    .line 619
    .local v0, "oldDrawable":Landroid/graphics/drawable/Drawable;
    iput-object p1, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    .line 621
    iget-object v1, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    #@7
    if-eq v0, v1, :cond_1

    #@9
    .line 622
    if-eqz v0, :cond_0

    #@b
    .line 623
    invoke-virtual {v0, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@e
    .line 625
    :cond_0
    iget-object v1, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 626
    iget-object v3, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    #@14
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWindowVisibility()I

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_2

    #@1a
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isShown()Z

    #@1d
    move-result v1

    #@1e
    :goto_0
    invoke-virtual {v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@21
    .line 617
    :cond_1
    return-void

    #@22
    :cond_2
    move v1, v2

    #@23
    .line 626
    goto :goto_0
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 15
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "clip"    # Z

    #@0
    .prologue
    .line 468
    move-object/from16 v0, p1

    #@2
    instance-of v12, v0, Landroid/graphics/drawable/LayerDrawable;

    #@4
    if-eqz v12, :cond_4

    #@6
    move-object/from16 v8, p1

    #@8
    .line 469
    check-cast v8, Landroid/graphics/drawable/LayerDrawable;

    #@a
    .line 470
    .local v8, "orig":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    #@d
    move-result v1

    #@e
    .line 471
    .local v1, "N":I
    new-array v10, v1, [Landroid/graphics/drawable/Drawable;

    #@10
    .line 473
    .local v10, "outDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    #@11
    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_2

    #@13
    .line 474
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    #@16
    move-result v6

    #@17
    .line 475
    .local v6, "id":I
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@1a
    move-result-object v13

    #@1b
    .line 476
    const v12, 0x102000d

    #@1e
    if-eq v6, v12, :cond_0

    #@20
    const v12, 0x102000f

    #@23
    if-ne v6, v12, :cond_1

    #@25
    :cond_0
    const/4 v12, 0x1

    #@26
    .line 475
    :goto_1
    invoke-direct {p0, v13, v12}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    #@29
    move-result-object v12

    #@2a
    aput-object v12, v10, v5

    #@2c
    .line 473
    add-int/lit8 v5, v5, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 476
    :cond_1
    const/4 v12, 0x0

    #@30
    goto :goto_1

    #@31
    .line 479
    .end local v6    # "id":I
    :cond_2
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    #@33
    invoke-direct {v4, v10}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    #@36
    .line 480
    .local v4, "clone":Landroid/graphics/drawable/LayerDrawable;
    const/4 v5, 0x0

    #@37
    :goto_2
    if-ge v5, v1, :cond_3

    #@39
    .line 481
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    #@3c
    move-result v12

    #@3d
    invoke-virtual {v4, v5, v12}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    #@40
    .line 482
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getLayerGravity(I)I

    #@43
    move-result v12

    #@44
    invoke-virtual {v4, v5, v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    #@47
    .line 483
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getLayerWidth(I)I

    #@4a
    move-result v12

    #@4b
    invoke-virtual {v4, v5, v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    #@4e
    .line 484
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getLayerHeight(I)I

    #@51
    move-result v12

    #@52
    invoke-virtual {v4, v5, v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    #@55
    .line 485
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetLeft(I)I

    #@58
    move-result v12

    #@59
    invoke-virtual {v4, v5, v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetLeft(II)V

    #@5c
    .line 486
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetRight(I)I

    #@5f
    move-result v12

    #@60
    invoke-virtual {v4, v5, v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetRight(II)V

    #@63
    .line 487
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetTop(I)I

    #@66
    move-result v12

    #@67
    invoke-virtual {v4, v5, v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetTop(II)V

    #@6a
    .line 488
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetBottom(I)I

    #@6d
    move-result v12

    #@6e
    invoke-virtual {v4, v5, v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetBottom(II)V

    #@71
    .line 489
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetStart(I)I

    #@74
    move-result v12

    #@75
    invoke-virtual {v4, v5, v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetStart(II)V

    #@78
    .line 490
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetEnd(I)I

    #@7b
    move-result v12

    #@7c
    invoke-virtual {v4, v5, v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetEnd(II)V

    #@7f
    .line 480
    add-int/lit8 v5, v5, 0x1

    #@81
    goto :goto_2

    #@82
    .line 493
    :cond_3
    return-object v4

    #@83
    .line 496
    .end local v1    # "N":I
    .end local v4    # "clone":Landroid/graphics/drawable/LayerDrawable;
    .end local v5    # "i":I
    .end local v8    # "orig":Landroid/graphics/drawable/LayerDrawable;
    .end local v10    # "outDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_4
    move-object/from16 v0, p1

    #@85
    instance-of v12, v0, Landroid/graphics/drawable/StateListDrawable;

    #@87
    if-eqz v12, :cond_6

    #@89
    move-object/from16 v7, p1

    #@8b
    .line 497
    check-cast v7, Landroid/graphics/drawable/StateListDrawable;

    #@8d
    .line 498
    .local v7, "in":Landroid/graphics/drawable/StateListDrawable;
    new-instance v9, Landroid/graphics/drawable/StateListDrawable;

    #@8f
    invoke-direct {v9}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    #@92
    .line 499
    .local v9, "out":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    #@95
    move-result v1

    #@96
    .line 500
    .restart local v1    # "N":I
    const/4 v5, 0x0

    #@97
    .restart local v5    # "i":I
    :goto_3
    if-ge v5, v1, :cond_5

    #@99
    .line 501
    invoke-virtual {v7, v5}, Landroid/graphics/drawable/StateListDrawable;->getStateSet(I)[I

    #@9c
    move-result-object v12

    #@9d
    invoke-virtual {v7, v5}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    #@a0
    move-result-object v13

    #@a1
    move/from16 v0, p2

    #@a3
    invoke-direct {p0, v13, v0}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    #@a6
    move-result-object v13

    #@a7
    invoke-virtual {v9, v12, v13}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    #@aa
    .line 500
    add-int/lit8 v5, v5, 0x1

    #@ac
    goto :goto_3

    #@ad
    .line 504
    :cond_5
    return-object v9

    #@ae
    .line 507
    .end local v1    # "N":I
    .end local v5    # "i":I
    .end local v7    # "in":Landroid/graphics/drawable/StateListDrawable;
    .end local v9    # "out":Landroid/graphics/drawable/StateListDrawable;
    :cond_6
    move-object/from16 v0, p1

    #@b0
    instance-of v12, v0, Landroid/graphics/drawable/BitmapDrawable;

    #@b2
    if-eqz v12, :cond_9

    #@b4
    move-object/from16 v2, p1

    #@b6
    .line 508
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    #@b8
    .line 509
    .local v2, "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@bb
    move-result-object v11

    #@bc
    .line 510
    .local v11, "tileBitmap":Landroid/graphics/Bitmap;
    iget-object v12, p0, Landroid/widget/ProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    #@be
    if-nez v12, :cond_7

    #@c0
    .line 511
    iput-object v11, p0, Landroid/widget/ProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    #@c2
    .line 514
    :cond_7
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@c5
    move-result-object v12

    #@c6
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    #@c9
    move-result-object v3

    #@ca
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    #@cc
    .line 515
    .local v3, "clone":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v12, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    #@ce
    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@d0
    invoke-virtual {v3, v12, v13}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    #@d3
    .line 517
    if-eqz p2, :cond_8

    #@d5
    .line 518
    new-instance v12, Landroid/graphics/drawable/ClipDrawable;

    #@d7
    const/4 v13, 0x3

    #@d8
    const/4 v14, 0x1

    #@d9
    invoke-direct {v12, v3, v13, v14}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    #@dc
    return-object v12

    #@dd
    .line 520
    :cond_8
    return-object v3

    #@de
    .line 524
    .end local v2    # "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3    # "clone":Landroid/graphics/drawable/BitmapDrawable;
    .end local v11    # "tileBitmap":Landroid/graphics/Bitmap;
    :cond_9
    return-object p1
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/16 v7, 0x2710

    #@2
    .line 538
    instance-of v5, p1, Landroid/graphics/drawable/AnimationDrawable;

    #@4
    if-eqz v5, :cond_1

    #@6
    move-object v1, p1

    #@7
    .line 539
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    #@9
    .line 540
    .local v1, "background":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    #@c
    move-result v0

    #@d
    .line 541
    .local v0, "N":I
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    #@f
    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    #@12
    .line 542
    .local v4, "newBg":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    #@15
    move-result v5

    #@16
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    #@19
    .line 544
    const/4 v3, 0x0

    #@1a
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    #@1c
    .line 545
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    #@1f
    move-result-object v5

    #@20
    const/4 v6, 0x1

    #@21
    invoke-direct {p0, v5, v6}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    #@24
    move-result-object v2

    #@25
    .line 546
    .local v2, "frame":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    #@28
    .line 547
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    #@2b
    move-result v5

    #@2c
    invoke-virtual {v4, v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    #@2f
    .line 544
    add-int/lit8 v3, v3, 0x1

    #@31
    goto :goto_0

    #@32
    .line 549
    .end local v2    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    #@35
    .line 550
    move-object p1, v4

    #@36
    .line 552
    .end local v0    # "N":I
    .end local v1    # "background":Landroid/graphics/drawable/AnimationDrawable;
    .end local v3    # "i":I
    .end local v4    # "newBg":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    return-object p1
.end method

.method private updateDrawableBounds(II)V
    .locals 15
    .param p1, "w"    # I
    .param p2, "h"    # I

    #@0
    .prologue
    .line 1705
    iget v12, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    #@2
    iget v13, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    #@4
    add-int/2addr v12, v13

    #@5
    sub-int p1, p1, v12

    #@7
    .line 1706
    iget v12, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    #@9
    iget v13, p0, Landroid/widget/ProgressBar;->mPaddingBottom:I

    #@b
    add-int/2addr v12, v13

    #@c
    sub-int p2, p2, v12

    #@e
    .line 1708
    move/from16 v8, p1

    #@10
    .line 1709
    .local v8, "right":I
    move/from16 v1, p2

    #@12
    .line 1710
    .local v1, "bottom":I
    const/4 v10, 0x0

    #@13
    .line 1711
    .local v10, "top":I
    const/4 v7, 0x0

    #@14
    .line 1713
    .local v7, "left":I
    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@16
    if-eqz v12, :cond_2

    #@18
    .line 1715
    iget-boolean v12, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    #@1a
    if-eqz v12, :cond_0

    #@1c
    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@1e
    instance-of v12, v12, Landroid/graphics/drawable/AnimationDrawable;

    #@20
    if-eqz v12, :cond_4

    #@22
    .line 1736
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isLayoutRtl()Z

    #@25
    move-result v12

    #@26
    if-eqz v12, :cond_1

    #@28
    iget-boolean v12, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    #@2a
    if-eqz v12, :cond_1

    #@2c
    .line 1737
    move v9, v7

    #@2d
    .line 1738
    .local v9, "tempLeft":I
    sub-int v7, p1, v8

    #@2f
    .line 1739
    sub-int v8, p1, v9

    #@31
    .line 1741
    .end local v9    # "tempLeft":I
    :cond_1
    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@33
    invoke-virtual {v12, v7, v10, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@36
    .line 1744
    :cond_2
    iget-object v12, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@38
    if-eqz v12, :cond_3

    #@3a
    .line 1745
    iget-object v12, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@3c
    const/4 v13, 0x0

    #@3d
    const/4 v14, 0x0

    #@3e
    invoke-virtual {v12, v13, v14, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@41
    .line 1702
    :cond_3
    return-void

    #@42
    .line 1718
    :cond_4
    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@44
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@47
    move-result v6

    #@48
    .line 1719
    .local v6, "intrinsicWidth":I
    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@4a
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@4d
    move-result v5

    #@4e
    .line 1720
    .local v5, "intrinsicHeight":I
    int-to-float v12, v6

    #@4f
    int-to-float v13, v5

    #@50
    div-float v4, v12, v13

    #@52
    .line 1721
    .local v4, "intrinsicAspect":F
    move/from16 v0, p1

    #@54
    int-to-float v12, v0

    #@55
    move/from16 v0, p2

    #@57
    int-to-float v13, v0

    #@58
    div-float v2, v12, v13

    #@5a
    .line 1722
    .local v2, "boundAspect":F
    cmpl-float v12, v4, v2

    #@5c
    if-eqz v12, :cond_0

    #@5e
    .line 1723
    cmpl-float v12, v2, v4

    #@60
    if-lez v12, :cond_5

    #@62
    .line 1725
    move/from16 v0, p2

    #@64
    int-to-float v12, v0

    #@65
    mul-float/2addr v12, v4

    #@66
    float-to-int v11, v12

    #@67
    .line 1726
    .local v11, "width":I
    sub-int v12, p1, v11

    #@69
    div-int/lit8 v7, v12, 0x2

    #@6b
    .line 1727
    add-int v8, v7, v11

    #@6d
    goto :goto_0

    #@6e
    .line 1730
    .end local v11    # "width":I
    :cond_5
    move/from16 v0, p1

    #@70
    int-to-float v12, v0

    #@71
    const/high16 v13, 0x3f800000    # 1.0f

    #@73
    div-float/2addr v13, v4

    #@74
    mul-float/2addr v12, v13

    #@75
    float-to-int v3, v12

    #@76
    .line 1731
    .local v3, "height":I
    sub-int v12, p2, v3

    #@78
    div-int/lit8 v10, v12, 0x2

    #@7a
    .line 1732
    add-int v1, v10, v3

    #@7c
    goto :goto_0
.end method

.method private updateDrawableState()V
    .locals 5

    #@0
    .prologue
    .line 1824
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    #@3
    move-result-object v3

    #@4
    .line 1825
    .local v3, "state":[I
    const/4 v0, 0x0

    #@5
    .line 1827
    .local v0, "changed":Z
    iget-object v2, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@7
    .line 1828
    .local v2, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@9
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_0

    #@f
    .line 1829
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@12
    move-result v0

    #@13
    .line 1832
    .end local v0    # "changed":Z
    :cond_0
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@15
    .line 1833
    .local v1, "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    #@17
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_1

    #@1d
    .line 1834
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@20
    move-result v4

    #@21
    or-int/2addr v0, v4

    #@22
    .line 1837
    :cond_1
    if-eqz v0, :cond_2

    #@24
    .line 1838
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V

    #@27
    .line 1823
    :cond_2
    return-void
.end method


# virtual methods
.method drawTrack(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1760
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    #@3
    .line 1761
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    #@5
    .line 1764
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@8
    move-result v1

    #@9
    .line 1766
    .local v1, "saveCount":I
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isLayoutRtl()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_2

    #@f
    iget-boolean v3, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    #@11
    if-eqz v3, :cond_2

    #@13
    .line 1767
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    #@16
    move-result v3

    #@17
    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    #@19
    sub-int/2addr v3, v6

    #@1a
    int-to-float v3, v3

    #@1b
    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    #@1d
    int-to-float v6, v6

    #@1e
    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    #@21
    .line 1768
    const/high16 v3, -0x40800000    # -1.0f

    #@23
    const/high16 v6, 0x3f800000    # 1.0f

    #@25
    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->scale(FF)V

    #@28
    .line 1773
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawingTime()J

    #@2b
    move-result-wide v4

    #@2c
    .line 1774
    .local v4, "time":J
    iget-boolean v3, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    #@2e
    if-eqz v3, :cond_0

    #@30
    .line 1775
    iget-object v3, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    #@32
    iget-object v6, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    #@34
    invoke-virtual {v3, v4, v5, v6}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    #@37
    .line 1776
    iget-object v3, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    #@39
    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getAlpha()F

    #@3c
    move-result v2

    #@3d
    .line 1778
    .local v2, "scale":F
    const/4 v3, 0x1

    #@3e
    :try_start_0
    iput-boolean v3, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    #@40
    .line 1779
    const v3, 0x461c4000    # 10000.0f

    #@43
    mul-float/2addr v3, v2

    #@44
    float-to-int v3, v3

    #@45
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    .line 1781
    iput-boolean v7, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    #@4a
    .line 1783
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidateOnAnimation()V

    #@4d
    .line 1786
    .end local v2    # "scale":F
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@50
    .line 1787
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@53
    .line 1789
    iget-boolean v3, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    #@55
    if-eqz v3, :cond_1

    #@57
    instance-of v3, v0, Landroid/graphics/drawable/Animatable;

    #@59
    if-eqz v3, :cond_1

    #@5b
    .line 1790
    check-cast v0, Landroid/graphics/drawable/Animatable;

    #@5d
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    #@60
    .line 1791
    iput-boolean v7, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    #@62
    .line 1759
    .end local v1    # "saveCount":I
    .end local v4    # "time":J
    :cond_1
    return-void

    #@63
    .line 1770
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "saveCount":I
    :cond_2
    iget v3, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    #@65
    int-to-float v3, v3

    #@66
    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    #@68
    int-to-float v6, v6

    #@69
    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    #@6c
    goto :goto_0

    #@6d
    .line 1780
    .restart local v2    # "scale":F
    .restart local v4    # "time":J
    :catchall_0
    move-exception v3

    #@6e
    .line 1781
    iput-boolean v7, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    #@70
    .line 1780
    throw v3
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 1844
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    #@3
    .line 1846
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1847
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    #@c
    .line 1850
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 1851
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@12
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    #@15
    .line 1843
    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    #@0
    .prologue
    .line 1819
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    #@3
    .line 1820
    invoke-direct {p0}, Landroid/widget/ProgressBar;->updateDrawableState()V

    #@6
    .line 1818
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    #@0
    .prologue
    .line 1997
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    #@3
    .line 1999
    const-string/jumbo v0, "progress:max"

    #@6
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    #@9
    move-result v1

    #@a
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@d
    .line 2000
    const-string/jumbo v0, "progress:progress"

    #@10
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    #@13
    move-result v1

    #@14
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@17
    .line 2001
    const-string/jumbo v0, "progress:secondaryProgress"

    #@1a
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    #@1d
    move-result v1

    #@1e
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@21
    .line 2002
    const-string/jumbo v0, "progress:indeterminate"

    #@24
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    #@27
    move-result v1

    #@28
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    #@2b
    .line 1996
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1955
    const-class v0, Landroid/widget/ProgressBar;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 1229
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 528
    const/16 v1, 0x8

    #@3
    new-array v0, v1, [F

    #@5
    .local v0, "roundedCorners":[F
    fill-array-data v0, :array_0

    #@8
    .line 529
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    #@a
    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    #@d
    return-object v1

    #@e
    .line 528
    :array_0
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

.method public getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 641
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getIndeterminateTintList()Landroid/content/res/ColorStateList;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 709
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@7
    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    #@9
    :cond_0
    return-object v0
.end method

.method public getIndeterminateTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 744
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@7
    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    #@9
    :cond_0
    return-object v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    #@0
    .prologue
    .line 1656
    iget-object v0, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    #@2
    return-object v0
.end method

.method public declared-synchronized getMax()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1528
    :try_start_0
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1497
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v0, :cond_0

    #@5
    const/4 v0, 0x0

    #@6
    :goto_0
    monitor-exit p0

    #@7
    return v0

    #@8
    :cond_0
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a
    goto :goto_0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public getProgressBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1058
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@7
    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    #@9
    :cond_0
    return-object v0
.end method

.method public getProgressBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1092
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@7
    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    #@9
    :cond_0
    return-object v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 799
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getProgressTintList()Landroid/content/res/ColorStateList;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 976
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@7
    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    #@9
    :cond_0
    return-object v0
.end method

.method public getProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1013
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@7
    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    #@9
    :cond_0
    return-object v0
.end method

.method public declared-synchronized getSecondaryProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1514
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v0, :cond_0

    #@5
    const/4 v0, 0x0

    #@6
    :goto_0
    monitor-exit p0

    #@7
    return v0

    #@8
    :cond_0
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a
    goto :goto_0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public getSecondaryProgressTintList()Landroid/content/res/ColorStateList;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1137
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@7
    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    #@9
    :cond_0
    return-object v0
.end method

.method public getSecondaryProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1175
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@7
    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    #@9
    :cond_0
    return-object v0
.end method

.method public final declared-synchronized incrementProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1564
    :try_start_0
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    #@3
    add-int/2addr v0, p1

    #@4
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 1563
    return-void

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public final declared-synchronized incrementSecondaryProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1575
    :try_start_0
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    #@3
    add-int/2addr v0, p1

    #@4
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 1574
    return-void

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 1683
    iget-boolean v3, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    #@2
    if-nez v3, :cond_0

    #@4
    .line 1684
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_1

    #@a
    .line 1685
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@d
    move-result-object v0

    #@e
    .line 1686
    .local v0, "dirty":Landroid/graphics/Rect;
    iget v3, p0, Landroid/widget/ProgressBar;->mScrollX:I

    #@10
    iget v4, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    #@12
    add-int v1, v3, v4

    #@14
    .line 1687
    .local v1, "scrollX":I
    iget v3, p0, Landroid/widget/ProgressBar;->mScrollY:I

    #@16
    iget v4, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    #@18
    add-int v2, v3, v4

    #@1a
    .line 1689
    .local v2, "scrollY":I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    #@1c
    add-int/2addr v3, v1

    #@1d
    iget v4, v0, Landroid/graphics/Rect;->top:I

    #@1f
    add-int/2addr v4, v2

    #@20
    .line 1690
    iget v5, v0, Landroid/graphics/Rect;->right:I

    #@22
    add-int/2addr v5, v1

    #@23
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    #@25
    add-int/2addr v6, v2

    #@26
    .line 1689
    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/widget/ProgressBar;->invalidate(IIII)V

    #@29
    .line 1682
    .end local v0    # "dirty":Landroid/graphics/Rect;
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    :cond_0
    :goto_0
    return-void

    #@2a
    .line 1692
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@2d
    goto :goto_0
.end method

.method public declared-synchronized isIndeterminate()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 588
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    #@0
    .prologue
    .line 1240
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    #@3
    .line 1241
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@c
    .line 1242
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@e
    if-eqz v0, :cond_1

    #@10
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@12
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@15
    .line 1239
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 1917
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    #@4
    .line 1918
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1919
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V

    #@b
    .line 1921
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    #@d
    if-eqz v0, :cond_2

    #@f
    .line 1922
    monitor-enter p0

    #@10
    .line 1923
    :try_start_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v6

    #@16
    .line 1924
    .local v6, "count":I
    const/4 v7, 0x0

    #@17
    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_1

    #@19
    .line 1925
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v8

    #@1f
    check-cast v8, Landroid/widget/ProgressBar$RefreshData;

    #@21
    .line 1926
    .local v8, "rd":Landroid/widget/ProgressBar$RefreshData;
    iget v1, v8, Landroid/widget/ProgressBar$RefreshData;->id:I

    #@23
    iget v2, v8, Landroid/widget/ProgressBar$RefreshData;->progress:I

    #@25
    iget-boolean v3, v8, Landroid/widget/ProgressBar$RefreshData;->fromUser:Z

    #@27
    iget-boolean v5, v8, Landroid/widget/ProgressBar$RefreshData;->animate:Z

    #@29
    const/4 v4, 0x1

    #@2a
    move-object v0, p0

    #@2b
    invoke-direct/range {v0 .. v5}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZZ)V

    #@2e
    .line 1927
    invoke-virtual {v8}, Landroid/widget/ProgressBar$RefreshData;->recycle()V

    #@31
    .line 1924
    add-int/lit8 v7, v7, 0x1

    #@33
    goto :goto_0

    #@34
    .line 1929
    .end local v8    # "rd":Landroid/widget/ProgressBar$RefreshData;
    :cond_1
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    #@36
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    monitor-exit p0

    #@3a
    .line 1932
    .end local v6    # "count":I
    .end local v7    # "i":I
    :cond_2
    iput-boolean v9, p0, Landroid/widget/ProgressBar;->mAttached:Z

    #@3c
    .line 1916
    return-void

    #@3d
    .line 1922
    :catchall_0
    move-exception v0

    #@3e
    monitor-exit p0

    #@3f
    throw v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1937
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1938
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V

    #@8
    .line 1940
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 1941
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    #@e
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@11
    .line 1942
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z

    #@13
    .line 1944
    :cond_1
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 1945
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    #@19
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@1c
    .line 1949
    :cond_2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    #@1f
    .line 1950
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mAttached:Z

    #@21
    .line 1936
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1751
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    #@4
    .line 1753
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 1750
    return-void

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 1961
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 1962
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    #@5
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    #@8
    .line 1963
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    #@a
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    #@d
    .line 1960
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    .line 1969
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 1971
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 1973
    const/4 v1, 0x0

    #@a
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    #@d
    move-result v2

    #@e
    int-to-float v2, v2

    #@f
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    #@12
    move-result v3

    #@13
    int-to-float v3, v3

    #@14
    const/4 v4, 0x0

    #@15
    .line 1972
    invoke-static {v4, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@18
    move-result-object v0

    #@19
    .line 1974
    .local v0, "rangeInfo":Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    #@1c
    .line 1968
    .end local v0    # "rangeInfo":Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    :cond_0
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1798
    const/4 v2, 0x0

    #@2
    .line 1799
    .local v2, "dw":I
    const/4 v1, 0x0

    #@3
    .line 1801
    .local v1, "dh":I
    :try_start_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    .line 1802
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@7
    .line 1803
    iget v5, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    #@9
    iget v6, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    #@b
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@e
    move-result v7

    #@f
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    #@12
    move-result v6

    #@13
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    #@16
    move-result v2

    #@17
    .line 1804
    iget v5, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    #@19
    iget v6, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    #@1b
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@1e
    move-result v7

    #@1f
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    #@22
    move-result v6

    #@23
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    #@26
    move-result v1

    #@27
    .line 1807
    :cond_0
    invoke-direct {p0}, Landroid/widget/ProgressBar;->updateDrawableState()V

    #@2a
    .line 1809
    iget v5, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    #@2c
    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    #@2e
    add-int/2addr v5, v6

    #@2f
    add-int/2addr v2, v5

    #@30
    .line 1810
    iget v5, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    #@32
    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingBottom:I

    #@34
    add-int/2addr v5, v6

    #@35
    add-int/2addr v1, v5

    #@36
    .line 1812
    const/4 v5, 0x0

    #@37
    invoke-static {v2, p1, v5}, Landroid/widget/ProgressBar;->resolveSizeAndState(III)I

    #@3a
    move-result v4

    #@3b
    .line 1813
    .local v4, "measuredWidth":I
    const/4 v5, 0x0

    #@3c
    invoke-static {v1, p2, v5}, Landroid/widget/ProgressBar;->resolveSizeAndState(III)I

    #@3f
    move-result v3

    #@40
    .line 1814
    .local v3, "measuredHeight":I
    invoke-virtual {p0, v4, v3}, Landroid/widget/ProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    monitor-exit p0

    #@44
    .line 1797
    return-void

    #@45
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "measuredHeight":I
    .end local v4    # "measuredWidth":I
    :catchall_0
    move-exception v5

    #@46
    monitor-exit p0

    #@47
    throw v5
.end method

.method onProgressRefresh(FZI)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z
    .param p3, "progress"    # I

    #@0
    .prologue
    .line 1332
    iget-object v0, p0, Landroid/widget/ProgressBar;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1333
    invoke-direct {p0}, Landroid/widget/ProgressBar;->scheduleAccessibilityEventSender()V

    #@f
    .line 1331
    :cond_0
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 1250
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    .line 1251
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@4
    .line 1252
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@7
    .line 1254
    :cond_0
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 1255
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@d
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@10
    .line 1257
    :cond_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@12
    if-eqz v1, :cond_2

    #@14
    .line 1258
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@16
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@19
    .line 1249
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 1908
    check-cast v0, Landroid/widget/ProgressBar$SavedState;

    #@3
    .line 1909
    .local v0, "ss":Landroid/widget/ProgressBar$SavedState;
    invoke-virtual {v0}, Landroid/widget/ProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@6
    move-result-object v1

    #@7
    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@a
    .line 1911
    iget v1, v0, Landroid/widget/ProgressBar$SavedState;->progress:I

    #@c
    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    #@f
    .line 1912
    iget v1, v0, Landroid/widget/ProgressBar$SavedState;->secondaryProgress:I

    #@11
    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    #@14
    .line 1907
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    #@0
    .prologue
    .line 1897
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v1

    #@4
    .line 1898
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/ProgressBar$SavedState;

    #@6
    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 1900
    .local v0, "ss":Landroid/widget/ProgressBar$SavedState;
    iget v2, p0, Landroid/widget/ProgressBar;->mProgress:I

    #@b
    iput v2, v0, Landroid/widget/ProgressBar$SavedState;->progress:I

    #@d
    .line 1901
    iget v2, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    #@f
    iput v2, v0, Landroid/widget/ProgressBar$SavedState;->secondaryProgress:I

    #@11
    .line 1903
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    #@0
    .prologue
    .line 1699
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;->updateDrawableBounds(II)V

    #@3
    .line 1698
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    #@0
    .prologue
    .line 1661
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    #@3
    .line 1663
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mAggregatedIsVisible:Z

    #@5
    if-eq p1, v0, :cond_1

    #@7
    .line 1664
    iput-boolean p1, p0, Landroid/widget/ProgressBar;->mAggregatedIsVisible:Z

    #@9
    .line 1666
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1668
    if-eqz p1, :cond_2

    #@f
    .line 1669
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V

    #@12
    .line 1675
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 1676
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    #@18
    const/4 v1, 0x0

    #@19
    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@1c
    .line 1660
    :cond_1
    return-void

    #@1d
    .line 1671
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V

    #@20
    goto :goto_0
.end method

.method onVisualProgressChanged(IF)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "progress"    # F

    #@0
    .prologue
    .line 1375
    return-void
.end method

.method public postInvalidate()V
    .locals 1

    #@0
    .prologue
    .line 1264
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mNoInvalidate:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1265
    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    #@7
    .line 1263
    :cond_0
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 603
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    #@3
    if-eqz v0, :cond_1

    #@5
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-eqz v0, :cond_1

    #@9
    :cond_0
    :goto_0
    monitor-exit p0

    #@a
    .line 602
    return-void

    #@b
    .line 603
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    #@d
    if-eq p1, v0, :cond_0

    #@f
    .line 604
    iput-boolean p1, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    #@11
    .line 606
    if-eqz p1, :cond_2

    #@13
    .line 608
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@15
    invoke-direct {p0, v0}, Landroid/widget/ProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    #@18
    .line 609
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    goto :goto_0

    #@1c
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit p0

    #@1e
    throw v0

    #@1f
    .line 611
    :cond_2
    :try_start_2
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@21
    invoke-direct {p0, v0}, Landroid/widget/ProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    #@24
    .line 612
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@27
    goto :goto_0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 652
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@3
    if-eq v0, p1, :cond_3

    #@5
    .line 653
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 654
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@b
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@e
    .line 655
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@10
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    #@13
    .line 658
    :cond_0
    iput-object p1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@15
    .line 660
    if-eqz p1, :cond_2

    #@17
    .line 661
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@1a
    .line 662
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getLayoutDirection()I

    #@1d
    move-result v0

    #@1e
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@21
    .line 663
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_1

    #@27
    .line 664
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@2e
    .line 666
    :cond_1
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyIndeterminateTint()V

    #@31
    .line 669
    :cond_2
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    #@33
    if-eqz v0, :cond_3

    #@35
    .line 670
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    #@38
    .line 671
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    #@3b
    .line 651
    :cond_3
    return-void
.end method

.method public setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 782
    if-eqz p1, :cond_0

    #@2
    .line 783
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object p1

    #@6
    .line 786
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@9
    .line 781
    return-void
.end method

.method public setIndeterminateTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 693
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 694
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    #@7
    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    #@a
    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@c
    .line 696
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@e
    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    #@10
    .line 697
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@12
    const/4 v1, 0x1

    #@13
    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    #@15
    .line 699
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyIndeterminateTint()V

    #@18
    .line 692
    return-void
.end method

.method public setIndeterminateTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 724
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 725
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    #@7
    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    #@a
    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@c
    .line 727
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@e
    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    #@10
    .line 728
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@12
    const/4 v1, 0x1

    #@13
    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    #@15
    .line 730
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyIndeterminateTint()V

    #@18
    .line 723
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resID"    # I

    #@0
    .prologue
    .line 1637
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@7
    .line 1636
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    #@0
    .prologue
    .line 1647
    iput-object p1, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    #@2
    .line 1646
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 4
    .param p1, "max"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1542
    if-gez p1, :cond_0

    #@3
    .line 1543
    const/4 p1, 0x0

    #@4
    .line 1545
    :cond_0
    :try_start_0
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    #@6
    if-eq p1, v0, :cond_2

    #@8
    .line 1546
    iput p1, p0, Landroid/widget/ProgressBar;->mMax:I

    #@a
    .line 1547
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    #@d
    .line 1549
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    #@f
    if-le v0, p1, :cond_1

    #@11
    .line 1550
    iput p1, p0, Landroid/widget/ProgressBar;->mProgress:I

    #@13
    .line 1552
    :cond_1
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    #@15
    const v1, 0x102000d

    #@18
    const/4 v2, 0x0

    #@19
    const/4 v3, 0x0

    #@1a
    invoke-direct {p0, v1, v0, v2, v3}, Landroid/widget/ProgressBar;->refreshProgress(IIZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    :cond_2
    monitor-exit p0

    #@1e
    .line 1541
    return-void

    #@1f
    :catchall_0
    move-exception v0

    #@20
    monitor-exit p0

    #@21
    throw v0
.end method

.method public declared-synchronized setProgress(I)V
    .locals 2
    .param p1, "progress"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1414
    const/4 v0, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ProgressBar;->setProgressInternal(IZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 1413
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public setProgress(IZ)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "animate"    # Z

    #@0
    .prologue
    .line 1429
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/ProgressBar;->setProgressInternal(IZZ)Z

    #@4
    .line 1428
    return-void
.end method

.method public setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1038
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1039
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    #@7
    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    #@a
    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@c
    .line 1041
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@e
    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    #@10
    .line 1042
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@12
    const/4 v1, 0x1

    #@13
    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    #@15
    .line 1044
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 1045
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressBackgroundTint()V

    #@1c
    .line 1037
    :cond_1
    return-void
.end method

.method public setProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1073
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1074
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    #@7
    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    #@a
    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@c
    .line 1076
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@e
    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    #@10
    .line 1077
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@12
    const/4 v1, 0x1

    #@13
    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    #@15
    .line 1079
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 1080
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressBackgroundTint()V

    #@1c
    .line 1072
    :cond_1
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 810
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@4
    if-eq v0, p1, :cond_5

    #@6
    .line 811
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 812
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@c
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@f
    .line 813
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@11
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    #@14
    .line 816
    :cond_0
    iput-object p1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@16
    .line 818
    if-eqz p1, :cond_3

    #@18
    .line 819
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@1b
    .line 820
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getLayoutDirection()I

    #@1e
    move-result v0

    #@1f
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@22
    .line 821
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_1

    #@28
    .line 822
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@2f
    .line 826
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    #@32
    move-result v6

    #@33
    .line 827
    .local v6, "drawableHeight":I
    iget v0, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    #@35
    if-ge v0, v6, :cond_2

    #@37
    .line 828
    iput v6, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    #@39
    .line 829
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->requestLayout()V

    #@3c
    .line 832
    :cond_2
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressTints()V

    #@3f
    .line 835
    .end local v6    # "drawableHeight":I
    :cond_3
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    #@41
    if-nez v0, :cond_4

    #@43
    .line 836
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    #@46
    .line 837
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    #@49
    .line 840
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    #@4c
    move-result v0

    #@4d
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getHeight()I

    #@50
    move-result v1

    #@51
    invoke-direct {p0, v0, v1}, Landroid/widget/ProgressBar;->updateDrawableBounds(II)V

    #@54
    .line 841
    invoke-direct {p0}, Landroid/widget/ProgressBar;->updateDrawableState()V

    #@57
    .line 843
    iget v2, p0, Landroid/widget/ProgressBar;->mProgress:I

    #@59
    const v1, 0x102000d

    #@5c
    move-object v0, p0

    #@5d
    move v4, v3

    #@5e
    move v5, v3

    #@5f
    invoke-direct/range {v0 .. v5}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZZ)V

    #@62
    .line 844
    iget v2, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    #@64
    const v1, 0x102000f

    #@67
    move-object v0, p0

    #@68
    move v4, v3

    #@69
    move v5, v3

    #@6a
    invoke-direct/range {v0 .. v5}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZZ)V

    #@6d
    .line 809
    :cond_5
    return-void
.end method

.method public setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 1218
    if-eqz p1, :cond_0

    #@2
    .line 1219
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p1, v0}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    #@6
    move-result-object p1

    #@7
    .line 1222
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    #@a
    .line 1217
    return-void
.end method

.method declared-synchronized setProgressInternal(IZZ)Z
    .locals 3
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z
    .param p3, "animate"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 1434
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    if-eqz v0, :cond_0

    #@6
    monitor-exit p0

    #@7
    .line 1436
    return v2

    #@8
    .line 1439
    :cond_0
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    #@a
    const/4 v1, 0x0

    #@b
    invoke-static {p1, v1, v0}, Landroid/util/MathUtils;->constrain(III)I

    #@e
    move-result p1

    #@f
    .line 1441
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    if-ne p1, v0, :cond_1

    #@13
    monitor-exit p0

    #@14
    .line 1443
    return v2

    #@15
    .line 1446
    :cond_1
    :try_start_2
    iput p1, p0, Landroid/widget/ProgressBar;->mProgress:I

    #@17
    .line 1447
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    #@19
    const v1, 0x102000d

    #@1c
    invoke-direct {p0, v1, v0, p2, p3}, Landroid/widget/ProgressBar;->refreshProgress(IIZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1f
    .line 1448
    const/4 v0, 0x1

    #@20
    monitor-exit p0

    #@21
    return v0

    #@22
    :catchall_0
    move-exception v0

    #@23
    monitor-exit p0

    #@24
    throw v0
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 956
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 957
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    #@7
    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    #@a
    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@c
    .line 959
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@e
    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    #@10
    .line 960
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@12
    const/4 v1, 0x1

    #@13
    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    #@15
    .line 962
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 963
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyPrimaryProgressTint()V

    #@1c
    .line 955
    :cond_1
    return-void
.end method

.method public setProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 991
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 992
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    #@7
    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    #@a
    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@c
    .line 994
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@e
    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    #@10
    .line 995
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@12
    const/4 v1, 0x1

    #@13
    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    #@15
    .line 997
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 998
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyPrimaryProgressTint()V

    #@1c
    .line 990
    :cond_1
    return-void
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 4
    .param p1, "secondaryProgress"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1465
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v0, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 1466
    return-void

    #@7
    .line 1469
    :cond_0
    if-gez p1, :cond_1

    #@9
    .line 1470
    const/4 p1, 0x0

    #@a
    .line 1473
    :cond_1
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    #@c
    if-le p1, v0, :cond_2

    #@e
    .line 1474
    iget p1, p0, Landroid/widget/ProgressBar;->mMax:I

    #@10
    .line 1477
    :cond_2
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    #@12
    if-eq p1, v0, :cond_3

    #@14
    .line 1478
    iput p1, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    #@16
    .line 1479
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    #@18
    const v1, 0x102000f

    #@1b
    const/4 v2, 0x0

    #@1c
    const/4 v3, 0x0

    #@1d
    invoke-direct {p0, v1, v0, v2, v3}, Landroid/widget/ProgressBar;->refreshProgress(IIZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    :cond_3
    monitor-exit p0

    #@21
    .line 1464
    return-void

    #@22
    :catchall_0
    move-exception v0

    #@23
    monitor-exit p0

    #@24
    throw v0
.end method

.method public setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1116
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1117
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    #@7
    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    #@a
    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@c
    .line 1119
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@e
    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    #@10
    .line 1120
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@12
    const/4 v1, 0x1

    #@13
    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    #@15
    .line 1122
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 1123
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applySecondaryProgressTint()V

    #@1c
    .line 1115
    :cond_1
    return-void
.end method

.method public setSecondaryProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1153
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1154
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    #@7
    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    #@a
    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@c
    .line 1156
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@e
    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    #@10
    .line 1157
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@12
    const/4 v1, 0x1

    #@13
    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    #@15
    .line 1159
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 1160
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applySecondaryProgressTint()V

    #@1c
    .line 1152
    :cond_1
    return-void
.end method

.method startAnimation()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1582
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getVisibility()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWindowVisibility()I

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 1583
    :cond_0
    return-void

    #@f
    .line 1586
    :cond_1
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@11
    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    #@13
    if-eqz v0, :cond_2

    #@15
    .line 1587
    iput-boolean v2, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    #@17
    .line 1588
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    #@19
    .line 1614
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    #@1c
    .line 1581
    return-void

    #@1d
    .line 1590
    :cond_2
    iput-boolean v2, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    #@1f
    .line 1592
    iget-object v0, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    #@21
    if-nez v0, :cond_3

    #@23
    .line 1593
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    #@25
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    #@28
    iput-object v0, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    #@2a
    .line 1596
    :cond_3
    iget-object v0, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    #@2c
    if-nez v0, :cond_4

    #@2e
    .line 1597
    new-instance v0, Landroid/view/animation/Transformation;

    #@30
    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    #@33
    iput-object v0, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    #@35
    .line 1602
    :goto_1
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    #@37
    if-nez v0, :cond_5

    #@39
    .line 1603
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    #@3b
    const/4 v1, 0x0

    #@3c
    const/high16 v2, 0x3f800000    # 1.0f

    #@3e
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@41
    iput-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    #@43
    .line 1608
    :goto_2
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    #@45
    iget v1, p0, Landroid/widget/ProgressBar;->mBehavior:I

    #@47
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    #@4a
    .line 1609
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    #@4c
    const/4 v1, -0x1

    #@4d
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    #@50
    .line 1610
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    #@52
    iget v1, p0, Landroid/widget/ProgressBar;->mDuration:I

    #@54
    int-to-long v2, v1

    #@55
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    #@58
    .line 1611
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    #@5a
    iget-object v1, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    #@5c
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@5f
    .line 1612
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    #@61
    const-wide/16 v2, -0x1

    #@63
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    #@66
    goto :goto_0

    #@67
    .line 1599
    :cond_4
    iget-object v0, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    #@69
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    #@6c
    goto :goto_1

    #@6d
    .line 1605
    :cond_5
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    #@6f
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->reset()V

    #@72
    goto :goto_2
.end method

.method stopAnimation()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1621
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    #@3
    .line 1622
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1623
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@b
    check-cast v0, Landroid/graphics/drawable/Animatable;

    #@d
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    #@10
    .line 1624
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    #@12
    .line 1626
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    #@15
    .line 1620
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 1234
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eq p1, v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    if-ne p1, v0, :cond_1

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    .line 1235
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@d
    move-result v0

    #@e
    goto :goto_0
.end method
