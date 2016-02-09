.class Landroid/hardware/location/GeofenceHardwareImpl$1;
.super Landroid/os/Handler;
.source "GeofenceHardwareImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/location/GeofenceHardwareImpl;


# direct methods
.method constructor <init>(Landroid/hardware/location/GeofenceHardwareImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/location/GeofenceHardwareImpl;

    #@0
    .prologue
    .line 572
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 578
    move-object/from16 v0, p1

    #@2
    iget v3, v0, Landroid/os/Message;->what:I

    #@4
    packed-switch v3, :pswitch_data_0

    #@7
    .line 574
    :goto_0
    return-void

    #@8
    .line 580
    :pswitch_0
    move-object/from16 v0, p1

    #@a
    iget v12, v0, Landroid/os/Message;->arg1:I

    #@c
    .line 581
    .local v12, "geofenceId":I
    move-object/from16 v0, p0

    #@e
    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@10
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    #@13
    move-result-object v4

    #@14
    monitor-enter v4

    #@15
    .line 582
    :try_start_0
    move-object/from16 v0, p0

    #@17
    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@19
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Landroid/hardware/location/IGeofenceHardwareCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .local v2, "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    monitor-exit v4

    #@24
    .line 585
    if-eqz v2, :cond_0

    #@26
    .line 587
    :try_start_1
    move-object/from16 v0, p1

    #@28
    iget v3, v0, Landroid/os/Message;->arg2:I

    #@2a
    invoke-interface {v2, v12, v3}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceAdd(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@2d
    .line 590
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    #@2f
    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@31
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-wrap0(Landroid/hardware/location/GeofenceHardwareImpl;)V

    #@34
    goto :goto_0

    #@35
    .line 581
    .end local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_0
    move-exception v3

    #@36
    monitor-exit v4

    #@37
    throw v3

    #@38
    .line 588
    .restart local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catch_0
    move-exception v11

    #@39
    .local v11, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "GeofenceHardwareImpl"

    #@3c
    new-instance v4, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v5, "Remote Exception:"

    #@44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    goto :goto_1

    #@54
    .line 593
    .end local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v12    # "geofenceId":I
    :pswitch_1
    move-object/from16 v0, p1

    #@56
    iget v12, v0, Landroid/os/Message;->arg1:I

    #@58
    .line 594
    .restart local v12    # "geofenceId":I
    move-object/from16 v0, p0

    #@5a
    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@5c
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    #@5f
    move-result-object v4

    #@60
    monitor-enter v4

    #@61
    .line 595
    :try_start_2
    move-object/from16 v0, p0

    #@63
    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@65
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    #@68
    move-result-object v3

    #@69
    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6c
    move-result-object v2

    #@6d
    check-cast v2, Landroid/hardware/location/IGeofenceHardwareCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@6f
    .restart local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    monitor-exit v4

    #@70
    .line 598
    if-eqz v2, :cond_4

    #@72
    .line 600
    :try_start_3
    move-object/from16 v0, p1

    #@74
    iget v3, v0, Landroid/os/Message;->arg2:I

    #@76
    invoke-interface {v2, v12, v3}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceRemove(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    #@79
    .line 602
    :goto_2
    invoke-interface {v2}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    #@7c
    move-result-object v9

    #@7d
    .line 603
    .local v9, "callbackBinder":Landroid/os/IBinder;
    const/4 v10, 0x0

    #@7e
    .line 604
    .local v10, "callbackInUse":Z
    move-object/from16 v0, p0

    #@80
    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@82
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    #@85
    move-result-object v4

    #@86
    monitor-enter v4

    #@87
    .line 605
    :try_start_4
    move-object/from16 v0, p0

    #@89
    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@8b
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    #@8e
    move-result-object v3

    #@8f
    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->remove(I)V

    #@92
    .line 608
    const/4 v14, 0x0

    #@93
    .local v14, "i":I
    :goto_3
    move-object/from16 v0, p0

    #@95
    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@97
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    #@9a
    move-result-object v3

    #@9b
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@9e
    move-result v3

    #@9f
    if-ge v14, v3, :cond_1

    #@a1
    .line 609
    move-object/from16 v0, p0

    #@a3
    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@a5
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    #@a8
    move-result-object v3

    #@a9
    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@ac
    move-result-object v3

    #@ad
    check-cast v3, Landroid/hardware/location/IGeofenceHardwareCallback;

    #@af
    invoke-interface {v3}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@b2
    move-result-object v3

    #@b3
    if-ne v3, v9, :cond_3

    #@b5
    .line 610
    const/4 v10, 0x1

    #@b6
    :cond_1
    monitor-exit v4

    #@b7
    .line 617
    if-nez v10, :cond_4

    #@b9
    .line 618
    move-object/from16 v0, p0

    #@bb
    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@bd
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get6(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    #@c0
    move-result-object v3

    #@c1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@c4
    move-result-object v15

    #@c5
    .line 619
    .local v15, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/location/GeofenceHardwareImpl$Reaper;>;"
    :cond_2
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@c8
    move-result v3

    #@c9
    .line 618
    if-eqz v3, :cond_4

    #@cb
    .line 620
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ce
    move-result-object v17

    #@cf
    check-cast v17, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    #@d1
    .line 621
    .local v17, "reaper":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    invoke-static/range {v17 .. v17}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->-get0(Landroid/hardware/location/GeofenceHardwareImpl$Reaper;)Landroid/hardware/location/IGeofenceHardwareCallback;

    #@d4
    move-result-object v3

    #@d5
    if-eqz v3, :cond_2

    #@d7
    .line 622
    invoke-static/range {v17 .. v17}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->-get0(Landroid/hardware/location/GeofenceHardwareImpl$Reaper;)Landroid/hardware/location/IGeofenceHardwareCallback;

    #@da
    move-result-object v3

    #@db
    invoke-interface {v3}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    #@de
    move-result-object v3

    #@df
    if-ne v3, v9, :cond_2

    #@e1
    .line 623
    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    #@e4
    .line 624
    invoke-static/range {v17 .. v17}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->-wrap0(Landroid/hardware/location/GeofenceHardwareImpl$Reaper;)Z

    #@e7
    .line 625
    invoke-static {}, Landroid/hardware/location/GeofenceHardwareImpl;->-get0()Z

    #@ea
    move-result v3

    #@eb
    if-eqz v3, :cond_2

    #@ed
    const-string/jumbo v3, "GeofenceHardwareImpl"

    #@f0
    const-string/jumbo v4, "Removed reaper %s because binder %s is no longer needed."

    #@f3
    const/4 v5, 0x2

    #@f4
    new-array v5, v5, [Ljava/lang/Object;

    #@f6
    .line 627
    const/4 v6, 0x0

    #@f7
    aput-object v17, v5, v6

    #@f9
    const/4 v6, 0x1

    #@fa
    aput-object v9, v5, v6

    #@fc
    .line 625
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@ff
    move-result-object v4

    #@100
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@103
    goto :goto_4

    #@104
    .line 594
    .end local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    .end local v9    # "callbackBinder":Landroid/os/IBinder;
    .end local v10    # "callbackInUse":Z
    .end local v14    # "i":I
    .end local v15    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/location/GeofenceHardwareImpl$Reaper;>;"
    .end local v17    # "reaper":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    :catchall_1
    move-exception v3

    #@105
    monitor-exit v4

    #@106
    throw v3

    #@107
    .line 608
    .restart local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    .restart local v9    # "callbackBinder":Landroid/os/IBinder;
    .restart local v10    # "callbackInUse":Z
    .restart local v14    # "i":I
    :cond_3
    add-int/lit8 v14, v14, 0x1

    #@109
    goto :goto_3

    #@10a
    .line 604
    .end local v14    # "i":I
    :catchall_2
    move-exception v3

    #@10b
    monitor-exit v4

    #@10c
    throw v3

    #@10d
    .line 632
    .end local v9    # "callbackBinder":Landroid/os/IBinder;
    .end local v10    # "callbackInUse":Z
    :cond_4
    move-object/from16 v0, p0

    #@10f
    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@111
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-wrap0(Landroid/hardware/location/GeofenceHardwareImpl;)V

    #@114
    goto/16 :goto_0

    #@116
    .line 636
    .end local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    .end local v12    # "geofenceId":I
    :pswitch_2
    move-object/from16 v0, p1

    #@118
    iget v12, v0, Landroid/os/Message;->arg1:I

    #@11a
    .line 637
    .restart local v12    # "geofenceId":I
    move-object/from16 v0, p0

    #@11c
    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@11e
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    #@121
    move-result-object v4

    #@122
    monitor-enter v4

    #@123
    .line 638
    :try_start_5
    move-object/from16 v0, p0

    #@125
    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@127
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    #@12a
    move-result-object v3

    #@12b
    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@12e
    move-result-object v2

    #@12f
    check-cast v2, Landroid/hardware/location/IGeofenceHardwareCallback;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    #@131
    .restart local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    monitor-exit v4

    #@132
    .line 641
    if-eqz v2, :cond_5

    #@134
    .line 643
    :try_start_6
    move-object/from16 v0, p1

    #@136
    iget v3, v0, Landroid/os/Message;->arg2:I

    #@138
    invoke-interface {v2, v12, v3}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofencePause(II)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    #@13b
    .line 646
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    #@13d
    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@13f
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-wrap0(Landroid/hardware/location/GeofenceHardwareImpl;)V

    #@142
    goto/16 :goto_0

    #@144
    .line 637
    .end local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_3
    move-exception v3

    #@145
    monitor-exit v4

    #@146
    throw v3

    #@147
    .line 650
    .end local v12    # "geofenceId":I
    :pswitch_3
    move-object/from16 v0, p1

    #@149
    iget v12, v0, Landroid/os/Message;->arg1:I

    #@14b
    .line 651
    .restart local v12    # "geofenceId":I
    move-object/from16 v0, p0

    #@14d
    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@14f
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    #@152
    move-result-object v4

    #@153
    monitor-enter v4

    #@154
    .line 652
    :try_start_7
    move-object/from16 v0, p0

    #@156
    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@158
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    #@15b
    move-result-object v3

    #@15c
    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@15f
    move-result-object v2

    #@160
    check-cast v2, Landroid/hardware/location/IGeofenceHardwareCallback;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    #@162
    .restart local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    monitor-exit v4

    #@163
    .line 655
    if-eqz v2, :cond_6

    #@165
    .line 657
    :try_start_8
    move-object/from16 v0, p1

    #@167
    iget v3, v0, Landroid/os/Message;->arg2:I

    #@169
    invoke-interface {v2, v12, v3}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceResume(II)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    #@16c
    .line 660
    :cond_6
    :goto_6
    move-object/from16 v0, p0

    #@16e
    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@170
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-wrap0(Landroid/hardware/location/GeofenceHardwareImpl;)V

    #@173
    goto/16 :goto_0

    #@175
    .line 651
    .end local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_4
    move-exception v3

    #@176
    monitor-exit v4

    #@177
    throw v3

    #@178
    .line 664
    .end local v12    # "geofenceId":I
    :pswitch_4
    move-object/from16 v0, p1

    #@17a
    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@17c
    check-cast v13, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;

    #@17e
    .line 665
    .local v13, "geofenceTransition":Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;
    move-object/from16 v0, p0

    #@180
    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@182
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    #@185
    move-result-object v4

    #@186
    monitor-enter v4

    #@187
    .line 666
    :try_start_9
    move-object/from16 v0, p0

    #@189
    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@18b
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    #@18e
    move-result-object v3

    #@18f
    invoke-static {v13}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-get0(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    #@192
    move-result v5

    #@193
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@196
    move-result-object v2

    #@197
    check-cast v2, Landroid/hardware/location/IGeofenceHardwareCallback;

    #@199
    .line 669
    .restart local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    invoke-static {}, Landroid/hardware/location/GeofenceHardwareImpl;->-get0()Z

    #@19c
    move-result v3

    #@19d
    if-eqz v3, :cond_7

    #@19f
    const-string/jumbo v3, "GeofenceHardwareImpl"

    #@1a2
    new-instance v5, Ljava/lang/StringBuilder;

    #@1a4
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1a7
    const-string/jumbo v6, "GeofenceTransistionCallback: GPS : GeofenceId: "

    #@1aa
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ad
    move-result-object v5

    #@1ae
    .line 670
    invoke-static {v13}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-get0(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    #@1b1
    move-result v6

    #@1b2
    .line 669
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b5
    move-result-object v5

    #@1b6
    .line 671
    const-string/jumbo v6, " Transition: "

    #@1b9
    .line 669
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bc
    move-result-object v5

    #@1bd
    .line 671
    invoke-static {v13}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-get4(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    #@1c0
    move-result v6

    #@1c1
    .line 669
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c4
    move-result-object v5

    #@1c5
    .line 672
    const-string/jumbo v6, " Location: "

    #@1c8
    .line 669
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cb
    move-result-object v5

    #@1cc
    .line 672
    invoke-static {v13}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-get1(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)Landroid/location/Location;

    #@1cf
    move-result-object v6

    #@1d0
    .line 669
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d3
    move-result-object v5

    #@1d4
    .line 672
    const-string/jumbo v6, ":"

    #@1d7
    .line 669
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1da
    move-result-object v5

    #@1db
    .line 672
    move-object/from16 v0, p0

    #@1dd
    iget-object v6, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@1df
    invoke-static {v6}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    #@1e2
    move-result-object v6

    #@1e3
    .line 669
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e6
    move-result-object v5

    #@1e7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ea
    move-result-object v5

    #@1eb
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    #@1ee
    :cond_7
    monitor-exit v4

    #@1ef
    .line 675
    if-eqz v2, :cond_8

    #@1f1
    .line 678
    :try_start_a
    invoke-static {v13}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-get0(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    #@1f4
    move-result v3

    #@1f5
    invoke-static {v13}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-get4(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    #@1f8
    move-result v4

    #@1f9
    .line 679
    invoke-static {v13}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-get1(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)Landroid/location/Location;

    #@1fc
    move-result-object v5

    #@1fd
    invoke-static {v13}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-get3(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)J

    #@200
    move-result-wide v6

    #@201
    .line 680
    invoke-static {v13}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-get2(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    #@204
    move-result v8

    #@205
    .line 677
    invoke-interface/range {v2 .. v8}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceTransition(IILandroid/location/Location;JI)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1

    #@208
    .line 683
    :cond_8
    :goto_7
    move-object/from16 v0, p0

    #@20a
    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@20c
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-wrap0(Landroid/hardware/location/GeofenceHardwareImpl;)V

    #@20f
    goto/16 :goto_0

    #@211
    .line 665
    .end local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_5
    move-exception v3

    #@212
    monitor-exit v4

    #@213
    throw v3

    #@214
    .line 687
    .end local v13    # "geofenceTransition":Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;
    :pswitch_5
    move-object/from16 v0, p1

    #@216
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@218
    check-cast v2, Landroid/hardware/location/IGeofenceHardwareCallback;

    #@21a
    .line 688
    .restart local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    invoke-static {}, Landroid/hardware/location/GeofenceHardwareImpl;->-get0()Z

    #@21d
    move-result v3

    #@21e
    if-eqz v3, :cond_9

    #@220
    const-string/jumbo v3, "GeofenceHardwareImpl"

    #@223
    new-instance v4, Ljava/lang/StringBuilder;

    #@225
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@228
    const-string/jumbo v5, "Geofence callback reaped:"

    #@22b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22e
    move-result-object v4

    #@22f
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@232
    move-result-object v4

    #@233
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@236
    move-result-object v4

    #@237
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@23a
    .line 689
    :cond_9
    move-object/from16 v0, p1

    #@23c
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@23e
    move/from16 v16, v0

    #@240
    .line 690
    .local v16, "monitoringType":I
    move-object/from16 v0, p0

    #@242
    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@244
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    #@247
    move-result-object v4

    #@248
    monitor-enter v4

    #@249
    .line 691
    const/4 v14, 0x0

    #@24a
    .restart local v14    # "i":I
    :goto_8
    :try_start_b
    move-object/from16 v0, p0

    #@24c
    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@24e
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    #@251
    move-result-object v3

    #@252
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@255
    move-result v3

    #@256
    if-ge v14, v3, :cond_b

    #@258
    .line 692
    move-object/from16 v0, p0

    #@25a
    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@25c
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    #@25f
    move-result-object v3

    #@260
    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@263
    move-result-object v3

    #@264
    check-cast v3, Landroid/hardware/location/IGeofenceHardwareCallback;

    #@266
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@269
    move-result v3

    #@26a
    if-eqz v3, :cond_a

    #@26c
    .line 693
    move-object/from16 v0, p0

    #@26e
    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@270
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    #@273
    move-result-object v3

    #@274
    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->keyAt(I)I

    #@277
    move-result v12

    #@278
    .line 694
    .restart local v12    # "geofenceId":I
    move-object/from16 v0, p0

    #@27a
    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@27c
    move-object/from16 v0, p0

    #@27e
    iget-object v5, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@280
    invoke-static {v5}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    #@283
    move-result-object v5

    #@284
    invoke-virtual {v5, v14}, Landroid/util/SparseArray;->keyAt(I)I

    #@287
    move-result v5

    #@288
    move/from16 v0, v16

    #@28a
    invoke-virtual {v3, v5, v0}, Landroid/hardware/location/GeofenceHardwareImpl;->removeGeofence(II)Z

    #@28d
    .line 695
    move-object/from16 v0, p0

    #@28f
    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@291
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->-get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    #@294
    move-result-object v3

    #@295
    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->remove(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    #@298
    .line 691
    .end local v12    # "geofenceId":I
    :cond_a
    add-int/lit8 v14, v14, 0x1

    #@29a
    goto :goto_8

    #@29b
    :cond_b
    monitor-exit v4

    #@29c
    goto/16 :goto_0

    #@29e
    .line 690
    :catchall_6
    move-exception v3

    #@29f
    monitor-exit v4

    #@2a0
    throw v3

    #@2a1
    .line 681
    .end local v14    # "i":I
    .end local v16    # "monitoringType":I
    .restart local v13    # "geofenceTransition":Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;
    :catch_1
    move-exception v11

    #@2a2
    .restart local v11    # "e":Landroid/os/RemoteException;
    goto/16 :goto_7

    #@2a4
    .line 658
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v13    # "geofenceTransition":Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;
    .restart local v12    # "geofenceId":I
    :catch_2
    move-exception v11

    #@2a5
    .restart local v11    # "e":Landroid/os/RemoteException;
    goto/16 :goto_6

    #@2a7
    .line 644
    .end local v11    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v11

    #@2a8
    .restart local v11    # "e":Landroid/os/RemoteException;
    goto/16 :goto_5

    #@2aa
    .line 601
    .end local v11    # "e":Landroid/os/RemoteException;
    :catch_4
    move-exception v11

    #@2ab
    .restart local v11    # "e":Landroid/os/RemoteException;
    goto/16 :goto_2

    #@2ad
    .line 578
    nop

    #@2ae
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
