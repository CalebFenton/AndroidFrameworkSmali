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
    .line 4082
    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@2
    .line 4083
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    #@5
    .line 4082
    return-void
.end method

.method private processGenericMotionEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    .line 4250
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@2
    check-cast v0, Landroid/view/MotionEvent;

    #@4
    .line 4253
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
    .line 4254
    const/4 v1, 0x1

    #@f
    return v1

    #@10
    .line 4256
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
    .line 4118
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@6
    check-cast v1, Landroid/view/KeyEvent;

    #@8
    .line 4120
    .local v1, "event":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    #@b
    move-result v4

    #@c
    if-eq v4, v6, :cond_0

    #@e
    .line 4123
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@10
    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->handleDispatchWindowAnimationStopped()V

    #@13
    .line 4127
    :cond_0
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@15
    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@17
    invoke-virtual {v4, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_1

    #@1d
    .line 4128
    return v6

    #@1e
    .line 4131
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_2

    #@24
    .line 4132
    return v8

    #@25
    .line 4136
    :cond_2
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    #@28
    move-result v4

    #@29
    if-nez v4, :cond_3

    #@2b
    .line 4137
    invoke-virtual {v1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    #@2e
    move-result v4

    #@2f
    .line 4136
    if-eqz v4, :cond_3

    #@31
    .line 4138
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@34
    move-result v4

    #@35
    if-nez v4, :cond_3

    #@37
    .line 4139
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@3a
    move-result v4

    #@3b
    invoke-static {v4}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    #@3e
    move-result v4

    #@3f
    if-eqz v4, :cond_4

    #@41
    .line 4149
    :cond_3
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@43
    iget-object v4, v4, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    #@45
    invoke-interface {v4, v1}, Landroid/view/FallbackEventHandler;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@48
    move-result v4

    #@49
    if-eqz v4, :cond_6

    #@4b
    .line 4150
    return v6

    #@4c
    .line 4140
    :cond_4
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@4e
    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@50
    invoke-virtual {v4, v1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    #@53
    move-result v4

    #@54
    if-eqz v4, :cond_5

    #@56
    .line 4141
    return v6

    #@57
    .line 4143
    :cond_5
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    #@5a
    move-result v4

    #@5b
    if-eqz v4, :cond_3

    #@5d
    .line 4144
    return v8

    #@5e
    .line 4152
    :cond_6
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    #@61
    move-result v4

    #@62
    if-eqz v4, :cond_7

    #@64
    .line 4153
    return v8

    #@65
    .line 4157
    :cond_7
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    #@68
    move-result v4

    #@69
    if-nez v4, :cond_d

    #@6b
    .line 4158
    const/4 v0, 0x0

    #@6c
    .line 4159
    .local v0, "direction":I
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@6f
    move-result v4

    #@70
    sparse-switch v4, :sswitch_data_0

    #@73
    .line 4188
    :cond_8
    :goto_0
    if-eqz v0, :cond_d

    #@75
    .line 4189
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@77
    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@79
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@7c
    move-result-object v2

    #@7d
    .line 4190
    .local v2, "focused":Landroid/view/View;
    if-eqz v2, :cond_c

    #@7f
    .line 4191
    invoke-virtual {v2, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    #@82
    move-result-object v3

    #@83
    .line 4192
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_b

    #@85
    if-eq v3, v2, :cond_b

    #@87
    .line 4196
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@89
    iget-object v4, v4, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@8b
    invoke-virtual {v2, v4}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    #@8e
    .line 4197
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@90
    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@92
    instance-of v4, v4, Landroid/view/ViewGroup;

    #@94
    if-eqz v4, :cond_9

    #@96
    .line 4198
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@98
    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@9a
    check-cast v4, Landroid/view/ViewGroup;

    #@9c
    .line 4199
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@9e
    iget-object v5, v5, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@a0
    .line 4198
    invoke-virtual {v4, v2, v5}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@a3
    .line 4200
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@a5
    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@a7
    check-cast v4, Landroid/view/ViewGroup;

    #@a9
    .line 4201
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@ab
    iget-object v5, v5, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@ad
    .line 4200
    invoke-virtual {v4, v3, v5}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@b0
    .line 4203
    :cond_9
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@b2
    iget-object v4, v4, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    #@b4
    invoke-virtual {v3, v0, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    #@b7
    move-result v4

    #@b8
    if-eqz v4, :cond_b

    #@ba
    .line 4204
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@bc
    invoke-static {v0}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    #@bf
    move-result v5

    #@c0
    invoke-virtual {v4, v5}, Landroid/view/ViewRootImpl;->playSoundEffect(I)V

    #@c3
    .line 4206
    return v6

    #@c4
    .line 4161
    .end local v2    # "focused":Landroid/view/View;
    .end local v3    # "v":Landroid/view/View;
    :sswitch_0
    invoke-virtual {v1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@c7
    move-result v4

    #@c8
    if-eqz v4, :cond_8

    #@ca
    .line 4162
    const/16 v0, 0x11

    #@cc
    goto :goto_0

    #@cd
    .line 4166
    :sswitch_1
    invoke-virtual {v1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@d0
    move-result v4

    #@d1
    if-eqz v4, :cond_8

    #@d3
    .line 4167
    const/16 v0, 0x42

    #@d5
    goto :goto_0

    #@d6
    .line 4171
    :sswitch_2
    invoke-virtual {v1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@d9
    move-result v4

    #@da
    if-eqz v4, :cond_8

    #@dc
    .line 4172
    const/16 v0, 0x21

    #@de
    goto :goto_0

    #@df
    .line 4176
    :sswitch_3
    invoke-virtual {v1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@e2
    move-result v4

    #@e3
    if-eqz v4, :cond_8

    #@e5
    .line 4177
    const/16 v0, 0x82

    #@e7
    goto :goto_0

    #@e8
    .line 4181
    :sswitch_4
    invoke-virtual {v1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@eb
    move-result v4

    #@ec
    if-eqz v4, :cond_a

    #@ee
    .line 4182
    const/4 v0, 0x2

    #@ef
    goto :goto_0

    #@f0
    .line 4183
    :cond_a
    invoke-virtual {v1, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    #@f3
    move-result v4

    #@f4
    if-eqz v4, :cond_8

    #@f6
    .line 4184
    const/4 v0, 0x1

    #@f7
    goto/16 :goto_0

    #@f9
    .line 4211
    .restart local v2    # "focused":Landroid/view/View;
    .restart local v3    # "v":Landroid/view/View;
    :cond_b
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@fb
    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@fd
    invoke-virtual {v4, v2, v0}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    #@100
    move-result v4

    #@101
    if-eqz v4, :cond_d

    #@103
    .line 4212
    return v6

    #@104
    .line 4216
    .end local v3    # "v":Landroid/view/View;
    :cond_c
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@106
    invoke-virtual {v4, v5, v0}, Landroid/view/ViewRootImpl;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    #@109
    move-result-object v3

    #@10a
    .line 4217
    .restart local v3    # "v":Landroid/view/View;
    if-eqz v3, :cond_d

    #@10c
    invoke-virtual {v3, v0}, Landroid/view/View;->requestFocus(I)Z

    #@10f
    move-result v4

    #@110
    if-eqz v4, :cond_d

    #@112
    .line 4218
    return v6

    #@113
    .line 4223
    .end local v0    # "direction":I
    .end local v2    # "focused":Landroid/view/View;
    .end local v3    # "v":Landroid/view/View;
    :cond_d
    return v7

    #@114
    .line 4159
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
    .locals 5
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 4227
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@4
    check-cast v0, Landroid/view/MotionEvent;

    #@6
    .line 4229
    .local v0, "event":Landroid/view/MotionEvent;
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@8
    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@a
    iput-boolean v3, v4, Landroid/view/View$AttachInfo;->mUnbufferedDispatchRequested:Z

    #@c
    .line 4230
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@e
    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@10
    invoke-virtual {v4, v0}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    #@13
    move-result v1

    #@14
    .line 4231
    .local v1, "handled":Z
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@16
    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@18
    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mUnbufferedDispatchRequested:Z

    #@1a
    if-eqz v4, :cond_0

    #@1c
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@1e
    iget-boolean v4, v4, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    #@20
    if-eqz v4, :cond_1

    #@22
    .line 4237
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    #@24
    :goto_1
    return v2

    #@25
    .line 4232
    :cond_1
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@27
    iput-boolean v2, v4, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    #@29
    .line 4233
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@2b
    iget-boolean v4, v4, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    #@2d
    if-eqz v4, :cond_0

    #@2f
    .line 4234
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@31
    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInputImmediately()V

    #@34
    goto :goto_0

    #@35
    :cond_2
    move v2, v3

    #@36
    .line 4237
    goto :goto_1
.end method

.method private processTrackballEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    .line 4241
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@2
    check-cast v0, Landroid/view/MotionEvent;

    #@4
    .line 4243
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
    .line 4244
    const/4 v1, 0x1

    #@f
    return v1

    #@10
    .line 4246
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
    .line 4107
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@2
    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 4108
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@8
    instance-of v0, v0, Landroid/view/MotionEvent;

    #@a
    .line 4107
    if-eqz v0, :cond_0

    #@c
    .line 4109
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@e
    check-cast v0, Landroid/view/MotionEvent;

    #@10
    invoke-virtual {v0}, Landroid/view/MotionEvent;->isTouchEvent()Z

    #@13
    move-result v0

    #@14
    .line 4107
    if-eqz v0, :cond_0

    #@16
    .line 4110
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@18
    invoke-static {v0}, Landroid/view/ViewRootImpl;->isTerminalInputEvent(Landroid/view/InputEvent;)Z

    #@1b
    move-result v0

    #@1c
    .line 4107
    if-eqz v0, :cond_0

    #@1e
    .line 4111
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@20
    const/4 v1, 0x0

    #@21
    iput-boolean v1, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    #@23
    .line 4112
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@25
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    #@28
    .line 4114
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    #@2b
    .line 4106
    return-void
.end method

.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    .line 4088
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@2
    instance-of v1, v1, Landroid/view/KeyEvent;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 4089
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 4093
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@d
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->handleDispatchWindowAnimationStopped()V

    #@10
    .line 4094
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@12
    invoke-virtual {v1}, Landroid/view/InputEvent;->getSource()I

    #@15
    move-result v0

    #@16
    .line 4095
    .local v0, "source":I
    and-int/lit8 v1, v0, 0x2

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 4096
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processPointerEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    #@1d
    move-result v1

    #@1e
    return v1

    #@1f
    .line 4097
    :cond_1
    and-int/lit8 v1, v0, 0x4

    #@21
    if-eqz v1, :cond_2

    #@23
    .line 4098
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processTrackballEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    #@26
    move-result v1

    #@27
    return v1

    #@28
    .line 4100
    :cond_2
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processGenericMotionEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    #@2b
    move-result v1

    #@2c
    return v1
.end method
