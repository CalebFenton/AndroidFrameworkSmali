.class public Landroid/view/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScaleGestureDetector$OnScaleGestureListener;,
        Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final ANCHORED_SCALE_MODE_DOUBLE_TAP:I = 0x1

.field private static final ANCHORED_SCALE_MODE_NONE:I = 0x0

.field private static final ANCHORED_SCALE_MODE_STYLUS:I = 0x2

.field private static final SCALE_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetector"

.field private static final TOUCH_STABILIZE_TIME:J = 0x80L


# instance fields
.field private mAnchoredScaleMode:I

.field private mAnchoredScaleStartX:F

.field private mAnchoredScaleStartY:F

.field private final mContext:Landroid/content/Context;

.field private mCurrSpan:F

.field private mCurrSpanX:F

.field private mCurrSpanY:F

.field private mCurrTime:J

.field private mEventBeforeOrAboveStartingGestureEvent:Z

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mInProgress:Z

.field private mInitialSpan:F

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private final mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mMinSpan:I

.field private mPrevSpan:F

.field private mPrevSpanX:F

.field private mPrevSpanY:F

.field private mPrevTime:J

.field private mQuickScaleEnabled:Z

.field private mSpanSlop:I

.field private mStylusScaleEnabled:Z


# direct methods
.method static synthetic -set0(Landroid/view/ScaleGestureDetector;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/view/ScaleGestureDetector;F)F
    .locals 0

    #@0
    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/view/ScaleGestureDetector;F)F
    .locals 0

    #@0
    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    #@2
    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    #@0
    .prologue
    .line 182
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    #@4
    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 152
    iput v3, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    #@7
    .line 165
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_2

    #@d
    .line 166
    new-instance v2, Landroid/view/InputEventConsistencyVerifier;

    #@f
    invoke-direct {v2, p0, v3}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    #@12
    .line 164
    :goto_0
    iput-object v2, p0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@14
    .line 198
    iput-object p1, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    #@16
    .line 199
    iput-object p2, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    #@18
    .line 200
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@1f
    move-result v2

    #@20
    mul-int/lit8 v2, v2, 0x2

    #@22
    iput v2, p0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    #@24
    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@27
    move-result-object v0

    #@28
    .line 203
    .local v0, "res":Landroid/content/res/Resources;
    const v2, 0x1050012

    #@2b
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@2e
    move-result v2

    #@2f
    iput v2, p0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    #@31
    .line 204
    iput-object p3, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    #@33
    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@36
    move-result-object v2

    #@37
    iget v1, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@39
    .line 207
    .local v1, "targetSdkVersion":I
    const/16 v2, 0x12

    #@3b
    if-le v1, v2, :cond_0

    #@3d
    .line 208
    invoke-virtual {p0, v4}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    #@40
    .line 211
    :cond_0
    const/16 v2, 0x16

    #@42
    if-le v1, v2, :cond_1

    #@44
    .line 212
    invoke-virtual {p0, v4}, Landroid/view/ScaleGestureDetector;->setStylusScaleEnabled(Z)V

    #@47
    .line 197
    :cond_1
    return-void

    #@48
    .line 166
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "targetSdkVersion":I
    :cond_2
    const/4 v2, 0x0

    #@49
    goto :goto_0
.end method

.method private inAnchoredScaleMode()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 388
    iget v1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method


# virtual methods
.method public getCurrentSpan()F
    .locals 1

    #@0
    .prologue
    .line 484
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    #@2
    return v0
.end method

.method public getCurrentSpanX()F
    .locals 1

    #@0
    .prologue
    .line 494
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    #@2
    return v0
.end method

.method public getCurrentSpanY()F
    .locals 1

    #@0
    .prologue
    .line 504
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    #@2
    return v0
.end method

.method public getEventTime()J
    .locals 2

    #@0
    .prologue
    .line 574
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    #@2
    return-wide v0
.end method

.method public getFocusX()F
    .locals 1

    #@0
    .prologue
    .line 460
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    #@2
    return v0
.end method

.method public getFocusY()F
    .locals 1

    #@0
    .prologue
    .line 474
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    #@2
    return v0
.end method

.method public getPreviousSpan()F
    .locals 1

    #@0
    .prologue
    .line 514
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    #@2
    return v0
.end method

.method public getPreviousSpanX()F
    .locals 1

    #@0
    .prologue
    .line 524
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    #@2
    return v0
.end method

.method public getPreviousSpanY()F
    .locals 1

    #@0
    .prologue
    .line 534
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    #@2
    return v0
.end method

.method public getScaleFactor()F
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/high16 v2, 0x3f800000    # 1.0f

    #@3
    .line 545
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_4

    #@9
    .line 550
    iget-boolean v3, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    #@b
    if-eqz v3, :cond_0

    #@d
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    #@f
    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    #@11
    cmpg-float v3, v3, v4

    #@13
    if-gez v3, :cond_0

    #@15
    const/4 v0, 0x1

    #@16
    .line 552
    .local v0, "scaleUp":Z
    :goto_0
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    #@18
    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    #@1a
    div-float/2addr v3, v4

    #@1b
    sub-float v3, v2, v3

    #@1d
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    #@20
    move-result v3

    #@21
    const/high16 v4, 0x3f000000    # 0.5f

    #@23
    mul-float v1, v3, v4

    #@25
    .line 553
    .local v1, "spanDiff":F
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    #@27
    cmpg-float v3, v3, v5

    #@29
    if-gtz v3, :cond_2

    #@2b
    :goto_1
    return v2

    #@2c
    .line 551
    .end local v0    # "scaleUp":Z
    .end local v1    # "spanDiff":F
    :cond_0
    iget-boolean v3, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    #@2e
    if-nez v3, :cond_1

    #@30
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    #@32
    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    #@34
    cmpl-float v3, v3, v4

    #@36
    if-lez v3, :cond_1

    #@38
    const/4 v0, 0x1

    #@39
    .restart local v0    # "scaleUp":Z
    goto :goto_0

    #@3a
    .end local v0    # "scaleUp":Z
    :cond_1
    const/4 v0, 0x0

    #@3b
    .restart local v0    # "scaleUp":Z
    goto :goto_0

    #@3c
    .line 553
    .restart local v1    # "spanDiff":F
    :cond_2
    if-eqz v0, :cond_3

    #@3e
    add-float/2addr v2, v1

    #@3f
    goto :goto_1

    #@40
    :cond_3
    sub-float/2addr v2, v1

    #@41
    goto :goto_1

    #@42
    .line 555
    .end local v0    # "scaleUp":Z
    .end local v1    # "spanDiff":F
    :cond_4
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    #@44
    cmpl-float v3, v3, v5

    #@46
    if-lez v3, :cond_5

    #@48
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    #@4a
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    #@4c
    div-float/2addr v2, v3

    #@4d
    :cond_5
    return v2
.end method

.method public getTimeDelta()J
    .locals 4

    #@0
    .prologue
    .line 565
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    #@2
    iget-wide v2, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    #@4
    sub-long/2addr v0, v2

    #@5
    return-wide v0
.end method

.method public isInProgress()Z
    .locals 1

    #@0
    .prologue
    .line 446
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    #@2
    return v0
.end method

.method public isQuickScaleEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 420
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    #@2
    return v0
.end method

.method public isStylusScaleEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 439
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    #@2
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 32
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 229
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@4
    move-object/from16 v28, v0

    #@6
    if-eqz v28, :cond_0

    #@8
    .line 230
    move-object/from16 v0, p0

    #@a
    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@c
    move-object/from16 v28, v0

    #@e
    const/16 v29, 0x0

    #@10
    move-object/from16 v0, v28

    #@12
    move-object/from16 v1, p1

    #@14
    move/from16 v2, v29

    #@16
    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    #@19
    .line 233
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@1c
    move-result-wide v28

    #@1d
    move-wide/from16 v0, v28

    #@1f
    move-object/from16 v2, p0

    #@21
    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    #@23
    .line 235
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@26
    move-result v4

    #@27
    .line 238
    .local v4, "action":I
    move-object/from16 v0, p0

    #@29
    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    #@2b
    move/from16 v28, v0

    #@2d
    if-eqz v28, :cond_1

    #@2f
    .line 239
    move-object/from16 v0, p0

    #@31
    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    #@33
    move-object/from16 v28, v0

    #@35
    move-object/from16 v0, v28

    #@37
    move-object/from16 v1, p1

    #@39
    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@3c
    .line 242
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@3f
    move-result v7

    #@40
    .line 244
    .local v7, "count":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    #@43
    move-result v28

    #@44
    and-int/lit8 v28, v28, 0x20

    #@46
    if-eqz v28, :cond_6

    #@48
    const/16 v16, 0x1

    #@4a
    .line 247
    .local v16, "isStylusButtonDown":Z
    :goto_0
    move-object/from16 v0, p0

    #@4c
    iget v0, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    #@4e
    move/from16 v28, v0

    #@50
    const/16 v29, 0x2

    #@52
    move/from16 v0, v28

    #@54
    move/from16 v1, v29

    #@56
    if-ne v0, v1, :cond_2

    #@58
    if-eqz v16, :cond_7

    #@5a
    :cond_2
    const/4 v5, 0x0

    #@5b
    .line 248
    .local v5, "anchoredScaleCancelled":Z
    :goto_1
    const/16 v28, 0x1

    #@5d
    move/from16 v0, v28

    #@5f
    if-eq v4, v0, :cond_3

    #@61
    .line 249
    const/16 v28, 0x3

    #@63
    move/from16 v0, v28

    #@65
    if-ne v4, v0, :cond_8

    #@67
    .line 248
    :cond_3
    const/16 v23, 0x1

    #@69
    .line 251
    :goto_2
    if-eqz v4, :cond_4

    #@6b
    if-eqz v23, :cond_a

    #@6d
    .line 255
    :cond_4
    move-object/from16 v0, p0

    #@6f
    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    #@71
    move/from16 v28, v0

    #@73
    if-eqz v28, :cond_9

    #@75
    .line 256
    move-object/from16 v0, p0

    #@77
    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    #@79
    move-object/from16 v28, v0

    #@7b
    move-object/from16 v0, v28

    #@7d
    move-object/from16 v1, p0

    #@7f
    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    #@82
    .line 257
    const/16 v28, 0x0

    #@84
    move/from16 v0, v28

    #@86
    move-object/from16 v1, p0

    #@88
    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    #@8a
    .line 258
    const/16 v28, 0x0

    #@8c
    move/from16 v0, v28

    #@8e
    move-object/from16 v1, p0

    #@90
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    #@92
    .line 259
    const/16 v28, 0x0

    #@94
    move/from16 v0, v28

    #@96
    move-object/from16 v1, p0

    #@98
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    #@9a
    .line 266
    :cond_5
    :goto_3
    if-eqz v23, :cond_a

    #@9c
    .line 267
    const/16 v28, 0x1

    #@9e
    return v28

    #@9f
    .line 244
    .end local v5    # "anchoredScaleCancelled":Z
    .end local v16    # "isStylusButtonDown":Z
    :cond_6
    const/16 v16, 0x0

    #@a1
    .restart local v16    # "isStylusButtonDown":Z
    goto :goto_0

    #@a2
    .line 247
    :cond_7
    const/4 v5, 0x1

    #@a3
    .restart local v5    # "anchoredScaleCancelled":Z
    goto :goto_1

    #@a4
    .line 249
    :cond_8
    move/from16 v23, v5

    #@a6
    .local v23, "streamComplete":Z
    goto :goto_2

    #@a7
    .line 260
    .end local v23    # "streamComplete":Z
    :cond_9
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    #@aa
    move-result v28

    #@ab
    if-eqz v28, :cond_5

    #@ad
    if-eqz v23, :cond_5

    #@af
    .line 261
    const/16 v28, 0x0

    #@b1
    move/from16 v0, v28

    #@b3
    move-object/from16 v1, p0

    #@b5
    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    #@b7
    .line 262
    const/16 v28, 0x0

    #@b9
    move/from16 v0, v28

    #@bb
    move-object/from16 v1, p0

    #@bd
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    #@bf
    .line 263
    const/16 v28, 0x0

    #@c1
    move/from16 v0, v28

    #@c3
    move-object/from16 v1, p0

    #@c5
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    #@c7
    goto :goto_3

    #@c8
    .line 271
    :cond_a
    move-object/from16 v0, p0

    #@ca
    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    #@cc
    move/from16 v28, v0

    #@ce
    if-nez v28, :cond_b

    #@d0
    move-object/from16 v0, p0

    #@d2
    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    #@d4
    move/from16 v28, v0

    #@d6
    if-eqz v28, :cond_b

    #@d8
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    #@db
    move-result v28

    #@dc
    if-eqz v28, :cond_d

    #@de
    .line 280
    :cond_b
    :goto_4
    if-eqz v4, :cond_c

    #@e0
    .line 281
    const/16 v28, 0x6

    #@e2
    move/from16 v0, v28

    #@e4
    if-ne v4, v0, :cond_e

    #@e6
    .line 280
    :cond_c
    const/4 v6, 0x1

    #@e7
    .line 284
    :goto_5
    const/16 v28, 0x6

    #@e9
    move/from16 v0, v28

    #@eb
    if-ne v4, v0, :cond_f

    #@ed
    const/16 v18, 0x1

    #@ef
    .line 285
    .local v18, "pointerUp":Z
    :goto_6
    if-eqz v18, :cond_10

    #@f1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@f4
    move-result v19

    #@f5
    .line 288
    .local v19, "skipIndex":I
    :goto_7
    const/16 v24, 0x0

    #@f7
    .local v24, "sumX":F
    const/16 v25, 0x0

    #@f9
    .line 289
    .local v25, "sumY":F
    if-eqz v18, :cond_11

    #@fb
    add-int/lit8 v12, v7, -0x1

    #@fd
    .line 292
    .local v12, "div":I
    :goto_8
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    #@100
    move-result v28

    #@101
    if-eqz v28, :cond_13

    #@103
    .line 295
    move-object/from16 v0, p0

    #@105
    iget v13, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    #@107
    .line 296
    .local v13, "focusX":F
    move-object/from16 v0, p0

    #@109
    iget v14, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    #@10b
    .line 297
    .local v14, "focusY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@10e
    move-result v28

    #@10f
    cmpg-float v28, v28, v14

    #@111
    if-gez v28, :cond_12

    #@113
    .line 298
    const/16 v28, 0x1

    #@115
    move/from16 v0, v28

    #@117
    move-object/from16 v1, p0

    #@119
    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    #@11b
    .line 314
    :goto_9
    const/4 v8, 0x0

    #@11c
    .local v8, "devSumX":F
    const/4 v9, 0x0

    #@11d
    .line 315
    .local v9, "devSumY":F
    const/4 v15, 0x0

    #@11e
    .local v15, "i":I
    :goto_a
    if-ge v15, v7, :cond_17

    #@120
    .line 316
    move/from16 v0, v19

    #@122
    if-ne v0, v15, :cond_16

    #@124
    .line 315
    :goto_b
    add-int/lit8 v15, v15, 0x1

    #@126
    goto :goto_a

    #@127
    .line 272
    .end local v8    # "devSumX":F
    .end local v9    # "devSumY":F
    .end local v12    # "div":I
    .end local v13    # "focusX":F
    .end local v14    # "focusY":F
    .end local v15    # "i":I
    .end local v18    # "pointerUp":Z
    .end local v19    # "skipIndex":I
    .end local v24    # "sumX":F
    .end local v25    # "sumY":F
    :cond_d
    if-nez v23, :cond_b

    #@129
    .line 271
    if-eqz v16, :cond_b

    #@12b
    .line 274
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@12e
    move-result v28

    #@12f
    move/from16 v0, v28

    #@131
    move-object/from16 v1, p0

    #@133
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    #@135
    .line 275
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@138
    move-result v28

    #@139
    move/from16 v0, v28

    #@13b
    move-object/from16 v1, p0

    #@13d
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    #@13f
    .line 276
    const/16 v28, 0x2

    #@141
    move/from16 v0, v28

    #@143
    move-object/from16 v1, p0

    #@145
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    #@147
    .line 277
    const/16 v28, 0x0

    #@149
    move/from16 v0, v28

    #@14b
    move-object/from16 v1, p0

    #@14d
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    #@14f
    goto :goto_4

    #@150
    .line 282
    :cond_e
    const/16 v28, 0x5

    #@152
    move/from16 v0, v28

    #@154
    if-eq v4, v0, :cond_c

    #@156
    move v6, v5

    #@157
    .local v6, "configChanged":Z
    goto :goto_5

    #@158
    .line 284
    .end local v6    # "configChanged":Z
    :cond_f
    const/16 v18, 0x0

    #@15a
    goto :goto_6

    #@15b
    .line 285
    .restart local v18    # "pointerUp":Z
    :cond_10
    const/16 v19, -0x1

    #@15d
    .restart local v19    # "skipIndex":I
    goto :goto_7

    #@15e
    .line 289
    .restart local v24    # "sumX":F
    .restart local v25    # "sumY":F
    :cond_11
    move v12, v7

    #@15f
    .restart local v12    # "div":I
    goto :goto_8

    #@160
    .line 300
    .restart local v13    # "focusX":F
    .restart local v14    # "focusY":F
    :cond_12
    const/16 v28, 0x0

    #@162
    move/from16 v0, v28

    #@164
    move-object/from16 v1, p0

    #@166
    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    #@168
    goto :goto_9

    #@169
    .line 303
    .end local v13    # "focusX":F
    .end local v14    # "focusY":F
    :cond_13
    const/4 v15, 0x0

    #@16a
    .restart local v15    # "i":I
    :goto_c
    if-ge v15, v7, :cond_15

    #@16c
    .line 304
    move/from16 v0, v19

    #@16e
    if-ne v0, v15, :cond_14

    #@170
    .line 303
    :goto_d
    add-int/lit8 v15, v15, 0x1

    #@172
    goto :goto_c

    #@173
    .line 305
    :cond_14
    move-object/from16 v0, p1

    #@175
    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    #@178
    move-result v28

    #@179
    add-float v24, v24, v28

    #@17b
    .line 306
    move-object/from16 v0, p1

    #@17d
    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    #@180
    move-result v28

    #@181
    add-float v25, v25, v28

    #@183
    goto :goto_d

    #@184
    .line 309
    :cond_15
    int-to-float v0, v12

    #@185
    move/from16 v28, v0

    #@187
    div-float v13, v24, v28

    #@189
    .line 310
    .restart local v13    # "focusX":F
    int-to-float v0, v12

    #@18a
    move/from16 v28, v0

    #@18c
    div-float v14, v25, v28

    #@18e
    .restart local v14    # "focusY":F
    goto :goto_9

    #@18f
    .line 319
    .restart local v8    # "devSumX":F
    .restart local v9    # "devSumY":F
    :cond_16
    move-object/from16 v0, p1

    #@191
    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    #@194
    move-result v28

    #@195
    sub-float v28, v28, v13

    #@197
    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    #@19a
    move-result v28

    #@19b
    add-float v8, v8, v28

    #@19d
    .line 320
    move-object/from16 v0, p1

    #@19f
    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    #@1a2
    move-result v28

    #@1a3
    sub-float v28, v28, v14

    #@1a5
    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    #@1a8
    move-result v28

    #@1a9
    add-float v9, v9, v28

    #@1ab
    goto/16 :goto_b

    #@1ad
    .line 322
    :cond_17
    int-to-float v0, v12

    #@1ae
    move/from16 v28, v0

    #@1b0
    div-float v10, v8, v28

    #@1b2
    .line 323
    .local v10, "devX":F
    int-to-float v0, v12

    #@1b3
    move/from16 v28, v0

    #@1b5
    div-float v11, v9, v28

    #@1b7
    .line 328
    .local v11, "devY":F
    const/high16 v28, 0x40000000    # 2.0f

    #@1b9
    mul-float v21, v10, v28

    #@1bb
    .line 329
    .local v21, "spanX":F
    const/high16 v28, 0x40000000    # 2.0f

    #@1bd
    mul-float v22, v11, v28

    #@1bf
    .line 331
    .local v22, "spanY":F
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    #@1c2
    move-result v28

    #@1c3
    if-eqz v28, :cond_1f

    #@1c5
    .line 332
    move/from16 v20, v22

    #@1c7
    .line 340
    .local v20, "span":F
    :goto_e
    move-object/from16 v0, p0

    #@1c9
    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    #@1cb
    move/from16 v27, v0

    #@1cd
    .line 341
    .local v27, "wasInProgress":Z
    move-object/from16 v0, p0

    #@1cf
    iput v13, v0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    #@1d1
    .line 342
    move-object/from16 v0, p0

    #@1d3
    iput v14, v0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    #@1d5
    .line 343
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    #@1d8
    move-result v28

    #@1d9
    if-nez v28, :cond_19

    #@1db
    move-object/from16 v0, p0

    #@1dd
    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    #@1df
    move/from16 v28, v0

    #@1e1
    if-eqz v28, :cond_19

    #@1e3
    move-object/from16 v0, p0

    #@1e5
    iget v0, v0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    #@1e7
    move/from16 v28, v0

    #@1e9
    move/from16 v0, v28

    #@1eb
    int-to-float v0, v0

    #@1ec
    move/from16 v28, v0

    #@1ee
    cmpg-float v28, v20, v28

    #@1f0
    if-ltz v28, :cond_18

    #@1f2
    if-eqz v6, :cond_19

    #@1f4
    .line 344
    :cond_18
    move-object/from16 v0, p0

    #@1f6
    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    #@1f8
    move-object/from16 v28, v0

    #@1fa
    move-object/from16 v0, v28

    #@1fc
    move-object/from16 v1, p0

    #@1fe
    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    #@201
    .line 345
    const/16 v28, 0x0

    #@203
    move/from16 v0, v28

    #@205
    move-object/from16 v1, p0

    #@207
    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    #@209
    .line 346
    move/from16 v0, v20

    #@20b
    move-object/from16 v1, p0

    #@20d
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    #@20f
    .line 348
    :cond_19
    if-eqz v6, :cond_1a

    #@211
    .line 349
    move/from16 v0, v21

    #@213
    move-object/from16 v1, p0

    #@215
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    #@217
    move/from16 v0, v21

    #@219
    move-object/from16 v1, p0

    #@21b
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    #@21d
    .line 350
    move/from16 v0, v22

    #@21f
    move-object/from16 v1, p0

    #@221
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    #@223
    move/from16 v0, v22

    #@225
    move-object/from16 v1, p0

    #@227
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    #@229
    .line 351
    move/from16 v0, v20

    #@22b
    move-object/from16 v1, p0

    #@22d
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    #@22f
    move/from16 v0, v20

    #@231
    move-object/from16 v1, p0

    #@233
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    #@235
    move/from16 v0, v20

    #@237
    move-object/from16 v1, p0

    #@239
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    #@23b
    .line 354
    :cond_1a
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    #@23e
    move-result v28

    #@23f
    if-eqz v28, :cond_20

    #@241
    move-object/from16 v0, p0

    #@243
    iget v0, v0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    #@245
    move/from16 v17, v0

    #@247
    .line 355
    .local v17, "minSpan":I
    :goto_f
    move-object/from16 v0, p0

    #@249
    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    #@24b
    move/from16 v28, v0

    #@24d
    if-nez v28, :cond_1c

    #@24f
    move/from16 v0, v17

    #@251
    int-to-float v0, v0

    #@252
    move/from16 v28, v0

    #@254
    cmpl-float v28, v20, v28

    #@256
    if-ltz v28, :cond_1c

    #@258
    .line 356
    if-nez v27, :cond_1b

    #@25a
    move-object/from16 v0, p0

    #@25c
    iget v0, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    #@25e
    move/from16 v28, v0

    #@260
    sub-float v28, v20, v28

    #@262
    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    #@265
    move-result v28

    #@266
    move-object/from16 v0, p0

    #@268
    iget v0, v0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    #@26a
    move/from16 v29, v0

    #@26c
    move/from16 v0, v29

    #@26e
    int-to-float v0, v0

    #@26f
    move/from16 v29, v0

    #@271
    cmpl-float v28, v28, v29

    #@273
    if-lez v28, :cond_1c

    #@275
    .line 357
    :cond_1b
    move/from16 v0, v21

    #@277
    move-object/from16 v1, p0

    #@279
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    #@27b
    move/from16 v0, v21

    #@27d
    move-object/from16 v1, p0

    #@27f
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    #@281
    .line 358
    move/from16 v0, v22

    #@283
    move-object/from16 v1, p0

    #@285
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    #@287
    move/from16 v0, v22

    #@289
    move-object/from16 v1, p0

    #@28b
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    #@28d
    .line 359
    move/from16 v0, v20

    #@28f
    move-object/from16 v1, p0

    #@291
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    #@293
    move/from16 v0, v20

    #@295
    move-object/from16 v1, p0

    #@297
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    #@299
    .line 360
    move-object/from16 v0, p0

    #@29b
    iget-wide v0, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    #@29d
    move-wide/from16 v28, v0

    #@29f
    move-wide/from16 v0, v28

    #@2a1
    move-object/from16 v2, p0

    #@2a3
    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    #@2a5
    .line 361
    move-object/from16 v0, p0

    #@2a7
    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    #@2a9
    move-object/from16 v28, v0

    #@2ab
    move-object/from16 v0, v28

    #@2ad
    move-object/from16 v1, p0

    #@2af
    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    #@2b2
    move-result v28

    #@2b3
    move/from16 v0, v28

    #@2b5
    move-object/from16 v1, p0

    #@2b7
    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    #@2b9
    .line 365
    :cond_1c
    const/16 v28, 0x2

    #@2bb
    move/from16 v0, v28

    #@2bd
    if-ne v4, v0, :cond_1e

    #@2bf
    .line 366
    move/from16 v0, v21

    #@2c1
    move-object/from16 v1, p0

    #@2c3
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    #@2c5
    .line 367
    move/from16 v0, v22

    #@2c7
    move-object/from16 v1, p0

    #@2c9
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    #@2cb
    .line 368
    move/from16 v0, v20

    #@2cd
    move-object/from16 v1, p0

    #@2cf
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    #@2d1
    .line 370
    const/16 v26, 0x1

    #@2d3
    .line 372
    .local v26, "updatePrev":Z
    move-object/from16 v0, p0

    #@2d5
    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    #@2d7
    move/from16 v28, v0

    #@2d9
    if-eqz v28, :cond_1d

    #@2db
    .line 373
    move-object/from16 v0, p0

    #@2dd
    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    #@2df
    move-object/from16 v28, v0

    #@2e1
    move-object/from16 v0, v28

    #@2e3
    move-object/from16 v1, p0

    #@2e5
    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    #@2e8
    move-result v26

    #@2e9
    .line 376
    .end local v26    # "updatePrev":Z
    :cond_1d
    if-eqz v26, :cond_1e

    #@2eb
    .line 377
    move-object/from16 v0, p0

    #@2ed
    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    #@2ef
    move/from16 v28, v0

    #@2f1
    move/from16 v0, v28

    #@2f3
    move-object/from16 v1, p0

    #@2f5
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    #@2f7
    .line 378
    move-object/from16 v0, p0

    #@2f9
    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    #@2fb
    move/from16 v28, v0

    #@2fd
    move/from16 v0, v28

    #@2ff
    move-object/from16 v1, p0

    #@301
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    #@303
    .line 379
    move-object/from16 v0, p0

    #@305
    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    #@307
    move/from16 v28, v0

    #@309
    move/from16 v0, v28

    #@30b
    move-object/from16 v1, p0

    #@30d
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    #@30f
    .line 380
    move-object/from16 v0, p0

    #@311
    iget-wide v0, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    #@313
    move-wide/from16 v28, v0

    #@315
    move-wide/from16 v0, v28

    #@317
    move-object/from16 v2, p0

    #@319
    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    #@31b
    .line 384
    :cond_1e
    const/16 v28, 0x1

    #@31d
    return v28

    #@31e
    .line 334
    .end local v17    # "minSpan":I
    .end local v20    # "span":F
    .end local v27    # "wasInProgress":Z
    :cond_1f
    move/from16 v0, v21

    #@320
    float-to-double v0, v0

    #@321
    move-wide/from16 v28, v0

    #@323
    move/from16 v0, v22

    #@325
    float-to-double v0, v0

    #@326
    move-wide/from16 v30, v0

    #@328
    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->hypot(DD)D

    #@32b
    move-result-wide v28

    #@32c
    move-wide/from16 v0, v28

    #@32e
    double-to-float v0, v0

    #@32f
    move/from16 v20, v0

    #@331
    .restart local v20    # "span":F
    goto/16 :goto_e

    #@333
    .line 354
    .restart local v27    # "wasInProgress":Z
    :cond_20
    move-object/from16 v0, p0

    #@335
    iget v0, v0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    #@337
    move/from16 v17, v0

    #@339
    .restart local v17    # "minSpan":I
    goto/16 :goto_f
.end method

.method public setQuickScaleEnabled(Z)V
    .locals 4
    .param p1, "scales"    # Z

    #@0
    .prologue
    .line 398
    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    #@2
    .line 399
    iget-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 401
    new-instance v0, Landroid/view/ScaleGestureDetector$1;

    #@c
    invoke-direct {v0, p0}, Landroid/view/ScaleGestureDetector$1;-><init>(Landroid/view/ScaleGestureDetector;)V

    #@f
    .line 411
    .local v0, "gestureListener":Landroid/view/GestureDetector$SimpleOnGestureListener;
    new-instance v1, Landroid/view/GestureDetector;

    #@11
    iget-object v2, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    #@13
    iget-object v3, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    #@15
    invoke-direct {v1, v2, v0, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    #@18
    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    #@1a
    .line 397
    .end local v0    # "gestureListener":Landroid/view/GestureDetector$SimpleOnGestureListener;
    :cond_0
    return-void
.end method

.method public setStylusScaleEnabled(Z)V
    .locals 0
    .param p1, "scales"    # Z

    #@0
    .prologue
    .line 431
    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    #@2
    .line 430
    return-void
.end method
