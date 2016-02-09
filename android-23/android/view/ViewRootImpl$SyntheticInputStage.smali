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
.field private final mJoystick:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

.field private final mKeyboard:Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;

.field private final mTouchNavigation:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

.field private final mTrackball:Landroid/view/ViewRootImpl$SyntheticTrackballHandler;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 2
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    #@0
    .prologue
    .line 4270
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@2
    .line 4271
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p1, v0}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    #@6
    .line 4264
    new-instance v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;

    #@8
    iget-object v1, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@a
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;-><init>(Landroid/view/ViewRootImpl;)V

    #@d
    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTrackball:Landroid/view/ViewRootImpl$SyntheticTrackballHandler;

    #@f
    .line 4265
    new-instance v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    #@11
    iget-object v1, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@13
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;-><init>(Landroid/view/ViewRootImpl;)V

    #@16
    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mJoystick:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    #@18
    .line 4267
    new-instance v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    #@1a
    iget-object v1, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@1c
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;-><init>(Landroid/view/ViewRootImpl;)V

    #@1f
    .line 4266
    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTouchNavigation:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    #@21
    .line 4268
    new-instance v0, Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;

    #@23
    iget-object v1, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@25
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;-><init>(Landroid/view/ViewRootImpl;)V

    #@28
    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mKeyboard:Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;

    #@2a
    .line 4270
    return-void
.end method


# virtual methods
.method protected onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 4
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    const/high16 v3, 0x200000

    #@2
    .line 4301
    iget v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    #@4
    and-int/lit8 v2, v2, 0x10

    #@6
    if-nez v2, :cond_0

    #@8
    .line 4303
    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@a
    instance-of v2, v2, Landroid/view/MotionEvent;

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 4304
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@10
    check-cast v0, Landroid/view/MotionEvent;

    #@12
    .line 4305
    .local v0, "event":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    #@15
    move-result v1

    #@16
    .line 4306
    .local v1, "source":I
    and-int/lit8 v2, v1, 0x4

    #@18
    if-eqz v2, :cond_1

    #@1a
    .line 4307
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTrackball:Landroid/view/ViewRootImpl$SyntheticTrackballHandler;

    #@1c
    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->cancel(Landroid/view/MotionEvent;)V

    #@1f
    .line 4316
    .end local v0    # "event":Landroid/view/MotionEvent;
    .end local v1    # "source":I
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    #@22
    .line 4300
    return-void

    #@23
    .line 4308
    .restart local v0    # "event":Landroid/view/MotionEvent;
    .restart local v1    # "source":I
    :cond_1
    and-int/lit8 v2, v1, 0x10

    #@25
    if-eqz v2, :cond_2

    #@27
    .line 4309
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mJoystick:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    #@29
    invoke-static {v2, v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->-wrap0(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;Landroid/view/MotionEvent;)V

    #@2c
    goto :goto_0

    #@2d
    .line 4310
    :cond_2
    and-int v2, v1, v3

    #@2f
    if-ne v2, v3, :cond_0

    #@31
    .line 4312
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTouchNavigation:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    #@33
    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->cancel(Landroid/view/MotionEvent;)V

    #@36
    goto :goto_0
.end method

.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 6
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    const/high16 v5, 0x200000

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 4276
    iget v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    #@6
    or-int/lit8 v2, v2, 0x10

    #@8
    iput v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    #@a
    .line 4277
    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@c
    instance-of v2, v2, Landroid/view/MotionEvent;

    #@e
    if-eqz v2, :cond_2

    #@10
    .line 4278
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@12
    check-cast v0, Landroid/view/MotionEvent;

    #@14
    .line 4279
    .local v0, "event":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    #@17
    move-result v1

    #@18
    .line 4280
    .local v1, "source":I
    and-int/lit8 v2, v1, 0x4

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 4281
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTrackball:Landroid/view/ViewRootImpl$SyntheticTrackballHandler;

    #@1e
    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->process(Landroid/view/MotionEvent;)V

    #@21
    .line 4282
    return v4

    #@22
    .line 4283
    :cond_0
    and-int/lit8 v2, v1, 0x10

    #@24
    if-eqz v2, :cond_1

    #@26
    .line 4284
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mJoystick:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    #@28
    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->process(Landroid/view/MotionEvent;)V

    #@2b
    .line 4285
    return v4

    #@2c
    .line 4286
    :cond_1
    and-int v2, v1, v5

    #@2e
    if-ne v2, v5, :cond_3

    #@30
    .line 4288
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTouchNavigation:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    #@32
    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->process(Landroid/view/MotionEvent;)V

    #@35
    .line 4289
    return v4

    #@36
    .line 4291
    .end local v0    # "event":Landroid/view/MotionEvent;
    .end local v1    # "source":I
    :cond_2
    iget v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    #@38
    and-int/lit8 v2, v2, 0x20

    #@3a
    if-eqz v2, :cond_3

    #@3c
    .line 4292
    iget-object v3, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mKeyboard:Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;

    #@3e
    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@40
    check-cast v2, Landroid/view/KeyEvent;

    #@42
    invoke-virtual {v3, v2}, Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;->process(Landroid/view/KeyEvent;)V

    #@45
    .line 4293
    return v4

    #@46
    .line 4296
    :cond_3
    return v3
.end method
