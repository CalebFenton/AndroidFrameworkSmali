.class public Landroid/widget/ProgressBar;
.super Landroid/view/View;
.source "ProgressBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ProgressBar$RefreshProgressRunnable;,
        Landroid/widget/ProgressBar$RefreshData;,
        Landroid/widget/ProgressBar$SavedState;,
        Landroid/widget/ProgressBar$AccessibilityEventSender;,
        Landroid/widget/ProgressBar$ProgressTintInfo;
    }
.end annotation


# static fields
.field private static final MAX_LEVEL:I = 0x2710

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xc8


# instance fields
.field private mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

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


# direct methods
.method static synthetic -get0(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/ProgressBar;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/ProgressBar;IIZZ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z
    .param p4, "callBackToApp"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 247
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 246
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 251
    const v0, 0x1010077

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 250
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 255
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 254
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
    .line 259
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 236
    const/4 v4, 0x0

    #@4
    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    #@6
    .line 238
    new-instance v4, Ljava/util/ArrayList;

    #@8
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v4, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    #@d
    .line 261
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    #@14
    move-result-wide v4

    #@15
    iput-wide v4, p0, Landroid/widget/ProgressBar;->mUiThreadId:J

    #@17
    .line 262
    invoke-direct {p0}, Landroid/widget/ProgressBar;->initProgressBar()V

    #@1a
    .line 265
    sget-object v4, Lcom/android/internal/R$styleable;->ProgressBar:[I

    #@1c
    .line 264
    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@1f
    move-result-object v0

    #@20
    .line 267
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    #@21
    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mNoInvalidate:Z

    #@23
    .line 269
    const/16 v4, 0x8

    #@25
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@28
    move-result-object v2

    #@29
    .line 270
    .local v2, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@2b
    .line 274
    invoke-static {v2}, Landroid/widget/ProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_14

    #@31
    .line 275
    invoke-virtual {p0, v2}, Landroid/widget/ProgressBar;->setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    #@34
    .line 282
    :cond_0
    :goto_0
    iget v4, p0, Landroid/widget/ProgressBar;->mDuration:I

    #@36
    const/16 v5, 0x9

    #@38
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@3b
    move-result v4

    #@3c
    iput v4, p0, Landroid/widget/ProgressBar;->mDuration:I

    #@3e
    .line 284
    iget v4, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    #@40
    const/16 v5, 0xb

    #@42
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@45
    move-result v4

    #@46
    iput v4, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    #@48
    .line 285
    iget v4, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    #@4a
    const/4 v5, 0x0

    #@4b
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@4e
    move-result v4

    #@4f
    iput v4, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    #@51
    .line 286
    iget v4, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    #@53
    const/16 v5, 0xc

    #@55
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@58
    move-result v4

    #@59
    iput v4, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    #@5b
    .line 287
    iget v4, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    #@5d
    const/4 v5, 0x1

    #@5e
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@61
    move-result v4

    #@62
    iput v4, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    #@64
    .line 289
    iget v4, p0, Landroid/widget/ProgressBar;->mBehavior:I

    #@66
    const/16 v5, 0xa

    #@68
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@6b
    move-result v4

    #@6c
    iput v4, p0, Landroid/widget/ProgressBar;->mBehavior:I

    #@6e
    .line 292
    const/16 v4, 0xd

    #@70
    .line 293
    const v5, 0x10a000b

    #@73
    .line 291
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@76
    move-result v3

    #@77
    .line 294
    .local v3, "resID":I
    if-lez v3, :cond_1

    #@79
    .line 295
    invoke-virtual {p0, p1, v3}, Landroid/widget/ProgressBar;->setInterpolator(Landroid/content/Context;I)V

    #@7c
    .line 298
    :cond_1
    iget v4, p0, Landroid/widget/ProgressBar;->mMax:I

    #@7e
    const/4 v5, 0x2

    #@7f
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@82
    move-result v4

    #@83
    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    #@86
    .line 300
    iget v4, p0, Landroid/widget/ProgressBar;->mProgress:I

    #@88
    const/4 v5, 0x3

    #@89
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@8c
    move-result v4

    #@8d
    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    #@90
    .line 303
    iget v4, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    #@92
    const/4 v5, 0x4

    #@93
    .line 302
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@96
    move-result v4

    #@97
    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    #@9a
    .line 306
    const/4 v4, 0x7

    #@9b
    .line 305
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@9e
    move-result-object v1

    #@9f
    .line 307
    .local v1, "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    #@a1
    .line 308
    invoke-static {v1}, Landroid/widget/ProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    #@a4
    move-result v4

    #@a5
    if-eqz v4, :cond_15

    #@a7
    .line 309
    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    #@aa
    .line 316
    :cond_2
    :goto_1
    iget-boolean v4, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    #@ac
    const/4 v5, 0x6

    #@ad
    .line 315
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@b0
    move-result v4

    #@b1
    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    #@b3
    .line 318
    const/4 v4, 0x0

    #@b4
    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mNoInvalidate:Z

    #@b6
    .line 320
    iget-boolean v4, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    #@b8
    if-nez v4, :cond_16

    #@ba
    .line 321
    iget-boolean v4, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    #@bc
    const/4 v5, 0x5

    #@bd
    .line 320
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@c0
    move-result v4

    #@c1
    :goto_2
    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    #@c4
    .line 323
    iget-boolean v4, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    #@c6
    const/16 v5, 0xf

    #@c8
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@cb
    move-result v4

    #@cc
    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    #@ce
    .line 325
    const/16 v4, 0x11

    #@d0
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@d3
    move-result v4

    #@d4
    if-eqz v4, :cond_4

    #@d6
    .line 326
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@d8
    if-nez v4, :cond_3

    #@da
    .line 327
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    #@dc
    const/4 v5, 0x0

    #@dd
    invoke-direct {v4, v5}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    #@e0
    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@e2
    .line 329
    :cond_3
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@e4
    .line 330
    const/16 v5, 0x11

    #@e6
    const/4 v6, -0x1

    #@e7
    .line 329
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@ea
    move-result v5

    #@eb
    .line 330
    const/4 v6, 0x0

    #@ec
    .line 329
    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@ef
    move-result-object v5

    #@f0
    iput-object v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    #@f2
    .line 331
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@f4
    const/4 v5, 0x1

    #@f5
    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    #@f7
    .line 334
    :cond_4
    const/16 v4, 0x10

    #@f9
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@fc
    move-result v4

    #@fd
    if-eqz v4, :cond_6

    #@ff
    .line 335
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@101
    if-nez v4, :cond_5

    #@103
    .line 336
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    #@105
    const/4 v5, 0x0

    #@106
    invoke-direct {v4, v5}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    #@109
    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@10b
    .line 338
    :cond_5
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@10d
    .line 339
    const/16 v5, 0x10

    #@10f
    .line 338
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@112
    move-result-object v5

    #@113
    iput-object v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    #@115
    .line 340
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@117
    const/4 v5, 0x1

    #@118
    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    #@11a
    .line 343
    :cond_6
    const/16 v4, 0x13

    #@11c
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@11f
    move-result v4

    #@120
    if-eqz v4, :cond_8

    #@122
    .line 344
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@124
    if-nez v4, :cond_7

    #@126
    .line 345
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    #@128
    const/4 v5, 0x0

    #@129
    invoke-direct {v4, v5}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    #@12c
    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@12e
    .line 347
    :cond_7
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@130
    .line 348
    const/16 v5, 0x13

    #@132
    const/4 v6, -0x1

    #@133
    .line 347
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@136
    move-result v5

    #@137
    .line 348
    const/4 v6, 0x0

    #@138
    .line 347
    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@13b
    move-result-object v5

    #@13c
    iput-object v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    #@13e
    .line 349
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@140
    const/4 v5, 0x1

    #@141
    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    #@143
    .line 352
    :cond_8
    const/16 v4, 0x12

    #@145
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@148
    move-result v4

    #@149
    if-eqz v4, :cond_a

    #@14b
    .line 353
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@14d
    if-nez v4, :cond_9

    #@14f
    .line 354
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    #@151
    const/4 v5, 0x0

    #@152
    invoke-direct {v4, v5}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    #@155
    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@157
    .line 356
    :cond_9
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@159
    .line 357
    const/16 v5, 0x12

    #@15b
    .line 356
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@15e
    move-result-object v5

    #@15f
    iput-object v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    #@161
    .line 358
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@163
    const/4 v5, 0x1

    #@164
    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    #@166
    .line 361
    :cond_a
    const/16 v4, 0x15

    #@168
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@16b
    move-result v4

    #@16c
    if-eqz v4, :cond_c

    #@16e
    .line 362
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@170
    if-nez v4, :cond_b

    #@172
    .line 363
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    #@174
    const/4 v5, 0x0

    #@175
    invoke-direct {v4, v5}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    #@178
    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@17a
    .line 365
    :cond_b
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@17c
    .line 366
    const/16 v5, 0x15

    #@17e
    const/4 v6, -0x1

    #@17f
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@182
    move-result v5

    #@183
    const/4 v6, 0x0

    #@184
    .line 365
    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@187
    move-result-object v5

    #@188
    iput-object v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    #@18a
    .line 367
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@18c
    const/4 v5, 0x1

    #@18d
    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    #@18f
    .line 370
    :cond_c
    const/16 v4, 0x14

    #@191
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@194
    move-result v4

    #@195
    if-eqz v4, :cond_e

    #@197
    .line 371
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@199
    if-nez v4, :cond_d

    #@19b
    .line 372
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    #@19d
    const/4 v5, 0x0

    #@19e
    invoke-direct {v4, v5}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    #@1a1
    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@1a3
    .line 374
    :cond_d
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@1a5
    .line 375
    const/16 v5, 0x14

    #@1a7
    .line 374
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@1aa
    move-result-object v5

    #@1ab
    iput-object v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    #@1ad
    .line 376
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@1af
    const/4 v5, 0x1

    #@1b0
    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    #@1b2
    .line 379
    :cond_e
    const/16 v4, 0x17

    #@1b4
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@1b7
    move-result v4

    #@1b8
    if-eqz v4, :cond_10

    #@1ba
    .line 380
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@1bc
    if-nez v4, :cond_f

    #@1be
    .line 381
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    #@1c0
    const/4 v5, 0x0

    #@1c1
    invoke-direct {v4, v5}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    #@1c4
    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@1c6
    .line 383
    :cond_f
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@1c8
    .line 384
    const/16 v5, 0x17

    #@1ca
    const/4 v6, -0x1

    #@1cb
    .line 383
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1ce
    move-result v5

    #@1cf
    .line 384
    const/4 v6, 0x0

    #@1d0
    .line 383
    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@1d3
    move-result-object v5

    #@1d4
    iput-object v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    #@1d6
    .line 385
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@1d8
    const/4 v5, 0x1

    #@1d9
    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    #@1db
    .line 388
    :cond_10
    const/16 v4, 0x16

    #@1dd
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@1e0
    move-result v4

    #@1e1
    if-eqz v4, :cond_12

    #@1e3
    .line 389
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@1e5
    if-nez v4, :cond_11

    #@1e7
    .line 390
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    #@1e9
    const/4 v5, 0x0

    #@1ea
    invoke-direct {v4, v5}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    #@1ed
    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@1ef
    .line 392
    :cond_11
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@1f1
    .line 393
    const/16 v5, 0x16

    #@1f3
    .line 392
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@1f6
    move-result-object v5

    #@1f7
    iput-object v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    #@1f9
    .line 394
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@1fb
    const/4 v5, 0x1

    #@1fc
    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    #@1fe
    .line 397
    :cond_12
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@201
    .line 399
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressTints()V

    #@204
    .line 400
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyIndeterminateTint()V

    #@207
    .line 403
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getImportantForAccessibility()I

    #@20a
    move-result v4

    #@20b
    if-nez v4, :cond_13

    #@20d
    .line 404
    const/4 v4, 0x1

    #@20e
    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setImportantForAccessibility(I)V

    #@211
    .line 258
    :cond_13
    return-void

    #@212
    .line 277
    .end local v1    # "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "resID":I
    :cond_14
    invoke-virtual {p0, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    #@215
    goto/16 :goto_0

    #@217
    .line 311
    .restart local v1    # "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "resID":I
    :cond_15
    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@21a
    goto/16 :goto_1

    #@21c
    .line 320
    :cond_16
    const/4 v4, 0x1

    #@21d
    goto/16 :goto_2
.end method

.method private applyIndeterminateTint()V
    .locals 3

    #@0
    .prologue
    .line 721
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v1, :cond_3

    #@4
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@6
    if-eqz v1, :cond_3

    #@8
    .line 722
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@a
    .line 723
    .local v0, "tintInfo":Landroid/widget/ProgressBar$ProgressTintInfo;
    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    #@c
    if-nez v1, :cond_0

    #@e
    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    #@10
    if-eqz v1, :cond_3

    #@12
    .line 724
    :cond_0
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@14
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@17
    move-result-object v1

    #@18
    iput-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@1a
    .line 726
    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 727
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@20
    iget-object v2, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    #@22
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    #@25
    .line 730
    :cond_1
    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    #@27
    if-eqz v1, :cond_2

    #@29
    .line 731
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@2b
    iget-object v2, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2d
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@30
    .line 736
    :cond_2
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@32
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@35
    move-result v1

    #@36
    if-eqz v1, :cond_3

    #@38
    .line 737
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@3a
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@41
    .line 720
    .end local v0    # "tintInfo":Landroid/widget/ProgressBar$ProgressTintInfo;
    :cond_3
    return-void
.end method

.method private applyPrimaryProgressTint()V
    .locals 3

    #@0
    .prologue
    .line 837
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@2
    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    #@4
    if-nez v1, :cond_0

    #@6
    .line 838
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@8
    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    #@a
    .line 837
    if-eqz v1, :cond_3

    #@c
    .line 839
    :cond_0
    const v1, 0x102000d

    #@f
    const/4 v2, 0x1

    #@10
    invoke-direct {p0, v1, v2}, Landroid/widget/ProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object v0

    #@14
    .line 840
    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    #@16
    .line 841
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@18
    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 842
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@1e
    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    #@20
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    #@23
    .line 844
    :cond_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@25
    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    #@27
    if-eqz v1, :cond_2

    #@29
    .line 845
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@2b
    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2d
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@30
    .line 850
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_3

    #@36
    .line 851
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@3d
    .line 836
    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method private applyProgressBackgroundTint()V
    .locals 3

    #@0
    .prologue
    .line 862
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@2
    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    #@4
    if-nez v1, :cond_0

    #@6
    .line 863
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@8
    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    #@a
    .line 862
    if-eqz v1, :cond_3

    #@c
    .line 864
    :cond_0
    const/high16 v1, 0x1020000

    #@e
    const/4 v2, 0x0

    #@f
    invoke-direct {p0, v1, v2}, Landroid/widget/ProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    #@12
    move-result-object v0

    #@13
    .line 865
    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    #@15
    .line 866
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@17
    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 867
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@1d
    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    #@1f
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    #@22
    .line 869
    :cond_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@24
    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    #@26
    if-eqz v1, :cond_2

    #@28
    .line 870
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@2a
    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2c
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@2f
    .line 875
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@32
    move-result v1

    #@33
    if-eqz v1, :cond_3

    #@35
    .line 876
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@3c
    .line 861
    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method private applyProgressTints()V
    .locals 1

    #@0
    .prologue
    .line 825
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 826
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyPrimaryProgressTint()V

    #@b
    .line 827
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressBackgroundTint()V

    #@e
    .line 828
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applySecondaryProgressTint()V

    #@11
    .line 824
    :cond_0
    return-void
.end method

.method private applySecondaryProgressTint()V
    .locals 3

    #@0
    .prologue
    .line 887
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@2
    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    #@4
    if-nez v1, :cond_0

    #@6
    .line 888
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@8
    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    #@a
    .line 887
    if-eqz v1, :cond_3

    #@c
    .line 889
    :cond_0
    const v1, 0x102000f

    #@f
    const/4 v2, 0x0

    #@10
    invoke-direct {p0, v1, v2}, Landroid/widget/ProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object v0

    #@14
    .line 890
    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    #@16
    .line 891
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@18
    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 892
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@1e
    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    #@20
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    #@23
    .line 894
    :cond_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@25
    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    #@27
    if-eqz v1, :cond_2

    #@29
    .line 895
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@2b
    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2d
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@30
    .line 900
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_3

    #@36
    .line 901
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@3d
    .line 886
    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method private declared-synchronized doRefreshProgress(IIZZ)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z
    .param p4, "callBackToApp"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1284
    :try_start_0
    iget v5, p0, Landroid/widget/ProgressBar;->mMax:I

    #@3
    if-lez v5, :cond_2

    #@5
    int-to-float v5, p2

    #@6
    iget v6, p0, Landroid/widget/ProgressBar;->mMax:I

    #@8
    int-to-float v6, v6

    #@9
    div-float v4, v5, v6

    #@b
    .line 1285
    .local v4, "scale":F
    :goto_0
    iget-object v1, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    #@d
    .line 1286
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    #@f
    .line 1287
    const/4 v3, 0x0

    #@10
    .line 1289
    .local v3, "progressDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v5, v1, Landroid/graphics/drawable/LayerDrawable;

    #@12
    if-eqz v5, :cond_0

    #@14
    .line 1290
    move-object v0, v1

    #@15
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    #@17
    move-object v5, v0

    #@18
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    #@1b
    move-result-object v3

    #@1c
    .line 1291
    .local v3, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    #@1e
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->canResolveLayoutDirection()Z

    #@21
    move-result v5

    #@22
    if-eqz v5, :cond_0

    #@24
    .line 1292
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getLayoutDirection()I

    #@27
    move-result v5

    #@28
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@2b
    .line 1296
    .end local v3    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const v5, 0x461c4000    # 10000.0f

    #@2e
    mul-float/2addr v5, v4

    #@2f
    float-to-int v2, v5

    #@30
    .line 1297
    .local v2, "level":I
    if-eqz v3, :cond_3

    #@32
    :goto_1
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    #@35
    .line 1302
    .end local v2    # "level":I
    :goto_2
    if-eqz p4, :cond_1

    #@37
    const v5, 0x102000d

    #@3a
    if-ne p1, v5, :cond_1

    #@3c
    .line 1303
    invoke-virtual {p0, v4, p3, p2}, Landroid/widget/ProgressBar;->onProgressRefresh(FZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    :cond_1
    monitor-exit p0

    #@40
    .line 1283
    return-void

    #@41
    .line 1284
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v4    # "scale":F
    :cond_2
    const/4 v4, 0x0

    #@42
    .restart local v4    # "scale":F
    goto :goto_0

    #@43
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "level":I
    :cond_3
    move-object v3, v1

    #@44
    .line 1297
    goto :goto_1

    #@45
    .line 1299
    .end local v2    # "level":I
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@48
    goto :goto_2

    #@49
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v4    # "scale":F
    :catchall_0
    move-exception v5

    #@4a
    monitor-exit p0

    #@4b
    throw v5
.end method

.method private getTintTarget(IZ)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "layerId"    # I
    .param p2, "shouldFallback"    # Z

    #@0
    .prologue
    .line 1161
    const/4 v1, 0x0

    #@1
    .line 1163
    .local v1, "layer":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@3
    .line 1164
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    #@5
    .line 1165
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@8
    move-result-object v2

    #@9
    iput-object v2, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@b
    .line 1167
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    #@d
    if-eqz v2, :cond_0

    #@f
    move-object v2, v0

    #@10
    .line 1168
    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    #@12
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    #@15
    move-result-object v1

    #@16
    .line 1171
    .end local v1    # "layer":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-eqz p2, :cond_1

    #@18
    if-nez v1, :cond_1

    #@1a
    .line 1172
    move-object v1, v0

    #@1b
    .line 1176
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
    .line 555
    const/16 v0, 0x64

    #@7
    iput v0, p0, Landroid/widget/ProgressBar;->mMax:I

    #@9
    .line 556
    iput v1, p0, Landroid/widget/ProgressBar;->mProgress:I

    #@b
    .line 557
    iput v1, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    #@d
    .line 558
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    #@f
    .line 559
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    #@11
    .line 560
    const/16 v0, 0xfa0

    #@13
    iput v0, p0, Landroid/widget/ProgressBar;->mDuration:I

    #@15
    .line 561
    const/4 v0, 0x1

    #@16
    iput v0, p0, Landroid/widget/ProgressBar;->mBehavior:I

    #@18
    .line 562
    iput v2, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    #@1a
    .line 563
    iput v3, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    #@1c
    .line 564
    iput v2, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    #@1e
    .line 565
    iput v3, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    #@20
    .line 554
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
    .line 416
    instance-of v4, p0, Landroid/graphics/drawable/LayerDrawable;

    #@4
    if-eqz v4, :cond_2

    #@6
    move-object v3, p0

    #@7
    .line 417
    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    #@9
    .line 418
    .local v3, "orig":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    #@c
    move-result v0

    #@d
    .line 419
    .local v0, "N":I
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@10
    .line 420
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
    .line 421
    return v6

    #@1b
    .line 419
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 424
    :cond_1
    return v5

    #@1f
    .line 427
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
    .line 428
    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    #@26
    .line 429
    .local v2, "in":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    #@29
    move-result v0

    #@2a
    .line 430
    .restart local v0    # "N":I
    const/4 v1, 0x0

    #@2b
    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    #@2d
    .line 431
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
    .line 432
    return v6

    #@38
    .line 430
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 435
    :cond_4
    return v5

    #@3c
    .line 440
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "in":Landroid/graphics/drawable/StateListDrawable;
    :cond_5
    instance-of v4, p0, Landroid/graphics/drawable/BitmapDrawable;

    #@3e
    if-eqz v4, :cond_6

    #@40
    .line 441
    return v6

    #@41
    .line 444
    :cond_6
    return v5
.end method

.method private declared-synchronized refreshProgress(IIZ)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1314
    :try_start_0
    iget-wide v2, p0, Landroid/widget/ProgressBar;->mUiThreadId:J

    #@3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    #@a
    move-result-wide v4

    #@b
    cmp-long v1, v2, v4

    #@d
    if-nez v1, :cond_1

    #@f
    .line 1315
    const/4 v1, 0x1

    #@10
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    :goto_0
    monitor-exit p0

    #@14
    .line 1313
    return-void

    #@15
    .line 1317
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    #@17
    if-nez v1, :cond_2

    #@19
    .line 1318
    new-instance v1, Landroid/widget/ProgressBar$RefreshProgressRunnable;

    #@1b
    const/4 v2, 0x0

    #@1c
    invoke-direct {v1, p0, v2}, Landroid/widget/ProgressBar$RefreshProgressRunnable;-><init>(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar$RefreshProgressRunnable;)V

    #@1f
    iput-object v1, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    #@21
    .line 1321
    :cond_2
    invoke-static {p1, p2, p3}, Landroid/widget/ProgressBar$RefreshData;->obtain(IIZ)Landroid/widget/ProgressBar$RefreshData;

    #@24
    move-result-object v0

    #@25
    .line 1322
    .local v0, "rd":Landroid/widget/ProgressBar$RefreshData;
    iget-object v1, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    .line 1323
    iget-boolean v1, p0, Landroid/widget/ProgressBar;->mAttached:Z

    #@2c
    if-eqz v1, :cond_0

    #@2e
    iget-boolean v1, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z

    #@30
    if-nez v1, :cond_0

    #@32
    .line 1324
    iget-object v1, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    #@34
    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->post(Ljava/lang/Runnable;)Z

    #@37
    .line 1325
    const/4 v1, 0x1

    #@38
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    goto :goto_0

    #@3b
    .end local v0    # "rd":Landroid/widget/ProgressBar$RefreshData;
    :catchall_0
    move-exception v1

    #@3c
    monitor-exit p0

    #@3d
    throw v1
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1890
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1891
    new-instance v0, Landroid/widget/ProgressBar$AccessibilityEventSender;

    #@7
    invoke-direct {v0, p0, v1}, Landroid/widget/ProgressBar$AccessibilityEventSender;-><init>(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar$AccessibilityEventSender;)V

    #@a
    iput-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    #@c
    .line 1895
    :goto_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    #@e
    const-wide/16 v2, 0xc8

    #@10
    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    #@13
    .line 1889
    return-void

    #@14
    .line 1893
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    #@16
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@19
    goto :goto_0
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 15
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "clip"    # Z

    #@0
    .prologue
    .line 455
    move-object/from16 v0, p1

    #@2
    instance-of v12, v0, Landroid/graphics/drawable/LayerDrawable;

    #@4
    if-eqz v12, :cond_4

    #@6
    move-object/from16 v8, p1

    #@8
    .line 456
    check-cast v8, Landroid/graphics/drawable/LayerDrawable;

    #@a
    .line 457
    .local v8, "orig":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    #@d
    move-result v1

    #@e
    .line 458
    .local v1, "N":I
    new-array v10, v1, [Landroid/graphics/drawable/Drawable;

    #@10
    .line 460
    .local v10, "outDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    #@11
    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_2

    #@13
    .line 461
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    #@16
    move-result v6

    #@17
    .line 462
    .local v6, "id":I
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@1a
    move-result-object v13

    #@1b
    .line 463
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
    .line 462
    :goto_1
    invoke-direct {p0, v13, v12}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    #@29
    move-result-object v12

    #@2a
    aput-object v12, v10, v5

    #@2c
    .line 460
    add-int/lit8 v5, v5, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 463
    :cond_1
    const/4 v12, 0x0

    #@30
    goto :goto_1

    #@31
    .line 466
    .end local v6    # "id":I
    :cond_2
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    #@33
    invoke-direct {v4, v10}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    #@36
    .line 467
    .local v4, "clone":Landroid/graphics/drawable/LayerDrawable;
    const/4 v5, 0x0

    #@37
    :goto_2
    if-ge v5, v1, :cond_3

    #@39
    .line 468
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    #@3c
    move-result v12

    #@3d
    invoke-virtual {v4, v5, v12}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    #@40
    .line 469
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getLayerGravity(I)I

    #@43
    move-result v12

    #@44
    invoke-virtual {v4, v5, v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    #@47
    .line 470
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getLayerWidth(I)I

    #@4a
    move-result v12

    #@4b
    invoke-virtual {v4, v5, v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    #@4e
    .line 471
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getLayerHeight(I)I

    #@51
    move-result v12

    #@52
    invoke-virtual {v4, v5, v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    #@55
    .line 472
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetLeft(I)I

    #@58
    move-result v12

    #@59
    invoke-virtual {v4, v5, v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetLeft(II)V

    #@5c
    .line 473
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetRight(I)I

    #@5f
    move-result v12

    #@60
    invoke-virtual {v4, v5, v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetRight(II)V

    #@63
    .line 474
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetTop(I)I

    #@66
    move-result v12

    #@67
    invoke-virtual {v4, v5, v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetTop(II)V

    #@6a
    .line 475
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetBottom(I)I

    #@6d
    move-result v12

    #@6e
    invoke-virtual {v4, v5, v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetBottom(II)V

    #@71
    .line 476
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetStart(I)I

    #@74
    move-result v12

    #@75
    invoke-virtual {v4, v5, v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetStart(II)V

    #@78
    .line 477
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetEnd(I)I

    #@7b
    move-result v12

    #@7c
    invoke-virtual {v4, v5, v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetEnd(II)V

    #@7f
    .line 467
    add-int/lit8 v5, v5, 0x1

    #@81
    goto :goto_2

    #@82
    .line 480
    :cond_3
    return-object v4

    #@83
    .line 483
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
    .line 484
    check-cast v7, Landroid/graphics/drawable/StateListDrawable;

    #@8d
    .line 485
    .local v7, "in":Landroid/graphics/drawable/StateListDrawable;
    new-instance v9, Landroid/graphics/drawable/StateListDrawable;

    #@8f
    invoke-direct {v9}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    #@92
    .line 486
    .local v9, "out":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    #@95
    move-result v1

    #@96
    .line 487
    .restart local v1    # "N":I
    const/4 v5, 0x0

    #@97
    .restart local v5    # "i":I
    :goto_3
    if-ge v5, v1, :cond_5

    #@99
    .line 488
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
    .line 487
    add-int/lit8 v5, v5, 0x1

    #@ac
    goto :goto_3

    #@ad
    .line 491
    :cond_5
    return-object v9

    #@ae
    .line 494
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
    .line 495
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    #@b8
    .line 496
    .local v2, "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@bb
    move-result-object v11

    #@bc
    .line 497
    .local v11, "tileBitmap":Landroid/graphics/Bitmap;
    iget-object v12, p0, Landroid/widget/ProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    #@be
    if-nez v12, :cond_7

    #@c0
    .line 498
    iput-object v11, p0, Landroid/widget/ProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    #@c2
    .line 501
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
    .line 502
    .local v3, "clone":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v12, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    #@ce
    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@d0
    invoke-virtual {v3, v12, v13}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    #@d3
    .line 504
    if-eqz p2, :cond_8

    #@d5
    .line 505
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
    .line 507
    :cond_8
    return-object v3

    #@de
    .line 511
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
    .line 525
    instance-of v5, p1, Landroid/graphics/drawable/AnimationDrawable;

    #@4
    if-eqz v5, :cond_1

    #@6
    move-object v1, p1

    #@7
    .line 526
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    #@9
    .line 527
    .local v1, "background":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    #@c
    move-result v0

    #@d
    .line 528
    .local v0, "N":I
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    #@f
    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    #@12
    .line 529
    .local v4, "newBg":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    #@15
    move-result v5

    #@16
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    #@19
    .line 531
    const/4 v3, 0x0

    #@1a
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    #@1c
    .line 532
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
    .line 533
    .local v2, "frame":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    #@28
    .line 534
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    #@2b
    move-result v5

    #@2c
    invoke-virtual {v4, v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    #@2f
    .line 531
    add-int/lit8 v3, v3, 0x1

    #@31
    goto :goto_0

    #@32
    .line 536
    .end local v2    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    #@35
    .line 537
    move-object p1, v4

    #@36
    .line 539
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
    .line 1628
    iget v12, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    #@2
    iget v13, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    #@4
    add-int/2addr v12, v13

    #@5
    sub-int p1, p1, v12

    #@7
    .line 1629
    iget v12, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    #@9
    iget v13, p0, Landroid/widget/ProgressBar;->mPaddingBottom:I

    #@b
    add-int/2addr v12, v13

    #@c
    sub-int p2, p2, v12

    #@e
    .line 1631
    move/from16 v8, p1

    #@10
    .line 1632
    .local v8, "right":I
    move/from16 v1, p2

    #@12
    .line 1633
    .local v1, "bottom":I
    const/4 v10, 0x0

    #@13
    .line 1634
    .local v10, "top":I
    const/4 v7, 0x0

    #@14
    .line 1636
    .local v7, "left":I
    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@16
    if-eqz v12, :cond_2

    #@18
    .line 1638
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
    .line 1659
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
    .line 1660
    move v9, v7

    #@2d
    .line 1661
    .local v9, "tempLeft":I
    sub-int v7, p1, v8

    #@2f
    .line 1662
    sub-int v8, p1, v9

    #@31
    .line 1664
    .end local v9    # "tempLeft":I
    :cond_1
    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@33
    invoke-virtual {v12, v7, v10, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@36
    .line 1667
    :cond_2
    iget-object v12, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@38
    if-eqz v12, :cond_3

    #@3a
    .line 1668
    iget-object v12, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@3c
    const/4 v13, 0x0

    #@3d
    const/4 v14, 0x0

    #@3e
    invoke-virtual {v12, v13, v14, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@41
    .line 1625
    :cond_3
    return-void

    #@42
    .line 1641
    :cond_4
    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@44
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@47
    move-result v6

    #@48
    .line 1642
    .local v6, "intrinsicWidth":I
    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@4a
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@4d
    move-result v5

    #@4e
    .line 1643
    .local v5, "intrinsicHeight":I
    int-to-float v12, v6

    #@4f
    int-to-float v13, v5

    #@50
    div-float v4, v12, v13

    #@52
    .line 1644
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
    .line 1645
    .local v2, "boundAspect":F
    cmpl-float v12, v4, v2

    #@5c
    if-eqz v12, :cond_0

    #@5e
    .line 1646
    cmpl-float v12, v2, v4

    #@60
    if-lez v12, :cond_5

    #@62
    .line 1648
    move/from16 v0, p2

    #@64
    int-to-float v12, v0

    #@65
    mul-float/2addr v12, v4

    #@66
    float-to-int v11, v12

    #@67
    .line 1649
    .local v11, "width":I
    sub-int v12, p1, v11

    #@69
    div-int/lit8 v7, v12, 0x2

    #@6b
    .line 1650
    add-int v8, v7, v11

    #@6d
    goto :goto_0

    #@6e
    .line 1653
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
    .line 1654
    .local v3, "height":I
    sub-int v12, p2, v3

    #@78
    div-int/lit8 v10, v12, 0x2

    #@7a
    .line 1655
    add-int v1, v10, v3

    #@7c
    goto :goto_0
.end method

.method private updateDrawableState()V
    .locals 2

    #@0
    .prologue
    .line 1747
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    #@3
    move-result-object v0

    #@4
    .line 1749
    .local v0, "state":[I
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    if-eqz v1, :cond_0

    #@8
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@a
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 1750
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@12
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@15
    .line 1753
    :cond_0
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@17
    if-eqz v1, :cond_1

    #@19
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@1b
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_1

    #@21
    .line 1754
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@23
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@26
    .line 1746
    :cond_1
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
    .line 1683
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    #@3
    .line 1684
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    #@5
    .line 1687
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@8
    move-result v1

    #@9
    .line 1689
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
    .line 1690
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
    .line 1691
    const/high16 v3, -0x40800000    # -1.0f

    #@23
    const/high16 v6, 0x3f800000    # 1.0f

    #@25
    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->scale(FF)V

    #@28
    .line 1696
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawingTime()J

    #@2b
    move-result-wide v4

    #@2c
    .line 1697
    .local v4, "time":J
    iget-boolean v3, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    #@2e
    if-eqz v3, :cond_0

    #@30
    .line 1698
    iget-object v3, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    #@32
    iget-object v6, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    #@34
    invoke-virtual {v3, v4, v5, v6}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    #@37
    .line 1699
    iget-object v3, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    #@39
    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getAlpha()F

    #@3c
    move-result v2

    #@3d
    .line 1701
    .local v2, "scale":F
    const/4 v3, 0x1

    #@3e
    :try_start_0
    iput-boolean v3, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    #@40
    .line 1702
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
    .line 1704
    iput-boolean v7, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    #@4a
    .line 1706
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidateOnAnimation()V

    #@4d
    .line 1709
    .end local v2    # "scale":F
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@50
    .line 1710
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@53
    .line 1712
    iget-boolean v3, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    #@55
    if-eqz v3, :cond_1

    #@57
    instance-of v3, v0, Landroid/graphics/drawable/Animatable;

    #@59
    if-eqz v3, :cond_1

    #@5b
    .line 1713
    check-cast v0, Landroid/graphics/drawable/Animatable;

    #@5d
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    #@60
    .line 1714
    iput-boolean v7, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    #@62
    .line 1682
    .end local v1    # "saveCount":I
    .end local v4    # "time":J
    :cond_1
    return-void

    #@63
    .line 1693
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
    .line 1703
    .restart local v2    # "scale":F
    .restart local v4    # "time":J
    :catchall_0
    move-exception v3

    #@6e
    .line 1704
    iput-boolean v7, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    #@70
    .line 1703
    throw v3
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 1760
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    #@3
    .line 1762
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1763
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    #@c
    .line 1766
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 1767
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@12
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    #@15
    .line 1759
    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    #@0
    .prologue
    .line 1742
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    #@3
    .line 1743
    invoke-direct {p0}, Landroid/widget/ProgressBar;->updateDrawableState()V

    #@6
    .line 1741
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    #@0
    .prologue
    .line 1901
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    #@3
    .line 1903
    const-string/jumbo v0, "progress:max"

    #@6
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    #@9
    move-result v1

    #@a
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@d
    .line 1904
    const-string/jumbo v0, "progress:progress"

    #@10
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    #@13
    move-result v1

    #@14
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@17
    .line 1905
    const-string/jumbo v0, "progress:secondaryProgress"

    #@1a
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    #@1d
    move-result v1

    #@1e
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@21
    .line 1906
    const-string/jumbo v0, "progress:indeterminate"

    #@24
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    #@27
    move-result v1

    #@28
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    #@2b
    .line 1900
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1871
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
    .line 1202
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
    .line 515
    const/16 v1, 0x8

    #@3
    new-array v0, v1, [F

    #@5
    .local v0, "roundedCorners":[F
    fill-array-data v0, :array_0

    #@8
    .line 516
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    #@a
    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    #@d
    return-object v1

    #@e
    .line 515
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
    .line 614
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
    .line 682
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
    .line 717
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
    .line 1570
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
    .line 1442
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
    .line 1411
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
    .line 1031
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
    .line 1065
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
    .line 772
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
    .line 949
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
    .line 986
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
    .line 1428
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
    .line 1110
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
    .line 1148
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
    .line 1478
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
    .line 1477
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
    .line 1489
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
    .line 1488
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
    .line 1606
    iget-boolean v3, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    #@2
    if-nez v3, :cond_0

    #@4
    .line 1607
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_1

    #@a
    .line 1608
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@d
    move-result-object v0

    #@e
    .line 1609
    .local v0, "dirty":Landroid/graphics/Rect;
    iget v3, p0, Landroid/widget/ProgressBar;->mScrollX:I

    #@10
    iget v4, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    #@12
    add-int v1, v3, v4

    #@14
    .line 1610
    .local v1, "scrollX":I
    iget v3, p0, Landroid/widget/ProgressBar;->mScrollY:I

    #@16
    iget v4, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    #@18
    add-int v2, v3, v4

    #@1a
    .line 1612
    .local v2, "scrollY":I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    #@1c
    add-int/2addr v3, v1

    #@1d
    iget v4, v0, Landroid/graphics/Rect;->top:I

    #@1f
    add-int/2addr v4, v2

    #@20
    .line 1613
    iget v5, v0, Landroid/graphics/Rect;->right:I

    #@22
    add-int/2addr v5, v1

    #@23
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    #@25
    add-int/2addr v6, v2

    #@26
    .line 1612
    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/widget/ProgressBar;->invalidate(IIII)V

    #@29
    .line 1605
    .end local v0    # "dirty":Landroid/graphics/Rect;
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    :cond_0
    :goto_0
    return-void

    #@2a
    .line 1615
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
    .line 575
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
    .line 1213
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    #@3
    .line 1214
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@c
    .line 1215
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@e
    if-eqz v0, :cond_1

    #@10
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@12
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@15
    .line 1212
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 1833
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    #@4
    .line 1834
    iget-boolean v3, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 1835
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V

    #@b
    .line 1837
    :cond_0
    iget-object v3, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    #@d
    if-eqz v3, :cond_2

    #@f
    .line 1838
    monitor-enter p0

    #@10
    .line 1839
    :try_start_0
    iget-object v3, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v0

    #@16
    .line 1840
    .local v0, "count":I
    const/4 v1, 0x0

    #@17
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@19
    .line 1841
    iget-object v3, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Landroid/widget/ProgressBar$RefreshData;

    #@21
    .line 1842
    .local v2, "rd":Landroid/widget/ProgressBar$RefreshData;
    iget v3, v2, Landroid/widget/ProgressBar$RefreshData;->id:I

    #@23
    iget v4, v2, Landroid/widget/ProgressBar$RefreshData;->progress:I

    #@25
    iget-boolean v5, v2, Landroid/widget/ProgressBar$RefreshData;->fromUser:Z

    #@27
    const/4 v6, 0x1

    #@28
    invoke-direct {p0, v3, v4, v5, v6}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    #@2b
    .line 1843
    invoke-virtual {v2}, Landroid/widget/ProgressBar$RefreshData;->recycle()V

    #@2e
    .line 1840
    add-int/lit8 v1, v1, 0x1

    #@30
    goto :goto_0

    #@31
    .line 1845
    .end local v2    # "rd":Landroid/widget/ProgressBar$RefreshData;
    :cond_1
    iget-object v3, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    monitor-exit p0

    #@37
    .line 1848
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2
    iput-boolean v7, p0, Landroid/widget/ProgressBar;->mAttached:Z

    #@39
    .line 1832
    return-void

    #@3a
    .line 1838
    :catchall_0
    move-exception v3

    #@3b
    monitor-exit p0

    #@3c
    throw v3
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1853
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1854
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V

    #@8
    .line 1856
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 1857
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    #@e
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@11
    .line 1858
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z

    #@13
    .line 1860
    :cond_1
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 1861
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    #@19
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@1c
    .line 1865
    :cond_2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    #@1f
    .line 1866
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mAttached:Z

    #@21
    .line 1852
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1674
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    #@4
    .line 1676
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 1673
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
    .line 1877
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 1878
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    #@5
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    #@8
    .line 1879
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    #@a
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    #@d
    .line 1876
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
    .line 1721
    const/4 v2, 0x0

    #@2
    .line 1722
    .local v2, "dw":I
    const/4 v1, 0x0

    #@3
    .line 1724
    .local v1, "dh":I
    :try_start_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    .line 1725
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@7
    .line 1726
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
    .line 1727
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
    .line 1730
    :cond_0
    invoke-direct {p0}, Landroid/widget/ProgressBar;->updateDrawableState()V

    #@2a
    .line 1732
    iget v5, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    #@2c
    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    #@2e
    add-int/2addr v5, v6

    #@2f
    add-int/2addr v2, v5

    #@30
    .line 1733
    iget v5, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    #@32
    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingBottom:I

    #@34
    add-int/2addr v5, v6

    #@35
    add-int/2addr v1, v5

    #@36
    .line 1735
    const/4 v5, 0x0

    #@37
    invoke-static {v2, p1, v5}, Landroid/widget/ProgressBar;->resolveSizeAndState(III)I

    #@3a
    move-result v4

    #@3b
    .line 1736
    .local v4, "measuredWidth":I
    const/4 v5, 0x0

    #@3c
    invoke-static {v1, p2, v5}, Landroid/widget/ProgressBar;->resolveSizeAndState(III)I

    #@3f
    move-result v3

    #@40
    .line 1737
    .local v3, "measuredHeight":I
    invoke-virtual {p0, v4, v3}, Landroid/widget/ProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    monitor-exit p0

    #@44
    .line 1720
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
    .line 1308
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
    .line 1309
    invoke-direct {p0}, Landroid/widget/ProgressBar;->scheduleAccessibilityEventSender()V

    #@f
    .line 1307
    :cond_0
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 1223
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    .line 1224
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@4
    .line 1225
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@7
    .line 1227
    :cond_0
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 1228
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@d
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@10
    .line 1230
    :cond_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@12
    if-eqz v1, :cond_2

    #@14
    .line 1231
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@16
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@19
    .line 1222
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
    .line 1824
    check-cast v0, Landroid/widget/ProgressBar$SavedState;

    #@3
    .line 1825
    .local v0, "ss":Landroid/widget/ProgressBar$SavedState;
    invoke-virtual {v0}, Landroid/widget/ProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@6
    move-result-object v1

    #@7
    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@a
    .line 1827
    iget v1, v0, Landroid/widget/ProgressBar$SavedState;->progress:I

    #@c
    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    #@f
    .line 1828
    iget v1, v0, Landroid/widget/ProgressBar$SavedState;->secondaryProgress:I

    #@11
    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    #@14
    .line 1823
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    #@0
    .prologue
    .line 1813
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v1

    #@4
    .line 1814
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/ProgressBar$SavedState;

    #@6
    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 1816
    .local v0, "ss":Landroid/widget/ProgressBar$SavedState;
    iget v2, p0, Landroid/widget/ProgressBar;->mProgress:I

    #@b
    iput v2, v0, Landroid/widget/ProgressBar$SavedState;->progress:I

    #@d
    .line 1817
    iget v2, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    #@f
    iput v2, v0, Landroid/widget/ProgressBar$SavedState;->secondaryProgress:I

    #@11
    .line 1819
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
    .line 1622
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;->updateDrawableBounds(II)V

    #@3
    .line 1621
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    #@0
    .prologue
    .line 1592
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    #@3
    .line 1594
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 1596
    const/16 v0, 0x8

    #@9
    if-eq p2, v0, :cond_0

    #@b
    const/4 v0, 0x4

    #@c
    if-ne p2, v0, :cond_2

    #@e
    .line 1597
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V

    #@11
    .line 1591
    :cond_1
    :goto_0
    return-void

    #@12
    .line 1599
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V

    #@15
    goto :goto_0
.end method

.method public postInvalidate()V
    .locals 1

    #@0
    .prologue
    .line 1237
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mNoInvalidate:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1238
    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    #@7
    .line 1236
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
    .line 590
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
    .line 589
    return-void

    #@b
    .line 590
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    #@d
    if-eq p1, v0, :cond_0

    #@f
    .line 591
    iput-boolean p1, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    #@11
    .line 593
    if-eqz p1, :cond_2

    #@13
    .line 595
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@15
    iput-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    #@17
    .line 596
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    goto :goto_0

    #@1b
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit p0

    #@1d
    throw v0

    #@1e
    .line 598
    :cond_2
    :try_start_2
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@20
    iput-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    #@22
    .line 599
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@25
    goto :goto_0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 625
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@3
    if-eq v0, p1, :cond_3

    #@5
    .line 626
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 627
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@b
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@e
    .line 628
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@10
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    #@13
    .line 631
    :cond_0
    iput-object p1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@15
    .line 633
    if-eqz p1, :cond_2

    #@17
    .line 634
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@1a
    .line 635
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getLayoutDirection()I

    #@1d
    move-result v0

    #@1e
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@21
    .line 636
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_1

    #@27
    .line 637
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@2e
    .line 639
    :cond_1
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyIndeterminateTint()V

    #@31
    .line 642
    :cond_2
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    #@33
    if-eqz v0, :cond_3

    #@35
    .line 643
    iput-object p1, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    #@37
    .line 644
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    #@3a
    .line 624
    :cond_3
    return-void
.end method

.method public setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 755
    if-eqz p1, :cond_0

    #@2
    .line 756
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object p1

    #@6
    .line 759
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@9
    .line 754
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
    .line 666
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 667
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    #@7
    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    #@a
    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@c
    .line 669
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@e
    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    #@10
    .line 670
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@12
    const/4 v1, 0x1

    #@13
    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    #@15
    .line 672
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyIndeterminateTint()V

    #@18
    .line 665
    return-void
.end method

.method public setIndeterminateTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 697
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 698
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    #@7
    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    #@a
    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@c
    .line 700
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@e
    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    #@10
    .line 701
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@12
    const/4 v1, 0x1

    #@13
    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    #@15
    .line 703
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyIndeterminateTint()V

    #@18
    .line 696
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resID"    # I

    #@0
    .prologue
    .line 1551
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@7
    .line 1550
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    #@0
    .prologue
    .line 1561
    iput-object p1, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    #@2
    .line 1560
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .param p1, "max"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1456
    if-gez p1, :cond_0

    #@3
    .line 1457
    const/4 p1, 0x0

    #@4
    .line 1459
    :cond_0
    :try_start_0
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    #@6
    if-eq p1, v0, :cond_2

    #@8
    .line 1460
    iput p1, p0, Landroid/widget/ProgressBar;->mMax:I

    #@a
    .line 1461
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    #@d
    .line 1463
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    #@f
    if-le v0, p1, :cond_1

    #@11
    .line 1464
    iput p1, p0, Landroid/widget/ProgressBar;->mProgress:I

    #@13
    .line 1466
    :cond_1
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    #@15
    const v1, 0x102000d

    #@18
    const/4 v2, 0x0

    #@19
    invoke-direct {p0, v1, v0, v2}, Landroid/widget/ProgressBar;->refreshProgress(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    :cond_2
    monitor-exit p0

    #@1d
    .line 1455
    return-void

    #@1e
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit p0

    #@20
    throw v0
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .param p1, "progress"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1343
    const/4 v0, 0x0

    #@2
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/widget/ProgressBar;->setProgress(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit p0

    #@6
    .line 1342
    return-void

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method declared-synchronized setProgress(IZ)Z
    .locals 3
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 1348
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    if-eqz v0, :cond_0

    #@6
    monitor-exit p0

    #@7
    .line 1350
    return v2

    #@8
    .line 1353
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
    .line 1355
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    if-ne p1, v0, :cond_1

    #@13
    monitor-exit p0

    #@14
    .line 1357
    return v2

    #@15
    .line 1360
    :cond_1
    :try_start_2
    iput p1, p0, Landroid/widget/ProgressBar;->mProgress:I

    #@17
    .line 1361
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    #@19
    const v1, 0x102000d

    #@1c
    invoke-direct {p0, v1, v0, p2}, Landroid/widget/ProgressBar;->refreshProgress(IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1f
    .line 1362
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

.method public setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1011
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1012
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    #@7
    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    #@a
    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@c
    .line 1014
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@e
    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    #@10
    .line 1015
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@12
    const/4 v1, 0x1

    #@13
    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    #@15
    .line 1017
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 1018
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressBackgroundTint()V

    #@1c
    .line 1010
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
    .line 1046
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1047
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    #@7
    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    #@a
    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@c
    .line 1049
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@e
    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    #@10
    .line 1050
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@12
    const/4 v1, 0x1

    #@13
    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    #@15
    .line 1052
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 1053
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressBackgroundTint()V

    #@1c
    .line 1045
    :cond_1
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 783
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@4
    if-eq v1, p1, :cond_5

    #@6
    .line 784
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 785
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@c
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@f
    .line 786
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@11
    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    #@14
    .line 789
    :cond_0
    iput-object p1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@16
    .line 791
    if-eqz p1, :cond_3

    #@18
    .line 792
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@1b
    .line 793
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getLayoutDirection()I

    #@1e
    move-result v1

    #@1f
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@22
    .line 794
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_1

    #@28
    .line 795
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@2f
    .line 799
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    #@32
    move-result v0

    #@33
    .line 800
    .local v0, "drawableHeight":I
    iget v1, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    #@35
    if-ge v1, v0, :cond_2

    #@37
    .line 801
    iput v0, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    #@39
    .line 802
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->requestLayout()V

    #@3c
    .line 805
    :cond_2
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressTints()V

    #@3f
    .line 808
    .end local v0    # "drawableHeight":I
    :cond_3
    iget-boolean v1, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    #@41
    if-nez v1, :cond_4

    #@43
    .line 809
    iput-object p1, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    #@45
    .line 810
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    #@48
    .line 813
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    #@4b
    move-result v1

    #@4c
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getHeight()I

    #@4f
    move-result v2

    #@50
    invoke-direct {p0, v1, v2}, Landroid/widget/ProgressBar;->updateDrawableBounds(II)V

    #@53
    .line 814
    invoke-direct {p0}, Landroid/widget/ProgressBar;->updateDrawableState()V

    #@56
    .line 816
    iget v1, p0, Landroid/widget/ProgressBar;->mProgress:I

    #@58
    const v2, 0x102000d

    #@5b
    invoke-direct {p0, v2, v1, v3, v3}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    #@5e
    .line 817
    iget v1, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    #@60
    const v2, 0x102000f

    #@63
    invoke-direct {p0, v2, v1, v3, v3}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    #@66
    .line 782
    :cond_5
    return-void
.end method

.method public setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 1191
    if-eqz p1, :cond_0

    #@2
    .line 1192
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p1, v0}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    #@6
    move-result-object p1

    #@7
    .line 1195
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    #@a
    .line 1190
    return-void
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
    .line 929
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 930
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    #@7
    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    #@a
    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@c
    .line 932
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@e
    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    #@10
    .line 933
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@12
    const/4 v1, 0x1

    #@13
    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    #@15
    .line 935
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 936
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyPrimaryProgressTint()V

    #@1c
    .line 928
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
    .line 964
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 965
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    #@7
    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    #@a
    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@c
    .line 967
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@e
    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    #@10
    .line 968
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@12
    const/4 v1, 0x1

    #@13
    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    #@15
    .line 970
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 971
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyPrimaryProgressTint()V

    #@1c
    .line 963
    :cond_1
    return-void
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 3
    .param p1, "secondaryProgress"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1379
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v0, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 1380
    return-void

    #@7
    .line 1383
    :cond_0
    if-gez p1, :cond_1

    #@9
    .line 1384
    const/4 p1, 0x0

    #@a
    .line 1387
    :cond_1
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    #@c
    if-le p1, v0, :cond_2

    #@e
    .line 1388
    iget p1, p0, Landroid/widget/ProgressBar;->mMax:I

    #@10
    .line 1391
    :cond_2
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    #@12
    if-eq p1, v0, :cond_3

    #@14
    .line 1392
    iput p1, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    #@16
    .line 1393
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    #@18
    const v1, 0x102000f

    #@1b
    const/4 v2, 0x0

    #@1c
    invoke-direct {p0, v1, v0, v2}, Landroid/widget/ProgressBar;->refreshProgress(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    :cond_3
    monitor-exit p0

    #@20
    .line 1378
    return-void

    #@21
    :catchall_0
    move-exception v0

    #@22
    monitor-exit p0

    #@23
    throw v0
.end method

.method public setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1089
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1090
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    #@7
    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    #@a
    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@c
    .line 1092
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@e
    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    #@10
    .line 1093
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@12
    const/4 v1, 0x1

    #@13
    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    #@15
    .line 1095
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 1096
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applySecondaryProgressTint()V

    #@1c
    .line 1088
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
    .line 1126
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1127
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    #@7
    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    #@a
    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@c
    .line 1129
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@e
    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    #@10
    .line 1130
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    #@12
    const/4 v1, 0x1

    #@13
    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    #@15
    .line 1132
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 1133
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applySecondaryProgressTint()V

    #@1c
    .line 1125
    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "v"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 1576
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getVisibility()I

    #@3
    move-result v0

    #@4
    if-eq v0, p1, :cond_1

    #@6
    .line 1577
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    #@9
    .line 1579
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 1581
    const/16 v0, 0x8

    #@f
    if-eq p1, v0, :cond_0

    #@11
    const/4 v0, 0x4

    #@12
    if-ne p1, v0, :cond_2

    #@14
    .line 1582
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V

    #@17
    .line 1575
    :cond_1
    :goto_0
    return-void

    #@18
    .line 1584
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V

    #@1b
    goto :goto_0
.end method

.method startAnimation()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1496
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getVisibility()I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1497
    return-void

    #@9
    .line 1500
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@b
    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 1501
    iput-boolean v2, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    #@11
    .line 1502
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    #@13
    .line 1528
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    #@16
    .line 1495
    return-void

    #@17
    .line 1504
    :cond_1
    iput-boolean v2, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    #@19
    .line 1506
    iget-object v0, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    #@1b
    if-nez v0, :cond_2

    #@1d
    .line 1507
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    #@1f
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    #@22
    iput-object v0, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    #@24
    .line 1510
    :cond_2
    iget-object v0, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    #@26
    if-nez v0, :cond_3

    #@28
    .line 1511
    new-instance v0, Landroid/view/animation/Transformation;

    #@2a
    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    #@2d
    iput-object v0, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    #@2f
    .line 1516
    :goto_1
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    #@31
    if-nez v0, :cond_4

    #@33
    .line 1517
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    #@35
    const/4 v1, 0x0

    #@36
    const/high16 v2, 0x3f800000    # 1.0f

    #@38
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@3b
    iput-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    #@3d
    .line 1522
    :goto_2
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    #@3f
    iget v1, p0, Landroid/widget/ProgressBar;->mBehavior:I

    #@41
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    #@44
    .line 1523
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    #@46
    const/4 v1, -0x1

    #@47
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    #@4a
    .line 1524
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    #@4c
    iget v1, p0, Landroid/widget/ProgressBar;->mDuration:I

    #@4e
    int-to-long v2, v1

    #@4f
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    #@52
    .line 1525
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    #@54
    iget-object v1, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    #@56
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@59
    .line 1526
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    #@5b
    const-wide/16 v2, -0x1

    #@5d
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    #@60
    goto :goto_0

    #@61
    .line 1513
    :cond_3
    iget-object v0, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    #@63
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    #@66
    goto :goto_1

    #@67
    .line 1519
    :cond_4
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    #@69
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->reset()V

    #@6c
    goto :goto_2
.end method

.method stopAnimation()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1535
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    #@3
    .line 1536
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1537
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    #@b
    check-cast v0, Landroid/graphics/drawable/Animatable;

    #@d
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    #@10
    .line 1538
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    #@12
    .line 1540
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    #@15
    .line 1534
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 1207
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
    .line 1208
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@d
    move-result v0

    #@e
    goto :goto_0
.end method
