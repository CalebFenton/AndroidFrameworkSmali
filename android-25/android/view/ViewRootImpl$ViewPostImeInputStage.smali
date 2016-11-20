.class final Landroid/view/ViewRootImpl$ViewPostImeInputStage;
.super Landroid/view/ViewRootImpl$InputStage;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewPostImeInputStage"
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
    .line 4295
    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@2
    .line 4296
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    #@5
    .line 4295
    return-void
.end method

.method private maybeUpdatePointerIcon(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/16 v3, 0xa

    #@2
    const/4 v2, 0x1

    #@3
    .line 4451
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@6
    move-result v0

    #@7
    if-ne v0, v2, :cond_2

    #@9
    const/16 v0, 0x2002

    #@b
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_2

    #@11
    .line 4452
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@14
    move-result v0

    #@15
    const/16 v1, 0x9

    #@17
    if-eq v0, v1, :cond_0

    #@19
    .line 4453
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@1c
    move-result v0

    #@1d
    if-ne v0, v3, :cond_1

    #@1f
    .line 4456
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@21
    invoke-static {v0, v2}, Landroid/view/ViewRootImpl;->-set0(Landroid/view/ViewRootImpl;I)I

    #@24
    .line 4459
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@27
    move-result v0

    #@28
    if-eq v0, v3, :cond_2

    #@2a
    .line 4460
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@2c
    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->-wrap4(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)Z

    #@2f
    move-result v0

    #@30
    if-nez v0, :cond_2

    #@32
    .line 4461
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@35
    move-result v0

    #@36
    const/4 v1, 0x7

    #@37
    if-ne v0, v1, :cond_2

    #@39
    .line 4462
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@3b
    invoke-static {v0, v2}, Landroid/view/ViewRootImpl;->-set0(Landroid/view/ViewRootImpl;I)I

    #@3e
    .line 4450
    :cond_2
    return-void
.end method

.method private processGenericMotionEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    .line 4478
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@2
    check-cast v0, Landroid/view/MotionEvent;

    #@4
    .line 4481
    .local v0, "event":Landroid/view/MotionEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@6
    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@8
    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 4482
    const/4 v1, 0x1

    #@f
    return v1

    #@10
    .line 4484
    :cond_0
    const/4 v1, 0x0

    #@11
    return v1
.end method

.method private processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 9
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    const/4 v6, 0x1

    #@4
    .line 4328
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@6
    check-cast v1, Landroid/view/KeyEvent;

    #@8
    .line 4331
    .local v1, "event":Landroid/view/KeyEvent;
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@a
    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@c
    invoke-virtual {v4, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_0

    #@12
    .line 4332
    return v6

    #@13
    .line 4335
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_1

    #@19
    .line 4336
    return v8

    #@1a
    .line 4340
    :cond_1
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    #@1d
    move-result v4

    #@1e
    if-nez v4, :cond_2

    #@20
    .line 4341
    invoke-virtual {v1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    #@23
    move-result v4

    #@24
    .line 4340
    if-eqz v4, :cond_2

    #@26
    .line 4342
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@29
    move-result v4

    #@2a
    if-nez v4, :cond_2

    #@2c
    .line 4343
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@2f
    move-result v4

    #@30
    invoke-static {v4}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    #@33
    move-result v4

    #@34
    if-eqz v4, :cond_3

    #@36
    .line 4353
    :cond_2
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@38
    iget-object v4, v4, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    #@3a
    invoke-interface {v4, v1}, Landroid/view/FallbackEventHandler;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@3d
    move-result v4

    #@3e
    if-eqz v4, :cond_5

    #@40
    .line 4354
    return v6

    #@41
    .line 4344
    :cond_3
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@43
    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@45
    invoke-virtual {v4, v1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    #@48
    move-result v4

    #@49
    if-eqz v4, :cond_4

    #@4b
    .line 4345
    return v6

    #@4c
    .line 4347
    :cond_4
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    #@4f
    move-result v4

    #@50
    if-eqz v4, :cond_2

    #@52
    .line 4348
    return v8

    #@53
    .line 4356
    :cond_5
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    #@56
    move-result v4

    #@57
    if-eqz v4, :cond_6

    #@59
    .line 4357
    return v8

    #@5a
    .line 4361
    :cond_6
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    #@5d
    move-result v4

    #@5e
    if-nez v4, :cond_c

    #@60
    .line 4362
    const/4 v0, 0x0

    #@61
    .line 4363
    .local v0, "direction":I
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@64
    move-result v4

    #@65
    sparse-switch v4, :sswitch_data_0

    #@68
    .line 4392
    :cond_7
    :goto_0
    if-eqz v0, :cond_c

    #@6a
    .line 4393
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@6c
    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@6e
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@71
    move-result-object v2

    #@72
    .line 4394
    .local v2, "focused":Landroid/view/View;
    if-eqz v2, :cond_b

    #@74
    .line 4395
    invoke-virtual {v2, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    #@77
    move-result-object v3

    #@78
    .line 4396
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_a

    #@7a
    if-eq v3, v2, :cond_a

    #@7c
    .line 4400
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@7e
    iget-object v4, v4, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@80
    invoke-virtual {v2, v4}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    #@83
    .line 4401
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@85
    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@87
    instance-of v4, v4, Landroid/view/ViewGroup;

    #@89
    if-eqz v4, :cond_8

    #@8b
    .line 4402
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@8d
    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@8f
    check-cast v4, Landroid/view/ViewGroup;

    #@91
    .line 4403
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@93
    iget-object v5, v5, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@95
    .line 4402
    invoke-virtual {v4, v2, v5}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@98
    .line 4404
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@9a
    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@9c
    check-cast v4, Landroid/view/ViewGroup;

    #@9e
    .line 4405
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@a0
    iget-object v5, v5, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@a2
    .line 4404
    invoke-virtual {v4, v3, v5}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@a5
    .line 4407
    :cond_8
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@a7
    iget-object v4, v4, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@a9
    invoke-virtual {v3, v0, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    #@ac
    move-result v4

    #@ad
    if-eqz v4, :cond_a

    #@af
    .line 4408
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@b1
    invoke-static {v0}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    #@b4
    move-result v5

    #@b5
    invoke-virtual {v4, v5}, Landroid/view/ViewRootImpl;->playSoundEffect(I)V

    #@b8
    .line 4410
    return v6

    #@b9
    .line 4365
    .end local v2    # "focused":Landroid/view/View;
    .end local v3    # "v":Landroid/view/View;
    :sswitch_0
    invoke-virtual {v1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@bc
    move-result v4

    #@bd
    if-eqz v4, :cond_7

    #@bf
    .line 4366
    const/16 v0, 0x11

    #@c1
    goto :goto_0

    #@c2
    .line 4370
    :sswitch_1
    invoke-virtual {v1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@c5
    move-result v4

    #@c6
    if-eqz v4, :cond_7

    #@c8
    .line 4371
    const/16 v0, 0x42

    #@ca
    goto :goto_0

    #@cb
    .line 4375
    :sswitch_2
    invoke-virtual {v1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@ce
    move-result v4

    #@cf
    if-eqz v4, :cond_7

    #@d1
    .line 4376
    const/16 v0, 0x21

    #@d3
    goto :goto_0

    #@d4
    .line 4380
    :sswitch_3
    invoke-virtual {v1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@d7
    move-result v4

    #@d8
    if-eqz v4, :cond_7

    #@da
    .line 4381
    const/16 v0, 0x82

    #@dc
    goto :goto_0

    #@dd
    .line 4385
    :sswitch_4
    invoke-virtual {v1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@e0
    move-result v4

    #@e1
    if-eqz v4, :cond_9

    #@e3
    .line 4386
    const/4 v0, 0x2

    #@e4
    goto :goto_0

    #@e5
    .line 4387
    :cond_9
    invoke-virtual {v1, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    #@e8
    move-result v4

    #@e9
    if-eqz v4, :cond_7

    #@eb
    .line 4388
    const/4 v0, 0x1

    #@ec
    goto/16 :goto_0

    #@ee
    .line 4415
    .restart local v2    # "focused":Landroid/view/View;
    .restart local v3    # "v":Landroid/view/View;
    :cond_a
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@f0
    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@f2
    invoke-virtual {v4, v2, v0}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    #@f5
    move-result v4

    #@f6
    if-eqz v4, :cond_c

    #@f8
    .line 4416
    return v6

    #@f9
    .line 4420
    .end local v3    # "v":Landroid/view/View;
    :cond_b
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@fb
    invoke-virtual {v4, v5, v0}, Landroid/view/ViewRootImpl;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    #@fe
    move-result-object v3

    #@ff
    .line 4421
    .restart local v3    # "v":Landroid/view/View;
    if-eqz v3, :cond_c

    #@101
    invoke-virtual {v3, v0}, Landroid/view/View;->requestFocus(I)Z

    #@104
    move-result v4

    #@105
    if-eqz v4, :cond_c

    #@107
    .line 4422
    return v6

    #@108
    .line 4427
    .end local v0    # "direction":I
    .end local v2    # "focused":Landroid/view/View;
    .end local v3    # "v":Landroid/view/View;
    :cond_c
    return v7

    #@109
    .line 4363
    nop

    #@10a
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_4
    .end sparse-switch
.end method

.method private processPointerEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 6
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 4431
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@4
    check-cast v0, Landroid/view/MotionEvent;

    #@6
    .line 4433
    .local v0, "event":Landroid/view/MotionEvent;
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@8
    iget-object v5, v5, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@a
    iput-boolean v4, v5, Landroid/view/View$AttachInfo;->mUnbufferedDispatchRequested:Z

    #@c
    .line 4435
    const/16 v5, 0x2002

    #@e
    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->isFromSource(I)Z

    #@11
    move-result v5

    #@12
    if-eqz v5, :cond_1

    #@14
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@16
    iget-object v5, v5, Landroid/view/ViewRootImpl;->mCapturingView:Landroid/view/View;

    #@18
    if-eqz v5, :cond_1

    #@1a
    .line 4436
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@1c
    iget-object v1, v5, Landroid/view/ViewRootImpl;->mCapturingView:Landroid/view/View;

    #@1e
    .line 4437
    .local v1, "eventTarget":Landroid/view/View;
    :goto_0
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@20
    iget-object v5, v5, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@22
    iput-boolean v3, v5, Landroid/view/View$AttachInfo;->mHandlingPointerEvent:Z

    #@24
    .line 4438
    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    #@27
    move-result v2

    #@28
    .line 4439
    .local v2, "handled":Z
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->maybeUpdatePointerIcon(Landroid/view/MotionEvent;)V

    #@2b
    .line 4440
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@2d
    iget-object v5, v5, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2f
    iput-boolean v4, v5, Landroid/view/View$AttachInfo;->mHandlingPointerEvent:Z

    #@31
    .line 4441
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@33
    iget-object v5, v5, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@35
    iget-boolean v5, v5, Landroid/view/View$AttachInfo;->mUnbufferedDispatchRequested:Z

    #@37
    if-eqz v5, :cond_0

    #@39
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@3b
    iget-boolean v5, v5, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    #@3d
    if-eqz v5, :cond_2

    #@3f
    .line 4447
    :cond_0
    :goto_1
    if-eqz v2, :cond_3

    #@41
    :goto_2
    return v3

    #@42
    .line 4436
    .end local v1    # "eventTarget":Landroid/view/View;
    .end local v2    # "handled":Z
    :cond_1
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@44
    iget-object v1, v5, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@46
    .restart local v1    # "eventTarget":Landroid/view/View;
    goto :goto_0

    #@47
    .line 4442
    .restart local v2    # "handled":Z
    :cond_2
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@49
    iput-boolean v3, v5, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    #@4b
    .line 4443
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@4d
    iget-boolean v5, v5, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    #@4f
    if-eqz v5, :cond_0

    #@51
    .line 4444
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@53
    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInputImmediately()V

    #@56
    goto :goto_1

    #@57
    :cond_3
    move v3, v4

    #@58
    .line 4447
    goto :goto_2
.end method

.method private processTrackballEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    .line 4469
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@2
    check-cast v0, Landroid/view/MotionEvent;

    #@4
    .line 4471
    .local v0, "event":Landroid/view/MotionEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@6
    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@8
    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 4472
    const/4 v1, 0x1

    #@f
    return v1

    #@10
    .line 4474
    :cond_0
    const/4 v1, 0x0

    #@11
    return v1
.end method


# virtual methods
.method protected onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    .line 4317
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@2
    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 4318
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@8
    instance-of v0, v0, Landroid/view/MotionEvent;

    #@a
    .line 4317
    if-eqz v0, :cond_0

    #@c
    .line 4319
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@e
    check-cast v0, Landroid/view/MotionEvent;

    #@10
    invoke-virtual {v0}, Landroid/view/MotionEvent;->isTouchEvent()Z

    #@13
    move-result v0

    #@14
    .line 4317
    if-eqz v0, :cond_0

    #@16
    .line 4320
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@18
    invoke-static {v0}, Landroid/view/ViewRootImpl;->isTerminalInputEvent(Landroid/view/InputEvent;)Z

    #@1b
    move-result v0

    #@1c
    .line 4317
    if-eqz v0, :cond_0

    #@1e
    .line 4321
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@20
    const/4 v1, 0x0

    #@21
    iput-boolean v1, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    #@23
    .line 4322
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@25
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    #@28
    .line 4324
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    #@2b
    .line 4316
    return-void
.end method

.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    .line 4301
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@2
    instance-of v1, v1, Landroid/view/KeyEvent;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 4302
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 4304
    :cond_0
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@d
    invoke-virtual {v1}, Landroid/view/InputEvent;->getSource()I

    #@10
    move-result v0

    #@11
    .line 4305
    .local v0, "source":I
    and-int/lit8 v1, v0, 0x2

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 4306
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processPointerEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    #@18
    move-result v1

    #@19
    return v1

    #@1a
    .line 4307
    :cond_1
    and-int/lit8 v1, v0, 0x4

    #@1c
    if-eqz v1, :cond_2

    #@1e
    .line 4308
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processTrackballEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    #@21
    move-result v1

    #@22
    return v1

    #@23
    .line 4310
    :cond_2
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processGenericMotionEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    #@26
    move-result v1

    #@27
    return v1
.end method
