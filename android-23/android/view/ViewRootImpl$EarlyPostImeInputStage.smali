.class final Landroid/view/ViewRootImpl$EarlyPostImeInputStage;
.super Landroid/view/ViewRootImpl$InputStage;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EarlyPostImeInputStage"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;

    #@0
    .prologue
    .line 3989
    iput-object p1, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@2
    .line 3990
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    #@5
    .line 3989
    return-void
.end method

.method private processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    .line 4007
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@2
    check-cast v0, Landroid/view/KeyEvent;

    #@4
    .line 4011
    .local v0, "event":Landroid/view/KeyEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@6
    invoke-static {v1, v0}, Landroid/view/ViewRootImpl;->-wrap1(Landroid/view/ViewRootImpl;Landroid/view/KeyEvent;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 4012
    const/4 v1, 0x1

    #@d
    return v1

    #@e
    .line 4017
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@10
    iget-object v1, v1, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    #@12
    invoke-interface {v1, v0}, Landroid/view/FallbackEventHandler;->preDispatchKeyEvent(Landroid/view/KeyEvent;)V

    #@15
    .line 4018
    const/4 v1, 0x0

    #@16
    return v1
.end method

.method private processPointerEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 5
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4022
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@3
    check-cast v1, Landroid/view/MotionEvent;

    #@5
    .line 4025
    .local v1, "event":Landroid/view/MotionEvent;
    iget-object v2, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@7
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 4026
    iget-object v2, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@d
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@f
    invoke-virtual {v2, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateEventInScreenToAppWindow(Landroid/view/MotionEvent;)V

    #@12
    .line 4030
    :cond_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    #@15
    move-result v0

    #@16
    .line 4031
    .local v0, "action":I
    if-eqz v0, :cond_1

    #@18
    const/16 v2, 0x8

    #@1a
    if-ne v0, v2, :cond_2

    #@1c
    .line 4032
    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@1e
    const/4 v3, 0x1

    #@1f
    invoke-virtual {v2, v3}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    #@22
    .line 4036
    :cond_2
    iget-object v2, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@24
    iget v2, v2, Landroid/view/ViewRootImpl;->mCurScrollY:I

    #@26
    if-eqz v2, :cond_3

    #@28
    .line 4037
    const/4 v2, 0x0

    #@29
    iget-object v3, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@2b
    iget v3, v3, Landroid/view/ViewRootImpl;->mCurScrollY:I

    #@2d
    int-to-float v3, v3

    #@2e
    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@31
    .line 4041
    :cond_3
    invoke-virtual {v1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    #@34
    move-result v2

    #@35
    if-eqz v2, :cond_4

    #@37
    .line 4042
    iget-object v2, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@39
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    #@3b
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    #@3e
    move-result v3

    #@3f
    iput v3, v2, Landroid/graphics/PointF;->x:F

    #@41
    .line 4043
    iget-object v2, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@43
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    #@45
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    #@48
    move-result v3

    #@49
    iput v3, v2, Landroid/graphics/PointF;->y:F

    #@4b
    .line 4045
    :cond_4
    return v4
.end method


# virtual methods
.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 3
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3995
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@3
    instance-of v1, v1, Landroid/view/KeyEvent;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 3996
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    #@a
    move-result v1

    #@b
    return v1

    #@c
    .line 3998
    :cond_0
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@e
    invoke-virtual {v1}, Landroid/view/InputEvent;->getSource()I

    #@11
    move-result v0

    #@12
    .line 3999
    .local v0, "source":I
    and-int/lit8 v1, v0, 0x2

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 4000
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->processPointerEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    #@19
    move-result v1

    #@1a
    return v1

    #@1b
    .line 4003
    :cond_1
    return v2
.end method
