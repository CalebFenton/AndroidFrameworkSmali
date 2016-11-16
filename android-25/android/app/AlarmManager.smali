.class public Landroid/app/AlarmManager;
.super Ljava/lang/Object;
.source "AlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AlarmManager$AlarmClockInfo;,
        Landroid/app/AlarmManager$ListenerWrapper;,
        Landroid/app/AlarmManager$OnAlarmListener;
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

.field private static final TAG:Ljava/lang/String; = "AlarmManager"

.field public static final WINDOW_EXACT:J = 0x0L

.field public static final WINDOW_HEURISTIC:J = -0x1L

.field private static sWrappers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/AlarmManager$OnAlarmListener;",
            "Landroid/app/AlarmManager$ListenerWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAlwaysExact:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mPackageName:Ljava/lang/String;

.field private final mService:Landroid/app/IAlarmManager;

.field private final mTargetSdkVersion:I


# direct methods
.method static synthetic -get0(Landroid/app/AlarmManager;)Landroid/app/IAlarmManager;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Landroid/util/ArrayMap;
    .locals 1

    #@0
    sget-object v0, Landroid/app/AlarmManager;->sWrappers:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method constructor <init>(Landroid/app/IAlarmManager;Landroid/content/Context;)V
    .locals 2
    .param p1, "service"    # Landroid/app/IAlarmManager;
    .param p2, "ctx"    # Landroid/content/Context;

    #@0
    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 253
    iput-object p1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    #@5
    .line 255
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/app/AlarmManager;->mPackageName:Ljava/lang/String;

    #@b
    .line 256
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@e
    move-result-object v0

    #@f
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@11
    iput v0, p0, Landroid/app/AlarmManager;->mTargetSdkVersion:I

    #@13
    .line 257
    iget v0, p0, Landroid/app/AlarmManager;->mTargetSdkVersion:I

    #@15
    const/16 v1, 0x13

    #@17
    if-ge v0, v1, :cond_0

    #@19
    const/4 v0, 0x1

    #@1a
    :goto_0
    iput-boolean v0, p0, Landroid/app/AlarmManager;->mAlwaysExact:Z

    #@1c
    .line 258
    new-instance v0, Landroid/os/Handler;

    #@1e
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@25
    iput-object v0, p0, Landroid/app/AlarmManager;->mMainThreadHandler:Landroid/os/Handler;

    #@27
    .line 252
    return-void

    #@28
    .line 257
    :cond_0
    const/4 v0, 0x0

    #@29
    goto :goto_0
.end method

.method private legacyExactLength()J
    .locals 2

    #@0
    .prologue
    .line 262
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

.method private setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 22
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "windowMillis"    # J
    .param p6, "intervalMillis"    # J
    .param p8, "flags"    # I
    .param p9, "operation"    # Landroid/app/PendingIntent;
    .param p10, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p11, "listenerTag"    # Ljava/lang/String;
    .param p12, "targetHandler"    # Landroid/os/Handler;
    .param p13, "workSource"    # Landroid/os/WorkSource;
    .param p14, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    #@0
    .prologue
    .line 635
    const-wide/16 v6, 0x0

    #@2
    cmp-long v5, p2, v6

    #@4
    if-gez v5, :cond_0

    #@6
    .line 643
    const-wide/16 p2, 0x0

    #@8
    .line 646
    :cond_0
    const/16 v16, 0x0

    #@a
    .line 647
    .local v16, "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    if-eqz p10, :cond_3

    #@c
    .line 648
    const-class v6, Landroid/app/AlarmManager;

    #@e
    monitor-enter v6

    #@f
    .line 649
    :try_start_0
    sget-object v5, Landroid/app/AlarmManager;->sWrappers:Landroid/util/ArrayMap;

    #@11
    if-nez v5, :cond_1

    #@13
    .line 650
    new-instance v5, Landroid/util/ArrayMap;

    #@15
    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    #@18
    sput-object v5, Landroid/app/AlarmManager;->sWrappers:Landroid/util/ArrayMap;

    #@1a
    .line 653
    :cond_1
    sget-object v5, Landroid/app/AlarmManager;->sWrappers:Landroid/util/ArrayMap;

    #@1c
    move-object/from16 v0, p10

    #@1e
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v5

    #@22
    move-object v0, v5

    #@23
    check-cast v0, Landroid/app/AlarmManager$ListenerWrapper;

    #@25
    move-object/from16 v16, v0

    #@27
    .line 655
    .local v16, "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    if-nez v16, :cond_2

    #@29
    .line 656
    new-instance v21, Landroid/app/AlarmManager$ListenerWrapper;

    #@2b
    move-object/from16 v0, v21

    #@2d
    move-object/from16 v1, p0

    #@2f
    move-object/from16 v2, p10

    #@31
    invoke-direct {v0, v1, v2}, Landroid/app/AlarmManager$ListenerWrapper;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    .line 657
    .end local v16    # "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    .local v21, "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    :try_start_1
    sget-object v5, Landroid/app/AlarmManager;->sWrappers:Landroid/util/ArrayMap;

    #@36
    move-object/from16 v0, p10

    #@38
    move-object/from16 v1, v21

    #@3a
    invoke-virtual {v5, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3d
    move-object/from16 v16, v21

    #@3f
    .end local v21    # "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    .restart local v16    # "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    :cond_2
    monitor-exit v6

    #@40
    .line 661
    if-eqz p12, :cond_4

    #@42
    move-object/from16 v20, p12

    #@44
    .line 662
    .local v20, "handler":Landroid/os/Handler;
    :goto_0
    move-object/from16 v0, v16

    #@46
    move-object/from16 v1, v20

    #@48
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager$ListenerWrapper;->setHandler(Landroid/os/Handler;)V

    #@4b
    .line 666
    .end local v16    # "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    .end local v20    # "handler":Landroid/os/Handler;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    #@4d
    iget-object v5, v0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    #@4f
    move-object/from16 v0, p0

    #@51
    iget-object v6, v0, Landroid/app/AlarmManager;->mPackageName:Ljava/lang/String;

    #@53
    move/from16 v7, p1

    #@55
    move-wide/from16 v8, p2

    #@57
    move-wide/from16 v10, p4

    #@59
    move-wide/from16 v12, p6

    #@5b
    move/from16 v14, p8

    #@5d
    move-object/from16 v15, p9

    #@5f
    move-object/from16 v17, p11

    #@61
    move-object/from16 v18, p13

    #@63
    move-object/from16 v19, p14

    #@65
    invoke-interface/range {v5 .. v19}, Landroid/app/IAlarmManager;->set(Ljava/lang/String;IJJJILandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@68
    .line 634
    return-void

    #@69
    .line 648
    :catchall_0
    move-exception v5

    #@6a
    :goto_1
    monitor-exit v6

    #@6b
    throw v5

    #@6c
    .line 661
    .restart local v16    # "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    :cond_4
    move-object/from16 v0, p0

    #@6e
    iget-object v0, v0, Landroid/app/AlarmManager;->mMainThreadHandler:Landroid/os/Handler;

    #@70
    move-object/from16 v20, v0

    #@72
    .restart local v20    # "handler":Landroid/os/Handler;
    goto :goto_0

    #@73
    .line 668
    .end local v16    # "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    .end local v20    # "handler":Landroid/os/Handler;
    :catch_0
    move-exception v4

    #@74
    .line 669
    .local v4, "ex":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@77
    move-result-object v5

    #@78
    throw v5

    #@79
    .line 648
    .end local v4    # "ex":Landroid/os/RemoteException;
    .restart local v21    # "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    :catchall_1
    move-exception v5

    #@7a
    move-object/from16 v16, v21

    #@7c
    .end local v21    # "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    .restart local v16    # "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    goto :goto_1
.end method


# virtual methods
.method public cancel(Landroid/app/AlarmManager$OnAlarmListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;

    #@0
    .prologue
    .line 910
    if-nez p1, :cond_0

    #@2
    .line 911
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "cancel() called with a null OnAlarmListener"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 914
    :cond_0
    const/4 v0, 0x0

    #@c
    .line 915
    .local v0, "wrapper":Landroid/app/AlarmManager$ListenerWrapper;
    const-class v2, Landroid/app/AlarmManager;

    #@e
    monitor-enter v2

    #@f
    .line 916
    :try_start_0
    sget-object v1, Landroid/app/AlarmManager;->sWrappers:Landroid/util/ArrayMap;

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 917
    sget-object v1, Landroid/app/AlarmManager;->sWrappers:Landroid/util/ArrayMap;

    #@15
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    .end local v0    # "wrapper":Landroid/app/AlarmManager$ListenerWrapper;
    check-cast v0, Landroid/app/AlarmManager$ListenerWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    :cond_1
    monitor-exit v2

    #@1c
    .line 921
    if-nez v0, :cond_2

    #@1e
    .line 922
    const-string/jumbo v1, "AlarmManager"

    #@21
    new-instance v2, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v3, "Unrecognized alarm listener "

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 923
    return-void

    #@39
    .line 915
    :catchall_0
    move-exception v1

    #@3a
    monitor-exit v2

    #@3b
    throw v1

    #@3c
    .line 926
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlarmManager$ListenerWrapper;->cancel()V

    #@3f
    .line 909
    return-void
.end method

.method public cancel(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 887
    if-nez p1, :cond_1

    #@2
    .line 888
    const-string/jumbo v1, "cancel() called with a null PendingIntent"

    #@5
    .line 889
    .local v1, "msg":Ljava/lang/String;
    iget v2, p0, Landroid/app/AlarmManager;->mTargetSdkVersion:I

    #@7
    const/16 v3, 0x18

    #@9
    if-lt v2, v3, :cond_0

    #@b
    .line 890
    new-instance v2, Ljava/lang/NullPointerException;

    #@d
    const-string/jumbo v3, "cancel() called with a null PendingIntent"

    #@10
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@13
    throw v2

    #@14
    .line 892
    :cond_0
    const-string/jumbo v2, "AlarmManager"

    #@17
    const-string/jumbo v3, "cancel() called with a null PendingIntent"

    #@1a
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 893
    return-void

    #@1e
    .line 898
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    #@20
    const/4 v3, 0x0

    #@21
    invoke-interface {v2, p1, v3}, Landroid/app/IAlarmManager;->remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 886
    return-void

    #@25
    .line 899
    :catch_0
    move-exception v0

    #@26
    .line 900
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@29
    move-result-object v2

    #@2a
    throw v2
.end method

.method public getNextAlarmClock()Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 1

    #@0
    .prologue
    .line 1007
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
    .line 1028
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
    .line 1029
    :catch_0
    move-exception v0

    #@8
    .line 1030
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getNextWakeFromIdleTime()J
    .locals 4

    #@0
    .prologue
    .line 986
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
    .line 987
    :catch_0
    move-exception v0

    #@8
    .line 988
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public set(IJJJLandroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;Landroid/os/WorkSource;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "windowMillis"    # J
    .param p6, "intervalMillis"    # J
    .param p8, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p9, "targetHandler"    # Landroid/os/Handler;
    .param p10, "workSource"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 628
    const/4 v8, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    const/4 v11, 0x0

    #@3
    .line 629
    const/4 v14, 0x0

    #@4
    move-object/from16 v0, p0

    #@6
    move/from16 v1, p1

    #@8
    move-wide/from16 v2, p2

    #@a
    move-wide/from16 v4, p4

    #@c
    move-wide/from16 v6, p6

    #@e
    move-object/from16 v10, p8

    #@10
    move-object/from16 v12, p9

    #@12
    move-object/from16 v13, p10

    #@14
    .line 628
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    #@17
    .line 627
    return-void
.end method

.method public set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "windowMillis"    # J
    .param p6, "intervalMillis"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "workSource"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 595
    const/4 v8, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    const/4 v11, 0x0

    #@3
    .line 596
    const/4 v12, 0x0

    #@4
    const/4 v14, 0x0

    #@5
    move-object/from16 v0, p0

    #@7
    move/from16 v1, p1

    #@9
    move-wide/from16 v2, p2

    #@b
    move-wide/from16 v4, p4

    #@d
    move-wide/from16 v6, p6

    #@f
    move-object/from16 v9, p8

    #@11
    move-object/from16 v13, p9

    #@13
    .line 595
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    #@16
    .line 594
    return-void
.end method

.method public set(IJJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;Landroid/os/WorkSource;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "windowMillis"    # J
    .param p6, "intervalMillis"    # J
    .param p8, "tag"    # Ljava/lang/String;
    .param p9, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p10, "targetHandler"    # Landroid/os/Handler;
    .param p11, "workSource"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 611
    const/4 v8, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    .line 612
    const/4 v14, 0x0

    #@3
    move-object/from16 v0, p0

    #@5
    move/from16 v1, p1

    #@7
    move-wide/from16 v2, p2

    #@9
    move-wide/from16 v4, p4

    #@b
    move-wide/from16 v6, p6

    #@d
    move-object/from16 v10, p9

    #@f
    move-object/from16 v11, p8

    #@11
    move-object/from16 v12, p10

    #@13
    move-object/from16 v13, p11

    #@15
    .line 611
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    #@18
    .line 610
    return-void
.end method

.method public set(IJLandroid/app/PendingIntent;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 336
    invoke-direct/range {p0 .. p0}, Landroid/app/AlarmManager;->legacyExactLength()J

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
    .line 337
    const/4 v12, 0x0

    #@a
    const/4 v13, 0x0

    #@b
    const/4 v14, 0x0

    #@c
    move-object/from16 v0, p0

    #@e
    move/from16 v1, p1

    #@10
    move-wide/from16 v2, p2

    #@12
    move-object/from16 v9, p4

    #@14
    .line 336
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    #@17
    .line 335
    return-void
.end method

.method public set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p6, "targetHandler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 365
    invoke-direct/range {p0 .. p0}, Landroid/app/AlarmManager;->legacyExactLength()J

    #@3
    move-result-wide v4

    #@4
    const-wide/16 v6, 0x0

    #@6
    const/4 v8, 0x0

    #@7
    const/4 v9, 0x0

    #@8
    .line 366
    const/4 v13, 0x0

    #@9
    const/4 v14, 0x0

    #@a
    move-object/from16 v0, p0

    #@c
    move/from16 v1, p1

    #@e
    move-wide/from16 v2, p2

    #@10
    move-object/from16 v10, p5

    #@12
    move-object/from16 v11, p4

    #@14
    move-object/from16 v12, p6

    #@16
    .line 365
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    #@19
    .line 364
    return-void
.end method

.method public setAlarmClock(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V
    .locals 15
    .param p1, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 587
    invoke-virtual/range {p1 .. p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    #@3
    move-result-wide v2

    #@4
    const-wide/16 v6, 0x0

    #@6
    const/4 v1, 0x0

    #@7
    const-wide/16 v4, 0x0

    #@9
    const/4 v8, 0x0

    #@a
    .line 588
    const/4 v10, 0x0

    #@b
    const/4 v11, 0x0

    #@c
    const/4 v12, 0x0

    #@d
    const/4 v13, 0x0

    #@e
    move-object v0, p0

    #@f
    move-object/from16 v9, p2

    #@11
    move-object/from16 v14, p1

    #@13
    .line 587
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    #@16
    .line 586
    return-void
.end method

.method public setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 818
    const-wide/16 v6, 0x0

    #@2
    const-wide/16 v4, -0x1

    #@4
    const/4 v8, 0x4

    #@5
    .line 819
    const/4 v10, 0x0

    #@6
    const/4 v11, 0x0

    #@7
    const/4 v12, 0x0

    #@8
    const/4 v13, 0x0

    #@9
    const/4 v14, 0x0

    #@a
    move-object/from16 v0, p0

    #@c
    move/from16 v1, p1

    #@e
    move-wide/from16 v2, p2

    #@10
    move-object/from16 v9, p4

    #@12
    .line 818
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    #@15
    .line 817
    return-void
.end method

.method public setExact(IJLandroid/app/PendingIntent;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 532
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
    const/4 v12, 0x0

    #@8
    .line 533
    const/4 v13, 0x0

    #@9
    const/4 v14, 0x0

    #@a
    move-object/from16 v0, p0

    #@c
    move/from16 v1, p1

    #@e
    move-wide/from16 v2, p2

    #@10
    move-object/from16 v9, p4

    #@12
    .line 532
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    #@15
    .line 531
    return-void
.end method

.method public setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p6, "targetHandler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 547
    const-wide/16 v6, 0x0

    #@2
    const-wide/16 v4, 0x0

    #@4
    const/4 v8, 0x0

    #@5
    const/4 v9, 0x0

    #@6
    .line 548
    const/4 v13, 0x0

    #@7
    const/4 v14, 0x0

    #@8
    move-object/from16 v0, p0

    #@a
    move/from16 v1, p1

    #@c
    move-wide/from16 v2, p2

    #@e
    move-object/from16 v10, p5

    #@10
    move-object/from16 v11, p4

    #@12
    move-object/from16 v12, p6

    #@14
    .line 547
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    #@17
    .line 546
    return-void
.end method

.method public setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 872
    const-wide/16 v6, 0x0

    #@2
    const-wide/16 v4, 0x0

    #@4
    const/4 v8, 0x4

    #@5
    .line 873
    const/4 v10, 0x0

    #@6
    const/4 v11, 0x0

    #@7
    const/4 v12, 0x0

    #@8
    const/4 v13, 0x0

    #@9
    const/4 v14, 0x0

    #@a
    move-object/from16 v0, p0

    #@c
    move/from16 v1, p1

    #@e
    move-wide/from16 v2, p2

    #@10
    move-object/from16 v9, p4

    #@12
    .line 872
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    #@15
    .line 871
    return-void
.end method

.method public setIdleUntil(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p6, "targetHandler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 558
    const-wide/16 v6, 0x0

    #@2
    const-wide/16 v4, 0x0

    #@4
    const/16 v8, 0x10

    #@6
    const/4 v9, 0x0

    #@7
    .line 559
    const/4 v13, 0x0

    #@8
    const/4 v14, 0x0

    #@9
    move-object/from16 v0, p0

    #@b
    move/from16 v1, p1

    #@d
    move-wide/from16 v2, p2

    #@f
    move-object/from16 v10, p5

    #@11
    move-object/from16 v11, p4

    #@13
    move-object/from16 v12, p6

    #@15
    .line 558
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    #@18
    .line 557
    return-void
.end method

.method public setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "intervalMillis"    # J
    .param p6, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 768
    const-wide/16 v4, -0x1

    #@2
    const/4 v8, 0x0

    #@3
    const/4 v10, 0x0

    #@4
    .line 769
    const/4 v11, 0x0

    #@5
    const/4 v12, 0x0

    #@6
    const/4 v13, 0x0

    #@7
    const/4 v14, 0x0

    #@8
    move-object/from16 v0, p0

    #@a
    move/from16 v1, p1

    #@c
    move-wide/from16 v2, p2

    #@e
    move-wide/from16 v6, p4

    #@10
    move-object/from16 v9, p6

    #@12
    .line 768
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    #@15
    .line 767
    return-void
.end method

.method public setRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "intervalMillis"    # J
    .param p6, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 427
    invoke-direct/range {p0 .. p0}, Landroid/app/AlarmManager;->legacyExactLength()J

    #@3
    move-result-wide v4

    #@4
    const/4 v8, 0x0

    #@5
    .line 428
    const/4 v10, 0x0

    #@6
    const/4 v11, 0x0

    #@7
    const/4 v12, 0x0

    #@8
    const/4 v13, 0x0

    #@9
    const/4 v14, 0x0

    #@a
    move-object/from16 v0, p0

    #@c
    move/from16 v1, p1

    #@e
    move-wide/from16 v2, p2

    #@10
    move-wide/from16 v6, p4

    #@12
    move-object/from16 v9, p6

    #@14
    .line 427
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    #@17
    .line 426
    return-void
.end method

.method public setTime(J)V
    .locals 3
    .param p1, "millis"    # J

    #@0
    .prologue
    .line 937
    :try_start_0
    iget-object v1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/app/IAlarmManager;->setTime(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 935
    return-void

    #@6
    .line 938
    :catch_0
    move-exception v0

    #@7
    .line 939
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 6
    .param p1, "timeZone"    # Ljava/lang/String;

    #@0
    .prologue
    .line 959
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 960
    return-void

    #@7
    .line 964
    :cond_0
    iget v3, p0, Landroid/app/AlarmManager;->mTargetSdkVersion:I

    #@9
    const/16 v4, 0x17

    #@b
    if-lt v3, v4, :cond_1

    #@d
    .line 965
    const/4 v1, 0x0

    #@e
    .line 967
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
    .line 971
    .end local v1    # "hasTimeZone":Z
    :goto_0
    if-nez v1, :cond_1

    #@18
    .line 972
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
    .line 977
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    #@3b
    invoke-interface {v3, p1}, Landroid/app/IAlarmManager;->setTimeZone(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@3e
    .line 958
    return-void

    #@3f
    .line 978
    :catch_0
    move-exception v0

    #@40
    .line 979
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@43
    move-result-object v3

    #@44
    throw v3

    #@45
    .line 968
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "hasTimeZone":Z
    :catch_1
    move-exception v2

    #@46
    .local v2, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

.method public setWindow(IJJLandroid/app/PendingIntent;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "windowStartMillis"    # J
    .param p4, "windowLengthMillis"    # J
    .param p6, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 478
    const-wide/16 v6, 0x0

    #@2
    const/4 v8, 0x0

    #@3
    .line 479
    const/4 v10, 0x0

    #@4
    const/4 v11, 0x0

    #@5
    const/4 v12, 0x0

    #@6
    const/4 v13, 0x0

    #@7
    const/4 v14, 0x0

    #@8
    move-object/from16 v0, p0

    #@a
    move/from16 v1, p1

    #@c
    move-wide/from16 v2, p2

    #@e
    move-wide/from16 v4, p4

    #@10
    move-object/from16 v9, p6

    #@12
    .line 478
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    #@15
    .line 477
    return-void
.end method

.method public setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "windowStartMillis"    # J
    .param p4, "windowLengthMillis"    # J
    .param p6, "tag"    # Ljava/lang/String;
    .param p7, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p8, "targetHandler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 493
    const-wide/16 v6, 0x0

    #@2
    const/4 v8, 0x0

    #@3
    const/4 v9, 0x0

    #@4
    .line 494
    const/4 v13, 0x0

    #@5
    const/4 v14, 0x0

    #@6
    move-object/from16 v0, p0

    #@8
    move/from16 v1, p1

    #@a
    move-wide/from16 v2, p2

    #@c
    move-wide/from16 v4, p4

    #@e
    move-object/from16 v10, p7

    #@10
    move-object/from16 v11, p6

    #@12
    move-object/from16 v12, p8

    #@14
    .line 493
    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    #@17
    .line 492
    return-void
.end method
