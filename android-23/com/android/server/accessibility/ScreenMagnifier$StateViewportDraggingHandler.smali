.class final Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;
.super Ljava/lang/Object;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StateViewportDraggingHandler"
.end annotation


# instance fields
.field private mLastMoveOutsideMagnifiedRegion:Z

.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->onMotionEvent(Landroid/view/MotionEvent;I)V

    #@3
    return-void
.end method

.method private constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    #@0
    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;)V

    #@3
    return-void
.end method

.method private onMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 585
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@5
    move-result v0

    #@6
    .line 586
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    #@9
    .line 584
    :goto_0
    :pswitch_0
    return-void

    #@a
    .line 588
    :pswitch_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v4, "Unexpected event type: ACTION_DOWN"

    #@f
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v3

    #@13
    .line 591
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->clear()V

    #@16
    .line 592
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@18
    const/4 v4, 0x4

    #@19
    invoke-static {v3, v4}, Lcom/android/server/accessibility/ScreenMagnifier;->-wrap9(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    #@1c
    goto :goto_0

    #@1d
    .line 595
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@20
    move-result v3

    #@21
    if-eq v3, v6, :cond_0

    #@23
    .line 596
    new-instance v3, Ljava/lang/IllegalStateException;

    #@25
    const-string/jumbo v4, "Should have one pointer down."

    #@28
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v3

    #@2c
    .line 598
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@2f
    move-result v1

    #@30
    .line 599
    .local v1, "eventX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@33
    move-result v2

    #@34
    .line 600
    .local v2, "eventY":F
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@36
    invoke-static {v3}, Lcom/android/server/accessibility/ScreenMagnifier;->-get4(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/graphics/Region;

    #@39
    move-result-object v3

    #@3a
    float-to-int v4, v1

    #@3b
    float-to-int v5, v2

    #@3c
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Region;->contains(II)Z

    #@3f
    move-result v3

    #@40
    if-eqz v3, :cond_2

    #@42
    .line 601
    iget-boolean v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->mLastMoveOutsideMagnifiedRegion:Z

    #@44
    if-eqz v3, :cond_1

    #@46
    .line 602
    iput-boolean v7, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->mLastMoveOutsideMagnifiedRegion:Z

    #@48
    .line 603
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@4a
    invoke-static {v3}, Lcom/android/server/accessibility/ScreenMagnifier;->-get3(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v3, v1, v2, v6}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setMagnifiedRegionCenter(FFZ)V

    #@51
    goto :goto_0

    #@52
    .line 606
    :cond_1
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@54
    invoke-static {v3}, Lcom/android/server/accessibility/ScreenMagnifier;->-get3(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@57
    move-result-object v3

    #@58
    invoke-virtual {v3, v1, v2, v7}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setMagnifiedRegionCenter(FFZ)V

    #@5b
    goto :goto_0

    #@5c
    .line 610
    :cond_2
    iput-boolean v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->mLastMoveOutsideMagnifiedRegion:Z

    #@5e
    goto :goto_0

    #@5f
    .line 614
    .end local v1    # "eventX":F
    .end local v2    # "eventY":F
    :pswitch_4
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@61
    invoke-static {v3}, Lcom/android/server/accessibility/ScreenMagnifier;->-get10(Lcom/android/server/accessibility/ScreenMagnifier;)Z

    #@64
    move-result v3

    #@65
    if-nez v3, :cond_3

    #@67
    .line 615
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@69
    invoke-static {v3}, Lcom/android/server/accessibility/ScreenMagnifier;->-get3(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@6c
    move-result-object v3

    #@6d
    invoke-virtual {v3, v6}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->reset(Z)V

    #@70
    .line 617
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->clear()V

    #@73
    .line 618
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@75
    const/4 v4, 0x2

    #@76
    invoke-static {v3, v4}, Lcom/android/server/accessibility/ScreenMagnifier;->-wrap9(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    #@79
    goto :goto_0

    #@7a
    .line 621
    :pswitch_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@7c
    const-string/jumbo v4, "Unexpected event type: ACTION_POINTER_UP"

    #@7f
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@82
    throw v3

    #@83
    .line 586
    nop

    #@84
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


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 627
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->mLastMoveOutsideMagnifiedRegion:Z

    #@3
    .line 626
    return-void
.end method
