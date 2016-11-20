.class Lcom/android/server/accessibility/MagnificationGestureHandler;
.super Ljava/lang/Object;
.source "MagnificationGestureHandler.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;,
        Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;,
        Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventHandler;,
        Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;,
        Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;
    }
.end annotation


# static fields
.field private static final DEBUG_DETECTING:Z = false

.field private static final DEBUG_PANNING:Z = false

.field private static final DEBUG_STATE_TRANSITIONS:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "MagnificationEventHandler"

.field private static final MAX_SCALE:F = 5.0f

.field private static final MIN_SCALE:F = 2.0f

.field private static final STATE_DELEGATING:I = 0x1

.field private static final STATE_DETECTING:I = 0x2

.field private static final STATE_MAGNIFIED_INTERACTION:I = 0x4

.field private static final STATE_VIEWPORT_DRAGGING:I = 0x3


# instance fields
.field private mCurrentState:I

.field private mDelegatingStateDownTime:J

.field private final mDetectControlGestures:Z

.field private final mDetectingStateHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;

.field private final mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

.field private final mMagnifiedContentInteractionStateHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mPreviousState:I

.field private final mStateViewportDraggingHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;

.field private mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field private mTranslationEnabledBeforePan:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/MagnificationGestureHandler;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:I

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/accessibility/MagnificationGestureHandler;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPreviousState:I

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/server/accessibility/MagnificationGestureHandler;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTranslationEnabledBeforePan:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/server/accessibility/MagnificationGestureHandler;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTranslationEnabledBeforePan:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/accessibility/MagnificationGestureHandler;I)V
    .locals 0
    .param p1, "state"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->transitionToState(I)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ams"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p3, "detectControlGestures"    # Z

    #@0
    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 114
    invoke-virtual {p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    #@9
    .line 115
    new-instance v0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;

    #@b
    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;-><init>(Lcom/android/server/accessibility/MagnificationGestureHandler;Landroid/content/Context;)V

    #@e
    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingStateHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;

    #@10
    .line 116
    new-instance v0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;

    #@12
    const/4 v1, 0x0

    #@13
    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;-><init>(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;)V

    #@16
    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mStateViewportDraggingHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;

    #@18
    .line 118
    new-instance v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;

    #@1a
    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;-><init>(Lcom/android/server/accessibility/MagnificationGestureHandler;Landroid/content/Context;)V

    #@1d
    .line 117
    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnifiedContentInteractionStateHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;

    #@1f
    .line 119
    iput-boolean p3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectControlGestures:Z

    #@21
    .line 121
    const/4 v0, 0x2

    #@22
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->transitionToState(I)V

    #@25
    .line 113
    return-void
.end method

.method private clear()V
    .locals 1

    #@0
    .prologue
    .line 200
    const/4 v0, 0x2

    #@1
    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:I

    #@3
    .line 201
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingStateHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;

    #@5
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clear()V

    #@8
    .line 202
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mStateViewportDraggingHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;

    #@a
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->clear()V

    #@d
    .line 203
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnifiedContentInteractionStateHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;

    #@f
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->clear()V

    #@12
    .line 199
    return-void
.end method

.method private dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 26
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    .line 237
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@3
    move-result v20

    #@4
    .line 238
    .local v20, "eventX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@7
    move-result v21

    #@8
    .line 239
    .local v21, "eventY":F
    move-object/from16 v0, p0

    #@a
    iget-object v4, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    #@c
    invoke-virtual {v4}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_1

    #@12
    .line 240
    move-object/from16 v0, p0

    #@14
    iget-object v4, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    #@16
    move/from16 v0, v20

    #@18
    move/from16 v1, v21

    #@1a
    invoke-virtual {v4, v0, v1}, Lcom/android/server/accessibility/MagnificationController;->magnificationRegionContains(FF)Z

    #@1d
    move-result v4

    #@1e
    .line 239
    if-eqz v4, :cond_1

    #@20
    .line 241
    move-object/from16 v0, p0

    #@22
    iget-object v4, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    #@24
    invoke-virtual {v4}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    #@27
    move-result v23

    #@28
    .line 242
    .local v23, "scale":F
    move-object/from16 v0, p0

    #@2a
    iget-object v4, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    #@2c
    invoke-virtual {v4}, Lcom/android/server/accessibility/MagnificationController;->getOffsetX()F

    #@2f
    move-result v24

    #@30
    .line 243
    .local v24, "scaledOffsetX":F
    move-object/from16 v0, p0

    #@32
    iget-object v4, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    #@34
    invoke-virtual {v4}, Lcom/android/server/accessibility/MagnificationController;->getOffsetY()F

    #@37
    move-result v25

    #@38
    .line 244
    .local v25, "scaledOffsetY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@3b
    move-result v9

    #@3c
    .line 245
    .local v9, "pointerCount":I
    move-object/from16 v0, p0

    #@3e
    invoke-direct {v0, v9}, Lcom/android/server/accessibility/MagnificationGestureHandler;->getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;

    #@41
    move-result-object v11

    #@42
    .line 246
    .local v11, "coords":[Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p0

    #@44
    invoke-direct {v0, v9}, Lcom/android/server/accessibility/MagnificationGestureHandler;->getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;

    #@47
    move-result-object v10

    #@48
    .line 248
    .local v10, "properties":[Landroid/view/MotionEvent$PointerProperties;
    const/16 v22, 0x0

    #@4a
    .local v22, "i":I
    :goto_0
    move/from16 v0, v22

    #@4c
    if-ge v0, v9, :cond_0

    #@4e
    .line 249
    aget-object v4, v11, v22

    #@50
    move-object/from16 v0, p1

    #@52
    move/from16 v1, v22

    #@54
    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    #@57
    .line 250
    aget-object v4, v11, v22

    #@59
    aget-object v5, v11, v22

    #@5b
    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@5d
    sub-float v5, v5, v24

    #@5f
    div-float v5, v5, v23

    #@61
    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@63
    .line 251
    aget-object v4, v11, v22

    #@65
    aget-object v5, v11, v22

    #@67
    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@69
    sub-float v5, v5, v25

    #@6b
    div-float v5, v5, v23

    #@6d
    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@6f
    .line 252
    aget-object v4, v10, v22

    #@71
    move-object/from16 v0, p1

    #@73
    move/from16 v1, v22

    #@75
    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    #@78
    .line 248
    add-int/lit8 v22, v22, 0x1

    #@7a
    goto :goto_0

    #@7b
    .line 254
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    #@7e
    move-result-wide v4

    #@7f
    .line 255
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@82
    move-result-wide v6

    #@83
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    #@86
    move-result v8

    #@87
    .line 256
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    #@8a
    move-result v16

    #@8b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    #@8e
    move-result v18

    #@8f
    .line 257
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    #@92
    move-result v19

    #@93
    .line 256
    const/4 v12, 0x0

    #@94
    const/4 v13, 0x0

    #@95
    const/high16 v14, 0x3f800000    # 1.0f

    #@97
    const/high16 v15, 0x3f800000    # 1.0f

    #@99
    const/16 v17, 0x0

    #@9b
    .line 254
    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    #@9e
    move-result-object p1

    #@9f
    .line 259
    .end local v9    # "pointerCount":I
    .end local v10    # "properties":[Landroid/view/MotionEvent$PointerProperties;
    .end local v11    # "coords":[Landroid/view/MotionEvent$PointerCoords;
    .end local v22    # "i":I
    .end local v23    # "scale":F
    .end local v24    # "scaledOffsetX":F
    .end local v25    # "scaledOffsetY":F
    :cond_1
    move-object/from16 v0, p0

    #@a1
    iget-object v4, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@a3
    move-object/from16 v0, p1

    #@a5
    move-object/from16 v1, p2

    #@a7
    move/from16 v2, p3

    #@a9
    invoke-interface {v4, v0, v1, v2}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    #@ac
    .line 233
    return-void
.end method

.method private getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 5
    .param p1, "size"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 263
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@3
    if-eqz v4, :cond_1

    #@5
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@7
    array-length v1, v4

    #@8
    .line 264
    .local v1, "oldSize":I
    :goto_0
    if-ge v1, p1, :cond_0

    #@a
    .line 265
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@c
    .line 266
    .local v2, "oldTempPointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    new-array v4, p1, [Landroid/view/MotionEvent$PointerCoords;

    #@e
    iput-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@10
    .line 267
    if-eqz v2, :cond_0

    #@12
    .line 268
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@14
    invoke-static {v2, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@17
    .line 271
    .end local v2    # "oldTempPointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    :cond_0
    move v0, v1

    #@18
    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_2

    #@1a
    .line 272
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@1c
    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    #@1e
    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    #@21
    aput-object v4, v3, v0

    #@23
    .line 271
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_1

    #@26
    .end local v0    # "i":I
    .end local v1    # "oldSize":I
    :cond_1
    move v1, v3

    #@27
    .line 263
    goto :goto_0

    #@28
    .line 274
    .restart local v0    # "i":I
    .restart local v1    # "oldSize":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@2a
    return-object v3
.end method

.method private getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;
    .locals 5
    .param p1, "size"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 278
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    #@3
    if-eqz v4, :cond_1

    #@5
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    #@7
    array-length v1, v4

    #@8
    .line 280
    .local v1, "oldSize":I
    :goto_0
    if-ge v1, p1, :cond_0

    #@a
    .line 281
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    #@c
    .line 282
    .local v2, "oldTempPointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    new-array v4, p1, [Landroid/view/MotionEvent$PointerProperties;

    #@e
    iput-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    #@10
    .line 283
    if-eqz v2, :cond_0

    #@12
    .line 284
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    #@14
    invoke-static {v2, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@17
    .line 288
    .end local v2    # "oldTempPointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    :cond_0
    move v0, v1

    #@18
    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_2

    #@1a
    .line 289
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    #@1c
    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    #@1e
    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    #@21
    aput-object v4, v3, v0

    #@23
    .line 288
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_1

    #@26
    .end local v0    # "i":I
    .end local v1    # "oldSize":I
    :cond_1
    move v1, v3

    #@27
    .line 279
    goto :goto_0

    #@28
    .line 291
    .restart local v0    # "i":I
    .restart local v1    # "oldSize":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    #@2a
    return-object v3
.end method

.method private handleMotionEventStateDelegating(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@3
    move-result v0

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 220
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 227
    iget-wide v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDelegatingStateDownTime:J

    #@d
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setDownTime(J)V

    #@10
    .line 228
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    #@13
    .line 207
    :cond_1
    return-void

    #@14
    .line 210
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    #@17
    move-result-wide v0

    #@18
    iput-wide v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDelegatingStateDownTime:J

    #@1a
    goto :goto_0

    #@1b
    .line 214
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingStateHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;

    #@1d
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->-get0(Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    #@20
    move-result-object v0

    #@21
    if-nez v0, :cond_0

    #@23
    .line 215
    const/4 v0, 0x2

    #@24
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->transitionToState(I)V

    #@27
    goto :goto_0

    #@28
    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private transitionToState(I)V
    .locals 1
    .param p1, "state"    # I

    #@0
    .prologue
    .line 318
    iget v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:I

    #@2
    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPreviousState:I

    #@4
    .line 319
    iput p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:I

    #@6
    .line 294
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .locals 1
    .param p1, "inputSource"    # I

    #@0
    .prologue
    .line 185
    const/16 v0, 0x1002

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 186
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->clear()V

    #@7
    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 190
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@d
    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    #@10
    .line 184
    :cond_1
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 174
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@6
    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@9
    .line 172
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    #@0
    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->clear()V

    #@3
    .line 195
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 167
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@6
    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    #@9
    .line 165
    :cond_0
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    .line 126
    const/16 v0, 0x1002

    #@2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_1

    #@8
    .line 127
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 128
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@e
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    #@11
    .line 130
    :cond_0
    return-void

    #@12
    .line 132
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectControlGestures:Z

    #@14
    if-nez v0, :cond_3

    #@16
    .line 133
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@18
    if-eqz v0, :cond_2

    #@1a
    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    #@1d
    .line 136
    :cond_2
    return-void

    #@1e
    .line 138
    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnifiedContentInteractionStateHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;

    #@20
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    #@23
    .line 139
    iget v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:I

    #@25
    packed-switch v0, :pswitch_data_0

    #@28
    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2a
    new-instance v1, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v2, "Unknown state: "

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    iget v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:I

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@43
    throw v0

    #@44
    .line 141
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->handleMotionEventStateDelegating(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    #@47
    .line 125
    :goto_0
    :pswitch_1
    return-void

    #@48
    .line 145
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingStateHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;

    #@4a
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    #@4d
    goto :goto_0

    #@4e
    .line 149
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mStateViewportDraggingHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;

    #@50
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    #@53
    goto :goto_0

    #@54
    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    #@0
    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@2
    .line 179
    return-void
.end method
