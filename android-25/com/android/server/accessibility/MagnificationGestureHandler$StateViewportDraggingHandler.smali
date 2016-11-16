.class final Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;
.super Ljava/lang/Object;
.source "MagnificationGestureHandler.java"

# interfaces
.implements Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StateViewportDraggingHandler"
.end annotation


# instance fields
.field private mLastMoveOutsideMagnifiedRegion:Z

.field final synthetic this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/MagnificationGestureHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@0
    .prologue
    .line 452
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;-><init>(Lcom/android/server/accessibility/MagnificationGestureHandler;)V

    #@3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 505
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->mLastMoveOutsideMagnifiedRegion:Z

    #@3
    .line 504
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 458
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@5
    move-result v0

    #@6
    .line 459
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    #@9
    .line 457
    :goto_0
    :pswitch_0
    return-void

    #@a
    .line 461
    :pswitch_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v4, "Unexpected event type: ACTION_DOWN"

    #@f
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v3

    #@13
    .line 464
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->clear()V

    #@16
    .line 465
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@18
    const/4 v4, 0x4

    #@19
    invoke-static {v3, v4}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-wrap0(Lcom/android/server/accessibility/MagnificationGestureHandler;I)V

    #@1c
    goto :goto_0

    #@1d
    .line 469
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@20
    move-result v3

    #@21
    if-eq v3, v5, :cond_0

    #@23
    .line 470
    new-instance v3, Ljava/lang/IllegalStateException;

    #@25
    const-string/jumbo v4, "Should have one pointer down."

    #@28
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v3

    #@2c
    .line 472
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@2f
    move-result v1

    #@30
    .line 473
    .local v1, "eventX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@33
    move-result v2

    #@34
    .line 474
    .local v2, "eventY":F
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@36
    invoke-static {v3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3, v1, v2}, Lcom/android/server/accessibility/MagnificationController;->magnificationRegionContains(FF)Z

    #@3d
    move-result v3

    #@3e
    if-eqz v3, :cond_2

    #@40
    .line 475
    iget-boolean v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->mLastMoveOutsideMagnifiedRegion:Z

    #@42
    if-eqz v3, :cond_1

    #@44
    .line 476
    iput-boolean v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->mLastMoveOutsideMagnifiedRegion:Z

    #@46
    .line 477
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@48
    invoke-static {v3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3, v1, v2, v5, v4}, Lcom/android/server/accessibility/MagnificationController;->setCenter(FFZI)Z

    #@4f
    goto :goto_0

    #@50
    .line 480
    :cond_1
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@52
    invoke-static {v3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {v3, v1, v2, v4, v4}, Lcom/android/server/accessibility/MagnificationController;->setCenter(FFZI)Z

    #@59
    goto :goto_0

    #@5a
    .line 484
    :cond_2
    iput-boolean v5, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->mLastMoveOutsideMagnifiedRegion:Z

    #@5c
    goto :goto_0

    #@5d
    .line 489
    .end local v1    # "eventX":F
    .end local v2    # "eventY":F
    :pswitch_4
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@5f
    invoke-static {v3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get3(Lcom/android/server/accessibility/MagnificationGestureHandler;)Z

    #@62
    move-result v3

    #@63
    if-nez v3, :cond_3

    #@65
    .line 490
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@67
    invoke-static {v3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    #@6a
    move-result-object v3

    #@6b
    invoke-virtual {v3, v5}, Lcom/android/server/accessibility/MagnificationController;->reset(Z)Z

    #@6e
    .line 492
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->clear()V

    #@71
    .line 493
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@73
    const/4 v4, 0x2

    #@74
    invoke-static {v3, v4}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-wrap0(Lcom/android/server/accessibility/MagnificationGestureHandler;I)V

    #@77
    goto :goto_0

    #@78
    .line 497
    :pswitch_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@7a
    .line 498
    const-string/jumbo v4, "Unexpected event type: ACTION_POINTER_UP"

    #@7d
    .line 497
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@80
    throw v3

    #@81
    .line 459
    nop

    #@82
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
