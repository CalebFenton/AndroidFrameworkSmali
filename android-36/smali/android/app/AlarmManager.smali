.class public Landroid/app/AlarmManager;
.super Ljava/lang/Object;
.source "AlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AlarmManager$OnAlarmListener;,
        Landroid/app/AlarmManager$AlarmClockInfo;,
        Landroid/app/AlarmManager$ListenerWrapper;,
        Landroid/app/AlarmManager$AlarmType;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_NEXT_ALARM_CLOCK_CHANGED:Ljava/lang/String; = "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

.field public static final whitelist ACTION_SCHEDULE_EXACT_ALARM_PERMISSION_STATE_CHANGED:Ljava/lang/String; = "android.app.action.SCHEDULE_EXACT_ALARM_PERMISSION_STATE_CHANGED"

.field public static final whitelist ELAPSED_REALTIME:I = 0x3

.field public static final whitelist ELAPSED_REALTIME_WAKEUP:I = 0x2

.field public static final blacklist ENABLE_USE_EXACT_ALARM:J = 0xd068d35L

.field public static final blacklist ENFORCE_MINIMUM_WINDOW_ON_INEXACT_ALARMS:J = 0xb09e9e4L

.field public static final blacklist EXACT_LISTENER_ALARMS_DROPPED_ON_CACHED:J = 0xfce9184L

.field public static final greylist-max-o FLAG_ALLOW_WHILE_IDLE:I = 0x4

.field public static final blacklist FLAG_ALLOW_WHILE_IDLE_COMPAT:I = 0x20

.field public static final greylist FLAG_ALLOW_WHILE_IDLE_UNRESTRICTED:I = 0x8

.field public static final greylist FLAG_IDLE_UNTIL:I = 0x10

.field public static final blacklist FLAG_PRIORITIZE:I = 0x40

.field public static final greylist FLAG_STANDALONE:I = 0x1

.field public static final greylist FLAG_WAKE_FROM_IDLE:I = 0x2

.field private static final blacklist GENERATED_TAG_PREFIX:Ljava/lang/String; = "$android.alarm.generated"

.field public static final whitelist INTERVAL_DAY:J = 0x5265c00L

.field public static final whitelist INTERVAL_FIFTEEN_MINUTES:J = 0xdbba0L

.field public static final whitelist INTERVAL_HALF_DAY:J = 0x2932e00L

.field public static final whitelist INTERVAL_HALF_HOUR:J = 0x1b7740L

.field public static final whitelist INTERVAL_HOUR:J = 0x36ee80L

.field public static final blacklist REQUIRE_EXACT_ALARM_PERMISSION:J = 0xa35edc1L

.field public static final whitelist RTC:I = 0x1

.field public static final whitelist RTC_WAKEUP:I = 0x0

.field public static final blacklist SCHEDULE_EXACT_ALARM_DENIED_BY_DEFAULT:J = 0xd7f327aL

.field public static final blacklist SCHEDULE_EXACT_ALARM_DOES_NOT_ELEVATE_BUCKET:J = 0xfa7a8deL

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AlarmManager"

.field public static final greylist WINDOW_EXACT:J = 0x0L

.field public static final greylist WINDOW_HEURISTIC:J = -0x1L

.field private static blacklist sWrappers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/AlarmManager$OnAlarmListener;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/AlarmManager$ListenerWrapper;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mAlwaysExact:Z

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mMainThreadHandler:Landroid/os/Handler;

.field private final greylist-max-o mPackageName:Ljava/lang/String;

.field private final greylist mService:Landroid/app/IAlarmManager;

.field private final greylist-max-o mTargetSdkVersion:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/app/AlarmManager;)Landroid/app/IAlarmManager;
    .registers 1

    iget-object p0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    return-object p0
.end method

.method constructor greylist-max-o <init>(Landroid/app/IAlarmManager;Landroid/content/Context;)V
    .registers 5
    .param p1, "service"    # Landroid/app/IAlarmManager;
    .param p2, "ctx"    # Landroid/content/Context;

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iput-object p1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    .line 404
    iput-object p2, p0, Landroid/app/AlarmManager;->mContext:Landroid/content/Context;

    .line 405
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AlarmManager;->mPackageName:Ljava/lang/String;

    .line 406
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/app/AlarmManager;->mTargetSdkVersion:I

    .line 407
    iget v0, p0, Landroid/app/AlarmManager;->mTargetSdkVersion:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    iput-boolean v0, p0, Landroid/app/AlarmManager;->mAlwaysExact:Z

    .line 408
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/AlarmManager;->mMainThreadHandler:Landroid/os/Handler;

    .line 409
    return-void
.end method

.method private greylist-max-o legacyExactLength()J
    .registers 3

    .line 412
    iget-boolean v0, p0, Landroid/app/AlarmManager;->mAlwaysExact:Z

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x0

    goto :goto_9

    :cond_7
    const-wide/16 v0, -0x1

    :goto_9
    return-wide v0
.end method

.method private static blacklist makeTag(JLandroid/os/WorkSource;)Ljava/lang/String;
    .registers 7
    .param p0, "triggerMillis"    # J
    .param p2, "ws"    # Landroid/os/WorkSource;

    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$android.alarm.generated"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 953
    .local v0, "tagBuilder":Ljava/lang/StringBuilder;
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_1a

    :cond_15
    invoke-virtual {p2}, Landroid/os/WorkSource;->getAttributionUid()I

    move-result v2

    goto :goto_1e

    :cond_1a
    :goto_1a
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 956
    .local v2, "attributionUid":I
    :goto_1e
    invoke-static {v2}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 959
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .registers 31
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

    .line 1043
    move-object/from16 v0, p0

    if-eqz p12, :cond_7

    move-object/from16 v1, p12

    goto :goto_9

    :cond_7
    iget-object v1, v0, Landroid/app/AlarmManager;->mMainThreadHandler:Landroid/os/Handler;

    :goto_9
    move-object v15, v1

    .line 1044
    .local v15, "handlerToUse":Landroid/os/Handler;
    new-instance v12, Landroid/os/HandlerExecutor;

    invoke-direct {v12, v15}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 1046
    return-void
.end method

.method private blacklist setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .registers 35
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "windowMillis"    # J
    .param p6, "intervalMillis"    # J
    .param p8, "flags"    # I
    .param p9, "operation"    # Landroid/app/PendingIntent;
    .param p10, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p11, "listenerTag"    # Ljava/lang/String;
    .param p12, "targetExecutor"    # Ljava/util/concurrent/Executor;
    .param p13, "workSource"    # Landroid/os/WorkSource;
    .param p14, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .line 1052
    move-object/from16 v1, p0

    move-object/from16 v2, p10

    const-wide/16 v3, 0x0

    cmp-long v0, p2, v3

    if-gez v0, :cond_e

    .line 1060
    const-wide/16 v3, 0x0

    move-wide v8, v3

    .end local p2    # "triggerAtMillis":J
    .local v3, "triggerAtMillis":J
    goto :goto_10

    .line 1052
    .end local v3    # "triggerAtMillis":J
    .restart local p2    # "triggerAtMillis":J
    :cond_e
    move-wide/from16 v8, p2

    .line 1063
    .end local p2    # "triggerAtMillis":J
    .local v8, "triggerAtMillis":J
    :goto_10
    const/4 v3, 0x0

    .line 1064
    .local v3, "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    if-eqz v2, :cond_54

    .line 1065
    const-class v4, Landroid/app/AlarmManager;

    monitor-enter v4

    .line 1066
    :try_start_16
    sget-object v0, Landroid/app/AlarmManager;->sWrappers:Ljava/util/WeakHashMap;

    if-nez v0, :cond_21

    .line 1067
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/app/AlarmManager;->sWrappers:Ljava/util/WeakHashMap;

    .line 1070
    :cond_21
    sget-object v0, Landroid/app/AlarmManager;->sWrappers:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1071
    .local v0, "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/AlarmManager$ListenerWrapper;>;"
    if-eqz v0, :cond_32

    .line 1072
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager$ListenerWrapper;

    move-object v3, v5

    .line 1075
    :cond_32
    if-nez v3, :cond_44

    .line 1076
    new-instance v5, Landroid/app/AlarmManager$ListenerWrapper;

    invoke-direct {v5, v1, v2}, Landroid/app/AlarmManager$ListenerWrapper;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;)V

    move-object v3, v5

    .line 1077
    sget-object v5, Landroid/app/AlarmManager;->sWrappers:Ljava/util/WeakHashMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v2, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    .end local v0    # "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/AlarmManager$ListenerWrapper;>;"
    :cond_44
    monitor-exit v4
    :try_end_45
    .catchall {:try_start_16 .. :try_end_45} :catchall_4d

    .line 1080
    move-object/from16 v5, p12

    invoke-virtual {v3, v5}, Landroid/app/AlarmManager$ListenerWrapper;->setExecutor(Ljava/util/concurrent/Executor;)V

    move-object/from16 v16, v3

    goto :goto_58

    .line 1079
    :catchall_4d
    move-exception v0

    move-object/from16 v5, p12

    :goto_50
    :try_start_50
    monitor-exit v4
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_52

    throw v0

    :catchall_52
    move-exception v0

    goto :goto_50

    .line 1064
    :cond_54
    move-object/from16 v5, p12

    move-object/from16 v16, v3

    .line 1084
    .end local v3    # "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    .local v16, "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    :goto_58
    :try_start_58
    iget-object v5, v1, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    iget-object v6, v1, Landroid/app/AlarmManager;->mPackageName:Ljava/lang/String;

    move/from16 v7, p1

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    move/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v17, p11

    move-object/from16 v18, p13

    move-object/from16 v19, p14

    invoke-interface/range {v5 .. v19}, Landroid/app/IAlarmManager;->set(Ljava/lang/String;IJJJILandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_6f} :catch_71

    .line 1088
    nop

    .line 1089
    return-void

    .line 1086
    :catch_71
    move-exception v0

    .line 1087
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method


# virtual methods
.method public whitelist canScheduleExactAlarms()Z
    .registers 3

    .line 1502
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    iget-object v1, p0, Landroid/app/AlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IAlarmManager;->canScheduleExactAlarms(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 1503
    :catch_d
    move-exception v0

    .line 1504
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist cancel(Landroid/app/AlarmManager$OnAlarmListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;

    .line 1386
    if-eqz p1, :cond_3e

    .line 1390
    const/4 v0, 0x0

    .line 1391
    .local v0, "wrapper":Landroid/app/AlarmManager$ListenerWrapper;
    const-class v1, Landroid/app/AlarmManager;

    monitor-enter v1

    .line 1392
    :try_start_6
    sget-object v2, Landroid/app/AlarmManager;->sWrappers:Ljava/util/WeakHashMap;

    if-eqz v2, :cond_1b

    .line 1393
    sget-object v2, Landroid/app/AlarmManager;->sWrappers:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1394
    .local v2, "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/AlarmManager$ListenerWrapper;>;"
    if-eqz v2, :cond_1b

    .line 1395
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager$ListenerWrapper;

    move-object v0, v3

    .line 1398
    .end local v2    # "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/AlarmManager$ListenerWrapper;>;"
    :cond_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_3b

    .line 1400
    if-nez v0, :cond_37

    .line 1401
    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized alarm listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    return-void

    .line 1405
    :cond_37
    invoke-virtual {v0}, Landroid/app/AlarmManager$ListenerWrapper;->cancel()V

    .line 1406
    return-void

    .line 1398
    :catchall_3b
    move-exception v2

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v2

    .line 1387
    .end local v0    # "wrapper":Landroid/app/AlarmManager$ListenerWrapper;
    :cond_3e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cancel() called with a null OnAlarmListener"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist cancel(Landroid/app/PendingIntent;)V
    .registers 6
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .line 1363
    if-nez p1, :cond_18

    .line 1364
    const-string v0, "cancel() called with a null PendingIntent"

    .line 1365
    .local v0, "msg":Ljava/lang/String;
    iget v1, p0, Landroid/app/AlarmManager;->mTargetSdkVersion:I

    const/16 v2, 0x18

    const-string v3, "cancel() called with a null PendingIntent"

    if-ge v1, v2, :cond_12

    .line 1368
    const-string v1, "AlarmManager"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    return-void

    .line 1366
    :cond_12
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1374
    .end local v0    # "msg":Ljava/lang/String;
    :cond_18
    :try_start_18
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/app/IAlarmManager;->remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1e} :catch_20

    .line 1377
    nop

    .line 1378
    return-void

    .line 1375
    :catch_20
    move-exception v0

    .line 1376
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist cancelAll()V
    .registers 3

    .line 1413
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    iget-object v1, p0, Landroid/app/AlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IAlarmManager;->removeAll(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 1416
    nop

    .line 1417
    return-void

    .line 1414
    :catch_d
    move-exception v0

    .line 1415
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getNextAlarmClock()Landroid/app/AlarmManager$AlarmClockInfo;
    .registers 2

    .line 1540
    iget-object v0, p0, Landroid/app/AlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .registers 4
    .param p1, "userId"    # I

    .line 1561
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1}, Landroid/app/IAlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1562
    :catch_7
    move-exception v0

    .line 1563
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getNextWakeFromIdleTime()J
    .registers 3

    .line 1473
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0}, Landroid/app/IAlarmManager;->getNextWakeFromIdleTime()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 1474
    :catch_7
    move-exception v0

    .line 1475
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist hasScheduleExactAlarm(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1519
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1, p2}, Landroid/app/IAlarmManager;->hasScheduleExactAlarm(Ljava/lang/String;I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1520
    :catch_7
    move-exception v0

    .line 1521
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist set(IJJJLandroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;Landroid/os/WorkSource;)V
    .registers 26
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "windowMillis"    # J
    .param p6, "intervalMillis"    # J
    .param p8, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p9, "targetHandler"    # Landroid/os/Handler;
    .param p10, "workSource"    # Landroid/os/WorkSource;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 988
    nop

    .line 989
    move-wide/from16 v2, p2

    move-object/from16 v13, p10

    invoke-static {v2, v3, v13}, Landroid/app/AlarmManager;->makeTag(JLandroid/os/WorkSource;)Ljava/lang/String;

    move-result-object v11

    .line 988
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v10, p8

    move-object/from16 v12, p9

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 990
    return-void
.end method

.method public whitelist set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V
    .registers 25
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "windowMillis"    # J
    .param p6, "intervalMillis"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "workSource"    # Landroid/os/WorkSource;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 922
    const/4 v12, 0x0

    move-object v0, v12

    check-cast v0, Landroid/os/Handler;

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v9, p8

    move-object/from16 v13, p9

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 924
    return-void
.end method

.method public greylist set(IJJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;Landroid/os/WorkSource;)V
    .registers 27
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "windowMillis"    # J
    .param p6, "intervalMillis"    # J
    .param p8, "tag"    # Ljava/lang/String;
    .param p9, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p10, "targetHandler"    # Landroid/os/Handler;
    .param p11, "workSource"    # Landroid/os/WorkSource;

    .line 940
    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v11, p8

    move-object/from16 v10, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 942
    return-void
.end method

.method public whitelist set(IJLandroid/app/PendingIntent;)V
    .registers 20
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .line 485
    invoke-direct {p0}, Landroid/app/AlarmManager;->legacyExactLength()J

    move-result-wide v4

    const/4 v12, 0x0

    move-object v0, v12

    check-cast v0, Landroid/os/Handler;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 487
    return-void
.end method

.method public whitelist set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    .registers 22
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p6, "targetHandler"    # Landroid/os/Handler;

    .line 513
    invoke-direct {p0}, Landroid/app/AlarmManager;->legacyExactLength()J

    move-result-wide v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v11, p4

    move-object/from16 v10, p5

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 515
    return-void
.end method

.method public whitelist setAlarmClock(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V
    .registers 18
    .param p1, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    .line 912
    invoke-virtual/range {p1 .. p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    const/4 v12, 0x0

    move-object v0, v12

    check-cast v0, Landroid/os/Handler;

    const/4 v13, 0x0

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object/from16 v14, p1

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 914
    return-void
.end method

.method public whitelist setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    .registers 20
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .line 1239
    const/4 v12, 0x0

    move-object v0, v12

    check-cast v0, Landroid/os/Handler;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v4, -0x1

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 1241
    return-void
.end method

.method public whitelist setExact(IJLandroid/app/PendingIntent;)V
    .registers 20
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .line 808
    const/4 v12, 0x0

    move-object v0, v12

    check-cast v0, Landroid/os/Handler;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 810
    return-void
.end method

.method public whitelist setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    .registers 22
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p6, "targetHandler"    # Landroid/os/Handler;

    .line 841
    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v11, p4

    move-object/from16 v10, p5

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 843
    return-void
.end method

.method public whitelist setExact(IJLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/WorkSource;Landroid/app/AlarmManager$OnAlarmListener;)V
    .registers 23
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "workSource"    # Landroid/os/WorkSource;
    .param p7, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1031
    invoke-static/range {p5 .. p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    invoke-static/range {p6 .. p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    const/4 v9, 0x0

    const/4 v14, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 1036
    return-void
.end method

.method public whitelist setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    .registers 20
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .line 1312
    const/4 v12, 0x0

    move-object v0, v12

    check-cast v0, Landroid/os/Handler;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 1314
    return-void
.end method

.method public whitelist setExactAndAllowWhileIdle(IJLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/WorkSource;Landroid/app/AlarmManager$OnAlarmListener;)V
    .registers 23
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "workSource"    # Landroid/os/WorkSource;
    .param p7, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1346
    invoke-static/range {p5 .. p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    const/4 v9, 0x0

    const/4 v14, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 1350
    return-void
.end method

.method public greylist-max-o setIdleUntil(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    .registers 22
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p6, "targetHandler"    # Landroid/os/Handler;

    .line 852
    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v11, p4

    move-object/from16 v10, p5

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 854
    return-void
.end method

.method public whitelist setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    .registers 22
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "intervalMillis"    # J
    .param p6, "operation"    # Landroid/app/PendingIntent;

    .line 1189
    const/4 v12, 0x0

    move-object v0, v12

    check-cast v0, Landroid/os/Handler;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v4, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v6, p4

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 1191
    return-void
.end method

.method public whitelist setPrioritized(IJJLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AlarmManager$OnAlarmListener;)V
    .registers 24
    .param p1, "type"    # I
    .param p2, "windowStartMillis"    # J
    .param p4, "windowLengthMillis"    # J
    .param p6, "tag"    # Ljava/lang/String;
    .param p7, "executor"    # Ljava/util/concurrent/Executor;
    .param p8, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 751
    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    invoke-static/range {p8 .. p8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0x40

    const/4 v9, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 755
    return-void
.end method

.method public whitelist setRepeating(IJJLandroid/app/PendingIntent;)V
    .registers 22
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "intervalMillis"    # J
    .param p6, "operation"    # Landroid/app/PendingIntent;

    .line 578
    invoke-direct {p0}, Landroid/app/AlarmManager;->legacyExactLength()J

    move-result-wide v4

    const/4 v12, 0x0

    move-object v0, v12

    check-cast v0, Landroid/os/Handler;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v6, p4

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 580
    return-void
.end method

.method public whitelist setTime(J)V
    .registers 5
    .param p1, "millis"    # J

    .line 1428
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1, p2}, Landroid/app/IAlarmManager;->setTime(J)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1431
    nop

    .line 1432
    return-void

    .line 1429
    :catch_7
    move-exception v0

    .line 1430
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setTimeZone(Ljava/lang/String;)V
    .registers 6
    .param p1, "timeZone"    # Ljava/lang/String;

    .line 1451
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1452
    return-void

    .line 1456
    :cond_7
    iget v0, p0, Landroid/app/AlarmManager;->mTargetSdkVersion:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_37

    .line 1457
    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/i18n/timezone/ZoneInfoDb;->hasTimeZone(Ljava/lang/String;)Z

    move-result v0

    .line 1458
    .local v0, "hasTimeZone":Z
    if-eqz v0, :cond_18

    goto :goto_37

    .line 1459
    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timezone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not an Olson ID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1464
    .end local v0    # "hasTimeZone":Z
    :cond_37
    :goto_37
    :try_start_37
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1}, Landroid/app/IAlarmManager;->setTimeZone(Ljava/lang/String;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3e

    .line 1467
    nop

    .line 1468
    return-void

    .line 1465
    :catch_3e
    move-exception v0

    .line 1466
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setWindow(IJJLandroid/app/PendingIntent;)V
    .registers 22
    .param p1, "type"    # I
    .param p2, "windowStartMillis"    # J
    .param p4, "windowLengthMillis"    # J
    .param p6, "operation"    # Landroid/app/PendingIntent;

    .line 634
    const/4 v12, 0x0

    move-object v0, v12

    check-cast v0, Landroid/os/Handler;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 636
    return-void
.end method

.method public whitelist setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    .registers 24
    .param p1, "type"    # I
    .param p2, "windowStartMillis"    # J
    .param p4, "windowLengthMillis"    # J
    .param p6, "tag"    # Ljava/lang/String;
    .param p7, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p8, "targetHandler"    # Landroid/os/Handler;

    .line 658
    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v11, p6

    move-object/from16 v10, p7

    move-object/from16 v12, p8

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 660
    return-void
.end method

.method public whitelist setWindow(IJJLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AlarmManager$OnAlarmListener;)V
    .registers 24
    .param p1, "type"    # I
    .param p2, "windowStartMillis"    # J
    .param p4, "windowLengthMillis"    # J
    .param p6, "tag"    # Ljava/lang/String;
    .param p7, "executor"    # Ljava/util/concurrent/Executor;
    .param p8, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;

    .line 680
    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 682
    return-void
.end method

.method public whitelist setWindow(IJJLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/WorkSource;Landroid/app/AlarmManager$OnAlarmListener;)V
    .registers 25
    .param p1, "type"    # I
    .param p2, "windowStartMillis"    # J
    .param p4, "windowLengthMillis"    # J
    .param p6, "tag"    # Ljava/lang/String;
    .param p7, "executor"    # Ljava/util/concurrent/Executor;
    .param p8, "workSource"    # Landroid/os/WorkSource;
    .param p9, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 707
    const/4 v9, 0x0

    const/4 v14, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 709
    return-void
.end method
