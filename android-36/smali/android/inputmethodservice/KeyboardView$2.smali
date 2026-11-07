.class Landroid/inputmethodservice/KeyboardView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/KeyboardView;->initGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/inputmethodservice/KeyboardView;


# direct methods
.method constructor blacklist <init>(Landroid/inputmethodservice/KeyboardView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/inputmethodservice/KeyboardView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 406
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 22
    .param p1, "me1"    # Landroid/view/MotionEvent;
    .param p2, "me2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 410
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v1}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmPossiblePoly(Landroid/inputmethodservice/KeyboardView;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return v2

    .line 411
    :cond_c
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 412
    .local v1, "absX":F
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 413
    .local v3, "absY":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    .line 414
    .local v4, "deltaX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    .line 415
    .local v5, "deltaY":F
    iget-object v6, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v6}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    .line 416
    .local v6, "travelX":I
    iget-object v7, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v7}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    .line 417
    .local v7, "travelY":I
    iget-object v8, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v8}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmSwipeTracker(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    move-result-object v8

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->computeCurrentVelocity(I)V

    .line 418
    iget-object v8, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v8}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmSwipeTracker(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    move-result-object v8

    invoke-virtual {v8}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->getXVelocity()F

    move-result v8

    .line 419
    .local v8, "endingVelocityX":F
    iget-object v9, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v9}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmSwipeTracker(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    move-result-object v9

    invoke-virtual {v9}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->getYVelocity()F

    move-result v9

    .line 420
    .local v9, "endingVelocityY":F
    const/4 v10, 0x0

    .line 421
    .local v10, "sendDownKey":Z
    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v11}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmSwipeThreshold(Landroid/inputmethodservice/KeyboardView;)I

    move-result v11

    int-to-float v11, v11

    cmpl-float v11, p3, v11

    const/high16 v12, 0x40800000    # 4.0f

    const/4 v13, 0x1

    if-lez v11, :cond_84

    cmpg-float v11, v3, v1

    if-gez v11, :cond_84

    int-to-float v11, v6

    cmpl-float v11, v4, v11

    if-lez v11, :cond_84

    .line 422
    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v11}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmDisambiguateSwipe(Landroid/inputmethodservice/KeyboardView;)Z

    move-result v11

    if-eqz v11, :cond_7e

    div-float v11, p3, v12

    cmpg-float v11, v8, v11

    if-gez v11, :cond_7e

    .line 423
    const/4 v10, 0x1

    goto/16 :goto_10a

    .line 425
    :cond_7e
    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView;->swipeRight()V

    .line 426
    return v13

    .line 428
    :cond_84
    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v11}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmSwipeThreshold(Landroid/inputmethodservice/KeyboardView;)I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    cmpg-float v11, p3, v11

    if-gez v11, :cond_b0

    cmpg-float v11, v3, v1

    if-gez v11, :cond_b0

    neg-int v11, v6

    int-to-float v11, v11

    cmpg-float v11, v4, v11

    if-gez v11, :cond_b0

    .line 429
    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v11}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmDisambiguateSwipe(Landroid/inputmethodservice/KeyboardView;)Z

    move-result v11

    if-eqz v11, :cond_aa

    div-float v11, p3, v12

    cmpl-float v11, v8, v11

    if-lez v11, :cond_aa

    .line 430
    const/4 v10, 0x1

    goto :goto_10a

    .line 432
    :cond_aa
    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView;->swipeLeft()V

    .line 433
    return v13

    .line 435
    :cond_b0
    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v11}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmSwipeThreshold(Landroid/inputmethodservice/KeyboardView;)I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    cmpg-float v11, p4, v11

    if-gez v11, :cond_dc

    cmpg-float v11, v1, v3

    if-gez v11, :cond_dc

    neg-int v11, v7

    int-to-float v11, v11

    cmpg-float v11, v5, v11

    if-gez v11, :cond_dc

    .line 436
    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v11}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmDisambiguateSwipe(Landroid/inputmethodservice/KeyboardView;)Z

    move-result v11

    if-eqz v11, :cond_d6

    div-float v11, p4, v12

    cmpl-float v11, v9, v11

    if-lez v11, :cond_d6

    .line 437
    const/4 v10, 0x1

    goto :goto_10a

    .line 439
    :cond_d6
    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView;->swipeUp()V

    .line 440
    return v13

    .line 442
    :cond_dc
    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v11}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmSwipeThreshold(Landroid/inputmethodservice/KeyboardView;)I

    move-result v11

    int-to-float v11, v11

    cmpl-float v11, p4, v11

    if-lez v11, :cond_10a

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v3, v11

    cmpg-float v11, v1, v11

    if-gez v11, :cond_10a

    int-to-float v11, v7

    cmpl-float v11, v5, v11

    if-lez v11, :cond_10a

    .line 443
    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v11}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmDisambiguateSwipe(Landroid/inputmethodservice/KeyboardView;)Z

    move-result v11

    if-eqz v11, :cond_104

    div-float v11, p4, v12

    cmpg-float v11, v9, v11

    if-gez v11, :cond_104

    .line 444
    const/4 v10, 0x1

    goto :goto_10a

    .line 446
    :cond_104
    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView;->swipeDown()V

    .line 447
    return v13

    .line 451
    :cond_10a
    :goto_10a
    if-eqz v10, :cond_127

    .line 452
    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    iget-object v12, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v12}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmDownKey(Landroid/inputmethodservice/KeyboardView;)I

    move-result v12

    iget-object v13, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v13}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmStartX(Landroid/inputmethodservice/KeyboardView;)I

    move-result v13

    iget-object v14, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v14}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmStartY(Landroid/inputmethodservice/KeyboardView;)I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v15

    invoke-static/range {v11 .. v16}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$mdetectAndSendKey(Landroid/inputmethodservice/KeyboardView;IIIJ)V

    .line 454
    :cond_127
    return v2
.end method
