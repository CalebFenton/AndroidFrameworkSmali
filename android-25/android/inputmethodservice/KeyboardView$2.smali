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
.field final synthetic this$0:Landroid/inputmethodservice/KeyboardView;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/KeyboardView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/inputmethodservice/KeyboardView;

    #@0
    .prologue
    .line 396
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@2
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 15
    .param p1, "me1"    # Landroid/view/MotionEvent;
    .param p2, "me2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    #@0
    .prologue
    .line 400
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@2
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->-get3(Landroid/inputmethodservice/KeyboardView;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 401
    :cond_0
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    #@d
    move-result v6

    #@e
    .line 402
    .local v6, "absX":F
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    #@11
    move-result v7

    #@12
    .line 403
    .local v7, "absY":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    #@15
    move-result v0

    #@16
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@19
    move-result v1

    #@1a
    sub-float v8, v0, v1

    #@1c
    .line 404
    .local v8, "deltaX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    #@1f
    move-result v0

    #@20
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@23
    move-result v1

    #@24
    sub-float v9, v0, v1

    #@26
    .line 405
    .local v9, "deltaY":F
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@28
    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    #@2b
    move-result v0

    #@2c
    div-int/lit8 v13, v0, 0x2

    #@2e
    .line 406
    .local v13, "travelX":I
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@30
    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    #@33
    move-result v0

    #@34
    div-int/lit8 v14, v0, 0x2

    #@36
    .line 407
    .local v14, "travelY":I
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@38
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->-get8(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    #@3b
    move-result-object v0

    #@3c
    const/16 v1, 0x3e8

    #@3e
    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->computeCurrentVelocity(I)V

    #@41
    .line 408
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@43
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->-get8(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->getXVelocity()F

    #@4a
    move-result v10

    #@4b
    .line 409
    .local v10, "endingVelocityX":F
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@4d
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->-get8(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->getYVelocity()F

    #@54
    move-result v11

    #@55
    .line 410
    .local v11, "endingVelocityY":F
    const/4 v12, 0x0

    #@56
    .line 411
    .local v12, "sendDownKey":Z
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@58
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->-get7(Landroid/inputmethodservice/KeyboardView;)I

    #@5b
    move-result v0

    #@5c
    int-to-float v0, v0

    #@5d
    cmpl-float v0, p3, v0

    #@5f
    if-lez v0, :cond_4

    #@61
    cmpg-float v0, v7, v6

    #@63
    if-gez v0, :cond_4

    #@65
    int-to-float v0, v13

    #@66
    cmpl-float v0, v8, v0

    #@68
    if-lez v0, :cond_4

    #@6a
    .line 412
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@6c
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->-get0(Landroid/inputmethodservice/KeyboardView;)Z

    #@6f
    move-result v0

    #@70
    if-eqz v0, :cond_3

    #@72
    const/high16 v0, 0x40800000    # 4.0f

    #@74
    div-float v0, p3, v0

    #@76
    cmpg-float v0, v10, v0

    #@78
    if-gez v0, :cond_3

    #@7a
    .line 413
    const/4 v12, 0x1

    #@7b
    .line 441
    :cond_1
    :goto_0
    if-eqz v12, :cond_2

    #@7d
    .line 442
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@7f
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@81
    invoke-static {v1}, Landroid/inputmethodservice/KeyboardView;->-get1(Landroid/inputmethodservice/KeyboardView;)I

    #@84
    move-result v1

    #@85
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@87
    invoke-static {v2}, Landroid/inputmethodservice/KeyboardView;->-get5(Landroid/inputmethodservice/KeyboardView;)I

    #@8a
    move-result v2

    #@8b
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@8d
    invoke-static {v3}, Landroid/inputmethodservice/KeyboardView;->-get6(Landroid/inputmethodservice/KeyboardView;)I

    #@90
    move-result v3

    #@91
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@94
    move-result-wide v4

    #@95
    invoke-static/range {v0 .. v5}, Landroid/inputmethodservice/KeyboardView;->-wrap2(Landroid/inputmethodservice/KeyboardView;IIIJ)V

    #@98
    .line 444
    :cond_2
    const/4 v0, 0x0

    #@99
    return v0

    #@9a
    .line 415
    :cond_3
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@9c
    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->swipeRight()V

    #@9f
    .line 416
    const/4 v0, 0x1

    #@a0
    return v0

    #@a1
    .line 418
    :cond_4
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@a3
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->-get7(Landroid/inputmethodservice/KeyboardView;)I

    #@a6
    move-result v0

    #@a7
    neg-int v0, v0

    #@a8
    int-to-float v0, v0

    #@a9
    cmpg-float v0, p3, v0

    #@ab
    if-gez v0, :cond_6

    #@ad
    cmpg-float v0, v7, v6

    #@af
    if-gez v0, :cond_6

    #@b1
    neg-int v0, v13

    #@b2
    int-to-float v0, v0

    #@b3
    cmpg-float v0, v8, v0

    #@b5
    if-gez v0, :cond_6

    #@b7
    .line 419
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@b9
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->-get0(Landroid/inputmethodservice/KeyboardView;)Z

    #@bc
    move-result v0

    #@bd
    if-eqz v0, :cond_5

    #@bf
    const/high16 v0, 0x40800000    # 4.0f

    #@c1
    div-float v0, p3, v0

    #@c3
    cmpl-float v0, v10, v0

    #@c5
    if-lez v0, :cond_5

    #@c7
    .line 420
    const/4 v12, 0x1

    #@c8
    .line 419
    goto :goto_0

    #@c9
    .line 422
    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@cb
    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->swipeLeft()V

    #@ce
    .line 423
    const/4 v0, 0x1

    #@cf
    return v0

    #@d0
    .line 425
    :cond_6
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@d2
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->-get7(Landroid/inputmethodservice/KeyboardView;)I

    #@d5
    move-result v0

    #@d6
    neg-int v0, v0

    #@d7
    int-to-float v0, v0

    #@d8
    cmpg-float v0, p4, v0

    #@da
    if-gez v0, :cond_8

    #@dc
    cmpg-float v0, v6, v7

    #@de
    if-gez v0, :cond_8

    #@e0
    neg-int v0, v14

    #@e1
    int-to-float v0, v0

    #@e2
    cmpg-float v0, v9, v0

    #@e4
    if-gez v0, :cond_8

    #@e6
    .line 426
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@e8
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->-get0(Landroid/inputmethodservice/KeyboardView;)Z

    #@eb
    move-result v0

    #@ec
    if-eqz v0, :cond_7

    #@ee
    const/high16 v0, 0x40800000    # 4.0f

    #@f0
    div-float v0, p4, v0

    #@f2
    cmpl-float v0, v11, v0

    #@f4
    if-lez v0, :cond_7

    #@f6
    .line 427
    const/4 v12, 0x1

    #@f7
    .line 426
    goto :goto_0

    #@f8
    .line 429
    :cond_7
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@fa
    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->swipeUp()V

    #@fd
    .line 430
    const/4 v0, 0x1

    #@fe
    return v0

    #@ff
    .line 432
    :cond_8
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@101
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->-get7(Landroid/inputmethodservice/KeyboardView;)I

    #@104
    move-result v0

    #@105
    int-to-float v0, v0

    #@106
    cmpl-float v0, p4, v0

    #@108
    if-lez v0, :cond_1

    #@10a
    const/high16 v0, 0x40000000    # 2.0f

    #@10c
    div-float v0, v7, v0

    #@10e
    cmpg-float v0, v6, v0

    #@110
    if-gez v0, :cond_1

    #@112
    int-to-float v0, v14

    #@113
    cmpl-float v0, v9, v0

    #@115
    if-lez v0, :cond_1

    #@117
    .line 433
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@119
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->-get0(Landroid/inputmethodservice/KeyboardView;)Z

    #@11c
    move-result v0

    #@11d
    if-eqz v0, :cond_9

    #@11f
    const/high16 v0, 0x40800000    # 4.0f

    #@121
    div-float v0, p4, v0

    #@123
    cmpg-float v0, v11, v0

    #@125
    if-gez v0, :cond_9

    #@127
    .line 434
    const/4 v12, 0x1

    #@128
    .line 433
    goto/16 :goto_0

    #@12a
    .line 436
    :cond_9
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@12c
    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->swipeDown()V

    #@12f
    .line 437
    const/4 v0, 0x1

    #@130
    return v0
.end method
