.class public abstract Landroid/app/Service;
.super Landroid/content/ContextWrapper;
.source "Service.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Landroid/view/contentcapture/ContentCaptureManager$ContentCaptureClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Service$StartArgFlags;,
        Landroid/app/Service$StartResult;,
        Landroid/app/Service$StopForegroundSelector;
    }
.end annotation


# static fields
.field public static final whitelist START_CONTINUATION_MASK:I = 0xf

.field public static final whitelist START_FLAG_REDELIVERY:I = 0x1

.field public static final whitelist START_FLAG_RETRY:I = 0x2

.field public static final whitelist START_NOT_STICKY:I = 0x2

.field public static final whitelist START_REDELIVER_INTENT:I = 0x3

.field public static final whitelist START_STICKY:I = 0x1

.field public static final whitelist START_STICKY_COMPATIBILITY:I = 0x0

.field public static final greylist-max-o START_TASK_REMOVED_COMPLETE:I = 0x3e8

.field public static final whitelist STOP_FOREGROUND_DETACH:I = 0x2

.field public static final whitelist STOP_FOREGROUND_LEGACY:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STOP_FOREGROUND_REMOVE:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Service"

.field private static final blacklist TRACE_TRACK_NAME_FOREGROUND_SERVICE:Ljava/lang/String; = "FGS"

.field private static final blacklist sStartForegroundServiceStackTraces:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/StackTrace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist mActivityManager:Landroid/app/IActivityManager;

.field private greylist mApplication:Landroid/app/Application;

.field private greylist mClassName:Ljava/lang/String;

.field private blacklist mForegroundServiceTraceTitle:Ljava/lang/String;

.field private final blacklist mForegroundServiceTraceTitleLock:Ljava/lang/Object;

.field private greylist mStartCompatibility:Z

.field private greylist mThread:Landroid/app/ActivityThread;

.field private greylist mToken:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1096
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/Service;->sStartForegroundServiceStackTraces:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 355
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 1034
    iput-object v0, p0, Landroid/app/Service;->mThread:Landroid/app/ActivityThread;

    .line 1036
    iput-object v0, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    .line 1038
    iput-object v0, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    .line 1040
    iput-object v0, p0, Landroid/app/Service;->mApplication:Landroid/app/Application;

    .line 1042
    iput-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    .line 1044
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Service;->mStartCompatibility:Z

    .line 1052
    iput-object v0, p0, Landroid/app/Service;->mForegroundServiceTraceTitle:Ljava/lang/String;

    .line 1055
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/Service;->mForegroundServiceTraceTitleLock:Ljava/lang/Object;

    .line 356
    return-void
.end method

.method private blacklist clearStartForegroundServiceStackTrace()V
    .registers 4

    .line 1108
    sget-object v0, Landroid/app/Service;->sStartForegroundServiceStackTraces:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1109
    :try_start_3
    sget-object v1, Landroid/app/Service;->sStartForegroundServiceStackTraces:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/app/Service;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    monitor-exit v0

    .line 1111
    return-void

    .line 1110
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public static blacklist getStartForegroundServiceStackTrace(Ljava/lang/String;)Landroid/app/StackTrace;
    .registers 3
    .param p0, "className"    # Ljava/lang/String;

    .line 1115
    sget-object v0, Landroid/app/Service;->sStartForegroundServiceStackTraces:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1116
    :try_start_3
    sget-object v1, Landroid/app/Service;->sStartForegroundServiceStackTraces:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StackTrace;

    monitor-exit v0

    return-object v1

    .line 1117
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private blacklist logForegroundServiceStart(Landroid/content/ComponentName;I)V
    .registers 9
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "foregroundServiceType"    # I

    .line 1061
    iget-object v0, p0, Landroid/app/Service;->mForegroundServiceTraceTitleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1062
    :try_start_3
    iget-object v1, p0, Landroid/app/Service;->mForegroundServiceTraceTitle:Ljava/lang/String;

    const-wide/16 v2, 0x40

    if-nez v1, :cond_29

    .line 1063
    const-string v1, "comp=%s type=%s"

    .line 1064
    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 1063
    invoke-static {v1, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Service;->mForegroundServiceTraceTitle:Ljava/lang/String;

    .line 1066
    const-string v1, "FGS"

    iget-object v4, p0, Landroid/app/Service;->mForegroundServiceTraceTitle:Ljava/lang/String;

    .line 1069
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    .line 1066
    invoke-static {v2, v3, v1, v4, v5}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_30

    .line 1072
    :cond_29
    const-string v1, "FGS"

    iget-object v4, p0, Landroid/app/Service;->mForegroundServiceTraceTitle:Ljava/lang/String;

    invoke-static {v2, v3, v1, v4}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 1076
    :goto_30
    monitor-exit v0

    .line 1077
    return-void

    .line 1076
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method private blacklist logForegroundServiceStopIfNecessary()V
    .registers 6

    .line 1080
    iget-object v0, p0, Landroid/app/Service;->mForegroundServiceTraceTitleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1081
    :try_start_3
    iget-object v1, p0, Landroid/app/Service;->mForegroundServiceTraceTitle:Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 1082
    const-string v1, "FGS"

    .line 1084
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 1082
    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 1085
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Service;->mForegroundServiceTraceTitle:Ljava/lang/String;

    .line 1087
    :cond_15
    monitor-exit v0

    .line 1088
    return-void

    .line 1087
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public static blacklist setStartForegroundServiceStackTrace(Ljava/lang/String;Landroid/app/StackTrace;)V
    .registers 4
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "stacktrace"    # Landroid/app/StackTrace;

    .line 1102
    sget-object v0, Landroid/app/Service;->sStartForegroundServiceStackTraces:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1103
    :try_start_3
    sget-object v1, Landroid/app/Service;->sStartForegroundServiceStackTraces:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    monitor-exit v0

    .line 1105
    return-void

    .line 1104
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method


# virtual methods
.method public final greylist attach(Landroid/content/Context;Landroid/app/ActivityThread;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "thread"    # Landroid/app/ActivityThread;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "application"    # Landroid/app/Application;
    .param p6, "activityManager"    # Ljava/lang/Object;

    .line 983
    invoke-virtual {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    .line 984
    iput-object p2, p0, Landroid/app/Service;->mThread:Landroid/app/ActivityThread;

    .line 985
    iput-object p3, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    .line 986
    iput-object p4, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    .line 987
    iput-object p5, p0, Landroid/app/Service;->mApplication:Landroid/app/Application;

    .line 988
    move-object v0, p6

    check-cast v0, Landroid/app/IActivityManager;

    iput-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    .line 989
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    iput-boolean v0, p0, Landroid/app/Service;->mStartCompatibility:Z

    .line 992
    invoke-virtual {p5}, Landroid/app/Application;->getContentCaptureOptions()Landroid/content/ContentCaptureOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Service;->setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V

    .line 993
    return-void
.end method

.method protected whitelist attachBaseContext(Landroid/content/Context;)V
    .registers 3
    .param p1, "newBase"    # Landroid/content/Context;

    .line 967
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 968
    if-eqz p1, :cond_c

    .line 969
    invoke-virtual {p0}, Landroid/app/Service;->getContentCaptureOptions()Landroid/content/ContentCaptureOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V

    .line 971
    :cond_c
    return-void
.end method

.method public final blacklist callOnTimeLimitExceeded(II)V
    .registers 7
    .param p1, "startId"    # I
    .param p2, "fgsType"    # I

    .line 1180
    iget-object v0, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    const-string v1, "Service"

    if-nez v0, :cond_c

    .line 1181
    const-string v0, "Service already destroyed, skipping onTimeLimitExceeded()"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    return-void

    .line 1185
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v2, v3}, Landroid/app/IActivityManager;->hasServiceTimeLimitExceeded(Landroid/content/ComponentName;Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1187
    const-string v0, "Service no longer relevant, skipping onTimeLimitExceeded()"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_22} :catch_24

    .line 1188
    return-void

    .line 1191
    :cond_23
    goto :goto_25

    .line 1190
    :catch_24
    move-exception v0

    .line 1192
    :goto_25
    invoke-static {}, Landroid/app/Flags;->introduceNewServiceOntimeoutCallback()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1193
    invoke-virtual {p0, p1, p2}, Landroid/app/Service;->onTimeout(II)V

    .line 1195
    :cond_2e
    return-void
.end method

.method public final blacklist callOnTimeout(I)V
    .registers 6
    .param p1, "startId"    # I

    .line 1125
    iget-object v0, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    const-string v1, "Service"

    if-nez v0, :cond_c

    .line 1126
    const-string v0, "Service already destroyed, skipping onTimeout()"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    return-void

    .line 1130
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v2, v3}, Landroid/app/IActivityManager;->shouldServiceTimeOut(Landroid/content/ComponentName;Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1132
    const-string v0, "Service no longer relevant, skipping onTimeout()"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_22} :catch_24

    .line 1133
    return-void

    .line 1136
    :cond_23
    goto :goto_25

    .line 1135
    :catch_24
    move-exception v0

    .line 1137
    :goto_25
    invoke-virtual {p0, p1}, Landroid/app/Service;->onTimeout(I)V

    .line 1138
    invoke-static {}, Landroid/app/Flags;->introduceNewServiceOntimeoutCallback()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1139
    const/16 v0, 0x800

    invoke-virtual {p0, p1, v0}, Landroid/app/Service;->onTimeout(II)V

    .line 1141
    :cond_33
    return-void
.end method

.method public final blacklist contentCaptureClientGetComponentName()Landroid/content/ComponentName;
    .registers 3

    .line 1030
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist createServiceBaseContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/content/Context;
    .registers 4
    .param p1, "mainThread"    # Landroid/app/ActivityThread;
    .param p2, "packageInfo"    # Landroid/app/LoadedApk;

    .line 1005
    invoke-static {p1, p2}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-o detachAndCleanUp()V
    .registers 2

    .line 1013
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    .line 1014
    invoke-direct {p0}, Landroid/app/Service;->logForegroundServiceStopIfNecessary()V

    .line 1015
    return-void
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 962
    const-string/jumbo v0, "nothing to dump"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 963
    return-void
.end method

.method public final whitelist getApplication()Landroid/app/Application;
    .registers 2

    .line 360
    iget-object v0, p0, Landroid/app/Service;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method final greylist-max-o getClassName()Ljava/lang/String;
    .registers 2

    .line 1018
    iget-object v0, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public final blacklist getContentCaptureClient()Landroid/view/contentcapture/ContentCaptureManager$ContentCaptureClient;
    .registers 1

    .line 1024
    return-object p0
.end method

.method public final whitelist getForegroundServiceType()I
    .registers 5

    .line 938
    const/4 v0, 0x0

    .line 940
    .local v0, "ret":I
    :try_start_1
    iget-object v1, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->getForegroundServiceType(Landroid/content/ComponentName;Landroid/os/IBinder;)I

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12

    move v0, v1

    .line 943
    goto :goto_13

    .line 942
    :catch_12
    move-exception v1

    .line 944
    :goto_13
    return v0
.end method

.method public abstract whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 541
    return-void
.end method

.method public whitelist onCreate()V
    .registers 1

    .line 367
    return-void
.end method

.method public whitelist onDestroy()V
    .registers 1

    .line 538
    return-void
.end method

.method public whitelist onLowMemory()V
    .registers 1

    .line 544
    return-void
.end method

.method public whitelist onRebind(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 602
    return-void
.end method

.method public whitelist onStart(Landroid/content/Intent;I)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 374
    return-void
.end method

.method public whitelist onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 527
    invoke-virtual {p0, p1, p3}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 528
    iget-boolean v0, p0, Landroid/app/Service;->mStartCompatibility:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist onTaskRemoved(Landroid/content/Intent;)V
    .registers 2
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .line 615
    return-void
.end method

.method public whitelist onTimeout(I)V
    .registers 2
    .param p1, "startId"    # I

    .line 1173
    return-void
.end method

.method public whitelist onTimeout(II)V
    .registers 3
    .param p1, "startId"    # I
    .param p2, "fgsType"    # I

    .line 1225
    return-void
.end method

.method public whitelist onTrimMemory(I)V
    .registers 2
    .param p1, "level"    # I

    .line 547
    return-void
.end method

.method public whitelist onUnbind(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 587
    const/4 v0, 0x0

    return v0
.end method

.method public final greylist setForeground(Z)V
    .registers 4
    .param p1, "isForeground"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setForeground: ignoring old API call on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return-void
.end method

.method public final whitelist startForeground(ILandroid/app/Notification;)V
    .registers 12
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    .line 775
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v3, v0

    .line 776
    .local v3, "comp":Landroid/content/ComponentName;
    iget-object v2, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v4, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_1d

    const/4 v7, 0x0

    const/4 v8, -0x1

    move v5, p1

    move-object v6, p2

    .end local p1    # "id":I
    .end local p2    # "notification":Landroid/app/Notification;
    .local v5, "id":I
    .local v6, "notification":Landroid/app/Notification;
    :try_start_10
    invoke-interface/range {v2 .. v8}, Landroid/app/IActivityManager;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;II)V

    .line 779
    invoke-direct {p0}, Landroid/app/Service;->clearStartForegroundServiceStackTrace()V

    .line 780
    const/4 p1, -0x1

    invoke-direct {p0, v3, p1}, Landroid/app/Service;->logForegroundServiceStart(Landroid/content/ComponentName;I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1a} :catch_1b

    .line 782
    .end local v3    # "comp":Landroid/content/ComponentName;
    goto :goto_20

    .line 781
    :catch_1b
    move-exception v0

    goto :goto_20

    .end local v5    # "id":I
    .end local v6    # "notification":Landroid/app/Notification;
    .restart local p1    # "id":I
    .restart local p2    # "notification":Landroid/app/Notification;
    :catch_1d
    move-exception v0

    move v5, p1

    move-object v6, p2

    .line 783
    .end local p1    # "id":I
    .end local p2    # "notification":Landroid/app/Notification;
    .restart local v5    # "id":I
    .restart local v6    # "notification":Landroid/app/Notification;
    :goto_20
    return-void
.end method

.method public final whitelist startForeground(ILandroid/app/Notification;I)V
    .registers 13
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;
    .param p3, "foregroundServiceType"    # I

    .line 862
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v3, v0

    .line 863
    .local v3, "comp":Landroid/content/ComponentName;
    iget-object v2, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v4, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_1c

    const/4 v7, 0x0

    move v5, p1

    move-object v6, p2

    move v8, p3

    .end local p1    # "id":I
    .end local p2    # "notification":Landroid/app/Notification;
    .end local p3    # "foregroundServiceType":I
    .local v5, "id":I
    .local v6, "notification":Landroid/app/Notification;
    .local v8, "foregroundServiceType":I
    :try_start_10
    invoke-interface/range {v2 .. v8}, Landroid/app/IActivityManager;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;II)V

    .line 866
    invoke-direct {p0}, Landroid/app/Service;->clearStartForegroundServiceStackTrace()V

    .line 867
    invoke-direct {p0, v3, v8}, Landroid/app/Service;->logForegroundServiceStart(Landroid/content/ComponentName;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_1a

    .line 869
    .end local v3    # "comp":Landroid/content/ComponentName;
    goto :goto_20

    .line 868
    :catch_1a
    move-exception v0

    goto :goto_20

    .end local v5    # "id":I
    .end local v6    # "notification":Landroid/app/Notification;
    .end local v8    # "foregroundServiceType":I
    .restart local p1    # "id":I
    .restart local p2    # "notification":Landroid/app/Notification;
    .restart local p3    # "foregroundServiceType":I
    :catch_1c
    move-exception v0

    move v5, p1

    move-object v6, p2

    move v8, p3

    .line 870
    .end local p1    # "id":I
    .end local p2    # "notification":Landroid/app/Notification;
    .end local p3    # "foregroundServiceType":I
    .restart local v5    # "id":I
    .restart local v6    # "notification":Landroid/app/Notification;
    .restart local v8    # "foregroundServiceType":I
    :goto_20
    return-void
.end method

.method public final whitelist stopForeground(I)V
    .registers 9
    .param p1, "notificationBehavior"    # I

    .line 915
    :try_start_0
    iget-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_18

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v5, p1

    .end local p1    # "notificationBehavior":I
    .local v5, "notificationBehavior":I
    :try_start_f
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;II)V

    .line 918
    invoke-direct {p0}, Landroid/app/Service;->logForegroundServiceStopIfNecessary()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_16

    .line 920
    goto :goto_1a

    .line 919
    :catch_16
    move-exception v0

    goto :goto_1a

    .end local v5    # "notificationBehavior":I
    .restart local p1    # "notificationBehavior":I
    :catch_18
    move-exception v0

    move v5, p1

    .line 921
    .end local p1    # "notificationBehavior":I
    .restart local v5    # "notificationBehavior":I
    :goto_1a
    return-void
.end method

.method public final whitelist stopForeground(Z)V
    .registers 2
    .param p1, "removeNotification"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 886
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(I)V

    .line 887
    return-void
.end method

.method public final whitelist stopSelf()V
    .registers 2

    .line 624
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopSelf(I)V

    .line 625
    return-void
.end method

.method public final whitelist stopSelf(I)V
    .registers 5
    .param p1, "startId"    # I

    .line 633
    iget-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    if-nez v0, :cond_5

    .line 634
    return-void

    .line 637
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, v2, p1}, Landroid/app/IActivityManager;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_13} :catch_14

    .line 640
    goto :goto_15

    .line 639
    :catch_14
    move-exception v0

    .line 641
    :goto_15
    return-void
.end method

.method public final whitelist stopSelfResult(I)Z
    .registers 6
    .param p1, "startId"    # I

    .line 665
    iget-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 666
    return v1

    .line 669
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v2, v3, p1}, Landroid/app/IActivityManager;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_15} :catch_16

    return v0

    .line 671
    :catch_16
    move-exception v0

    .line 673
    return v1
.end method
