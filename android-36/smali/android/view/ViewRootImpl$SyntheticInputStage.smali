.class final Landroid/view/ViewRootImpl$SyntheticInputStage;
.super Landroid/view/ViewRootImpl$InputStage;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticInputStage"
.end annotation


# instance fields
.field private final greylist-max-o mJoystick:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

.field private final greylist-max-o mKeyboard:Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;

.field private final greylist-max-o mTouchNavigation:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

.field private final greylist-max-o mTrackball:Landroid/view/ViewRootImpl$SyntheticTrackballHandler;

.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 4
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 8438
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 8439
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 8432
    new-instance v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTrackball:Landroid/view/ViewRootImpl$SyntheticTrackballHandler;

    .line 8433
    new-instance v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mJoystick:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    .line 8434
    new-instance v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTouchNavigation:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    .line 8436
    new-instance v0, Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mKeyboard:Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;

    .line 8440
    return-void
.end method


# virtual methods
.method protected greylist-max-o onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 5
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 8473
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_29

    .line 8475
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/MotionEvent;

    if-eqz v0, :cond_29

    .line 8476
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 8477
    .local v0, "event":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    .line 8478
    .local v1, "source":I
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_1e

    .line 8479
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTrackball:Landroid/view/ViewRootImpl$SyntheticTrackballHandler;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->cancel()V

    goto :goto_29

    .line 8480
    :cond_1e
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_28

    .line 8481
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mJoystick:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-static {v2}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->-$$Nest$mcancel(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;)V

    goto :goto_29

    .line 8482
    :cond_28
    nop

    .line 8489
    .end local v0    # "event":Landroid/view/MotionEvent;
    .end local v1    # "source":I
    :cond_29
    :goto_29
    invoke-super {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 8490
    return-void
.end method

.method protected greylist-max-o onDetachedFromWindow()V
    .registers 2

    .line 8501
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mJoystick:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-static {v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->-$$Nest$mcancel(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;)V

    .line 8502
    return-void
.end method

.method protected greylist-max-o onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .registers 7
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 8444
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 8445
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/MotionEvent;

    const/4 v1, 0x1

    if-eqz v0, :cond_3f

    .line 8446
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 8447
    .local v0, "event":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    .line 8448
    .local v2, "source":I
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_28

    .line 8451
    const v3, 0x20004

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v3

    if-nez v3, :cond_27

    .line 8452
    iget-object v3, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTrackball:Landroid/view/ViewRootImpl$SyntheticTrackballHandler;

    invoke-virtual {v3, v0}, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->process(Landroid/view/MotionEvent;)V

    .line 8454
    :cond_27
    return v1

    .line 8455
    :cond_28
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_32

    .line 8456
    iget-object v3, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mJoystick:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-virtual {v3, v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->process(Landroid/view/MotionEvent;)V

    .line 8457
    return v1

    .line 8458
    :cond_32
    const/high16 v3, 0x200000

    and-int v4, v2, v3

    if-ne v4, v3, :cond_3e

    .line 8460
    iget-object v3, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTouchNavigation:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    invoke-virtual {v3, v0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->process(Landroid/view/MotionEvent;)V

    .line 8461
    return v1

    .line 8458
    .end local v0    # "event":Landroid/view/MotionEvent;
    .end local v2    # "source":I
    :cond_3e
    goto :goto_4f

    .line 8463
    :cond_3f
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4f

    .line 8464
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mKeyboard:Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;

    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v2, Landroid/view/KeyEvent;

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;->process(Landroid/view/KeyEvent;)V

    .line 8465
    return v1

    .line 8463
    :cond_4f
    :goto_4f
    nop

    .line 8468
    const/4 v0, 0x0

    return v0
.end method

.method protected greylist-max-o onWindowFocusChanged(Z)V
    .registers 3
    .param p1, "hasWindowFocus"    # Z

    .line 8494
    if-nez p1, :cond_7

    .line 8495
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mJoystick:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-static {v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->-$$Nest$mcancel(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;)V

    .line 8497
    :cond_7
    return-void
.end method
