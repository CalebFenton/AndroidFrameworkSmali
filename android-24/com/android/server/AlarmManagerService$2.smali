.class Lcom/android/server/AlarmManagerService$2;
.super Landroid/app/IAlarmManager$Stub;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    #@0
    .prologue
    .line 1227
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    #@2
    invoke-direct {p0}, Landroid/app/IAlarmManager$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1346
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "android.permission.DUMP"

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 1348
    new-instance v0, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v1, "Permission Denial: can\'t dump AlarmManager from from pid="

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 1349
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1e
    move-result v1

    #@1f
    .line 1348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 1350
    const-string/jumbo v1, ", uid="

    #@26
    .line 1348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 1350
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2d
    move-result v1

    #@2e
    .line 1348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39
    .line 1351
    return-void

    #@3a
    .line 1354
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    #@3c
    invoke-virtual {v0, p2}, Lcom/android/server/AlarmManagerService;->dumpImpl(Ljava/io/PrintWriter;)V

    #@3f
    .line 1345
    return-void
.end method

.method public getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 7
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1337
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@4
    move-result v0

    #@5
    .line 1338
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@8
    move-result v1

    #@9
    .line 1339
    const-string/jumbo v5, "getNextAlarmClock"

    #@c
    const/4 v6, 0x0

    #@d
    move v2, p1

    #@e
    move v4, v3

    #@f
    .line 1337
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@12
    move-result p1

    #@13
    .line 1341
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    #@15
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService;->getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method

.method public getNextWakeFromIdleTime()J
    .locals 2

    #@0
    .prologue
    .line 1332
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getNextWakeFromIdleTimeImpl()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .locals 2
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Landroid/app/IAlarmListener;

    #@0
    .prologue
    .line 1320
    if-nez p1, :cond_0

    #@2
    if-nez p2, :cond_0

    #@4
    .line 1321
    const-string/jumbo v0, "AlarmManager"

    #@7
    const-string/jumbo v1, "remove() with no intent or listener"

    #@a
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1322
    return-void

    #@e
    .line 1325
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    #@10
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@12
    monitor-enter v1

    #@13
    .line 1326
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    #@15
    invoke-static {v0, p1, p2}, Lcom/android/server/AlarmManagerService;->-wrap5(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v1

    #@19
    .line 1319
    return-void

    #@1a
    .line 1325
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method public set(Ljava/lang/String;IJJJILandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 19
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "triggerAtTime"    # J
    .param p5, "windowLength"    # J
    .param p7, "interval"    # J
    .param p9, "flags"    # I
    .param p10, "operation"    # Landroid/app/PendingIntent;
    .param p11, "directReceiver"    # Landroid/app/IAlarmListener;
    .param p12, "listenerTag"    # Ljava/lang/String;
    .param p13, "workSource"    # Landroid/os/WorkSource;
    .param p14, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    #@0
    .prologue
    .line 1233
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v16

    #@4
    .line 1237
    .local v16, "callingUid":I
    move-object/from16 v0, p0

    #@6
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    #@8
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    #@a
    move/from16 v0, v16

    #@c
    move-object/from16 v1, p1

    #@e
    invoke-virtual {v2, v0, v1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    #@11
    .line 1240
    const-wide/16 v2, 0x0

    #@13
    cmp-long v2, p7, v2

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 1241
    if-eqz p11, :cond_0

    #@19
    .line 1242
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string/jumbo v3, "Repeating alarms cannot use AlarmReceivers"

    #@1e
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v2

    #@22
    .line 1246
    :cond_0
    if-eqz p13, :cond_1

    #@24
    .line 1247
    move-object/from16 v0, p0

    #@26
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    #@28
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    #@2b
    move-result-object v2

    #@2c
    .line 1248
    const-string/jumbo v3, "android.permission.UPDATE_DEVICE_STATS"

    #@2f
    .line 1249
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@32
    move-result v4

    #@33
    const-string/jumbo v5, "AlarmManager.set"

    #@36
    .line 1247
    move/from16 v0, v16

    #@38
    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    #@3b
    .line 1254
    :cond_1
    and-int/lit8 p9, p9, -0xb

    #@3d
    .line 1259
    const/16 v2, 0x3e8

    #@3f
    move/from16 v0, v16

    #@41
    if-eq v0, v2, :cond_2

    #@43
    .line 1260
    and-int/lit8 p9, p9, -0x11

    #@45
    .line 1264
    :cond_2
    const-wide/16 v2, 0x0

    #@47
    cmp-long v2, p5, v2

    #@49
    if-nez v2, :cond_3

    #@4b
    .line 1265
    or-int/lit8 p9, p9, 0x1

    #@4d
    .line 1270
    :cond_3
    if-eqz p14, :cond_5

    #@4f
    .line 1271
    or-int/lit8 p9, p9, 0x3

    #@51
    .line 1284
    :cond_4
    :goto_0
    move-object/from16 v0, p0

    #@53
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    #@55
    move/from16 v3, p2

    #@57
    move-wide/from16 v4, p3

    #@59
    move-wide/from16 v6, p5

    #@5b
    move-wide/from16 v8, p7

    #@5d
    move-object/from16 v10, p10

    #@5f
    move-object/from16 v11, p11

    #@61
    move-object/from16 v12, p12

    #@63
    move/from16 v13, p9

    #@65
    move-object/from16 v14, p13

    #@67
    move-object/from16 v15, p14

    #@69
    move-object/from16 v17, p1

    #@6b
    invoke-virtual/range {v2 .. v17}, Lcom/android/server/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    #@6e
    .line 1232
    return-void

    #@6f
    .line 1277
    :cond_5
    if-nez p13, :cond_4

    #@71
    const/16 v2, 0x2710

    #@73
    move/from16 v0, v16

    #@75
    if-lt v0, v2, :cond_6

    #@77
    .line 1278
    move-object/from16 v0, p0

    #@79
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    #@7b
    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mDeviceIdleUserWhitelist:[I

    #@7d
    .line 1279
    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getAppId(I)I

    #@80
    move-result v3

    #@81
    .line 1278
    invoke-static {v2, v3}, Ljava/util/Arrays;->binarySearch([II)I

    #@84
    move-result v2

    #@85
    if-ltz v2, :cond_4

    #@87
    .line 1280
    :cond_6
    or-int/lit8 p9, p9, 0x8

    #@89
    .line 1281
    and-int/lit8 p9, p9, -0x5

    #@8b
    goto :goto_0
.end method

.method public setTime(J)Z
    .locals 7
    .param p1, "millis"    # J

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1290
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    #@3
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    #@6
    move-result-object v1

    #@7
    .line 1291
    const-string/jumbo v2, "android.permission.SET_TIME"

    #@a
    .line 1292
    const-string/jumbo v3, "setTime"

    #@d
    .line 1290
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1294
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    #@12
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNativeData:J

    #@14
    const-wide/16 v4, 0x0

    #@16
    cmp-long v1, v2, v4

    #@18
    if-nez v1, :cond_0

    #@1a
    .line 1295
    const-string/jumbo v1, "AlarmManager"

    #@1d
    const-string/jumbo v2, "Not setting time since no alarm driver is available."

    #@20
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 1296
    return v0

    #@24
    .line 1299
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    #@26
    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@28
    monitor-enter v1

    #@29
    .line 1300
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    #@2b
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    #@2d
    iget-wide v4, v3, Lcom/android/server/AlarmManagerService;->mNativeData:J

    #@2f
    invoke-static {v2, v4, v5, p1, p2}, Lcom/android/server/AlarmManagerService;->-wrap2(Lcom/android/server/AlarmManagerService;JJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    move-result v2

    #@33
    if-nez v2, :cond_1

    #@35
    const/4 v0, 0x1

    #@36
    :cond_1
    monitor-exit v1

    #@37
    return v0

    #@38
    .line 1299
    :catchall_0
    move-exception v0

    #@39
    monitor-exit v1

    #@3a
    throw v0
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 5
    .param p1, "tz"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1306
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    #@2
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    .line 1307
    const-string/jumbo v3, "android.permission.SET_TIME_ZONE"

    #@9
    .line 1308
    const-string/jumbo v4, "setTimeZone"

    #@c
    .line 1306
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 1310
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@12
    move-result-wide v0

    #@13
    .line 1312
    .local v0, "oldId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    #@15
    invoke-virtual {v2, p1}, Lcom/android/server/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 1314
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 1305
    return-void

    #@1c
    .line 1313
    :catchall_0
    move-exception v2

    #@1d
    .line 1314
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 1313
    throw v2
.end method
