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
    .line 1069
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
    .line 1167
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
    .line 1169
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
    .line 1170
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1e
    move-result v1

    #@1f
    .line 1169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 1171
    const-string/jumbo v1, ", uid="

    #@26
    .line 1169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 1171
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2d
    move-result v1

    #@2e
    .line 1169
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
    .line 1172
    return-void

    #@3a
    .line 1175
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    #@3c
    invoke-virtual {v0, p2}, Lcom/android/server/AlarmManagerService;->dumpImpl(Ljava/io/PrintWriter;)V

    #@3f
    .line 1166
    return-void
.end method

.method public getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 7
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1158
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@4
    move-result v0

    #@5
    .line 1159
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@8
    move-result v1

    #@9
    .line 1160
    const-string/jumbo v5, "getNextAlarmClock"

    #@c
    const/4 v6, 0x0

    #@d
    move v2, p1

    #@e
    move v4, v3

    #@f
    .line 1158
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@12
    move-result p1

    #@13
    .line 1162
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
    .line 1153
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getNextWakeFromIdleTimeImpl()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public remove(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 1147
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;)V

    #@5
    .line 1146
    return-void
.end method

.method public set(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 14
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "windowLength"    # J
    .param p6, "interval"    # J
    .param p8, "flags"    # I
    .param p9, "operation"    # Landroid/app/PendingIntent;
    .param p10, "workSource"    # Landroid/os/WorkSource;
    .param p11, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    #@0
    .prologue
    .line 1074
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v12

    #@4
    .line 1075
    .local v12, "callingUid":I
    if-eqz p10, :cond_0

    #@6
    .line 1076
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    #@8
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    #@b
    move-result-object v0

    #@c
    .line 1077
    const-string/jumbo v1, "android.permission.UPDATE_DEVICE_STATS"

    #@f
    .line 1078
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@12
    move-result v2

    #@13
    const-string/jumbo v3, "AlarmManager.set"

    #@16
    .line 1076
    invoke-virtual {v0, v1, v2, v12, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    #@19
    .line 1083
    :cond_0
    and-int/lit8 p8, p8, -0xb

    #@1b
    .line 1088
    const/16 v0, 0x3e8

    #@1d
    if-eq v12, v0, :cond_1

    #@1f
    .line 1089
    and-int/lit8 p8, p8, -0x11

    #@21
    .line 1096
    :cond_1
    const/16 v0, 0x2710

    #@23
    if-ge v12, v0, :cond_2

    #@25
    if-nez p10, :cond_2

    #@27
    .line 1097
    or-int/lit8 p8, p8, 0x8

    #@29
    .line 1101
    :cond_2
    const-wide/16 v0, 0x0

    #@2b
    cmp-long v0, p4, v0

    #@2d
    if-nez v0, :cond_3

    #@2f
    .line 1102
    or-int/lit8 p8, p8, 0x1

    #@31
    .line 1107
    :cond_3
    if-eqz p11, :cond_4

    #@33
    .line 1108
    or-int/lit8 p8, p8, 0x3

    #@35
    .line 1111
    :cond_4
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    #@37
    move v1, p1

    #@38
    move-wide/from16 v2, p2

    #@3a
    move-wide/from16 v4, p4

    #@3c
    move-wide/from16 v6, p6

    #@3e
    move-object/from16 v8, p9

    #@40
    move/from16 v9, p8

    #@42
    move-object/from16 v10, p10

    #@44
    move-object/from16 v11, p11

    #@46
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;I)V

    #@49
    .line 1073
    return-void
.end method

.method public setTime(J)Z
    .locals 7
    .param p1, "millis"    # J

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1117
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    #@3
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    #@6
    move-result-object v1

    #@7
    .line 1118
    const-string/jumbo v2, "android.permission.SET_TIME"

    #@a
    .line 1119
    const-string/jumbo v3, "setTime"

    #@d
    .line 1117
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1121
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
    .line 1122
    const-string/jumbo v1, "AlarmManager"

    #@1d
    const-string/jumbo v2, "Not setting time since no alarm driver is available."

    #@20
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 1123
    return v0

    #@24
    .line 1126
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    #@26
    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@28
    monitor-enter v1

    #@29
    .line 1127
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    #@2b
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    #@2d
    iget-wide v4, v3, Lcom/android/server/AlarmManagerService;->mNativeData:J

    #@2f
    invoke-static {v2, v4, v5, p1, p2}, Lcom/android/server/AlarmManagerService;->-wrap1(Lcom/android/server/AlarmManagerService;JJ)I
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
    .line 1126
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
    .line 1133
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    #@2
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    .line 1134
    const-string/jumbo v3, "android.permission.SET_TIME_ZONE"

    #@9
    .line 1135
    const-string/jumbo v4, "setTimeZone"

    #@c
    .line 1133
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 1137
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@12
    move-result-wide v0

    #@13
    .line 1139
    .local v0, "oldId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    #@15
    invoke-virtual {v2, p1}, Lcom/android/server/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 1141
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 1132
    return-void

    #@1c
    .line 1140
    :catchall_0
    move-exception v2

    #@1d
    .line 1141
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 1140
    throw v2
.end method
