.class final Landroid/view/ViewRootImpl$WindowInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WindowInputEventReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 10649
    iput-object p1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    .line 10650
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 10651
    return-void
.end method


# virtual methods
.method public greylist-max-o dispose()V
    .registers 2

    .line 10701
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->unscheduleConsumeBatchedInput()V

    .line 10702
    invoke-super {p0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 10703
    return-void
.end method

.method public blacklist onBatchedInputEventPending(I)V
    .registers 5
    .param p1, "source"    # I

    .line 10660
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    iget v0, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputSource:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    .line 10662
    .local v0, "unbuffered":Z
    :goto_11
    if-eqz v0, :cond_24

    .line 10663
    iget-object v1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v1, v1, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz v1, :cond_1e

    .line 10664
    iget-object v1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->unscheduleConsumeBatchedInput()V

    .line 10667
    :cond_1e
    const-wide/16 v1, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->consumeBatchedInputEvents(J)Z

    .line 10668
    return-void

    .line 10670
    :cond_24
    iget-object v1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    .line 10671
    return-void
.end method

.method public blacklist onDragEvent(ZFFI)V
    .registers 19
    .param p1, "isExiting"    # Z
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "displayId"    # I

    .line 10692
    if-eqz p1, :cond_4

    const/4 v0, 0x6

    goto :goto_5

    :cond_4
    const/4 v0, 0x2

    :goto_5
    move v1, v0

    .line 10691
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    invoke-static/range {v1 .. v13}, Landroid/view/DragEvent;->obtain(IFFFFIILjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v0

    .line 10696
    .local v0, "event":Landroid/view/DragEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 10697
    return-void
.end method

.method public blacklist onFocusEvent(Z)V
    .registers 3
    .param p1, "hasFocus"    # Z

    .line 10675
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->windowFocusChanged(Z)V

    .line 10676
    return-void
.end method

.method public blacklist onInputEvent(Landroid/view/InputEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 10655
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->processRawInputEvent(Landroid/view/InputEvent;)V

    .line 10656
    return-void
.end method

.method public blacklist onPointerCaptureEvent(Z)V
    .registers 3
    .param p1, "pointerCaptureEnabled"    # Z

    .line 10685
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->-$$Nest$mdispatchPointerCaptureChanged(Landroid/view/ViewRootImpl;Z)V

    .line 10686
    return-void
.end method

.method public blacklist onTouchModeChanged(Z)V
    .registers 3
    .param p1, "inTouchMode"    # Z

    .line 10680
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->touchModeChanged(Z)V

    .line 10681
    return-void
.end method
