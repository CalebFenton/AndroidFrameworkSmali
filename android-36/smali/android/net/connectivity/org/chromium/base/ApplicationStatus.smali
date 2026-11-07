.class public Landroid/net/connectivity/org/chromium/base/ApplicationStatus;
.super Ljava/lang/Object;
.source "ApplicationStatus.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "base::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/ApplicationStatus$WindowFocusChangedListener;,
        Landroid/net/connectivity/org/chromium/base/ApplicationStatus$WindowCallbackProxy;,
        Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;,
        Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityStateListener;,
        Landroid/net/connectivity/org/chromium/base/ApplicationStatus$TaskVisibilityListener;,
        Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ApplicationStateListener;,
        Landroid/net/connectivity/org/chromium/base/ApplicationStatus$Natives;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist CACHE_ACTIVITY_TASKID_KEY:Ljava/lang/String; = "cache_activity_taskid_enabled"

.field private static final blacklist TOOLBAR_CALLBACK_WRAPPER_CLASS:Ljava/lang/String; = "androidx.appcompat.app.ToolbarActionBar$ToolbarCallbackWrapper"

.field private static blacklist sActivity:Landroid/app/Activity;

.field private static final blacklist sActivityInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist sActivityTaskId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sApplicationStateListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/org/chromium/base/ObserverList<",
            "Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ApplicationStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sCurrentApplicationState:I

.field private static blacklist sGeneralActivityStateListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/org/chromium/base/ObserverList<",
            "Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sNativeApplicationStateListener:Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ApplicationStateListener;

.field private static blacklist sTaskVisibilityListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/org/chromium/base/ObserverList<",
            "Landroid/net/connectivity/org/chromium/base/ApplicationStatus$TaskVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sWindowFocusListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/org/chromium/base/ObserverList<",
            "Landroid/net/connectivity/org/chromium/base/ApplicationStatus$WindowFocusChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsActivity()Landroid/app/Activity;
    .registers 1

    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsNativeApplicationStateListener()Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ApplicationStateListener;
    .registers 1

    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sNativeApplicationStateListener:Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ApplicationStateListener;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsWindowFocusListeners()Landroid/net/connectivity/org/chromium/base/ObserverList;
    .registers 1

    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sWindowFocusListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsActivity(Landroid/app/Activity;)V
    .registers 1

    sput-object p0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivity:Landroid/app/Activity;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsNativeApplicationStateListener(Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ApplicationStateListener;)V
    .registers 1

    sput-object p0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sNativeApplicationStateListener:Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ApplicationStateListener;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smonStateChange(Landroid/app/Activity;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->onStateChange(Landroid/app/Activity;I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    nop

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivityInfo:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivityTaskId:Ljava/util/Map;

    .line 91
    const/4 v0, 0x0

    sput v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sCurrentApplicationState:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist cleanupInvalidTask(I)Z
    .registers 5
    .param p0, "taskId"    # I

    .line 604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 605
    .local v0, "inaccessibleActivities":Ljava/util/List;, "Ljava/util/List<Landroid/app/Activity;>;"
    sget-object v1, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivityTaskId:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 606
    .local v2, "activityTaskInfo":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/app/Activity;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p0, v3, :cond_30

    .line 607
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    .end local v2    # "activityTaskInfo":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/app/Activity;Ljava/lang/Integer;>;"
    :cond_30
    goto :goto_f

    .line 610
    :cond_31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 611
    .local v2, "activity":Landroid/app/Activity;
    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->onStateChange(Landroid/app/Activity;I)V

    .line 612
    .end local v2    # "activity":Landroid/app/Activity;
    goto :goto_35

    .line 613
    :cond_46
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method static blacklist createWindowCallbackProxy(Landroid/app/Activity;Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .line 337
    const-class v0, Landroid/view/Window$Callback;

    .line 339
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/view/Window$Callback;

    aput-object v3, v1, v2

    new-instance v2, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$WindowCallbackProxy;

    invoke-direct {v2, p0, p1}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$WindowCallbackProxy;-><init>(Landroid/app/Activity;Landroid/view/Window$Callback;)V

    .line 338
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window$Callback;

    .line 337
    return-object v0
.end method

.method public static blacklist destroyForJUnitTests()V
    .registers 2

    .line 705
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivityInfo:Ljava/util/Map;

    monitor-enter v0

    .line 706
    :try_start_3
    sget-object v1, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sApplicationStateListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    if-eqz v1, :cond_c

    sget-object v1, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sApplicationStateListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/ObserverList;->clear()V

    .line 707
    :cond_c
    sget-object v1, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sGeneralActivityStateListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    if-eqz v1, :cond_15

    sget-object v1, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sGeneralActivityStateListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/ObserverList;->clear()V

    .line 708
    :cond_15
    sget-object v1, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sTaskVisibilityListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    if-eqz v1, :cond_1e

    sget-object v1, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sTaskVisibilityListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/ObserverList;->clear()V

    .line 709
    :cond_1e
    sget-object v1, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivityInfo:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 710
    sget-object v1, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivityTaskId:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 711
    sget-object v1, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sWindowFocusListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    if-eqz v1, :cond_31

    sget-object v1, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sWindowFocusListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/ObserverList;->clear()V

    .line 712
    :cond_31
    const/4 v1, 0x0

    sput v1, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sCurrentApplicationState:I

    .line 713
    const/4 v1, 0x0

    sput-object v1, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivity:Landroid/app/Activity;

    .line 714
    sput-object v1, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sNativeApplicationStateListener:Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ApplicationStateListener;

    .line 715
    monitor-exit v0

    .line 716
    return-void

    .line 715
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method private static blacklist determineApplicationStateLocked()I
    .registers 8

    .line 774
    const/4 v0, 0x0

    .line 775
    .local v0, "hasPausedActivity":Z
    const/4 v1, 0x0

    .line 777
    .local v1, "hasStoppedActivity":Z
    sget-object v2, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivityInfo:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;

    .line 778
    .local v3, "info":Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;
    invoke-virtual {v3}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;->getStatus()I

    move-result v5

    .line 779
    .local v5, "state":I
    const/4 v6, 0x5

    if-eq v5, v4, :cond_27

    if-eq v5, v6, :cond_27

    const/4 v7, 0x6

    if-eq v5, v7, :cond_27

    .line 782
    const/4 v2, 0x1

    return v2

    .line 783
    :cond_27
    if-ne v5, v4, :cond_2b

    .line 784
    const/4 v0, 0x1

    goto :goto_2e

    .line 785
    :cond_2b
    if-ne v5, v6, :cond_2e

    .line 786
    const/4 v1, 0x1

    .line 788
    .end local v3    # "info":Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;
    .end local v5    # "state":I
    :cond_2e
    :goto_2e
    goto :goto_c

    .line 790
    :cond_2f
    if-eqz v0, :cond_33

    const/4 v2, 0x2

    return v2

    .line 791
    :cond_33
    if-eqz v1, :cond_37

    const/4 v2, 0x3

    return v2

    .line 792
    :cond_37
    return v4
.end method

.method public static blacklist getLastTrackedFocusedActivity()Landroid/app/Activity;
    .registers 1

    .line 471
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static blacklist getRunningActivities()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 479
    nop

    .line 480
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivityInfo:Ljava/util/Map;

    monitor-enter v0

    .line 481
    :try_start_4
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivityInfo:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 482
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public static blacklist getStateForActivity(Landroid/app/Activity;)I
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 531
    nop

    .line 532
    const/4 v0, 0x6

    if-nez p0, :cond_5

    return v0

    .line 533
    :cond_5
    sget-object v1, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivityInfo:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;

    .line 534
    .local v1, "info":Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;->getStatus()I

    move-result v0

    :cond_13
    return v0
.end method

.method public static blacklist getStateForApplication()I
    .registers 2

    .line 544
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivityInfo:Ljava/util/Map;

    monitor-enter v0

    .line 545
    :try_start_3
    sget v1, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sCurrentApplicationState:I

    monitor-exit v0

    return v1

    .line 546
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static blacklist getTaskId(Landroid/app/Activity;)I
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;

    .line 222
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->isCachingEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    return v0

    .line 224
    :cond_b
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivityTaskId:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 225
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivityTaskId:Ljava/util/Map;

    monitor-enter v0

    .line 226
    :try_start_16
    sget-object v1, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivityTaskId:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    monitor-exit v0

    goto :goto_28

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_25

    throw v1

    .line 229
    :cond_28
    :goto_28
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivityTaskId:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static blacklist hasVisibleActivities()Z
    .registers 3

    .line 559
    nop

    .line 560
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result v0

    .line 561
    .local v0, "state":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v2, 0x2

    if-ne v0, v2, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_d
    return v1
.end method

.method public static blacklist initialize(Landroid/app/Application;)V
    .registers 3
    .param p0, "application"    # Landroid/app/Application;

    .line 298
    nop

    .line 299
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivityInfo:Ljava/util/Map;

    monitor-enter v0

    .line 300
    const/4 v1, 0x4

    :try_start_5
    sput v1, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sCurrentApplicationState:I

    .line 301
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_19

    .line 303
    new-instance v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$1;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$1;-><init>()V

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->registerWindowFocusChangedListener(Landroid/net/connectivity/org/chromium/base/ApplicationStatus$WindowFocusChangedListener;)V

    .line 319
    new-instance v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$2;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$2;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 333
    return-void

    .line 301
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public static blacklist isCachingEnabled()Z
    .registers 4

    .line 215
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->allowDiskReads()Landroid/net/connectivity/org/chromium/base/StrictModeContext;

    move-result-object v0

    .line 216
    .local v0, "ignored":Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    :try_start_4
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "cache_activity_taskid_enabled"

    .line 217
    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_15

    .line 218
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->close()V

    .line 216
    :cond_14
    return v1

    .line 215
    :catchall_15
    move-exception v1

    if-eqz v0, :cond_20

    :try_start_18
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_20
    :goto_20
    throw v1
.end method

.method public static blacklist isEveryActivityDestroyed()Z
    .registers 1

    .line 572
    nop

    .line 573
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivityInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public static blacklist isInitialized()Z
    .registers 2

    .line 286
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivityInfo:Ljava/util/Map;

    monitor-enter v0

    .line 287
    :try_start_3
    sget v1, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sCurrentApplicationState:I

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 288
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public static blacklist isTaskVisible(I)Z
    .registers 5
    .param p0, "taskId"    # I

    .line 585
    nop

    .line 586
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivityInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 587
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/app/Activity;Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->getTaskId(Landroid/app/Activity;)I

    move-result v2

    if-ne v2, p0, :cond_35

    .line 588
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;

    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;->getStatus()I

    move-result v2

    .line 589
    .local v2, "state":I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_33

    const/4 v3, 0x4

    if-ne v2, v3, :cond_35

    .line 590
    :cond_33
    const/4 v0, 0x1

    return v0

    .line 593
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/app/Activity;Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;>;"
    .end local v2    # "state":I
    :cond_35
    goto :goto_b

    .line 594
    :cond_36
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist onStateChange(Landroid/app/Activity;I)V
    .registers 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "newState"    # I

    .line 393
    nop

    .line 395
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    if-eq p1, v1, :cond_e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_e

    const/4 v0, 0x2

    if-ne p1, v0, :cond_10

    .line 399
    :cond_e
    sput-object p0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivity:Landroid/app/Activity;

    .line 402
    :cond_10
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result v0

    .line 403
    .local v0, "oldApplicationState":I
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->getTaskId(Landroid/app/Activity;)I

    move-result v2

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->isTaskVisible(I)Z

    move-result v2

    .line 406
    .local v2, "oldTaskVisibility":Z
    sget-object v3, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivityInfo:Ljava/util/Map;

    monitor-enter v3

    .line 407
    const/4 v4, 0x0

    if-ne p1, v1, :cond_2d

    .line 408
    nop

    .line 409
    :try_start_23
    sget-object v1, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivityInfo:Ljava/util/Map;

    new-instance v5, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;

    invoke-direct {v5, v4}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;-><init>(Landroid/net/connectivity/org/chromium/base/ApplicationStatus-IA;)V

    invoke-interface {v1, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    :cond_2d
    sget-object v1, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivityInfo:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;

    .line 413
    .local v1, "info":Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;
    invoke-virtual {v1, p1}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;->setStatus(I)V

    .line 417
    const/4 v5, 0x6

    if-ne p1, v5, :cond_46

    .line 418
    sget-object v6, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivityInfo:Ljava/util/Map;

    invoke-interface {v6, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v6, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivity:Landroid/app/Activity;

    if-ne p0, v6, :cond_46

    sput-object v4, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivity:Landroid/app/Activity;

    .line 422
    :cond_46
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->determineApplicationStateLocked()I

    move-result v4

    sput v4, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sCurrentApplicationState:I

    .line 423
    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_23 .. :try_end_4d} :catchall_d6

    .line 426
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;->getListeners()Landroid/net/connectivity/org/chromium/base/ObserverList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/connectivity/org/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_55
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityStateListener;

    .line 427
    .local v4, "listener":Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityStateListener;
    invoke-interface {v4, p0, p1}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityStateListener;->onActivityStateChange(Landroid/app/Activity;I)V

    .line 428
    .end local v4    # "listener":Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityStateListener;
    goto :goto_55

    .line 432
    :cond_65
    sget-object v3, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sGeneralActivityStateListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    if-eqz v3, :cond_7f

    .line 433
    sget-object v3, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sGeneralActivityStateListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v3}, Landroid/net/connectivity/org/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityStateListener;

    .line 434
    .restart local v4    # "listener":Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityStateListener;
    invoke-interface {v4, p0, p1}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityStateListener;->onActivityStateChange(Landroid/app/Activity;I)V

    .line 435
    .end local v4    # "listener":Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityStateListener;
    goto :goto_6f

    .line 438
    :cond_7f
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->getTaskId(Landroid/app/Activity;)I

    move-result v3

    invoke-static {v3}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->isTaskVisible(I)Z

    move-result v4

    .line 439
    .local v4, "taskVisibility":Z
    if-eq v4, v2, :cond_a7

    sget-object v3, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sTaskVisibilityListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    if-eqz v3, :cond_a7

    .line 440
    sget-object v3, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sTaskVisibilityListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v3}, Landroid/net/connectivity/org/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_93
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$TaskVisibilityListener;

    .line 441
    .local v6, "listener":Landroid/net/connectivity/org/chromium/base/ApplicationStatus$TaskVisibilityListener;
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->getTaskId(Landroid/app/Activity;)I

    move-result v7

    invoke-interface {v6, v7, v4}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$TaskVisibilityListener;->onTaskVisibilityChanged(IZ)V

    .line 442
    .end local v6    # "listener":Landroid/net/connectivity/org/chromium/base/ApplicationStatus$TaskVisibilityListener;
    goto :goto_93

    .line 445
    :cond_a7
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result v6

    .line 446
    .local v6, "applicationState":I
    if-eq v6, v0, :cond_c7

    sget-object v3, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sApplicationStateListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    if-eqz v3, :cond_c7

    .line 447
    sget-object v3, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sApplicationStateListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v3}, Landroid/net/connectivity/org/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ApplicationStateListener;

    .line 448
    .local v7, "listener":Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ApplicationStateListener;
    invoke-interface {v7, v6}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ApplicationStateListener;->onApplicationStateChange(I)V

    .line 449
    .end local v7    # "listener":Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ApplicationStateListener;
    goto :goto_b7

    .line 451
    :cond_c7
    sget-object v7, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivityTaskId:Ljava/util/Map;

    monitor-enter v7

    .line 452
    if-ne p1, v5, :cond_d1

    .line 453
    :try_start_cc
    sget-object v3, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivityTaskId:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    :cond_d1
    monitor-exit v7

    .line 456
    return-void

    .line 455
    :catchall_d3
    move-exception v3

    monitor-exit v7
    :try_end_d5
    .catchall {:try_start_cc .. :try_end_d5} :catchall_d3

    throw v3

    .line 423
    .end local v1    # "info":Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;
    .end local v4    # "taskVisibility":Z
    .end local v6    # "applicationState":I
    :catchall_d6
    move-exception v1

    :try_start_d7
    monitor-exit v3
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_d6

    throw v1
.end method

.method public static blacklist onStateChangeForTesting(Landroid/app/Activity;I)V
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "newState"    # I

    .line 462
    invoke-static {p0, p1}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->onStateChange(Landroid/app/Activity;I)V

    .line 463
    return-void
.end method

.method static blacklist reachesWindowCallback(Landroid/view/Window$Callback;)Z
    .registers 11
    .param p0, "callback"    # Landroid/view/Window$Callback;

    .line 352
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 353
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "androidx.appcompat.app.ToolbarActionBar$ToolbarCallbackWrapper"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_16

    .line 358
    return v2

    .line 360
    :cond_16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 361
    invoke-static {p0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    instance-of v0, v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$WindowCallbackProxy;

    return v0

    .line 364
    :cond_27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2b
    const-class v3, Ljava/lang/Object;

    if-eq v1, v3, :cond_6f

    .line 365
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    move v5, v0

    :goto_35
    if-ge v5, v4, :cond_6a

    aget-object v6, v3, v5

    .line 366
    .local v6, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Landroid/view/Window$Callback;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_67

    .line 367
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v7

    .line 368
    .local v7, "isAccessible":Z
    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 371
    :try_start_4c
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/Window$Callback;
    :try_end_52
    .catch Ljava/lang/IllegalAccessException; {:try_start_4c .. :try_end_52} :catch_62
    .catchall {:try_start_4c .. :try_end_52} :catchall_5d

    .line 375
    .local v8, "fieldCb":Landroid/view/Window$Callback;
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 376
    nop

    .line 377
    invoke-static {v8}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->reachesWindowCallback(Landroid/view/Window$Callback;)Z

    move-result v9

    if-eqz v9, :cond_67

    .line 378
    return v2

    .line 375
    .end local v8    # "fieldCb":Landroid/view/Window$Callback;
    :catchall_5d
    move-exception v0

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 376
    throw v0

    .line 372
    :catch_62
    move-exception v8

    .line 375
    .local v8, "ex":Ljava/lang/IllegalAccessException;
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 373
    nop

    .line 365
    .end local v6    # "f":Ljava/lang/reflect/Field;
    .end local v7    # "isAccessible":Z
    .end local v8    # "ex":Ljava/lang/IllegalAccessException;
    :cond_67
    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    .line 364
    :cond_6a
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_2b

    .line 383
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6f
    return v0
.end method

.method public static blacklist registerApplicationStateListener(Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ApplicationStateListener;)V
    .registers 2
    .param p0, "listener"    # Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ApplicationStateListener;

    .line 681
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sApplicationStateListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    if-nez v0, :cond_b

    .line 682
    new-instance v0, Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/ObserverList;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sApplicationStateListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    .line 684
    :cond_b
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sApplicationStateListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v0, p0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 685
    return-void
.end method

.method public static blacklist registerStateListenerForActivity(Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityStateListener;Landroid/app/Activity;)V
    .registers 4
    .param p0, "listener"    # Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityStateListener;
    .param p1, "activity"    # Landroid/app/Activity;

    .line 643
    nop

    .line 644
    nop

    .line 646
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivityInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;

    .line 647
    .local v0, "info":Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;
    nop

    .line 651
    nop

    .line 652
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;->getListeners()Landroid/net/connectivity/org/chromium/base/ObserverList;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 653
    return-void
.end method

.method public static blacklist registerStateListenerForAllActivities(Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityStateListener;)V
    .registers 2
    .param p0, "listener"    # Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityStateListener;

    .line 623
    nop

    .line 624
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sGeneralActivityStateListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    if-nez v0, :cond_c

    .line 625
    new-instance v0, Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/ObserverList;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sGeneralActivityStateListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    .line 627
    :cond_c
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sGeneralActivityStateListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v0, p0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 628
    return-void
.end method

.method public static blacklist registerTaskVisibilityListener(Landroid/net/connectivity/org/chromium/base/ApplicationStatus$TaskVisibilityListener;)V
    .registers 2
    .param p0, "listener"    # Landroid/net/connectivity/org/chromium/base/ApplicationStatus$TaskVisibilityListener;

    .line 193
    nop

    .line 194
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sTaskVisibilityListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    if-nez v0, :cond_c

    new-instance v0, Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/ObserverList;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sTaskVisibilityListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    .line 195
    :cond_c
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sTaskVisibilityListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v0, p0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 196
    return-void
.end method

.method private static blacklist registerThreadSafeNativeApplicationStateListener()V
    .registers 1

    .line 742
    new-instance v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$3;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$3;-><init>()V

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 759
    return-void
.end method

.method public static blacklist registerWindowFocusChangedListener(Landroid/net/connectivity/org/chromium/base/ApplicationStatus$WindowFocusChangedListener;)V
    .registers 2
    .param p0, "listener"    # Landroid/net/connectivity/org/chromium/base/ApplicationStatus$WindowFocusChangedListener;

    .line 170
    nop

    .line 171
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sWindowFocusListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    if-nez v0, :cond_c

    new-instance v0, Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/ObserverList;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sWindowFocusListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    .line 172
    :cond_c
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sWindowFocusListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v0, p0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 173
    return-void
.end method

.method public static blacklist resetActivitiesForInstrumentationTests()V
    .registers 4

    .line 721
    nop

    .line 723
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivityInfo:Ljava/util/Map;

    monitor-enter v0

    .line 725
    :try_start_4
    new-instance v1, Ljava/util/HashSet;

    sget-object v2, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivityInfo:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 726
    .local v2, "activity":Landroid/app/Activity;
    nop

    .line 729
    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->onStateChangeForTesting(Landroid/app/Activity;I)V

    .line 730
    .end local v2    # "activity":Landroid/app/Activity;
    goto :goto_13

    .line 731
    :cond_25
    monitor-exit v0

    .line 732
    return-void

    .line 731
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public static blacklist setCachingEnabled(Z)V
    .registers 3
    .param p0, "enabled"    # Z

    .line 210
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 211
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "cache_activity_taskid_enabled"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 212
    return-void
.end method

.method public static blacklist unregisterActivityStateListener(Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityStateListener;)V
    .registers 5
    .param p0, "listener"    # Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityStateListener;

    .line 662
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sGeneralActivityStateListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    if-eqz v0, :cond_9

    .line 663
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sGeneralActivityStateListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v0, p0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 667
    :cond_9
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivityInfo:Ljava/util/Map;

    monitor-enter v0

    .line 668
    :try_start_c
    sget-object v1, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sActivityInfo:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;

    .line 669
    .local v2, "info":Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;
    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;->getListeners()Landroid/net/connectivity/org/chromium/base/ObserverList;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 670
    nop

    .end local v2    # "info":Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;
    goto :goto_16

    .line 671
    :cond_2b
    monitor-exit v0

    .line 672
    return-void

    .line 671
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public static blacklist unregisterApplicationStateListener(Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ApplicationStateListener;)V
    .registers 2
    .param p0, "listener"    # Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ApplicationStateListener;

    .line 694
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sApplicationStateListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    if-nez v0, :cond_5

    return-void

    .line 695
    :cond_5
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sApplicationStateListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v0, p0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 696
    return-void
.end method

.method public static blacklist unregisterTaskVisibilityListener(Landroid/net/connectivity/org/chromium/base/ApplicationStatus$TaskVisibilityListener;)V
    .registers 2
    .param p0, "listener"    # Landroid/net/connectivity/org/chromium/base/ApplicationStatus$TaskVisibilityListener;

    .line 205
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sTaskVisibilityListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    if-nez v0, :cond_5

    return-void

    .line 206
    :cond_5
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sTaskVisibilityListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v0, p0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public static blacklist unregisterWindowFocusChangedListener(Landroid/net/connectivity/org/chromium/base/ApplicationStatus$WindowFocusChangedListener;)V
    .registers 2
    .param p0, "listener"    # Landroid/net/connectivity/org/chromium/base/ApplicationStatus$WindowFocusChangedListener;

    .line 182
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sWindowFocusListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    if-nez v0, :cond_5

    return-void

    .line 183
    :cond_5
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->sWindowFocusListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v0, p0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 184
    return-void
.end method
