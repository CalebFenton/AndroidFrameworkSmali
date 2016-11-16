.class Lcom/android/server/accessibility/AccessibilityGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AccessibilityGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;
    }
.end annotation


# static fields
.field private static final CANCEL_ON_PAUSE_THRESHOLD_NOT_STARTED_MS:J = 0xc8L

.field private static final CANCEL_ON_PAUSE_THRESHOLD_STARTED_MS:J = 0x1f4L

.field private static final DEBUG:Z = false

.field private static final GESTURE_CONFIRM_MM:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityGestureDetector"

.field private static final MIN_PREDICTION_SCORE:F = 2.0f

.field private static final TOUCH_TOLERANCE:I = 0x3


# instance fields
.field private mBaseTime:J

.field private mBaseX:F

.field private mBaseY:F

.field private mDoubleTapDetected:Z

.field private mFirstTapDetected:Z

.field private final mGestureDetectionThreshold:F

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mGestureLibrary:Landroid/gesture/GestureLibrary;

.field private mGestureStarted:Z

.field private final mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

.field private mPolicyFlags:I

.field private mPreviousGestureX:F

.field private mPreviousGestureY:F

.field private mRecognizingGesture:Z

.field private mSecondFingerDoubleTap:Z

.field private mSecondPointerDownTime:J

.field private final mStrokeBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    #@0
    .prologue
    .line 180
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    #@3
    .line 152
    new-instance v0, Ljava/util/ArrayList;

    #@5
    const/16 v1, 0x64

    #@7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@a
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    #@c
    .line 181
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    #@e
    .line 183
    new-instance v0, Landroid/view/GestureDetector;

    #@10
    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    #@13
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    #@15
    .line 184
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    #@17
    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    #@1a
    .line 186
    const v0, 0x1100002

    #@1d
    invoke-static {p1, v0}, Landroid/gesture/GestureLibraries;->fromRawResource(Landroid/content/Context;I)Landroid/gesture/GestureLibrary;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    #@23
    .line 187
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    #@25
    const/16 v1, 0x8

    #@27
    invoke-virtual {v0, v1}, Landroid/gesture/GestureLibrary;->setOrientationStyle(I)V

    #@2a
    .line 188
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    #@2c
    const/4 v1, 0x2

    #@2d
    invoke-virtual {v0, v1}, Landroid/gesture/GestureLibrary;->setSequenceType(I)V

    #@30
    .line 189
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    #@32
    invoke-virtual {v0}, Landroid/gesture/GestureLibrary;->load()Z

    #@35
    .line 191
    const/high16 v0, 0x3f800000    # 1.0f

    #@37
    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@3e
    move-result-object v1

    #@3f
    .line 191
    const/4 v2, 0x5

    #@40
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@43
    move-result v0

    #@44
    .line 192
    const/high16 v1, 0x41200000    # 10.0f

    #@46
    .line 191
    mul-float/2addr v0, v1

    #@47
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetectionThreshold:F

    #@49
    .line 180
    return-void
.end method

.method private cancelGesture()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 395
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mRecognizingGesture:Z

    #@3
    .line 396
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    #@5
    .line 397
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@a
    .line 394
    return-void
.end method

.method private finishDoubleTap(Landroid/view/MotionEvent;I)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->clear()V

    #@3
    .line 391
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    #@5
    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onDoubleTap(Landroid/view/MotionEvent;I)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method private mapSecondPointerToFirstPointer(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v3, 0x6

    #@1
    const/4 v2, 0x5

    #@2
    const/4 v1, 0x2

    #@3
    const/4 v8, 0x1

    #@4
    .line 426
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@7
    move-result v0

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 427
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@d
    move-result v0

    #@e
    if-eq v0, v2, :cond_1

    #@10
    .line 428
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@13
    move-result v0

    #@14
    if-eq v0, v3, :cond_1

    #@16
    .line 429
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@19
    move-result v0

    #@1a
    if-eq v0, v1, :cond_1

    #@1c
    .line 430
    :cond_0
    const/4 v0, 0x0

    #@1d
    return-object v0

    #@1e
    .line 433
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@21
    move-result v4

    #@22
    .line 435
    .local v4, "action":I
    if-ne v4, v2, :cond_3

    #@24
    .line 436
    const/4 v4, 0x0

    #@25
    .line 442
    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondPointerDownTime:J

    #@27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@2a
    move-result-wide v2

    #@2b
    .line 443
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    #@2e
    move-result v5

    #@2f
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    #@32
    move-result v6

    #@33
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPressure(I)F

    #@36
    move-result v7

    #@37
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getSize(I)F

    #@3a
    move-result v8

    #@3b
    .line 444
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    #@3e
    move-result v9

    #@3f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getXPrecision()F

    #@42
    move-result v10

    #@43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getYPrecision()F

    #@46
    move-result v11

    #@47
    .line 445
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    #@4a
    move-result v12

    #@4b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    #@4e
    move-result v13

    #@4f
    .line 442
    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    #@52
    move-result-object v0

    #@53
    return-object v0

    #@54
    .line 437
    :cond_3
    if-ne v4, v3, :cond_2

    #@56
    .line 438
    const/4 v4, 0x1

    #@57
    goto :goto_0
.end method

.method private maybeSendLongPress(Landroid/view/MotionEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 380
    return-void

    #@5
    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->clear()V

    #@8
    .line 385
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    #@a
    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onDoubleTapAndHold(Landroid/view/MotionEvent;I)V

    #@d
    .line 378
    return-void
.end method

.method private recognizeGesture(Landroid/view/MotionEvent;I)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 401
    new-instance v1, Landroid/gesture/Gesture;

    #@2
    invoke-direct {v1}, Landroid/gesture/Gesture;-><init>()V

    #@5
    .line 402
    .local v1, "gesture":Landroid/gesture/Gesture;
    new-instance v5, Landroid/gesture/GestureStroke;

    #@7
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    #@9
    invoke-direct {v5, v6}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    #@c
    invoke-virtual {v1, v5}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    #@f
    .line 404
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    #@11
    invoke-virtual {v5, v1}, Landroid/gesture/GestureLibrary;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    #@14
    move-result-object v4

    #@15
    .line 405
    .local v4, "predictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Prediction;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    #@18
    move-result v5

    #@19
    if-nez v5, :cond_0

    #@1b
    .line 406
    const/4 v5, 0x0

    #@1c
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Landroid/gesture/Prediction;

    #@22
    .line 407
    .local v0, "bestPrediction":Landroid/gesture/Prediction;
    iget-wide v6, v0, Landroid/gesture/Prediction;->score:D

    #@24
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    #@26
    cmpl-double v5, v6, v8

    #@28
    if-ltz v5, :cond_0

    #@2a
    .line 413
    :try_start_0
    iget-object v5, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    #@2c
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2f
    move-result v2

    #@30
    .line 414
    .local v2, "gestureId":I
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    #@32
    invoke-interface {v5, v2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    move-result v5

    #@36
    return v5

    #@37
    .line 415
    .end local v2    # "gestureId":I
    :catch_0
    move-exception v3

    #@38
    .line 416
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "AccessibilityGestureDetector"

    #@3b
    new-instance v6, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v7, "Non numeric gesture id:"

    #@43
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v6

    #@47
    iget-object v7, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    #@49
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v6

    #@4d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v6

    #@51
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    .line 421
    .end local v0    # "bestPrediction":Landroid/gesture/Prediction;
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    :cond_0
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    #@56
    invoke-interface {v5, p1, p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCancelled(Landroid/view/MotionEvent;I)Z

    #@59
    move-result v5

    #@5a
    return v5
.end method


# virtual methods
.method public clear()V
    .locals 9

    #@0
    .prologue
    const-wide/16 v0, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v7, 0x0

    #@4
    .line 340
    iput-boolean v7, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mFirstTapDetected:Z

    #@6
    .line 341
    iput-boolean v7, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    #@8
    .line 342
    iput-boolean v7, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    #@a
    .line 343
    iput-boolean v7, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    #@c
    .line 344
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    #@e
    const/4 v4, 0x3

    #@f
    move-wide v2, v0

    #@10
    move v6, v5

    #@11
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v8, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@18
    .line 346
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->cancelGesture()V

    #@1b
    .line 339
    return-void
.end method

.method public firstTapDetected()Z
    .locals 1

    #@0
    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mFirstTapDetected:Z

    #@2
    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 374
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    #@3
    .line 375
    const/4 v0, 0x0

    #@4
    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 355
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPolicyFlags:I

    #@2
    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->maybeSendLongPress(Landroid/view/MotionEvent;I)V

    #@5
    .line 354
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;I)Z
    .locals 24
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 208
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@3
    move-result v18

    #@4
    .line 209
    .local v18, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@7
    move-result v19

    #@8
    .line 210
    .local v19, "y":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@b
    move-result-wide v14

    #@c
    .line 212
    .local v14, "time":J
    move/from16 v0, p2

    #@e
    move-object/from16 v1, p0

    #@10
    iput v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPolicyFlags:I

    #@12
    .line 213
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@15
    move-result v20

    #@16
    packed-switch v20, :pswitch_data_0

    #@19
    .line 321
    :cond_0
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    #@1b
    iget-boolean v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    #@1d
    move/from16 v20, v0

    #@1f
    if-eqz v20, :cond_8

    #@21
    .line 322
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mapSecondPointerToFirstPointer(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@24
    move-result-object v9

    #@25
    .line 323
    .local v9, "newEvent":Landroid/view/MotionEvent;
    if-nez v9, :cond_7

    #@27
    .line 324
    const/16 v20, 0x0

    #@29
    return v20

    #@2a
    .line 215
    .end local v9    # "newEvent":Landroid/view/MotionEvent;
    :pswitch_1
    const/16 v20, 0x0

    #@2c
    move/from16 v0, v20

    #@2e
    move-object/from16 v1, p0

    #@30
    iput-boolean v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    #@32
    .line 216
    const/16 v20, 0x0

    #@34
    move/from16 v0, v20

    #@36
    move-object/from16 v1, p0

    #@38
    iput-boolean v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    #@3a
    .line 217
    const/16 v20, 0x1

    #@3c
    move/from16 v0, v20

    #@3e
    move-object/from16 v1, p0

    #@40
    iput-boolean v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mRecognizingGesture:Z

    #@42
    .line 218
    const/16 v20, 0x0

    #@44
    move/from16 v0, v20

    #@46
    move-object/from16 v1, p0

    #@48
    iput-boolean v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    #@4a
    .line 219
    move/from16 v0, v18

    #@4c
    move-object/from16 v1, p0

    #@4e
    iput v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureX:F

    #@50
    .line 220
    move/from16 v0, v19

    #@52
    move-object/from16 v1, p0

    #@54
    iput v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureY:F

    #@56
    .line 221
    move-object/from16 v0, p0

    #@58
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    #@5a
    move-object/from16 v20, v0

    #@5c
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    #@5f
    .line 222
    move-object/from16 v0, p0

    #@61
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    #@63
    move-object/from16 v20, v0

    #@65
    new-instance v21, Landroid/gesture/GesturePoint;

    #@67
    move-object/from16 v0, v21

    #@69
    move/from16 v1, v18

    #@6b
    move/from16 v2, v19

    #@6d
    invoke-direct {v0, v1, v2, v14, v15}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    #@70
    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@73
    .line 224
    move/from16 v0, v18

    #@75
    move-object/from16 v1, p0

    #@77
    iput v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseX:F

    #@79
    .line 225
    move/from16 v0, v19

    #@7b
    move-object/from16 v1, p0

    #@7d
    iput v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseY:F

    #@7f
    .line 226
    move-object/from16 v0, p0

    #@81
    iput-wide v14, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseTime:J

    #@83
    goto :goto_0

    #@84
    .line 230
    :pswitch_2
    move-object/from16 v0, p0

    #@86
    iget-boolean v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mRecognizingGesture:Z

    #@88
    move/from16 v20, v0

    #@8a
    if-eqz v20, :cond_0

    #@8c
    .line 231
    move-object/from16 v0, p0

    #@8e
    iget v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseX:F

    #@90
    move/from16 v20, v0

    #@92
    sub-float v6, v20, v18

    #@94
    .line 232
    .local v6, "deltaX":F
    move-object/from16 v0, p0

    #@96
    iget v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseY:F

    #@98
    move/from16 v20, v0

    #@9a
    sub-float v7, v20, v19

    #@9c
    .line 233
    .local v7, "deltaY":F
    float-to-double v0, v6

    #@9d
    move-wide/from16 v20, v0

    #@9f
    float-to-double v0, v7

    #@a0
    move-wide/from16 v22, v0

    #@a2
    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->hypot(DD)D

    #@a5
    move-result-wide v10

    #@a6
    .line 234
    .local v10, "moveDelta":D
    move-object/from16 v0, p0

    #@a8
    iget v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetectionThreshold:F

    #@aa
    move/from16 v20, v0

    #@ac
    move/from16 v0, v20

    #@ae
    float-to-double v0, v0

    #@af
    move-wide/from16 v20, v0

    #@b1
    cmpl-double v20, v10, v20

    #@b3
    if-lez v20, :cond_1

    #@b5
    .line 237
    move/from16 v0, v18

    #@b7
    move-object/from16 v1, p0

    #@b9
    iput v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseX:F

    #@bb
    .line 238
    move/from16 v0, v19

    #@bd
    move-object/from16 v1, p0

    #@bf
    iput v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseY:F

    #@c1
    .line 239
    move-object/from16 v0, p0

    #@c3
    iput-wide v14, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseTime:J

    #@c5
    .line 243
    const/16 v20, 0x0

    #@c7
    move/from16 v0, v20

    #@c9
    move-object/from16 v1, p0

    #@cb
    iput-boolean v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mFirstTapDetected:Z

    #@cd
    .line 244
    const/16 v20, 0x0

    #@cf
    move/from16 v0, v20

    #@d1
    move-object/from16 v1, p0

    #@d3
    iput-boolean v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    #@d5
    .line 248
    move-object/from16 v0, p0

    #@d7
    iget-boolean v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    #@d9
    move/from16 v20, v0

    #@db
    if-nez v20, :cond_3

    #@dd
    .line 249
    const/16 v20, 0x1

    #@df
    move/from16 v0, v20

    #@e1
    move-object/from16 v1, p0

    #@e3
    iput-boolean v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    #@e5
    .line 250
    move-object/from16 v0, p0

    #@e7
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    #@e9
    move-object/from16 v20, v0

    #@eb
    invoke-interface/range {v20 .. v20}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureStarted()Z

    #@ee
    move-result v20

    #@ef
    return v20

    #@f0
    .line 252
    :cond_1
    move-object/from16 v0, p0

    #@f2
    iget-boolean v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mFirstTapDetected:Z

    #@f4
    move/from16 v20, v0

    #@f6
    if-nez v20, :cond_3

    #@f8
    .line 255
    move-object/from16 v0, p0

    #@fa
    iget-wide v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseTime:J

    #@fc
    move-wide/from16 v20, v0

    #@fe
    sub-long v16, v14, v20

    #@100
    .line 256
    .local v16, "timeDelta":J
    move-object/from16 v0, p0

    #@102
    iget-boolean v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    #@104
    move/from16 v20, v0

    #@106
    if-eqz v20, :cond_2

    #@108
    .line 257
    const-wide/16 v12, 0x1f4

    #@10a
    .line 262
    .local v12, "threshold":J
    :goto_1
    cmp-long v20, v16, v12

    #@10c
    if-lez v20, :cond_3

    #@10e
    .line 263
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->cancelGesture()V

    #@111
    .line 264
    move-object/from16 v0, p0

    #@113
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    #@115
    move-object/from16 v20, v0

    #@117
    move-object/from16 v0, v20

    #@119
    move-object/from16 v1, p1

    #@11b
    move/from16 v2, p2

    #@11d
    invoke-interface {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCancelled(Landroid/view/MotionEvent;I)Z

    #@120
    move-result v20

    #@121
    return v20

    #@122
    .line 258
    .end local v12    # "threshold":J
    :cond_2
    const-wide/16 v12, 0xc8

    #@124
    goto :goto_1

    #@125
    .line 268
    .end local v16    # "timeDelta":J
    :cond_3
    move-object/from16 v0, p0

    #@127
    iget v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureX:F

    #@129
    move/from16 v20, v0

    #@12b
    sub-float v20, v18, v20

    #@12d
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    #@130
    move-result v4

    #@131
    .line 269
    .local v4, "dX":F
    move-object/from16 v0, p0

    #@133
    iget v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureY:F

    #@135
    move/from16 v20, v0

    #@137
    sub-float v20, v19, v20

    #@139
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    #@13c
    move-result v5

    #@13d
    .line 270
    .local v5, "dY":F
    const/high16 v20, 0x40400000    # 3.0f

    #@13f
    cmpl-float v20, v4, v20

    #@141
    if-gez v20, :cond_4

    #@143
    const/high16 v20, 0x40400000    # 3.0f

    #@145
    cmpl-float v20, v5, v20

    #@147
    if-ltz v20, :cond_0

    #@149
    .line 271
    :cond_4
    move/from16 v0, v18

    #@14b
    move-object/from16 v1, p0

    #@14d
    iput v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureX:F

    #@14f
    .line 272
    move/from16 v0, v19

    #@151
    move-object/from16 v1, p0

    #@153
    iput v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureY:F

    #@155
    .line 273
    move-object/from16 v0, p0

    #@157
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    #@159
    move-object/from16 v20, v0

    #@15b
    new-instance v21, Landroid/gesture/GesturePoint;

    #@15d
    move-object/from16 v0, v21

    #@15f
    move/from16 v1, v18

    #@161
    move/from16 v2, v19

    #@163
    invoke-direct {v0, v1, v2, v14, v15}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    #@166
    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@169
    goto/16 :goto_0

    #@16b
    .line 279
    .end local v4    # "dX":F
    .end local v5    # "dY":F
    .end local v6    # "deltaX":F
    .end local v7    # "deltaY":F
    .end local v10    # "moveDelta":D
    :pswitch_3
    move-object/from16 v0, p0

    #@16d
    iget-boolean v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    #@16f
    move/from16 v20, v0

    #@171
    if-eqz v20, :cond_5

    #@173
    .line 280
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->finishDoubleTap(Landroid/view/MotionEvent;I)Z

    #@176
    move-result v20

    #@177
    return v20

    #@178
    .line 282
    :cond_5
    move-object/from16 v0, p0

    #@17a
    iget-boolean v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    #@17c
    move/from16 v20, v0

    #@17e
    if-eqz v20, :cond_0

    #@180
    .line 283
    move-object/from16 v0, p0

    #@182
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    #@184
    move-object/from16 v20, v0

    #@186
    new-instance v21, Landroid/gesture/GesturePoint;

    #@188
    move-object/from16 v0, v21

    #@18a
    move/from16 v1, v18

    #@18c
    move/from16 v2, v19

    #@18e
    invoke-direct {v0, v1, v2, v14, v15}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    #@191
    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@194
    .line 285
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->recognizeGesture(Landroid/view/MotionEvent;I)Z

    #@197
    move-result v20

    #@198
    return v20

    #@199
    .line 292
    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->cancelGesture()V

    #@19c
    .line 294
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@19f
    move-result v20

    #@1a0
    const/16 v21, 0x2

    #@1a2
    move/from16 v0, v20

    #@1a4
    move/from16 v1, v21

    #@1a6
    if-ne v0, v1, :cond_6

    #@1a8
    .line 297
    const/16 v20, 0x1

    #@1aa
    move/from16 v0, v20

    #@1ac
    move-object/from16 v1, p0

    #@1ae
    iput-boolean v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    #@1b0
    .line 298
    move-object/from16 v0, p0

    #@1b2
    iput-wide v14, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondPointerDownTime:J

    #@1b4
    goto/16 :goto_0

    #@1b6
    .line 302
    :cond_6
    const/16 v20, 0x0

    #@1b8
    move/from16 v0, v20

    #@1ba
    move-object/from16 v1, p0

    #@1bc
    iput-boolean v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    #@1be
    goto/16 :goto_0

    #@1c0
    .line 309
    :pswitch_5
    move-object/from16 v0, p0

    #@1c2
    iget-boolean v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    #@1c4
    move/from16 v20, v0

    #@1c6
    if-eqz v20, :cond_0

    #@1c8
    move-object/from16 v0, p0

    #@1ca
    iget-boolean v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    #@1cc
    move/from16 v20, v0

    #@1ce
    if-eqz v20, :cond_0

    #@1d0
    .line 310
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->finishDoubleTap(Landroid/view/MotionEvent;I)Z

    #@1d3
    move-result v20

    #@1d4
    return v20

    #@1d5
    .line 315
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->clear()V

    #@1d8
    goto/16 :goto_0

    #@1da
    .line 326
    .restart local v9    # "newEvent":Landroid/view/MotionEvent;
    :cond_7
    move-object/from16 v0, p0

    #@1dc
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    #@1de
    move-object/from16 v20, v0

    #@1e0
    move-object/from16 v0, v20

    #@1e2
    invoke-virtual {v0, v9}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@1e5
    move-result v8

    #@1e6
    .line 327
    .local v8, "handled":Z
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    #@1e9
    .line 328
    return v8

    #@1ea
    .line 331
    .end local v8    # "handled":Z
    .end local v9    # "newEvent":Landroid/view/MotionEvent;
    :cond_8
    move-object/from16 v0, p0

    #@1ec
    iget-boolean v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mRecognizingGesture:Z

    #@1ee
    move/from16 v20, v0

    #@1f0
    if-nez v20, :cond_9

    #@1f2
    .line 332
    const/16 v20, 0x0

    #@1f4
    return v20

    #@1f5
    .line 336
    :cond_9
    move-object/from16 v0, p0

    #@1f7
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    #@1f9
    move-object/from16 v20, v0

    #@1fb
    move-object/from16 v0, v20

    #@1fd
    move-object/from16 v1, p1

    #@1ff
    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@202
    move-result v20

    #@203
    return v20

    #@204
    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->clear()V

    #@3
    .line 367
    const/4 v0, 0x0

    #@4
    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 360
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mFirstTapDetected:Z

    #@3
    .line 361
    const/4 v0, 0x0

    #@4
    return v0
.end method
