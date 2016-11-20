.class final Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
.super Landroid/view/BatchedInputEventReceiver;
.source "TaskPositioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskPositioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WindowPositionerEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/TaskPositioner;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskPositioner;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/TaskPositioner;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "choreographer"    # Landroid/view/Choreographer;

    #@0
    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    #@2
    .line 122
    invoke-direct {p0, p2, p3, p4}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    #@5
    .line 121
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 127
    instance-of v0, p1, Landroid/view/MotionEvent;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 128
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    #@8
    move-result v0

    #@9
    and-int/lit8 v0, v0, 0x2

    #@b
    if-nez v0, :cond_1

    #@d
    .line 129
    :cond_0
    return-void

    #@e
    :cond_1
    move-object v10, p1

    #@f
    .line 131
    check-cast v10, Landroid/view/MotionEvent;

    #@11
    .line 132
    .local v10, "motionEvent":Landroid/view/MotionEvent;
    const/4 v9, 0x0

    #@12
    .line 135
    .local v9, "handled":Z
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    #@14
    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get2(Lcom/android/server/wm/TaskPositioner;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_2

    #@1a
    .line 139
    const/4 v9, 0x1

    #@1b
    .line 219
    invoke-virtual {p0, p1, v9}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    #@1e
    .line 140
    return-void

    #@1f
    .line 143
    :cond_2
    :try_start_1
    invoke-virtual {v10}, Landroid/view/MotionEvent;->getRawX()F

    #@22
    move-result v11

    #@23
    .line 144
    .local v11, "newX":F
    invoke-virtual {v10}, Landroid/view/MotionEvent;->getRawY()F

    #@26
    move-result v12

    #@27
    .line 146
    .local v12, "newY":F
    invoke-virtual {v10}, Landroid/view/MotionEvent;->getAction()I

    #@2a
    move-result v0

    #@2b
    packed-switch v0, :pswitch_data_0

    #@2e
    .line 188
    :cond_3
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    #@30
    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get2(Lcom/android/server/wm/TaskPositioner;)Z

    #@33
    move-result v0

    #@34
    if-eqz v0, :cond_6

    #@36
    .line 189
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    #@38
    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get3(Lcom/android/server/wm/TaskPositioner;)Z

    #@3b
    move-result v13

    #@3c
    .line 190
    .local v13, "wasResizing":Z
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    #@3e
    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get4(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    #@41
    move-result-object v0

    #@42
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@44
    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@45
    .line 191
    :try_start_2
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    #@47
    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-wrap1(Lcom/android/server/wm/TaskPositioner;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@4a
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@4b
    .line 194
    if-eqz v13, :cond_4

    #@4d
    .line 197
    :try_start_4
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    #@4f
    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get4(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    #@52
    move-result-object v0

    #@53
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@55
    .line 198
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    #@57
    invoke-static {v1}, Lcom/android/server/wm/TaskPositioner;->-get5(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    #@5a
    move-result-object v1

    #@5b
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    #@5d
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    #@5f
    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->-get7(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    #@62
    move-result-object v3

    #@63
    const/4 v4, 0x3

    #@64
    .line 197
    invoke-interface {v0, v1, v3, v4}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V

    #@67
    .line 201
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    #@69
    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get1(Lcom/android/server/wm/TaskPositioner;)I

    #@6c
    move-result v0

    #@6d
    if-eqz v0, :cond_5

    #@6f
    .line 202
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    #@71
    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get1(Lcom/android/server/wm/TaskPositioner;)I

    #@74
    move-result v0

    #@75
    if-ne v0, v6, :cond_7

    #@77
    .line 203
    const/4 v2, 0x0

    #@78
    .line 205
    .local v2, "createMode":I
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    #@7a
    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get4(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    #@7d
    move-result-object v0

    #@7e
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@80
    .line 206
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    #@82
    invoke-static {v1}, Lcom/android/server/wm/TaskPositioner;->-get5(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    #@85
    move-result-object v1

    #@86
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    #@88
    const/4 v3, 0x1

    #@89
    const/4 v4, 0x1

    #@8a
    .line 207
    const/4 v5, 0x0

    #@8b
    const/4 v6, 0x0

    #@8c
    .line 205
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->moveTaskToDockedStack(IIZZLandroid/graphics/Rect;Z)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@8f
    .line 213
    .end local v2    # "createMode":I
    :cond_5
    :goto_2
    :try_start_5
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    #@91
    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get4(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    #@94
    move-result-object v0

    #@95
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@97
    const/16 v1, 0x28

    #@99
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@9c
    .line 215
    .end local v13    # "wasResizing":Z
    :cond_6
    const/4 v9, 0x1

    #@9d
    .line 219
    invoke-virtual {p0, p1, v9}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    #@a0
    .line 126
    .end local v11    # "newX":F
    .end local v12    # "newY":F
    :goto_3
    return-void

    #@a1
    .line 157
    .restart local v11    # "newX":F
    .restart local v12    # "newY":F
    :pswitch_1
    :try_start_6
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    #@a3
    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get4(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    #@a6
    move-result-object v0

    #@a7
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@a9
    monitor-enter v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@aa
    .line 158
    :try_start_7
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    #@ac
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    #@ae
    invoke-static {v3, v11, v12}, Lcom/android/server/wm/TaskPositioner;->-wrap0(Lcom/android/server/wm/TaskPositioner;FF)Z

    #@b1
    move-result v3

    #@b2
    invoke-static {v0, v3}, Lcom/android/server/wm/TaskPositioner;->-set0(Lcom/android/server/wm/TaskPositioner;Z)Z

    #@b5
    .line 159
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    #@b7
    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get5(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    #@ba
    move-result-object v0

    #@bb
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    #@bd
    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->-get6(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    #@c0
    move-result-object v3

    #@c1
    invoke-virtual {v0, v3}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@c4
    :try_start_8
    monitor-exit v1

    #@c5
    .line 161
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    #@c7
    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get6(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    #@ca
    move-result-object v0

    #@cb
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    #@cd
    invoke-static {v1}, Lcom/android/server/wm/TaskPositioner;->-get7(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    #@d0
    move-result-object v1

    #@d1
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@d4
    move-result v0

    #@d5
    if-nez v0, :cond_3

    #@d7
    .line 163
    const-string/jumbo v0, "wm.TaskPositioner.resizeTask"

    #@da
    .line 162
    const-wide/16 v4, 0x20

    #@dc
    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@df
    .line 165
    :try_start_9
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    #@e1
    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get4(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    #@e4
    move-result-object v0

    #@e5
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@e7
    .line 166
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    #@e9
    invoke-static {v1}, Lcom/android/server/wm/TaskPositioner;->-get5(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    #@ec
    move-result-object v1

    #@ed
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    #@ef
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    #@f1
    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->-get7(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    #@f4
    move-result-object v3

    #@f5
    const/4 v4, 0x1

    #@f6
    .line 165
    invoke-interface {v0, v1, v3, v4}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@f9
    .line 169
    :goto_4
    const-wide/16 v0, 0x20

    #@fb
    :try_start_a
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@fe
    goto/16 :goto_0

    #@100
    .line 216
    .end local v11    # "newX":F
    .end local v12    # "newY":F
    :catch_0
    move-exception v8

    #@101
    .line 217
    .local v8, "e":Ljava/lang/Exception;
    :try_start_b
    invoke-static {}, Lcom/android/server/wm/TaskPositioner;->-get0()Ljava/lang/String;

    #@104
    move-result-object v0

    #@105
    const-string/jumbo v1, "Exception caught by drag handleMotion"

    #@108
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@10b
    .line 219
    invoke-virtual {p0, p1, v9}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    #@10e
    goto :goto_3

    #@10f
    .line 157
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v11    # "newX":F
    .restart local v12    # "newY":F
    :catchall_0
    move-exception v0

    #@110
    :try_start_c
    monitor-exit v1

    #@111
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    #@112
    .line 218
    .end local v11    # "newX":F
    .end local v12    # "newY":F
    :catchall_1
    move-exception v0

    #@113
    .line 219
    invoke-virtual {p0, p1, v9}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    #@116
    .line 218
    throw v0

    #@117
    .line 177
    .restart local v11    # "newX":F
    .restart local v12    # "newY":F
    :pswitch_2
    :try_start_d
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    #@119
    const/4 v1, 0x1

    #@11a
    invoke-static {v0, v1}, Lcom/android/server/wm/TaskPositioner;->-set0(Lcom/android/server/wm/TaskPositioner;Z)Z

    #@11d
    goto/16 :goto_0

    #@11f
    .line 184
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    #@121
    const/4 v1, 0x1

    #@122
    invoke-static {v0, v1}, Lcom/android/server/wm/TaskPositioner;->-set0(Lcom/android/server/wm/TaskPositioner;Z)Z

    #@125
    goto/16 :goto_0

    #@127
    .line 190
    .restart local v13    # "wasResizing":Z
    :catchall_2
    move-exception v0

    #@128
    monitor-exit v1

    #@129
    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    #@12a
    .line 204
    :cond_7
    const/4 v2, 0x1

    #@12b
    .restart local v2    # "createMode":I
    goto/16 :goto_1

    #@12d
    .line 209
    .end local v2    # "createMode":I
    :catch_1
    move-exception v7

    #@12e
    .local v7, "e":Landroid/os/RemoteException;
    goto/16 :goto_2

    #@130
    .line 167
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v13    # "wasResizing":Z
    :catch_2
    move-exception v7

    #@131
    .restart local v7    # "e":Landroid/os/RemoteException;
    goto :goto_4

    #@132
    .line 146
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
