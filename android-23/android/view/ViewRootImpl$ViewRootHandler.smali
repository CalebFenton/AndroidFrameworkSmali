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
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    #@0
    .prologue
    .line 3199
    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 3202
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 3252
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0

    #@a
    .line 3204
    :pswitch_1
    const-string/jumbo v0, "MSG_INVALIDATE"

    #@d
    return-object v0

    #@e
    .line 3206
    :pswitch_2
    const-string/jumbo v0, "MSG_INVALIDATE_RECT"

    #@11
    return-object v0

    #@12
    .line 3208
    :pswitch_3
    const-string/jumbo v0, "MSG_DIE"

    #@15
    return-object v0

    #@16
    .line 3210
    :pswitch_4
    const-string/jumbo v0, "MSG_RESIZED"

    #@19
    return-object v0

    #@1a
    .line 3212
    :pswitch_5
    const-string/jumbo v0, "MSG_RESIZED_REPORT"

    #@1d
    return-object v0

    #@1e
    .line 3214
    :pswitch_6
    const-string/jumbo v0, "MSG_WINDOW_FOCUS_CHANGED"

    #@21
    return-object v0

    #@22
    .line 3216
    :pswitch_7
    const-string/jumbo v0, "MSG_DISPATCH_INPUT_EVENT"

    #@25
    return-object v0

    #@26
    .line 3218
    :pswitch_8
    const-string/jumbo v0, "MSG_DISPATCH_APP_VISIBILITY"

    #@29
    return-object v0

    #@2a
    .line 3220
    :pswitch_9
    const-string/jumbo v0, "MSG_DISPATCH_GET_NEW_SURFACE"

    #@2d
    return-object v0

    #@2e
    .line 3222
    :pswitch_a
    const-string/jumbo v0, "MSG_DISPATCH_KEY_FROM_IME"

    #@31
    return-object v0

    #@32
    .line 3224
    :pswitch_b
    const-string/jumbo v0, "MSG_FINISH_INPUT_CONNECTION"

    #@35
    return-object v0

    #@36
    .line 3226
    :pswitch_c
    const-string/jumbo v0, "MSG_CHECK_FOCUS"

    #@39
    return-object v0

    #@3a
    .line 3228
    :pswitch_d
    const-string/jumbo v0, "MSG_CLOSE_SYSTEM_DIALOGS"

    #@3d
    return-object v0

    #@3e
    .line 3230
    :pswitch_e
    const-string/jumbo v0, "MSG_DISPATCH_DRAG_EVENT"

    #@41
    return-object v0

    #@42
    .line 3232
    :pswitch_f
    const-string/jumbo v0, "MSG_DISPATCH_DRAG_LOCATION_EVENT"

    #@45
    return-object v0

    #@46
    .line 3234
    :pswitch_10
    const-string/jumbo v0, "MSG_DISPATCH_SYSTEM_UI_VISIBILITY"

    #@49
    return-object v0

    #@4a
    .line 3236
    :pswitch_11
    const-string/jumbo v0, "MSG_UPDATE_CONFIGURATION"

    #@4d
    return-object v0

    #@4e
    .line 3238
    :pswitch_12
    const-string/jumbo v0, "MSG_PROCESS_INPUT_EVENTS"

    #@51
    return-object v0

    #@52
    .line 3240
    :pswitch_13
    const-string/jumbo v0, "MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST"

    #@55
    return-object v0

    #@56
    .line 3242
    :pswitch_14
    const-string/jumbo v0, "MSG_DISPATCH_WINDOW_ANIMATION_STARTED"

    #@59
    return-object v0

    #@5a
    .line 3244
    :pswitch_15
    const-string/jumbo v0, "MSG_DISPATCH_WINDOW_ANIMATION_STOPPED"

    #@5d
    return-object v0

    #@5e
    .line 3246
    :pswitch_16
    const-string/jumbo v0, "MSG_WINDOW_MOVED"

    #@61
    return-object v0

    #@62
    .line 3248
    :pswitch_17
    const-string/jumbo v0, "MSG_SYNTHESIZE_INPUT_EVENT"

    #@65
    return-object v0

    #@66
    .line 3250
    :pswitch_18
    const-string/jumbo v0, "MSG_DISPATCH_WINDOW_SHOWN"

    #@69
    return-object v0

    #@6a
    .line 3202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_15
        :pswitch_14
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 31
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 3257
    move-object/from16 v0, p1

    #@2
    iget v2, v0, Landroid/os/Message;->what:I

    #@4
    packed-switch v2, :pswitch_data_0

    #@7
    .line 3256
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@8
    .line 3259
    :pswitch_1
    move-object/from16 v0, p1

    #@a
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c
    check-cast v2, Landroid/view/View;

    #@e
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    #@11
    goto :goto_0

    #@12
    .line 3262
    :pswitch_2
    move-object/from16 v0, p1

    #@14
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@16
    move-object/from16 v24, v0

    #@18
    check-cast v24, Landroid/view/View$AttachInfo$InvalidateInfo;

    #@1a
    .line 3263
    .local v24, "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    move-object/from16 v0, v24

    #@1c
    iget-object v2, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    #@1e
    move-object/from16 v0, v24

    #@20
    iget v3, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    #@22
    move-object/from16 v0, v24

    #@24
    iget v4, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    #@26
    move-object/from16 v0, v24

    #@28
    iget v5, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    #@2a
    move-object/from16 v0, v24

    #@2c
    iget v6, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    #@2e
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    #@31
    .line 3264
    invoke-virtual/range {v24 .. v24}, Landroid/view/View$AttachInfo$InvalidateInfo;->recycle()V

    #@34
    goto :goto_0

    #@35
    .line 3267
    .end local v24    # "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    :pswitch_3
    move-object/from16 v0, p0

    #@37
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@39
    const/4 v3, 0x0

    #@3a
    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    #@3c
    .line 3268
    move-object/from16 v0, p0

    #@3e
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@40
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    #@43
    goto :goto_0

    #@44
    .line 3271
    :pswitch_4
    move-object/from16 v0, p0

    #@46
    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@48
    move-object/from16 v0, p1

    #@4a
    iget v2, v0, Landroid/os/Message;->arg1:I

    #@4c
    if-eqz v2, :cond_1

    #@4e
    const/4 v2, 0x1

    #@4f
    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/ViewRootImpl;->handleAppVisibility(Z)V

    #@52
    goto :goto_0

    #@53
    :cond_1
    const/4 v2, 0x0

    #@54
    goto :goto_1

    #@55
    .line 3274
    :pswitch_5
    move-object/from16 v0, p0

    #@57
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@59
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->handleGetNewSurface()V

    #@5c
    goto :goto_0

    #@5d
    .line 3278
    :pswitch_6
    move-object/from16 v0, p1

    #@5f
    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@61
    check-cast v14, Lcom/android/internal/os/SomeArgs;

    #@63
    .line 3279
    .local v14, "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, p0

    #@65
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@67
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    #@69
    iget-object v3, v14, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6b
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@6e
    move-result v2

    #@6f
    if-eqz v2, :cond_2

    #@71
    .line 3280
    move-object/from16 v0, p0

    #@73
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@75
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    #@77
    iget-object v3, v14, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    #@79
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@7c
    move-result v2

    #@7d
    .line 3279
    if-eqz v2, :cond_2

    #@7f
    .line 3281
    move-object/from16 v0, p0

    #@81
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@83
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    #@85
    iget-object v3, v14, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@87
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@8a
    move-result v2

    #@8b
    .line 3279
    if-eqz v2, :cond_2

    #@8d
    .line 3282
    move-object/from16 v0, p0

    #@8f
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@91
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    #@93
    iget-object v3, v14, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    #@95
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@98
    move-result v2

    #@99
    .line 3279
    if-eqz v2, :cond_2

    #@9b
    .line 3283
    move-object/from16 v0, p0

    #@9d
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@9f
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    #@a1
    iget-object v3, v14, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@a3
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@a6
    move-result v2

    #@a7
    .line 3279
    if-eqz v2, :cond_2

    #@a9
    .line 3284
    move-object/from16 v0, p0

    #@ab
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@ad
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    #@af
    iget-object v3, v14, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    #@b1
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@b4
    move-result v2

    #@b5
    .line 3279
    if-eqz v2, :cond_2

    #@b7
    .line 3285
    iget-object v2, v14, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@b9
    if-eqz v2, :cond_0

    #@bb
    .line 3290
    .end local v14    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_2
    :pswitch_7
    move-object/from16 v0, p0

    #@bd
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@bf
    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mAdded:Z

    #@c1
    if-eqz v2, :cond_0

    #@c3
    .line 3291
    move-object/from16 v0, p1

    #@c5
    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c7
    check-cast v14, Lcom/android/internal/os/SomeArgs;

    #@c9
    .line 3293
    .restart local v14    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v15, v14, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@cb
    check-cast v15, Landroid/content/res/Configuration;

    #@cd
    .line 3294
    .local v15, "config":Landroid/content/res/Configuration;
    if-eqz v15, :cond_3

    #@cf
    .line 3295
    move-object/from16 v0, p0

    #@d1
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@d3
    const/4 v3, 0x0

    #@d4
    invoke-virtual {v2, v15, v3}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    #@d7
    .line 3298
    :cond_3
    move-object/from16 v0, p0

    #@d9
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@db
    iget-object v3, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    #@dd
    iget-object v2, v14, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@df
    check-cast v2, Landroid/graphics/Rect;

    #@e1
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@e4
    .line 3299
    move-object/from16 v0, p0

    #@e6
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@e8
    iget-object v3, v2, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    #@ea
    iget-object v2, v14, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    #@ec
    check-cast v2, Landroid/graphics/Rect;

    #@ee
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@f1
    .line 3300
    move-object/from16 v0, p0

    #@f3
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@f5
    iget-object v3, v2, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    #@f7
    iget-object v2, v14, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@f9
    check-cast v2, Landroid/graphics/Rect;

    #@fb
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@fe
    .line 3301
    move-object/from16 v0, p0

    #@100
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@102
    iget-object v3, v2, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    #@104
    iget-object v2, v14, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    #@106
    check-cast v2, Landroid/graphics/Rect;

    #@108
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@10b
    .line 3302
    move-object/from16 v0, p0

    #@10d
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@10f
    iget-object v3, v2, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    #@111
    iget-object v2, v14, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@113
    check-cast v2, Landroid/graphics/Rect;

    #@115
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@118
    .line 3303
    move-object/from16 v0, p0

    #@11a
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@11c
    iget-object v3, v2, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    #@11e
    iget-object v2, v14, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    #@120
    check-cast v2, Landroid/graphics/Rect;

    #@122
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@125
    .line 3305
    invoke-virtual {v14}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@128
    .line 3307
    move-object/from16 v0, p1

    #@12a
    iget v2, v0, Landroid/os/Message;->what:I

    #@12c
    const/4 v3, 0x5

    #@12d
    if-ne v2, v3, :cond_4

    #@12f
    .line 3308
    move-object/from16 v0, p0

    #@131
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@133
    const/4 v3, 0x1

    #@134
    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    #@136
    .line 3311
    :cond_4
    move-object/from16 v0, p0

    #@138
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@13a
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@13c
    if-eqz v2, :cond_5

    #@13e
    .line 3312
    move-object/from16 v0, p0

    #@140
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@142
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@144
    invoke-static {v2}, Landroid/view/ViewRootImpl;->-wrap5(Landroid/view/View;)V

    #@147
    .line 3315
    :cond_5
    move-object/from16 v0, p0

    #@149
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@14b
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->requestLayout()V

    #@14e
    goto/16 :goto_0

    #@150
    .line 3319
    .end local v14    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v15    # "config":Landroid/content/res/Configuration;
    :pswitch_8
    move-object/from16 v0, p0

    #@152
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@154
    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mAdded:Z

    #@156
    if-eqz v2, :cond_0

    #@158
    .line 3320
    move-object/from16 v0, p0

    #@15a
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@15c
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    #@15e
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    #@161
    move-result v30

    #@162
    .line 3321
    .local v30, "w":I
    move-object/from16 v0, p0

    #@164
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@166
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    #@168
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    #@16b
    move-result v21

    #@16c
    .line 3322
    .local v21, "h":I
    move-object/from16 v0, p1

    #@16e
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@170
    move/from16 v25, v0

    #@172
    .line 3323
    .local v25, "l":I
    move-object/from16 v0, p1

    #@174
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@176
    move/from16 v29, v0

    #@178
    .line 3324
    .local v29, "t":I
    move-object/from16 v0, p0

    #@17a
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@17c
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    #@17e
    move/from16 v0, v25

    #@180
    iput v0, v2, Landroid/graphics/Rect;->left:I

    #@182
    .line 3325
    move-object/from16 v0, p0

    #@184
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@186
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    #@188
    add-int v3, v25, v30

    #@18a
    iput v3, v2, Landroid/graphics/Rect;->right:I

    #@18c
    .line 3326
    move-object/from16 v0, p0

    #@18e
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@190
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    #@192
    move/from16 v0, v29

    #@194
    iput v0, v2, Landroid/graphics/Rect;->top:I

    #@196
    .line 3327
    move-object/from16 v0, p0

    #@198
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@19a
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    #@19c
    add-int v3, v29, v21

    #@19e
    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    #@1a0
    .line 3329
    move-object/from16 v0, p0

    #@1a2
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@1a4
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@1a6
    if-eqz v2, :cond_6

    #@1a8
    .line 3330
    move-object/from16 v0, p0

    #@1aa
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@1ac
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@1ae
    invoke-static {v2}, Landroid/view/ViewRootImpl;->-wrap5(Landroid/view/View;)V

    #@1b1
    .line 3332
    :cond_6
    move-object/from16 v0, p0

    #@1b3
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@1b5
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->requestLayout()V

    #@1b8
    goto/16 :goto_0

    #@1ba
    .line 3336
    .end local v21    # "h":I
    .end local v25    # "l":I
    .end local v29    # "t":I
    .end local v30    # "w":I
    :pswitch_9
    move-object/from16 v0, p0

    #@1bc
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@1be
    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mAdded:Z

    #@1c0
    if-eqz v2, :cond_0

    #@1c2
    .line 3337
    move-object/from16 v0, p1

    #@1c4
    iget v2, v0, Landroid/os/Message;->arg1:I

    #@1c6
    if-eqz v2, :cond_c

    #@1c8
    const/16 v22, 0x1

    #@1ca
    .line 3338
    .local v22, "hasWindowFocus":Z
    :goto_2
    move-object/from16 v0, p0

    #@1cc
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@1ce
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1d0
    move/from16 v0, v22

    #@1d2
    iput-boolean v0, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    #@1d4
    .line 3340
    move-object/from16 v0, p0

    #@1d6
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@1d8
    move/from16 v0, v22

    #@1da
    invoke-static {v2, v0}, Landroid/view/ViewRootImpl;->-wrap7(Landroid/view/ViewRootImpl;Z)V

    #@1dd
    .line 3342
    if-eqz v22, :cond_7

    #@1df
    .line 3343
    move-object/from16 v0, p1

    #@1e1
    iget v2, v0, Landroid/os/Message;->arg2:I

    #@1e3
    if-eqz v2, :cond_d

    #@1e5
    const/16 v23, 0x1

    #@1e7
    .line 3344
    .local v23, "inTouchMode":Z
    :goto_3
    move-object/from16 v0, p0

    #@1e9
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@1eb
    move/from16 v0, v23

    #@1ed
    invoke-static {v2, v0}, Landroid/view/ViewRootImpl;->-wrap2(Landroid/view/ViewRootImpl;Z)Z

    #@1f0
    .line 3346
    move-object/from16 v0, p0

    #@1f2
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@1f4
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1f6
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@1f8
    if-eqz v2, :cond_7

    #@1fa
    move-object/from16 v0, p0

    #@1fc
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@1fe
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@200
    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    #@203
    move-result v2

    #@204
    if-eqz v2, :cond_7

    #@206
    .line 3347
    move-object/from16 v0, p0

    #@208
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@20a
    const/4 v3, 0x1

    #@20b
    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@20d
    .line 3349
    :try_start_0
    move-object/from16 v0, p0

    #@20f
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@211
    iget-object v0, v2, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@213
    move-object/from16 v26, v0

    #@215
    .line 3350
    .local v26, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v26, :cond_e

    #@217
    move-object/from16 v0, v26

    #@219
    iget-object v7, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@21b
    .line 3351
    :goto_4
    move-object/from16 v0, p0

    #@21d
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@21f
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@221
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@223
    .line 3352
    move-object/from16 v0, p0

    #@225
    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@227
    iget v3, v3, Landroid/view/ViewRootImpl;->mWidth:I

    #@229
    move-object/from16 v0, p0

    #@22b
    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@22d
    iget v4, v4, Landroid/view/ViewRootImpl;->mHeight:I

    #@22f
    move-object/from16 v0, p0

    #@231
    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@233
    iget-object v5, v5, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@235
    move-object/from16 v0, p0

    #@237
    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@239
    iget-object v6, v6, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@23b
    .line 3351
    invoke-virtual/range {v2 .. v7}, Landroid/view/HardwareRenderer;->initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    #@23e
    .line 3369
    .end local v23    # "inTouchMode":Z
    .end local v26    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_7
    move-object/from16 v0, p0

    #@240
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@242
    .line 3370
    move-object/from16 v0, p0

    #@244
    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@246
    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@248
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@24a
    .line 3369
    invoke-static {v3}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    #@24d
    move-result v3

    #@24e
    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    #@250
    .line 3372
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@253
    move-result-object v8

    #@254
    .line 3373
    .local v8, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v8, :cond_8

    #@256
    move-object/from16 v0, p0

    #@258
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@25a
    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    #@25c
    if-eqz v2, :cond_8

    #@25e
    move-object/from16 v0, p0

    #@260
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@262
    invoke-static {v2}, Landroid/view/ViewRootImpl;->-wrap3(Landroid/view/ViewRootImpl;)Z

    #@265
    move-result v2

    #@266
    if-eqz v2, :cond_10

    #@268
    .line 3376
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    #@26a
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@26c
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@26e
    if-eqz v2, :cond_9

    #@270
    .line 3377
    move-object/from16 v0, p0

    #@272
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@274
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@276
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    #@278
    invoke-virtual {v2}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    #@27b
    .line 3378
    move-object/from16 v0, p0

    #@27d
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@27f
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@281
    move/from16 v0, v22

    #@283
    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    #@286
    .line 3379
    move-object/from16 v0, p0

    #@288
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@28a
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@28c
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@28e
    move/from16 v0, v22

    #@290
    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->dispatchOnWindowFocusChange(Z)V

    #@293
    .line 3384
    :cond_9
    if-eqz v22, :cond_b

    #@295
    .line 3385
    if-eqz v8, :cond_a

    #@297
    move-object/from16 v0, p0

    #@299
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@29b
    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    #@29d
    if-eqz v2, :cond_a

    #@29f
    move-object/from16 v0, p0

    #@2a1
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@2a3
    invoke-static {v2}, Landroid/view/ViewRootImpl;->-wrap3(Landroid/view/ViewRootImpl;)Z

    #@2a6
    move-result v2

    #@2a7
    if-eqz v2, :cond_11

    #@2a9
    .line 3392
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    #@2ab
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@2ad
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@2af
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@2b1
    and-int/lit16 v3, v3, -0x101

    #@2b3
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@2b5
    .line 3394
    move-object/from16 v0, p0

    #@2b7
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@2b9
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@2bb
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@2be
    move-result-object v2

    #@2bf
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    #@2c1
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@2c3
    and-int/lit16 v3, v3, -0x101

    #@2c5
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@2c7
    .line 3397
    move-object/from16 v0, p0

    #@2c9
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@2cb
    const/4 v3, 0x1

    #@2cc
    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    #@2ce
    .line 3400
    :cond_b
    move-object/from16 v0, p0

    #@2d0
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@2d2
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@2d4
    if-eqz v2, :cond_0

    #@2d6
    move-object/from16 v0, p0

    #@2d8
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@2da
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@2dc
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@2df
    move-result v2

    #@2e0
    if-eqz v2, :cond_0

    #@2e2
    .line 3401
    if-eqz v22, :cond_0

    #@2e4
    .line 3402
    move-object/from16 v0, p0

    #@2e6
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@2e8
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@2ea
    .line 3403
    const/16 v3, 0x20

    #@2ec
    .line 3402
    invoke-virtual {v2, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    #@2ef
    goto/16 :goto_0

    #@2f1
    .line 3337
    .end local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v22    # "hasWindowFocus":Z
    :cond_c
    const/16 v22, 0x0

    #@2f3
    .restart local v22    # "hasWindowFocus":Z
    goto/16 :goto_2

    #@2f5
    .line 3343
    :cond_d
    const/16 v23, 0x0

    #@2f7
    .restart local v23    # "inTouchMode":Z
    goto/16 :goto_3

    #@2f9
    .line 3350
    .restart local v26    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_e
    const/4 v7, 0x0

    #@2fa
    .local v7, "surfaceInsets":Landroid/graphics/Rect;
    goto/16 :goto_4

    #@2fc
    .line 3353
    .end local v7    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v26    # "lp":Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v16

    #@2fd
    .line 3354
    .local v16, "e":Landroid/view/Surface$OutOfResourcesException;
    const-string/jumbo v2, "ViewRootImpl"

    #@300
    const-string/jumbo v3, "OutOfResourcesException locking surface"

    #@303
    move-object/from16 v0, v16

    #@305
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@308
    .line 3356
    :try_start_1
    move-object/from16 v0, p0

    #@30a
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@30c
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@30e
    move-object/from16 v0, p0

    #@310
    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@312
    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@314
    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    #@317
    move-result v2

    #@318
    if-nez v2, :cond_f

    #@31a
    .line 3357
    const-string/jumbo v2, "ViewRootImpl"

    #@31d
    const-string/jumbo v3, "No processes killed for memory; killing self"

    #@320
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@323
    .line 3358
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@326
    move-result v2

    #@327
    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@32a
    .line 3363
    :cond_f
    :goto_7
    move-object/from16 v0, p1

    #@32c
    iget v2, v0, Landroid/os/Message;->what:I

    #@32e
    move-object/from16 v0, p1

    #@330
    iget v3, v0, Landroid/os/Message;->arg1:I

    #@332
    move-object/from16 v0, p1

    #@334
    iget v4, v0, Landroid/os/Message;->arg2:I

    #@336
    move-object/from16 v0, p0

    #@338
    invoke-virtual {v0, v2, v3, v4}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(III)Landroid/os/Message;

    #@33b
    move-result-object v2

    #@33c
    const-wide/16 v4, 0x1f4

    #@33e
    move-object/from16 v0, p0

    #@340
    invoke-virtual {v0, v2, v4, v5}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@343
    .line 3364
    return-void

    #@344
    .line 3374
    .end local v16    # "e":Landroid/view/Surface$OutOfResourcesException;
    .end local v23    # "inTouchMode":Z
    .restart local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_10
    move-object/from16 v0, p0

    #@346
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@348
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@34a
    move/from16 v0, v22

    #@34c
    invoke-virtual {v8, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->onPreWindowFocus(Landroid/view/View;Z)V

    #@34f
    goto/16 :goto_5

    #@351
    .line 3386
    :cond_11
    move-object/from16 v0, p0

    #@353
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@355
    iget-object v9, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@357
    move-object/from16 v0, p0

    #@359
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@35b
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@35d
    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@360
    move-result-object v10

    #@361
    .line 3387
    move-object/from16 v0, p0

    #@363
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@365
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@367
    iget v11, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@369
    .line 3388
    move-object/from16 v0, p0

    #@36b
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@36d
    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    #@36f
    if-eqz v2, :cond_12

    #@371
    const/4 v12, 0x0

    #@372
    :goto_8
    move-object/from16 v0, p0

    #@374
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@376
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@378
    iget v13, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@37a
    .line 3386
    invoke-virtual/range {v8 .. v13}, Landroid/view/inputmethod/InputMethodManager;->onPostWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    #@37d
    goto/16 :goto_6

    #@37f
    .line 3388
    :cond_12
    const/4 v12, 0x1

    #@380
    goto :goto_8

    #@381
    .line 3409
    .end local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v22    # "hasWindowFocus":Z
    :pswitch_a
    move-object/from16 v0, p0

    #@383
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@385
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->doDie()V

    #@388
    goto/16 :goto_0

    #@38a
    .line 3412
    :pswitch_b
    move-object/from16 v0, p1

    #@38c
    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@38e
    check-cast v14, Lcom/android/internal/os/SomeArgs;

    #@390
    .line 3413
    .restart local v14    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v14, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@392
    move-object/from16 v18, v0

    #@394
    check-cast v18, Landroid/view/InputEvent;

    #@396
    .line 3414
    .local v18, "event":Landroid/view/InputEvent;
    iget-object v0, v14, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@398
    move-object/from16 v27, v0

    #@39a
    check-cast v27, Landroid/view/InputEventReceiver;

    #@39c
    .line 3415
    .local v27, "receiver":Landroid/view/InputEventReceiver;
    move-object/from16 v0, p0

    #@39e
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@3a0
    const/4 v3, 0x0

    #@3a1
    const/4 v4, 0x1

    #@3a2
    move-object/from16 v0, v18

    #@3a4
    move-object/from16 v1, v27

    #@3a6
    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    #@3a9
    .line 3416
    invoke-virtual {v14}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@3ac
    goto/16 :goto_0

    #@3ae
    .line 3419
    .end local v14    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v18    # "event":Landroid/view/InputEvent;
    .end local v27    # "receiver":Landroid/view/InputEventReceiver;
    :pswitch_c
    move-object/from16 v0, p1

    #@3b0
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3b2
    move-object/from16 v18, v0

    #@3b4
    check-cast v18, Landroid/view/InputEvent;

    #@3b6
    .line 3420
    .restart local v18    # "event":Landroid/view/InputEvent;
    move-object/from16 v0, p0

    #@3b8
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@3ba
    const/4 v3, 0x0

    #@3bb
    const/16 v4, 0x20

    #@3bd
    const/4 v5, 0x1

    #@3be
    move-object/from16 v0, v18

    #@3c0
    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    #@3c3
    goto/16 :goto_0

    #@3c5
    .line 3426
    .end local v18    # "event":Landroid/view/InputEvent;
    :pswitch_d
    move-object/from16 v0, p1

    #@3c7
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3c9
    move-object/from16 v19, v0

    #@3cb
    check-cast v19, Landroid/view/KeyEvent;

    #@3cd
    .line 3427
    .local v19, "event":Landroid/view/KeyEvent;
    invoke-virtual/range {v19 .. v19}, Landroid/view/KeyEvent;->getFlags()I

    #@3d0
    move-result v2

    #@3d1
    and-int/lit8 v2, v2, 0x8

    #@3d3
    if-eqz v2, :cond_13

    #@3d5
    .line 3431
    invoke-virtual/range {v19 .. v19}, Landroid/view/KeyEvent;->getFlags()I

    #@3d8
    move-result v2

    #@3d9
    and-int/lit8 v2, v2, -0x9

    #@3db
    move-object/from16 v0, v19

    #@3dd
    invoke-static {v0, v2}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    #@3e0
    move-result-object v19

    #@3e1
    .line 3434
    :cond_13
    move-object/from16 v0, p0

    #@3e3
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@3e5
    const/4 v3, 0x0

    #@3e6
    const/4 v4, 0x1

    #@3e7
    const/4 v5, 0x1

    #@3e8
    move-object/from16 v0, v19

    #@3ea
    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    #@3ed
    goto/16 :goto_0

    #@3ef
    .line 3437
    .end local v19    # "event":Landroid/view/KeyEvent;
    :pswitch_e
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@3f2
    move-result-object v8

    #@3f3
    .line 3438
    .restart local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v8, :cond_0

    #@3f5
    .line 3439
    move-object/from16 v0, p1

    #@3f7
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3f9
    check-cast v2, Landroid/view/inputmethod/InputConnection;

    #@3fb
    invoke-virtual {v8, v2}, Landroid/view/inputmethod/InputMethodManager;->reportFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V

    #@3fe
    goto/16 :goto_0

    #@400
    .line 3443
    .end local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_f
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@403
    move-result-object v8

    #@404
    .line 3444
    .restart local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v8, :cond_0

    #@406
    .line 3445
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    #@409
    goto/16 :goto_0

    #@40b
    .line 3449
    .end local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_10
    move-object/from16 v0, p0

    #@40d
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@40f
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@411
    if-eqz v2, :cond_0

    #@413
    .line 3450
    move-object/from16 v0, p0

    #@415
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@417
    iget-object v3, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@419
    move-object/from16 v0, p1

    #@41b
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@41d
    check-cast v2, Ljava/lang/String;

    #@41f
    invoke-virtual {v3, v2}, Landroid/view/View;->onCloseSystemDialogs(Ljava/lang/String;)V

    #@422
    goto/16 :goto_0

    #@424
    .line 3455
    :pswitch_11
    move-object/from16 v0, p1

    #@426
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@428
    move-object/from16 v17, v0

    #@42a
    check-cast v17, Landroid/view/DragEvent;

    #@42c
    .line 3456
    .local v17, "event":Landroid/view/DragEvent;
    move-object/from16 v0, p0

    #@42e
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@430
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    #@432
    move-object/from16 v0, v17

    #@434
    iput-object v2, v0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    #@436
    .line 3457
    move-object/from16 v0, p0

    #@438
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@43a
    move-object/from16 v0, v17

    #@43c
    invoke-static {v2, v0}, Landroid/view/ViewRootImpl;->-wrap6(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V

    #@43f
    goto/16 :goto_0

    #@441
    .line 3460
    .end local v17    # "event":Landroid/view/DragEvent;
    :pswitch_12
    move-object/from16 v0, p0

    #@443
    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@445
    move-object/from16 v0, p1

    #@447
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@449
    check-cast v2, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    #@44b
    invoke-virtual {v3, v2}, Landroid/view/ViewRootImpl;->handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V

    #@44e
    goto/16 :goto_0

    #@450
    .line 3463
    :pswitch_13
    move-object/from16 v0, p1

    #@452
    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@454
    check-cast v15, Landroid/content/res/Configuration;

    #@456
    .line 3464
    .restart local v15    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    #@458
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@45a
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    #@45c
    invoke-virtual {v15, v2}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    #@45f
    move-result v2

    #@460
    if-eqz v2, :cond_14

    #@462
    .line 3465
    move-object/from16 v0, p0

    #@464
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@466
    iget-object v15, v2, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    #@468
    .line 3467
    :cond_14
    move-object/from16 v0, p0

    #@46a
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@46c
    const/4 v3, 0x0

    #@46d
    invoke-virtual {v2, v15, v3}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    #@470
    goto/16 :goto_0

    #@472
    .line 3470
    .end local v15    # "config":Landroid/content/res/Configuration;
    :pswitch_14
    move-object/from16 v0, p0

    #@474
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@476
    const/4 v3, 0x0

    #@477
    const/4 v4, 0x0

    #@478
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@47b
    goto/16 :goto_0

    #@47d
    .line 3473
    :pswitch_15
    move-object/from16 v0, p1

    #@47f
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@481
    move/from16 v28, v0

    #@483
    .line 3474
    .local v28, "remainingFrameCount":I
    move-object/from16 v0, p0

    #@485
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@487
    move/from16 v0, v28

    #@489
    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl;->handleDispatchWindowAnimationStarted(I)V

    #@48c
    goto/16 :goto_0

    #@48e
    .line 3477
    .end local v28    # "remainingFrameCount":I
    :pswitch_16
    move-object/from16 v0, p0

    #@490
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@492
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->handleDispatchWindowAnimationStopped()V

    #@495
    goto/16 :goto_0

    #@497
    .line 3480
    :pswitch_17
    move-object/from16 v0, p0

    #@499
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@49b
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@49d
    if-eqz v2, :cond_0

    #@49f
    .line 3481
    move-object/from16 v0, p0

    #@4a1
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@4a3
    move-object/from16 v0, p0

    #@4a5
    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@4a7
    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@4a9
    invoke-virtual {v2, v3}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    #@4ac
    goto/16 :goto_0

    #@4ae
    .line 3485
    :pswitch_18
    move-object/from16 v0, p0

    #@4b0
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@4b2
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->handleDispatchWindowShown()V

    #@4b5
    goto/16 :goto_0

    #@4b7
    .line 3360
    .restart local v16    # "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v22    # "hasWindowFocus":Z
    .restart local v23    # "inTouchMode":Z
    :catch_1
    move-exception v20

    #@4b8
    .local v20, "ex":Landroid/os/RemoteException;
    goto/16 :goto_7

    #@4ba
    .line 3257
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_a
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_3
        :pswitch_0
        :pswitch_14
        :pswitch_17
        :pswitch_8
        :pswitch_c
        :pswitch_18
        :pswitch_16
        :pswitch_15
    .end packed-switch
.end method
