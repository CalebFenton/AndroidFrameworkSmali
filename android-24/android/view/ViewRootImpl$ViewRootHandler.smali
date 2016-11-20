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
    .line 3390
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
    .line 3393
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 3439
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0

    #@a
    .line 3395
    :pswitch_1
    const-string/jumbo v0, "MSG_INVALIDATE"

    #@d
    return-object v0

    #@e
    .line 3397
    :pswitch_2
    const-string/jumbo v0, "MSG_INVALIDATE_RECT"

    #@11
    return-object v0

    #@12
    .line 3399
    :pswitch_3
    const-string/jumbo v0, "MSG_DIE"

    #@15
    return-object v0

    #@16
    .line 3401
    :pswitch_4
    const-string/jumbo v0, "MSG_RESIZED"

    #@19
    return-object v0

    #@1a
    .line 3403
    :pswitch_5
    const-string/jumbo v0, "MSG_RESIZED_REPORT"

    #@1d
    return-object v0

    #@1e
    .line 3405
    :pswitch_6
    const-string/jumbo v0, "MSG_WINDOW_FOCUS_CHANGED"

    #@21
    return-object v0

    #@22
    .line 3407
    :pswitch_7
    const-string/jumbo v0, "MSG_DISPATCH_INPUT_EVENT"

    #@25
    return-object v0

    #@26
    .line 3409
    :pswitch_8
    const-string/jumbo v0, "MSG_DISPATCH_APP_VISIBILITY"

    #@29
    return-object v0

    #@2a
    .line 3411
    :pswitch_9
    const-string/jumbo v0, "MSG_DISPATCH_GET_NEW_SURFACE"

    #@2d
    return-object v0

    #@2e
    .line 3413
    :pswitch_a
    const-string/jumbo v0, "MSG_DISPATCH_KEY_FROM_IME"

    #@31
    return-object v0

    #@32
    .line 3415
    :pswitch_b
    const-string/jumbo v0, "MSG_CHECK_FOCUS"

    #@35
    return-object v0

    #@36
    .line 3417
    :pswitch_c
    const-string/jumbo v0, "MSG_CLOSE_SYSTEM_DIALOGS"

    #@39
    return-object v0

    #@3a
    .line 3419
    :pswitch_d
    const-string/jumbo v0, "MSG_DISPATCH_DRAG_EVENT"

    #@3d
    return-object v0

    #@3e
    .line 3421
    :pswitch_e
    const-string/jumbo v0, "MSG_DISPATCH_DRAG_LOCATION_EVENT"

    #@41
    return-object v0

    #@42
    .line 3423
    :pswitch_f
    const-string/jumbo v0, "MSG_DISPATCH_SYSTEM_UI_VISIBILITY"

    #@45
    return-object v0

    #@46
    .line 3425
    :pswitch_10
    const-string/jumbo v0, "MSG_UPDATE_CONFIGURATION"

    #@49
    return-object v0

    #@4a
    .line 3427
    :pswitch_11
    const-string/jumbo v0, "MSG_PROCESS_INPUT_EVENTS"

    #@4d
    return-object v0

    #@4e
    .line 3429
    :pswitch_12
    const-string/jumbo v0, "MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST"

    #@51
    return-object v0

    #@52
    .line 3431
    :pswitch_13
    const-string/jumbo v0, "MSG_WINDOW_MOVED"

    #@55
    return-object v0

    #@56
    .line 3433
    :pswitch_14
    const-string/jumbo v0, "MSG_SYNTHESIZE_INPUT_EVENT"

    #@59
    return-object v0

    #@5a
    .line 3435
    :pswitch_15
    const-string/jumbo v0, "MSG_DISPATCH_WINDOW_SHOWN"

    #@5d
    return-object v0

    #@5e
    .line 3437
    :pswitch_16
    const-string/jumbo v0, "MSG_UPDATE_POINTER_ICON"

    #@61
    return-object v0

    #@62
    .line 3393
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
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_16
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 36
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 3454
    move-object/from16 v0, p1

    #@2
    iget v2, v0, Landroid/os/Message;->what:I

    #@4
    packed-switch v2, :pswitch_data_0

    #@7
    .line 3453
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@8
    .line 3456
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
    .line 3459
    :pswitch_2
    move-object/from16 v0, p1

    #@14
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@16
    move-object/from16 v27, v0

    #@18
    check-cast v27, Landroid/view/View$AttachInfo$InvalidateInfo;

    #@1a
    .line 3460
    .local v27, "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    move-object/from16 v0, v27

    #@1c
    iget-object v2, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    #@1e
    move-object/from16 v0, v27

    #@20
    iget v3, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    #@22
    move-object/from16 v0, v27

    #@24
    iget v4, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    #@26
    move-object/from16 v0, v27

    #@28
    iget v5, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    #@2a
    move-object/from16 v0, v27

    #@2c
    iget v6, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    #@2e
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    #@31
    .line 3461
    invoke-virtual/range {v27 .. v27}, Landroid/view/View$AttachInfo$InvalidateInfo;->recycle()V

    #@34
    goto :goto_0

    #@35
    .line 3464
    .end local v27    # "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    :pswitch_3
    move-object/from16 v0, p0

    #@37
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@39
    const/4 v3, 0x0

    #@3a
    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    #@3c
    .line 3465
    move-object/from16 v0, p0

    #@3e
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@40
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    #@43
    goto :goto_0

    #@44
    .line 3468
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
    .line 3471
    :pswitch_5
    move-object/from16 v0, p0

    #@57
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@59
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->handleGetNewSurface()V

    #@5c
    goto :goto_0

    #@5d
    .line 3475
    :pswitch_6
    move-object/from16 v0, p1

    #@5f
    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@61
    check-cast v14, Lcom/android/internal/os/SomeArgs;

    #@63
    .line 3476
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
    .line 3477
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
    .line 3476
    if-eqz v2, :cond_2

    #@7f
    .line 3478
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
    .line 3476
    if-eqz v2, :cond_2

    #@8d
    .line 3479
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
    .line 3476
    if-eqz v2, :cond_2

    #@9b
    .line 3480
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
    .line 3476
    if-eqz v2, :cond_2

    #@a9
    .line 3481
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
    .line 3476
    if-eqz v2, :cond_2

    #@b7
    .line 3482
    move-object/from16 v0, p0

    #@b9
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@bb
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    #@bd
    iget-object v3, v14, Lcom/android/internal/os/SomeArgs;->arg8:Ljava/lang/Object;

    #@bf
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@c2
    move-result v2

    #@c3
    .line 3476
    if-eqz v2, :cond_2

    #@c5
    .line 3483
    iget-object v2, v14, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@c7
    if-nez v2, :cond_2

    #@c9
    .line 3484
    iget v2, v14, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@cb
    if-eqz v2, :cond_0

    #@cd
    .line 3489
    .end local v14    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_2
    :pswitch_7
    move-object/from16 v0, p0

    #@cf
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@d1
    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mAdded:Z

    #@d3
    if-eqz v2, :cond_0

    #@d5
    .line 3490
    move-object/from16 v0, p1

    #@d7
    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d9
    check-cast v14, Lcom/android/internal/os/SomeArgs;

    #@db
    .line 3492
    .restart local v14    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v15, v14, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@dd
    check-cast v15, Landroid/content/res/Configuration;

    #@df
    .line 3493
    .local v15, "config":Landroid/content/res/Configuration;
    if-eqz v15, :cond_3

    #@e1
    .line 3494
    move-object/from16 v0, p0

    #@e3
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@e5
    const/4 v3, 0x0

    #@e6
    invoke-virtual {v2, v15, v3}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    #@e9
    .line 3497
    :cond_3
    move-object/from16 v0, p0

    #@eb
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@ed
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    #@ef
    iget-object v3, v14, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@f1
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@f4
    move-result v2

    #@f5
    if-eqz v2, :cond_6

    #@f7
    .line 3498
    move-object/from16 v0, p0

    #@f9
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@fb
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    #@fd
    iget-object v3, v14, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    #@ff
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@102
    move-result v2

    #@103
    if-eqz v2, :cond_6

    #@105
    .line 3499
    move-object/from16 v0, p0

    #@107
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@109
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    #@10b
    iget-object v3, v14, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@10d
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@110
    move-result v2

    #@111
    if-eqz v2, :cond_6

    #@113
    .line 3500
    move-object/from16 v0, p0

    #@115
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@117
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    #@119
    iget-object v3, v14, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    #@11b
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@11e
    move-result v2

    #@11f
    if-eqz v2, :cond_6

    #@121
    .line 3501
    move-object/from16 v0, p0

    #@123
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@125
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    #@127
    iget-object v3, v14, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@129
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@12c
    move-result v2

    #@12d
    if-eqz v2, :cond_6

    #@12f
    .line 3502
    move-object/from16 v0, p0

    #@131
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@133
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    #@135
    iget-object v3, v14, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    #@137
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@13a
    move-result v2

    #@13b
    if-eqz v2, :cond_7

    #@13d
    const/16 v23, 0x0

    #@13f
    .line 3504
    .local v23, "framesChanged":Z
    :goto_2
    move-object/from16 v0, p0

    #@141
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@143
    iget-object v3, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    #@145
    iget-object v2, v14, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@147
    check-cast v2, Landroid/graphics/Rect;

    #@149
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@14c
    .line 3505
    move-object/from16 v0, p0

    #@14e
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@150
    iget-object v3, v2, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    #@152
    iget-object v2, v14, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    #@154
    check-cast v2, Landroid/graphics/Rect;

    #@156
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@159
    .line 3506
    move-object/from16 v0, p0

    #@15b
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@15d
    iget-object v3, v2, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    #@15f
    iget-object v2, v14, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@161
    check-cast v2, Landroid/graphics/Rect;

    #@163
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@166
    .line 3507
    move-object/from16 v0, p0

    #@168
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@16a
    iget-object v3, v2, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    #@16c
    iget-object v2, v14, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    #@16e
    check-cast v2, Landroid/graphics/Rect;

    #@170
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@173
    .line 3508
    move-object/from16 v0, p0

    #@175
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@177
    iget-object v3, v2, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    #@179
    iget-object v2, v14, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@17b
    check-cast v2, Landroid/graphics/Rect;

    #@17d
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@180
    .line 3509
    move-object/from16 v0, p0

    #@182
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@184
    iget-object v3, v2, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    #@186
    iget-object v2, v14, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    #@188
    check-cast v2, Landroid/graphics/Rect;

    #@18a
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@18d
    .line 3510
    move-object/from16 v0, p0

    #@18f
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@191
    iget-object v3, v2, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    #@193
    iget-object v2, v14, Lcom/android/internal/os/SomeArgs;->arg8:Ljava/lang/Object;

    #@195
    check-cast v2, Landroid/graphics/Rect;

    #@197
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@19a
    .line 3511
    move-object/from16 v0, p0

    #@19c
    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@19e
    iget v2, v14, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@1a0
    if-eqz v2, :cond_8

    #@1a2
    const/4 v2, 0x1

    #@1a3
    :goto_3
    iput-boolean v2, v3, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    #@1a5
    .line 3512
    move-object/from16 v0, p0

    #@1a7
    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@1a9
    iget v2, v14, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@1ab
    if-eqz v2, :cond_9

    #@1ad
    const/4 v2, 0x1

    #@1ae
    :goto_4
    iput-boolean v2, v3, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    #@1b0
    .line 3514
    invoke-virtual {v14}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1b3
    .line 3516
    move-object/from16 v0, p1

    #@1b5
    iget v2, v0, Landroid/os/Message;->what:I

    #@1b7
    const/4 v3, 0x5

    #@1b8
    if-ne v2, v3, :cond_4

    #@1ba
    .line 3517
    move-object/from16 v0, p0

    #@1bc
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@1be
    const/4 v3, 0x1

    #@1bf
    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    #@1c1
    .line 3520
    :cond_4
    move-object/from16 v0, p0

    #@1c3
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@1c5
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@1c7
    if-eqz v2, :cond_5

    #@1c9
    if-eqz v23, :cond_5

    #@1cb
    .line 3521
    move-object/from16 v0, p0

    #@1cd
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@1cf
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@1d1
    invoke-static {v2}, Landroid/view/ViewRootImpl;->-wrap6(Landroid/view/View;)V

    #@1d4
    .line 3524
    :cond_5
    move-object/from16 v0, p0

    #@1d6
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@1d8
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->requestLayout()V

    #@1db
    goto/16 :goto_0

    #@1dd
    .line 3497
    .end local v23    # "framesChanged":Z
    :cond_6
    const/16 v23, 0x1

    #@1df
    .restart local v23    # "framesChanged":Z
    goto/16 :goto_2

    #@1e1
    .line 3502
    .end local v23    # "framesChanged":Z
    :cond_7
    const/16 v23, 0x1

    #@1e3
    .restart local v23    # "framesChanged":Z
    goto/16 :goto_2

    #@1e5
    .line 3511
    :cond_8
    const/4 v2, 0x0

    #@1e6
    goto :goto_3

    #@1e7
    .line 3512
    :cond_9
    const/4 v2, 0x0

    #@1e8
    goto :goto_4

    #@1e9
    .line 3528
    .end local v14    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v15    # "config":Landroid/content/res/Configuration;
    .end local v23    # "framesChanged":Z
    :pswitch_8
    move-object/from16 v0, p0

    #@1eb
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@1ed
    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mAdded:Z

    #@1ef
    if-eqz v2, :cond_0

    #@1f1
    .line 3529
    move-object/from16 v0, p0

    #@1f3
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@1f5
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    #@1f7
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    #@1fa
    move-result v35

    #@1fb
    .line 3530
    .local v35, "w":I
    move-object/from16 v0, p0

    #@1fd
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@1ff
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    #@201
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    #@204
    move-result v24

    #@205
    .line 3531
    .local v24, "h":I
    move-object/from16 v0, p1

    #@207
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@209
    move/from16 v29, v0

    #@20b
    .line 3532
    .local v29, "l":I
    move-object/from16 v0, p1

    #@20d
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@20f
    move/from16 v34, v0

    #@211
    .line 3533
    .local v34, "t":I
    move-object/from16 v0, p0

    #@213
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@215
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    #@217
    move/from16 v0, v29

    #@219
    iput v0, v2, Landroid/graphics/Rect;->left:I

    #@21b
    .line 3534
    move-object/from16 v0, p0

    #@21d
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@21f
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    #@221
    add-int v3, v29, v35

    #@223
    iput v3, v2, Landroid/graphics/Rect;->right:I

    #@225
    .line 3535
    move-object/from16 v0, p0

    #@227
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@229
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    #@22b
    move/from16 v0, v34

    #@22d
    iput v0, v2, Landroid/graphics/Rect;->top:I

    #@22f
    .line 3536
    move-object/from16 v0, p0

    #@231
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@233
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    #@235
    add-int v3, v34, v24

    #@237
    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    #@239
    .line 3538
    move-object/from16 v0, p0

    #@23b
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@23d
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    #@23f
    move-object/from16 v0, p0

    #@241
    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@243
    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    #@245
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@248
    .line 3542
    move-object/from16 v0, p0

    #@24a
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@24c
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@24e
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@250
    const/16 v3, 0x7f2

    #@252
    if-ne v2, v3, :cond_b

    #@254
    const/16 v28, 0x1

    #@256
    .line 3543
    .local v28, "isDockedDivider":Z
    :goto_5
    move-object/from16 v0, p0

    #@258
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@25a
    invoke-static {v2}, Landroid/view/ViewRootImpl;->-get0(Landroid/view/ViewRootImpl;)Z

    #@25d
    move-result v2

    #@25e
    if-eqz v2, :cond_c

    #@260
    move-object/from16 v0, p0

    #@262
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@264
    invoke-static {v2}, Landroid/view/ViewRootImpl;->-get3(Landroid/view/ViewRootImpl;)I

    #@267
    move-result v2

    #@268
    const/4 v3, 0x1

    #@269
    if-ne v2, v3, :cond_c

    #@26b
    const/16 v33, 0x1

    #@26d
    .line 3545
    .local v33, "suppress":Z
    :goto_6
    if-nez v33, :cond_d

    #@26f
    .line 3546
    move-object/from16 v0, p0

    #@271
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@273
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@275
    if-eqz v2, :cond_a

    #@277
    .line 3547
    move-object/from16 v0, p0

    #@279
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@27b
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@27d
    invoke-static {v2}, Landroid/view/ViewRootImpl;->-wrap6(Landroid/view/View;)V

    #@280
    .line 3549
    :cond_a
    move-object/from16 v0, p0

    #@282
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@284
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->requestLayout()V

    #@287
    goto/16 :goto_0

    #@289
    .line 3542
    .end local v28    # "isDockedDivider":Z
    .end local v33    # "suppress":Z
    :cond_b
    const/16 v28, 0x0

    #@28b
    .restart local v28    # "isDockedDivider":Z
    goto :goto_5

    #@28c
    :cond_c
    move/from16 v33, v28

    #@28e
    .line 3544
    goto :goto_6

    #@28f
    .line 3551
    .restart local v33    # "suppress":Z
    :cond_d
    move-object/from16 v0, p0

    #@291
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@293
    move-object/from16 v0, p0

    #@295
    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@297
    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    #@299
    invoke-static {v2, v3}, Landroid/view/ViewRootImpl;->-wrap8(Landroid/view/ViewRootImpl;Landroid/graphics/Rect;)V

    #@29c
    goto/16 :goto_0

    #@29e
    .line 3556
    .end local v24    # "h":I
    .end local v28    # "isDockedDivider":Z
    .end local v29    # "l":I
    .end local v33    # "suppress":Z
    .end local v34    # "t":I
    .end local v35    # "w":I
    :pswitch_9
    move-object/from16 v0, p0

    #@2a0
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@2a2
    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mAdded:Z

    #@2a4
    if-eqz v2, :cond_0

    #@2a6
    .line 3557
    move-object/from16 v0, p1

    #@2a8
    iget v2, v0, Landroid/os/Message;->arg1:I

    #@2aa
    if-eqz v2, :cond_12

    #@2ac
    const/16 v25, 0x1

    #@2ae
    .line 3558
    .local v25, "hasWindowFocus":Z
    :goto_7
    move-object/from16 v0, p0

    #@2b0
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@2b2
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2b4
    move/from16 v0, v25

    #@2b6
    iput-boolean v0, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    #@2b8
    .line 3560
    move-object/from16 v0, p0

    #@2ba
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@2bc
    move/from16 v0, v25

    #@2be
    invoke-static {v2, v0}, Landroid/view/ViewRootImpl;->-wrap9(Landroid/view/ViewRootImpl;Z)V

    #@2c1
    .line 3562
    if-eqz v25, :cond_e

    #@2c3
    .line 3563
    move-object/from16 v0, p1

    #@2c5
    iget v2, v0, Landroid/os/Message;->arg2:I

    #@2c7
    if-eqz v2, :cond_13

    #@2c9
    const/16 v26, 0x1

    #@2cb
    .line 3564
    .local v26, "inTouchMode":Z
    :goto_8
    move-object/from16 v0, p0

    #@2cd
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@2cf
    move/from16 v0, v26

    #@2d1
    invoke-static {v2, v0}, Landroid/view/ViewRootImpl;->-wrap2(Landroid/view/ViewRootImpl;Z)Z

    #@2d4
    .line 3566
    move-object/from16 v0, p0

    #@2d6
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@2d8
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@2da
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@2dc
    if-eqz v2, :cond_e

    #@2de
    move-object/from16 v0, p0

    #@2e0
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@2e2
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@2e4
    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    #@2e7
    move-result v2

    #@2e8
    if-eqz v2, :cond_e

    #@2ea
    .line 3567
    move-object/from16 v0, p0

    #@2ec
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@2ee
    const/4 v3, 0x1

    #@2ef
    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@2f1
    .line 3569
    :try_start_0
    move-object/from16 v0, p0

    #@2f3
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@2f5
    iget-object v0, v2, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@2f7
    move-object/from16 v30, v0

    #@2f9
    .line 3570
    .local v30, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v30, :cond_14

    #@2fb
    move-object/from16 v0, v30

    #@2fd
    iget-object v7, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@2ff
    .line 3571
    :goto_9
    move-object/from16 v0, p0

    #@301
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@303
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@305
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@307
    .line 3572
    move-object/from16 v0, p0

    #@309
    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@30b
    iget v3, v3, Landroid/view/ViewRootImpl;->mWidth:I

    #@30d
    move-object/from16 v0, p0

    #@30f
    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@311
    iget v4, v4, Landroid/view/ViewRootImpl;->mHeight:I

    #@313
    move-object/from16 v0, p0

    #@315
    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@317
    iget-object v5, v5, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@319
    move-object/from16 v0, p0

    #@31b
    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@31d
    iget-object v6, v6, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    #@31f
    .line 3571
    invoke-virtual/range {v2 .. v7}, Landroid/view/ThreadedRenderer;->initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    #@322
    .line 3589
    .end local v26    # "inTouchMode":Z
    .end local v30    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_e
    move-object/from16 v0, p0

    #@324
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@326
    .line 3590
    move-object/from16 v0, p0

    #@328
    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@32a
    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@32c
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@32e
    .line 3589
    invoke-static {v3}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    #@331
    move-result v3

    #@332
    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    #@334
    .line 3592
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@337
    move-result-object v8

    #@338
    .line 3593
    .local v8, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v8, :cond_f

    #@33a
    move-object/from16 v0, p0

    #@33c
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@33e
    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    #@340
    if-eqz v2, :cond_f

    #@342
    move-object/from16 v0, p0

    #@344
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@346
    invoke-static {v2}, Landroid/view/ViewRootImpl;->-wrap3(Landroid/view/ViewRootImpl;)Z

    #@349
    move-result v2

    #@34a
    if-eqz v2, :cond_16

    #@34c
    .line 3596
    :cond_f
    :goto_a
    move-object/from16 v0, p0

    #@34e
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@350
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@352
    if-eqz v2, :cond_10

    #@354
    .line 3597
    move-object/from16 v0, p0

    #@356
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@358
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@35a
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    #@35c
    invoke-virtual {v2}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    #@35f
    .line 3598
    move-object/from16 v0, p0

    #@361
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@363
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@365
    move/from16 v0, v25

    #@367
    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    #@36a
    .line 3599
    move-object/from16 v0, p0

    #@36c
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@36e
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@370
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@372
    move/from16 v0, v25

    #@374
    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->dispatchOnWindowFocusChange(Z)V

    #@377
    .line 3604
    :cond_10
    if-eqz v25, :cond_0

    #@379
    .line 3605
    if-eqz v8, :cond_11

    #@37b
    move-object/from16 v0, p0

    #@37d
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@37f
    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    #@381
    if-eqz v2, :cond_11

    #@383
    move-object/from16 v0, p0

    #@385
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@387
    invoke-static {v2}, Landroid/view/ViewRootImpl;->-wrap3(Landroid/view/ViewRootImpl;)Z

    #@38a
    move-result v2

    #@38b
    if-eqz v2, :cond_17

    #@38d
    .line 3612
    :cond_11
    :goto_b
    move-object/from16 v0, p0

    #@38f
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@391
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@393
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@395
    and-int/lit16 v3, v3, -0x101

    #@397
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@399
    .line 3614
    move-object/from16 v0, p0

    #@39b
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@39d
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@39f
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3a2
    move-result-object v2

    #@3a3
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    #@3a5
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@3a7
    and-int/lit16 v3, v3, -0x101

    #@3a9
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@3ab
    .line 3617
    move-object/from16 v0, p0

    #@3ad
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@3af
    const/4 v3, 0x1

    #@3b0
    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    #@3b2
    goto/16 :goto_0

    #@3b4
    .line 3557
    .end local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v25    # "hasWindowFocus":Z
    :cond_12
    const/16 v25, 0x0

    #@3b6
    .restart local v25    # "hasWindowFocus":Z
    goto/16 :goto_7

    #@3b8
    .line 3563
    :cond_13
    const/16 v26, 0x0

    #@3ba
    .restart local v26    # "inTouchMode":Z
    goto/16 :goto_8

    #@3bc
    .line 3570
    .restart local v30    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_14
    const/4 v7, 0x0

    #@3bd
    .local v7, "surfaceInsets":Landroid/graphics/Rect;
    goto/16 :goto_9

    #@3bf
    .line 3573
    .end local v7    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v30    # "lp":Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v17

    #@3c0
    .line 3574
    .local v17, "e":Landroid/view/Surface$OutOfResourcesException;
    move-object/from16 v0, p0

    #@3c2
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@3c4
    invoke-static {v2}, Landroid/view/ViewRootImpl;->-get4(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    #@3c7
    move-result-object v2

    #@3c8
    const-string/jumbo v3, "OutOfResourcesException locking surface"

    #@3cb
    move-object/from16 v0, v17

    #@3cd
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3d0
    .line 3576
    :try_start_1
    move-object/from16 v0, p0

    #@3d2
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@3d4
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@3d6
    move-object/from16 v0, p0

    #@3d8
    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@3da
    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@3dc
    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    #@3df
    move-result v2

    #@3e0
    if-nez v2, :cond_15

    #@3e2
    .line 3577
    move-object/from16 v0, p0

    #@3e4
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@3e6
    invoke-static {v2}, Landroid/view/ViewRootImpl;->-get4(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    #@3e9
    move-result-object v2

    #@3ea
    const-string/jumbo v3, "No processes killed for memory; killing self"

    #@3ed
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3f0
    .line 3578
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@3f3
    move-result v2

    #@3f4
    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@3f7
    .line 3583
    :cond_15
    :goto_c
    move-object/from16 v0, p1

    #@3f9
    iget v2, v0, Landroid/os/Message;->what:I

    #@3fb
    move-object/from16 v0, p1

    #@3fd
    iget v3, v0, Landroid/os/Message;->arg1:I

    #@3ff
    move-object/from16 v0, p1

    #@401
    iget v4, v0, Landroid/os/Message;->arg2:I

    #@403
    move-object/from16 v0, p0

    #@405
    invoke-virtual {v0, v2, v3, v4}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(III)Landroid/os/Message;

    #@408
    move-result-object v2

    #@409
    const-wide/16 v4, 0x1f4

    #@40b
    move-object/from16 v0, p0

    #@40d
    invoke-virtual {v0, v2, v4, v5}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@410
    .line 3584
    return-void

    #@411
    .line 3594
    .end local v17    # "e":Landroid/view/Surface$OutOfResourcesException;
    .end local v26    # "inTouchMode":Z
    .restart local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_16
    move-object/from16 v0, p0

    #@413
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@415
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@417
    move/from16 v0, v25

    #@419
    invoke-virtual {v8, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->onPreWindowFocus(Landroid/view/View;Z)V

    #@41c
    goto/16 :goto_a

    #@41e
    .line 3606
    :cond_17
    move-object/from16 v0, p0

    #@420
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@422
    iget-object v9, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@424
    move-object/from16 v0, p0

    #@426
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@428
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@42a
    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@42d
    move-result-object v10

    #@42e
    .line 3607
    move-object/from16 v0, p0

    #@430
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@432
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@434
    iget v11, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@436
    .line 3608
    move-object/from16 v0, p0

    #@438
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@43a
    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    #@43c
    if-eqz v2, :cond_18

    #@43e
    const/4 v12, 0x0

    #@43f
    :goto_d
    move-object/from16 v0, p0

    #@441
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@443
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@445
    iget v13, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@447
    .line 3606
    invoke-virtual/range {v8 .. v13}, Landroid/view/inputmethod/InputMethodManager;->onPostWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    #@44a
    goto/16 :goto_b

    #@44c
    .line 3608
    :cond_18
    const/4 v12, 0x1

    #@44d
    goto :goto_d

    #@44e
    .line 3622
    .end local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v25    # "hasWindowFocus":Z
    :pswitch_a
    move-object/from16 v0, p0

    #@450
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@452
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->doDie()V

    #@455
    goto/16 :goto_0

    #@457
    .line 3625
    :pswitch_b
    move-object/from16 v0, p1

    #@459
    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@45b
    check-cast v14, Lcom/android/internal/os/SomeArgs;

    #@45d
    .line 3626
    .restart local v14    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v14, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@45f
    move-object/from16 v19, v0

    #@461
    check-cast v19, Landroid/view/InputEvent;

    #@463
    .line 3627
    .local v19, "event":Landroid/view/InputEvent;
    iget-object v0, v14, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@465
    move-object/from16 v31, v0

    #@467
    check-cast v31, Landroid/view/InputEventReceiver;

    #@469
    .line 3628
    .local v31, "receiver":Landroid/view/InputEventReceiver;
    move-object/from16 v0, p0

    #@46b
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@46d
    const/4 v3, 0x0

    #@46e
    const/4 v4, 0x1

    #@46f
    move-object/from16 v0, v19

    #@471
    move-object/from16 v1, v31

    #@473
    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    #@476
    .line 3629
    invoke-virtual {v14}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@479
    goto/16 :goto_0

    #@47b
    .line 3632
    .end local v14    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v19    # "event":Landroid/view/InputEvent;
    .end local v31    # "receiver":Landroid/view/InputEventReceiver;
    :pswitch_c
    move-object/from16 v0, p1

    #@47d
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@47f
    move-object/from16 v19, v0

    #@481
    check-cast v19, Landroid/view/InputEvent;

    #@483
    .line 3633
    .restart local v19    # "event":Landroid/view/InputEvent;
    move-object/from16 v0, p0

    #@485
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@487
    const/4 v3, 0x0

    #@488
    const/16 v4, 0x20

    #@48a
    const/4 v5, 0x1

    #@48b
    move-object/from16 v0, v19

    #@48d
    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    #@490
    goto/16 :goto_0

    #@492
    .line 3639
    .end local v19    # "event":Landroid/view/InputEvent;
    :pswitch_d
    move-object/from16 v0, p1

    #@494
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@496
    move-object/from16 v20, v0

    #@498
    check-cast v20, Landroid/view/KeyEvent;

    #@49a
    .line 3640
    .local v20, "event":Landroid/view/KeyEvent;
    invoke-virtual/range {v20 .. v20}, Landroid/view/KeyEvent;->getFlags()I

    #@49d
    move-result v2

    #@49e
    and-int/lit8 v2, v2, 0x8

    #@4a0
    if-eqz v2, :cond_19

    #@4a2
    .line 3644
    invoke-virtual/range {v20 .. v20}, Landroid/view/KeyEvent;->getFlags()I

    #@4a5
    move-result v2

    #@4a6
    and-int/lit8 v2, v2, -0x9

    #@4a8
    move-object/from16 v0, v20

    #@4aa
    invoke-static {v0, v2}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    #@4ad
    move-result-object v20

    #@4ae
    .line 3647
    :cond_19
    move-object/from16 v0, p0

    #@4b0
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@4b2
    const/4 v3, 0x0

    #@4b3
    const/4 v4, 0x1

    #@4b4
    const/4 v5, 0x1

    #@4b5
    move-object/from16 v0, v20

    #@4b7
    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    #@4ba
    goto/16 :goto_0

    #@4bc
    .line 3650
    .end local v20    # "event":Landroid/view/KeyEvent;
    :pswitch_e
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@4bf
    move-result-object v8

    #@4c0
    .line 3651
    .restart local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v8, :cond_0

    #@4c2
    .line 3652
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    #@4c5
    goto/16 :goto_0

    #@4c7
    .line 3656
    .end local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_f
    move-object/from16 v0, p0

    #@4c9
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@4cb
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@4cd
    if-eqz v2, :cond_0

    #@4cf
    .line 3657
    move-object/from16 v0, p0

    #@4d1
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@4d3
    iget-object v3, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@4d5
    move-object/from16 v0, p1

    #@4d7
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4d9
    check-cast v2, Ljava/lang/String;

    #@4db
    invoke-virtual {v3, v2}, Landroid/view/View;->onCloseSystemDialogs(Ljava/lang/String;)V

    #@4de
    goto/16 :goto_0

    #@4e0
    .line 3662
    :pswitch_10
    move-object/from16 v0, p1

    #@4e2
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4e4
    move-object/from16 v18, v0

    #@4e6
    check-cast v18, Landroid/view/DragEvent;

    #@4e8
    .line 3663
    .local v18, "event":Landroid/view/DragEvent;
    move-object/from16 v0, p0

    #@4ea
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@4ec
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    #@4ee
    move-object/from16 v0, v18

    #@4f0
    iput-object v2, v0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    #@4f2
    .line 3664
    move-object/from16 v0, p0

    #@4f4
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@4f6
    move-object/from16 v0, v18

    #@4f8
    invoke-static {v2, v0}, Landroid/view/ViewRootImpl;->-wrap7(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V

    #@4fb
    goto/16 :goto_0

    #@4fd
    .line 3667
    .end local v18    # "event":Landroid/view/DragEvent;
    :pswitch_11
    move-object/from16 v0, p0

    #@4ff
    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@501
    move-object/from16 v0, p1

    #@503
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@505
    check-cast v2, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    #@507
    invoke-virtual {v3, v2}, Landroid/view/ViewRootImpl;->handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V

    #@50a
    goto/16 :goto_0

    #@50c
    .line 3670
    :pswitch_12
    move-object/from16 v0, p1

    #@50e
    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@510
    check-cast v15, Landroid/content/res/Configuration;

    #@512
    .line 3671
    .restart local v15    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    #@514
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@516
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    #@518
    invoke-virtual {v15, v2}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    #@51b
    move-result v2

    #@51c
    if-eqz v2, :cond_1a

    #@51e
    .line 3672
    move-object/from16 v0, p0

    #@520
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@522
    iget-object v15, v2, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    #@524
    .line 3674
    :cond_1a
    move-object/from16 v0, p0

    #@526
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@528
    const/4 v3, 0x0

    #@529
    invoke-virtual {v2, v15, v3}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    #@52c
    goto/16 :goto_0

    #@52e
    .line 3677
    .end local v15    # "config":Landroid/content/res/Configuration;
    :pswitch_13
    move-object/from16 v0, p0

    #@530
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@532
    const/4 v3, 0x0

    #@533
    const/4 v4, 0x0

    #@534
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@537
    goto/16 :goto_0

    #@539
    .line 3680
    :pswitch_14
    move-object/from16 v0, p0

    #@53b
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@53d
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@53f
    if-eqz v2, :cond_0

    #@541
    .line 3681
    move-object/from16 v0, p0

    #@543
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@545
    move-object/from16 v0, p0

    #@547
    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@549
    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@54b
    invoke-virtual {v2, v3}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    #@54e
    goto/16 :goto_0

    #@550
    .line 3685
    :pswitch_15
    move-object/from16 v0, p0

    #@552
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@554
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->handleDispatchWindowShown()V

    #@557
    goto/16 :goto_0

    #@559
    .line 3688
    :pswitch_16
    move-object/from16 v0, p1

    #@55b
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@55d
    move-object/from16 v32, v0

    #@55f
    check-cast v32, Lcom/android/internal/os/IResultReceiver;

    #@561
    .line 3689
    .local v32, "receiver":Lcom/android/internal/os/IResultReceiver;
    move-object/from16 v0, p1

    #@563
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@565
    move/from16 v16, v0

    #@567
    .line 3690
    .local v16, "deviceId":I
    move-object/from16 v0, p0

    #@569
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@56b
    move-object/from16 v0, v32

    #@56d
    move/from16 v1, v16

    #@56f
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewRootImpl;->handleRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    #@572
    goto/16 :goto_0

    #@574
    .line 3693
    .end local v16    # "deviceId":I
    .end local v32    # "receiver":Lcom/android/internal/os/IResultReceiver;
    :pswitch_17
    move-object/from16 v0, p1

    #@576
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@578
    move-object/from16 v21, v0

    #@57a
    check-cast v21, Landroid/view/MotionEvent;

    #@57c
    .line 3694
    .local v21, "event":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    #@57e
    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    #@580
    move-object/from16 v0, v21

    #@582
    invoke-static {v2, v0}, Landroid/view/ViewRootImpl;->-wrap10(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)V

    #@585
    goto/16 :goto_0

    #@587
    .line 3580
    .end local v21    # "event":Landroid/view/MotionEvent;
    .restart local v17    # "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v25    # "hasWindowFocus":Z
    .restart local v26    # "inTouchMode":Z
    :catch_1
    move-exception v22

    #@588
    .local v22, "ex":Landroid/os/RemoteException;
    goto/16 :goto_c

    #@58a
    .line 3454
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
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_3
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_8
        :pswitch_c
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "uptimeMillis"    # J

    #@0
    .prologue
    .line 3444
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    const/16 v1, 0x1a

    #@4
    if-ne v0, v1, :cond_0

    #@6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 3446
    new-instance v0, Ljava/lang/NullPointerException;

    #@c
    .line 3447
    const-string/jumbo v1, "Attempted to call MSG_REQUEST_KEYBOARD_SHORTCUTS with null receiver:"

    #@f
    .line 3446
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 3449
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    #@16
    move-result v0

    #@17
    return v0
.end method
