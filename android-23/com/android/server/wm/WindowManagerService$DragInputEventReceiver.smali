.class final Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DragInputEventReceiver"
.end annotation


# instance fields
.field private mIsStartEvent:Z

.field private mStylusButtonDownAtStart:Z

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 724
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2
    .line 725
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    #@5
    .line 722
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mIsStartEvent:Z

    #@8
    .line 724
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    .line 730
    const/4 v3, 0x0

    #@1
    .line 732
    .local v3, "handled":Z
    :try_start_0
    instance-of v8, p1, Landroid/view/MotionEvent;

    #@3
    if-eqz v8, :cond_3

    #@5
    .line 733
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    #@8
    move-result v8

    #@9
    and-int/lit8 v8, v8, 0x2

    #@b
    if-eqz v8, :cond_3

    #@d
    .line 734
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@f
    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@11
    if-eqz v8, :cond_3

    #@13
    .line 735
    move-object v0, p1

    #@14
    check-cast v0, Landroid/view/MotionEvent;

    #@16
    move-object v5, v0

    #@17
    .line 736
    .local v5, "motionEvent":Landroid/view/MotionEvent;
    const/4 v2, 0x0

    #@18
    .line 737
    .local v2, "endDrag":Z
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawX()F

    #@1b
    move-result v6

    #@1c
    .line 738
    .local v6, "newX":F
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawY()F

    #@1f
    move-result v7

    #@20
    .line 740
    .local v7, "newY":F
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getButtonState()I

    #@23
    move-result v8

    #@24
    and-int/lit8 v8, v8, 0x20

    #@26
    if-eqz v8, :cond_4

    #@28
    const/4 v4, 0x1

    #@29
    .line 742
    .local v4, "isStylusButtonDown":Z
    :goto_0
    iget-boolean v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mIsStartEvent:Z

    #@2b
    if-eqz v8, :cond_1

    #@2d
    .line 743
    if-eqz v4, :cond_0

    #@2f
    .line 746
    const/4 v8, 0x1

    #@30
    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    #@32
    .line 748
    :cond_0
    const/4 v8, 0x0

    #@33
    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mIsStartEvent:Z

    #@35
    .line 751
    :cond_1
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    #@38
    move-result v8

    #@39
    packed-switch v8, :pswitch_data_0

    #@3c
    .line 787
    .end local v2    # "endDrag":Z
    :goto_1
    :pswitch_0
    if-eqz v2, :cond_2

    #@3e
    .line 790
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@40
    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@42
    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    .line 791
    :try_start_1
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@45
    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@47
    invoke-virtual {v8}, Lcom/android/server/wm/DragState;->endDragLw()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    #@4a
    :try_start_2
    monitor-exit v9

    #@4b
    .line 793
    const/4 v8, 0x0

    #@4c
    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    #@4e
    .line 794
    const/4 v8, 0x1

    #@4f
    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mIsStartEvent:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@51
    .line 797
    :cond_2
    const/4 v3, 0x1

    #@52
    .line 802
    .end local v4    # "isStylusButtonDown":Z
    .end local v5    # "motionEvent":Landroid/view/MotionEvent;
    .end local v6    # "newX":F
    .end local v7    # "newY":F
    :cond_3
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    #@55
    .line 729
    :goto_2
    return-void

    #@56
    .line 740
    .restart local v2    # "endDrag":Z
    .restart local v5    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v6    # "newX":F
    .restart local v7    # "newY":F
    :cond_4
    const/4 v4, 0x0

    #@57
    .restart local v4    # "isStylusButtonDown":Z
    goto :goto_0

    #@58
    .line 759
    :pswitch_1
    :try_start_3
    iget-boolean v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    #@5a
    if-eqz v8, :cond_5

    #@5c
    if-eqz v4, :cond_6

    #@5e
    .line 766
    :cond_5
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@60
    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@62
    monitor-enter v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@63
    .line 768
    :try_start_4
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@65
    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@67
    invoke-virtual {v8, v6, v7}, Lcom/android/server/wm/DragState;->notifyMoveLw(FF)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@6a
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@6b
    goto :goto_1

    #@6c
    .line 799
    .end local v2    # "endDrag":Z
    .end local v4    # "isStylusButtonDown":Z
    .end local v5    # "motionEvent":Landroid/view/MotionEvent;
    .end local v6    # "newX":F
    .end local v7    # "newY":F
    :catch_0
    move-exception v1

    #@6d
    .line 800
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v8, "WindowManager"

    #@70
    const-string/jumbo v9, "Exception caught by drag handleMotion"

    #@73
    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@76
    .line 802
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    #@79
    goto :goto_2

    #@7a
    .line 762
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "endDrag":Z
    .restart local v4    # "isStylusButtonDown":Z
    .restart local v5    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v6    # "newX":F
    .restart local v7    # "newY":F
    :cond_6
    :try_start_7
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@7c
    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@7e
    monitor-enter v9
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@7f
    .line 763
    :try_start_8
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@81
    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@83
    invoke-virtual {v8, v6, v7}, Lcom/android/server/wm/DragState;->notifyDropLw(FF)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@86
    move-result v2

    #@87
    .local v2, "endDrag":Z
    :try_start_9
    monitor-exit v9
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@88
    goto :goto_1

    #@89
    .line 801
    .end local v2    # "endDrag":Z
    .end local v4    # "isStylusButtonDown":Z
    .end local v5    # "motionEvent":Landroid/view/MotionEvent;
    .end local v6    # "newX":F
    .end local v7    # "newY":F
    :catchall_0
    move-exception v8

    #@8a
    .line 802
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    #@8d
    .line 801
    throw v8

    #@8e
    .line 762
    .local v2, "endDrag":Z
    .restart local v4    # "isStylusButtonDown":Z
    .restart local v5    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v6    # "newX":F
    .restart local v7    # "newY":F
    :catchall_1
    move-exception v8

    #@8f
    :try_start_a
    monitor-exit v9

    #@90
    throw v8

    #@91
    .line 766
    :catchall_2
    move-exception v8

    #@92
    monitor-exit v9

    #@93
    throw v8

    #@94
    .line 776
    :pswitch_2
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@96
    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@98
    monitor-enter v9
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@99
    .line 777
    :try_start_b
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@9b
    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@9d
    invoke-virtual {v8, v6, v7}, Lcom/android/server/wm/DragState;->notifyDropLw(FF)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    #@a0
    move-result v2

    #@a1
    .local v2, "endDrag":Z
    :try_start_c
    monitor-exit v9

    #@a2
    goto :goto_1

    #@a3
    .line 776
    .local v2, "endDrag":Z
    :catchall_3
    move-exception v8

    #@a4
    monitor-exit v9

    #@a5
    throw v8

    #@a6
    .line 783
    :pswitch_3
    const/4 v2, 0x1

    #@a7
    goto :goto_1

    #@a8
    .line 790
    .end local v2    # "endDrag":Z
    :catchall_4
    move-exception v8

    #@a9
    monitor-exit v9

    #@aa
    throw v8
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@ab
    .line 751
    nop

    #@ac
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
