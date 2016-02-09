.class public Landroid/app/AlarmManager;
.super Ljava/lang/Object;
.source "AlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AlarmManager$AlarmClockInfo;
    }
.end annotation


# static fields
.field public static final ACTION_NEXT_ALARM_CLOCK_CHANGED:Ljava/lang/String; = "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

.field public static final ELAPSED_REALTIME:I = 0x3

.field public static final ELAPSED_REALTIME_WAKEUP:I = 0x2

.field public static final FLAG_ALLOW_WHILE_IDLE:I = 0x4

.field public static final FLAG_ALLOW_WHILE_IDLE_UNRESTRICTED:I = 0x8

.field public static final FLAG_IDLE_UNTIL:I = 0x10

.field public static final FLAG_STANDALONE:I = 0x1

.field public static final FLAG_WAKE_FROM_IDLE:I = 0x2

.field public static final INTERVAL_DAY:J = 0x5265c00L

.field public static final INTERVAL_FIFTEEN_MINUTES:J = 0xdbba0L

.field public static final INTERVAL_HALF_DAY:J = 0x2932e00L

.field public static final INTERVAL_HALF_HOUR:J = 0x1b7740L

.field public static final INTERVAL_HOUR:J = 0x36ee80L

.field public static final RTC:I = 0x1

.field public static final RTC_WAKEUP:I = 0x0

.field public static final WINDOW_EXACT:J = 0x0L

.field public static final WINDOW_HEURISTIC:J = -0x1L


# instance fields
.field private final mAlwaysExact:Z

.field private final mService:Landroid/app/IAlarmManager;

.field private final mTargetSdkVersion:I


# direct methods
.method constructor <init>(Landroid/app/IAlarmManager;Landroid/content/Context;)V
    .locals 2
    .param p1, "service"    # Landroid/app/IAlarmManager;
    .param p2, "ctx"    # Landroid/content/Context;

    #@0
    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 171
    iput-object p1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    #@5
    .line 173
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@8
    move-result-object v0

    #@9
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@b
    iput v0, p0, Landroid/app/AlarmManager;->mTargetSdkVersion:I

    #@d
    .line 174
    iget v0, p0, Landroid/app/AlarmManager;->mTargetSdkVersion:I

    #@f
    const/16 v1, 0x13

    #@11
    if-ge v0, v1, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    :goto_0
    iput-boolean v0, p0, Landroid/app/AlarmManager;->mAlwaysExact:Z

    #@16
    .line 170
    return-void

    #@17
    .line 174
    :cond_0
    const/4 v0, 0x0

    #@18
    goto :goto_0
.end method

.method private legacyExactLength()J
    .locals 2

    #@0
    .prologue
    .line 178
    iget-boolean v0, p0, Landroid/app/AlarmManager;->mAlwaysExact:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-wide/16 v0, 0x0

    #@6
    :goto_0
    return-wide v0

    #@7
    :cond_0
    const-wide/16 v0, -0x1

    #@9
    goto :goto_0
.end method

.method private setImpl(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 14
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "windowMillis"    # J
    .param p6, "intervalMillis"    # J
    .param p8, "flags"    # I
    .param p9, "operation"    # Landroid/app/PendingIntent;
    .param p10, "workSource"    # Landroid/os/WorkSource;
    .param p11, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    #@0
    .prologue
    .line 452
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p2, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 460
    const-wide/16 p2, 0x0

    #@8
    .line 464
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    #@a
    move v1, p1

    #@b
    move-wide/from16 v2, p2

    #@d
    move-wide/from16 v4, p4

    #@f
    move-wide/from16 v6, p6

    #@11
    move/from16 v8, p8

    #@13
    move-object/from16 v9, p9

    #@15
    move-object/from16 v10, p10

    #@17
    move-object/from16 v11, p11

    #@19
    invoke-interface/range {v0 .. v11}, Landroid/app/IAlarmManager;->set(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 451
    :goto_0
    return-void

    #@1d
    .line 466
    :catch_0
    move-exception v12

    #@1e
    .local v12, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public cancel(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 684
    :try_start_0
    iget-object v1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    #@2
    invoke-interface {v1, p1}, Landroid/app/IAlarmManager;->remove(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 682
    :goto_0
    return-void

    #@6
    .line 685
    :catch_0
    move-exception v0

    #@7
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getNextAlarmClock()Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 1

    #@0
    .prologue
    .line 760
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 776
    :try_start_0
    iget-object v1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    #@2
    invoke-interface {v1, p1}, Landroid/app/IAlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 777
    :catch_0
    move-exception v0

    #@8
    .line 778
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getNextWakeFromIdleTime()J
    .locals 4

    #@0
    .prologue
    .line 744
    :try_start_0
    iget-object v1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    #@2
    invoke-interface {v1}, Landroid/app/IAlarmManager;->getNextWakeFromIdleTime()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-wide v2

    #@6
    return-wide v2

    #@7
    .line 745
    :catch_0
    move-exception v0

    #@8
    .line 746
    .local v0, "ex":Landroid/os/RemoteException;
    const-wide v2, 0x7fffffffffffffffL

    #@d
    return-wide v2
.end method

.method public set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "windowMillis"    # J
    .param p6, "intervalMillis"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "workSource"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 446
    const/4 v8, 0x0

    #@1
    .line 447
    const/4 v11, 0x0

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move-wide v2, p2

    #@5
    move-wide/from16 v4, p4

    #@7
    move-wide/from16 v6, p6

    #@9
    move-object/from16 v9, p8

    #@b
    move-object/from16 v10, p9

    #@d
    .line 446
    invoke-direct/range {v0 .. v11}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    #@10
    .line 445
    return-void
.end method

.method public set(IJLandroid/app/PendingIntent;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 252
    invoke-direct {p0}, Landroid/app/AlarmManager;->legacyExactLength()J

    #@3
    move-result-wide v4

    #@4
    const-wide/16 v6, 0x0

    #@6
    const/4 v8, 0x0

    #@7
    const/4 v10, 0x0

    #@8
    const/4 v11, 0x0

    #@9
    move-object v0, p0

    #@a
    move v1, p1

    #@b
    move-wide v2, p2

    #@c
    move-object/from16 v9, p4

    #@e
    invoke-direct/range {v0 .. v11}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    #@11
    .line 251
    return-void
.end method

.method public setAlarmClock(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V
    .locals 12
    .param p1, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 439
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    #@6
    move-result-wide v2

    #@7
    const/4 v10, 0x0

    #@8
    move-object v0, p0

    #@9
    move-wide v6, v4

    #@a
    move v8, v1

    #@b
    move-object v9, p2

    #@c
    move-object v11, p1

    #@d
    invoke-direct/range {v0 .. v11}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    #@10
    .line 438
    return-void
.end method

.method public setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 614
    const-wide/16 v6, 0x0

    #@2
    const-wide/16 v4, -0x1

    #@4
    const/4 v8, 0x4

    #@5
    .line 615
    const/4 v10, 0x0

    #@6
    const/4 v11, 0x0

    #@7
    move-object v0, p0

    #@8
    move v1, p1

    #@9
    move-wide v2, p2

    #@a
    move-object/from16 v9, p4

    #@c
    .line 614
    invoke-direct/range {v0 .. v11}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    #@f
    .line 613
    return-void
.end method

.method public setExact(IJLandroid/app/PendingIntent;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 402
    const-wide/16 v6, 0x0

    #@2
    const-wide/16 v4, 0x0

    #@4
    const/4 v8, 0x0

    #@5
    const/4 v10, 0x0

    #@6
    const/4 v11, 0x0

    #@7
    move-object v0, p0

    #@8
    move v1, p1

    #@9
    move-wide v2, p2

    #@a
    move-object/from16 v9, p4

    #@c
    invoke-direct/range {v0 .. v11}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    #@f
    .line 401
    return-void
.end method

.method public setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 668
    const-wide/16 v6, 0x0

    #@2
    const-wide/16 v4, 0x0

    #@4
    const/4 v8, 0x4

    #@5
    .line 669
    const/4 v10, 0x0

    #@6
    const/4 v11, 0x0

    #@7
    move-object v0, p0

    #@8
    move v1, p1

    #@9
    move-wide v2, p2

    #@a
    move-object/from16 v9, p4

    #@c
    .line 668
    invoke-direct/range {v0 .. v11}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    #@f
    .line 667
    return-void
.end method

.method public setIdleUntil(IJLandroid/app/PendingIntent;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 411
    const-wide/16 v6, 0x0

    #@2
    const-wide/16 v4, 0x0

    #@4
    const/16 v8, 0x10

    #@6
    const/4 v10, 0x0

    #@7
    const/4 v11, 0x0

    #@8
    move-object v0, p0

    #@9
    move v1, p1

    #@a
    move-wide v2, p2

    #@b
    move-object/from16 v9, p4

    #@d
    invoke-direct/range {v0 .. v11}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    #@10
    .line 410
    return-void
.end method

.method public setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "intervalMillis"    # J
    .param p6, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 565
    const-wide/16 v4, -0x1

    #@2
    const/4 v8, 0x0

    #@3
    const/4 v10, 0x0

    #@4
    const/4 v11, 0x0

    #@5
    move-object v0, p0

    #@6
    move v1, p1

    #@7
    move-wide v2, p2

    #@8
    move-wide/from16 v6, p4

    #@a
    move-object/from16 v9, p6

    #@c
    invoke-direct/range {v0 .. v11}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    #@f
    .line 564
    return-void
.end method

.method public setRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "intervalMillis"    # J
    .param p6, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 313
    invoke-direct {p0}, Landroid/app/AlarmManager;->legacyExactLength()J

    #@3
    move-result-wide v4

    #@4
    const/4 v8, 0x0

    #@5
    const/4 v10, 0x0

    #@6
    .line 314
    const/4 v11, 0x0

    #@7
    move-object v0, p0

    #@8
    move v1, p1

    #@9
    move-wide v2, p2

    #@a
    move-wide/from16 v6, p4

    #@c
    move-object/from16 v9, p6

    #@e
    .line 313
    invoke-direct/range {v0 .. v11}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    #@11
    .line 312
    return-void
.end method

.method public setTime(J)V
    .locals 3
    .param p1, "millis"    # J

    #@0
    .prologue
    .line 697
    :try_start_0
    iget-object v1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/app/IAlarmManager;->setTime(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 695
    :goto_0
    return-void

    #@6
    .line 698
    :catch_0
    move-exception v0

    #@7
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 6
    .param p1, "timeZone"    # Ljava/lang/String;

    #@0
    .prologue
    .line 718
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 719
    return-void

    #@7
    .line 723
    :cond_0
    iget v3, p0, Landroid/app/AlarmManager;->mTargetSdkVersion:I

    #@9
    const/16 v4, 0x17

    #@b
    if-lt v3, v4, :cond_1

    #@d
    .line 724
    const/4 v1, 0x0

    #@e
    .line 726
    .local v1, "hasTimeZone":Z
    :try_start_0
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3, p1}, Llibcore/util/ZoneInfoDB$TzData;->hasTimeZone(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@15
    move-result v1

    #@16
    .line 730
    .end local v1    # "hasTimeZone":Z
    :goto_0
    if-nez v1, :cond_1

    #@18
    .line 731
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@1a
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v5, "Timezone: "

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    const-string/jumbo v5, " is not an Olson ID"

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@38
    throw v3

    #@39
    .line 736
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    #@3b
    invoke-interface {v3, p1}, Landroid/app/IAlarmManager;->setTimeZone(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@3e
    .line 717
    :goto_1
    return-void

    #@3f
    .line 737
    :catch_0
    move-exception v0

    #@40
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_1

    #@41
    .line 727
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "hasTimeZone":Z
    :catch_1
    move-exception v2

    #@42
    .local v2, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

.method public setWindow(IJJLandroid/app/PendingIntent;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "windowStartMillis"    # J
    .param p4, "windowLengthMillis"    # J
    .param p6, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 364
    const-wide/16 v6, 0x0

    #@2
    const/4 v8, 0x0

    #@3
    const/4 v10, 0x0

    #@4
    const/4 v11, 0x0

    #@5
    move-object v0, p0

    #@6
    move v1, p1

    #@7
    move-wide v2, p2

    #@8
    move-wide/from16 v4, p4

    #@a
    move-object/from16 v9, p6

    #@c
    invoke-direct/range {v0 .. v11}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    #@f
    .line 363
    return-void
.end method
