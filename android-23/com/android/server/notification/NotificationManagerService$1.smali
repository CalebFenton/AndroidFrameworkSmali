.class Lcom/android/server/notification/NotificationManagerService$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/android/server/notification/NotificationDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    #@0
    .prologue
    .line 490
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public clearEffects()V
    .locals 7

    #@0
    .prologue
    .line 587
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@4
    monitor-enter v5

    #@5
    .line 588
    :try_start_0
    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@7
    if-eqz v4, :cond_0

    #@9
    const-string/jumbo v4, "NotificationService"

    #@c
    const-string/jumbo v6, "clearEffects"

    #@f
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 591
    :cond_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@14
    const/4 v6, 0x0

    #@15
    invoke-static {v4, v6}, Lcom/android/server/notification/NotificationManagerService;->-set5(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Ljava/lang/String;

    #@18
    .line 593
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-wide v2

    #@1c
    .line 595
    .local v2, "identity":J
    :try_start_1
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@1e
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    #@20
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    #@23
    move-result-object v1

    #@24
    .line 596
    .local v1, "player":Landroid/media/IRingtonePlayer;
    if-eqz v1, :cond_1

    #@26
    .line 597
    invoke-interface {v1}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@29
    .line 601
    :cond_1
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2c
    .line 605
    .end local v1    # "player":Landroid/media/IRingtonePlayer;
    :goto_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2e
    const/4 v6, 0x0

    #@2f
    invoke-static {v4, v6}, Lcom/android/server/notification/NotificationManagerService;->-set6(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Ljava/lang/String;

    #@32
    .line 606
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@35
    move-result-wide v2

    #@36
    .line 608
    :try_start_3
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@38
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    #@3a
    invoke-virtual {v4}, Landroid/os/Vibrator;->cancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@3d
    .line 610
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@40
    .line 614
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@42
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    #@44
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@47
    .line 615
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@49
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@4c
    monitor-exit v5

    #@4d
    .line 586
    return-void

    #@4e
    .line 599
    :catch_0
    move-exception v0

    #@4f
    .line 601
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@52
    goto :goto_0

    #@53
    .line 587
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "identity":J
    :catchall_0
    move-exception v4

    #@54
    monitor-exit v5

    #@55
    throw v4

    #@56
    .line 600
    .restart local v2    # "identity":J
    :catchall_1
    move-exception v4

    #@57
    .line 601
    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5a
    .line 600
    throw v4

    #@5b
    .line 609
    :catchall_2
    move-exception v4

    #@5c
    .line 610
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5f
    .line 609
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public onClearAll(III)V
    .locals 8
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@4
    monitor-enter v7

    #@5
    .line 523
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@7
    const/4 v4, 0x3

    #@8
    const/4 v5, 0x0

    #@9
    .line 524
    const/4 v6, 0x1

    #@a
    move v1, p1

    #@b
    move v2, p2

    #@c
    move v3, p3

    #@d
    .line 523
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService;->cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v7

    #@11
    .line 521
    return-void

    #@12
    .line 522
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v7

    #@14
    throw v0
.end method

.method public onNotificationActionClick(IILjava/lang/String;I)V
    .locals 7
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "actionIndex"    # I

    #@0
    .prologue
    .line 551
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@4
    monitor-enter v4

    #@5
    .line 552
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@7
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    #@9
    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    #@f
    .line 553
    .local v2, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v2, :cond_0

    #@11
    .line 554
    const-string/jumbo v3, "NotificationService"

    #@14
    new-instance v5, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v6, "No notification with key: "

    #@1c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    monitor-exit v4

    #@2c
    .line 555
    return-void

    #@2d
    .line 557
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@30
    move-result-wide v0

    #@31
    .line 559
    .local v0, "now":J
    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    #@34
    move-result v3

    #@35
    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    #@38
    move-result v5

    #@39
    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    #@3c
    move-result v6

    #@3d
    .line 558
    invoke-static {p3, p4, v3, v5, v6}, Lcom/android/server/EventLogTags;->writeNotificationActionClicked(Ljava/lang/String;IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    monitor-exit v4

    #@41
    .line 550
    return-void

    #@42
    .line 551
    .end local v0    # "now":J
    .end local v2    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v3

    #@43
    monitor-exit v4

    #@44
    throw v3
.end method

.method public onNotificationClear(IILjava/lang/String;Ljava/lang/String;II)V
    .locals 12
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "userId"    # I

    #@0
    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    const/4 v6, 0x0

    #@3
    .line 568
    const/16 v7, 0x42

    #@5
    .line 569
    const/4 v8, 0x1

    #@6
    const/4 v10, 0x2

    #@7
    const/4 v11, 0x0

    #@8
    move v1, p1

    #@9
    move v2, p2

    #@a
    move-object v3, p3

    #@b
    move-object/from16 v4, p4

    #@d
    move/from16 v5, p5

    #@f
    move/from16 v9, p6

    #@11
    .line 567
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    #@14
    .line 566
    return-void
.end method

.method public onNotificationClick(IILjava/lang/String;)V
    .locals 19
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 530
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@4
    iget-object v0, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@6
    move-object/from16 v18, v0

    #@8
    monitor-enter v18

    #@9
    .line 531
    :try_start_0
    move-object/from16 v0, p0

    #@b
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@d
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    #@f
    move-object/from16 v0, p3

    #@11
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v16

    #@15
    check-cast v16, Lcom/android/server/notification/NotificationRecord;

    #@17
    .line 532
    .local v16, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v16, :cond_0

    #@19
    .line 533
    const-string/jumbo v2, "NotificationService"

    #@1c
    new-instance v3, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v4, "No notification with key: "

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    move-object/from16 v0, p3

    #@2a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    monitor-exit v18

    #@36
    .line 534
    return-void

    #@37
    .line 536
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3a
    move-result-wide v14

    #@3b
    .line 538
    .local v14, "now":J
    move-object/from16 v0, v16

    #@3d
    invoke-virtual {v0, v14, v15}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    #@40
    move-result v2

    #@41
    move-object/from16 v0, v16

    #@43
    invoke-virtual {v0, v14, v15}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    #@46
    move-result v3

    #@47
    move-object/from16 v0, v16

    #@49
    invoke-virtual {v0, v14, v15}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    #@4c
    move-result v4

    #@4d
    .line 537
    move-object/from16 v0, p3

    #@4f
    invoke-static {v0, v2, v3, v4}, Lcom/android/server/EventLogTags;->writeNotificationClicked(Ljava/lang/String;III)V

    #@52
    .line 540
    move-object/from16 v0, v16

    #@54
    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@56
    move-object/from16 v17, v0

    #@58
    .line 541
    .local v17, "sbn":Landroid/service/notification/StatusBarNotification;
    move-object/from16 v0, p0

    #@5a
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@5c
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@5f
    move-result-object v5

    #@60
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    #@63
    move-result-object v6

    #@64
    .line 542
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getId()I

    #@67
    move-result v7

    #@68
    .line 543
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    #@6b
    move-result v11

    #@6c
    .line 542
    const/16 v8, 0x10

    #@6e
    .line 543
    const/16 v9, 0x40

    #@70
    const/4 v10, 0x0

    #@71
    .line 544
    const/4 v12, 0x1

    #@72
    const/4 v13, 0x0

    #@73
    move/from16 v3, p1

    #@75
    move/from16 v4, p2

    #@77
    .line 541
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7a
    monitor-exit v18

    #@7b
    .line 529
    return-void

    #@7c
    .line 530
    .end local v14    # "now":J
    .end local v16    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v17    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catchall_0
    move-exception v2

    #@7d
    monitor-exit v18

    #@7e
    throw v2
.end method

.method public onNotificationError(IILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 20
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "uid"    # I
    .param p7, "initialPid"    # I
    .param p8, "message"    # Ljava/lang/String;
    .param p9, "userId"    # I

    #@0
    .prologue
    .line 622
    const-string/jumbo v4, "NotificationService"

    #@3
    new-instance v5, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v6, "onNotification error pkg="

    #@b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v5

    #@f
    move-object/from16 v0, p3

    #@11
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v5

    #@15
    const-string/jumbo v6, " tag="

    #@18
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v5

    #@1c
    move-object/from16 v0, p4

    #@1e
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v5

    #@22
    const-string/jumbo v6, " id="

    #@25
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v5

    #@29
    move/from16 v0, p5

    #@2b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    .line 623
    const-string/jumbo v6, "; will crashApplication(uid="

    #@32
    .line 622
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    move/from16 v0, p6

    #@38
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v5

    #@3c
    .line 623
    const-string/jumbo v6, ", pid="

    #@3f
    .line 622
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    move/from16 v0, p7

    #@45
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    .line 623
    const-string/jumbo v6, ")"

    #@4c
    .line 622
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v5

    #@54
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 624
    move-object/from16 v0, p0

    #@59
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@5b
    const/4 v10, 0x0

    #@5c
    const/4 v11, 0x0

    #@5d
    const/4 v12, 0x0

    #@5e
    .line 625
    const/4 v14, 0x4

    #@5f
    const/4 v15, 0x0

    #@60
    move/from16 v5, p1

    #@62
    move/from16 v6, p2

    #@64
    move-object/from16 v7, p3

    #@66
    move-object/from16 v8, p4

    #@68
    move/from16 v9, p5

    #@6a
    move/from16 v13, p9

    #@6c
    .line 624
    invoke-virtual/range {v4 .. v15}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    #@6f
    .line 626
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@72
    move-result-wide v18

    #@73
    .line 628
    .local v18, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@76
    move-result-object v4

    #@77
    .line 629
    new-instance v5, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v6, "Bad notification posted from package "

    #@7f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v5

    #@83
    move-object/from16 v0, p3

    #@85
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v5

    #@89
    .line 630
    const-string/jumbo v6, ": "

    #@8c
    .line 629
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v5

    #@90
    move-object/from16 v0, p8

    #@92
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v5

    #@96
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v5

    #@9a
    .line 628
    move/from16 v0, p6

    #@9c
    move/from16 v1, p7

    #@9e
    move-object/from16 v2, p3

    #@a0
    invoke-interface {v4, v0, v1, v2, v5}, Landroid/app/IActivityManager;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a3
    .line 633
    :goto_0
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@a6
    .line 621
    return-void

    #@a7
    .line 631
    :catch_0
    move-exception v16

    #@a8
    .local v16, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userAction"    # Z
    .param p3, "expanded"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 662
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@4
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@6
    monitor-enter v9

    #@7
    .line 663
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@9
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v8

    #@f
    check-cast v8, Lcom/android/server/notification/NotificationRecord;

    #@11
    .line 664
    .local v8, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v8, :cond_0

    #@13
    .line 665
    iget-object v1, v8, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    #@15
    invoke-virtual {v1, p2, p3}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onExpansionChanged(ZZ)V

    #@18
    .line 666
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1b
    move-result-wide v6

    #@1c
    .line 668
    .local v6, "now":J
    if-eqz p2, :cond_1

    #@1e
    move v1, v2

    #@1f
    :goto_0
    if-eqz p3, :cond_2

    #@21
    .line 669
    :goto_1
    invoke-virtual {v8, v6, v7}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    #@24
    move-result v3

    #@25
    invoke-virtual {v8, v6, v7}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    #@28
    move-result v4

    #@29
    invoke-virtual {v8, v6, v7}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    #@2c
    move-result v5

    #@2d
    move-object v0, p1

    #@2e
    .line 667
    invoke-static/range {v0 .. v5}, Lcom/android/server/EventLogTags;->writeNotificationExpansion(Ljava/lang/String;IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .end local v6    # "now":J
    :cond_0
    monitor-exit v9

    #@32
    .line 661
    return-void

    #@33
    .restart local v6    # "now":J
    :cond_1
    move v1, v0

    #@34
    .line 668
    goto :goto_0

    #@35
    :cond_2
    move v2, v0

    #@36
    goto :goto_1

    #@37
    .line 662
    .end local v6    # "now":J
    .end local v8    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v0

    #@38
    monitor-exit v9

    #@39
    throw v0
.end method

.method public onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    .locals 8
    .param p1, "newlyVisibleKeys"    # [Lcom/android/internal/statusbar/NotificationVisibility;
    .param p2, "noLongerVisibleKeys"    # [Lcom/android/internal/statusbar/NotificationVisibility;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 639
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@3
    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@5
    monitor-enter v4

    #@6
    .line 640
    :try_start_0
    array-length v5, p1

    #@7
    move v3, v2

    #@8
    :goto_0
    if-ge v3, v5, :cond_1

    #@a
    aget-object v0, p1, v3

    #@c
    .line 641
    .local v0, "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@e
    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    #@10
    iget-object v7, v0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    #@12
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    #@18
    .line 642
    .local v1, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v1, :cond_0

    #@1a
    .line 640
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 643
    :cond_0
    iget v6, v0, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    #@1f
    const/4 v7, 0x1

    #@20
    invoke-virtual {v1, v7, v6}, Lcom/android/server/notification/NotificationRecord;->setVisibility(ZI)V

    #@23
    .line 644
    invoke-virtual {v0}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    goto :goto_1

    #@27
    .line 639
    .end local v0    # "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v1    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v2

    #@28
    monitor-exit v4

    #@29
    throw v2

    #@2a
    .line 650
    :cond_1
    :try_start_1
    array-length v3, p2

    #@2b
    :goto_2
    if-ge v2, v3, :cond_3

    #@2d
    aget-object v0, p2, v2

    #@2f
    .line 651
    .restart local v0    # "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@31
    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    #@33
    iget-object v6, v0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    #@35
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    move-result-object v1

    #@39
    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    #@3b
    .line 652
    .restart local v1    # "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v1, :cond_2

    #@3d
    .line 650
    :goto_3
    add-int/lit8 v2, v2, 0x1

    #@3f
    goto :goto_2

    #@40
    .line 653
    :cond_2
    iget v5, v0, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    #@42
    const/4 v6, 0x0

    #@43
    invoke-virtual {v1, v6, v5}, Lcom/android/server/notification/NotificationRecord;->setVisibility(ZI)V

    #@46
    .line 654
    invoke-virtual {v0}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    goto :goto_3

    #@4a
    .end local v0    # "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v1    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_3
    monitor-exit v4

    #@4b
    .line 638
    return-void
.end method

.method public onPanelHidden()V
    .locals 0

    #@0
    .prologue
    .line 582
    invoke-static {}, Lcom/android/server/EventLogTags;->writeNotificationPanelHidden()V

    #@3
    .line 581
    return-void
.end method

.method public onPanelRevealed(ZI)V
    .locals 0
    .param p1, "clearEffects"    # Z
    .param p2, "items"    # I

    #@0
    .prologue
    .line 574
    invoke-static {p2}, Lcom/android/server/EventLogTags;->writeNotificationPanelRevealed(I)V

    #@3
    .line 575
    if-eqz p1, :cond_0

    #@5
    .line 576
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$1;->clearEffects()V

    #@8
    .line 573
    :cond_0
    return-void
.end method

.method public onSetDisabled(I)V
    .locals 8
    .param p1, "status"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 494
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@3
    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@5
    monitor-enter v5

    #@6
    .line 495
    :try_start_0
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@8
    .line 496
    const/high16 v7, 0x40000

    #@a
    and-int/2addr v7, p1

    #@b
    if-eqz v7, :cond_0

    #@d
    const/4 v4, 0x1

    #@e
    .line 495
    :cond_0
    invoke-static {v6, v4}, Lcom/android/server/notification/NotificationManagerService;->-set1(Lcom/android/server/notification/NotificationManagerService;Z)Z

    #@11
    .line 497
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@13
    const/4 v6, 0x0

    #@14
    invoke-static {v4, v6}, Lcom/android/server/notification/NotificationManagerService;->-wrap6(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    if-eqz v4, :cond_2

    #@1a
    .line 499
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result-wide v2

    #@1e
    .line 501
    .local v2, "identity":J
    :try_start_1
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@20
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    #@22
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    #@25
    move-result-object v1

    #@26
    .line 502
    .local v1, "player":Landroid/media/IRingtonePlayer;
    if-eqz v1, :cond_1

    #@28
    .line 503
    invoke-interface {v1}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2b
    .line 507
    :cond_1
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2e
    .line 510
    .end local v1    # "player":Landroid/media/IRingtonePlayer;
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@31
    move-result-wide v2

    #@32
    .line 512
    :try_start_3
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@34
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    #@36
    invoke-virtual {v4}, Landroid/os/Vibrator;->cancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@39
    .line 514
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@3c
    .end local v2    # "identity":J
    :cond_2
    monitor-exit v5

    #@3d
    .line 493
    return-void

    #@3e
    .line 505
    .restart local v2    # "identity":J
    :catch_0
    move-exception v0

    #@3f
    .line 507
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@42
    goto :goto_0

    #@43
    .line 494
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "identity":J
    :catchall_0
    move-exception v4

    #@44
    monitor-exit v5

    #@45
    throw v4

    #@46
    .line 506
    .restart local v2    # "identity":J
    :catchall_1
    move-exception v4

    #@47
    .line 507
    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4a
    .line 506
    throw v4

    #@4b
    .line 513
    :catchall_2
    move-exception v4

    #@4c
    .line 514
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4f
    .line 513
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method
