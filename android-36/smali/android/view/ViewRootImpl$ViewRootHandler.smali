.class final Landroid/view/ViewRootImpl$ViewRootHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewRootHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 6832
    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private blacklist handleMessageImpl(Landroid/os/Message;)V
    .registers 20
    .param p1, "msg"    # Landroid/os/Message;

    .line 6933
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_41c

    :pswitch_d
    goto/16 :goto_41a

    .line 7182
    :pswitch_f
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTouchAndDrawn(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 7183
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v3, 0x27

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 7184
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_34

    .line 7187
    :cond_2a
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v6}, Landroid/view/ViewRootImpl;->-$$Nest$fputmIsTouchBoosting(Landroid/view/ViewRootImpl;Z)V

    .line 7188
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v5}, Landroid/view/ViewRootImpl;->-$$Nest$msetPreferredFrameRateCategory(Landroid/view/ViewRootImpl;I)V

    .line 7190
    :goto_34
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v6}, Landroid/view/ViewRootImpl;->-$$Nest$fputmTouchAndDrawn(Landroid/view/ViewRootImpl;Z)V

    .line 7191
    goto/16 :goto_41a

    .line 7203
    :pswitch_3b
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v6}, Landroid/view/ViewRootImpl;->-$$Nest$fputmSurfaceReplaced(Landroid/view/ViewRootImpl;Z)V

    goto/16 :goto_41a

    .line 7199
    :pswitch_42
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v3}, Landroid/view/ViewRootImpl;->-$$Nest$fputmPreferredFrameRate(Landroid/view/ViewRootImpl;F)V

    .line 7200
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iput v5, v0, Landroid/view/ViewRootImpl;->mFrameRateCompatibility:I

    .line 7201
    goto/16 :goto_41a

    .line 7193
    :pswitch_4d
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPointerIconEvent(Landroid/view/ViewRootImpl;)Landroid/view/MotionEvent;

    move-result-object v0

    if-nez v0, :cond_57

    .line 7194
    goto/16 :goto_41a

    .line 7196
    :cond_57
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPointerIconEvent(Landroid/view/ViewRootImpl;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/view/ViewRootImpl;->-$$Nest$mupdatePointerIcon(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)Z

    .line 7197
    goto/16 :goto_41a

    .line 7147
    :pswitch_64
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmIsTouchBoosting(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-nez v0, :cond_8d

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmIsFrameRateBoosting(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-nez v0, :cond_8d

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmInsetsAnimationRunning(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-eqz v0, :cond_7d

    goto :goto_8d

    .line 7150
    :cond_7d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    const-wide/32 v9, 0xf4240

    div-long/2addr v7, v9

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmLastUpdateTimeMillis(Landroid/view/ViewRootImpl;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    .local v7, "delta":J
    goto :goto_8f

    .line 7148
    .end local v7    # "delta":J
    :cond_8d
    :goto_8d
    const-wide/16 v7, 0x0

    .line 7152
    .restart local v7    # "delta":J
    :goto_8f
    const-wide/16 v9, 0x2ee

    cmp-long v0, v7, v9

    if-ltz v0, :cond_da

    .line 7153
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v6}, Landroid/view/ViewRootImpl;->-$$Nest$fputmFrameRateCategoryHighCount(Landroid/view/ViewRootImpl;I)V

    .line 7154
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v6}, Landroid/view/ViewRootImpl;->-$$Nest$fputmFrameRateCategoryHighHintCount(Landroid/view/ViewRootImpl;I)V

    .line 7155
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v6}, Landroid/view/ViewRootImpl;->-$$Nest$fputmFrameRateCategoryNormalCount(Landroid/view/ViewRootImpl;I)V

    .line 7156
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v6}, Landroid/view/ViewRootImpl;->-$$Nest$fputmFrameRateCategoryLowCount(Landroid/view/ViewRootImpl;I)V

    .line 7157
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v3}, Landroid/view/ViewRootImpl;->-$$Nest$fputmPreferredFrameRate(Landroid/view/ViewRootImpl;F)V

    .line 7158
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v5}, Landroid/view/ViewRootImpl;->-$$Nest$fputmPreferredFrameRateCategory(Landroid/view/ViewRootImpl;I)V

    .line 7159
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$mupdateFrameRateFromThreadedRendererViews(Landroid/view/ViewRootImpl;)V

    .line 7160
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPreferredFrameRate(Landroid/view/ViewRootImpl;)F

    move-result v3

    invoke-static {v0, v3}, Landroid/view/ViewRootImpl;->-$$Nest$msetPreferredFrameRate(Landroid/view/ViewRootImpl;F)V

    .line 7161
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPreferredFrameRateCategory(Landroid/view/ViewRootImpl;)I

    move-result v3

    invoke-static {v0, v3}, Landroid/view/ViewRootImpl;->-$$Nest$msetPreferredFrameRateCategory(Landroid/view/ViewRootImpl;I)V

    .line 7162
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v6}, Landroid/view/ViewRootImpl;->-$$Nest$fputmInvalidationIdleMessagePosted(Landroid/view/ViewRootImpl;Z)V

    .line 7163
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v6}, Landroid/view/ViewRootImpl;->-$$Nest$fputmIsPressedGesture(Landroid/view/ViewRootImpl;Z)V

    goto/16 :goto_41a

    .line 7165
    :cond_da
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v5}, Landroid/view/ViewRootImpl;->-$$Nest$fputmInvalidationIdleMessagePosted(Landroid/view/ViewRootImpl;Z)V

    .line 7166
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v3, 0x28

    sub-long/2addr v9, v7

    invoke-virtual {v0, v3, v9, v10}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 7169
    goto/16 :goto_41a

    .line 7175
    .end local v7    # "delta":J
    :pswitch_eb
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v6}, Landroid/view/ViewRootImpl;->-$$Nest$fputmIsFrameRateBoosting(Landroid/view/ViewRootImpl;Z)V

    .line 7176
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v6}, Landroid/view/ViewRootImpl;->-$$Nest$fputmIsTouchBoosting(Landroid/view/ViewRootImpl;Z)V

    .line 7177
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmDrawnThisFrame(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-nez v0, :cond_41a

    .line 7178
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v5}, Landroid/view/ViewRootImpl;->-$$Nest$msetPreferredFrameRateCategory(Landroid/view/ViewRootImpl;I)V

    goto/16 :goto_41a

    .line 7131
    :pswitch_104
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v3, v2, Landroid/os/Message;->arg1:I

    if-ne v3, v5, :cond_10b

    goto :goto_10c

    :cond_10b
    move v5, v6

    :goto_10c
    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->decorViewInterceptionChanged(Z)V

    .line 7132
    goto/16 :goto_41a

    .line 7143
    :pswitch_111
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$mresumeAfterSyncTimeout(Landroid/view/ViewRootImpl;)V

    .line 7144
    goto/16 :goto_41a

    .line 7137
    :pswitch_118
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->reportKeepClearAreasChanged()V

    .line 7138
    goto/16 :goto_41a

    .line 7134
    :pswitch_11f
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v3, v2, Landroid/os/Message;->arg1:I

    if-ne v3, v5, :cond_126

    goto :goto_127

    :cond_126
    move v5, v6

    :goto_127
    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->keepClearRectsChanged(Z)V

    .line 7135
    goto/16 :goto_41a

    .line 7019
    :pswitch_12c
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleWindowTouchModeChanged(Landroid/view/ViewRootImpl;)V

    .line 7020
    goto/16 :goto_41a

    .line 7140
    :pswitch_133
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/IScrollCaptureResponseListener;

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->handleScrollCaptureRequest(Landroid/view/IScrollCaptureResponseListener;)V

    .line 7141
    goto/16 :goto_41a

    .line 6995
    :pswitch_13e
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/inputmethod/ImeTracker$Token;

    .line 6996
    .local v0, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    const/16 v4, 0x1f

    invoke-interface {v3, v0, v4}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 6998
    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmInsetsController(Landroid/view/ViewRootImpl;)Landroid/view/InsetsController;

    move-result-object v3

    iget v4, v2, Landroid/os/Message;->arg1:I

    iget v7, v2, Landroid/os/Message;->arg2:I

    if-ne v7, v5, :cond_158

    goto :goto_159

    :cond_158
    move v5, v6

    :goto_159
    invoke-virtual {v3, v4, v5, v0}, Landroid/view/InsetsController;->hide(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 6999
    goto/16 :goto_41a

    .line 6982
    .end local v0    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :pswitch_15e
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/inputmethod/ImeTracker$Token;

    .line 6983
    .restart local v0    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    const/16 v4, 0x1e

    invoke-interface {v3, v0, v4}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 6985
    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v3, :cond_191

    .line 6986
    iget v3, v2, Landroid/os/Message;->arg1:I

    .line 6988
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/os/Message;->arg2:I

    if-ne v4, v5, :cond_17d

    move v4, v5

    goto :goto_17e

    :cond_17d
    move v4, v6

    :goto_17e
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 6987
    const-string v4, "Calling showInsets(%d,%b) on window that no longer has views."

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 6986
    const-string v4, "ViewRootImpl"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6990
    :cond_191
    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v4, v2, Landroid/os/Message;->arg1:I

    iget v7, v2, Landroid/os/Message;->arg2:I

    if-ne v7, v5, :cond_19b

    move v7, v5

    goto :goto_19c

    :cond_19b
    move v7, v6

    :goto_19c
    invoke-static {v3, v4, v7}, Landroid/view/ViewRootImpl;->-$$Nest$mclearLowProfileModeIfNeeded(Landroid/view/ViewRootImpl;IZ)V

    .line 6991
    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmInsetsController(Landroid/view/ViewRootImpl;)Landroid/view/InsetsController;

    move-result-object v3

    iget v4, v2, Landroid/os/Message;->arg1:I

    iget v7, v2, Landroid/os/Message;->arg2:I

    if-ne v7, v5, :cond_1ac

    goto :goto_1ad

    :cond_1ac
    move v5, v6

    :goto_1ad
    invoke-virtual {v3, v4, v5, v0}, Landroid/view/InsetsController;->show(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 6992
    goto/16 :goto_41a

    .line 7128
    .end local v0    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :pswitch_1b2
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->systemGestureExclusionChanged()V

    .line 7129
    goto/16 :goto_41a

    .line 6973
    :pswitch_1b9
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 6974
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/view/InsetsState;

    .line 6975
    .local v3, "insetsState":Landroid/view/InsetsState;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/view/InsetsSourceControl$Array;

    .line 6977
    .local v4, "activeControls":Landroid/view/InsetsSourceControl$Array;
    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v5, v3, v4}, Landroid/view/ViewRootImpl;->handleInsetsControlChanged(Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V

    .line 6978
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 6979
    goto/16 :goto_41a

    .line 7124
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "insetsState":Landroid/view/InsetsState;
    .end local v4    # "activeControls":Landroid/view/InsetsSourceControl$Array;
    :pswitch_1cf
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1d4

    goto :goto_1d5

    :cond_1d4
    move v5, v6

    .line 7125
    .local v5, "hasCapture":Z
    :goto_1d5
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v5}, Landroid/view/ViewRootImpl;->-$$Nest$mhandlePointerCaptureChanged(Landroid/view/ViewRootImpl;Z)V

    .line 7126
    .end local v5    # "hasCapture":Z
    goto/16 :goto_41a

    .line 7119
    :pswitch_1dc
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/IResultReceiver;

    .line 7120
    .local v0, "receiver":Lcom/android/internal/os/IResultReceiver;
    iget v3, v2, Landroid/os/Message;->arg1:I

    .line 7121
    .local v3, "deviceId":I
    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v4, v0, v3}, Landroid/view/ViewRootImpl;->handleRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    .line 7122
    .end local v0    # "receiver":Lcom/android/internal/os/IResultReceiver;
    .end local v3    # "deviceId":I
    goto/16 :goto_41a

    .line 7116
    :pswitch_1e9
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->handleDispatchWindowShown()V

    .line 7117
    goto/16 :goto_41a

    .line 7032
    :pswitch_1f0
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/InputEvent;

    .line 7033
    .local v0, "event":Landroid/view/InputEvent;
    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/16 v6, 0x20

    invoke-virtual {v3, v0, v4, v6, v5}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7034
    .end local v0    # "event":Landroid/view/InputEvent;
    goto/16 :goto_41a

    .line 7002
    :pswitch_1fd
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_41a

    .line 7003
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 7004
    .local v0, "w":I
    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 7005
    .local v3, "h":I
    iget v4, v2, Landroid/os/Message;->arg1:I

    .line 7006
    .local v4, "l":I
    iget v5, v2, Landroid/os/Message;->arg2:I

    .line 7007
    .local v5, "t":I
    iget-object v7, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v7}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTmpFrames(Landroid/view/ViewRootImpl;)Landroid/window/ClientWindowFrames;

    move-result-object v7

    iget-object v7, v7, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iput v4, v7, Landroid/graphics/Rect;->left:I

    .line 7008
    iget-object v7, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v7}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTmpFrames(Landroid/view/ViewRootImpl;)Landroid/window/ClientWindowFrames;

    move-result-object v7

    iget-object v7, v7, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    add-int v8, v4, v0

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 7009
    iget-object v7, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v7}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTmpFrames(Landroid/view/ViewRootImpl;)Landroid/window/ClientWindowFrames;

    move-result-object v7

    iget-object v7, v7, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iput v5, v7, Landroid/graphics/Rect;->top:I

    .line 7010
    iget-object v7, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v7}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTmpFrames(Landroid/view/ViewRootImpl;)Landroid/window/ClientWindowFrames;

    move-result-object v7

    iget-object v7, v7, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    add-int v8, v5, v3

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 7011
    iget-object v7, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v8}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTmpFrames(Landroid/view/ViewRootImpl;)Landroid/window/ClientWindowFrames;

    move-result-object v8

    iget-object v8, v8, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-static {v7, v8, v6}, Landroid/view/ViewRootImpl;->-$$Nest$msetFrame(Landroid/view/ViewRootImpl;Landroid/graphics/Rect;Z)V

    .line 7012
    iget-object v6, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v7, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v7, v7, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-static {v6, v7}, Landroid/view/ViewRootImpl;->-$$Nest$mmaybeHandleWindowMove(Landroid/view/ViewRootImpl;Landroid/graphics/Rect;)V

    .line 7013
    .end local v0    # "w":I
    .end local v3    # "h":I
    .end local v4    # "l":I
    .end local v5    # "t":I
    goto/16 :goto_41a

    .line 7111
    :pswitch_25b
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_41a

    .line 7112
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    goto/16 :goto_41a

    .line 7108
    :pswitch_26c
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v4, v4}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 7109
    goto/16 :goto_41a

    .line 6944
    :pswitch_273
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iput-boolean v6, v0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 6945
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    .line 6946
    goto/16 :goto_41a

    .line 7087
    :pswitch_27e
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/Configuration;

    .line 7088
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmLastReportedMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v3

    .line 7089
    invoke-virtual {v3}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 7088
    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v3

    if-eqz v3, :cond_29c

    .line 7091
    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmLastReportedMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 7095
    :cond_29c
    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPendingMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v3

    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmLastReportedMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v5

    .line 7096
    invoke-virtual {v5}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 7095
    invoke-virtual {v3, v0, v5}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 7097
    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPendingActivityWindowInfo(Landroid/view/ViewRootImpl;)Landroid/window/ActivityWindowInfo;

    move-result-object v3

    if-eqz v3, :cond_2c6

    .line 7098
    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPendingActivityWindowInfo(Landroid/view/ViewRootImpl;)Landroid/window/ActivityWindowInfo;

    move-result-object v3

    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmLastReportedActivityWindowInfo(Landroid/view/ViewRootImpl;)Landroid/window/ActivityWindowInfo;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/window/ActivityWindowInfo;->set(Landroid/window/ActivityWindowInfo;)V

    .line 7101
    :cond_2c6
    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v5, Landroid/util/MergedConfiguration;

    iget-object v7, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v7}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPendingMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/util/MergedConfiguration;-><init>(Landroid/util/MergedConfiguration;)V

    .line 7103
    iget-object v7, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v7}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPendingActivityWindowInfo(Landroid/view/ViewRootImpl;)Landroid/window/ActivityWindowInfo;

    move-result-object v7

    if-eqz v7, :cond_2e7

    .line 7104
    new-instance v4, Landroid/window/ActivityWindowInfo;

    iget-object v7, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v7}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPendingActivityWindowInfo(Landroid/view/ViewRootImpl;)Landroid/window/ActivityWindowInfo;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/window/ActivityWindowInfo;-><init>(Landroid/window/ActivityWindowInfo;)V

    goto :goto_2e8

    .line 7105
    :cond_2e7
    nop

    .line 7101
    :goto_2e8
    const/4 v7, -0x1

    invoke-static {v3, v5, v6, v7, v4}, Landroid/view/ViewRootImpl;->-$$Nest$mperformConfigurationChange(Landroid/view/ViewRootImpl;Landroid/util/MergedConfiguration;ZILandroid/window/ActivityWindowInfo;)V

    .line 7106
    .end local v0    # "config":Landroid/content/res/Configuration;
    goto/16 :goto_41a

    .line 7084
    :pswitch_2ee
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl;)V

    .line 7085
    goto/16 :goto_41a

    .line 7067
    :pswitch_2f5
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/view/DragEvent;

    .line 7069
    .local v3, "event":Landroid/view/DragEvent;
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    iput-object v0, v3, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    .line 7070
    iget v0, v3, Landroid/view/DragEvent;->mAction:I

    const/4 v4, 0x2

    if-eq v0, v4, :cond_306

    goto :goto_307

    :cond_306
    move v5, v6

    .line 7072
    .local v5, "traceDragEvent":Z
    :goto_307
    const-wide/16 v6, 0x8

    if-eqz v5, :cond_327

    .line 7073
    :try_start_30b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "c#"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v3, Landroid/view/DragEvent;->mAction:I

    .line 7074
    invoke-static {v4}, Landroid/view/DragEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7073
    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7076
    :cond_327
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v3}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleDragEvent(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V
    :try_end_32c
    .catchall {:try_start_30b .. :try_end_32c} :catchall_333

    .line 7078
    if-eqz v5, :cond_331

    .line 7079
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 7082
    .end local v3    # "event":Landroid/view/DragEvent;
    .end local v5    # "traceDragEvent":Z
    :cond_331
    goto/16 :goto_41a

    .line 7078
    .restart local v3    # "event":Landroid/view/DragEvent;
    .restart local v5    # "traceDragEvent":Z
    :catchall_333
    move-exception v0

    if-eqz v5, :cond_339

    .line 7079
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 7081
    :cond_339
    throw v0

    .line 7060
    .end local v3    # "event":Landroid/view/DragEvent;
    .end local v5    # "traceDragEvent":Z
    :pswitch_33a
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_41a

    .line 7061
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/view/View;->onCloseSystemDialogs(Ljava/lang/String;)V

    goto/16 :goto_41a

    .line 7057
    :pswitch_34d
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getImeFocusController()Landroid/view/ImeFocusController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ImeFocusController;->onScheduledCheckFocus()V

    .line 7058
    goto/16 :goto_41a

    .line 7053
    :pswitch_358
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    .line 7054
    .local v0, "event":Landroid/view/KeyEvent;
    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3, v0, v4, v6, v5}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7055
    .end local v0    # "event":Landroid/view/KeyEvent;
    goto/16 :goto_41a

    .line 7039
    :pswitch_363
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    .line 7040
    .restart local v0    # "event":Landroid/view/KeyEvent;
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_37a

    .line 7044
    nop

    .line 7045
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, -0x9

    .line 7044
    invoke-static {v0, v3}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 7047
    :cond_37a
    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3, v0, v4, v5, v5}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7048
    .end local v0    # "event":Landroid/view/KeyEvent;
    goto/16 :goto_41a

    .line 6951
    :pswitch_381
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->handleGetNewSurface()V

    .line 6952
    goto/16 :goto_41a

    .line 6948
    :pswitch_388
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v3, v2, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_38f

    goto :goto_390

    :cond_38f
    move v5, v6

    :goto_390
    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->handleAppVisibility(Z)V

    .line 6949
    goto/16 :goto_41a

    .line 7025
    :pswitch_395
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 7026
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/view/InputEvent;

    .line 7027
    .local v3, "event":Landroid/view/InputEvent;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/view/InputEventReceiver;

    .line 7028
    .local v4, "receiver":Landroid/view/InputEventReceiver;
    iget-object v7, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v7, v3, v4, v6, v5}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7029
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 7030
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "event":Landroid/view/InputEvent;
    .end local v4    # "receiver":Landroid/view/InputEventReceiver;
    goto/16 :goto_41a

    .line 7016
    :pswitch_3ab
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleWindowFocusChanged(Landroid/view/ViewRootImpl;)V

    .line 7017
    goto/16 :goto_41a

    .line 6955
    :pswitch_3b2
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 6956
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v8, v3

    check-cast v8, Landroid/window/ClientWindowFrames;

    .line 6957
    .local v8, "frames":Landroid/window/ClientWindowFrames;
    iget v3, v2, Landroid/os/Message;->what:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3c2

    move v9, v5

    goto :goto_3c3

    :cond_3c2
    move v9, v6

    .line 6958
    .local v9, "reportDraw":Z
    :goto_3c3
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v10, v3

    check-cast v10, Landroid/util/MergedConfiguration;

    .line 6959
    .local v10, "mergedConfiguration":Landroid/util/MergedConfiguration;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v11, v3

    check-cast v11, Landroid/view/InsetsState;

    .line 6960
    .local v11, "insetsState":Landroid/view/InsetsState;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object/from16 v17, v3

    check-cast v17, Landroid/window/ActivityWindowInfo;

    .line 6961
    .local v17, "activityWindowInfo":Landroid/window/ActivityWindowInfo;
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-eqz v3, :cond_3d9

    move v12, v5

    goto :goto_3da

    :cond_3d9
    move v12, v6

    .line 6962
    .local v12, "forceLayout":Z
    :goto_3da
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-eqz v3, :cond_3e0

    move v13, v5

    goto :goto_3e1

    :cond_3e0
    move v13, v6

    .line 6963
    .local v13, "alwaysConsumeSystemBars":Z
    :goto_3e1
    iget v14, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 6964
    .local v14, "displayId":I
    iget v15, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 6965
    .local v15, "syncSeqId":I
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi5:I

    if-eqz v3, :cond_3ec

    move/from16 v16, v5

    goto :goto_3ee

    :cond_3ec
    move/from16 v16, v6

    .line 6966
    .local v16, "dragResizing":Z
    :goto_3ee
    iget-object v7, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static/range {v7 .. v17}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleResized(Landroid/view/ViewRootImpl;Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIIZLandroid/window/ActivityWindowInfo;)V

    .line 6969
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 6970
    goto :goto_41a

    .line 7022
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v8    # "frames":Landroid/window/ClientWindowFrames;
    .end local v9    # "reportDraw":Z
    .end local v10    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .end local v11    # "insetsState":Landroid/view/InsetsState;
    .end local v12    # "forceLayout":Z
    .end local v13    # "alwaysConsumeSystemBars":Z
    .end local v14    # "displayId":I
    .end local v15    # "syncSeqId":I
    .end local v16    # "dragResizing":Z
    .end local v17    # "activityWindowInfo":Landroid/window/ActivityWindowInfo;
    :pswitch_3f7
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->doDie()V

    .line 7023
    goto :goto_41a

    .line 6938
    :pswitch_3fd
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 6940
    .local v0, "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    iget-object v3, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    iget v4, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    iget v5, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    iget v6, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    iget v7, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    .line 6941
    invoke-virtual {v0}, Landroid/view/View$AttachInfo$InvalidateInfo;->recycle()V

    .line 6942
    goto :goto_41a

    .line 6935
    .end local v0    # "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    :pswitch_412
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 6936
    nop

    .line 7206
    :cond_41a
    :goto_41a
    return-void

    nop

    :pswitch_data_41c
    .packed-switch 0x1
        :pswitch_412
        :pswitch_3fd
        :pswitch_3f7
        :pswitch_3b2
        :pswitch_3b2
        :pswitch_3ab
        :pswitch_395
        :pswitch_388
        :pswitch_381
        :pswitch_d
        :pswitch_363
        :pswitch_358
        :pswitch_34d
        :pswitch_33a
        :pswitch_2f5
        :pswitch_2f5
        :pswitch_2ee
        :pswitch_27e
        :pswitch_273
        :pswitch_d
        :pswitch_26c
        :pswitch_25b
        :pswitch_1fd
        :pswitch_1f0
        :pswitch_1e9
        :pswitch_1dc
        :pswitch_d
        :pswitch_1cf
        :pswitch_1b9
        :pswitch_1b2
        :pswitch_15e
        :pswitch_13e
        :pswitch_133
        :pswitch_12c
        :pswitch_11f
        :pswitch_118
        :pswitch_111
        :pswitch_104
        :pswitch_eb
        :pswitch_64
        :pswitch_4d
        :pswitch_42
        :pswitch_3b
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public whitelist getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .registers 3
    .param p1, "message"    # Landroid/os/Message;

    .line 6835
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_74

    .line 6907
    :pswitch_5
    invoke-super {p0, p1}, Landroid/os/Handler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6905
    :pswitch_a
    const-string v0, "MSG_INITIAL_TOUCH_BOOST_TIMEOUT"

    return-object v0

    .line 6903
    :pswitch_d
    const-string v0, "MSG_SURFACE_REPLACED_TIMEOUT"

    return-object v0

    .line 6901
    :pswitch_10
    const-string v0, "MSG_FRAME_RATE_SETTING"

    return-object v0

    .line 6897
    :pswitch_13
    const-string v0, "MSG_REFRESH_POINTER_ICON"

    return-object v0

    .line 6895
    :pswitch_16
    const-string v0, "MSG_CHECK_INVALIDATION_IDLE"

    return-object v0

    .line 6899
    :pswitch_19
    const-string v0, "MSG_TOUCH_BOOST_TIMEOUT"

    return-object v0

    .line 6893
    :pswitch_1c
    const-string v0, "MSG_KEEP_CLEAR_RECTS_CHANGED"

    return-object v0

    .line 6891
    :pswitch_1f
    const-string v0, "MSG_WINDOW_TOUCH_MODE_CHANGED"

    return-object v0

    .line 6889
    :pswitch_22
    const-string v0, "MSG_HIDE_INSETS"

    return-object v0

    .line 6887
    :pswitch_25
    const-string v0, "MSG_SHOW_INSETS"

    return-object v0

    .line 6885
    :pswitch_28
    const-string v0, "MSG_SYSTEM_GESTURE_EXCLUSION_CHANGED"

    return-object v0

    .line 6883
    :pswitch_2b
    const-string v0, "MSG_INSETS_CONTROL_CHANGED"

    return-object v0

    .line 6881
    :pswitch_2e
    const-string v0, "MSG_POINTER_CAPTURE_CHANGED"

    return-object v0

    .line 6879
    :pswitch_31
    const-string v0, "MSG_DISPATCH_WINDOW_SHOWN"

    return-object v0

    .line 6877
    :pswitch_34
    const-string v0, "MSG_SYNTHESIZE_INPUT_EVENT"

    return-object v0

    .line 6875
    :pswitch_37
    const-string v0, "MSG_WINDOW_MOVED"

    return-object v0

    .line 6873
    :pswitch_3a
    const-string v0, "MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST"

    return-object v0

    .line 6871
    :pswitch_3d
    const-string v0, "MSG_PROCESS_INPUT_EVENTS"

    return-object v0

    .line 6869
    :pswitch_40
    const-string v0, "MSG_UPDATE_CONFIGURATION"

    return-object v0

    .line 6867
    :pswitch_43
    const-string v0, "MSG_DISPATCH_SYSTEM_UI_VISIBILITY"

    return-object v0

    .line 6865
    :pswitch_46
    const-string v0, "MSG_DISPATCH_DRAG_LOCATION_EVENT"

    return-object v0

    .line 6863
    :pswitch_49
    const-string v0, "MSG_DISPATCH_DRAG_EVENT"

    return-object v0

    .line 6861
    :pswitch_4c
    const-string v0, "MSG_CLOSE_SYSTEM_DIALOGS"

    return-object v0

    .line 6859
    :pswitch_4f
    const-string v0, "MSG_CHECK_FOCUS"

    return-object v0

    .line 6857
    :pswitch_52
    const-string v0, "MSG_DISPATCH_KEY_FROM_AUTOFILL"

    return-object v0

    .line 6855
    :pswitch_55
    const-string v0, "MSG_DISPATCH_KEY_FROM_IME"

    return-object v0

    .line 6853
    :pswitch_58
    const-string v0, "MSG_DISPATCH_GET_NEW_SURFACE"

    return-object v0

    .line 6851
    :pswitch_5b
    const-string v0, "MSG_DISPATCH_APP_VISIBILITY"

    return-object v0

    .line 6849
    :pswitch_5e
    const-string v0, "MSG_DISPATCH_INPUT_EVENT"

    return-object v0

    .line 6847
    :pswitch_61
    const-string v0, "MSG_WINDOW_FOCUS_CHANGED"

    return-object v0

    .line 6845
    :pswitch_64
    const-string v0, "MSG_RESIZED_REPORT"

    return-object v0

    .line 6843
    :pswitch_67
    const-string v0, "MSG_RESIZED"

    return-object v0

    .line 6841
    :pswitch_6a
    const-string v0, "MSG_DIE"

    return-object v0

    .line 6839
    :pswitch_6d
    const-string v0, "MSG_INVALIDATE_RECT"

    return-object v0

    .line 6837
    :pswitch_70
    const-string v0, "MSG_INVALIDATE"

    return-object v0

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_70
        :pswitch_6d
        :pswitch_6a
        :pswitch_67
        :pswitch_64
        :pswitch_61
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_5
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_5
        :pswitch_3a
        :pswitch_5
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_5
        :pswitch_5
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_5
        :pswitch_1f
        :pswitch_1c
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 6922
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 6923
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6926
    :cond_f
    :try_start_f
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->handleMessageImpl(Landroid/os/Message;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_17

    .line 6928
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 6929
    nop

    .line 6930
    return-void

    .line 6928
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 6929
    throw v2
.end method

.method public whitelist sendMessageAtTime(Landroid/os/Message;J)Z
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "uptimeMillis"    # J

    .line 6912
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_13

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_b

    goto :goto_13

    .line 6914
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempted to call MSG_REQUEST_KEYBOARD_SHORTCUTS with null receiver:"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6917
    :cond_13
    :goto_13
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method
