.class public Landroid/app/Instrumentation;
.super Ljava/lang/Object;
.source "Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Instrumentation$ActivityMonitor;,
        Landroid/app/Instrumentation$ActivityResult;,
        Landroid/app/Instrumentation$InstrumentationThread;,
        Landroid/app/Instrumentation$EmptyRunnable;,
        Landroid/app/Instrumentation$SyncRunnable;,
        Landroid/app/Instrumentation$ActivityWaiter;,
        Landroid/app/Instrumentation$ActivityGoing;,
        Landroid/app/Instrumentation$Idler;
    }
.end annotation


# static fields
.field public static final REPORT_KEY_IDENTIFIER:Ljava/lang/String; = "id"

.field public static final REPORT_KEY_STREAMRESULT:Ljava/lang/String; = "stream"

.field private static final TAG:Ljava/lang/String; = "Instrumentation"


# instance fields
.field private mActivityMonitors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Instrumentation$ActivityMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private mAppContext:Landroid/content/Context;

.field private mAutomaticPerformanceSnapshots:Z

.field private mComponent:Landroid/content/ComponentName;

.field private mInstrContext:Landroid/content/Context;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mPerfMetrics:Landroid/os/Bundle;

.field private mPerformanceCollector:Landroid/os/PerformanceCollector;

.field private mRunner:Ljava/lang/Thread;

.field private final mSync:Ljava/lang/Object;

.field private mThread:Landroid/app/ActivityThread;

.field private mUiAutomation:Landroid/app/UiAutomation;

.field private mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

.field private mWaitingActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Instrumentation$ActivityWaiter;",
            ">;"
        }
    .end annotation
.end field

.field private mWatcher:Landroid/app/IInstrumentationWatcher;


# direct methods
.method static synthetic -get0(Landroid/app/Instrumentation;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/app/Instrumentation;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/app/Instrumentation;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 82
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    #@b
    .line 83
    iput-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    #@d
    .line 84
    iput-object v1, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    #@f
    .line 93
    const/4 v0, 0x0

    #@10
    iput-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    #@12
    .line 95
    new-instance v0, Landroid/os/Bundle;

    #@14
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@17
    iput-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    #@19
    .line 98
    return-void
.end method

.method private addValue(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "results"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1364
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 1365
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@9
    move-result-object v1

    #@a
    .line 1366
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    #@c
    .line 1367
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@13
    .line 1363
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    return-void

    #@14
    .line 1370
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    #@16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@19
    .line 1371
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@20
    .line 1372
    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@23
    goto :goto_0
.end method

.method public static checkStartActivityResult(ILjava/lang/Object;)V
    .locals 3
    .param p0, "res"    # I
    .param p1, "intent"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1786
    if-ltz p0, :cond_0

    #@2
    .line 1787
    return-void

    #@3
    .line 1790
    :cond_0
    packed-switch p0, :pswitch_data_0

    #@6
    .line 1822
    :pswitch_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Unknown error code "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    .line 1823
    const-string/jumbo v2, " when starting "

    #@1b
    .line 1822
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 1793
    :pswitch_1
    instance-of v0, p1, Landroid/content/Intent;

    #@2d
    if-eqz v0, :cond_1

    #@2f
    move-object v0, p1

    #@30
    check-cast v0, Landroid/content/Intent;

    #@32
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@35
    move-result-object v0

    #@36
    if-eqz v0, :cond_1

    #@38
    .line 1794
    new-instance v0, Landroid/content/ActivityNotFoundException;

    #@3a
    .line 1795
    new-instance v1, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v2, "Unable to find explicit activity class "

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    .line 1796
    check-cast p1, Landroid/content/Intent;

    #@48
    .end local p1    # "intent":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    .line 1795
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    .line 1797
    const-string/jumbo v2, "; have you declared this activity in your AndroidManifest.xml?"

    #@57
    .line 1795
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    .line 1794
    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    #@62
    throw v0

    #@63
    .line 1798
    .restart local p1    # "intent":Ljava/lang/Object;
    :cond_1
    new-instance v0, Landroid/content/ActivityNotFoundException;

    #@65
    .line 1799
    new-instance v1, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v2, "No Activity found to handle "

    #@6d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v1

    #@79
    .line 1798
    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    #@7c
    throw v0

    #@7d
    .line 1801
    :pswitch_2
    new-instance v0, Ljava/lang/SecurityException;

    #@7f
    new-instance v1, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v2, "Not allowed to start activity "

    #@87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v1

    #@8b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v1

    #@8f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v1

    #@93
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@96
    throw v0

    #@97
    .line 1804
    :pswitch_3
    new-instance v0, Landroid/util/AndroidRuntimeException;

    #@99
    .line 1805
    const-string/jumbo v1, "FORWARD_RESULT_FLAG used while also requesting a result"

    #@9c
    .line 1804
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@9f
    throw v0

    #@a0
    .line 1807
    :pswitch_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a2
    .line 1808
    const-string/jumbo v1, "PendingIntent is not an activity"

    #@a5
    .line 1807
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a8
    throw v0

    #@a9
    .line 1810
    :pswitch_5
    new-instance v0, Ljava/lang/SecurityException;

    #@ab
    .line 1811
    new-instance v1, Ljava/lang/StringBuilder;

    #@ad
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b0
    const-string/jumbo v2, "Starting under voice control not allowed for: "

    #@b3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v1

    #@b7
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v1

    #@bb
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v1

    #@bf
    .line 1810
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@c2
    throw v0

    #@c3
    .line 1817
    :pswitch_6
    const-string/jumbo v0, "Instrumentation"

    #@c6
    .line 1818
    const-string/jumbo v1, "Not allowed to start background user activity that shouldn\'t be displayed for all users. Failing silently..."

    #@c9
    .line 1817
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@cc
    .line 1785
    return-void

    #@cd
    .line 1790
    nop

    #@ce
    :pswitch_data_0
    .packed-switch -0x8
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
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

    #@0
    .prologue
    .line 996
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/app/Application;

    #@6
    .line 997
    .local v0, "app":Landroid/app/Application;
    invoke-virtual {v0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V

    #@9
    .line 998
    return-object v0
.end method

.method private postPerformCreate(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 1087
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@2
    if-eqz v3, :cond_1

    #@4
    .line 1088
    iget-object v4, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    #@6
    monitor-enter v4

    #@7
    .line 1089
    :try_start_0
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@9
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@c
    move-result v0

    #@d
    .line 1090
    .local v0, "N":I
    const/4 v2, 0x0

    #@e
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@10
    .line 1091
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@12
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/app/Instrumentation$ActivityMonitor;

    #@18
    .line 1092
    .local v1, "am":Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v1, p1, p1, v3}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1090
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_0

    #@22
    .end local v1    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    :cond_0
    monitor-exit v4

    #@23
    .line 1086
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_1
    return-void

    #@24
    .line 1088
    :catchall_0
    move-exception v3

    #@25
    monitor-exit v4

    #@26
    throw v3
.end method

.method private prePerformCreate(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 1071
    iget-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    #@2
    if-eqz v4, :cond_2

    #@4
    .line 1072
    iget-object v5, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    #@6
    monitor-enter v5

    #@7
    .line 1073
    :try_start_0
    iget-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    #@9
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@c
    move-result v0

    #@d
    .line 1074
    .local v0, "N":I
    const/4 v2, 0x0

    #@e
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@10
    .line 1075
    iget-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    #@12
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/app/Instrumentation$ActivityWaiter;

    #@18
    .line 1076
    .local v1, "aw":Landroid/app/Instrumentation$ActivityWaiter;
    iget-object v3, v1, Landroid/app/Instrumentation$ActivityWaiter;->intent:Landroid/content/Intent;

    #@1a
    .line 1077
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v3, v4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_0

    #@24
    .line 1078
    iput-object p1, v1, Landroid/app/Instrumentation$ActivityWaiter;->activity:Landroid/app/Activity;

    #@26
    .line 1079
    iget-object v4, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    #@28
    new-instance v6, Landroid/app/Instrumentation$ActivityGoing;

    #@2a
    invoke-direct {v6, p0, v1}, Landroid/app/Instrumentation$ActivityGoing;-><init>(Landroid/app/Instrumentation;Landroid/app/Instrumentation$ActivityWaiter;)V

    #@2d
    invoke-virtual {v4, v6}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 1074
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@32
    goto :goto_0

    #@33
    .end local v1    # "aw":Landroid/app/Instrumentation$ActivityWaiter;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    monitor-exit v5

    #@34
    .line 1070
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_2
    return-void

    #@35
    .line 1072
    :catchall_0
    move-exception v4

    #@36
    monitor-exit v5

    #@37
    throw v4
.end method

.method private final validateNotAppThread()V
    .locals 2

    #@0
    .prologue
    .line 1828
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@7
    move-result-object v1

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 1829
    new-instance v0, Ljava/lang/RuntimeException;

    #@c
    .line 1830
    const-string/jumbo v1, "This method can not be called from the main application thread"

    #@f
    .line 1829
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 1827
    :cond_0
    return-void
.end method


# virtual methods
.method public addMonitor(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "result"    # Landroid/app/Instrumentation$ActivityResult;
    .param p3, "block"    # Z

    #@0
    .prologue
    .line 638
    new-instance v0, Landroid/app/Instrumentation$ActivityMonitor;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;-><init>(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)V

    #@5
    .line 639
    .local v0, "am":Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    #@8
    .line 640
    return-object v0
.end method

.method public addMonitor(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .locals 1
    .param p1, "cls"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/app/Instrumentation$ActivityResult;
    .param p3, "block"    # Z

    #@0
    .prologue
    .line 661
    new-instance v0, Landroid/app/Instrumentation$ActivityMonitor;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;-><init>(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)V

    #@5
    .line 662
    .local v0, "am":Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    #@8
    .line 663
    return-object v0
.end method

.method public addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .locals 2
    .param p1, "monitor"    # Landroid/app/Instrumentation$ActivityMonitor;

    #@0
    .prologue
    .line 611
    iget-object v1, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 612
    :try_start_0
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 613
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@e
    .line 615
    :cond_0
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@10
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v1

    #@14
    .line 610
    return-void

    #@15
    .line 611
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "icicle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1106
    invoke-direct {p0, p1}, Landroid/app/Instrumentation;->prePerformCreate(Landroid/app/Activity;)V

    #@3
    .line 1107
    invoke-virtual {p1, p2}, Landroid/app/Activity;->performCreate(Landroid/os/Bundle;)V

    #@6
    .line 1108
    invoke-direct {p0, p1}, Landroid/app/Instrumentation;->postPerformCreate(Landroid/app/Activity;)V

    #@9
    .line 1105
    return-void
.end method

.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "icicle"    # Landroid/os/Bundle;
    .param p3, "persistentState"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 1120
    invoke-direct {p0, p1}, Landroid/app/Instrumentation;->prePerformCreate(Landroid/app/Activity;)V

    #@3
    .line 1121
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->performCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    #@6
    .line 1122
    invoke-direct {p0, p1}, Landroid/app/Instrumentation;->postPerformCreate(Landroid/app/Activity;)V

    #@9
    .line 1119
    return-void
.end method

.method public callActivityOnDestroy(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 1142
    invoke-virtual {p1}, Landroid/app/Activity;->performDestroy()V

    #@3
    .line 1144
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@5
    if-eqz v3, :cond_1

    #@7
    .line 1145
    iget-object v4, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    #@9
    monitor-enter v4

    #@a
    .line 1146
    :try_start_0
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@c
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@f
    move-result v0

    #@10
    .line 1147
    .local v0, "N":I
    const/4 v2, 0x0

    #@11
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@13
    .line 1148
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@15
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Landroid/app/Instrumentation$ActivityMonitor;

    #@1b
    .line 1149
    .local v1, "am":Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v1, p1, p1, v3}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 1147
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_0

    #@25
    .end local v1    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    :cond_0
    monitor-exit v4

    #@26
    .line 1125
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_1
    return-void

    #@27
    .line 1145
    :catchall_0
    move-exception v3

    #@28
    monitor-exit v4

    #@29
    throw v3
.end method

.method public callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1212
    invoke-virtual {p1, p2}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    #@3
    .line 1211
    return-void
.end method

.method public callActivityOnNewIntent(Landroid/app/Activity;Lcom/android/internal/content/ReferrerIntent;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Lcom/android/internal/content/ReferrerIntent;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1219
    iget-object v0, p1, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    #@3
    .line 1221
    .local v0, "oldReferrer":Ljava/lang/String;
    if-eqz p2, :cond_0

    #@5
    .line 1222
    :try_start_0
    iget-object v2, p2, Lcom/android/internal/content/ReferrerIntent;->mReferrer:Ljava/lang/String;

    #@7
    iput-object v2, p1, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    #@9
    .line 1224
    :cond_0
    if-eqz p2, :cond_1

    #@b
    new-instance v1, Landroid/content/Intent;

    #@d
    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@10
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 1226
    iput-object v0, p1, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    #@15
    .line 1218
    return-void

    #@16
    .line 1225
    :catchall_0
    move-exception v1

    #@17
    .line 1226
    iput-object v0, p1, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    #@19
    .line 1225
    throw v1
.end method

.method public callActivityOnPause(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 1311
    invoke-virtual {p1}, Landroid/app/Activity;->performPause()V

    #@3
    .line 1310
    return-void
.end method

.method public callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "icicle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1188
    invoke-virtual {p1, p2}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    #@3
    .line 1187
    return-void
.end method

.method public callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "icicle"    # Landroid/os/Bundle;
    .param p3, "persistentState"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 1201
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    #@3
    .line 1200
    return-void
.end method

.method public callActivityOnRestart(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 1247
    invoke-virtual {p1}, Landroid/app/Activity;->onRestart()V

    #@3
    .line 1246
    return-void
.end method

.method public callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1163
    invoke-virtual {p1, p2}, Landroid/app/Activity;->performRestoreInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 1162
    return-void
.end method

.method public callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "persistentState"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 1176
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->performRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    #@3
    .line 1175
    return-void
.end method

.method public callActivityOnResume(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 1257
    const/4 v3, 0x1

    #@1
    iput-boolean v3, p1, Landroid/app/Activity;->mResumed:Z

    #@3
    .line 1258
    invoke-virtual {p1}, Landroid/app/Activity;->onResume()V

    #@6
    .line 1260
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@8
    if-eqz v3, :cond_1

    #@a
    .line 1261
    iget-object v4, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    #@c
    monitor-enter v4

    #@d
    .line 1262
    :try_start_0
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@f
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@12
    move-result v0

    #@13
    .line 1263
    .local v0, "N":I
    const/4 v2, 0x0

    #@14
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@16
    .line 1264
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@18
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Landroid/app/Instrumentation$ActivityMonitor;

    #@1e
    .line 1265
    .local v1, "am":Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v1, p1, p1, v3}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 1263
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_0

    #@28
    .end local v1    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    :cond_0
    monitor-exit v4

    #@29
    .line 1256
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_1
    return-void

    #@2a
    .line 1261
    :catchall_0
    move-exception v3

    #@2b
    monitor-exit v4

    #@2c
    throw v3
.end method

.method public callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1289
    invoke-virtual {p1, p2}, Landroid/app/Activity;->performSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 1288
    return-void
.end method

.method public callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;
    .param p3, "outPersistentState"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 1301
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->performSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    #@3
    .line 1300
    return-void
.end method

.method public callActivityOnStart(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 1237
    invoke-virtual {p1}, Landroid/app/Activity;->onStart()V

    #@3
    .line 1236
    return-void
.end method

.method public callActivityOnStop(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 1278
    invoke-virtual {p1}, Landroid/app/Activity;->onStop()V

    #@3
    .line 1277
    return-void
.end method

.method public callActivityOnUserLeaving(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 1321
    invoke-virtual {p1}, Landroid/app/Activity;->performUserLeaving()V

    #@3
    .line 1320
    return-void
.end method

.method public callApplicationOnCreate(Landroid/app/Application;)V
    .locals 0
    .param p1, "app"    # Landroid/app/Application;

    #@0
    .prologue
    .line 1013
    invoke-virtual {p1}, Landroid/app/Application;->onCreate()V

    #@3
    .line 1012
    return-void
.end method

.method public checkMonitorHit(Landroid/app/Instrumentation$ActivityMonitor;I)Z
    .locals 2
    .param p1, "monitor"    # Landroid/app/Instrumentation$ActivityMonitor;
    .param p2, "minHits"    # I

    #@0
    .prologue
    .line 680
    invoke-virtual {p0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    #@3
    .line 681
    iget-object v1, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    .line 682
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityMonitor;->getHits()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v0

    #@a
    if-ge v0, p2, :cond_0

    #@c
    .line 683
    const/4 v0, 0x0

    #@d
    monitor-exit v1

    #@e
    return v0

    #@f
    .line 685
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@11
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    monitor-exit v1

    #@15
    .line 687
    const/4 v0, 0x1

    #@16
    return v0

    #@17
    .line 681
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method public endPerformanceSnapshot()V
    .locals 1

    #@0
    .prologue
    .line 217
    invoke-virtual {p0}, Landroid/app/Instrumentation;->isProfiling()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 218
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerformanceCollector:Landroid/os/PerformanceCollector;

    #@8
    invoke-virtual {v0}, Landroid/os/PerformanceCollector;->endSnapshot()Landroid/os/Bundle;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    #@e
    .line 216
    :cond_0
    return-void
.end method

.method public execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intents"    # [Landroid/content/Intent;
    .param p6, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1530
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v7

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move-object v3, p3

    #@8
    move-object v4, p4

    #@9
    move-object v5, p5

    #@a
    move-object v6, p6

    #@b
    .line 1529
    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivitiesAsUser(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;I)V

    #@e
    .line 1528
    return-void
.end method

.method public execStartActivitiesAsUser(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;I)V
    .locals 14
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intents"    # [Landroid/content/Intent;
    .param p6, "options"    # Landroid/os/Bundle;
    .param p7, "userId"    # I

    #@0
    .prologue
    move-object/from16 v2, p2

    #@2
    .line 1544
    check-cast v2, Landroid/app/IApplicationThread;

    #@4
    .line 1545
    .local v2, "whoThread":Landroid/app/IApplicationThread;
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@6
    if-eqz v1, :cond_2

    #@8
    .line 1546
    iget-object v3, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    #@a
    monitor-enter v3

    #@b
    .line 1547
    :try_start_0
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@d
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@10
    move-result v9

    #@11
    .line 1548
    .local v9, "N":I
    const/4 v12, 0x0

    #@12
    .local v12, "i":I
    :goto_0
    if-ge v12, v9, :cond_1

    #@14
    .line 1549
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@16
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v10

    #@1a
    check-cast v10, Landroid/app/Instrumentation$ActivityMonitor;

    #@1c
    .line 1550
    .local v10, "am":Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v1, 0x0

    #@1d
    aget-object v1, p5, v1

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-virtual {v10, p1, v4, v1}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_0

    #@26
    .line 1551
    iget v1, v10, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    #@28
    add-int/lit8 v1, v1, 0x1

    #@2a
    iput v1, v10, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    #@2c
    .line 1552
    invoke-virtual {v10}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_1

    #@32
    monitor-exit v3

    #@33
    .line 1553
    return-void

    #@34
    .line 1548
    :cond_0
    add-int/lit8 v12, v12, 0x1

    #@36
    goto :goto_0

    #@37
    .end local v10    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    :cond_1
    monitor-exit v3

    #@38
    .line 1561
    .end local v9    # "N":I
    .end local v12    # "i":I
    :cond_2
    :try_start_1
    move-object/from16 v0, p5

    #@3a
    array-length v1, v0

    #@3b
    new-array v5, v1, [Ljava/lang/String;

    #@3d
    .line 1562
    .local v5, "resolvedTypes":[Ljava/lang/String;
    const/4 v12, 0x0

    #@3e
    .restart local v12    # "i":I
    :goto_1
    move-object/from16 v0, p5

    #@40
    array-length v1, v0

    #@41
    if-ge v12, v1, :cond_3

    #@43
    .line 1563
    aget-object v1, p5, v12

    #@45
    invoke-virtual {v1}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    #@48
    .line 1564
    aget-object v1, p5, v12

    #@4a
    invoke-virtual {v1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@4d
    .line 1565
    aget-object v1, p5, v12

    #@4f
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    aput-object v1, v5, v12
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@59
    .line 1562
    add-int/lit8 v12, v12, 0x1

    #@5b
    goto :goto_1

    #@5c
    .line 1546
    .end local v5    # "resolvedTypes":[Ljava/lang/String;
    .end local v12    # "i":I
    :catchall_0
    move-exception v1

    #@5d
    monitor-exit v3

    #@5e
    throw v1

    #@5f
    .line 1567
    .restart local v5    # "resolvedTypes":[Ljava/lang/String;
    .restart local v12    # "i":I
    :cond_3
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@62
    move-result-object v1

    #@63
    .line 1568
    invoke-virtual {p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    #@66
    move-result-object v3

    #@67
    move-object/from16 v4, p5

    #@69
    move-object/from16 v6, p3

    #@6b
    move-object/from16 v7, p6

    #@6d
    move/from16 v8, p7

    #@6f
    .line 1567
    invoke-interface/range {v1 .. v8}, Landroid/app/IActivityManager;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    #@72
    move-result v13

    #@73
    .line 1570
    .local v13, "result":I
    const/4 v1, 0x0

    #@74
    aget-object v1, p5, v1

    #@76
    invoke-static {v13, v1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@79
    .line 1543
    return-void

    #@7a
    .line 1571
    .end local v5    # "resolvedTypes":[Ljava/lang/String;
    .end local v12    # "i":I
    .end local v13    # "result":I
    :catch_0
    move-exception v11

    #@7b
    .line 1572
    .local v11, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@7d
    const-string/jumbo v3, "Failure from system"

    #@80
    invoke-direct {v1, v3, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@83
    throw v1
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 19
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    move-object/from16 v3, p2

    #@2
    .line 1484
    check-cast v3, Landroid/app/IApplicationThread;

    #@4
    .line 1485
    .local v3, "whoThread":Landroid/app/IApplicationThread;
    if-eqz p4, :cond_1

    #@6
    invoke-virtual/range {p4 .. p4}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    #@9
    move-result-object v17

    #@a
    .line 1486
    :goto_0
    if-eqz v17, :cond_0

    #@c
    .line 1487
    const-string/jumbo v2, "android.intent.extra.REFERRER"

    #@f
    move-object/from16 v0, p5

    #@11
    move-object/from16 v1, v17

    #@13
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@16
    .line 1489
    :cond_0
    move-object/from16 v0, p0

    #@18
    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@1a
    if-eqz v2, :cond_5

    #@1c
    .line 1490
    move-object/from16 v0, p0

    #@1e
    iget-object v4, v0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    #@20
    monitor-enter v4

    #@21
    .line 1491
    :try_start_0
    move-object/from16 v0, p0

    #@23
    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@25
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@28
    move-result v13

    #@29
    .line 1492
    .local v13, "N":I
    const/16 v16, 0x0

    #@2b
    .local v16, "i":I
    :goto_1
    move/from16 v0, v16

    #@2d
    if-ge v0, v13, :cond_4

    #@2f
    .line 1493
    move-object/from16 v0, p0

    #@31
    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@33
    move/from16 v0, v16

    #@35
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@38
    move-result-object v14

    #@39
    check-cast v14, Landroid/app/Instrumentation$ActivityMonitor;

    #@3b
    .line 1494
    .local v14, "am":Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v2, 0x0

    #@3c
    move-object/from16 v0, p1

    #@3e
    move-object/from16 v1, p5

    #@40
    invoke-virtual {v14, v0, v2, v1}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    #@43
    move-result v2

    #@44
    if-eqz v2, :cond_3

    #@46
    .line 1495
    iget v2, v14, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    #@48
    add-int/lit8 v2, v2, 0x1

    #@4a
    iput v2, v14, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    #@4c
    .line 1496
    invoke-virtual {v14}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    #@4f
    move-result v2

    #@50
    if-eqz v2, :cond_4

    #@52
    .line 1497
    if-ltz p6, :cond_2

    #@54
    invoke-virtual {v14}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@57
    move-result-object v2

    #@58
    :goto_2
    monitor-exit v4

    #@59
    return-object v2

    #@5a
    .line 1485
    .end local v13    # "N":I
    .end local v14    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .end local v16    # "i":I
    :cond_1
    const/16 v17, 0x0

    #@5c
    .local v17, "referrer":Landroid/net/Uri;
    goto :goto_0

    #@5d
    .line 1497
    .end local v17    # "referrer":Landroid/net/Uri;
    .restart local v13    # "N":I
    .restart local v14    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .restart local v16    # "i":I
    :cond_2
    const/4 v2, 0x0

    #@5e
    goto :goto_2

    #@5f
    .line 1492
    :cond_3
    add-int/lit8 v16, v16, 0x1

    #@61
    goto :goto_1

    #@62
    .end local v14    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    :cond_4
    monitor-exit v4

    #@63
    .line 1505
    .end local v13    # "N":I
    .end local v16    # "i":I
    :cond_5
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    #@66
    .line 1506
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@69
    .line 1507
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@6c
    move-result-object v2

    #@6d
    .line 1508
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    #@70
    move-result-object v4

    #@71
    .line 1509
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@74
    move-result-object v5

    #@75
    move-object/from16 v0, p5

    #@77
    invoke-virtual {v0, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@7a
    move-result-object v6

    #@7b
    .line 1510
    if-eqz p4, :cond_6

    #@7d
    move-object/from16 v0, p4

    #@7f
    iget-object v8, v0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    #@81
    .line 1511
    :goto_3
    const/4 v10, 0x0

    #@82
    const/4 v11, 0x0

    #@83
    move-object/from16 v5, p5

    #@85
    move-object/from16 v7, p3

    #@87
    move/from16 v9, p6

    #@89
    move-object/from16 v12, p7

    #@8b
    .line 1507
    invoke-interface/range {v2 .. v12}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    #@8e
    move-result v18

    #@8f
    .line 1512
    .local v18, "result":I
    move/from16 v0, v18

    #@91
    move-object/from16 v1, p5

    #@93
    invoke-static {v0, v1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@96
    .line 1516
    const/4 v2, 0x0

    #@97
    return-object v2

    #@98
    .line 1490
    .end local v18    # "result":I
    :catchall_0
    move-exception v2

    #@99
    monitor-exit v4

    #@9a
    throw v2

    #@9b
    .line 1510
    :cond_6
    const/4 v8, 0x0

    #@9c
    goto :goto_3

    #@9d
    .line 1513
    :catch_0
    move-exception v15

    #@9e
    .line 1514
    .local v15, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@a0
    const-string/jumbo v4, "Failure from system"

    #@a3
    invoke-direct {v2, v4, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a6
    throw v2
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 19
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .param p8, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    move-object/from16 v3, p2

    #@2
    .line 1667
    check-cast v3, Landroid/app/IApplicationThread;

    #@4
    .line 1668
    .local v3, "whoThread":Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    #@6
    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@8
    if-eqz v2, :cond_3

    #@a
    .line 1669
    move-object/from16 v0, p0

    #@c
    iget-object v4, v0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    #@e
    monitor-enter v4

    #@f
    .line 1670
    :try_start_0
    move-object/from16 v0, p0

    #@11
    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@13
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@16
    move-result v14

    #@17
    .line 1671
    .local v14, "N":I
    const/16 v17, 0x0

    #@19
    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    #@1b
    if-ge v0, v14, :cond_2

    #@1d
    .line 1672
    move-object/from16 v0, p0

    #@1f
    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@21
    move/from16 v0, v17

    #@23
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v15

    #@27
    check-cast v15, Landroid/app/Instrumentation$ActivityMonitor;

    #@29
    .line 1673
    .local v15, "am":Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v2, 0x0

    #@2a
    move-object/from16 v0, p1

    #@2c
    move-object/from16 v1, p5

    #@2e
    invoke-virtual {v15, v0, v2, v1}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_1

    #@34
    .line 1674
    iget v2, v15, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    #@36
    add-int/lit8 v2, v2, 0x1

    #@38
    iput v2, v15, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    #@3a
    .line 1675
    invoke-virtual {v15}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    #@3d
    move-result v2

    #@3e
    if-eqz v2, :cond_2

    #@40
    .line 1676
    if-ltz p6, :cond_0

    #@42
    invoke-virtual {v15}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    move-result-object v2

    #@46
    :goto_1
    monitor-exit v4

    #@47
    return-object v2

    #@48
    :cond_0
    const/4 v2, 0x0

    #@49
    goto :goto_1

    #@4a
    .line 1671
    :cond_1
    add-int/lit8 v17, v17, 0x1

    #@4c
    goto :goto_0

    #@4d
    .end local v15    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    :cond_2
    monitor-exit v4

    #@4e
    .line 1684
    .end local v14    # "N":I
    .end local v17    # "i":I
    :cond_3
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    #@51
    .line 1685
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@54
    .line 1686
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@57
    move-result-object v2

    #@58
    .line 1687
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    #@5b
    move-result-object v4

    #@5c
    .line 1688
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5f
    move-result-object v5

    #@60
    move-object/from16 v0, p5

    #@62
    invoke-virtual {v0, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@65
    move-result-object v6

    #@66
    .line 1689
    if-eqz p4, :cond_4

    #@68
    move-object/from16 v0, p4

    #@6a
    iget-object v8, v0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    #@6c
    .line 1690
    :goto_2
    invoke-virtual/range {p8 .. p8}, Landroid/os/UserHandle;->getIdentifier()I

    #@6f
    move-result v13

    #@70
    const/4 v10, 0x0

    #@71
    const/4 v11, 0x0

    #@72
    move-object/from16 v5, p5

    #@74
    move-object/from16 v7, p3

    #@76
    move/from16 v9, p6

    #@78
    move-object/from16 v12, p7

    #@7a
    .line 1686
    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    #@7d
    move-result v18

    #@7e
    .line 1691
    .local v18, "result":I
    move/from16 v0, v18

    #@80
    move-object/from16 v1, p5

    #@82
    invoke-static {v0, v1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@85
    .line 1695
    const/4 v2, 0x0

    #@86
    return-object v2

    #@87
    .line 1669
    .end local v18    # "result":I
    :catchall_0
    move-exception v2

    #@88
    monitor-exit v4

    #@89
    throw v2

    #@8a
    .line 1689
    :cond_4
    const/4 v8, 0x0

    #@8b
    goto :goto_2

    #@8c
    .line 1692
    :catch_0
    move-exception v16

    #@8d
    .line 1693
    .local v16, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@8f
    const-string/jumbo v4, "Failure from system"

    #@92
    move-object/from16 v0, v16

    #@94
    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@97
    throw v2
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 18
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    move-object/from16 v3, p2

    #@2
    .line 1607
    check-cast v3, Landroid/app/IApplicationThread;

    #@4
    .line 1608
    .local v3, "whoThread":Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    #@6
    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@8
    if-eqz v2, :cond_3

    #@a
    .line 1609
    move-object/from16 v0, p0

    #@c
    iget-object v4, v0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    #@e
    monitor-enter v4

    #@f
    .line 1610
    :try_start_0
    move-object/from16 v0, p0

    #@11
    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@13
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@16
    move-result v13

    #@17
    .line 1611
    .local v13, "N":I
    const/16 v16, 0x0

    #@19
    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    #@1b
    if-ge v0, v13, :cond_2

    #@1d
    .line 1612
    move-object/from16 v0, p0

    #@1f
    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@21
    move/from16 v0, v16

    #@23
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v14

    #@27
    check-cast v14, Landroid/app/Instrumentation$ActivityMonitor;

    #@29
    .line 1613
    .local v14, "am":Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v2, 0x0

    #@2a
    move-object/from16 v0, p1

    #@2c
    move-object/from16 v1, p5

    #@2e
    invoke-virtual {v14, v0, v2, v1}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_1

    #@34
    .line 1614
    iget v2, v14, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    #@36
    add-int/lit8 v2, v2, 0x1

    #@38
    iput v2, v14, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    #@3a
    .line 1615
    invoke-virtual {v14}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    #@3d
    move-result v2

    #@3e
    if-eqz v2, :cond_2

    #@40
    .line 1616
    if-ltz p6, :cond_0

    #@42
    invoke-virtual {v14}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    move-result-object v2

    #@46
    :goto_1
    monitor-exit v4

    #@47
    return-object v2

    #@48
    :cond_0
    const/4 v2, 0x0

    #@49
    goto :goto_1

    #@4a
    .line 1611
    :cond_1
    add-int/lit8 v16, v16, 0x1

    #@4c
    goto :goto_0

    #@4d
    .end local v14    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    :cond_2
    monitor-exit v4

    #@4e
    .line 1624
    .end local v13    # "N":I
    .end local v16    # "i":I
    :cond_3
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    #@51
    .line 1625
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@54
    .line 1626
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@57
    move-result-object v2

    #@58
    .line 1627
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    #@5b
    move-result-object v4

    #@5c
    .line 1628
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5f
    move-result-object v5

    #@60
    move-object/from16 v0, p5

    #@62
    invoke-virtual {v0, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@65
    move-result-object v6

    #@66
    .line 1629
    const/4 v10, 0x0

    #@67
    const/4 v11, 0x0

    #@68
    move-object/from16 v5, p5

    #@6a
    move-object/from16 v7, p3

    #@6c
    move-object/from16 v8, p4

    #@6e
    move/from16 v9, p6

    #@70
    move-object/from16 v12, p7

    #@72
    .line 1626
    invoke-interface/range {v2 .. v12}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    #@75
    move-result v17

    #@76
    .line 1630
    .local v17, "result":I
    move/from16 v0, v17

    #@78
    move-object/from16 v1, p5

    #@7a
    invoke-static {v0, v1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@7d
    .line 1634
    const/4 v2, 0x0

    #@7e
    return-object v2

    #@7f
    .line 1609
    .end local v17    # "result":I
    :catchall_0
    move-exception v2

    #@80
    monitor-exit v4

    #@81
    throw v2

    #@82
    .line 1631
    :catch_0
    move-exception v15

    #@83
    .line 1632
    .local v15, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@85
    const-string/jumbo v4, "Failure from system"

    #@88
    invoke-direct {v2, v4, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8b
    throw v2
.end method

.method public execStartActivityAsCaller(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;ZI)Landroid/app/Instrumentation$ActivityResult;
    .locals 21
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .param p8, "ignoreTargetSecurity"    # Z
    .param p9, "userId"    # I

    #@0
    .prologue
    move-object/from16 v4, p2

    #@2
    .line 1706
    check-cast v4, Landroid/app/IApplicationThread;

    #@4
    .line 1707
    .local v4, "whoThread":Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    #@6
    iget-object v3, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@8
    if-eqz v3, :cond_3

    #@a
    .line 1708
    move-object/from16 v0, p0

    #@c
    iget-object v5, v0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    #@e
    monitor-enter v5

    #@f
    .line 1709
    :try_start_0
    move-object/from16 v0, p0

    #@11
    iget-object v3, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@13
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@16
    move-result v16

    #@17
    .line 1710
    .local v16, "N":I
    const/16 v19, 0x0

    #@19
    .local v19, "i":I
    :goto_0
    move/from16 v0, v19

    #@1b
    move/from16 v1, v16

    #@1d
    if-ge v0, v1, :cond_2

    #@1f
    .line 1711
    move-object/from16 v0, p0

    #@21
    iget-object v3, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@23
    move/from16 v0, v19

    #@25
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v17

    #@29
    check-cast v17, Landroid/app/Instrumentation$ActivityMonitor;

    #@2b
    .line 1712
    .local v17, "am":Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v3, 0x0

    #@2c
    move-object/from16 v0, v17

    #@2e
    move-object/from16 v1, p1

    #@30
    move-object/from16 v2, p5

    #@32
    invoke-virtual {v0, v1, v3, v2}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_1

    #@38
    .line 1713
    move-object/from16 v0, v17

    #@3a
    iget v3, v0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    #@3c
    add-int/lit8 v3, v3, 0x1

    #@3e
    move-object/from16 v0, v17

    #@40
    iput v3, v0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    #@42
    .line 1714
    invoke-virtual/range {v17 .. v17}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    #@45
    move-result v3

    #@46
    if-eqz v3, :cond_2

    #@48
    .line 1715
    if-ltz p6, :cond_0

    #@4a
    invoke-virtual/range {v17 .. v17}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4d
    move-result-object v3

    #@4e
    :goto_1
    monitor-exit v5

    #@4f
    return-object v3

    #@50
    :cond_0
    const/4 v3, 0x0

    #@51
    goto :goto_1

    #@52
    .line 1710
    :cond_1
    add-int/lit8 v19, v19, 0x1

    #@54
    goto :goto_0

    #@55
    .end local v17    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    :cond_2
    monitor-exit v5

    #@56
    .line 1723
    .end local v16    # "N":I
    .end local v19    # "i":I
    :cond_3
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    #@59
    .line 1724
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@5c
    .line 1725
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@5f
    move-result-object v3

    #@60
    .line 1726
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    #@63
    move-result-object v5

    #@64
    .line 1727
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@67
    move-result-object v6

    #@68
    move-object/from16 v0, p5

    #@6a
    invoke-virtual {v0, v6}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@6d
    move-result-object v7

    #@6e
    .line 1728
    if-eqz p4, :cond_4

    #@70
    move-object/from16 v0, p4

    #@72
    iget-object v9, v0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    #@74
    .line 1729
    :goto_2
    const/4 v11, 0x0

    #@75
    const/4 v12, 0x0

    #@76
    move-object/from16 v6, p5

    #@78
    move-object/from16 v8, p3

    #@7a
    move/from16 v10, p6

    #@7c
    move-object/from16 v13, p7

    #@7e
    move/from16 v14, p8

    #@80
    move/from16 v15, p9

    #@82
    .line 1725
    invoke-interface/range {v3 .. v15}, Landroid/app/IActivityManager;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    #@85
    move-result v20

    #@86
    .line 1730
    .local v20, "result":I
    move/from16 v0, v20

    #@88
    move-object/from16 v1, p5

    #@8a
    invoke-static {v0, v1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@8d
    .line 1734
    const/4 v3, 0x0

    #@8e
    return-object v3

    #@8f
    .line 1708
    .end local v20    # "result":I
    :catchall_0
    move-exception v3

    #@90
    monitor-exit v5

    #@91
    throw v3

    #@92
    .line 1728
    :cond_4
    const/4 v9, 0x0

    #@93
    goto :goto_2

    #@94
    .line 1731
    :catch_0
    move-exception v18

    #@95
    .line 1732
    .local v18, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    #@97
    const-string/jumbo v5, "Failure from system"

    #@9a
    move-object/from16 v0, v18

    #@9c
    invoke-direct {v3, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9f
    throw v3
.end method

.method public execStartActivityFromAppTask(Landroid/content/Context;Landroid/os/IBinder;Landroid/app/IAppTask;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "appTask"    # Landroid/app/IAppTask;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    move-object v12, p2

    #@1
    .line 1744
    check-cast v12, Landroid/app/IApplicationThread;

    #@3
    .line 1745
    .local v12, "whoThread":Landroid/app/IApplicationThread;
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@5
    if-eqz v1, :cond_2

    #@7
    .line 1746
    iget-object v2, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    #@9
    monitor-enter v2

    #@a
    .line 1747
    :try_start_0
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@c
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@f
    move-result v7

    #@10
    .line 1748
    .local v7, "N":I
    const/4 v10, 0x0

    #@11
    .local v10, "i":I
    :goto_0
    if-ge v10, v7, :cond_1

    #@13
    .line 1749
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@15
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v8

    #@19
    check-cast v8, Landroid/app/Instrumentation$ActivityMonitor;

    #@1b
    .line 1750
    .local v8, "am":Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v1, 0x0

    #@1c
    move-object/from16 v0, p4

    #@1e
    invoke-virtual {v8, p1, v1, v0}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_0

    #@24
    .line 1751
    iget v1, v8, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    #@26
    add-int/lit8 v1, v1, 0x1

    #@28
    iput v1, v8, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    #@2a
    .line 1752
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_1

    #@30
    monitor-exit v2

    #@31
    .line 1753
    return-void

    #@32
    .line 1748
    :cond_0
    add-int/lit8 v10, v10, 0x1

    #@34
    goto :goto_0

    #@35
    .end local v8    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    :cond_1
    monitor-exit v2

    #@36
    .line 1761
    .end local v7    # "N":I
    .end local v10    # "i":I
    :cond_2
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    #@39
    .line 1762
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@3c
    .line 1763
    invoke-interface {v12}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    .line 1764
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@47
    move-result-object v1

    #@48
    move-object/from16 v0, p4

    #@4a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@4d
    move-result-object v5

    #@4e
    move-object/from16 v1, p3

    #@50
    move-object/from16 v4, p4

    #@52
    move-object/from16 v6, p5

    #@54
    .line 1763
    invoke-interface/range {v1 .. v6}, Landroid/app/IAppTask;->startActivity(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)I

    #@57
    move-result v11

    #@58
    .line 1765
    .local v11, "result":I
    move-object/from16 v0, p4

    #@5a
    invoke-static {v11, v0}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@5d
    .line 1769
    return-void

    #@5e
    .line 1746
    .end local v11    # "result":I
    :catchall_0
    move-exception v1

    #@5f
    monitor-exit v2

    #@60
    throw v1

    #@61
    .line 1766
    :catch_0
    move-exception v9

    #@62
    .line 1767
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@64
    const-string/jumbo v2, "Failure from system"

    #@67
    invoke-direct {v1, v2, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6a
    throw v1
.end method

.method public finish(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "results"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 189
    iget-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 190
    invoke-virtual {p0}, Landroid/app/Instrumentation;->endPerformanceSnapshot()V

    #@8
    .line 192
    :cond_0
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    #@a
    if-eqz v0, :cond_2

    #@c
    .line 193
    if-nez p2, :cond_1

    #@e
    .line 194
    new-instance p2, Landroid/os/Bundle;

    #@10
    .end local p2    # "results":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    #@13
    .line 196
    .restart local p2    # "results":Landroid/os/Bundle;
    :cond_1
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    #@15
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@18
    .line 198
    :cond_2
    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    #@1a
    if-eqz v0, :cond_3

    #@1c
    .line 199
    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    #@1e
    invoke-virtual {v0}, Landroid/app/UiAutomation;->disconnect()V

    #@21
    .line 200
    iput-object v1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    #@23
    .line 202
    :cond_3
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    #@25
    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityThread;->finishInstrumentation(ILandroid/os/Bundle;)V

    #@28
    .line 188
    return-void
.end method

.method public getAllocCounts()Landroid/os/Bundle;
    .locals 4

    #@0
    .prologue
    .line 1380
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 1381
    .local v0, "results":Landroid/os/Bundle;
    const-string/jumbo v1, "global_alloc_count"

    #@8
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocCount()I

    #@b
    move-result v2

    #@c
    int-to-long v2, v2

    #@d
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@10
    .line 1382
    const-string/jumbo v1, "global_alloc_size"

    #@13
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    #@16
    move-result v2

    #@17
    int-to-long v2, v2

    #@18
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@1b
    .line 1383
    const-string/jumbo v1, "global_freed_count"

    #@1e
    invoke-static {}, Landroid/os/Debug;->getGlobalFreedCount()I

    #@21
    move-result v2

    #@22
    int-to-long v2, v2

    #@23
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@26
    .line 1384
    const-string/jumbo v1, "global_freed_size"

    #@29
    invoke-static {}, Landroid/os/Debug;->getGlobalFreedSize()I

    #@2c
    move-result v2

    #@2d
    int-to-long v2, v2

    #@2e
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@31
    .line 1385
    const-string/jumbo v1, "gc_invocation_count"

    #@34
    invoke-static {}, Landroid/os/Debug;->getGlobalGcInvocationCount()I

    #@37
    move-result v2

    #@38
    int-to-long v2, v2

    #@39
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@3c
    .line 1386
    return-object v0
.end method

.method public getBinderCounts()Landroid/os/Bundle;
    .locals 4

    #@0
    .prologue
    .line 1394
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 1395
    .local v0, "results":Landroid/os/Bundle;
    const-string/jumbo v1, "sent_transactions"

    #@8
    invoke-static {}, Landroid/os/Debug;->getBinderSentTransactions()I

    #@b
    move-result v2

    #@c
    int-to-long v2, v2

    #@d
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@10
    .line 1396
    const-string/jumbo v1, "received_transactions"

    #@13
    invoke-static {}, Landroid/os/Debug;->getBinderReceivedTransactions()I

    #@16
    move-result v2

    #@17
    int-to-long v2, v2

    #@18
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@1b
    .line 1397
    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 251
    iget-object v0, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 242
    iget-object v0, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getTargetContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 266
    iget-object v0, p0, Landroid/app/Instrumentation;->mAppContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getUiAutomation()Landroid/app/UiAutomation;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1854
    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 1855
    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 1856
    new-instance v0, Landroid/app/UiAutomation;

    #@b
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@12
    move-result-object v1

    #@13
    .line 1857
    iget-object v2, p0, Landroid/app/Instrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    #@15
    .line 1856
    invoke-direct {v0, v1, v2}, Landroid/app/UiAutomation;-><init>(Landroid/os/Looper;Landroid/app/IUiAutomationConnection;)V

    #@18
    iput-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    #@1a
    .line 1858
    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    #@1c
    invoke-virtual {v0}, Landroid/app/UiAutomation;->connect()V

    #@1f
    .line 1860
    :cond_0
    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    #@21
    return-object v0

    #@22
    .line 1862
    :cond_1
    return-object v1
.end method

.method final init(Landroid/app/ActivityThread;Landroid/content/Context;Landroid/content/Context;Landroid/content/ComponentName;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;)V
    .locals 1
    .param p1, "thread"    # Landroid/app/ActivityThread;
    .param p2, "instrContext"    # Landroid/content/Context;
    .param p3, "appContext"    # Landroid/content/Context;
    .param p4, "component"    # Landroid/content/ComponentName;
    .param p5, "watcher"    # Landroid/app/IInstrumentationWatcher;
    .param p6, "uiAutomationConnection"    # Landroid/app/IUiAutomationConnection;

    #@0
    .prologue
    .line 1775
    iput-object p1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    #@2
    .line 1776
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    #@4
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    #@7
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    #@d
    .line 1777
    iput-object p2, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    #@f
    .line 1778
    iput-object p3, p0, Landroid/app/Instrumentation;->mAppContext:Landroid/content/Context;

    #@11
    .line 1779
    iput-object p4, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    #@13
    .line 1780
    iput-object p5, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    #@15
    .line 1781
    iput-object p6, p0, Landroid/app/Instrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    #@17
    .line 1774
    return-void
.end method

.method public invokeContextMenuAction(Landroid/app/Activity;II)Z
    .locals 8
    .param p1, "targetActivity"    # Landroid/app/Activity;
    .param p2, "id"    # I
    .param p3, "flag"    # I

    #@0
    .prologue
    const/16 v7, 0x17

    #@2
    const/4 v6, 0x0

    #@3
    .line 790
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    #@6
    .line 796
    new-instance v1, Landroid/view/KeyEvent;

    #@8
    invoke-direct {v1, v6, v7}, Landroid/view/KeyEvent;-><init>(II)V

    #@b
    .line 797
    .local v1, "downEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    #@e
    .line 800
    invoke-virtual {p0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    #@11
    .line 802
    :try_start_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    #@14
    move-result v4

    #@15
    int-to-long v4, v4

    #@16
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 808
    new-instance v3, Landroid/view/KeyEvent;

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-direct {v3, v4, v7}, Landroid/view/KeyEvent;-><init>(II)V

    #@1f
    .line 809
    .local v3, "upEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v3}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    #@22
    .line 812
    invoke-virtual {p0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    #@25
    .line 836
    new-instance v0, Landroid/app/Instrumentation$1ContextMenuRunnable;

    #@27
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/app/Instrumentation$1ContextMenuRunnable;-><init>(Landroid/app/Instrumentation;Landroid/app/Activity;II)V

    #@2a
    .line 837
    .local v0, "cmr":Landroid/app/Instrumentation$1ContextMenuRunnable;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    #@2d
    .line 838
    iget-boolean v4, v0, Landroid/app/Instrumentation$1ContextMenuRunnable;->returnValue:Z

    #@2f
    return v4

    #@30
    .line 803
    .end local v0    # "cmr":Landroid/app/Instrumentation$1ContextMenuRunnable;
    .end local v3    # "upEvent":Landroid/view/KeyEvent;
    :catch_0
    move-exception v2

    #@31
    .line 804
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v4, "Instrumentation"

    #@34
    const-string/jumbo v5, "Could not sleep for long press timeout"

    #@37
    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3a
    .line 805
    return v6
.end method

.method public invokeMenuActionSync(Landroid/app/Activity;II)Z
    .locals 2
    .param p1, "targetActivity"    # Landroid/app/Activity;
    .param p2, "id"    # I
    .param p3, "flag"    # I

    #@0
    .prologue
    .line 774
    new-instance v0, Landroid/app/Instrumentation$1MenuRunnable;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/app/Instrumentation$1MenuRunnable;-><init>(Landroid/app/Instrumentation;Landroid/app/Activity;II)V

    #@5
    .line 775
    .local v0, "mr":Landroid/app/Instrumentation$1MenuRunnable;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    #@8
    .line 776
    iget-boolean v1, v0, Landroid/app/Instrumentation$1MenuRunnable;->returnValue:Z

    #@a
    return v1
.end method

.method public isProfiling()Z
    .locals 1

    #@0
    .prologue
    .line 275
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    #@2
    invoke-virtual {v0}, Landroid/app/ActivityThread;->isProfiling()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;
    .locals 16
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
            "Ljava/lang/Class",
            "<*>;",
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

    #@0
    .prologue
    .line 1042
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/app/Activity;

    #@6
    .line 1043
    .local v0, "activity":Landroid/app/Activity;
    const/4 v2, 0x0

    #@7
    .local v2, "aThread":Landroid/app/ActivityThread;
    move-object/from16 v12, p10

    #@9
    .line 1046
    check-cast v12, Landroid/app/Activity$NonConfigurationInstances;

    #@b
    .line 1047
    new-instance v13, Landroid/content/res/Configuration;

    #@d
    invoke-direct {v13}, Landroid/content/res/Configuration;-><init>()V

    #@10
    .line 1044
    const/4 v5, 0x0

    #@11
    .line 1047
    const/4 v14, 0x0

    #@12
    const/4 v15, 0x0

    #@13
    move-object/from16 v1, p2

    #@15
    move-object/from16 v3, p0

    #@17
    move-object/from16 v4, p3

    #@19
    move-object/from16 v6, p4

    #@1b
    move-object/from16 v7, p5

    #@1d
    move-object/from16 v8, p6

    #@1f
    move-object/from16 v9, p7

    #@21
    move-object/from16 v10, p8

    #@23
    move-object/from16 v11, p9

    #@25
    .line 1044
    invoke-virtual/range {v0 .. v15}, Landroid/app/Activity;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;)V

    #@28
    .line 1048
    return-object v0
.end method

.method public newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 1
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

    #@0
    .prologue
    .line 1067
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/app/Activity;

    #@a
    return-object v0
.end method

.method public newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
    .locals 1
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

    #@0
    .prologue
    .line 981
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p3}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 116
    return-void
.end method

.method public onDestroy()V
    .locals 0

    #@0
    .prologue
    .line 226
    return-void
.end method

.method public onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 159
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onStart()V
    .locals 0

    #@0
    .prologue
    .line 141
    return-void
.end method

.method public removeMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .locals 2
    .param p1, "monitor"    # Landroid/app/Instrumentation$ActivityMonitor;

    #@0
    .prologue
    .line 735
    iget-object v1, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 736
    :try_start_0
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 734
    return-void

    #@a
    .line 735
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public runOnMainSync(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runner"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 350
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    #@3
    .line 351
    new-instance v0, Landroid/app/Instrumentation$SyncRunnable;

    #@5
    invoke-direct {v0, p1}, Landroid/app/Instrumentation$SyncRunnable;-><init>(Ljava/lang/Runnable;)V

    #@8
    .line 352
    .local v0, "sr":Landroid/app/Instrumentation$SyncRunnable;
    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    #@a
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@11
    .line 353
    invoke-virtual {v0}, Landroid/app/Instrumentation$SyncRunnable;->waitForComplete()V

    #@14
    .line 349
    return-void
.end method

.method public sendCharacterSync(I)V
    .locals 2
    .param p1, "keyCode"    # I

    #@0
    .prologue
    .line 923
    new-instance v0, Landroid/view/KeyEvent;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    #@6
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    #@9
    .line 924
    new-instance v0, Landroid/view/KeyEvent;

    #@b
    const/4 v1, 0x1

    #@c
    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    #@f
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    #@12
    .line 922
    return-void
.end method

.method public sendKeyDownUpSync(I)V
    .locals 2
    .param p1, "key"    # I

    #@0
    .prologue
    .line 910
    new-instance v0, Landroid/view/KeyEvent;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    #@6
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    #@9
    .line 911
    new-instance v0, Landroid/view/KeyEvent;

    #@b
    const/4 v1, 0x1

    #@c
    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    #@f
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    #@12
    .line 909
    return-void
.end method

.method public sendKeySync(Landroid/view/KeyEvent;)V
    .locals 16
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 877
    invoke-direct/range {p0 .. p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    #@3
    .line 879
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    #@6
    move-result-wide v2

    #@7
    .line 880
    .local v2, "downTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    #@a
    move-result-wide v4

    #@b
    .line 881
    .local v4, "eventTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    #@e
    move-result v6

    #@f
    .line 882
    .local v6, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@12
    move-result v7

    #@13
    .line 883
    .local v7, "code":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@16
    move-result v8

    #@17
    .line 884
    .local v8, "repeatCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    #@1a
    move-result v9

    #@1b
    .line 885
    .local v9, "metaState":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    #@1e
    move-result v10

    #@1f
    .line 886
    .local v10, "deviceId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    #@22
    move-result v11

    #@23
    .line 887
    .local v11, "scancode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    #@26
    move-result v13

    #@27
    .line 888
    .local v13, "source":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    #@2a
    move-result v0

    #@2b
    .line 889
    .local v0, "flags":I
    if-nez v13, :cond_0

    #@2d
    .line 890
    const/16 v13, 0x101

    #@2f
    .line 892
    :cond_0
    const-wide/16 v14, 0x0

    #@31
    cmp-long v12, v4, v14

    #@33
    if-nez v12, :cond_1

    #@35
    .line 893
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@38
    move-result-wide v4

    #@39
    .line 895
    :cond_1
    const-wide/16 v14, 0x0

    #@3b
    cmp-long v12, v2, v14

    #@3d
    if-nez v12, :cond_2

    #@3f
    .line 896
    move-wide v2, v4

    #@40
    .line 898
    :cond_2
    new-instance v1, Landroid/view/KeyEvent;

    #@42
    .line 899
    or-int/lit8 v12, v0, 0x8

    #@44
    .line 898
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    #@47
    .line 900
    .local v1, "newEvent":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    #@4a
    move-result-object v12

    #@4b
    .line 901
    const/4 v14, 0x2

    #@4c
    .line 900
    invoke-virtual {v12, v1, v14}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    #@4f
    .line 876
    return-void
.end method

.method public sendPointerSync(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 939
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    #@3
    .line 940
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    #@6
    move-result v0

    #@7
    and-int/lit8 v0, v0, 0x2

    #@9
    if-nez v0, :cond_0

    #@b
    .line 941
    const/16 v0, 0x1002

    #@d
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    #@10
    .line 943
    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    #@13
    move-result-object v0

    #@14
    .line 944
    const/4 v1, 0x2

    #@15
    .line 943
    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    #@18
    .line 938
    return-void
.end method

.method public sendStatus(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "results"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 169
    iget-object v1, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 171
    :try_start_0
    iget-object v1, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    #@7
    iget-object v2, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    #@9
    invoke-interface {v1, v2, p1, p2}, Landroid/app/IInstrumentationWatcher;->instrumentationStatus(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 168
    :cond_0
    :goto_0
    return-void

    #@d
    .line 173
    :catch_0
    move-exception v0

    #@e
    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    iput-object v3, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    #@10
    goto :goto_0
.end method

.method public sendStringSync(Ljava/lang/String;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 848
    if-nez p1, :cond_0

    #@2
    .line 849
    return-void

    #@3
    .line 851
    :cond_0
    const/4 v3, -0x1

    #@4
    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    #@7
    move-result-object v2

    #@8
    .line 853
    .local v2, "keyCharacterMap":Landroid/view/KeyCharacterMap;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v2, v3}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    #@f
    move-result-object v0

    #@10
    .line 855
    .local v0, "events":[Landroid/view/KeyEvent;
    if-eqz v0, :cond_1

    #@12
    .line 856
    const/4 v1, 0x0

    #@13
    .local v1, "i":I
    :goto_0
    array-length v3, v0

    #@14
    if-ge v1, v3, :cond_1

    #@16
    .line 862
    aget-object v3, v0, v1

    #@18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1b
    move-result-wide v4

    #@1c
    const/4 v6, 0x0

    #@1d
    invoke-static {v3, v4, v5, v6}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {p0, v3}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    #@24
    .line 856
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 847
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public sendTrackballEventSync(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 959
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    #@3
    .line 960
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    #@6
    move-result v0

    #@7
    and-int/lit8 v0, v0, 0x4

    #@9
    if-nez v0, :cond_0

    #@b
    .line 961
    const v0, 0x10004

    #@e
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    #@11
    .line 963
    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    #@14
    move-result-object v0

    #@15
    .line 964
    const/4 v1, 0x2

    #@16
    .line 963
    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    #@19
    .line 958
    return-void
.end method

.method public setAutomaticPerformanceSnapshots()V
    .locals 1

    #@0
    .prologue
    .line 206
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    #@3
    .line 207
    new-instance v0, Landroid/os/PerformanceCollector;

    #@5
    invoke-direct {v0}, Landroid/os/PerformanceCollector;-><init>()V

    #@8
    iput-object v0, p0, Landroid/app/Instrumentation;->mPerformanceCollector:Landroid/os/PerformanceCollector;

    #@a
    .line 205
    return-void
.end method

.method public setInTouchMode(Z)V
    .locals 2
    .param p1, "inTouch"    # Z

    #@0
    .prologue
    .line 311
    :try_start_0
    const-string/jumbo v1, "window"

    #@3
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v1

    #@7
    .line 310
    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    #@a
    move-result-object v1

    #@b
    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->setInTouchMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 308
    :goto_0
    return-void

    #@f
    .line 312
    :catch_0
    move-exception v0

    #@10
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public start()V
    .locals 3

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Landroid/app/Instrumentation;->mRunner:Ljava/lang/Thread;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 126
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "Instrumentation already started"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 128
    :cond_0
    new-instance v0, Landroid/app/Instrumentation$InstrumentationThread;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "Instr: "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getClass()Ljava/lang/Class;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {v0, p0, v1}, Landroid/app/Instrumentation$InstrumentationThread;-><init>(Landroid/app/Instrumentation;Ljava/lang/String;)V

    #@2e
    iput-object v0, p0, Landroid/app/Instrumentation;->mRunner:Ljava/lang/Thread;

    #@30
    .line 129
    iget-object v0, p0, Landroid/app/Instrumentation;->mRunner:Ljava/lang/Thread;

    #@32
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@35
    .line 124
    return-void
.end method

.method public startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 377
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    #@3
    .line 379
    iget-object v6, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    #@5
    monitor-enter v6

    #@6
    .line 380
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    #@8
    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@b
    .line 383
    .end local p1    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    #@e
    move-result-object v5

    #@f
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@12
    move-result-object v5

    #@13
    const/4 v7, 0x0

    #@14
    .line 382
    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    #@17
    move-result-object v0

    #@18
    .line 384
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_0

    #@1a
    .line 385
    new-instance v5, Ljava/lang/RuntimeException;

    #@1c
    new-instance v7, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v8, "Unable to resolve activity for: "

    #@24
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v7

    #@2c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v7

    #@30
    invoke-direct {v5, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@33
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    .line 379
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :catchall_0
    move-exception v5

    #@35
    move-object p1, v3

    #@36
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p1    # "intent":Landroid/content/Intent;
    :goto_0
    monitor-exit v6

    #@37
    throw v5

    #@38
    .line 387
    .end local p1    # "intent":Landroid/content/Intent;
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_0
    :try_start_2
    iget-object v5, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    #@3a
    invoke-virtual {v5}, Landroid/app/ActivityThread;->getProcessName()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    .line 388
    .local v4, "myProc":Ljava/lang/String;
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@40
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v5

    #@44
    if-nez v5, :cond_1

    #@46
    .line 391
    new-instance v5, Ljava/lang/RuntimeException;

    #@48
    new-instance v7, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v8, "Intent in process "

    #@50
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v7

    #@54
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v7

    #@58
    .line 392
    const-string/jumbo v8, " resolved to different process "

    #@5b
    .line 391
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v7

    #@5f
    .line 393
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@61
    .line 391
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v7

    #@65
    .line 393
    const-string/jumbo v8, ": "

    #@68
    .line 391
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v7

    #@6c
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v7

    #@70
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v7

    #@74
    invoke-direct {v5, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@77
    throw v5

    #@78
    .line 396
    :cond_1
    new-instance v5, Landroid/content/ComponentName;

    #@7a
    .line 397
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@7c
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@7e
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@80
    .line 396
    invoke-direct {v5, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@83
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@86
    .line 398
    new-instance v1, Landroid/app/Instrumentation$ActivityWaiter;

    #@88
    invoke-direct {v1, v3}, Landroid/app/Instrumentation$ActivityWaiter;-><init>(Landroid/content/Intent;)V

    #@8b
    .line 400
    .local v1, "aw":Landroid/app/Instrumentation$ActivityWaiter;
    iget-object v5, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    #@8d
    if-nez v5, :cond_2

    #@8f
    .line 401
    new-instance v5, Ljava/util/ArrayList;

    #@91
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@94
    iput-object v5, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    #@96
    .line 403
    :cond_2
    iget-object v5, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    #@98
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@9b
    .line 405
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    #@9e
    move-result-object v5

    #@9f
    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a2
    .line 409
    :cond_3
    :try_start_3
    iget-object v5, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    #@a4
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a7
    .line 412
    :goto_1
    :try_start_4
    iget-object v5, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    #@a9
    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@ac
    move-result v5

    #@ad
    if-nez v5, :cond_3

    #@af
    .line 414
    iget-object v5, v1, Landroid/app/Instrumentation$ActivityWaiter;->activity:Landroid/app/Activity;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@b1
    monitor-exit v6

    #@b2
    return-object v5

    #@b3
    .line 379
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "aw":Landroid/app/Instrumentation$ActivityWaiter;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "myProc":Ljava/lang/String;
    .restart local p1    # "intent":Landroid/content/Intent;
    :catchall_1
    move-exception v5

    #@b4
    goto :goto_0

    #@b5
    .line 410
    .end local p1    # "intent":Landroid/content/Intent;
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "aw":Landroid/app/Instrumentation$ActivityWaiter;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "myProc":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@b6
    .local v2, "e":Ljava/lang/InterruptedException;
    goto :goto_1
.end method

.method public startAllocCounting()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1335
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    #@7
    .line 1336
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    #@e
    .line 1337
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    #@15
    .line 1339
    invoke-static {}, Landroid/os/Debug;->resetAllCounts()V

    #@18
    .line 1342
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    #@1b
    .line 1330
    return-void
.end method

.method public startPerformanceSnapshot()V
    .locals 2

    #@0
    .prologue
    .line 211
    invoke-virtual {p0}, Landroid/app/Instrumentation;->isProfiling()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 212
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerformanceCollector:Landroid/os/PerformanceCollector;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {v0, v1}, Landroid/os/PerformanceCollector;->beginSnapshot(Ljava/lang/String;)V

    #@c
    .line 210
    :cond_0
    return-void
.end method

.method public startProfiling()V
    .locals 3

    #@0
    .prologue
    .line 284
    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    #@2
    invoke-virtual {v1}, Landroid/app/ActivityThread;->isProfiling()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 285
    new-instance v0, Ljava/io/File;

    #@a
    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    #@c
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getProfileFilePath()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@13
    .line 286
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    #@1a
    .line 287
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    const/high16 v2, 0x800000

    #@20
    invoke-static {v1, v2}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    #@23
    .line 283
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public stopAllocCounting()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1352
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    #@7
    .line 1353
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    #@e
    .line 1354
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    #@15
    .line 1355
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    #@18
    .line 1351
    return-void
.end method

.method public stopProfiling()V
    .locals 1

    #@0
    .prologue
    .line 295
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    #@2
    invoke-virtual {v0}, Landroid/app/ActivityThread;->isProfiling()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 296
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    #@b
    .line 294
    :cond_0
    return-void
.end method

.method public waitForIdle(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "recipient"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 325
    iget-object v0, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    #@2
    new-instance v1, Landroid/app/Instrumentation$Idler;

    #@4
    invoke-direct {v1, p1}, Landroid/app/Instrumentation$Idler;-><init>(Ljava/lang/Runnable;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    #@a
    .line 326
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    #@c
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    #@f
    move-result-object v0

    #@10
    new-instance v1, Landroid/app/Instrumentation$EmptyRunnable;

    #@12
    const/4 v2, 0x0

    #@13
    invoke-direct {v1, v2}, Landroid/app/Instrumentation$EmptyRunnable;-><init>(Landroid/app/Instrumentation$EmptyRunnable;)V

    #@16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@19
    .line 324
    return-void
.end method

.method public waitForIdleSync()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 335
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    #@4
    .line 336
    new-instance v0, Landroid/app/Instrumentation$Idler;

    #@6
    invoke-direct {v0, v3}, Landroid/app/Instrumentation$Idler;-><init>(Ljava/lang/Runnable;)V

    #@9
    .line 337
    .local v0, "idler":Landroid/app/Instrumentation$Idler;
    iget-object v1, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    #@b
    invoke-virtual {v1, v0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    #@e
    .line 338
    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    #@10
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    #@13
    move-result-object v1

    #@14
    new-instance v2, Landroid/app/Instrumentation$EmptyRunnable;

    #@16
    invoke-direct {v2, v3}, Landroid/app/Instrumentation$EmptyRunnable;-><init>(Landroid/app/Instrumentation$EmptyRunnable;)V

    #@19
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1c
    .line 339
    invoke-virtual {v0}, Landroid/app/Instrumentation$Idler;->waitForIdle()V

    #@1f
    .line 334
    return-void
.end method

.method public waitForMonitor(Landroid/app/Instrumentation$ActivityMonitor;)Landroid/app/Activity;
    .locals 3
    .param p1, "monitor"    # Landroid/app/Instrumentation$ActivityMonitor;

    #@0
    .prologue
    .line 700
    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityMonitor;->waitForActivity()Landroid/app/Activity;

    #@3
    move-result-object v0

    #@4
    .line 701
    .local v0, "activity":Landroid/app/Activity;
    iget-object v2, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    #@6
    monitor-enter v2

    #@7
    .line 702
    :try_start_0
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@9
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v2

    #@d
    .line 704
    return-object v0

    #@e
    .line 701
    :catchall_0
    move-exception v1

    #@f
    monitor-exit v2

    #@10
    throw v1
.end method

.method public waitForMonitorWithTimeout(Landroid/app/Instrumentation$ActivityMonitor;J)Landroid/app/Activity;
    .locals 4
    .param p1, "monitor"    # Landroid/app/Instrumentation$ActivityMonitor;
    .param p2, "timeOut"    # J

    #@0
    .prologue
    .line 719
    invoke-virtual {p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;->waitForActivityWithTimeout(J)Landroid/app/Activity;

    #@3
    move-result-object v0

    #@4
    .line 720
    .local v0, "activity":Landroid/app/Activity;
    iget-object v2, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    #@6
    monitor-enter v2

    #@7
    .line 721
    :try_start_0
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    #@9
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v2

    #@d
    .line 723
    return-object v0

    #@e
    .line 720
    :catchall_0
    move-exception v1

    #@f
    monitor-exit v2

    #@10
    throw v1
.end method
