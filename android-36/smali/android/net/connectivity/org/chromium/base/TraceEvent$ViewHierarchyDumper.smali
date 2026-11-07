.class final Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewHierarchyDumper;
.super Ljava/lang/Object;
.source "TraceEvent.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/TraceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewHierarchyDumper"
.end annotation


# static fields
.field private static final blacklist MIN_VIEW_DUMP_INTERVAL_MILLIS:J = 0x3e8L

.field private static blacklist sEnabled:Z

.field private static blacklist sInstance:Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewHierarchyDumper;


# instance fields
.field private blacklist mLastDumpTs:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdumpView(Landroid/net/connectivity/org/chromium/base/TraceEvent$ActivityInfo;ILandroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewHierarchyDumper;->dumpView(Landroid/net/connectivity/org/chromium/base/TraceEvent$ActivityInfo;ILandroid/view/View;)V

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist disable()V
    .registers 2

    .line 858
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 859
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewHierarchyDumper;->sEnabled:Z

    if-eqz v0, :cond_13

    .line 860
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    sget-object v1, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewHierarchyDumper;->sInstance:Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewHierarchyDumper;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 861
    const/4 v0, 0x0

    sput-boolean v0, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewHierarchyDumper;->sEnabled:Z

    .line 863
    :cond_13
    return-void
.end method

.method private static blacklist dumpView(Landroid/net/connectivity/org/chromium/base/TraceEvent$ActivityInfo;ILandroid/view/View;)V
    .registers 11
    .param p0, "collection"    # Landroid/net/connectivity/org/chromium/base/TraceEvent$ActivityInfo;
    .param p1, "parentId"    # I
    .param p2, "v"    # Landroid/view/View;

    .line 830
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 831
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    .line 832
    .local v1, "id":I
    iget-object v7, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$ActivityInfo;->mViews:Ljava/util/ArrayList;

    new-instance v0, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;

    .line 836
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v3

    .line 837
    invoke-virtual {p2}, Landroid/view/View;->isDirty()Z

    move-result v4

    .line 838
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 839
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move v2, p1

    .end local p1    # "parentId":I
    .local v2, "parentId":I
    invoke-direct/range {v0 .. v6}, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;-><init>(IIZZLjava/lang/String;Landroid/content/res/Resources;)V

    .line 832
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    instance-of p1, p2, Landroid/view/ViewGroup;

    if-eqz p1, :cond_3e

    .line 842
    move-object p1, p2

    check-cast p1, Landroid/view/ViewGroup;

    .line 843
    .local p1, "vg":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2e
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3e

    .line 844
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {p0, v1, v3}, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewHierarchyDumper;->dumpView(Landroid/net/connectivity/org/chromium/base/TraceEvent$ActivityInfo;ILandroid/view/View;)V

    .line 843
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 847
    .end local v0    # "i":I
    .end local p1    # "vg":Landroid/view/ViewGroup;
    :cond_3e
    return-void
.end method

.method private static blacklist enable()V
    .registers 2

    .line 850
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 851
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewHierarchyDumper;->sEnabled:Z

    if-nez v0, :cond_13

    .line 852
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    sget-object v1, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewHierarchyDumper;->sInstance:Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewHierarchyDumper;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 853
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewHierarchyDumper;->sEnabled:Z

    .line 855
    :cond_13
    return-void
.end method

.method static synthetic blacklist lambda$updateEnabledState$0()V
    .registers 1

    .line 816
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEventJni;->get()Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;->viewHierarchyDumpEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 817
    sget-object v0, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewHierarchyDumper;->sInstance:Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewHierarchyDumper;

    if-nez v0, :cond_15

    .line 818
    new-instance v0, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewHierarchyDumper;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewHierarchyDumper;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewHierarchyDumper;->sInstance:Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewHierarchyDumper;

    .line 820
    :cond_15
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewHierarchyDumper;->enable()V

    goto :goto_20

    .line 822
    :cond_19
    sget-object v0, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewHierarchyDumper;->sInstance:Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewHierarchyDumper;

    if-eqz v0, :cond_20

    .line 823
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewHierarchyDumper;->disable()V

    .line 826
    :cond_20
    :goto_20
    return-void
.end method

.method public static blacklist updateEnabledState()V
    .registers 2

    .line 813
    new-instance v0, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewHierarchyDumper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewHierarchyDumper$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x7

    invoke-static {v1, v0}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->runOrPostTask(ILjava/lang/Runnable;)V

    .line 827
    return-void
.end method


# virtual methods
.method public final whitelist queueIdle()Z
    .registers 7

    .line 802
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TimeUtils;->elapsedRealtimeMillis()J

    move-result-wide v0

    .line 803
    .local v0, "now":J
    iget-wide v2, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewHierarchyDumper;->mLastDumpTs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_16

    iget-wide v2, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewHierarchyDumper;->mLastDumpTs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_1b

    .line 804
    :cond_16
    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewHierarchyDumper;->mLastDumpTs:J

    .line 805
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->snapshotViewHierarchy()V

    .line 809
    :cond_1b
    const/4 v2, 0x1

    return v2
.end method
