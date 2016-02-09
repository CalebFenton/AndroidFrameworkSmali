.class Lcom/android/server/notification/NotificationManagerService$5;
.super Landroid/app/INotificationManager$Stub;
.source "NotificationManagerService.java"


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
    .line 1061
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-direct {p0}, Landroid/app/INotificationManager$Stub;-><init>()V

    #@5
    return-void
.end method

.method private cancelNotificationFromListenerLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;Ljava/lang/String;II)V
    .locals 12
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "userId"    # I

    #@0
    .prologue
    .line 1438
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    const/4 v6, 0x0

    #@3
    .line 1439
    const/16 v7, 0x42

    #@5
    .line 1440
    const/4 v8, 0x1

    #@6
    .line 1441
    const/16 v10, 0xa

    #@8
    move v1, p2

    #@9
    move v2, p3

    #@a
    move-object/from16 v3, p4

    #@c
    move-object/from16 v4, p5

    #@e
    move/from16 v5, p6

    #@10
    move/from16 v9, p7

    #@12
    move-object v11, p1

    #@13
    .line 1438
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    #@16
    .line 1437
    return-void
.end method

.method private checkPackagePolicyAccess(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1652
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPolicyAccess:Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

    #@4
    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;->isPackageGranted(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private checkPolicyAccess(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1656
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$5;->checkPackagePolicyAccess(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@8
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isComponentEnabledForPackage(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    :goto_0
    return v0

    #@11
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method

.method private enforcePolicyAccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1645
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$5;->checkPolicyAccess(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1646
    const-string/jumbo v0, "NotificationService"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Notification policy access denied calling "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 1647
    new-instance v0, Ljava/lang/SecurityException;

    #@22
    const-string/jumbo v1, "Notification policy access denied"

    #@25
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 1644
    :cond_0
    return-void
.end method

.method private enforceSystemOrSystemUI(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1639
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-wrap1()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    return-void

    #@7
    .line 1640
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@9
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    #@10
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    .line 1638
    return-void
.end method

.method private enforceSystemOrSystemUIOrVolume(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1629
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1630
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@8
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    #@a
    invoke-virtual {v1}, Landroid/media/AudioManagerInternal;->getVolumeControllerUid()I

    #@d
    move-result v0

    #@e
    .line 1631
    .local v0, "vcuid":I
    if-lez v0, :cond_0

    #@10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@13
    move-result v1

    #@14
    if-ne v1, v0, :cond_0

    #@16
    .line 1632
    return-void

    #@17
    .line 1635
    .end local v0    # "vcuid":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    #@1a
    .line 1628
    return-void
.end method


# virtual methods
.method public applyRestore([BI)V
    .locals 6
    .param p1, "payload"    # [B
    .param p2, "user"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1720
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@3
    if-eqz v3, :cond_1

    #@5
    const-string/jumbo v3, "NotificationService"

    #@8
    new-instance v4, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v5, "applyRestore u="

    #@10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    const-string/jumbo v5, " payload="

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    .line 1721
    if-eqz p1, :cond_0

    #@21
    new-instance v2, Ljava/lang/String;

    #@23
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@25
    invoke-direct {v2, p1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@28
    .line 1720
    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 1722
    :cond_1
    if-nez p1, :cond_2

    #@35
    .line 1723
    const-string/jumbo v2, "NotificationService"

    #@38
    new-instance v3, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v4, "applyRestore: no payload to restore for user "

    #@40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 1724
    return-void

    #@50
    .line 1726
    :cond_2
    if-eqz p2, :cond_3

    #@52
    .line 1727
    const-string/jumbo v2, "NotificationService"

    #@55
    new-instance v3, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v4, "applyRestore: cannot restore policy for user "

    #@5d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v3

    #@61
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v3

    #@65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v3

    #@69
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    .line 1728
    return-void

    #@6d
    .line 1730
    :cond_3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@6f
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@72
    .line 1732
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@74
    const/4 v3, 0x1

    #@75
    invoke-static {v2, v0, v3}, Lcom/android/server/notification/NotificationManagerService;->-wrap22(Lcom/android/server/notification/NotificationManagerService;Ljava/io/InputStream;Z)V

    #@78
    .line 1733
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@7a
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@7d
    .line 1719
    :goto_0
    return-void

    #@7e
    .line 1734
    :catch_0
    move-exception v1

    #@7f
    .line 1735
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "NotificationService"

    #@82
    const-string/jumbo v3, "applyRestore: error reading payload"

    #@85
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@88
    goto :goto_0
.end method

.method public areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1205
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-wrap12()V

    #@4
    .line 1206
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@6
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get2(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;

    #@9
    move-result-object v1

    #@a
    const/16 v2, 0xb

    #@c
    invoke-virtual {v1, v2, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_0

    #@12
    const/4 v0, 0x1

    #@13
    :cond_0
    return v0
.end method

.method public cancelAllNotifications(Ljava/lang/String;I)V
    .locals 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1181
    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-wrap11(Ljava/lang/String;)V

    #@3
    .line 1183
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@6
    move-result v0

    #@7
    .line 1184
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@a
    move-result v1

    #@b
    const-string/jumbo v5, "cancelAllNotifications"

    #@e
    const/4 v3, 0x1

    #@f
    const/4 v4, 0x0

    #@10
    move v2, p2

    #@11
    move-object v6, p1

    #@12
    .line 1183
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@15
    move-result p2

    #@16
    .line 1188
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@18
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1b
    move-result v1

    #@1c
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1f
    move-result v2

    #@20
    .line 1189
    const/4 v4, 0x0

    #@21
    const/16 v5, 0x40

    #@23
    const/4 v6, 0x1

    #@24
    .line 1190
    const/16 v8, 0x9

    #@26
    const/4 v9, 0x0

    #@27
    move-object v3, p1

    #@28
    move v7, p2

    #@29
    .line 1188
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    #@2c
    .line 1180
    return-void
.end method

.method public cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I

    #@0
    .prologue
    .line 1454
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v2

    #@4
    .line 1455
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@7
    move-result v3

    #@8
    .line 1456
    .local v3, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v8

    #@c
    .line 1458
    .local v8, "identity":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@e
    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@10
    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@11
    .line 1459
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@13
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@1a
    move-result-object v1

    #@1b
    .line 1460
    .local v1, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-virtual {v1}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->supportsProfiles()Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_0

    #@21
    .line 1461
    const-string/jumbo v0, "NotificationService"

    #@24
    new-instance v4, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v5, "Ignoring deprecated cancelNotification(pkg, tag, id) from "

    #@2c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    .line 1462
    iget-object v5, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@32
    .line 1461
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    .line 1463
    const-string/jumbo v5, " use cancelNotification(key) instead."

    #@39
    .line 1461
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    :goto_0
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@45
    .line 1470
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@48
    .line 1453
    return-void

    #@49
    .line 1466
    :cond_0
    :try_start_3
    iget v7, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    #@4b
    move-object v0, p0

    #@4c
    move-object v4, p2

    #@4d
    move-object v5, p3

    #@4e
    move v6, p4

    #@4f
    .line 1465
    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService$5;->cancelNotificationFromListenerLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;Ljava/lang/String;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@52
    goto :goto_0

    #@53
    .line 1458
    .end local v1    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :catchall_0
    move-exception v0

    #@54
    :try_start_4
    monitor-exit v10

    #@55
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@56
    .line 1469
    :catchall_1
    move-exception v0

    #@57
    .line 1470
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5a
    .line 1469
    throw v0
.end method

.method public cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 1169
    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-wrap11(Ljava/lang/String;)V

    #@3
    .line 1170
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@6
    move-result v0

    #@7
    .line 1171
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@a
    move-result v1

    #@b
    const-string/jumbo v5, "cancelNotificationWithTag"

    #@e
    const/4 v3, 0x1

    #@f
    const/4 v4, 0x0

    #@10
    move/from16 v2, p4

    #@12
    move-object v6, p1

    #@13
    .line 1170
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@16
    move-result p4

    #@17
    .line 1173
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1c
    move-result v1

    #@1d
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@20
    move-result v2

    #@21
    .line 1174
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@24
    move-result v3

    #@25
    const/16 v4, 0x3e8

    #@27
    if-ne v3, v4, :cond_0

    #@29
    .line 1175
    const/4 v7, 0x0

    #@2a
    .line 1173
    :goto_0
    const/4 v6, 0x0

    #@2b
    .line 1175
    const/4 v8, 0x0

    #@2c
    const/16 v10, 0x8

    #@2e
    .line 1176
    const/4 v11, 0x0

    #@2f
    move-object v3, p1

    #@30
    move-object v4, p2

    #@31
    move v5, p3

    #@32
    move/from16 v9, p4

    #@34
    .line 1173
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    #@37
    .line 1168
    return-void

    #@38
    .line 1175
    :cond_0
    const/16 v7, 0x40

    #@3a
    goto :goto_0
.end method

.method public cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    .locals 23
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "keys"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1372
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v4

    #@4
    .line 1373
    .local v4, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@7
    move-result v5

    #@8
    .line 1374
    .local v5, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v20

    #@c
    .line 1376
    .local v20, "identity":J
    :try_start_0
    move-object/from16 v0, p0

    #@e
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@10
    iget-object v0, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@12
    move-object/from16 v22, v0

    #@14
    monitor-enter v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@15
    .line 1377
    :try_start_1
    move-object/from16 v0, p0

    #@17
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@19
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@1c
    move-result-object v2

    #@1d
    move-object/from16 v0, p1

    #@1f
    invoke-virtual {v2, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@22
    move-result-object v3

    #@23
    .line 1378
    .local v3, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz p2, :cond_3

    #@25
    .line 1379
    move-object/from16 v0, p2

    #@27
    array-length v0, v0

    #@28
    move/from16 v17, v0

    #@2a
    .line 1380
    .local v17, "N":I
    const/16 v18, 0x0

    #@2c
    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    #@2e
    move/from16 v1, v17

    #@30
    if-ge v0, v1, :cond_4

    #@32
    .line 1381
    move-object/from16 v0, p0

    #@34
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@36
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    #@38
    aget-object v6, p2, v18

    #@3a
    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    move-result-object v19

    #@3e
    check-cast v19, Lcom/android/server/notification/NotificationRecord;

    #@40
    .line 1382
    .local v19, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v19, :cond_0

    #@42
    .line 1380
    :goto_1
    add-int/lit8 v18, v18, 0x1

    #@44
    goto :goto_0

    #@45
    .line 1383
    :cond_0
    move-object/from16 v0, v19

    #@47
    iget-object v2, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@49
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    #@4c
    move-result v9

    #@4d
    .line 1384
    .local v9, "userId":I
    iget v2, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    #@4f
    if-eq v9, v2, :cond_1

    #@51
    const/4 v2, -0x1

    #@52
    if-eq v9, v2, :cond_1

    #@54
    .line 1385
    move-object/from16 v0, p0

    #@56
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@58
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v2, v9}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    #@5f
    move-result v2

    #@60
    if-eqz v2, :cond_2

    #@62
    .line 1390
    :cond_1
    move-object/from16 v0, v19

    #@64
    iget-object v2, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@66
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@69
    move-result-object v6

    #@6a
    move-object/from16 v0, v19

    #@6c
    iget-object v2, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@6e
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    #@71
    move-result-object v7

    #@72
    move-object/from16 v0, v19

    #@74
    iget-object v2, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@76
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    #@79
    move-result v8

    #@7a
    move-object/from16 v2, p0

    #@7c
    .line 1389
    invoke-direct/range {v2 .. v9}, Lcom/android/server/notification/NotificationManagerService$5;->cancelNotificationFromListenerLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7f
    goto :goto_1

    #@80
    .line 1376
    .end local v3    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v9    # "userId":I
    .end local v17    # "N":I
    .end local v18    # "i":I
    .end local v19    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v2

    #@81
    :try_start_2
    monitor-exit v22

    #@82
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@83
    .line 1398
    :catchall_1
    move-exception v2

    #@84
    .line 1399
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@87
    .line 1398
    throw v2

    #@88
    .line 1386
    .restart local v3    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .restart local v9    # "userId":I
    .restart local v17    # "N":I
    .restart local v18    # "i":I
    .restart local v19    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_2
    :try_start_3
    new-instance v2, Ljava/lang/SecurityException;

    #@8a
    new-instance v6, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string/jumbo v7, "Disallowed call from listener: "

    #@92
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v6

    #@96
    .line 1387
    iget-object v7, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    #@98
    .line 1386
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v6

    #@9c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v6

    #@a0
    invoke-direct {v2, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@a3
    throw v2

    #@a4
    .line 1394
    .end local v9    # "userId":I
    .end local v17    # "N":I
    .end local v18    # "i":I
    .end local v19    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_3
    move-object/from16 v0, p0

    #@a6
    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@a8
    iget v13, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    #@aa
    .line 1395
    invoke-virtual {v3}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->supportsProfiles()Z

    #@ad
    move-result v16

    #@ae
    const/16 v14, 0xb

    #@b0
    move v11, v4

    #@b1
    move v12, v5

    #@b2
    move-object v15, v3

    #@b3
    .line 1394
    invoke-virtual/range {v10 .. v16}, Lcom/android/server/notification/NotificationManagerService;->cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@b6
    :cond_4
    :try_start_4
    monitor-exit v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@b7
    .line 1399
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ba
    .line 1371
    return-void
.end method

.method public cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/app/ITransientNotification;

    #@0
    .prologue
    .line 1137
    const-string/jumbo v3, "NotificationService"

    #@3
    new-instance v4, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v5, "cancelToast pkg="

    #@b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v4

    #@13
    const-string/jumbo v5, " callback="

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 1139
    if-eqz p1, :cond_0

    #@27
    if-nez p2, :cond_1

    #@29
    .line 1140
    :cond_0
    const-string/jumbo v3, "NotificationService"

    #@2c
    new-instance v4, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v5, "Not cancelling notification. pkg="

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    const-string/jumbo v5, " callback="

    #@3f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 1141
    return-void

    #@4f
    .line 1144
    :cond_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@51
    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@53
    monitor-enter v4

    #@54
    .line 1145
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@57
    move-result-wide v0

    #@58
    .line 1147
    .local v0, "callingId":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@5a
    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    #@5d
    move-result v2

    #@5e
    .line 1148
    .local v2, "index":I
    if-ltz v2, :cond_2

    #@60
    .line 1149
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@62
    invoke-virtual {v3, v2}, Lcom/android/server/notification/NotificationManagerService;->cancelToastLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@65
    .line 1155
    :goto_0
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@68
    monitor-exit v4

    #@69
    .line 1136
    return-void

    #@6a
    .line 1151
    :cond_2
    :try_start_3
    const-string/jumbo v3, "NotificationService"

    #@6d
    new-instance v5, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v6, "Toast already cancelled. pkg="

    #@75
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v5

    #@79
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v5

    #@7d
    .line 1152
    const-string/jumbo v6, " callback="

    #@80
    .line 1151
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v5

    #@84
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v5

    #@88
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v5

    #@8c
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@8f
    goto :goto_0

    #@90
    .line 1154
    .end local v2    # "index":I
    :catchall_0
    move-exception v3

    #@91
    .line 1155
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@94
    .line 1154
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@95
    .line 1144
    .end local v0    # "callingId":J
    :catchall_1
    move-exception v3

    #@96
    monitor-exit v4

    #@97
    throw v3
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1661
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "android.permission.DUMP"

    #@9
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 1663
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "Permission Denial: can\'t dump NotificationManager from pid="

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    .line 1664
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1e
    move-result v2

    #@1f
    .line 1663
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 1665
    const-string/jumbo v2, ", uid="

    #@26
    .line 1663
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 1665
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2d
    move-result v2

    #@2e
    .line 1663
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39
    .line 1666
    return-void

    #@3a
    .line 1669
    :cond_0
    invoke-static {p3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->parseFromArguments([Ljava/lang/String;)Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    #@3d
    move-result-object v0

    #@3e
    .line 1670
    .local v0, "filter":Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    if-eqz v0, :cond_1

    #@40
    iget-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->stats:Z

    #@42
    if-eqz v1, :cond_1

    #@44
    .line 1671
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@46
    invoke-static {v1, p2, v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap13(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    #@49
    .line 1660
    :goto_0
    return-void

    #@4a
    .line 1673
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@4c
    invoke-virtual {v1, p2, v0}, Lcom/android/server/notification/NotificationManagerService;->dumpImpl(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    #@4f
    goto :goto_0
.end method

.method public enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    .locals 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "notification"    # Landroid/app/Notification;
    .param p6, "idOut"    # [I
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1163
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v3

    #@6
    .line 1164
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v4

    #@a
    move-object v1, p1

    #@b
    move-object v2, p2

    #@c
    move-object v5, p3

    #@d
    move v6, p4

    #@e
    move-object v7, p5

    #@f
    move-object/from16 v8, p6

    #@11
    move/from16 v9, p7

    #@13
    .line 1163
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V

    #@16
    .line 1162
    return-void
.end method

.method public enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V
    .locals 18
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/app/ITransientNotification;
    .param p3, "duration"    # I

    #@0
    .prologue
    .line 1068
    sget-boolean v14, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@2
    if-eqz v14, :cond_0

    #@4
    .line 1069
    const-string/jumbo v14, "NotificationService"

    #@7
    new-instance v15, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v16, "enqueueToast pkg="

    #@f
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v15

    #@13
    move-object/from16 v0, p1

    #@15
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v15

    #@19
    const-string/jumbo v16, " callback="

    #@1c
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v15

    #@20
    move-object/from16 v0, p2

    #@22
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v15

    #@26
    .line 1070
    const-string/jumbo v16, " duration="

    #@29
    .line 1069
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v15

    #@2d
    move/from16 v0, p3

    #@2f
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v15

    #@33
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v15

    #@37
    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 1073
    :cond_0
    if-eqz p1, :cond_1

    #@3c
    if-nez p2, :cond_2

    #@3e
    .line 1074
    :cond_1
    const-string/jumbo v14, "NotificationService"

    #@41
    new-instance v15, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v16, "Not doing toast. pkg="

    #@49
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v15

    #@4d
    move-object/from16 v0, p1

    #@4f
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v15

    #@53
    const-string/jumbo v16, " callback="

    #@56
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v15

    #@5a
    move-object/from16 v0, p2

    #@5c
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v15

    #@60
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v15

    #@64
    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    .line 1075
    return-void

    #@68
    .line 1078
    :cond_2
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-wrap1()Z

    #@6b
    move-result v14

    #@6c
    if-nez v14, :cond_5

    #@6e
    const-string/jumbo v14, "android"

    #@71
    move-object/from16 v0, p1

    #@73
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v11

    #@77
    .line 1080
    :goto_0
    move-object/from16 v0, p0

    #@79
    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@7b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7e
    move-result v15

    #@7f
    move-object/from16 v0, p1

    #@81
    invoke-static {v14, v0, v15}, Lcom/android/server/notification/NotificationManagerService;->-wrap3(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z

    #@84
    move-result v14

    #@85
    if-eqz v14, :cond_6

    #@87
    .line 1087
    :cond_3
    move-object/from16 v0, p0

    #@89
    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@8b
    iget-object v15, v14, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@8d
    monitor-enter v15

    #@8e
    .line 1088
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@91
    move-result v5

    #@92
    .line 1089
    .local v5, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@95
    move-result-wide v6

    #@96
    .line 1092
    .local v6, "callingId":J
    :try_start_1
    move-object/from16 v0, p0

    #@98
    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@9a
    move-object/from16 v0, p1

    #@9c
    move-object/from16 v1, p2

    #@9e
    invoke-virtual {v14, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    #@a1
    move-result v10

    #@a2
    .line 1095
    .local v10, "index":I
    if-ltz v10, :cond_7

    #@a4
    .line 1096
    move-object/from16 v0, p0

    #@a6
    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@a8
    iget-object v14, v14, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@aa
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@ad
    move-result-object v13

    #@ae
    check-cast v13, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    #@b0
    .line 1097
    .local v13, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    move/from16 v0, p3

    #@b2
    invoke-virtual {v13, v0}, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->update(I)V

    #@b5
    .line 1126
    :goto_1
    if-nez v10, :cond_4

    #@b7
    .line 1127
    move-object/from16 v0, p0

    #@b9
    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@bb
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationManagerService;->showNextToastLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@be
    .line 1130
    :cond_4
    :try_start_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@c1
    monitor-exit v15

    #@c2
    .line 1066
    return-void

    #@c3
    .line 1078
    .end local v5    # "callingPid":I
    .end local v6    # "callingId":J
    .end local v10    # "index":I
    .end local v13    # "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_5
    const/4 v11, 0x1

    #@c4
    .local v11, "isSystemToast":Z
    goto :goto_0

    #@c5
    .line 1081
    .end local v11    # "isSystemToast":Z
    :cond_6
    if-nez v11, :cond_3

    #@c7
    .line 1082
    const-string/jumbo v14, "NotificationService"

    #@ca
    new-instance v15, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    const-string/jumbo v16, "Suppressing toast from package "

    #@d2
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v15

    #@d6
    move-object/from16 v0, p1

    #@d8
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v15

    #@dc
    const-string/jumbo v16, " by user request."

    #@df
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v15

    #@e3
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object v15

    #@e7
    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@ea
    .line 1083
    return-void

    #@eb
    .line 1101
    .restart local v5    # "callingPid":I
    .restart local v6    # "callingId":J
    .restart local v10    # "index":I
    :cond_7
    if-nez v11, :cond_9

    #@ed
    .line 1102
    const/4 v8, 0x0

    #@ee
    .line 1103
    .local v8, "count":I
    :try_start_3
    move-object/from16 v0, p0

    #@f0
    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@f2
    iget-object v14, v14, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@f4
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@f7
    move-result v4

    #@f8
    .line 1104
    .local v4, "N":I
    const/4 v9, 0x0

    #@f9
    .local v9, "i":I
    :goto_2
    if-ge v9, v4, :cond_9

    #@fb
    .line 1105
    move-object/from16 v0, p0

    #@fd
    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@ff
    iget-object v14, v14, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@101
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@104
    move-result-object v12

    #@105
    check-cast v12, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    #@107
    .line 1106
    .local v12, "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget-object v14, v12, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    #@109
    move-object/from16 v0, p1

    #@10b
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10e
    move-result v14

    #@10f
    if-eqz v14, :cond_8

    #@111
    .line 1107
    add-int/lit8 v8, v8, 0x1

    #@113
    .line 1108
    const/16 v14, 0x32

    #@115
    if-lt v8, v14, :cond_8

    #@117
    .line 1109
    const-string/jumbo v14, "NotificationService"

    #@11a
    new-instance v16, Ljava/lang/StringBuilder;

    #@11c
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@11f
    const-string/jumbo v17, "Package has already posted "

    #@122
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v16

    #@126
    move-object/from16 v0, v16

    #@128
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v16

    #@12c
    .line 1110
    const-string/jumbo v17, " toasts. Not showing more. Package="

    #@12f
    .line 1109
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v16

    #@133
    move-object/from16 v0, v16

    #@135
    move-object/from16 v1, p1

    #@137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v16

    #@13b
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13e
    move-result-object v16

    #@13f
    move-object/from16 v0, v16

    #@141
    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@144
    .line 1130
    :try_start_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@147
    monitor-exit v15

    #@148
    .line 1111
    return-void

    #@149
    .line 1104
    :cond_8
    add-int/lit8 v9, v9, 0x1

    #@14b
    goto :goto_2

    #@14c
    .line 1117
    .end local v4    # "N":I
    .end local v8    # "count":I
    .end local v9    # "i":I
    .end local v12    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_9
    :try_start_5
    new-instance v13, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    #@14e
    move-object/from16 v0, p1

    #@150
    move-object/from16 v1, p2

    #@152
    move/from16 v2, p3

    #@154
    invoke-direct {v13, v5, v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$ToastRecord;-><init>(ILjava/lang/String;Landroid/app/ITransientNotification;I)V

    #@157
    .line 1118
    .restart local v13    # "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    move-object/from16 v0, p0

    #@159
    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@15b
    iget-object v14, v14, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@15d
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@160
    .line 1119
    move-object/from16 v0, p0

    #@162
    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@164
    iget-object v14, v14, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@166
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@169
    move-result v14

    #@16a
    add-int/lit8 v10, v14, -0x1

    #@16c
    .line 1120
    move-object/from16 v0, p0

    #@16e
    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@170
    invoke-virtual {v14, v5}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveLocked(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@173
    goto/16 :goto_1

    #@175
    .line 1129
    .end local v10    # "index":I
    .end local v13    # "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :catchall_0
    move-exception v14

    #@176
    .line 1130
    :try_start_6
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@179
    .line 1129
    throw v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@17a
    .line 1087
    .end local v5    # "callingPid":I
    .end local v6    # "callingId":J
    :catchall_1
    move-exception v14

    #@17b
    monitor-exit v15

    #@17c
    throw v14
.end method

.method public getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    .locals 7
    .param p1, "callingPkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1258
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@5
    move-result-object v4

    #@6
    .line 1259
    const-string/jumbo v5, "android.permission.ACCESS_NOTIFICATIONS"

    #@9
    .line 1260
    const-string/jumbo v6, "NotificationManagerService.getActiveNotifications"

    #@c
    .line 1258
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 1262
    const/4 v2, 0x0

    #@10
    .line 1263
    .local v2, "tmp":[Landroid/service/notification/StatusBarNotification;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@13
    move-result v3

    #@14
    .line 1266
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@16
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-get2(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;

    #@19
    move-result-object v4

    #@1a
    const/16 v5, 0x19

    #@1c
    invoke-virtual {v4, v5, v3, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    #@1f
    move-result v4

    #@20
    if-nez v4, :cond_1

    #@22
    .line 1268
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@24
    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@26
    monitor-enter v5

    #@27
    .line 1269
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@29
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@2e
    move-result v4

    #@2f
    new-array v2, v4, [Landroid/service/notification/StatusBarNotification;

    #@31
    .line 1270
    .local v2, "tmp":[Landroid/service/notification/StatusBarNotification;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@33
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@38
    move-result v0

    #@39
    .line 1271
    .local v0, "N":I
    const/4 v1, 0x0

    #@3a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@3c
    .line 1272
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@3e
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@40
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@43
    move-result-object v4

    #@44
    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    #@46
    iget-object v4, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@48
    aput-object v4, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    .line 1271
    add-int/lit8 v1, v1, 0x1

    #@4c
    goto :goto_0

    #@4d
    :cond_0
    monitor-exit v5

    #@4e
    .line 1276
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "tmp":[Landroid/service/notification/StatusBarNotification;
    :cond_1
    return-object v2

    #@4f
    .line 1268
    :catchall_0
    move-exception v4

    #@50
    monitor-exit v5

    #@51
    throw v4
.end method

.method public getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 11
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "keys"    # [Ljava/lang/String;
    .param p3, "trim"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/INotificationListener;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1487
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    iget-object v9, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@4
    monitor-enter v9

    #@5
    .line 1488
    :try_start_0
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@7
    invoke-static {v8}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@a
    move-result-object v8

    #@b
    invoke-virtual {v8, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@e
    move-result-object v3

    #@f
    .line 1489
    .local v3, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz p2, :cond_1

    #@11
    const/4 v1, 0x1

    #@12
    .line 1490
    .local v1, "getKeys":Z
    :goto_0
    if-eqz v1, :cond_2

    #@14
    array-length v0, p2

    #@15
    .line 1492
    .local v0, "N":I
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    #@17
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@1a
    .line 1493
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    const/4 v2, 0x0

    #@1b
    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_6

    #@1d
    .line 1494
    if-eqz v1, :cond_3

    #@1f
    .line 1495
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@21
    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    #@23
    aget-object v10, p2, v2

    #@25
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v5

    #@29
    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    #@2b
    .line 1497
    .local v5, "r":Lcom/android/server/notification/NotificationRecord;
    :goto_3
    if-nez v5, :cond_4

    #@2d
    .line 1493
    :cond_0
    :goto_4
    add-int/lit8 v2, v2, 0x1

    #@2f
    goto :goto_2

    #@30
    .line 1489
    .end local v0    # "N":I
    .end local v1    # "getKeys":Z
    .end local v2    # "i":I
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    .end local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_1
    const/4 v1, 0x0

    #@31
    .restart local v1    # "getKeys":Z
    goto :goto_0

    #@32
    .line 1490
    :cond_2
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@34
    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@36
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@39
    move-result v0

    #@3a
    .restart local v0    # "N":I
    goto :goto_1

    #@3b
    .line 1496
    .restart local v2    # "i":I
    .restart local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    :cond_3
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@3d
    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@3f
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v5

    #@43
    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    #@45
    .restart local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    goto :goto_3

    #@46
    .line 1498
    :cond_4
    iget-object v6, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@48
    .line 1499
    .local v6, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@4a
    invoke-static {v8, v6, v3}, Lcom/android/server/notification/NotificationManagerService;->-wrap2(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    #@4d
    move-result v8

    #@4e
    if-eqz v8, :cond_0

    #@50
    .line 1501
    if-nez p3, :cond_5

    #@52
    move-object v7, v6

    #@53
    .line 1502
    .local v7, "sbnToSend":Landroid/service/notification/StatusBarNotification;
    :goto_5
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@56
    goto :goto_4

    #@57
    .line 1487
    .end local v0    # "N":I
    .end local v1    # "getKeys":Z
    .end local v2    # "i":I
    .end local v3    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    .end local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v6    # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v7    # "sbnToSend":Landroid/service/notification/StatusBarNotification;
    :catchall_0
    move-exception v8

    #@58
    monitor-exit v9

    #@59
    throw v8

    #@5a
    .line 1501
    .restart local v0    # "N":I
    .restart local v1    # "getKeys":Z
    .restart local v2    # "i":I
    .restart local v3    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .restart local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    .restart local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    .restart local v6    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_5
    :try_start_1
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    #@5d
    move-result-object v7

    #@5e
    .restart local v7    # "sbnToSend":Landroid/service/notification/StatusBarNotification;
    goto :goto_5

    #@5f
    .line 1504
    .end local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v6    # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v7    # "sbnToSend":Landroid/service/notification/StatusBarNotification;
    :cond_6
    new-instance v8, Landroid/content/pm/ParceledListSlice;

    #@61
    invoke-direct {v8, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@64
    monitor-exit v9

    #@65
    return-object v8
.end method

.method public getAppActiveNotifications(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 20
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "incomingUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1287
    invoke-static/range {p1 .. p1}, Lcom/android/server/notification/NotificationManagerService;->-wrap11(Ljava/lang/String;)V

    #@3
    .line 1288
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@6
    move-result v2

    #@7
    .line 1289
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@a
    move-result v3

    #@b
    .line 1290
    const-string/jumbo v7, "getAppActiveNotifications"

    #@e
    .line 1289
    const/4 v5, 0x1

    #@f
    const/4 v6, 0x0

    #@10
    move/from16 v4, p2

    #@12
    move-object/from16 v8, p1

    #@14
    .line 1288
    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@17
    move-result v18

    #@18
    .line 1292
    .local v18, "userId":I
    move-object/from16 v0, p0

    #@1a
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@1c
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@21
    move-result v14

    #@22
    .line 1293
    .local v14, "N":I
    new-instance v16, Ljava/util/ArrayList;

    #@24
    move-object/from16 v0, v16

    #@26
    invoke-direct {v0, v14}, Ljava/util/ArrayList;-><init>(I)V

    #@29
    .line 1295
    .local v16, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    move-object/from16 v0, p0

    #@2b
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2d
    iget-object v0, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@2f
    move-object/from16 v19, v0

    #@31
    monitor-enter v19

    #@32
    .line 1296
    const/4 v15, 0x0

    #@33
    .local v15, "i":I
    :goto_0
    if-ge v15, v14, :cond_1

    #@35
    .line 1297
    :try_start_0
    move-object/from16 v0, p0

    #@37
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@39
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@3b
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3e
    move-result-object v3

    #@3f
    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    #@41
    iget-object v0, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@43
    move-object/from16 v17, v0

    #@45
    .line 1298
    .local v17, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    move-object/from16 v0, p1

    #@4b
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v3

    #@4f
    if-eqz v3, :cond_0

    #@51
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    #@54
    move-result v3

    #@55
    move/from16 v0, v18

    #@57
    if-ne v3, v0, :cond_0

    #@59
    .line 1302
    new-instance v2, Landroid/service/notification/StatusBarNotification;

    #@5b
    .line 1303
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@5e
    move-result-object v3

    #@5f
    .line 1304
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    .line 1305
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getId()I

    #@66
    move-result v5

    #@67
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    #@6a
    move-result-object v6

    #@6b
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getUid()I

    #@6e
    move-result v7

    #@6f
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    #@72
    move-result v8

    #@73
    .line 1307
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@76
    move-result-object v9

    #@77
    invoke-virtual {v9}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    #@7a
    move-result-object v10

    #@7b
    .line 1308
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    #@7e
    move-result-object v11

    #@7f
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    #@82
    move-result-wide v12

    #@83
    .line 1306
    const/4 v9, 0x0

    #@84
    .line 1302
    invoke-direct/range {v2 .. v13}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;J)V

    #@87
    .line 1309
    .local v2, "sbnOut":Landroid/service/notification/StatusBarNotification;
    move-object/from16 v0, v16

    #@89
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8c
    .line 1296
    .end local v2    # "sbnOut":Landroid/service/notification/StatusBarNotification;
    :cond_0
    add-int/lit8 v15, v15, 0x1

    #@8e
    goto :goto_0

    #@8f
    .end local v17    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_1
    monitor-exit v19

    #@90
    .line 1314
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    #@92
    move-object/from16 v0, v16

    #@94
    invoke-direct {v3, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    #@97
    return-object v3

    #@98
    .line 1295
    :catchall_0
    move-exception v3

    #@99
    monitor-exit v19

    #@9a
    throw v3
.end method

.method public getBackupPayload(I)[B
    .locals 6
    .param p1, "user"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1703
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    const-string/jumbo v2, "NotificationService"

    #@8
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "getBackupPayload u="

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 1704
    :cond_0
    if-eqz p1, :cond_1

    #@21
    .line 1705
    const-string/jumbo v2, "NotificationService"

    #@24
    new-instance v3, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v4, "getBackupPayload: cannot backup policy for user "

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 1706
    return-object v5

    #@3c
    .line 1708
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@3e
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@41
    .line 1710
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@43
    const/4 v3, 0x1

    #@44
    invoke-static {v2, v0, v3}, Lcom/android/server/notification/NotificationManagerService;->-wrap28(Lcom/android/server/notification/NotificationManagerService;Ljava/io/OutputStream;Z)V

    #@47
    .line 1711
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4a
    move-result-object v2

    #@4b
    return-object v2

    #@4c
    .line 1712
    :catch_0
    move-exception v1

    #@4d
    .line 1713
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v2, "NotificationService"

    #@50
    new-instance v3, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v4, "getBackupPayload: error writing payload for user "

    #@58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v3

    #@5c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v3

    #@60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v3

    #@64
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@67
    .line 1715
    return-object v5
.end method

.method public getEffectsSuppressor()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 1679
    const-string/jumbo v0, "INotificationManager.getEffectsSuppressor"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUIOrVolume(Ljava/lang/String;)V

    #@6
    .line 1680
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@8
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get7(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/ComponentName;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getHintsFromListener(Landroid/service/notification/INotificationListener;)I
    .locals 2
    .param p1, "token"    # Landroid/service/notification/INotificationListener;

    #@0
    .prologue
    .line 1530
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@4
    monitor-enter v1

    #@5
    .line 1531
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@7
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get10(Lcom/android/server/notification/NotificationManagerService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v0

    #@b
    monitor-exit v1

    #@c
    return v0

    #@d
    .line 1530
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public getHistoricalNotifications(Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;
    .locals 5
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "count"    # I

    #@0
    .prologue
    .line 1325
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    .line 1326
    const-string/jumbo v3, "android.permission.ACCESS_NOTIFICATIONS"

    #@9
    .line 1327
    const-string/jumbo v4, "NotificationManagerService.getHistoricalNotifications"

    #@c
    .line 1325
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 1329
    const/4 v0, 0x0

    #@10
    .line 1330
    .local v0, "tmp":[Landroid/service/notification/StatusBarNotification;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@13
    move-result v1

    #@14
    .line 1333
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@16
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get2(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;

    #@19
    move-result-object v2

    #@1a
    const/16 v3, 0x19

    #@1c
    invoke-virtual {v2, v3, v1, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    #@1f
    move-result v2

    #@20
    if-nez v2, :cond_0

    #@22
    .line 1335
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@24
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get4(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;

    #@27
    move-result-object v3

    #@28
    monitor-enter v3

    #@29
    .line 1336
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2b
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get4(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2, p2}, Lcom/android/server/notification/NotificationManagerService$Archive;->getArray(I)[Landroid/service/notification/StatusBarNotification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    move-result-object v0

    #@33
    .local v0, "tmp":[Landroid/service/notification/StatusBarNotification;
    monitor-exit v3

    #@34
    .line 1339
    .end local v0    # "tmp":[Landroid/service/notification/StatusBarNotification;
    :cond_0
    return-object v0

    #@35
    .line 1335
    .local v0, "tmp":[Landroid/service/notification/StatusBarNotification;
    :catchall_0
    move-exception v2

    #@36
    monitor-exit v3

    #@37
    throw v2
.end method

.method public getInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;)I
    .locals 2
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1553
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get13(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 1554
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@9
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get9(Lcom/android/server/notification/NotificationManagerService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    monitor-exit v1

    #@e
    return v0

    #@f
    .line 1553
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public getNotificationPolicy(Ljava/lang/String;)Landroid/app/NotificationManager$Policy;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1778
    const-string/jumbo v2, "getNotificationPolicy"

    #@3
    invoke-direct {p0, p1, v2}, Lcom/android/server/notification/NotificationManagerService$5;->enforcePolicyAccess(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 1779
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@9
    move-result-wide v0

    #@a
    .line 1781
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@c
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get19(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result-object v2

    #@14
    .line 1783
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@17
    .line 1781
    return-object v2

    #@18
    .line 1782
    :catchall_0
    move-exception v2

    #@19
    .line 1783
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1c
    .line 1782
    throw v2
.end method

.method public getPackagePeekable(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 1232
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-wrap12()V

    #@3
    .line 1233
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@5
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get15(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getPackagePeekable(Ljava/lang/String;I)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public getPackagePriority(Ljava/lang/String;I)I
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 1219
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-wrap12()V

    #@3
    .line 1220
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@5
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get15(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getPackagePriority(Ljava/lang/String;I)I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public getPackageVisibilityOverride(Ljava/lang/String;I)I
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 1245
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-wrap12()V

    #@3
    .line 1246
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@5
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get15(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getPackageVisibilityOverride(Ljava/lang/String;I)I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public getPackagesRequestingNotificationPolicyAccess()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1753
    const-string/jumbo v2, "request policy access packages"

    #@3
    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    #@6
    .line 1754
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@9
    move-result-wide v0

    #@a
    .line 1756
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@c
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mPolicyAccess:Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

    #@e
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;->getRequestingPackages()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result-object v2

    #@12
    .line 1758
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@15
    .line 1756
    return-object v2

    #@16
    .line 1757
    :catchall_0
    move-exception v2

    #@17
    .line 1758
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1a
    .line 1757
    throw v2
.end method

.method public getZenMode()I
    .locals 1

    #@0
    .prologue
    .line 1570
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get19(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 1

    #@0
    .prologue
    .line 1575
    const-string/jumbo v0, "INotificationManager.getZenModeConfig"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUIOrVolume(Ljava/lang/String;)V

    #@6
    .line 1576
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@8
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get19(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public isNotificationPolicyAccessGranted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1741
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$5;->checkPolicyAccess(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1746
    const-string/jumbo v0, "request policy access status for another package"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    #@6
    .line 1747
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$5;->checkPackagePolicyAccess(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public isSystemConditionProviderEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1696
    const-string/jumbo v0, "INotificationManager.isSystemConditionProviderEnabled"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUIOrVolume(Ljava/lang/String;)V

    #@6
    .line 1697
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@8
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get6(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Lcom/android/server/notification/ConditionProviders;->isSystemProviderEnabled(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public matchesCallFilter(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1685
    const-string/jumbo v0, "INotificationManager.matchesCallFilter"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    #@6
    .line 1686
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@8
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get19(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    #@b
    move-result-object v0

    #@c
    .line 1687
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserHandle()Landroid/os/UserHandle;

    #@f
    move-result-object v1

    #@10
    .line 1689
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@12
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get15(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    #@15
    move-result-object v2

    #@16
    const-class v3, Lcom/android/server/notification/ValidateNotificationPeople;

    #@18
    invoke-virtual {v2, v3}, Lcom/android/server/notification/RankingHelper;->findExtractor(Ljava/lang/Class;)Lcom/android/server/notification/NotificationSignalExtractor;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Lcom/android/server/notification/ValidateNotificationPeople;

    #@1e
    .line 1690
    const/16 v4, 0xbb8

    #@20
    .line 1691
    const/high16 v5, 0x3f800000    # 1.0f

    #@22
    move-object v2, p1

    #@23
    .line 1686
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/ZenModeHelper;->matchesCallFilter(Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z

    #@26
    move-result v0

    #@27
    return v0
.end method

.method public notifyConditions(Ljava/lang/String;Landroid/service/notification/IConditionProvider;[Landroid/service/notification/Condition;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "provider"    # Landroid/service/notification/IConditionProvider;
    .param p3, "conditions"    # [Landroid/service/notification/Condition;

    #@0
    .prologue
    .line 1612
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get6(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1, p2}, Lcom/android/server/notification/ConditionProviders;->checkServiceToken(Landroid/service/notification/IConditionProvider;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@9
    move-result-object v0

    #@a
    .line 1613
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-wrap11(Ljava/lang/String;)V

    #@d
    .line 1614
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@f
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get8(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    #@12
    move-result-object v1

    #@13
    new-instance v2, Lcom/android/server/notification/NotificationManagerService$5$1;

    #@15
    invoke-direct {v2, p0, p1, v0, p3}, Lcom/android/server/notification/NotificationManagerService$5$1;-><init>(Lcom/android/server/notification/NotificationManagerService$5;Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;[Landroid/service/notification/Condition;)V

    #@18
    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    #@1b
    .line 1611
    return-void
.end method

.method public registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V
    .locals 1
    .param p1, "listener"    # Landroid/service/notification/INotificationListener;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userid"    # I

    #@0
    .prologue
    .line 1351
    const-string/jumbo v0, "INotificationManager.registerListener"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    #@6
    .line 1352
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@8
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->registerService(Landroid/os/IInterface;Landroid/content/ComponentName;I)V

    #@f
    .line 1350
    return-void
.end method

.method public requestHintsFromListener(Landroid/service/notification/INotificationListener;I)V
    .locals 6
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "hints"    # I

    #@0
    .prologue
    .line 1510
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 1512
    .local v2, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@6
    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@8
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@9
    .line 1513
    :try_start_1
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@b
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v4, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@12
    move-result-object v1

    #@13
    .line 1514
    .local v1, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    and-int/lit8 v4, p2, 0x1

    #@15
    if-eqz v4, :cond_0

    #@17
    const/4 v0, 0x1

    #@18
    .line 1515
    .local v0, "disableEffects":Z
    :goto_0
    if-eqz v0, :cond_1

    #@1a
    .line 1516
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@1c
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-get12(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/ArraySet;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@23
    .line 1520
    :goto_1
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@25
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-wrap26(Lcom/android/server/notification/NotificationManagerService;)V

    #@28
    .line 1521
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2a
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-wrap24(Lcom/android/server/notification/NotificationManagerService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2e
    .line 1524
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@31
    .line 1509
    return-void

    #@32
    .line 1514
    .end local v0    # "disableEffects":Z
    :cond_0
    const/4 v0, 0x0

    #@33
    .restart local v0    # "disableEffects":Z
    goto :goto_0

    #@34
    .line 1518
    :cond_1
    :try_start_3
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@36
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-get12(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/ArraySet;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3d
    goto :goto_1

    #@3e
    .line 1512
    .end local v0    # "disableEffects":Z
    .end local v1    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :catchall_0
    move-exception v4

    #@3f
    :try_start_4
    monitor-exit v5

    #@40
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@41
    .line 1523
    :catchall_1
    move-exception v4

    #@42
    .line 1524
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@45
    .line 1523
    throw v4
.end method

.method public requestInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;I)V
    .locals 6
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "interruptionFilter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1538
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 1540
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@6
    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@8
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@9
    .line 1541
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@b
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@12
    move-result-object v2

    #@13
    .line 1542
    .local v2, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@15
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get19(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    #@18
    move-result-object v3

    #@19
    iget-object v5, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@1b
    invoke-virtual {v3, v5, p2}, Lcom/android/server/notification/ZenModeHelper;->requestFromListener(Landroid/content/ComponentName;I)V

    #@1e
    .line 1543
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@20
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-wrap25(Lcom/android/server/notification/NotificationManagerService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@24
    .line 1546
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@27
    .line 1537
    return-void

    #@28
    .line 1540
    .end local v2    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :catchall_0
    move-exception v3

    #@29
    :try_start_3
    monitor-exit v4

    #@2a
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@2b
    .line 1545
    :catchall_1
    move-exception v3

    #@2c
    .line 1546
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2f
    .line 1545
    throw v3
.end method

.method public requestZenModeConditions(Landroid/service/notification/IConditionListener;I)V
    .locals 1
    .param p1, "callback"    # Landroid/service/notification/IConditionListener;
    .param p2, "relevance"    # I

    #@0
    .prologue
    .line 1624
    const-string/jumbo v0, "INotificationManager.requestZenModeConditions"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUIOrVolume(Ljava/lang/String;)V

    #@6
    .line 1625
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@8
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get19(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/ZenModeHelper;->requestZenModeConditions(Landroid/service/notification/IConditionListener;I)V

    #@f
    .line 1623
    return-void
.end method

.method public setInterruptionFilter(Ljava/lang/String;I)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "filter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 1598
    const-string/jumbo v3, "setInterruptionFilter"

    #@4
    invoke-direct {p0, p1, v3}, Lcom/android/server/notification/NotificationManagerService$5;->enforcePolicyAccess(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 1599
    invoke-static {p2, v4}, Landroid/app/NotificationManager;->zenModeFromInterruptionFilter(II)I

    #@a
    move-result v2

    #@b
    .line 1600
    .local v2, "zen":I
    if-ne v2, v4, :cond_0

    #@d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@f
    new-instance v4, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v5, "Invalid filter: "

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v3

    #@27
    .line 1601
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@2a
    move-result-wide v0

    #@2b
    .line 1603
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2d
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get19(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    #@30
    move-result-object v3

    #@31
    const-string/jumbo v4, "setInterruptionFilter"

    #@34
    const/4 v5, 0x0

    #@35
    invoke-virtual {v3, v2, v5, v4}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    .line 1605
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3b
    .line 1597
    return-void

    #@3c
    .line 1604
    :catchall_0
    move-exception v3

    #@3d
    .line 1605
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@40
    .line 1604
    throw v3
.end method

.method public setNotificationPolicy(Ljava/lang/String;Landroid/app/NotificationManager$Policy;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "policy"    # Landroid/app/NotificationManager$Policy;

    #@0
    .prologue
    .line 1789
    const-string/jumbo v2, "setNotificationPolicy"

    #@3
    invoke-direct {p0, p1, v2}, Lcom/android/server/notification/NotificationManagerService$5;->enforcePolicyAccess(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 1790
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@9
    move-result-wide v0

    #@a
    .line 1792
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@c
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get19(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p2}, Lcom/android/server/notification/ZenModeHelper;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 1794
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@16
    .line 1788
    return-void

    #@17
    .line 1793
    :catchall_0
    move-exception v2

    #@18
    .line 1794
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 1793
    throw v2
.end method

.method public setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "granted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1765
    const-string/jumbo v2, "grant notification policy access"

    #@3
    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    #@6
    .line 1766
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@9
    move-result-wide v0

    #@a
    .line 1768
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@c
    iget-object v3, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@e
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@f
    .line 1769
    :try_start_1
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@11
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mPolicyAccess:Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

    #@13
    invoke-virtual {v2, p1, p2}, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;->put(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@17
    .line 1772
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1a
    .line 1764
    return-void

    #@1b
    .line 1768
    :catchall_0
    move-exception v2

    #@1c
    :try_start_3
    monitor-exit v3

    #@1d
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1e
    .line 1771
    :catchall_1
    move-exception v2

    #@1f
    .line 1772
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22
    .line 1771
    throw v2
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enabled"    # Z

    #@0
    .prologue
    .line 1195
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-wrap12()V

    #@3
    .line 1197
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->setNotificationsEnabledForPackageImpl(Ljava/lang/String;IZ)V

    #@8
    .line 1194
    return-void
.end method

.method public setNotificationsShownFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    .locals 12
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "keys"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v11, -0x1

    #@1
    .line 1405
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@4
    move-result-wide v2

    #@5
    .line 1407
    .local v2, "identity":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@7
    iget-object v8, v7, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@9
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@a
    .line 1408
    :try_start_1
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@c
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@f
    move-result-object v7

    #@10
    invoke-virtual {v7, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@13
    move-result-object v4

    #@14
    .line 1409
    .local v4, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz p2, :cond_6

    #@16
    .line 1410
    array-length v0, p2

    #@17
    .line 1411
    .local v0, "N":I
    const/4 v1, 0x0

    #@18
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_6

    #@1a
    .line 1412
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@1c
    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    #@1e
    aget-object v9, p2, v1

    #@20
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v5

    #@24
    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    #@26
    .line 1413
    .local v5, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v5, :cond_1

    #@28
    .line 1411
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1414
    :cond_1
    iget-object v7, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@2d
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    #@30
    move-result v6

    #@31
    .line 1415
    .local v6, "userId":I
    iget v7, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    #@33
    if-eq v6, v7, :cond_2

    #@35
    if-eq v6, v11, :cond_2

    #@37
    .line 1416
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@39
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@3c
    move-result-object v7

    #@3d
    invoke-virtual {v7, v6}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    #@40
    move-result v7

    #@41
    if-eqz v7, :cond_5

    #@43
    .line 1420
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->isSeen()Z

    #@46
    move-result v7

    #@47
    if-nez v7, :cond_0

    #@49
    .line 1421
    sget-boolean v7, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@4b
    if-eqz v7, :cond_3

    #@4d
    const-string/jumbo v7, "NotificationService"

    #@50
    new-instance v9, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v10, "Marking notification as seen "

    #@58
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v9

    #@5c
    aget-object v10, p2, v1

    #@5e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v9

    #@62
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v9

    #@66
    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@69
    .line 1422
    :cond_3
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@6b
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->-get3(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/usage/UsageStatsManagerInternal;

    #@6e
    move-result-object v7

    #@6f
    iget-object v9, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@71
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@74
    move-result-object v9

    #@75
    .line 1423
    if-ne v6, v11, :cond_4

    #@77
    const/4 v6, 0x0

    #@78
    .line 1425
    .end local v6    # "userId":I
    :cond_4
    const/4 v10, 0x7

    #@79
    .line 1422
    invoke-virtual {v7, v9, v6, v10}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    #@7c
    .line 1426
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->setSeen()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7f
    goto :goto_1

    #@80
    .line 1407
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v4    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v7

    #@81
    :try_start_2
    monitor-exit v8

    #@82
    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@83
    .line 1431
    :catchall_1
    move-exception v7

    #@84
    .line 1432
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@87
    .line 1431
    throw v7

    #@88
    .line 1417
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v4    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .restart local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    .restart local v6    # "userId":I
    :cond_5
    :try_start_3
    new-instance v7, Ljava/lang/SecurityException;

    #@8a
    new-instance v9, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string/jumbo v10, "Disallowed call from listener: "

    #@92
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v9

    #@96
    .line 1418
    iget-object v10, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    #@98
    .line 1417
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v9

    #@9c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v9

    #@a0
    invoke-direct {v7, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@a3
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a4
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v6    # "userId":I
    :cond_6
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@a5
    .line 1432
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@a8
    .line 1404
    return-void
.end method

.method public setOnNotificationPostedTrimFromListener(Landroid/service/notification/INotificationListener;I)V
    .locals 3
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "trim"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1561
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@4
    monitor-enter v2

    #@5
    .line 1562
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@7
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-object v0

    #@f
    .line 1563
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-nez v0, :cond_0

    #@11
    monitor-exit v2

    #@12
    return-void

    #@13
    .line 1564
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@15
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, v0, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->setOnNotificationPostedTrimLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    monitor-exit v2

    #@1d
    .line 1560
    return-void

    #@1e
    .line 1561
    .end local v0    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :catchall_0
    move-exception v1

    #@1f
    monitor-exit v2

    #@20
    throw v1
.end method

.method public setPackagePeekable(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "peekable"    # Z

    #@0
    .prologue
    .line 1225
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-wrap12()V

    #@3
    .line 1227
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@5
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get15(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/RankingHelper;->setPackagePeekable(Ljava/lang/String;IZ)V

    #@c
    .line 1224
    return-void
.end method

.method public setPackagePriority(Ljava/lang/String;II)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "priority"    # I

    #@0
    .prologue
    .line 1212
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-wrap12()V

    #@3
    .line 1213
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@5
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get15(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/RankingHelper;->setPackagePriority(Ljava/lang/String;II)V

    #@c
    .line 1214
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@e
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    #@11
    .line 1211
    return-void
.end method

.method public setPackageVisibilityOverride(Ljava/lang/String;II)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "visibility"    # I

    #@0
    .prologue
    .line 1238
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-wrap12()V

    #@3
    .line 1239
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@5
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get15(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/RankingHelper;->setPackageVisibilityOverride(Ljava/lang/String;II)V

    #@c
    .line 1240
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@e
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    #@11
    .line 1237
    return-void
.end method

.method public setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1587
    const-string/jumbo v2, "INotificationManager.setZenMode"

    #@3
    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUIOrVolume(Ljava/lang/String;)V

    #@6
    .line 1588
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@9
    move-result-wide v0

    #@a
    .line 1590
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@c
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get19(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 1592
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@16
    .line 1586
    return-void

    #@17
    .line 1591
    :catchall_0
    move-exception v2

    #@18
    .line 1592
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 1591
    throw v2
.end method

.method public setZenModeConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z
    .locals 1
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1581
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-wrap12()V

    #@3
    .line 1582
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@5
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get19(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/ZenModeHelper;->setConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public unregisterListener(Landroid/service/notification/INotificationListener;I)V
    .locals 1
    .param p1, "listener"    # Landroid/service/notification/INotificationListener;
    .param p2, "userid"    # I

    #@0
    .prologue
    .line 1360
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->unregisterService(Landroid/os/IInterface;I)V

    #@9
    .line 1359
    return-void
.end method
