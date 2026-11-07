.class public Landroid/app/Instrumentation;
.super Ljava/lang/Object;
.source "Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Instrumentation$InstrumentationThread;,
        Landroid/app/Instrumentation$Idler;,
        Landroid/app/Instrumentation$EmptyRunnable;,
        Landroid/app/Instrumentation$SyncRunnable;,
        Landroid/app/Instrumentation$ActivityWaiter;,
        Landroid/app/Instrumentation$ActivityMonitor;,
        Landroid/app/Instrumentation$ActivityResult;,
        Landroid/app/Instrumentation$ActivityGoing;,
        Landroid/app/Instrumentation$UiAutomationFlags;
    }
.end annotation


# static fields
.field private static final blacklist CONNECT_TIMEOUT_MILLIS:J = 0xea60L

.field static final blacklist DEBUG_FINISH_ACTIVITY:Z

.field public static final blacklist DEBUG_START_ACTIVITY:Z

.field public static final whitelist REPORT_KEY_IDENTIFIER:Ljava/lang/String; = "id"

.field public static final whitelist REPORT_KEY_STREAMRESULT:Ljava/lang/String; = "stream"

.field public static final greylist-max-o TAG:Ljava/lang/String; = "Instrumentation"

.field private static final blacklist VERBOSE:Z


# instance fields
.field private greylist-max-o mActivityMonitors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Instrumentation$ActivityMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mAppContext:Landroid/content/Context;

.field private greylist-max-o mAutomaticPerformanceSnapshots:Z

.field private greylist-max-o mComponent:Landroid/content/ComponentName;

.field private greylist-max-o mInstrContext:Landroid/content/Context;

.field private greylist-max-o mMessageQueue:Landroid/os/MessageQueue;

.field private greylist-max-o mPerfMetrics:Landroid/os/Bundle;

.field private greylist-max-o mPerformanceCollector:Landroid/os/PerformanceCollector;

.field private greylist-max-o mRunner:Ljava/lang/Thread;

.field private final greylist-max-o mSync:Ljava/lang/Object;

.field private greylist-max-o mThread:Landroid/app/ActivityThread;

.field private greylist-max-o mUiAutomation:Landroid/app/UiAutomation;

.field private greylist-max-o mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

.field private greylist-max-o mWaitingActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Instrumentation$ActivityWaiter;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mWatcher:Landroid/app/IInstrumentationWatcher;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAutomaticPerformanceSnapshots(Landroid/app/Instrumentation;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSync(Landroid/app/Instrumentation;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWaitingActivities(Landroid/app/Instrumentation;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 111
    const-string v0, "Instrumentation"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/app/Instrumentation;->VERBOSE:Z

    .line 117
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    .line 118
    const-string/jumbo v0, "persist.wm.debug.start_activity"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v1

    goto :goto_1b

    :cond_1a
    move v0, v2

    :goto_1b
    sput-boolean v0, Landroid/app/Instrumentation;->DEBUG_START_ACTIVITY:Z

    .line 119
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_2b

    .line 120
    const-string/jumbo v0, "persist.wm.debug.finish_activity"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v2

    :goto_2c
    sput-boolean v1, Landroid/app/Instrumentation;->DEBUG_FINISH_ACTIVITY:Z

    .line 119
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    .line 133
    iput-object v0, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    .line 144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    .line 149
    return-void
.end method

.method private greylist-max-o addValue(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "results"    # Landroid/os/Bundle;

    .line 1834
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1835
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1836
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_13

    .line 1837
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1839
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_13
    goto :goto_23

    .line 1840
    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1841
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1842
    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1844
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_23
    return-void
.end method

.method private blacklist adjustIntentForCtsInSdkSandboxInstrumentation(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 512
    iget-object v0, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_3a

    .line 513
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 514
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 515
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 516
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSdkSandboxPackageName()Ljava/lang/String;

    move-result-object v0

    .line 517
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 519
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    .line 521
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 524
    :cond_3a
    iget-object v0, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setIdentifier(Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    return-void
.end method

.method private greylist-max-o checkInstrumenting(Ljava/lang/String;)V
    .registers 5
    .param p1, "method"    # Ljava/lang/String;

    .line 162
    iget-object v0, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    .line 166
    return-void

    .line 163
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be called outside of instrumented processes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-p checkStartActivityResult(ILjava/lang/Object;)V
    .registers 5
    .param p0, "res"    # I
    .param p1, "intent"    # Ljava/lang/Object;

    .line 2413
    invoke-static {p0}, Landroid/app/ActivityManager;->isStartResultFatalError(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2414
    return-void

    .line 2417
    :cond_7
    packed-switch p0, :pswitch_data_f8

    .line 2456
    :pswitch_a
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when starting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2447
    :pswitch_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Session calling startAssistantActivity does not match active session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2450
    :pswitch_35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot start assistant activity on a hidden session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2420
    :pswitch_3d
    instance-of v0, p1, Landroid/content/Intent;

    if-eqz v0, :cond_74

    move-object v0, p1

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_74

    .line 2421
    new-instance v0, Landroid/content/ActivityNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find explicit activity class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Landroid/content/Intent;

    .line 2423
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; have you declared this activity in your AndroidManifest.xml, or does your intent not match its declared <intent-filter>?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2426
    :cond_74
    new-instance v0, Landroid/content/ActivityNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Activity found to handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2432
    :pswitch_8d
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "FORWARD_RESULT_FLAG used while also requesting a result"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2429
    :pswitch_95
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to start activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2435
    :pswitch_ae
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PendingIntent is not an activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2453
    :pswitch_b6
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity could not be started for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2438
    :pswitch_cf
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting under voice control not allowed for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2441
    :pswitch_e8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Session calling startVoiceActivity does not match active session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2444
    :pswitch_f0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot start voice activity on a hidden session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_f8
    .packed-switch -0x64
        :pswitch_f0
        :pswitch_e8
        :pswitch_a
        :pswitch_cf
        :pswitch_b6
        :pswitch_ae
        :pswitch_95
        :pswitch_8d
        :pswitch_3d
        :pswitch_3d
        :pswitch_35
        :pswitch_2d
    .end packed-switch
.end method

.method private greylist-max-o getFactory(Ljava/lang/String;)Landroid/app/AppComponentFactory;
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1447
    const-string v0, "Instrumentation"

    if-nez p1, :cond_c

    .line 1448
    const-string v1, "No pkg specified, disabling AppComponentFactory"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    sget-object v0, Landroid/app/AppComponentFactory;->DEFAULT:Landroid/app/AppComponentFactory;

    return-object v0

    .line 1451
    :cond_c
    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    if-nez v1, :cond_1d

    .line 1452
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "Uninitialized ActivityThread, likely app-created Instrumentation, disabling AppComponentFactory"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1454
    sget-object v0, Landroid/app/AppComponentFactory;->DEFAULT:Landroid/app/AppComponentFactory;

    return-object v0

    .line 1456
    :cond_1d
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v0

    .line 1458
    .local v0, "apk":Landroid/app/LoadedApk;
    if-nez v0, :cond_2e

    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iget-object v0, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 1459
    :cond_2e
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getAppFactory()Landroid/app/AppComponentFactory;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getUiAutomation$ravenwood(I)Landroid/app/UiAutomation;
    .registers 3
    .param p1, "flags"    # I

    .line 2570
    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    return-object v0
.end method

.method private blacklist internalCallActivityOnNewIntent(Landroid/app/Activity;Lcom/android/internal/content/ReferrerIntent;Landroid/app/ComponentCaller;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Lcom/android/internal/content/ReferrerIntent;
    .param p3, "caller"    # Landroid/app/ComponentCaller;

    .line 1656
    iget-object v0, p1, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    .line 1658
    .local v0, "oldReferrer":Ljava/lang/String;
    if-eqz p2, :cond_b

    .line 1659
    :try_start_4
    iget-object v1, p2, Lcom/android/internal/content/ReferrerIntent;->mReferrer:Ljava/lang/String;

    iput-object v1, p1, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    goto :goto_b

    .line 1664
    :catchall_9
    move-exception v1

    goto :goto_1b

    .line 1661
    :cond_b
    :goto_b
    if-eqz p2, :cond_13

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 1662
    .local v1, "newIntent":Landroid/content/Intent;
    :goto_14
    invoke-virtual {p0, p1, v1, p3}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;Landroid/app/ComponentCaller;)V
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_9

    .line 1664
    .end local v1    # "newIntent":Landroid/content/Intent;
    iput-object v0, p1, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    .line 1665
    nop

    .line 1666
    return-void

    .line 1664
    :goto_1b
    iput-object v0, p1, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    .line 1665
    throw v1
.end method

.method public static whitelist newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/Context;",
            ")",
            "Landroid/app/Application;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1364
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 1365
    .local v0, "app":Landroid/app/Application;
    invoke-virtual {v0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V

    .line 1366
    return-object v0
.end method

.method private blacklist notifyStartActivityResult(ILandroid/os/Bundle;)V
    .registers 8
    .param p1, "result"    # I
    .param p2, "options"    # Landroid/os/Bundle;

    .line 1467
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-nez v0, :cond_5

    .line 1468
    return-void

    .line 1470
    :cond_5
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1471
    :try_start_8
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1472
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_30

    .line 1473
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1474
    .local v3, "am":Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {v3}, Landroid/app/Instrumentation$ActivityMonitor;->ignoreMatchingSpecificIntents()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1475
    if-nez p2, :cond_2a

    .line 1476
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    move-object p2, v4

    .line 1478
    :cond_2a
    invoke-virtual {v3, p1, p2}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivityResult(ILandroid/os/Bundle;)V

    .line 1472
    .end local v3    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1481
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_30
    monitor-exit v0

    .line 1482
    return-void

    .line 1481
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_32

    throw v1
.end method

.method private greylist-max-o postPerformCreate(Landroid/app/Activity;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1501
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v0, :cond_28

    .line 1502
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1503
    :try_start_7
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1504
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_23

    .line 1505
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1506
    .local v3, "am":Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, p1, p1, v4}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 1504
    nop

    .end local v3    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1508
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_23
    monitor-exit v0

    goto :goto_28

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw v1

    .line 1510
    :cond_28
    :goto_28
    return-void
.end method

.method private greylist-max-o prePerformCreate(Landroid/app/Activity;)V
    .registers 9
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1485
    iget-object v0, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    if-eqz v0, :cond_38

    .line 1486
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1487
    :try_start_7
    iget-object v1, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1488
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_33

    .line 1489
    iget-object v3, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Instrumentation$ActivityWaiter;

    .line 1490
    .local v3, "aw":Landroid/app/Instrumentation$ActivityWaiter;
    iget-object v4, v3, Landroid/app/Instrumentation$ActivityWaiter;->intent:Landroid/content/Intent;

    .line 1491
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 1492
    iput-object p1, v3, Landroid/app/Instrumentation$ActivityWaiter;->activity:Landroid/app/Activity;

    .line 1493
    iget-object v5, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    new-instance v6, Landroid/app/Instrumentation$ActivityGoing;

    invoke-direct {v6, p0, v3}, Landroid/app/Instrumentation$ActivityGoing;-><init>(Landroid/app/Instrumentation;Landroid/app/Instrumentation$ActivityWaiter;)V

    invoke-virtual {v5, v6}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1488
    .end local v3    # "aw":Landroid/app/Instrumentation$ActivityWaiter;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1496
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_33
    monitor-exit v0

    goto :goto_38

    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_35

    throw v1

    .line 1498
    :cond_38
    :goto_38
    return-void
.end method

.method private blacklist resolveActivityInfoForCtsInSandbox(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 528
    invoke-direct {p0, p1}, Landroid/app/Instrumentation;->adjustIntentForCtsInSdkSandboxInstrumentation(Landroid/content/Intent;)V

    .line 529
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 530
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_1a

    .line 531
    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getProcessName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 533
    :cond_1a
    return-object v0
.end method

.method private blacklist runOnMainSync$ravenwood(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "runner"    # Ljava/lang/Runnable;

    .line 480
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 481
    new-instance v0, Landroid/app/Instrumentation$SyncRunnable;

    invoke-direct {v0, p1}, Landroid/app/Instrumentation$SyncRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 482
    .local v0, "sr":Landroid/app/Instrumentation$SyncRunnable;
    iget-object v1, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 483
    invoke-virtual {v0}, Landroid/app/Instrumentation$SyncRunnable;->waitForComplete()V

    .line 484
    return-void
.end method

.method private blacklist setDisplayIfNeeded(Landroid/view/KeyEvent;)V
    .registers 10
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1204
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1205
    return-void

    .line 1210
    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v0

    .line 1211
    .local v0, "eventDisplayId":I
    const/4 v1, -0x1

    const-string/jumbo v2, "setDisplayIfNeeded("

    const-string v3, "Instrumentation"

    if-eq v0, v1, :cond_36

    .line 1212
    sget-boolean v1, Landroid/app/Instrumentation;->VERBOSE:Z

    if-eqz v1, :cond_35

    .line 1213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): not changing display id as it\'s explicitly set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_35
    return-void

    .line 1219
    :cond_36
    iget-object v4, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    const-class v5, Landroid/os/UserManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 1220
    .local v4, "userManager":Landroid/os/UserManager;
    invoke-virtual {v4}, Landroid/os/UserManager;->getMainDisplayIdAssignedToUser()I

    move-result v5

    .line 1221
    .local v5, "userDisplayId":I
    sget-boolean v6, Landroid/app/Instrumentation;->VERBOSE:Z

    if-eqz v6, :cond_80

    .line 1222
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): eventDisplayId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", user="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    .line 1223
    invoke-virtual {v7}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", userDisplayId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1222
    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :cond_80
    if-ne v5, v1, :cond_a7

    .line 1226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): UserManager returned INVALID_DISPLAY as display assigned to user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    .line 1227
    invoke-virtual {v2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1226
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    return-void

    .line 1232
    :cond_a7
    invoke-virtual {p1, v5}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 1233
    return-void
.end method

.method private blacklist syncInputTransactionsAndInjectEventIntoSelf(Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    .line 1288
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    move v0, v1

    goto :goto_14

    :cond_13
    :goto_13
    move v0, v2

    .line 1289
    .local v0, "syncBefore":Z
    :goto_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_1b

    move v1, v2

    .line 1292
    .local v1, "syncAfter":Z
    :cond_1b
    if-eqz v0, :cond_24

    .line 1293
    :try_start_1d
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    .line 1294
    invoke-interface {v3, v2}, Landroid/view/IWindowManager;->syncInputTransactions(Z)V

    .line 1298
    :cond_24
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v3

    .line 1299
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    .line 1298
    const/4 v5, 0x2

    invoke-virtual {v3, p1, v5, v4}, Landroid/hardware/input/InputManagerGlobal;->injectInputEvent(Landroid/view/InputEvent;II)Z

    .line 1301
    if-eqz v1, :cond_39

    .line 1302
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    .line 1303
    invoke-interface {v3, v2}, Landroid/view/IWindowManager;->syncInputTransactions(Z)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_39} :catch_3a

    .line 1307
    :cond_39
    goto :goto_3e

    .line 1305
    :catch_3a
    move-exception v2

    .line 1306
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1308
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3e
    return-void
.end method

.method private greylist-max-o validateNotAppThread()V
    .registers 3

    .line 2463
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_b

    .line 2467
    return-void

    .line 2464
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This method can not be called from the main application thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist acquireLooperManager(Landroid/os/Looper;)Landroid/os/TestLooperManager;
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;

    .line 2579
    const-string v0, "acquireLooperManager"

    invoke-direct {p0, v0}, Landroid/app/Instrumentation;->checkInstrumenting(Ljava/lang/String;)V

    .line 2580
    new-instance v0, Landroid/os/TestLooperManager;

    invoke-direct {v0, p1}, Landroid/os/TestLooperManager;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public whitelist addMonitor(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .registers 5
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "result"    # Landroid/app/Instrumentation$ActivityResult;
    .param p3, "block"    # Z

    .line 938
    new-instance v0, Landroid/app/Instrumentation$ActivityMonitor;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;-><init>(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)V

    .line 939
    .local v0, "am":Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    .line 940
    return-object v0
.end method

.method public whitelist addMonitor(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .registers 5
    .param p1, "cls"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/app/Instrumentation$ActivityResult;
    .param p3, "block"    # Z

    .line 961
    new-instance v0, Landroid/app/Instrumentation$ActivityMonitor;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;-><init>(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)V

    .line 962
    .local v0, "am":Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    .line 963
    return-object v0
.end method

.method public whitelist addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .registers 4
    .param p1, "monitor"    # Landroid/app/Instrumentation$ActivityMonitor;

    .line 911
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 912
    :try_start_3
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-nez v1, :cond_e

    .line 913
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    .line 915
    :cond_e
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 916
    monitor-exit v0

    .line 917
    return-void

    .line 916
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist addResults(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "results"    # Landroid/os/Bundle;

    .line 267
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 269
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_4
    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/IActivityManager;->addInstrumentationResults(Landroid/app/IApplicationThread;Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    .line 272
    nop

    .line 273
    return-void

    .line 270
    :catch_f
    move-exception v1

    .line 271
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method final greylist-max-o basicInit(Landroid/app/ActivityThread;)V
    .registers 2
    .param p1, "thread"    # Landroid/app/ActivityThread;

    .line 2395
    iput-object p1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    .line 2396
    return-void
.end method

.method public final blacklist basicInit(Landroid/content/Context;Landroid/content/Context;Landroid/app/UiAutomation;)V
    .registers 4
    .param p1, "instrContext"    # Landroid/content/Context;
    .param p2, "appContext"    # Landroid/content/Context;
    .param p3, "ui"    # Landroid/app/UiAutomation;

    .line 2405
    iput-object p1, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    .line 2406
    iput-object p2, p0, Landroid/app/Instrumentation;->mAppContext:Landroid/content/Context;

    .line 2407
    iput-object p3, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    .line 2408
    return-void
.end method

.method public whitelist callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "icicle"    # Landroid/os/Bundle;

    .line 1520
    invoke-direct {p0, p1}, Landroid/app/Instrumentation;->prePerformCreate(Landroid/app/Activity;)V

    .line 1521
    invoke-virtual {p1, p2}, Landroid/app/Activity;->performCreate(Landroid/os/Bundle;)V

    .line 1522
    invoke-direct {p0, p1}, Landroid/app/Instrumentation;->postPerformCreate(Landroid/app/Activity;)V

    .line 1523
    return-void
.end method

.method public whitelist callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "icicle"    # Landroid/os/Bundle;
    .param p3, "persistentState"    # Landroid/os/PersistableBundle;

    .line 1534
    invoke-direct {p0, p1}, Landroid/app/Instrumentation;->prePerformCreate(Landroid/app/Activity;)V

    .line 1535
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->performCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 1536
    invoke-direct {p0, p1}, Landroid/app/Instrumentation;->postPerformCreate(Landroid/app/Activity;)V

    .line 1537
    return-void
.end method

.method public whitelist callActivityOnDestroy(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1556
    invoke-virtual {p1}, Landroid/app/Activity;->performDestroy()V

    .line 1557
    return-void
.end method

.method public whitelist callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1621
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->contentUriPermissionApis()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1622
    new-instance v0, Landroid/app/ComponentCaller;

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/app/ComponentCaller;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->performNewIntent(Landroid/content/Intent;Landroid/app/ComponentCaller;)V

    goto :goto_17

    .line 1625
    :cond_14
    invoke-virtual {p1, p2}, Landroid/app/Activity;->performNewIntent(Landroid/content/Intent;)V

    .line 1627
    :goto_17
    return-void
.end method

.method public whitelist callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;Landroid/app/ComponentCaller;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "caller"    # Landroid/app/ComponentCaller;

    .line 1641
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->performNewIntent(Landroid/content/Intent;Landroid/app/ComponentCaller;)V

    .line 1642
    return-void
.end method

.method public greylist-max-r callActivityOnNewIntent(Landroid/app/Activity;Lcom/android/internal/content/ReferrerIntent;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Lcom/android/internal/content/ReferrerIntent;

    .line 1673
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->contentUriPermissionApis()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 1674
    new-instance v0, Landroid/app/ComponentCaller;

    .line 1675
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/app/ComponentCaller;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 1674
    invoke-direct {p0, p1, p2, v0}, Landroid/app/Instrumentation;->internalCallActivityOnNewIntent(Landroid/app/Activity;Lcom/android/internal/content/ReferrerIntent;Landroid/app/ComponentCaller;)V

    goto :goto_2c

    .line 1677
    :cond_14
    iget-object v0, p1, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    .line 1679
    .local v0, "oldReferrer":Ljava/lang/String;
    if-eqz p2, :cond_1f

    .line 1680
    :try_start_18
    iget-object v2, p2, Lcom/android/internal/content/ReferrerIntent;->mReferrer:Ljava/lang/String;

    iput-object v2, p1, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    goto :goto_1f

    .line 1684
    :catchall_1d
    move-exception v1

    goto :goto_2d

    .line 1682
    :cond_1f
    :goto_1f
    if-eqz p2, :cond_26

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :cond_26
    invoke-virtual {p0, p1, v1}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_1d

    .line 1684
    iput-object v0, p1, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    .line 1685
    nop

    .line 1687
    .end local v0    # "oldReferrer":Ljava/lang/String;
    :goto_2c
    return-void

    .line 1684
    .restart local v0    # "oldReferrer":Ljava/lang/String;
    :goto_2d
    iput-object v0, p1, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    .line 1685
    throw v1
.end method

.method public blacklist callActivityOnNewIntent(Landroid/app/Activity;Lcom/android/internal/content/ReferrerIntent;Landroid/app/ComponentCaller;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Lcom/android/internal/content/ReferrerIntent;
    .param p3, "caller"    # Landroid/app/ComponentCaller;

    .line 1650
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Instrumentation;->internalCallActivityOnNewIntent(Landroid/app/Activity;Lcom/android/internal/content/ReferrerIntent;Landroid/app/ComponentCaller;)V

    .line 1651
    return-void
.end method

.method public whitelist callActivityOnPause(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1771
    invoke-virtual {p1}, Landroid/app/Activity;->performPause()V

    .line 1772
    return-void
.end method

.method public whitelist callActivityOnPictureInPictureRequested(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1791
    invoke-virtual {p1}, Landroid/app/Activity;->onPictureInPictureRequested()Z

    .line 1792
    return-void
.end method

.method public whitelist callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1595
    invoke-virtual {p1, p2}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 1596
    return-void
.end method

.method public whitelist callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "persistentState"    # Landroid/os/PersistableBundle;

    .line 1610
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 1611
    return-void
.end method

.method public whitelist callActivityOnRestart(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1706
    invoke-virtual {p1}, Landroid/app/Activity;->onRestart()V

    .line 1707
    return-void
.end method

.method public whitelist callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1568
    invoke-virtual {p1, p2}, Landroid/app/Activity;->performRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1569
    return-void
.end method

.method public whitelist callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "persistentState"    # Landroid/os/PersistableBundle;

    .line 1582
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->performRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 1583
    return-void
.end method

.method public whitelist callActivityOnResume(Landroid/app/Activity;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1716
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/app/Activity;->mResumed:Z

    .line 1717
    invoke-virtual {p1}, Landroid/app/Activity;->onResume()V

    .line 1719
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v0, :cond_2e

    .line 1720
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1721
    :try_start_d
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1722
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_29

    .line 1723
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1724
    .local v3, "am":Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, p1, p1, v4}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 1722
    nop

    .end local v3    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1726
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_29
    monitor-exit v0

    goto :goto_2e

    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_d .. :try_end_2d} :catchall_2b

    throw v1

    .line 1728
    :cond_2e
    :goto_2e
    return-void
.end method

.method public whitelist callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 1749
    invoke-virtual {p1, p2}, Landroid/app/Activity;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 1750
    return-void
.end method

.method public whitelist callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;
    .param p3, "outPersistentState"    # Landroid/os/PersistableBundle;

    .line 1761
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->performSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 1762
    return-void
.end method

.method public whitelist callActivityOnStart(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1696
    invoke-virtual {p1}, Landroid/app/Activity;->onStart()V

    .line 1697
    return-void
.end method

.method public whitelist callActivityOnStop(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1737
    invoke-virtual {p1}, Landroid/app/Activity;->onStop()V

    .line 1738
    return-void
.end method

.method public whitelist callActivityOnUserLeaving(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1781
    invoke-virtual {p1}, Landroid/app/Activity;->performUserLeaving()V

    .line 1782
    return-void
.end method

.method public whitelist callApplicationOnCreate(Landroid/app/Application;)V
    .registers 2
    .param p1, "app"    # Landroid/app/Application;

    .line 1381
    invoke-virtual {p1}, Landroid/app/Application;->onCreate()V

    .line 1382
    return-void
.end method

.method public whitelist checkMonitorHit(Landroid/app/Instrumentation$ActivityMonitor;I)Z
    .registers 5
    .param p1, "monitor"    # Landroid/app/Instrumentation$ActivityMonitor;
    .param p2, "minHits"    # I

    .line 980
    invoke-virtual {p0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 981
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 982
    :try_start_6
    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityMonitor;->getHits()I

    move-result v1

    if-ge v1, p2, :cond_f

    .line 983
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 985
    :cond_f
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 986
    monitor-exit v0

    .line 987
    const/4 v0, 0x1

    return v0

    .line 986
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public whitelist endPerformanceSnapshot()V
    .registers 2

    .line 314
    invoke-virtual {p0}, Landroid/app/Instrumentation;->isProfiling()Z

    move-result v0

    if-nez v0, :cond_e

    .line 315
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerformanceCollector:Landroid/os/PerformanceCollector;

    invoke-virtual {v0}, Landroid/os/PerformanceCollector;->endSnapshot()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    .line 317
    :cond_e
    return-void
.end method

.method public greylist execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 15
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intents"    # [Landroid/content/Intent;
    .param p6, "options"    # Landroid/os/Bundle;

    .line 2018
    nop

    .line 2019
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v7

    .line 2018
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .end local p1    # "who":Landroid/content/Context;
    .end local p2    # "contextThread":Landroid/os/IBinder;
    .end local p3    # "token":Landroid/os/IBinder;
    .end local p4    # "target":Landroid/app/Activity;
    .end local p5    # "intents":[Landroid/content/Intent;
    .end local p6    # "options":Landroid/os/Bundle;
    .local v1, "who":Landroid/content/Context;
    .local v2, "contextThread":Landroid/os/IBinder;
    .local v3, "token":Landroid/os/IBinder;
    .local v4, "target":Landroid/app/Activity;
    .local v5, "intents":[Landroid/content/Intent;
    .local v6, "options":Landroid/os/Bundle;
    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivitiesAsUser(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;I)I

    .line 2020
    return-void
.end method

.method public greylist-max-r execStartActivitiesAsUser(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;I)I
    .registers 24
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intents"    # [Landroid/content/Intent;
    .param p6, "options"    # Landroid/os/Bundle;
    .param p7, "userId"    # I

    .line 2038
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p5

    sget-boolean v0, Landroid/app/Instrumentation;->DEBUG_START_ACTIVITY:Z

    const/4 v12, 0x0

    if-eqz v0, :cond_6f

    .line 2039
    new-instance v0, Ljava/util/StringJoiner;

    const-string v3, ", "

    invoke-direct {v0, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 2040
    .local v0, "joiner":Ljava/util/StringJoiner;
    array-length v3, v7

    move v4, v12

    :goto_14
    if-ge v4, v3, :cond_22

    aget-object v5, v7, v4

    .line 2041
    .local v5, "i":Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2040
    .end local v5    # "i":Landroid/content/Intent;
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 2043
    :cond_22
    const-string v3, "Instrumentation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startActivities: who="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " source="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v13, p4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v11, p7

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " intents=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] options="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v5, p6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_75

    .line 2038
    .end local v0    # "joiner":Ljava/util/StringJoiner;
    :cond_6f
    move-object/from16 v13, p4

    move-object/from16 v5, p6

    move/from16 v11, p7

    .line 2046
    :goto_75
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2047
    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_7b
    if-ltz v0, :cond_85

    .line 2048
    aget-object v3, v7, v0

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2047
    add-int/lit8 v0, v0, -0x1

    goto :goto_7b

    .line 2050
    .end local v0    # "i":I
    :cond_85
    move-object/from16 v4, p2

    check-cast v4, Landroid/app/IApplicationThread;

    .line 2051
    .local v4, "whoThread":Landroid/app/IApplicationThread;
    invoke-virtual {v1}, Landroid/app/Instrumentation;->isSdkSandboxAllowedToStartActivities()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 2052
    array-length v0, v7

    move v3, v12

    :goto_91
    if-ge v3, v0, :cond_9b

    aget-object v6, v7, v3

    .line 2053
    .local v6, "intent":Landroid/content/Intent;
    invoke-direct {v1, v6}, Landroid/app/Instrumentation;->adjustIntentForCtsInSdkSandboxInstrumentation(Landroid/content/Intent;)V

    .line 2052
    .end local v6    # "intent":Landroid/content/Intent;
    add-int/lit8 v3, v3, 0x1

    goto :goto_91

    .line 2056
    :cond_9b
    iget-object v0, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v0, :cond_100

    .line 2057
    iget-object v3, v1, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v3

    .line 2058
    :try_start_a2
    iget-object v0, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_a8
    .catchall {:try_start_a2 .. :try_end_a8} :catchall_fb

    .line 2059
    .local v0, "N":I
    const/4 v6, 0x0

    .end local p6    # "options":Landroid/os/Bundle;
    .local v5, "options":Landroid/os/Bundle;
    .local v6, "i":I
    :goto_a9
    if-ge v6, v0, :cond_f8

    .line 2060
    :try_start_ab
    iget-object v8, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Instrumentation$ActivityMonitor;

    .line 2061
    .local v8, "am":Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v9, 0x0

    .line 2062
    .local v9, "result":Landroid/app/Instrumentation$ActivityResult;
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityMonitor;->ignoreMatchingSpecificIntents()Z

    move-result v10

    if-eqz v10, :cond_d2

    .line 2063
    if-nez v5, :cond_c5

    .line 2064
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10
    :try_end_c4
    .catchall {:try_start_ab .. :try_end_c4} :catchall_fe

    .end local v5    # "options":Landroid/os/Bundle;
    .local v10, "options":Landroid/os/Bundle;
    goto :goto_c6

    .line 2063
    .end local v10    # "options":Landroid/os/Bundle;
    .restart local v5    # "options":Landroid/os/Bundle;
    :cond_c5
    move-object v10, v5

    .line 2066
    .end local v5    # "options":Landroid/os/Bundle;
    .restart local v10    # "options":Landroid/os/Bundle;
    :goto_c6
    :try_start_c6
    aget-object v5, v7, v12

    invoke-virtual {v8, v2, v5, v10}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v5
    :try_end_cc
    .catchall {:try_start_c6 .. :try_end_cc} :catchall_cf

    move-object v9, v5

    move-object v5, v10

    goto :goto_d2

    .line 2079
    .end local v0    # "N":I
    .end local v6    # "i":I
    .end local v8    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .end local v9    # "result":Landroid/app/Instrumentation$ActivityResult;
    :catchall_cf
    move-exception v0

    move-object v5, v10

    goto :goto_fc

    .line 2068
    .end local v10    # "options":Landroid/os/Bundle;
    .restart local v0    # "N":I
    .restart local v5    # "options":Landroid/os/Bundle;
    .restart local v6    # "i":I
    .restart local v8    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .restart local v9    # "result":Landroid/app/Instrumentation$ActivityResult;
    :cond_d2
    :goto_d2
    const/16 v10, -0x60

    if-eqz v9, :cond_de

    .line 2069
    :try_start_d6
    iget v12, v8, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v8, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2070
    monitor-exit v3

    return v10

    .line 2071
    :cond_de
    aget-object v14, v7, v12

    const/4 v15, 0x0

    invoke-virtual {v8, v2, v15, v14}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v14

    if-eqz v14, :cond_f5

    .line 2072
    iget v14, v8, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v8, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2073
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v14

    if-eqz v14, :cond_f8

    .line 2074
    monitor-exit v3

    return v10

    .line 2059
    .end local v8    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .end local v9    # "result":Landroid/app/Instrumentation$ActivityResult;
    :cond_f5
    add-int/lit8 v6, v6, 0x1

    goto :goto_a9

    .line 2079
    .end local v0    # "N":I
    .end local v6    # "i":I
    :cond_f8
    monitor-exit v3

    move-object v10, v5

    goto :goto_101

    .end local v5    # "options":Landroid/os/Bundle;
    .restart local p6    # "options":Landroid/os/Bundle;
    :catchall_fb
    move-exception v0

    .end local p6    # "options":Landroid/os/Bundle;
    .restart local v5    # "options":Landroid/os/Bundle;
    :goto_fc
    monitor-exit v3
    :try_end_fd
    .catchall {:try_start_d6 .. :try_end_fd} :catchall_fe

    throw v0

    :catchall_fe
    move-exception v0

    goto :goto_fc

    .line 2056
    .end local v5    # "options":Landroid/os/Bundle;
    .restart local p6    # "options":Landroid/os/Bundle;
    :cond_100
    move-object v10, v5

    .line 2082
    .end local p6    # "options":Landroid/os/Bundle;
    .restart local v10    # "options":Landroid/os/Bundle;
    :goto_101
    :try_start_101
    array-length v0, v7

    new-array v8, v0, [Ljava/lang/String;

    .line 2083
    .local v8, "resolvedTypes":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_105
    array-length v3, v7

    if-ge v0, v3, :cond_121

    .line 2084
    aget-object v3, v7, v0

    invoke-virtual {v3, v2}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 2085
    aget-object v3, v7, v0

    invoke-virtual {v3, v2}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 2086
    aget-object v3, v7, v0

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v0

    .line 2083
    add-int/lit8 v0, v0, 0x1

    goto :goto_105

    .line 2088
    .end local v0    # "i":I
    :cond_121
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v3

    .line 2089
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    .line 2088
    move-object/from16 v9, p3

    invoke-interface/range {v3 .. v11}, Landroid/app/IActivityTaskManager;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v0

    .line 2091
    .local v0, "result":I
    invoke-direct {v1, v0, v10}, Landroid/app/Instrumentation;->notifyStartActivityResult(ILandroid/os/Bundle;)V

    .line 2092
    aget-object v3, p5, v12

    invoke-static {v0, v3}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_13b
    .catch Landroid/os/RemoteException; {:try_start_101 .. :try_end_13b} :catch_13c

    .line 2093
    return v0

    .line 2094
    .end local v0    # "result":I
    .end local v8    # "resolvedTypes":[Ljava/lang/String;
    :catch_13c
    move-exception v0

    .line 2095
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Failure from system"

    invoke-direct {v3, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public greylist execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .registers 25
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    .line 1954
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v8, p5

    move/from16 v12, p6

    sget-boolean v0, Landroid/app/Instrumentation;->DEBUG_START_ACTIVITY:Z

    if-eqz v0, :cond_57

    .line 1955
    const-string v0, "Instrumentation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startActivity: who="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " source="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " requestCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " options="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v5, p7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_59

    .line 1954
    :cond_57
    move-object/from16 v5, p7

    .line 1958
    :goto_59
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1959
    move-object/from16 v5, p2

    check-cast v5, Landroid/app/IApplicationThread;

    .line 1960
    .local v5, "whoThread":Landroid/app/IApplicationThread;
    const/4 v0, 0x0

    if-eqz v3, :cond_68

    invoke-virtual {v3}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v4

    goto :goto_69

    :cond_68
    move-object v4, v0

    .line 1961
    .local v4, "referrer":Landroid/net/Uri;
    :goto_69
    if-eqz v4, :cond_70

    .line 1962
    const-string v6, "android.intent.extra.REFERRER"

    invoke-virtual {v8, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1964
    :cond_70
    invoke-virtual {v1}, Landroid/app/Instrumentation;->isSdkSandboxAllowedToStartActivities()Z

    move-result v6

    if-eqz v6, :cond_79

    .line 1965
    invoke-direct {v1, v8}, Landroid/app/Instrumentation;->adjustIntentForCtsInSdkSandboxInstrumentation(Landroid/content/Intent;)V

    .line 1967
    :cond_79
    iget-object v6, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v6, :cond_dc

    .line 1968
    iget-object v6, v1, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v6

    .line 1969
    :try_start_80
    iget-object v7, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7
    :try_end_86
    .catchall {:try_start_80 .. :try_end_86} :catchall_d5

    .line 1970
    .local v7, "N":I
    const/4 v9, 0x0

    move v10, v9

    move-object/from16 v9, p7

    .end local p7    # "options":Landroid/os/Bundle;
    .local v9, "options":Landroid/os/Bundle;
    .local v10, "i":I
    :goto_8a
    if-ge v10, v7, :cond_d2

    .line 1971
    :try_start_8c
    iget-object v11, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1972
    .local v11, "am":Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v13, 0x0

    .line 1973
    .local v13, "result":Landroid/app/Instrumentation$ActivityResult;
    invoke-virtual {v11}, Landroid/app/Instrumentation$ActivityMonitor;->ignoreMatchingSpecificIntents()Z

    move-result v14

    if-eqz v14, :cond_ab

    .line 1974
    if-nez v9, :cond_a6

    .line 1975
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v14

    move-object v9, v14

    .line 1977
    :cond_a6
    invoke-virtual {v11, v2, v8, v9}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v14

    move-object v13, v14

    .line 1979
    :cond_ab
    if-eqz v13, :cond_b5

    .line 1980
    iget v0, v11, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v11, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 1981
    monitor-exit v6

    return-object v13

    .line 1982
    :cond_b5
    invoke-virtual {v11, v2, v0, v8}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v14

    if-eqz v14, :cond_cf

    .line 1983
    iget v14, v11, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v11, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 1984
    invoke-virtual {v11}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v14

    if-eqz v14, :cond_d2

    .line 1985
    if-ltz v12, :cond_cd

    invoke-virtual {v11}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    :cond_cd
    monitor-exit v6

    return-object v0

    .line 1970
    .end local v11    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .end local v13    # "result":Landroid/app/Instrumentation$ActivityResult;
    :cond_cf
    add-int/lit8 v10, v10, 0x1

    goto :goto_8a

    .line 1990
    .end local v7    # "N":I
    .end local v10    # "i":I
    :cond_d2
    monitor-exit v6

    move-object v15, v9

    goto :goto_de

    .end local v9    # "options":Landroid/os/Bundle;
    .restart local p7    # "options":Landroid/os/Bundle;
    :catchall_d5
    move-exception v0

    move-object/from16 v9, p7

    .end local p7    # "options":Landroid/os/Bundle;
    .restart local v9    # "options":Landroid/os/Bundle;
    :goto_d8
    monitor-exit v6
    :try_end_d9
    .catchall {:try_start_8c .. :try_end_d9} :catchall_da

    throw v0

    :catchall_da
    move-exception v0

    goto :goto_d8

    .line 1967
    .end local v9    # "options":Landroid/os/Bundle;
    .restart local p7    # "options":Landroid/os/Bundle;
    :cond_dc
    move-object/from16 v15, p7

    .line 1993
    .end local p7    # "options":Landroid/os/Bundle;
    .local v15, "options":Landroid/os/Bundle;
    :goto_de
    :try_start_de
    invoke-virtual {v8, v2}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 1994
    invoke-virtual {v8, v2}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V
    :try_end_e4
    .catch Landroid/os/RemoteException; {:try_start_de .. :try_end_e4} :catch_126

    .line 1995
    move-object v6, v4

    .end local v4    # "referrer":Landroid/net/Uri;
    .local v6, "referrer":Landroid/net/Uri;
    :try_start_e5
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v4
    :try_end_e9
    .catch Landroid/os/RemoteException; {:try_start_e5 .. :try_end_e9} :catch_122

    .line 1996
    move-object v7, v6

    .end local v6    # "referrer":Landroid/net/Uri;
    .local v7, "referrer":Landroid/net/Uri;
    :try_start_ea
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6
    :try_end_ee
    .catch Landroid/os/RemoteException; {:try_start_ea .. :try_end_ee} :catch_11e

    move-object v9, v7

    .end local v7    # "referrer":Landroid/net/Uri;
    .local v9, "referrer":Landroid/net/Uri;
    :try_start_ef
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    .line 1997
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v10
    :try_end_fb
    .catch Landroid/os/RemoteException; {:try_start_ef .. :try_end_fb} :catch_11a

    .line 1998
    if-eqz v3, :cond_104

    :try_start_fd
    iget-object v11, v3, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;
    :try_end_ff
    .catch Landroid/os/RemoteException; {:try_start_fd .. :try_end_ff} :catch_100

    goto :goto_105

    .line 2001
    :catch_100
    move-exception v0

    move-object/from16 v16, v9

    goto :goto_129

    .line 1998
    :cond_104
    move-object v11, v0

    .line 1995
    :goto_105
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v16, v9

    move-object v9, v10

    move-object/from16 v10, p3

    .end local v9    # "referrer":Landroid/net/Uri;
    .local v16, "referrer":Landroid/net/Uri;
    :try_start_10c
    invoke-interface/range {v4 .. v15}, Landroid/app/IActivityTaskManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v4

    .line 1999
    .local v4, "result":I
    invoke-direct {v1, v4, v15}, Landroid/app/Instrumentation;->notifyStartActivityResult(ILandroid/os/Bundle;)V

    .line 2000
    invoke-static {v4, v8}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_116
    .catch Landroid/os/RemoteException; {:try_start_10c .. :try_end_116} :catch_118

    .line 2003
    .end local v4    # "result":I
    nop

    .line 2004
    return-object v0

    .line 2001
    :catch_118
    move-exception v0

    goto :goto_129

    .end local v16    # "referrer":Landroid/net/Uri;
    .restart local v9    # "referrer":Landroid/net/Uri;
    :catch_11a
    move-exception v0

    move-object/from16 v16, v9

    .end local v9    # "referrer":Landroid/net/Uri;
    .restart local v16    # "referrer":Landroid/net/Uri;
    goto :goto_129

    .end local v16    # "referrer":Landroid/net/Uri;
    .restart local v7    # "referrer":Landroid/net/Uri;
    :catch_11e
    move-exception v0

    move-object/from16 v16, v7

    .end local v7    # "referrer":Landroid/net/Uri;
    .restart local v16    # "referrer":Landroid/net/Uri;
    goto :goto_129

    .end local v16    # "referrer":Landroid/net/Uri;
    .restart local v6    # "referrer":Landroid/net/Uri;
    :catch_122
    move-exception v0

    move-object/from16 v16, v6

    .end local v6    # "referrer":Landroid/net/Uri;
    .restart local v16    # "referrer":Landroid/net/Uri;
    goto :goto_129

    .end local v16    # "referrer":Landroid/net/Uri;
    .local v4, "referrer":Landroid/net/Uri;
    :catch_126
    move-exception v0

    move-object/from16 v16, v4

    .line 2002
    .end local v4    # "referrer":Landroid/net/Uri;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v16    # "referrer":Landroid/net/Uri;
    :goto_129
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "Failure from system"

    invoke-direct {v4, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public greylist execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .registers 24
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    .line 2130
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p5

    move/from16 v11, p6

    sget-boolean v0, Landroid/app/Instrumentation;->DEBUG_START_ACTIVITY:Z

    if-eqz v0, :cond_57

    .line 2131
    const-string v0, "Instrumentation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivity: who="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " target="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v10, p4

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requestCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " options="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, p7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5b

    .line 2130
    :cond_57
    move-object/from16 v10, p4

    move-object/from16 v4, p7

    .line 2135
    :goto_5b
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2136
    move-object/from16 v4, p2

    check-cast v4, Landroid/app/IApplicationThread;

    .line 2137
    .local v4, "whoThread":Landroid/app/IApplicationThread;
    invoke-virtual {v1}, Landroid/app/Instrumentation;->isSdkSandboxAllowedToStartActivities()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 2138
    invoke-direct {v1, v7}, Landroid/app/Instrumentation;->adjustIntentForCtsInSdkSandboxInstrumentation(Landroid/content/Intent;)V

    .line 2140
    :cond_6b
    iget-object v0, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    const/4 v15, 0x0

    if-eqz v0, :cond_d5

    .line 2141
    iget-object v3, v1, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v3

    .line 2142
    :try_start_73
    iget-object v0, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_79
    .catchall {:try_start_73 .. :try_end_79} :catchall_ce

    .line 2143
    .local v0, "N":I
    const/4 v5, 0x0

    move v6, v5

    move-object/from16 v5, p7

    .end local p7    # "options":Landroid/os/Bundle;
    .local v5, "options":Landroid/os/Bundle;
    .local v6, "i":I
    :goto_7d
    if-ge v6, v0, :cond_cb

    .line 2144
    :try_start_7f
    iget-object v8, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Instrumentation$ActivityMonitor;

    .line 2145
    .local v8, "am":Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v9, 0x0

    .line 2146
    .local v9, "result":Landroid/app/Instrumentation$ActivityResult;
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityMonitor;->ignoreMatchingSpecificIntents()Z

    move-result v12

    if-eqz v12, :cond_a4

    .line 2147
    if-nez v5, :cond_99

    .line 2148
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v12
    :try_end_98
    .catchall {:try_start_7f .. :try_end_98} :catchall_d3

    .end local v5    # "options":Landroid/os/Bundle;
    .local v12, "options":Landroid/os/Bundle;
    goto :goto_9a

    .line 2147
    .end local v12    # "options":Landroid/os/Bundle;
    .restart local v5    # "options":Landroid/os/Bundle;
    :cond_99
    move-object v12, v5

    .line 2150
    .end local v5    # "options":Landroid/os/Bundle;
    .restart local v12    # "options":Landroid/os/Bundle;
    :goto_9a
    :try_start_9a
    invoke-virtual {v8, v2, v7, v12}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v5
    :try_end_9e
    .catchall {:try_start_9a .. :try_end_9e} :catchall_a1

    move-object v9, v5

    move-object v5, v12

    goto :goto_a4

    .line 2163
    .end local v0    # "N":I
    .end local v6    # "i":I
    .end local v8    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .end local v9    # "result":Landroid/app/Instrumentation$ActivityResult;
    :catchall_a1
    move-exception v0

    move-object v5, v12

    goto :goto_d1

    .line 2152
    .end local v12    # "options":Landroid/os/Bundle;
    .restart local v0    # "N":I
    .restart local v5    # "options":Landroid/os/Bundle;
    .restart local v6    # "i":I
    .restart local v8    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .restart local v9    # "result":Landroid/app/Instrumentation$ActivityResult;
    :cond_a4
    :goto_a4
    if-eqz v9, :cond_ae

    .line 2153
    :try_start_a6
    iget v12, v8, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v8, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2154
    monitor-exit v3

    return-object v9

    .line 2155
    :cond_ae
    invoke-virtual {v8, v2, v15, v7}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v12

    if-eqz v12, :cond_c8

    .line 2156
    iget v12, v8, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v8, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2157
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v12

    if-eqz v12, :cond_cb

    .line 2158
    if-ltz v11, :cond_c6

    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v15

    :cond_c6
    monitor-exit v3

    return-object v15

    .line 2143
    .end local v8    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .end local v9    # "result":Landroid/app/Instrumentation$ActivityResult;
    :cond_c8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7d

    .line 2163
    .end local v0    # "N":I
    .end local v6    # "i":I
    :cond_cb
    monitor-exit v3

    move-object v14, v5

    goto :goto_d7

    .end local v5    # "options":Landroid/os/Bundle;
    .restart local p7    # "options":Landroid/os/Bundle;
    :catchall_ce
    move-exception v0

    move-object/from16 v5, p7

    .end local p7    # "options":Landroid/os/Bundle;
    .restart local v5    # "options":Landroid/os/Bundle;
    :goto_d1
    monitor-exit v3
    :try_end_d2
    .catchall {:try_start_a6 .. :try_end_d2} :catchall_d3

    throw v0

    :catchall_d3
    move-exception v0

    goto :goto_d1

    .line 2140
    .end local v5    # "options":Landroid/os/Bundle;
    .restart local p7    # "options":Landroid/os/Bundle;
    :cond_d5
    move-object/from16 v14, p7

    .line 2166
    .end local p7    # "options":Landroid/os/Bundle;
    .local v14, "options":Landroid/os/Bundle;
    :goto_d7
    :try_start_d7
    invoke-virtual {v7, v2}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 2167
    invoke-virtual {v7, v2}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 2168
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v3

    .line 2169
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    .line 2170
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v8

    .line 2168
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p3

    invoke-interface/range {v3 .. v14}, Landroid/app/IActivityTaskManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v0

    .line 2172
    .local v0, "result":I
    invoke-direct {v1, v0, v14}, Landroid/app/Instrumentation;->notifyStartActivityResult(ILandroid/os/Bundle;)V

    .line 2173
    invoke-static {v0, v7}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_ff
    .catch Landroid/os/RemoteException; {:try_start_d7 .. :try_end_ff} :catch_101

    .line 2176
    .end local v0    # "result":I
    nop

    .line 2177
    return-object v15

    .line 2174
    :catch_101
    move-exception v0

    .line 2175
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Failure from system"

    invoke-direct {v3, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public greylist execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;
    .registers 25
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "resultWho"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .param p8, "user"    # Landroid/os/UserHandle;

    .line 2210
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p5

    move/from16 v11, p6

    sget-boolean v0, Landroid/app/Instrumentation;->DEBUG_START_ACTIVITY:Z

    if-eqz v0, :cond_63

    .line 2211
    const-string v0, "Instrumentation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivity: who="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " user="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, p8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " intent="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " requestCode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " resultWho="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v10, p4

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " options="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v5, p7

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_69

    .line 2210
    :cond_63
    move-object/from16 v10, p4

    move-object/from16 v5, p7

    move-object/from16 v4, p8

    .line 2215
    :goto_69
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2216
    move-object/from16 v4, p2

    check-cast v4, Landroid/app/IApplicationThread;

    .line 2217
    .local v4, "whoThread":Landroid/app/IApplicationThread;
    invoke-virtual {v1}, Landroid/app/Instrumentation;->isSdkSandboxAllowedToStartActivities()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 2218
    invoke-direct {v1, v7}, Landroid/app/Instrumentation;->adjustIntentForCtsInSdkSandboxInstrumentation(Landroid/content/Intent;)V

    .line 2220
    :cond_79
    iget-object v0, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v0, :cond_de

    .line 2221
    iget-object v6, v1, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v6

    .line 2222
    :try_start_81
    iget-object v0, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_87
    .catchall {:try_start_81 .. :try_end_87} :catchall_d9

    .line 2223
    .local v0, "N":I
    const/4 v8, 0x0

    .end local p7    # "options":Landroid/os/Bundle;
    .local v5, "options":Landroid/os/Bundle;
    .local v8, "i":I
    :goto_88
    if-ge v8, v0, :cond_d6

    .line 2224
    :try_start_8a
    iget-object v9, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Instrumentation$ActivityMonitor;

    .line 2225
    .local v9, "am":Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v12, 0x0

    .line 2226
    .local v12, "result":Landroid/app/Instrumentation$ActivityResult;
    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityMonitor;->ignoreMatchingSpecificIntents()Z

    move-result v13

    if-eqz v13, :cond_af

    .line 2227
    if-nez v5, :cond_a4

    .line 2228
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v13
    :try_end_a3
    .catchall {:try_start_8a .. :try_end_a3} :catchall_dc

    .end local v5    # "options":Landroid/os/Bundle;
    .local v13, "options":Landroid/os/Bundle;
    goto :goto_a5

    .line 2227
    .end local v13    # "options":Landroid/os/Bundle;
    .restart local v5    # "options":Landroid/os/Bundle;
    :cond_a4
    move-object v13, v5

    .line 2230
    .end local v5    # "options":Landroid/os/Bundle;
    .restart local v13    # "options":Landroid/os/Bundle;
    :goto_a5
    :try_start_a5
    invoke-virtual {v9, v2, v7, v13}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v5
    :try_end_a9
    .catchall {:try_start_a5 .. :try_end_a9} :catchall_ac

    move-object v12, v5

    move-object v5, v13

    goto :goto_af

    .line 2243
    .end local v0    # "N":I
    .end local v8    # "i":I
    .end local v9    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .end local v12    # "result":Landroid/app/Instrumentation$ActivityResult;
    :catchall_ac
    move-exception v0

    move-object v5, v13

    goto :goto_da

    .line 2232
    .end local v13    # "options":Landroid/os/Bundle;
    .restart local v0    # "N":I
    .restart local v5    # "options":Landroid/os/Bundle;
    .restart local v8    # "i":I
    .restart local v9    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .restart local v12    # "result":Landroid/app/Instrumentation$ActivityResult;
    :cond_af
    :goto_af
    if-eqz v12, :cond_b9

    .line 2233
    :try_start_b1
    iget v3, v9, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v9, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2234
    monitor-exit v6

    return-object v12

    .line 2235
    :cond_b9
    invoke-virtual {v9, v2, v3, v7}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v13

    if-eqz v13, :cond_d3

    .line 2236
    iget v13, v9, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v9, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2237
    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v13

    if-eqz v13, :cond_d6

    .line 2238
    if-ltz v11, :cond_d1

    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v3

    :cond_d1
    monitor-exit v6

    return-object v3

    .line 2223
    .end local v9    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .end local v12    # "result":Landroid/app/Instrumentation$ActivityResult;
    :cond_d3
    add-int/lit8 v8, v8, 0x1

    goto :goto_88

    .line 2243
    .end local v0    # "N":I
    .end local v8    # "i":I
    :cond_d6
    monitor-exit v6

    move-object v14, v5

    goto :goto_df

    .end local v5    # "options":Landroid/os/Bundle;
    .restart local p7    # "options":Landroid/os/Bundle;
    :catchall_d9
    move-exception v0

    .end local p7    # "options":Landroid/os/Bundle;
    .restart local v5    # "options":Landroid/os/Bundle;
    :goto_da
    monitor-exit v6
    :try_end_db
    .catchall {:try_start_b1 .. :try_end_db} :catchall_dc

    throw v0

    :catchall_dc
    move-exception v0

    goto :goto_da

    .line 2220
    .end local v5    # "options":Landroid/os/Bundle;
    .restart local p7    # "options":Landroid/os/Bundle;
    :cond_de
    move-object v14, v5

    .line 2246
    .end local p7    # "options":Landroid/os/Bundle;
    .local v14, "options":Landroid/os/Bundle;
    :goto_df
    :try_start_df
    invoke-virtual {v7, v2}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 2247
    invoke-virtual {v7, v2}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 2248
    move-object v0, v3

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v3

    .line 2249
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    .line 2250
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v8

    .line 2251
    invoke-virtual/range {p8 .. p8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    .line 2248
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p3

    invoke-interface/range {v3 .. v15}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v3

    .line 2252
    .local v3, "result":I
    invoke-direct {v1, v3, v14}, Landroid/app/Instrumentation;->notifyStartActivityResult(ILandroid/os/Bundle;)V

    .line 2253
    invoke-static {v3, v7}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_10c
    .catch Landroid/os/RemoteException; {:try_start_df .. :try_end_10c} :catch_10e

    .line 2256
    .end local v3    # "result":I
    nop

    .line 2257
    return-object v0

    .line 2254
    :catch_10e
    move-exception v0

    .line 2255
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Failure from system"

    invoke-direct {v3, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public greylist-max-r execStartActivityAsCaller(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;ZI)Landroid/app/Instrumentation$ActivityResult;
    .registers 27
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .param p8, "ignoreTargetSecurity"    # Z
    .param p9, "userId"    # I

    .line 2269
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v7, p5

    move/from16 v11, p6

    sget-boolean v0, Landroid/app/Instrumentation;->DEBUG_START_ACTIVITY:Z

    if-eqz v0, :cond_6f

    .line 2270
    const-string v0, "Instrumentation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startActivity: who="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " source="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v5, p9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " intent="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " requestCode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ignoreTargetSecurity="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v15, p8

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " options="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v6, p7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/Throwable;

    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_75

    .line 2269
    :cond_6f
    move-object/from16 v6, p7

    move/from16 v15, p8

    move/from16 v5, p9

    .line 2275
    :goto_75
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2276
    move-object/from16 v5, p2

    check-cast v5, Landroid/app/IApplicationThread;

    .line 2277
    .local v5, "whoThread":Landroid/app/IApplicationThread;
    invoke-virtual {v1}, Landroid/app/Instrumentation;->isSdkSandboxAllowedToStartActivities()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 2278
    invoke-direct {v1, v7}, Landroid/app/Instrumentation;->adjustIntentForCtsInSdkSandboxInstrumentation(Landroid/content/Intent;)V

    .line 2280
    :cond_85
    iget-object v0, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v0, :cond_e4

    .line 2281
    iget-object v8, v1, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v8

    .line 2282
    :try_start_8d
    iget-object v0, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_93
    .catchall {:try_start_8d .. :try_end_93} :catchall_df

    .line 2283
    .local v0, "N":I
    const/4 v9, 0x0

    .end local p7    # "options":Landroid/os/Bundle;
    .local v6, "options":Landroid/os/Bundle;
    .local v9, "i":I
    :goto_94
    if-ge v9, v0, :cond_dc

    .line 2284
    :try_start_96
    iget-object v10, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/Instrumentation$ActivityMonitor;

    .line 2285
    .local v10, "am":Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v12, 0x0

    .line 2286
    .local v12, "result":Landroid/app/Instrumentation$ActivityResult;
    invoke-virtual {v10}, Landroid/app/Instrumentation$ActivityMonitor;->ignoreMatchingSpecificIntents()Z

    move-result v13

    if-eqz v13, :cond_b5

    .line 2287
    if-nez v6, :cond_b0

    .line 2288
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v13

    move-object v6, v13

    .line 2290
    :cond_b0
    invoke-virtual {v10, v2, v7, v6}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v13

    move-object v12, v13

    .line 2292
    :cond_b5
    if-eqz v12, :cond_bf

    .line 2293
    iget v4, v10, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v10, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2294
    monitor-exit v8

    return-object v12

    .line 2295
    :cond_bf
    invoke-virtual {v10, v2, v4, v7}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v13

    if-eqz v13, :cond_d9

    .line 2296
    iget v13, v10, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v10, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2297
    invoke-virtual {v10}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v13

    if-eqz v13, :cond_dc

    .line 2298
    if-ltz v11, :cond_d7

    invoke-virtual {v10}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v4

    :cond_d7
    monitor-exit v8

    return-object v4

    .line 2283
    .end local v10    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .end local v12    # "result":Landroid/app/Instrumentation$ActivityResult;
    :cond_d9
    add-int/lit8 v9, v9, 0x1

    goto :goto_94

    .line 2303
    .end local v0    # "N":I
    .end local v9    # "i":I
    :cond_dc
    monitor-exit v8

    move-object v14, v6

    goto :goto_e5

    .end local v6    # "options":Landroid/os/Bundle;
    .restart local p7    # "options":Landroid/os/Bundle;
    :catchall_df
    move-exception v0

    .end local p7    # "options":Landroid/os/Bundle;
    .restart local v6    # "options":Landroid/os/Bundle;
    :goto_e0
    monitor-exit v8
    :try_end_e1
    .catchall {:try_start_96 .. :try_end_e1} :catchall_e2

    throw v0

    :catchall_e2
    move-exception v0

    goto :goto_e0

    .line 2280
    .end local v6    # "options":Landroid/os/Bundle;
    .restart local p7    # "options":Landroid/os/Bundle;
    :cond_e4
    move-object v14, v6

    .line 2306
    .end local p7    # "options":Landroid/os/Bundle;
    .local v14, "options":Landroid/os/Bundle;
    :goto_e5
    :try_start_e5
    invoke-virtual {v7, v2}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 2307
    invoke-virtual {v7, v2}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 2308
    move-object v0, v4

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v4

    .line 2309
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2310
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v8

    .line 2311
    if-eqz v3, :cond_102

    iget-object v9, v3, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    move-object v10, v9

    goto :goto_103

    :cond_102
    move-object v10, v0

    .line 2309
    :goto_103
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p3

    move/from16 v16, p9

    invoke-interface/range {v4 .. v16}, Landroid/app/IActivityTaskManager;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    move-result v4

    .line 2314
    .local v4, "result":I
    invoke-direct {v1, v4, v14}, Landroid/app/Instrumentation;->notifyStartActivityResult(ILandroid/os/Bundle;)V

    .line 2315
    invoke-static {v4, v7}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_113
    .catch Landroid/os/RemoteException; {:try_start_e5 .. :try_end_113} :catch_115

    .line 2318
    .end local v4    # "result":I
    nop

    .line 2319
    return-object v0

    .line 2316
    :catch_115
    move-exception v0

    .line 2317
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "Failure from system"

    invoke-direct {v4, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public greylist-max-r execStartActivityFromAppTask(Landroid/content/Context;Landroid/os/IBinder;Landroid/app/IAppTask;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 16
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "appTask"    # Landroid/app/IAppTask;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "options"    # Landroid/os/Bundle;

    .line 2330
    sget-boolean v0, Landroid/app/Instrumentation;->DEBUG_START_ACTIVITY:Z

    if-eqz v0, :cond_36

    .line 2331
    const-string v0, "Instrumentation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startActivity: who="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " options="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2334
    :cond_36
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2335
    move-object v1, p2

    check-cast v1, Landroid/app/IApplicationThread;

    .line 2336
    .local v1, "whoThread":Landroid/app/IApplicationThread;
    invoke-virtual {p0}, Landroid/app/Instrumentation;->isSdkSandboxAllowedToStartActivities()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 2337
    invoke-direct {p0, p4}, Landroid/app/Instrumentation;->adjustIntentForCtsInSdkSandboxInstrumentation(Landroid/content/Intent;)V

    .line 2339
    :cond_45
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v0, :cond_9c

    .line 2340
    iget-object v2, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 2341
    :try_start_4c
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2342
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_53
    if-ge v3, v0, :cond_96

    .line 2343
    iget-object v4, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Instrumentation$ActivityMonitor;

    .line 2344
    .local v4, "am":Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v5, 0x0

    .line 2345
    .local v5, "result":Landroid/app/Instrumentation$ActivityResult;
    invoke-virtual {v4}, Landroid/app/Instrumentation$ActivityMonitor;->ignoreMatchingSpecificIntents()Z

    move-result v6

    if-eqz v6, :cond_74

    .line 2346
    if-nez p5, :cond_6f

    .line 2347
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    move-object p5, v6

    .line 2349
    :cond_6f
    invoke-virtual {v4, p1, p4, p5}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v6

    move-object v5, v6

    .line 2351
    :cond_74
    if-eqz v5, :cond_7e

    .line 2352
    iget v6, v4, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2353
    monitor-exit v2

    return-void

    .line 2354
    :cond_7e
    const/4 v6, 0x0

    invoke-virtual {v4, p1, v6, p4}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_93

    .line 2355
    iget v6, v4, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2356
    invoke-virtual {v4}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v6

    if-eqz v6, :cond_96

    .line 2357
    monitor-exit v2

    return-void

    .line 2342
    .end local v4    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .end local v5    # "result":Landroid/app/Instrumentation$ActivityResult;
    :cond_93
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 2362
    .end local v0    # "N":I
    .end local v3    # "i":I
    :cond_96
    monitor-exit v2

    move-object v9, p5

    goto :goto_9d

    :catchall_99
    move-exception v0

    monitor-exit v2
    :try_end_9b
    .catchall {:try_start_4c .. :try_end_9b} :catchall_99

    throw v0

    .line 2339
    :cond_9c
    move-object v9, p5

    .line 2365
    .end local p5    # "options":Landroid/os/Bundle;
    .local v9, "options":Landroid/os/Bundle;
    :goto_9d
    :try_start_9d
    invoke-virtual {p4, p1}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 2366
    invoke-virtual {p4, p1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 2367
    invoke-interface {v1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2368
    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    .line 2369
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v8
    :try_end_b7
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_b7} :catch_c8

    .line 2367
    move-object v3, p3

    move-object v7, p4

    .end local p3    # "appTask":Landroid/app/IAppTask;
    .end local p4    # "intent":Landroid/content/Intent;
    .local v3, "appTask":Landroid/app/IAppTask;
    .local v7, "intent":Landroid/content/Intent;
    :try_start_b9
    invoke-interface/range {v3 .. v9}, Landroid/app/IAppTask;->startActivity(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p3

    .line 2370
    .local p3, "result":I
    invoke-direct {p0, p3, v9}, Landroid/app/Instrumentation;->notifyStartActivityResult(ILandroid/os/Bundle;)V

    .line 2371
    invoke-static {p3, v7}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_c3
    .catch Landroid/os/RemoteException; {:try_start_b9 .. :try_end_c3} :catch_c5

    .line 2374
    .end local p3    # "result":I
    nop

    .line 2375
    return-void

    .line 2372
    :catch_c5
    move-exception v0

    move-object p3, v0

    goto :goto_cc

    .end local v3    # "appTask":Landroid/app/IAppTask;
    .end local v7    # "intent":Landroid/content/Intent;
    .local p3, "appTask":Landroid/app/IAppTask;
    .restart local p4    # "intent":Landroid/content/Intent;
    :catch_c8
    move-exception v0

    move-object v3, p3

    move-object v7, p4

    move-object p3, v0

    .line 2373
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v3    # "appTask":Landroid/app/IAppTask;
    .restart local v7    # "intent":Landroid/content/Intent;
    .local p3, "e":Landroid/os/RemoteException;
    :goto_cc
    new-instance p4, Ljava/lang/RuntimeException;

    const-string p5, "Failure from system"

    invoke-direct {p4, p5, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4
.end method

.method public whitelist finish(ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "resultCode"    # I
    .param p2, "results"    # Landroid/os/Bundle;

    .line 286
    iget-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    if-eqz v0, :cond_7

    .line 287
    invoke-virtual {p0}, Landroid/app/Instrumentation;->endPerformanceSnapshot()V

    .line 289
    :cond_7
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    if-eqz v0, :cond_18

    .line 290
    if-nez p2, :cond_13

    .line 291
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object p2, v0

    .line 293
    :cond_13
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 295
    :cond_18
    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0}, Landroid/app/UiAutomation;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 296
    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0}, Landroid/app/UiAutomation;->disconnect()V

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    .line 299
    :cond_2c
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityThread;->finishInstrumentation(ILandroid/os/Bundle;)V

    .line 300
    return-void
.end method

.method public whitelist getAllocCounts()Landroid/os/Bundle;
    .registers 5

    .line 1850
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1851
    .local v0, "results":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocCount()I

    move-result v1

    int-to-long v1, v1

    const-string/jumbo v3, "global_alloc_count"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1852
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v1

    int-to-long v1, v1

    const-string/jumbo v3, "global_alloc_size"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1853
    invoke-static {}, Landroid/os/Debug;->getGlobalFreedCount()I

    move-result v1

    int-to-long v1, v1

    const-string/jumbo v3, "global_freed_count"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1854
    invoke-static {}, Landroid/os/Debug;->getGlobalFreedSize()I

    move-result v1

    int-to-long v1, v1

    const-string/jumbo v3, "global_freed_size"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1855
    invoke-static {}, Landroid/os/Debug;->getGlobalGcInvocationCount()I

    move-result v1

    int-to-long v1, v1

    const-string v3, "gc_invocation_count"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1856
    return-object v0
.end method

.method public whitelist getBinderCounts()Landroid/os/Bundle;
    .registers 5

    .line 1864
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1865
    .local v0, "results":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Debug;->getBinderSentTransactions()I

    move-result v1

    int-to-long v1, v1

    const-string/jumbo v3, "sent_transactions"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1866
    invoke-static {}, Landroid/os/Debug;->getBinderReceivedTransactions()I

    move-result v1

    int-to-long v1, v1

    const-string/jumbo v3, "received_transactions"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1867
    return-object v0
.end method

.method public whitelist getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 349
    iget-object v0, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getContext()Landroid/content/Context;
    .registers 2

    .line 340
    iget-object v0, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getProcessName()Ljava/lang/String;
    .registers 2

    .line 377
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTargetContext()Landroid/content/Context;
    .registers 2

    .line 365
    iget-object v0, p0, Landroid/app/Instrumentation;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getUiAutomation()Landroid/app/UiAutomation;
    .registers 2

    .line 2501
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->getUiAutomation(I)Landroid/app/UiAutomation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUiAutomation(I)Landroid/app/UiAutomation;
    .registers 11
    .param p1, "flags"    # I

    .line 2540
    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0}, Landroid/app/UiAutomation;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 2542
    .local v0, "mustCreateNewAutomation":Z
    :goto_10
    iget-object v1, p0, Landroid/app/Instrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    const/4 v2, 0x0

    if-eqz v1, :cond_87

    .line 2543
    if-nez v0, :cond_22

    iget-object v1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v1}, Landroid/app/UiAutomation;->getFlags()I

    move-result v1

    if-ne v1, p1, :cond_22

    .line 2544
    iget-object v1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    return-object v1

    .line 2546
    :cond_22
    if-eqz v0, :cond_32

    .line 2547
    new-instance v1, Landroid/app/UiAutomation;

    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Instrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-direct {v1, v3, v4}, Landroid/app/UiAutomation;-><init>(Landroid/content/Context;Landroid/app/IUiAutomationConnection;)V

    iput-object v1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    goto :goto_37

    .line 2549
    :cond_32
    iget-object v1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v1}, Landroid/app/UiAutomation;->disconnect()V

    .line 2551
    :goto_37
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1e

    if-gt v1, v3, :cond_4d

    .line 2552
    iget-object v1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v1, p1}, Landroid/app/UiAutomation;->connect(I)V

    .line 2553
    iget-object v1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    return-object v1

    .line 2555
    :cond_4d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 2557
    .local v3, "startUptime":J
    :try_start_51
    iget-object v1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    const-wide/32 v5, 0xea60

    invoke-virtual {v1, p1, v5, v6}, Landroid/app/UiAutomation;->connectWithTimeout(IJ)V

    .line 2558
    iget-object v1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;
    :try_end_5b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_51 .. :try_end_5b} :catch_5c

    return-object v1

    .line 2559
    :catch_5c
    move-exception v1

    .line 2560
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 2561
    .local v5, "waited":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to connect to UiAutomation. Waited for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Instrumentation"

    invoke-static {v8, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2562
    iget-object v7, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v7}, Landroid/app/UiAutomation;->destroy()V

    .line 2563
    iput-object v2, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    .line 2566
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    .end local v3    # "startUptime":J
    .end local v5    # "waited":J
    :cond_87
    return-object v2
.end method

.method final greylist-max-o init(Landroid/app/ActivityThread;Landroid/content/Context;Landroid/content/Context;Landroid/content/ComponentName;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;)V
    .registers 8
    .param p1, "thread"    # Landroid/app/ActivityThread;
    .param p2, "instrContext"    # Landroid/content/Context;
    .param p3, "appContext"    # Landroid/content/Context;
    .param p4, "component"    # Landroid/content/ComponentName;
    .param p5, "watcher"    # Landroid/app/IInstrumentationWatcher;
    .param p6, "uiAutomationConnection"    # Landroid/app/IUiAutomationConnection;

    .line 2381
    iput-object p1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    .line 2382
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    .line 2383
    iput-object p2, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    .line 2384
    iput-object p3, p0, Landroid/app/Instrumentation;->mAppContext:Landroid/content/Context;

    .line 2385
    iput-object p4, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    .line 2386
    iput-object p5, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    .line 2387
    iput-object p6, p0, Landroid/app/Instrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 2388
    return-void
.end method

.method public whitelist invokeContextMenuAction(Landroid/app/Activity;II)Z
    .registers 9
    .param p1, "targetActivity"    # Landroid/app/Activity;
    .param p2, "id"    # I
    .param p3, "flag"    # I

    .line 1090
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 1096
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1097
    .local v0, "downEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 1100
    invoke-virtual {p0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 1102
    :try_start_11
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_19} :catch_31

    .line 1106
    nop

    .line 1108
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1109
    .local v1, "upEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 1112
    invoke-virtual {p0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 1136
    new-instance v2, Landroid/app/Instrumentation$1ContextMenuRunnable;

    invoke-direct {v2, p0, p1, p2, p3}, Landroid/app/Instrumentation$1ContextMenuRunnable;-><init>(Landroid/app/Instrumentation;Landroid/app/Activity;II)V

    .line 1137
    .local v2, "cmr":Landroid/app/Instrumentation$1ContextMenuRunnable;
    invoke-virtual {p0, v2}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 1138
    iget-boolean v3, v2, Landroid/app/Instrumentation$1ContextMenuRunnable;->returnValue:Z

    return v3

    .line 1103
    .end local v1    # "upEvent":Landroid/view/KeyEvent;
    .end local v2    # "cmr":Landroid/app/Instrumentation$1ContextMenuRunnable;
    :catch_31
    move-exception v2

    .line 1104
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "Instrumentation"

    const-string v4, "Could not sleep for long press timeout"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1105
    return v1
.end method

.method public whitelist invokeMenuActionSync(Landroid/app/Activity;II)Z
    .registers 6
    .param p1, "targetActivity"    # Landroid/app/Activity;
    .param p2, "id"    # I
    .param p3, "flag"    # I

    .line 1074
    new-instance v0, Landroid/app/Instrumentation$1MenuRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/app/Instrumentation$1MenuRunnable;-><init>(Landroid/app/Instrumentation;Landroid/app/Activity;II)V

    .line 1075
    .local v0, "mr":Landroid/app/Instrumentation$1MenuRunnable;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 1076
    iget-boolean v1, v0, Landroid/app/Instrumentation$1MenuRunnable;->returnValue:Z

    return v1
.end method

.method public blacklist isInstrumenting()Z
    .registers 2

    .line 177
    iget-object v0, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 178
    const/4 v0, 0x0

    return v0

    .line 180
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isProfiling()Z
    .registers 2

    .line 386
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->isProfiling()Z

    move-result v0

    return v0
.end method

.method blacklist isSdkSandboxAllowedToStartActivities()Z
    .registers 3

    .line 487
    invoke-static {}, Landroid/os/Process;->isSdkSandbox()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-boolean v0, v0, Landroid/app/ActivityThread$AppBindData;->isSdkInSandbox:Z

    if-eqz v0, :cond_2c

    .line 491
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 492
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 493
    const-string v1, "android.permission.START_ACTIVITIES_FROM_SDK_SANDBOX"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    .line 487
    :goto_2d
    return v0
.end method

.method public whitelist newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;
    .registers 33
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "application"    # Landroid/app/Application;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "info"    # Landroid/content/pm/ActivityInfo;
    .param p7, "title"    # Ljava/lang/CharSequence;
    .param p8, "parent"    # Landroid/app/Activity;
    .param p9, "id"    # Ljava/lang/String;
    .param p10, "lastNonConfigurationInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/Context;",
            "Landroid/os/IBinder;",
            "Landroid/app/Application;",
            "Landroid/content/Intent;",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/lang/CharSequence;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/app/Activity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1410
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    .line 1411
    .local v1, "activity":Landroid/app/Activity;
    const/4 v3, 0x0

    .line 1413
    .local v3, "aThread":Landroid/app/ActivityThread;
    if-nez p4, :cond_11

    .line 1414
    new-instance v0, Landroid/app/Application;

    invoke-direct {v0}, Landroid/app/Application;-><init>()V

    move-object v7, v0

    .end local p4    # "application":Landroid/app/Application;
    .local v0, "application":Landroid/app/Application;
    goto :goto_13

    .line 1413
    .end local v0    # "application":Landroid/app/Application;
    .restart local p4    # "application":Landroid/app/Application;
    :cond_11
    move-object/from16 v7, p4

    .line 1416
    .end local p4    # "application":Landroid/app/Application;
    .local v7, "application":Landroid/app/Application;
    :goto_13
    move-object/from16 v13, p10

    check-cast v13, Landroid/app/Activity$NonConfigurationInstances;

    new-instance v14, Landroid/content/res/Configuration;

    invoke-direct {v14}, Landroid/content/res/Configuration;-><init>()V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v6, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v4, p0

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v1 .. v21}, Landroid/app/Activity;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 1422
    return-object v1
.end method

.method public whitelist newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .registers 6
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1441
    if-eqz p3, :cond_11

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1442
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 1443
    .local v0, "pkg":Ljava/lang/String;
    :goto_12
    invoke-direct {p0, v0}, Landroid/app/Instrumentation;->getFactory(Ljava/lang/String;)Landroid/app/AppComponentFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/app/AppComponentFactory;->instantiateActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v1

    return-object v1
.end method

.method public whitelist newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
    .registers 5
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1346
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/Instrumentation;->getFactory(Ljava/lang/String;)Landroid/app/AppComponentFactory;

    move-result-object v0

    .line 1347
    invoke-virtual {v0, p1, p2}, Landroid/app/AppComponentFactory;->instantiateApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;

    move-result-object v0

    .line 1348
    .local v0, "app":Landroid/app/Application;
    invoke-virtual {v0, p3}, Landroid/app/Application;->attach(Landroid/content/Context;)V

    .line 1349
    return-object v0
.end method

.method public whitelist onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "arguments"    # Landroid/os/Bundle;

    .line 200
    return-void
.end method

.method public whitelist onDestroy()V
    .registers 1

    .line 324
    return-void
.end method

.method public whitelist onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onStart()V
    .registers 1

    .line 225
    return-void
.end method

.method public whitelist removeMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .registers 4
    .param p1, "monitor"    # Landroid/app/Instrumentation$ActivityMonitor;

    .line 1035
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1036
    :try_start_3
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1037
    monitor-exit v0

    .line 1038
    return-void

    .line 1037
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist resetInTouchMode()V
    .registers 3

    .line 434
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110131

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 436
    .local v0, "defaultInTouchMode":Z
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->setInTouchMode(Z)V

    .line 437
    return-void
.end method

.method public whitelist runOnMainSync(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "runner"    # Ljava/lang/Runnable;

    .line 473
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 474
    new-instance v0, Landroid/app/Instrumentation$SyncRunnable;

    invoke-direct {v0, p1}, Landroid/app/Instrumentation$SyncRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 475
    .local v0, "sr":Landroid/app/Instrumentation$SyncRunnable;
    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 476
    invoke-virtual {v0}, Landroid/app/Instrumentation$SyncRunnable;->waitForComplete()V

    .line 477
    return-void
.end method

.method public whitelist sendCharacterSync(I)V
    .registers 2
    .param p1, "keyCode"    # I

    .line 1257
    invoke-virtual {p0, p1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    .line 1258
    return-void
.end method

.method public whitelist sendKeyDownUpSync(I)V
    .registers 4
    .param p1, "keyCode"    # I

    .line 1243
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 1244
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 1245
    return-void
.end method

.method public whitelist sendKeySync(Landroid/view/KeyEvent;)V
    .registers 10
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1179
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 1181
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    .line 1182
    .local v0, "downTime":J
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    .line 1183
    .local v2, "eventTime":J
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v4

    .line 1184
    .local v4, "source":I
    if-nez v4, :cond_13

    .line 1185
    const/16 v4, 0x101

    .line 1187
    :cond_13
    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-nez v7, :cond_1d

    .line 1188
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1190
    :cond_1d
    cmp-long v5, v0, v5

    if-nez v5, :cond_22

    .line 1191
    move-wide v0, v2

    .line 1193
    :cond_22
    new-instance v5, Landroid/view/KeyEvent;

    invoke-direct {v5, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 1194
    .local v5, "newEvent":Landroid/view/KeyEvent;
    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/KeyEvent;->setTime(JJ)V

    .line 1195
    invoke-virtual {v5, v4}, Landroid/view/KeyEvent;->setSource(I)V

    .line 1196
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    or-int/lit8 v6, v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/KeyEvent;->setFlags(I)V

    .line 1197
    invoke-direct {p0, v5}, Landroid/app/Instrumentation;->setDisplayIfNeeded(Landroid/view/KeyEvent;)V

    .line 1199
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v5, v7}, Landroid/hardware/input/InputManagerGlobal;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1201
    return-void
.end method

.method public whitelist sendPointerSync(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1278
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 1279
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_10

    .line 1280
    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1283
    :cond_10
    invoke-direct {p0, p1}, Landroid/app/Instrumentation;->syncInputTransactionsAndInjectEventIntoSelf(Landroid/view/MotionEvent;)V

    .line 1284
    return-void
.end method

.method public whitelist sendStatus(ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "resultCode"    # I
    .param p2, "results"    # Landroid/os/Bundle;

    .line 252
    iget-object v0, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    if-eqz v0, :cond_10

    .line 254
    :try_start_4
    iget-object v0, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    iget-object v1, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IInstrumentationWatcher;->instrumentationStatus(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 258
    goto :goto_10

    .line 256
    :catch_c
    move-exception v0

    .line 257
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    .line 260
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void
.end method

.method public whitelist sendStringSync(Ljava/lang/String;)V
    .registers 9
    .param p1, "text"    # Ljava/lang/String;

    .line 1149
    if-nez p1, :cond_3

    .line 1150
    return-void

    .line 1152
    :cond_3
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 1154
    .local v0, "keyCharacterMap":Landroid/view/KeyCharacterMap;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v1

    .line 1156
    .local v1, "events":[Landroid/view/KeyEvent;
    if-eqz v1, :cond_27

    .line 1157
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    array-length v3, v1

    if-ge v2, v3, :cond_27

    .line 1163
    aget-object v3, v1, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 1157
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1166
    .end local v2    # "i":I
    :cond_27
    return-void
.end method

.method public whitelist sendTrackballEventSync(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1324
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 1325
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1326
    const v0, 0x10004

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1328
    :cond_10
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManagerGlobal;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1330
    return-void
.end method

.method public whitelist setAutomaticPerformanceSnapshots()V
    .registers 2

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    .line 304
    new-instance v0, Landroid/os/PerformanceCollector;

    invoke-direct {v0}, Landroid/os/PerformanceCollector;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mPerformanceCollector:Landroid/os/PerformanceCollector;

    .line 305
    return-void
.end method

.method public whitelist setInTouchMode(Z)V
    .registers 3
    .param p1, "inTouch"    # Z

    .line 423
    :try_start_0
    const-string/jumbo v0, "window"

    .line 424
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 423
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 424
    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->setInTouchModeOnAllDisplays(Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 427
    goto :goto_10

    .line 425
    :catch_f
    move-exception v0

    .line 428
    :goto_10
    return-void
.end method

.method public whitelist start()V
    .registers 4

    .line 208
    iget-object v0, p0, Landroid/app/Instrumentation;->mRunner:Ljava/lang/Thread;

    if-nez v0, :cond_2c

    .line 211
    new-instance v0, Landroid/app/Instrumentation$InstrumentationThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/Instrumentation$InstrumentationThread;-><init>(Landroid/app/Instrumentation;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/Instrumentation;->mRunner:Ljava/lang/Thread;

    .line 212
    iget-object v0, p0, Landroid/app/Instrumentation;->mRunner:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 213
    return-void

    .line 209
    :cond_2c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Instrumentation already started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 558
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Instrumentation;->startActivitySync(Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public whitelist startActivitySync(Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/Activity;
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 587
    sget-boolean v0, Landroid/app/Instrumentation;->DEBUG_START_ACTIVITY:Z

    if-eqz v0, :cond_2c

    .line 588
    const-string v0, "Instrumentation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startActivity: intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " options="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 590
    :cond_2c
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 593
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 594
    :try_start_32
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object p1, v1

    .line 597
    invoke-virtual {p0}, Landroid/app/Instrumentation;->isSdkSandboxAllowedToStartActivities()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 598
    invoke-direct {p0, p1}, Landroid/app/Instrumentation;->resolveActivityInfoForCtsInSandbox(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    goto :goto_50

    .line 599
    :cond_43
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    :goto_50
    nop

    .line 600
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_da

    .line 603
    iget-object v2, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getProcessName()Ljava/lang/String;

    move-result-object v2

    .line 604
    .local v2, "myProc":Ljava/lang/String;
    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 612
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 614
    new-instance v3, Landroid/app/Instrumentation$ActivityWaiter;

    invoke-direct {v3, p1}, Landroid/app/Instrumentation$ActivityWaiter;-><init>(Landroid/content/Intent;)V

    .line 616
    .local v3, "aw":Landroid/app/Instrumentation$ActivityWaiter;
    iget-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    if-nez v4, :cond_7f

    .line 617
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    .line 619
    :cond_7f
    iget-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_8b
    .catchall {:try_start_32 .. :try_end_8b} :catchall_f3

    .line 625
    :cond_8b
    :try_start_8b
    iget-object v4, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_90
    .catch Ljava/lang/InterruptedException; {:try_start_8b .. :try_end_90} :catch_91
    .catchall {:try_start_8b .. :try_end_90} :catchall_f3

    .line 627
    goto :goto_92

    .line 626
    :catch_91
    move-exception v4

    .line 628
    :goto_92
    :try_start_92
    iget-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8b

    .line 629
    iget-object v4, v3, Landroid/app/Instrumentation$ActivityWaiter;->activity:Landroid/app/Activity;

    .line 630
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "myProc":Ljava/lang/String;
    .end local v3    # "aw":Landroid/app/Instrumentation$ActivityWaiter;
    .local v4, "activity":Landroid/app/Activity;
    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_92 .. :try_end_9d} :catchall_f3

    .line 636
    :try_start_9d
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 637
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->syncInputTransactions(Z)V
    :try_end_a5
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_a5} :catch_a6

    .line 640
    goto :goto_aa

    .line 638
    :catch_a6
    move-exception v0

    .line 639
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 641
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_aa
    return-object v4

    .line 607
    .end local v4    # "activity":Landroid/app/Activity;
    .restart local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "myProc":Ljava/lang/String;
    :cond_ab
    :try_start_ab
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent in process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " resolved to different process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/Instrumentation;
    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "options":Landroid/os/Bundle;
    throw v3

    .line 601
    .end local v2    # "myProc":Ljava/lang/String;
    .restart local p0    # "this":Landroid/app/Instrumentation;
    .restart local p1    # "intent":Landroid/content/Intent;
    .restart local p2    # "options":Landroid/os/Bundle;
    :cond_da
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to resolve activity for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/Instrumentation;
    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "options":Landroid/os/Bundle;
    throw v2

    .line 630
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local p0    # "this":Landroid/app/Instrumentation;
    .restart local p1    # "intent":Landroid/content/Intent;
    .restart local p2    # "options":Landroid/os/Bundle;
    :catchall_f3
    move-exception v1

    monitor-exit v0
    :try_end_f5
    .catchall {:try_start_ab .. :try_end_f5} :catchall_f3

    throw v1
.end method

.method public whitelist startAllocCounting()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1805
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1806
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 1807
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1809
    invoke-static {}, Landroid/os/Debug;->resetAllCounts()V

    .line 1812
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 1813
    return-void
.end method

.method public whitelist startPerformanceSnapshot()V
    .registers 3

    .line 308
    invoke-virtual {p0}, Landroid/app/Instrumentation;->isProfiling()Z

    move-result v0

    if-nez v0, :cond_c

    .line 309
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerformanceCollector:Landroid/os/PerformanceCollector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PerformanceCollector;->beginSnapshot(Ljava/lang/String;)V

    .line 311
    :cond_c
    return-void
.end method

.method public whitelist startProfiling()V
    .registers 4

    .line 395
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->isProfiling()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 396
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getProfileFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 398
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x800000

    invoke-static {v1, v2}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 400
    .end local v0    # "file":Ljava/io/File;
    :cond_23
    return-void
.end method

.method public whitelist stopAllocCounting()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1822
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1823
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 1824
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1825
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 1826
    return-void
.end method

.method public whitelist stopProfiling()V
    .registers 2

    .line 406
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->isProfiling()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 407
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 409
    :cond_b
    return-void
.end method

.method public whitelist waitForIdle(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "recipient"    # Ljava/lang/Runnable;

    .line 447
    iget-object v0, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    new-instance v1, Landroid/app/Instrumentation$Idler;

    invoke-direct {v1, p1}, Landroid/app/Instrumentation$Idler;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 448
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/app/Instrumentation$EmptyRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/Instrumentation$EmptyRunnable;-><init>(Landroid/app/Instrumentation-IA;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 449
    return-void
.end method

.method public whitelist waitForIdleSync()V
    .registers 5

    .line 457
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 458
    new-instance v0, Landroid/app/Instrumentation$Idler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/Instrumentation$Idler;-><init>(Ljava/lang/Runnable;)V

    .line 459
    .local v0, "idler":Landroid/app/Instrumentation$Idler;
    iget-object v2, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    invoke-virtual {v2, v0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 460
    iget-object v2, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Landroid/app/Instrumentation$EmptyRunnable;

    invoke-direct {v3, v1}, Landroid/app/Instrumentation$EmptyRunnable;-><init>(Landroid/app/Instrumentation-IA;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 461
    invoke-virtual {v0}, Landroid/app/Instrumentation$Idler;->waitForIdle()V

    .line 462
    return-void
.end method

.method public whitelist waitForMonitor(Landroid/app/Instrumentation$ActivityMonitor;)Landroid/app/Activity;
    .registers 5
    .param p1, "monitor"    # Landroid/app/Instrumentation$ActivityMonitor;

    .line 1000
    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityMonitor;->waitForActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1001
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1002
    :try_start_7
    iget-object v2, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1003
    monitor-exit v1

    .line 1004
    return-object v0

    .line 1003
    :catchall_e
    move-exception v2

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v2
.end method

.method public whitelist waitForMonitorWithTimeout(Landroid/app/Instrumentation$ActivityMonitor;J)Landroid/app/Activity;
    .registers 7
    .param p1, "monitor"    # Landroid/app/Instrumentation$ActivityMonitor;
    .param p2, "timeOut"    # J

    .line 1019
    invoke-virtual {p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;->waitForActivityWithTimeout(J)Landroid/app/Activity;

    move-result-object v0

    .line 1020
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1021
    :try_start_7
    iget-object v2, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1022
    monitor-exit v1

    .line 1023
    return-object v0

    .line 1022
    :catchall_e
    move-exception v2

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v2
.end method
