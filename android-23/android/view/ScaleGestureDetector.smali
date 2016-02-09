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

.field private mTouchHistoryDirection:I

.field private mTouchHistoryLastAccepted:F

.field private mTouchHistoryLastAcceptedTime:J

.field private mTouchLower:F

.field private mTouchMinMajor:I

.field private mTouchUpper:F


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
    .line 189
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    #@4
    .line 188
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
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 159
    iput v3, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    #@7
    .line 172
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_2

    #@d
    .line 173
    new-instance v2, Landroid/view/InputEventConsistencyVerifier;

    #@f
    invoke-direct {v2, p0, v3}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    #@12
    .line 171
    :goto_0
    iput-object v2, p0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@14
    .line 205
    iput-object p1, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    #@16
    .line 206
    iput-object p2, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    #@18
    .line 207
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
    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@27
    move-result-object v0

    #@28
    .line 211
    .local v0, "res":Landroid/content/res/Resources;
    const v2, 0x1050013

    #@2b
    .line 210
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@2e
    move-result v2

    #@2f
    iput v2, p0, Landroid/view/ScaleGestureDetector;->mTouchMinMajor:I

    #@31
    .line 212
    const v2, 0x1050012

    #@34
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@37
    move-result v2

    #@38
    iput v2, p0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    #@3a
    .line 213
    iput-object p3, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    #@3c
    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@3f
    move-result-object v2

    #@40
    iget v1, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@42
    .line 216
    .local v1, "targetSdkVersion":I
    const/16 v2, 0x12

    #@44
    if-le v1, v2, :cond_0

    #@46
    .line 217
    invoke-virtual {p0, v4}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    #@49
    .line 220
    :cond_0
    const/16 v2, 0x16

    #@4b
    if-le v1, v2, :cond_1

    #@4d
    .line 221
    invoke-virtual {p0, v4}, Landroid/view/ScaleGestureDetector;->setStylusScaleEnabled(Z)V

    #@50
    .line 204
    :cond_1
    return-void

    #@51
    .line 173
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "targetSdkVersion":I
    :cond_2
    const/4 v2, 0x0

    #@52
    goto :goto_0
.end method

.method private addTouchHistory(Landroid/view/MotionEvent;)V
    .locals 26
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 231
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v8

    #@4
    .line 232
    .local v8, "currentTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@7
    move-result v6

    #@8
    .line 233
    .local v6, "count":I
    move-object/from16 v0, p0

    #@a
    iget-wide v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAcceptedTime:J

    #@c
    move-wide/from16 v22, v0

    #@e
    sub-long v22, v8, v22

    #@10
    const-wide/16 v24, 0x80

    #@12
    cmp-long v21, v22, v24

    #@14
    if-ltz v21, :cond_7

    #@16
    const/4 v4, 0x1

    #@17
    .line 234
    .local v4, "accept":Z
    :goto_0
    const/16 v20, 0x0

    #@19
    .line 235
    .local v20, "total":F
    const/16 v17, 0x0

    #@1b
    .line 236
    .local v17, "sampleCount":I
    const/4 v13, 0x0

    #@1c
    .local v13, "i":I
    :goto_1
    if-ge v13, v6, :cond_c

    #@1e
    .line 237
    move-object/from16 v0, p0

    #@20
    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    #@22
    move/from16 v21, v0

    #@24
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->isNaN(F)Z

    #@27
    move-result v21

    #@28
    if-eqz v21, :cond_8

    #@2a
    const/4 v11, 0x0

    #@2b
    .line 238
    .local v11, "hasLastAccepted":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    #@2e
    move-result v12

    #@2f
    .line 239
    .local v12, "historySize":I
    add-int/lit8 v16, v12, 0x1

    #@31
    .line 240
    .local v16, "pointerSampleCount":I
    const/4 v10, 0x0

    #@32
    .local v10, "h":I
    :goto_3
    move/from16 v0, v16

    #@34
    if-ge v10, v0, :cond_b

    #@36
    .line 242
    if-ge v10, v12, :cond_9

    #@38
    .line 243
    move-object/from16 v0, p1

    #@3a
    invoke-virtual {v0, v13, v10}, Landroid/view/MotionEvent;->getHistoricalTouchMajor(II)F

    #@3d
    move-result v14

    #@3e
    .line 247
    .local v14, "major":F
    :goto_4
    move-object/from16 v0, p0

    #@40
    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchMinMajor:I

    #@42
    move/from16 v21, v0

    #@44
    move/from16 v0, v21

    #@46
    int-to-float v0, v0

    #@47
    move/from16 v21, v0

    #@49
    cmpg-float v21, v14, v21

    #@4b
    if-gez v21, :cond_0

    #@4d
    move-object/from16 v0, p0

    #@4f
    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchMinMajor:I

    #@51
    move/from16 v21, v0

    #@53
    move/from16 v0, v21

    #@55
    int-to-float v14, v0

    #@56
    .line 248
    :cond_0
    add-float v20, v20, v14

    #@58
    .line 250
    move-object/from16 v0, p0

    #@5a
    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    #@5c
    move/from16 v21, v0

    #@5e
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->isNaN(F)Z

    #@61
    move-result v21

    #@62
    if-nez v21, :cond_1

    #@64
    move-object/from16 v0, p0

    #@66
    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    #@68
    move/from16 v21, v0

    #@6a
    cmpl-float v21, v14, v21

    #@6c
    if-lez v21, :cond_2

    #@6e
    .line 251
    :cond_1
    move-object/from16 v0, p0

    #@70
    iput v14, v0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    #@72
    .line 253
    :cond_2
    move-object/from16 v0, p0

    #@74
    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    #@76
    move/from16 v21, v0

    #@78
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->isNaN(F)Z

    #@7b
    move-result v21

    #@7c
    if-nez v21, :cond_3

    #@7e
    move-object/from16 v0, p0

    #@80
    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    #@82
    move/from16 v21, v0

    #@84
    cmpg-float v21, v14, v21

    #@86
    if-gez v21, :cond_4

    #@88
    .line 254
    :cond_3
    move-object/from16 v0, p0

    #@8a
    iput v14, v0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    #@8c
    .line 257
    :cond_4
    if-eqz v11, :cond_6

    #@8e
    .line 258
    move-object/from16 v0, p0

    #@90
    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    #@92
    move/from16 v21, v0

    #@94
    sub-float v21, v14, v21

    #@96
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->signum(F)F

    #@99
    move-result v21

    #@9a
    move/from16 v0, v21

    #@9c
    float-to-int v7, v0

    #@9d
    .line 259
    .local v7, "directionSig":I
    move-object/from16 v0, p0

    #@9f
    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    #@a1
    move/from16 v21, v0

    #@a3
    move/from16 v0, v21

    #@a5
    if-ne v7, v0, :cond_5

    #@a7
    .line 260
    if-nez v7, :cond_6

    #@a9
    move-object/from16 v0, p0

    #@ab
    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    #@ad
    move/from16 v21, v0

    #@af
    if-nez v21, :cond_6

    #@b1
    .line 261
    :cond_5
    move-object/from16 v0, p0

    #@b3
    iput v7, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    #@b5
    .line 262
    if-ge v10, v12, :cond_a

    #@b7
    move-object/from16 v0, p1

    #@b9
    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    #@bc
    move-result-wide v18

    #@bd
    .line 264
    .local v18, "time":J
    :goto_5
    move-wide/from16 v0, v18

    #@bf
    move-object/from16 v2, p0

    #@c1
    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAcceptedTime:J

    #@c3
    .line 265
    const/4 v4, 0x0

    #@c4
    .line 240
    .end local v7    # "directionSig":I
    .end local v18    # "time":J
    :cond_6
    add-int/lit8 v10, v10, 0x1

    #@c6
    goto/16 :goto_3

    #@c8
    .line 233
    .end local v4    # "accept":Z
    .end local v10    # "h":I
    .end local v11    # "hasLastAccepted":Z
    .end local v12    # "historySize":I
    .end local v13    # "i":I
    .end local v14    # "major":F
    .end local v16    # "pointerSampleCount":I
    .end local v17    # "sampleCount":I
    .end local v20    # "total":F
    :cond_7
    const/4 v4, 0x0

    #@c9
    .restart local v4    # "accept":Z
    goto/16 :goto_0

    #@cb
    .line 237
    .restart local v13    # "i":I
    .restart local v17    # "sampleCount":I
    .restart local v20    # "total":F
    :cond_8
    const/4 v11, 0x1

    #@cc
    .restart local v11    # "hasLastAccepted":Z
    goto/16 :goto_2

    #@ce
    .line 245
    .restart local v10    # "h":I
    .restart local v12    # "historySize":I
    .restart local v16    # "pointerSampleCount":I
    :cond_9
    move-object/from16 v0, p1

    #@d0
    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    #@d3
    move-result v14

    #@d4
    .restart local v14    # "major":F
    goto/16 :goto_4

    #@d6
    .line 263
    .restart local v7    # "directionSig":I
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@d9
    move-result-wide v18

    #@da
    .restart local v18    # "time":J
    goto :goto_5

    #@db
    .line 269
    .end local v7    # "directionSig":I
    .end local v14    # "major":F
    .end local v18    # "time":J
    :cond_b
    add-int v17, v17, v16

    #@dd
    .line 236
    add-int/lit8 v13, v13, 0x1

    #@df
    goto/16 :goto_1

    #@e1
    .line 272
    .end local v10    # "h":I
    .end local v11    # "hasLastAccepted":Z
    .end local v12    # "historySize":I
    .end local v16    # "pointerSampleCount":I
    :cond_c
    move/from16 v0, v17

    #@e3
    int-to-float v0, v0

    #@e4
    move/from16 v21, v0

    #@e6
    div-float v5, v20, v21

    #@e8
    .line 274
    .local v5, "avg":F
    if-eqz v4, :cond_d

    #@ea
    .line 275
    move-object/from16 v0, p0

    #@ec
    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    #@ee
    move/from16 v21, v0

    #@f0
    move-object/from16 v0, p0

    #@f2
    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    #@f4
    move/from16 v22, v0

    #@f6
    add-float v21, v21, v22

    #@f8
    add-float v21, v21, v5

    #@fa
    const/high16 v22, 0x40400000    # 3.0f

    #@fc
    div-float v15, v21, v22

    #@fe
    .line 276
    .local v15, "newAccepted":F
    move-object/from16 v0, p0

    #@100
    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    #@102
    move/from16 v21, v0

    #@104
    add-float v21, v21, v15

    #@106
    const/high16 v22, 0x40000000    # 2.0f

    #@108
    div-float v21, v21, v22

    #@10a
    move/from16 v0, v21

    #@10c
    move-object/from16 v1, p0

    #@10e
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    #@110
    .line 277
    move-object/from16 v0, p0

    #@112
    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    #@114
    move/from16 v21, v0

    #@116
    add-float v21, v21, v15

    #@118
    const/high16 v22, 0x40000000    # 2.0f

    #@11a
    div-float v21, v21, v22

    #@11c
    move/from16 v0, v21

    #@11e
    move-object/from16 v1, p0

    #@120
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    #@122
    .line 278
    move-object/from16 v0, p0

    #@124
    iput v15, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    #@126
    .line 279
    const/16 v21, 0x0

    #@128
    move/from16 v0, v21

    #@12a
    move-object/from16 v1, p0

    #@12c
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    #@12e
    .line 280
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@131
    move-result-wide v22

    #@132
    move-wide/from16 v0, v22

    #@134
    move-object/from16 v2, p0

    #@136
    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAcceptedTime:J

    #@138
    .line 230
    .end local v15    # "newAccepted":F
    :cond_d
    return-void
.end method

.method private clearTouchHistory()V
    .locals 2

    #@0
    .prologue
    const/high16 v0, 0x7fc00000    # NaNf

    #@2
    .line 289
    iput v0, p0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    #@4
    .line 290
    iput v0, p0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    #@6
    .line 291
    iput v0, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    #@8
    .line 292
    const/4 v0, 0x0

    #@9
    iput v0, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    #@b
    .line 293
    const-wide/16 v0, 0x0

    #@d
    iput-wide v0, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAcceptedTime:J

    #@f
    .line 288
    return-void
.end method

.method private inAnchoredScaleMode()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 472
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
    .line 568
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    #@2
    return v0
.end method

.method public getCurrentSpanX()F
    .locals 1

    #@0
    .prologue
    .line 578
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    #@2
    return v0
.end method

.method public getCurrentSpanY()F
    .locals 1

    #@0
    .prologue
    .line 588
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    #@2
    return v0
.end method

.method public getEventTime()J
    .locals 2

    #@0
    .prologue
    .line 658
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    #@2
    return-wide v0
.end method

.method public getFocusX()F
    .locals 1

    #@0
    .prologue
    .line 544
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    #@2
    return v0
.end method

.method public getFocusY()F
    .locals 1

    #@0
    .prologue
    .line 558
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    #@2
    return v0
.end method

.method public getPreviousSpan()F
    .locals 1

    #@0
    .prologue
    .line 598
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    #@2
    return v0
.end method

.method public getPreviousSpanX()F
    .locals 1

    #@0
    .prologue
    .line 608
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    #@2
    return v0
.end method

.method public getPreviousSpanY()F
    .locals 1

    #@0
    .prologue
    .line 618
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
    .line 629
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_4

    #@9
    .line 634
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
    .line 636
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
    .line 637
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
    .line 635
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
    .line 637
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
    .line 639
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
    .line 649
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
    .line 530
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    #@2
    return v0
.end method

.method public isQuickScaleEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 504
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    #@2
    return v0
.end method

.method public isStylusScaleEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 523
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    #@2
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 34
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 309
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@4
    move-object/from16 v29, v0

    #@6
    if-eqz v29, :cond_0

    #@8
    .line 310
    move-object/from16 v0, p0

    #@a
    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@c
    move-object/from16 v29, v0

    #@e
    const/16 v30, 0x0

    #@10
    move-object/from16 v0, v29

    #@12
    move-object/from16 v1, p1

    #@14
    move/from16 v2, v30

    #@16
    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    #@19
    .line 313
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@1c
    move-result-wide v30

    #@1d
    move-wide/from16 v0, v30

    #@1f
    move-object/from16 v2, p0

    #@21
    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    #@23
    .line 315
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@26
    move-result v4

    #@27
    .line 318
    .local v4, "action":I
    move-object/from16 v0, p0

    #@29
    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    #@2b
    move/from16 v29, v0

    #@2d
    if-eqz v29, :cond_1

    #@2f
    .line 319
    move-object/from16 v0, p0

    #@31
    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    #@33
    move-object/from16 v29, v0

    #@35
    move-object/from16 v0, v29

    #@37
    move-object/from16 v1, p1

    #@39
    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@3c
    .line 322
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@3f
    move-result v7

    #@40
    .line 324
    .local v7, "count":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    #@43
    move-result v29

    #@44
    and-int/lit8 v29, v29, 0x20

    #@46
    if-eqz v29, :cond_6

    #@48
    const/16 v16, 0x1

    #@4a
    .line 327
    .local v16, "isStylusButtonDown":Z
    :goto_0
    move-object/from16 v0, p0

    #@4c
    iget v0, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    #@4e
    move/from16 v29, v0

    #@50
    const/16 v30, 0x2

    #@52
    move/from16 v0, v29

    #@54
    move/from16 v1, v30

    #@56
    if-ne v0, v1, :cond_2

    #@58
    if-eqz v16, :cond_7

    #@5a
    :cond_2
    const/4 v5, 0x0

    #@5b
    .line 328
    .local v5, "anchoredScaleCancelled":Z
    :goto_1
    const/16 v29, 0x1

    #@5d
    move/from16 v0, v29

    #@5f
    if-eq v4, v0, :cond_3

    #@61
    .line 329
    const/16 v29, 0x3

    #@63
    move/from16 v0, v29

    #@65
    if-ne v4, v0, :cond_8

    #@67
    .line 328
    :cond_3
    const/16 v23, 0x1

    #@69
    .line 331
    :goto_2
    if-eqz v4, :cond_4

    #@6b
    if-eqz v23, :cond_a

    #@6d
    .line 335
    :cond_4
    move-object/from16 v0, p0

    #@6f
    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    #@71
    move/from16 v29, v0

    #@73
    if-eqz v29, :cond_9

    #@75
    .line 336
    move-object/from16 v0, p0

    #@77
    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    #@79
    move-object/from16 v29, v0

    #@7b
    move-object/from16 v0, v29

    #@7d
    move-object/from16 v1, p0

    #@7f
    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    #@82
    .line 337
    const/16 v29, 0x0

    #@84
    move/from16 v0, v29

    #@86
    move-object/from16 v1, p0

    #@88
    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    #@8a
    .line 338
    const/16 v29, 0x0

    #@8c
    move/from16 v0, v29

    #@8e
    move-object/from16 v1, p0

    #@90
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    #@92
    .line 339
    const/16 v29, 0x0

    #@94
    move/from16 v0, v29

    #@96
    move-object/from16 v1, p0

    #@98
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    #@9a
    .line 346
    :cond_5
    :goto_3
    if-eqz v23, :cond_a

    #@9c
    .line 347
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->clearTouchHistory()V

    #@9f
    .line 348
    const/16 v29, 0x1

    #@a1
    return v29

    #@a2
    .line 324
    .end local v5    # "anchoredScaleCancelled":Z
    .end local v16    # "isStylusButtonDown":Z
    :cond_6
    const/16 v16, 0x0

    #@a4
    .restart local v16    # "isStylusButtonDown":Z
    goto :goto_0

    #@a5
    .line 327
    :cond_7
    const/4 v5, 0x1

    #@a6
    .restart local v5    # "anchoredScaleCancelled":Z
    goto :goto_1

    #@a7
    .line 329
    :cond_8
    move/from16 v23, v5

    #@a9
    .local v23, "streamComplete":Z
    goto :goto_2

    #@aa
    .line 340
    .end local v23    # "streamComplete":Z
    :cond_9
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    #@ad
    move-result v29

    #@ae
    if-eqz v29, :cond_5

    #@b0
    if-eqz v23, :cond_5

    #@b2
    .line 341
    const/16 v29, 0x0

    #@b4
    move/from16 v0, v29

    #@b6
    move-object/from16 v1, p0

    #@b8
    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    #@ba
    .line 342
    const/16 v29, 0x0

    #@bc
    move/from16 v0, v29

    #@be
    move-object/from16 v1, p0

    #@c0
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    #@c2
    .line 343
    const/16 v29, 0x0

    #@c4
    move/from16 v0, v29

    #@c6
    move-object/from16 v1, p0

    #@c8
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    #@ca
    goto :goto_3

    #@cb
    .line 352
    :cond_a
    move-object/from16 v0, p0

    #@cd
    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    #@cf
    move/from16 v29, v0

    #@d1
    if-nez v29, :cond_b

    #@d3
    move-object/from16 v0, p0

    #@d5
    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    #@d7
    move/from16 v29, v0

    #@d9
    if-eqz v29, :cond_b

    #@db
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    #@de
    move-result v29

    #@df
    if-eqz v29, :cond_d

    #@e1
    .line 361
    :cond_b
    :goto_4
    if-eqz v4, :cond_c

    #@e3
    .line 362
    const/16 v29, 0x6

    #@e5
    move/from16 v0, v29

    #@e7
    if-ne v4, v0, :cond_e

    #@e9
    .line 361
    :cond_c
    const/4 v6, 0x1

    #@ea
    .line 365
    :goto_5
    const/16 v29, 0x6

    #@ec
    move/from16 v0, v29

    #@ee
    if-ne v4, v0, :cond_f

    #@f0
    const/16 v18, 0x1

    #@f2
    .line 366
    .local v18, "pointerUp":Z
    :goto_6
    if-eqz v18, :cond_10

    #@f4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@f7
    move-result v19

    #@f8
    .line 369
    .local v19, "skipIndex":I
    :goto_7
    const/16 v24, 0x0

    #@fa
    .local v24, "sumX":F
    const/16 v25, 0x0

    #@fc
    .line 370
    .local v25, "sumY":F
    if-eqz v18, :cond_11

    #@fe
    add-int/lit8 v12, v7, -0x1

    #@100
    .line 373
    .local v12, "div":I
    :goto_8
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    #@103
    move-result v29

    #@104
    if-eqz v29, :cond_13

    #@106
    .line 376
    move-object/from16 v0, p0

    #@108
    iget v13, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    #@10a
    .line 377
    .local v13, "focusX":F
    move-object/from16 v0, p0

    #@10c
    iget v14, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    #@10e
    .line 378
    .local v14, "focusY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@111
    move-result v29

    #@112
    cmpg-float v29, v29, v14

    #@114
    if-gez v29, :cond_12

    #@116
    .line 379
    const/16 v29, 0x1

    #@118
    move/from16 v0, v29

    #@11a
    move-object/from16 v1, p0

    #@11c
    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    #@11e
    .line 394
    :goto_9
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->addTouchHistory(Landroid/view/MotionEvent;)V

    #@121
    .line 397
    const/4 v8, 0x0

    #@122
    .local v8, "devSumX":F
    const/4 v9, 0x0

    #@123
    .line 398
    .local v9, "devSumY":F
    const/4 v15, 0x0

    #@124
    .local v15, "i":I
    :goto_a
    if-ge v15, v7, :cond_17

    #@126
    .line 399
    move/from16 v0, v19

    #@128
    if-ne v0, v15, :cond_16

    #@12a
    .line 398
    :goto_b
    add-int/lit8 v15, v15, 0x1

    #@12c
    goto :goto_a

    #@12d
    .line 353
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

    #@12f
    .line 352
    if-eqz v16, :cond_b

    #@131
    .line 355
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@134
    move-result v29

    #@135
    move/from16 v0, v29

    #@137
    move-object/from16 v1, p0

    #@139
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    #@13b
    .line 356
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@13e
    move-result v29

    #@13f
    move/from16 v0, v29

    #@141
    move-object/from16 v1, p0

    #@143
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    #@145
    .line 357
    const/16 v29, 0x2

    #@147
    move/from16 v0, v29

    #@149
    move-object/from16 v1, p0

    #@14b
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    #@14d
    .line 358
    const/16 v29, 0x0

    #@14f
    move/from16 v0, v29

    #@151
    move-object/from16 v1, p0

    #@153
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    #@155
    goto :goto_4

    #@156
    .line 363
    :cond_e
    const/16 v29, 0x5

    #@158
    move/from16 v0, v29

    #@15a
    if-eq v4, v0, :cond_c

    #@15c
    move v6, v5

    #@15d
    .local v6, "configChanged":Z
    goto :goto_5

    #@15e
    .line 365
    .end local v6    # "configChanged":Z
    :cond_f
    const/16 v18, 0x0

    #@160
    .restart local v18    # "pointerUp":Z
    goto :goto_6

    #@161
    .line 366
    :cond_10
    const/16 v19, -0x1

    #@163
    .restart local v19    # "skipIndex":I
    goto :goto_7

    #@164
    .line 370
    .restart local v24    # "sumX":F
    .restart local v25    # "sumY":F
    :cond_11
    move v12, v7

    #@165
    .restart local v12    # "div":I
    goto :goto_8

    #@166
    .line 381
    .restart local v13    # "focusX":F
    .restart local v14    # "focusY":F
    :cond_12
    const/16 v29, 0x0

    #@168
    move/from16 v0, v29

    #@16a
    move-object/from16 v1, p0

    #@16c
    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    #@16e
    goto :goto_9

    #@16f
    .line 384
    .end local v13    # "focusX":F
    .end local v14    # "focusY":F
    :cond_13
    const/4 v15, 0x0

    #@170
    .restart local v15    # "i":I
    :goto_c
    if-ge v15, v7, :cond_15

    #@172
    .line 385
    move/from16 v0, v19

    #@174
    if-ne v0, v15, :cond_14

    #@176
    .line 384
    :goto_d
    add-int/lit8 v15, v15, 0x1

    #@178
    goto :goto_c

    #@179
    .line 386
    :cond_14
    move-object/from16 v0, p1

    #@17b
    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    #@17e
    move-result v29

    #@17f
    add-float v24, v24, v29

    #@181
    .line 387
    move-object/from16 v0, p1

    #@183
    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    #@186
    move-result v29

    #@187
    add-float v25, v25, v29

    #@189
    goto :goto_d

    #@18a
    .line 390
    :cond_15
    int-to-float v0, v12

    #@18b
    move/from16 v29, v0

    #@18d
    div-float v13, v24, v29

    #@18f
    .line 391
    .restart local v13    # "focusX":F
    int-to-float v0, v12

    #@190
    move/from16 v29, v0

    #@192
    div-float v14, v25, v29

    #@194
    .restart local v14    # "focusY":F
    goto :goto_9

    #@195
    .line 402
    .restart local v8    # "devSumX":F
    .restart local v9    # "devSumY":F
    :cond_16
    move-object/from16 v0, p0

    #@197
    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    #@199
    move/from16 v29, v0

    #@19b
    const/high16 v30, 0x40000000    # 2.0f

    #@19d
    div-float v26, v29, v30

    #@19f
    .line 403
    .local v26, "touchSize":F
    move-object/from16 v0, p1

    #@1a1
    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    #@1a4
    move-result v29

    #@1a5
    sub-float v29, v29, v13

    #@1a7
    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(F)F

    #@1aa
    move-result v29

    #@1ab
    add-float v29, v29, v26

    #@1ad
    add-float v8, v8, v29

    #@1af
    .line 404
    move-object/from16 v0, p1

    #@1b1
    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    #@1b4
    move-result v29

    #@1b5
    sub-float v29, v29, v14

    #@1b7
    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(F)F

    #@1ba
    move-result v29

    #@1bb
    add-float v29, v29, v26

    #@1bd
    add-float v9, v9, v29

    #@1bf
    goto/16 :goto_b

    #@1c1
    .line 406
    .end local v26    # "touchSize":F
    :cond_17
    int-to-float v0, v12

    #@1c2
    move/from16 v29, v0

    #@1c4
    div-float v10, v8, v29

    #@1c6
    .line 407
    .local v10, "devX":F
    int-to-float v0, v12

    #@1c7
    move/from16 v29, v0

    #@1c9
    div-float v11, v9, v29

    #@1cb
    .line 412
    .local v11, "devY":F
    const/high16 v29, 0x40000000    # 2.0f

    #@1cd
    mul-float v21, v10, v29

    #@1cf
    .line 413
    .local v21, "spanX":F
    const/high16 v29, 0x40000000    # 2.0f

    #@1d1
    mul-float v22, v11, v29

    #@1d3
    .line 415
    .local v22, "spanY":F
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    #@1d6
    move-result v29

    #@1d7
    if-eqz v29, :cond_1f

    #@1d9
    .line 416
    move/from16 v20, v22

    #@1db
    .line 424
    .local v20, "span":F
    :goto_e
    move-object/from16 v0, p0

    #@1dd
    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    #@1df
    move/from16 v28, v0

    #@1e1
    .line 425
    .local v28, "wasInProgress":Z
    move-object/from16 v0, p0

    #@1e3
    iput v13, v0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    #@1e5
    .line 426
    move-object/from16 v0, p0

    #@1e7
    iput v14, v0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    #@1e9
    .line 427
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    #@1ec
    move-result v29

    #@1ed
    if-nez v29, :cond_19

    #@1ef
    move-object/from16 v0, p0

    #@1f1
    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    #@1f3
    move/from16 v29, v0

    #@1f5
    if-eqz v29, :cond_19

    #@1f7
    move-object/from16 v0, p0

    #@1f9
    iget v0, v0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    #@1fb
    move/from16 v29, v0

    #@1fd
    move/from16 v0, v29

    #@1ff
    int-to-float v0, v0

    #@200
    move/from16 v29, v0

    #@202
    cmpg-float v29, v20, v29

    #@204
    if-ltz v29, :cond_18

    #@206
    if-eqz v6, :cond_19

    #@208
    .line 428
    :cond_18
    move-object/from16 v0, p0

    #@20a
    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    #@20c
    move-object/from16 v29, v0

    #@20e
    move-object/from16 v0, v29

    #@210
    move-object/from16 v1, p0

    #@212
    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    #@215
    .line 429
    const/16 v29, 0x0

    #@217
    move/from16 v0, v29

    #@219
    move-object/from16 v1, p0

    #@21b
    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    #@21d
    .line 430
    move/from16 v0, v20

    #@21f
    move-object/from16 v1, p0

    #@221
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    #@223
    .line 432
    :cond_19
    if-eqz v6, :cond_1a

    #@225
    .line 433
    move/from16 v0, v21

    #@227
    move-object/from16 v1, p0

    #@229
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    #@22b
    move/from16 v0, v21

    #@22d
    move-object/from16 v1, p0

    #@22f
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    #@231
    .line 434
    move/from16 v0, v22

    #@233
    move-object/from16 v1, p0

    #@235
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    #@237
    move/from16 v0, v22

    #@239
    move-object/from16 v1, p0

    #@23b
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    #@23d
    .line 435
    move/from16 v0, v20

    #@23f
    move-object/from16 v1, p0

    #@241
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    #@243
    move/from16 v0, v20

    #@245
    move-object/from16 v1, p0

    #@247
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    #@249
    move/from16 v0, v20

    #@24b
    move-object/from16 v1, p0

    #@24d
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    #@24f
    .line 438
    :cond_1a
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    #@252
    move-result v29

    #@253
    if-eqz v29, :cond_20

    #@255
    move-object/from16 v0, p0

    #@257
    iget v0, v0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    #@259
    move/from16 v17, v0

    #@25b
    .line 439
    .local v17, "minSpan":I
    :goto_f
    move-object/from16 v0, p0

    #@25d
    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    #@25f
    move/from16 v29, v0

    #@261
    if-nez v29, :cond_1c

    #@263
    move/from16 v0, v17

    #@265
    int-to-float v0, v0

    #@266
    move/from16 v29, v0

    #@268
    cmpl-float v29, v20, v29

    #@26a
    if-ltz v29, :cond_1c

    #@26c
    .line 440
    if-nez v28, :cond_1b

    #@26e
    move-object/from16 v0, p0

    #@270
    iget v0, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    #@272
    move/from16 v29, v0

    #@274
    sub-float v29, v20, v29

    #@276
    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(F)F

    #@279
    move-result v29

    #@27a
    move-object/from16 v0, p0

    #@27c
    iget v0, v0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    #@27e
    move/from16 v30, v0

    #@280
    move/from16 v0, v30

    #@282
    int-to-float v0, v0

    #@283
    move/from16 v30, v0

    #@285
    cmpl-float v29, v29, v30

    #@287
    if-lez v29, :cond_1c

    #@289
    .line 441
    :cond_1b
    move/from16 v0, v21

    #@28b
    move-object/from16 v1, p0

    #@28d
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    #@28f
    move/from16 v0, v21

    #@291
    move-object/from16 v1, p0

    #@293
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    #@295
    .line 442
    move/from16 v0, v22

    #@297
    move-object/from16 v1, p0

    #@299
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    #@29b
    move/from16 v0, v22

    #@29d
    move-object/from16 v1, p0

    #@29f
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    #@2a1
    .line 443
    move/from16 v0, v20

    #@2a3
    move-object/from16 v1, p0

    #@2a5
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    #@2a7
    move/from16 v0, v20

    #@2a9
    move-object/from16 v1, p0

    #@2ab
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    #@2ad
    .line 444
    move-object/from16 v0, p0

    #@2af
    iget-wide v0, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    #@2b1
    move-wide/from16 v30, v0

    #@2b3
    move-wide/from16 v0, v30

    #@2b5
    move-object/from16 v2, p0

    #@2b7
    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    #@2b9
    .line 445
    move-object/from16 v0, p0

    #@2bb
    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    #@2bd
    move-object/from16 v29, v0

    #@2bf
    move-object/from16 v0, v29

    #@2c1
    move-object/from16 v1, p0

    #@2c3
    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    #@2c6
    move-result v29

    #@2c7
    move/from16 v0, v29

    #@2c9
    move-object/from16 v1, p0

    #@2cb
    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    #@2cd
    .line 449
    :cond_1c
    const/16 v29, 0x2

    #@2cf
    move/from16 v0, v29

    #@2d1
    if-ne v4, v0, :cond_1e

    #@2d3
    .line 450
    move/from16 v0, v21

    #@2d5
    move-object/from16 v1, p0

    #@2d7
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    #@2d9
    .line 451
    move/from16 v0, v22

    #@2db
    move-object/from16 v1, p0

    #@2dd
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    #@2df
    .line 452
    move/from16 v0, v20

    #@2e1
    move-object/from16 v1, p0

    #@2e3
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    #@2e5
    .line 454
    const/16 v27, 0x1

    #@2e7
    .line 456
    .local v27, "updatePrev":Z
    move-object/from16 v0, p0

    #@2e9
    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    #@2eb
    move/from16 v29, v0

    #@2ed
    if-eqz v29, :cond_1d

    #@2ef
    .line 457
    move-object/from16 v0, p0

    #@2f1
    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    #@2f3
    move-object/from16 v29, v0

    #@2f5
    move-object/from16 v0, v29

    #@2f7
    move-object/from16 v1, p0

    #@2f9
    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    #@2fc
    move-result v27

    #@2fd
    .line 460
    .end local v27    # "updatePrev":Z
    :cond_1d
    if-eqz v27, :cond_1e

    #@2ff
    .line 461
    move-object/from16 v0, p0

    #@301
    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    #@303
    move/from16 v29, v0

    #@305
    move/from16 v0, v29

    #@307
    move-object/from16 v1, p0

    #@309
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    #@30b
    .line 462
    move-object/from16 v0, p0

    #@30d
    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    #@30f
    move/from16 v29, v0

    #@311
    move/from16 v0, v29

    #@313
    move-object/from16 v1, p0

    #@315
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    #@317
    .line 463
    move-object/from16 v0, p0

    #@319
    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    #@31b
    move/from16 v29, v0

    #@31d
    move/from16 v0, v29

    #@31f
    move-object/from16 v1, p0

    #@321
    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    #@323
    .line 464
    move-object/from16 v0, p0

    #@325
    iget-wide v0, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    #@327
    move-wide/from16 v30, v0

    #@329
    move-wide/from16 v0, v30

    #@32b
    move-object/from16 v2, p0

    #@32d
    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    #@32f
    .line 468
    :cond_1e
    const/16 v29, 0x1

    #@331
    return v29

    #@332
    .line 418
    .end local v17    # "minSpan":I
    .end local v20    # "span":F
    .end local v28    # "wasInProgress":Z
    :cond_1f
    move/from16 v0, v21

    #@334
    float-to-double v0, v0

    #@335
    move-wide/from16 v30, v0

    #@337
    move/from16 v0, v22

    #@339
    float-to-double v0, v0

    #@33a
    move-wide/from16 v32, v0

    #@33c
    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->hypot(DD)D

    #@33f
    move-result-wide v30

    #@340
    move-wide/from16 v0, v30

    #@342
    double-to-float v0, v0

    #@343
    move/from16 v20, v0

    #@345
    .restart local v20    # "span":F
    goto/16 :goto_e

    #@347
    .line 438
    .restart local v28    # "wasInProgress":Z
    :cond_20
    move-object/from16 v0, p0

    #@349
    iget v0, v0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    #@34b
    move/from16 v17, v0

    #@34d
    .restart local v17    # "minSpan":I
    goto/16 :goto_f
.end method

.method public setQuickScaleEnabled(Z)V
    .locals 4
    .param p1, "scales"    # Z

    #@0
    .prologue
    .line 482
    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    #@2
    .line 483
    iget-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 485
    new-instance v0, Landroid/view/ScaleGestureDetector$1;

    #@c
    invoke-direct {v0, p0}, Landroid/view/ScaleGestureDetector$1;-><init>(Landroid/view/ScaleGestureDetector;)V

    #@f
    .line 495
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
    .line 481
    .end local v0    # "gestureListener":Landroid/view/GestureDetector$SimpleOnGestureListener;
    :cond_0
    return-void
.end method

.method public setStylusScaleEnabled(Z)V
    .locals 0
    .param p1, "scales"    # Z

    #@0
    .prologue
    .line 515
    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    #@2
    .line 514
    return-void
.end method
