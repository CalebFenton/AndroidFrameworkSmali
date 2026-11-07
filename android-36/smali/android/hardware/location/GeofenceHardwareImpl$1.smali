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
.field final synthetic blacklist this$0:Landroid/hardware/location/GeofenceHardwareImpl;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/location/GeofenceHardwareImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/hardware/location/GeofenceHardwareImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 573
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 579
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_254

    goto/16 :goto_252

    .line 688
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 689
    .local v1, "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    invoke-static {}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "GeofenceHardwareImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Geofence callback reaped:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_2a
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 691
    .local v2, "monitoringType":I
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v3

    monitor-enter v3

    .line 692
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_34
    :try_start_34
    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v4}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_77

    .line 693
    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v4}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/location/IGeofenceHardwareCallback;

    invoke-interface {v4, v1}, Landroid/hardware/location/IGeofenceHardwareCallback;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 694
    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v4}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 695
    .local v4, "geofenceId":I
    iget-object v5, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    iget-object v6, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v6}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6, v2}, Landroid/hardware/location/GeofenceHardwareImpl;->removeGeofence(II)Z

    .line 696
    iget-object v5, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v5}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 692
    .end local v4    # "geofenceId":I
    :cond_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 699
    .end local v0    # "i":I
    :cond_77
    monitor-exit v3

    goto/16 :goto_252

    :catchall_7a
    move-exception v0

    monitor-exit v3
    :try_end_7c
    .catchall {:try_start_34 .. :try_end_7c} :catchall_7a

    throw v0

    .line 651
    .end local v1    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    .end local v2    # "monitoringType":I
    :pswitch_7d
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 652
    .local v1, "geofenceId":I
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 653
    :try_start_86
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/IGeofenceHardwareCallback;

    move-object v3, v0

    .line 654
    .local v3, "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    monitor-exit v2
    :try_end_94
    .catchall {:try_start_86 .. :try_end_94} :catchall_a5

    .line 656
    if-eqz v3, :cond_9e

    .line 658
    :try_start_96
    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v1, v0}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceResume(II)V
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_9b} :catch_9c

    goto :goto_9d

    .line 659
    :catch_9c
    move-exception v0

    :goto_9d
    nop

    .line 661
    :cond_9e
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$mreleaseWakeLock(Landroid/hardware/location/GeofenceHardwareImpl;)V

    .line 662
    goto/16 :goto_252

    .line 654
    .end local v3    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_a5
    move-exception v0

    :try_start_a6
    monitor-exit v2
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    throw v0

    .line 637
    .end local v1    # "geofenceId":I
    :pswitch_a8
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 638
    .restart local v1    # "geofenceId":I
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 639
    :try_start_b1
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/IGeofenceHardwareCallback;

    move-object v3, v0

    .line 640
    .restart local v3    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    monitor-exit v2
    :try_end_bf
    .catchall {:try_start_b1 .. :try_end_bf} :catchall_d0

    .line 642
    if-eqz v3, :cond_c9

    .line 644
    :try_start_c1
    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v1, v0}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofencePause(II)V
    :try_end_c6
    .catch Landroid/os/RemoteException; {:try_start_c1 .. :try_end_c6} :catch_c7

    goto :goto_c8

    .line 645
    :catch_c7
    move-exception v0

    :goto_c8
    nop

    .line 647
    :cond_c9
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$mreleaseWakeLock(Landroid/hardware/location/GeofenceHardwareImpl;)V

    .line 648
    goto/16 :goto_252

    .line 640
    .end local v3    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_d0
    move-exception v0

    :try_start_d1
    monitor-exit v2
    :try_end_d2
    .catchall {:try_start_d1 .. :try_end_d2} :catchall_d0

    throw v0

    .line 594
    .end local v1    # "geofenceId":I
    :pswitch_d3
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 595
    .restart local v1    # "geofenceId":I
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 596
    :try_start_dc
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/IGeofenceHardwareCallback;

    move-object v3, v0

    .line 597
    .restart local v3    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    monitor-exit v2
    :try_end_ea
    .catchall {:try_start_dc .. :try_end_ea} :catchall_17c

    .line 599
    if-eqz v3, :cond_175

    .line 601
    :try_start_ec
    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v1, v0}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceRemove(II)V
    :try_end_f1
    .catch Landroid/os/RemoteException; {:try_start_ec .. :try_end_f1} :catch_f2

    goto :goto_f3

    .line 602
    :catch_f2
    move-exception v0

    :goto_f3
    nop

    .line 603
    invoke-interface {v3}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 604
    .local v2, "callbackBinder":Landroid/os/IBinder;
    const/4 v4, 0x0

    .line 605
    .local v4, "callbackInUse":Z
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v5

    monitor-enter v5

    .line 606
    :try_start_100
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 609
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_10a
    iget-object v6, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v6}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_12d

    .line 610
    iget-object v6, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v6}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/location/IGeofenceHardwareCallback;

    invoke-interface {v6}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v6, v2, :cond_12a

    .line 611
    const/4 v4, 0x1

    .line 612
    goto :goto_12d

    .line 609
    :cond_12a
    add-int/lit8 v0, v0, 0x1

    goto :goto_10a

    .line 615
    .end local v0    # "i":I
    :cond_12d
    :goto_12d
    monitor-exit v5
    :try_end_12e
    .catchall {:try_start_100 .. :try_end_12e} :catchall_172

    .line 618
    if-nez v4, :cond_175

    .line 619
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmReapers(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 620
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/location/GeofenceHardwareImpl$Reaper;>;"
    :goto_13a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_175

    .line 621
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    .line 622
    .local v5, "reaper":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    invoke-static {v5}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->-$$Nest$fgetmCallback(Landroid/hardware/location/GeofenceHardwareImpl$Reaper;)Landroid/hardware/location/IGeofenceHardwareCallback;

    move-result-object v6

    if-eqz v6, :cond_171

    invoke-static {v5}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->-$$Nest$fgetmCallback(Landroid/hardware/location/GeofenceHardwareImpl$Reaper;)Landroid/hardware/location/IGeofenceHardwareCallback;

    move-result-object v6

    .line 623
    invoke-interface {v6}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v6, v2, :cond_171

    .line 624
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 625
    invoke-static {v5}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->-$$Nest$munlinkToDeath(Landroid/hardware/location/GeofenceHardwareImpl$Reaper;)Z

    .line 626
    invoke-static {}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$sfgetDEBUG()Z

    move-result v6

    if-eqz v6, :cond_171

    const-string v6, "GeofenceHardwareImpl"

    const-string v7, "Removed reaper %s because binder %s is no longer needed."

    filled-new-array {v5, v2}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    .end local v5    # "reaper":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    :cond_171
    goto :goto_13a

    .line 615
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/location/GeofenceHardwareImpl$Reaper;>;"
    :catchall_172
    move-exception v0

    :try_start_173
    monitor-exit v5
    :try_end_174
    .catchall {:try_start_173 .. :try_end_174} :catchall_172

    throw v0

    .line 633
    .end local v2    # "callbackBinder":Landroid/os/IBinder;
    .end local v4    # "callbackInUse":Z
    :cond_175
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$mreleaseWakeLock(Landroid/hardware/location/GeofenceHardwareImpl;)V

    .line 634
    goto/16 :goto_252

    .line 597
    .end local v3    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_17c
    move-exception v0

    :try_start_17d
    monitor-exit v2
    :try_end_17e
    .catchall {:try_start_17d .. :try_end_17e} :catchall_17c

    throw v0

    .line 581
    .end local v1    # "geofenceId":I
    :pswitch_17f
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 582
    .restart local v1    # "geofenceId":I
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 583
    :try_start_188
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/IGeofenceHardwareCallback;

    move-object v3, v0

    .line 584
    .restart local v3    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    monitor-exit v2
    :try_end_196
    .catchall {:try_start_188 .. :try_end_196} :catchall_1be

    .line 586
    if-eqz v3, :cond_1b7

    .line 588
    :try_start_198
    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v1, v0}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceAdd(II)V
    :try_end_19d
    .catch Landroid/os/RemoteException; {:try_start_198 .. :try_end_19d} :catch_19e

    .line 589
    goto :goto_1b7

    :catch_19e
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GeofenceHardwareImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b7
    :goto_1b7
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$mreleaseWakeLock(Landroid/hardware/location/GeofenceHardwareImpl;)V

    .line 592
    goto/16 :goto_252

    .line 584
    .end local v3    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_1be
    move-exception v0

    :try_start_1bf
    monitor-exit v2
    :try_end_1c0
    .catchall {:try_start_1bf .. :try_end_1c0} :catchall_1be

    throw v0

    .line 665
    .end local v1    # "geofenceId":I
    :pswitch_1c1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;

    .line 666
    .local v1, "geofenceTransition":Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 667
    :try_start_1cd
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-$$Nest$fgetmGeofenceId(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/IGeofenceHardwareCallback;

    move-object v3, v0

    .line 670
    .restart local v3    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    invoke-static {}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_22c

    const-string v0, "GeofenceHardwareImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GeofenceTransistionCallback: GPS : GeofenceId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-$$Nest$fgetmGeofenceId(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Transition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-$$Nest$fgetmTransition(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Location: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-$$Nest$fgetmLocation(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)Landroid/location/Location;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v5}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_22c
    monitor-exit v2
    :try_end_22d
    .catchall {:try_start_1cd .. :try_end_22d} :catchall_24f

    .line 676
    if-eqz v3, :cond_249

    .line 678
    :try_start_22f
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-$$Nest$fgetmGeofenceId(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v4

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-$$Nest$fgetmTransition(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v5

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-$$Nest$fgetmLocation(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)Landroid/location/Location;

    move-result-object v6

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-$$Nest$fgetmTimestamp(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)J

    move-result-wide v7

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-$$Nest$fgetmMonitoringType(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v9

    invoke-interface/range {v3 .. v9}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceTransition(IILandroid/location/Location;JI)V
    :try_end_246
    .catch Landroid/os/RemoteException; {:try_start_22f .. :try_end_246} :catch_247

    goto :goto_248

    .line 682
    :catch_247
    move-exception v0

    :goto_248
    nop

    .line 684
    :cond_249
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$mreleaseWakeLock(Landroid/hardware/location/GeofenceHardwareImpl;)V

    .line 685
    goto :goto_252

    .line 674
    .end local v3    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_24f
    move-exception v0

    :try_start_250
    monitor-exit v2
    :try_end_251
    .catchall {:try_start_250 .. :try_end_251} :catchall_24f

    throw v0

    .line 701
    .end local v1    # "geofenceTransition":Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;
    :goto_252
    return-void

    nop

    :pswitch_data_254
    .packed-switch 0x1
        :pswitch_1c1
        :pswitch_17f
        :pswitch_d3
        :pswitch_a8
        :pswitch_7d
        :pswitch_7
    .end packed-switch
.end method
