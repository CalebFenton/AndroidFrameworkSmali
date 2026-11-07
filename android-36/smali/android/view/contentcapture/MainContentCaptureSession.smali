.class public final Landroid/view/contentcapture/MainContentCaptureSession;
.super Landroid/view/contentcapture/ContentCaptureSession;
.source "MainContentCaptureSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver;,
        Landroid/view/contentcapture/MainContentCaptureSession$ViewStructureSession;
    }
.end annotation


# static fields
.field private static final blacklist CONTENT_CAPTURE_WRONG_THREAD_METRIC_ID:Ljava/lang/String; = "content_capture.value_content_capture_wrong_thread_count"

.field private static final blacklist FORCE_FLUSH:Z = true

.field private static final blacklist MSG_FLUSH:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mApplicationToken:Landroid/os/IBinder;

.field public blacklist mComponentName:Landroid/content/ComponentName;

.field private final blacklist mContentCaptureHandler:Landroid/os/Handler;

.field public blacklist mContentProtectionEventProcessor:Landroid/view/contentprotection/ContentProtectionEventProcessor;

.field private final blacklist mContext:Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;

.field public blacklist mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

.field private blacklist mDirectServiceVulture:Landroid/os/IBinder$DeathRecipient;

.field private final blacklist mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final blacklist mEventProcessQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/view/contentcapture/ContentCaptureEvent;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/contentcapture/ContentCaptureEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFlushHistory:Landroid/util/LocalLog;

.field private final blacklist mManager:Landroid/view/contentcapture/ContentCaptureManager;

.field private blacklist mNextFlush:J

.field private blacklist mNextFlushForTextChanged:Z

.field private final blacklist mSessionStateReceiver:Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver;

.field private blacklist mShareableActivityToken:Landroid/os/IBinder;

.field private blacklist mState:I

.field private final blacklist mSystemServerInterface:Landroid/view/contentcapture/IContentCaptureManager;

.field private final blacklist mUiHandler:Landroid/os/Handler;

.field private final blacklist mWrongThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static synthetic blacklist $r8$lambda$77nhuHK9XGWFdX4OzffnCSzHQfE(Landroid/view/contentcapture/MainContentCaptureSession;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/contentcapture/MainContentCaptureSession;->lambda$start$0(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$HoAeaVrp779jFJDfGFpC1dRLoTM(Landroid/view/contentcapture/MainContentCaptureSession;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->lambda$flush$4(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$anKP29NRI_kE85D6_Du0O3NBs_o(Landroid/view/contentcapture/MainContentCaptureSession;Landroid/util/SparseArray;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->lambda$notifyContentCaptureEvents$7(Landroid/util/SparseArray;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$b264kLcJIujLe9rJoR9Hy57tb3U(Landroid/view/contentcapture/MainContentCaptureSession;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->lambda$onDestroy$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cMcT2WQ8iRvTYvVIDKsdUVXr7rc(Landroid/view/contentcapture/MainContentCaptureSession;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->lambda$scheduleFlush$3(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jj3qYLupxKpWLarLYshvfZf1dHs(Landroid/view/contentcapture/MainContentCaptureSession;Ljava/util/List;Landroid/view/contentcapture/ContentCaptureEvent;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/contentcapture/MainContentCaptureSession;->lambda$enqueueEvent$5(Ljava/util/List;Landroid/view/contentcapture/ContentCaptureEvent;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rhUV3DWx7Wl4pKspC-PUEuhOwoA(Landroid/view/contentcapture/MainContentCaptureSession;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->lambda$onSessionStarted$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xOPSWVmmcyQ3M5B8qZOKvNggrmw(Landroid/view/contentcapture/MainContentCaptureSession;Landroid/util/SparseArray;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->lambda$notifyContentCaptureEvents$6(Landroid/util/SparseArray;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisabled(Landroid/view/contentcapture/MainContentCaptureSession;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mrunOnContentCaptureThread(Landroid/view/contentcapture/MainContentCaptureSession;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->runOnContentCaptureThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 86
    const-class v0, Landroid/view/contentcapture/MainContentCaptureSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;Landroid/view/contentcapture/ContentCaptureManager;Landroid/os/Handler;Landroid/os/Handler;Landroid/view/contentcapture/IContentCaptureManager;)V
    .registers 8
    .param p1, "context"    # Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;
    .param p2, "manager"    # Landroid/view/contentcapture/ContentCaptureManager;
    .param p3, "uiHandler"    # Landroid/os/Handler;
    .param p4, "contentCaptureHandler"    # Landroid/os/Handler;
    .param p5, "systemServerInterface"    # Landroid/view/contentcapture/IContentCaptureManager;

    .line 236
    invoke-direct {p0}, Landroid/view/contentcapture/ContentCaptureSession;-><init>()V

    .line 99
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 134
    iput v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    .line 173
    iput-boolean v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mNextFlushForTextChanged:Z

    .line 178
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mWrongThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 237
    iput-object p1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContext:Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;

    .line 238
    iput-object p2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    .line 239
    iput-object p3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mUiHandler:Landroid/os/Handler;

    .line 240
    iput-object p4, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContentCaptureHandler:Landroid/os/Handler;

    .line 241
    iput-object p5, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mSystemServerInterface:Landroid/view/contentcapture/IContentCaptureManager;

    .line 243
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v0, v0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v0, v0, Landroid/content/ContentCaptureOptions;->logHistorySize:I

    .line 244
    .local v0, "logHistorySize":I
    if-lez v0, :cond_2e

    new-instance v1, Landroid/util/LocalLog;

    invoke-direct {v1, v0}, Landroid/util/LocalLog;-><init>(I)V

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    iput-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mFlushHistory:Landroid/util/LocalLog;

    .line 246
    new-instance v1, Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver;

    invoke-direct {v1, p0}, Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;)V

    iput-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mSessionStateReceiver:Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver;

    .line 248
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEventProcessQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 249
    return-void
.end method

.method private blacklist checkOnContentCaptureThread()V
    .registers 5

    .line 1126
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContentCaptureHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    .line 1127
    .local v0, "onContentCaptureThread":Z
    if-nez v0, :cond_2d

    .line 1128
    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mWrongThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1129
    sget-object v1, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MainContentCaptureSession running on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :cond_2d
    return-void
.end method

.method private blacklist clearAndRunOnContentCaptureThread(Ljava/lang/Runnable;I)V
    .registers 4
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "what"    # I

    .line 1154
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContentCaptureHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1155
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContentCaptureHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1156
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContentCaptureHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1a

    .line 1158
    :cond_17
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1160
    :goto_1a
    return-void
.end method

.method private blacklist clearBufferEvents()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/contentcapture/ContentCaptureEvent;",
            ">;"
        }
    .end annotation

    .line 904
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 906
    .local v0, "bufferEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/contentcapture/ContentCaptureEvent;>;"
    :goto_5
    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEventProcessQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/contentcapture/ContentCaptureEvent;

    move-object v2, v1

    .local v2, "event":Landroid/view/contentcapture/ContentCaptureEvent;
    if-eqz v1, :cond_14

    .line 907
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 909
    :cond_14
    return-object v0
.end method

.method private blacklist clearEvents()Landroid/content/pm/ParceledListSlice;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/view/contentcapture/ContentCaptureEvent;",
            ">;"
        }
    .end annotation

    .line 703
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->checkOnContentCaptureThread()V

    .line 706
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    if-nez v0, :cond_f

    .line 707
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0

    .line 710
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 711
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/contentcapture/ContentCaptureEvent;>;"
    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 712
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private blacklist enqueueEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/contentcapture/ContentCaptureEvent;

    .line 913
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->enqueueEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    .line 914
    return-void
.end method

.method private blacklist enqueueEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V
    .registers 5
    .param p1, "event"    # Landroid/view/contentcapture/ContentCaptureEvent;
    .param p2, "forceFlush"    # Z

    .line 921
    if-nez p2, :cond_19

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEventProcessQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v1, v1, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v1, v1, Landroid/content/ContentCaptureOptions;->maxBufferSize:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_13

    goto :goto_19

    .line 933
    :cond_13
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEventProcessQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_26

    .line 925
    :cond_19
    :goto_19
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->clearBufferEvents()Ljava/util/List;

    move-result-object v0

    .line 926
    .local v0, "batchEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/contentcapture/ContentCaptureEvent;>;"
    new-instance v1, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0, p1}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda3;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;Ljava/util/List;Landroid/view/contentcapture/ContentCaptureEvent;)V

    invoke-direct {p0, v1}, Landroid/view/contentcapture/MainContentCaptureSession;->runOnContentCaptureThread(Ljava/lang/Runnable;)V

    .line 932
    .end local v0    # "batchEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/contentcapture/ContentCaptureEvent;>;"
    nop

    .line 935
    :goto_26
    return-void
.end method

.method private blacklist flushIfNeeded(I)V
    .registers 4
    .param p1, "reason"    # I

    .line 616
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->checkOnContentCaptureThread()V

    .line 617
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_14

    .line 621
    :cond_10
    invoke-virtual {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->flush(I)V

    .line 622
    return-void

    .line 618
    :cond_14
    :goto_14
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_1f

    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    const-string v1, "Nothing to flush"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_1f
    return-void
.end method

.method private blacklist flushImpl(I)V
    .registers 10
    .param p1, "reason"    # I

    .line 634
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->checkOnContentCaptureThread()V

    .line 635
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    if-eqz v0, :cond_171

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_171

    .line 642
    :cond_11
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "handleForceFlush("

    if-eqz v0, :cond_3c

    .line 643
    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): should not be when disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    return-void

    .line 648
    :cond_3c
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->isContentCaptureReceiverEnabled()Z

    move-result v0

    if-nez v0, :cond_43

    .line 649
    return-void

    .line 652
    :cond_43
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_7f

    .line 653
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_73

    .line 654
    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "): hold your horses, client not ready: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_73
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContentCaptureHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 658
    invoke-direct {p0, p1, v2}, Landroid/view/contentcapture/MainContentCaptureSession;->scheduleFlush(IZ)V

    .line 660
    :cond_7e
    return-void

    .line 663
    :cond_7f
    iput-boolean v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mNextFlushForTextChanged:Z

    .line 665
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 666
    .local v0, "numberEvents":I
    invoke-static {p1}, Landroid/view/contentcapture/MainContentCaptureSession;->getFlushReasonAsString(I)Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, "reasonString":Ljava/lang/String;
    sget-boolean v2, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v2, :cond_e5

    .line 669
    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/contentcapture/ContentCaptureEvent;

    .line 670
    .local v2, "event":Landroid/view/contentcapture/ContentCaptureEvent;
    const/16 v4, 0x8

    if-ne p1, v4, :cond_b9

    .line 671
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ". The force flush event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/contentcapture/ContentCaptureEvent;->getType()I

    move-result v5

    invoke-static {v5}, Landroid/view/contentcapture/ContentCaptureEvent;->getTypeAsString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_bb

    :cond_b9
    const-string v4, ""

    .line 672
    .local v4, "forceString":Ljava/lang/String;
    :goto_bb
    sget-object v5, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Flushing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " event(s) for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    .end local v2    # "event":Landroid/view/contentcapture/ContentCaptureEvent;
    .end local v4    # "forceString":Ljava/lang/String;
    :cond_e5
    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mFlushHistory:Landroid/util/LocalLog;

    if-eqz v2, :cond_12c

    .line 677
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "r="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " s="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " m="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v4, v4, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v4, v4, Landroid/content/ContentCaptureOptions;->maxBufferSize:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " i="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v4, v4, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v4, v4, Landroid/content/ContentCaptureOptions;->idleFlushingFrequencyMs:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 680
    .local v2, "logRecord":Ljava/lang/String;
    iget-object v4, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mFlushHistory:Landroid/util/LocalLog;

    invoke-virtual {v4, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 683
    .end local v2    # "logRecord":Ljava/lang/String;
    :cond_12c
    :try_start_12c
    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContentCaptureHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 685
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->clearEvents()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 686
    .local v2, "events":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/view/contentcapture/ContentCaptureEvent;>;"
    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    iget-object v4, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v4, v4, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    invoke-interface {v3, v2, p1, v4}, Landroid/view/contentcapture/IContentCaptureDirectManager;->sendEvents(Landroid/content/pm/ParceledListSlice;ILandroid/content/ContentCaptureOptions;)V
    :try_end_13e
    .catch Landroid/os/RemoteException; {:try_start_12c .. :try_end_13e} :catch_13f

    .line 690
    .end local v2    # "events":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/view/contentcapture/ContentCaptureEvent;>;"
    goto :goto_170

    .line 687
    :catch_13f
    move-exception v2

    .line 688
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error sending "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_170
    return-void

    .line 636
    .end local v0    # "numberEvents":I
    .end local v1    # "reasonString":Ljava/lang/String;
    :cond_171
    :goto_171
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_17c

    .line 637
    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    const-string v1, "Don\'t flush for empty event buffer."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_17c
    return-void
.end method

.method private blacklist getActivityName()Ljava/lang/String;
    .registers 3

    .line 1083
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_1e

    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContext:Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;

    invoke-virtual {v1}, Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    .line 1085
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "act:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1083
    :goto_37
    return-object v0
.end method

.method private blacklist getDebugState()Ljava/lang/String;
    .registers 3

    .line 1090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->getActivityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    invoke-static {v1}, Landroid/view/contentcapture/MainContentCaptureSession;->getStateAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1091
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1090
    return-object v0
.end method

.method private blacklist getDebugState(I)Ljava/lang/String;
    .registers 4
    .param p1, "reason"    # I

    .line 1096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/view/contentcapture/MainContentCaptureSession;->getFlushReasonAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist hasStarted()Z
    .registers 2

    .line 565
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->checkOnContentCaptureThread()V

    .line 566
    iget v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private blacklist isContentCaptureReceiverEnabled()Z
    .registers 2

    .line 1104
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v0, v0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->enableReceiver:Z

    return v0
.end method

.method private blacklist isContentProtectionEnabled()Z
    .registers 2

    .line 1110
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v0, v0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-object v0, v0, Landroid/content/ContentCaptureOptions;->contentProtectionOptions:Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->enableReceiver:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    .line 1111
    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureManager;->getContentProtectionEventBuffer()Lcom/android/internal/util/RingBuffer;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v0, v0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-object v0, v0, Landroid/content/ContentCaptureOptions;->contentProtectionOptions:Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

    iget-object v0, v0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->requiredGroups:Ljava/util/List;

    .line 1113
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v0, v0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-object v0, v0, Landroid/content/ContentCaptureOptions;->contentProtectionOptions:Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

    iget-object v0, v0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->optionalGroups:Ljava/util/List;

    .line 1114
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    :cond_32
    const/4 v0, 0x1

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    .line 1110
    :goto_35
    return v0
.end method

.method private blacklist isContentProtectionReceiverEnabled()Z
    .registers 2

    .line 1100
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v0, v0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-object v0, v0, Landroid/content/ContentCaptureOptions;->contentProtectionOptions:Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->enableReceiver:Z

    return v0
.end method

.method private synthetic blacklist lambda$enqueueEvent$5(Ljava/util/List;Landroid/view/contentcapture/ContentCaptureEvent;)V
    .registers 5
    .param p1, "batchEvents"    # Ljava/util/List;
    .param p2, "event"    # Landroid/view/contentcapture/ContentCaptureEvent;

    .line 927
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 928
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/contentcapture/ContentCaptureEvent;

    invoke-virtual {p0, v1}, Landroid/view/contentcapture/MainContentCaptureSession;->sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    .line 927
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 930
    .end local v0    # "i":I
    :cond_13
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    .line 931
    return-void
.end method

.method private synthetic blacklist lambda$flush$4(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 630
    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->flushImpl(I)V

    return-void
.end method

.method private synthetic blacklist lambda$notifyContentCaptureEvents$6(Landroid/util/SparseArray;)V
    .registers 2
    .param p1, "contentCaptureEvents"    # Landroid/util/SparseArray;

    .line 943
    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyContentCaptureEventsImpl(Landroid/util/SparseArray;)V

    return-void
.end method

.method private synthetic blacklist lambda$notifyContentCaptureEvents$7(Landroid/util/SparseArray;)V
    .registers 3
    .param p1, "contentCaptureEvents"    # Landroid/util/SparseArray;

    .line 941
    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->prepareViewStructures(Landroid/util/SparseArray;)V

    .line 942
    new-instance v0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda1;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;Landroid/util/SparseArray;)V

    invoke-direct {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->runOnContentCaptureThread(Ljava/lang/Runnable;)V

    .line 944
    return-void
.end method

.method private synthetic blacklist lambda$onDestroy$1()V
    .registers 2

    .line 313
    const/4 v0, 0x4

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->flush(I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_9

    .line 315
    invoke-virtual {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->destroySession()V

    .line 316
    nop

    .line 317
    return-void

    .line 315
    :catchall_9
    move-exception v0

    invoke-virtual {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->destroySession()V

    .line 316
    throw v0
.end method

.method private synthetic blacklist lambda$onSessionStarted$2()V
    .registers 4

    .line 334
    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Keeping session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when service died"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/16 v0, 0x400

    iput v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    .line 336
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 337
    return-void
.end method

.method private synthetic blacklist lambda$scheduleFlush$3(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 612
    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->flushIfNeeded(I)V

    return-void
.end method

.method private synthetic blacklist lambda$start$0(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "shareableActivityToken"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "flags"    # I

    .line 270
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/contentcapture/MainContentCaptureSession;->startImpl(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    return-void
.end method

.method private blacklist notifyContentCaptureEventsImpl(Landroid/util/SparseArray;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 990
    .local p1, "contentCaptureEvents":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->checkOnContentCaptureThread()V

    .line 992
    const-wide/16 v0, 0x8

    :try_start_5
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 993
    const-string v2, "notifyContentCaptureEvents"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 995
    :cond_10
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_7c

    .line 996
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 997
    .local v3, "sessionId":I
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/view/contentcapture/MainContentCaptureSession;->internalNotifyViewTreeEvent(IZ)V

    .line 998
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 999
    .local v4, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_26
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_6c

    .line 1000
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1001
    .local v6, "event":Ljava/lang/Object;
    instance-of v7, v6, Landroid/view/autofill/AutofillId;

    if-eqz v7, :cond_3b

    .line 1002
    move-object v7, v6

    check-cast v7, Landroid/view/autofill/AutofillId;

    invoke-virtual {p0, v3, v7}, Landroid/view/contentcapture/MainContentCaptureSession;->internalNotifyViewDisappeared(ILandroid/view/autofill/AutofillId;)V

    goto :goto_69

    .line 1003
    :cond_3b
    instance-of v7, v6, Landroid/view/contentcapture/MainContentCaptureSession$ViewStructureSession;

    if-eqz v7, :cond_46

    move-object v7, v6

    check-cast v7, Landroid/view/contentcapture/MainContentCaptureSession$ViewStructureSession;

    .line 1004
    .local v7, "viewStructureSession":Landroid/view/contentcapture/MainContentCaptureSession$ViewStructureSession;
    invoke-virtual {v7}, Landroid/view/contentcapture/MainContentCaptureSession$ViewStructureSession;->notifyViewAppeared()V

    goto :goto_69

    .line 1005
    .end local v7    # "viewStructureSession":Landroid/view/contentcapture/MainContentCaptureSession$ViewStructureSession;
    :cond_46
    instance-of v7, v6, Landroid/graphics/Insets;

    if-eqz v7, :cond_51

    .line 1006
    move-object v7, v6

    check-cast v7, Landroid/graphics/Insets;

    invoke-virtual {p0, v3, v7}, Landroid/view/contentcapture/MainContentCaptureSession;->internalNotifyViewInsetsChanged(ILandroid/graphics/Insets;)V

    goto :goto_69

    .line 1008
    :cond_51
    sget-object v7, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid content capture event: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    .end local v6    # "event":Ljava/lang/Object;
    :goto_69
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 1011
    .end local v5    # "j":I
    :cond_6c
    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Landroid/view/contentcapture/MainContentCaptureSession;->internalNotifyViewTreeEvent(IZ)V

    .line 1012
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentcapture/flags/Flags;->flushAfterEachFrame()Z

    move-result v5

    if-eqz v5, :cond_79

    .line 1013
    invoke-virtual {p0, v3}, Landroid/view/contentcapture/MainContentCaptureSession;->internalNotifySessionFlushEvent(I)V
    :try_end_79
    .catchall {:try_start_5 .. :try_end_79} :catchall_81

    .line 995
    .end local v3    # "sessionId":I
    .end local v4    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_79
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1017
    .end local v2    # "i":I
    :cond_7c
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1018
    nop

    .line 1019
    return-void

    .line 1017
    :catchall_81
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1018
    throw v2
.end method

.method private blacklist prepareViewStructures(Landroid/util/SparseArray;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 954
    .local p1, "contentCaptureEvents":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_99

    .line 955
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 956
    .local v1, "sessionId":I
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 957
    .local v2, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_12
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_95

    .line 958
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 959
    .local v4, "event":Ljava/lang/Object;
    instance-of v5, v4, Landroid/view/View;

    if-eqz v5, :cond_91

    .line 960
    move-object v5, v4

    check-cast v5, Landroid/view/View;

    .line 961
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getContentCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v6

    .line 962
    .local v6, "session":Landroid/view/contentcapture/ContentCaptureSession;
    new-instance v7, Landroid/view/contentcapture/MainContentCaptureSession$ViewStructureSession;

    invoke-direct {v7}, Landroid/view/contentcapture/MainContentCaptureSession$ViewStructureSession;-><init>()V

    .line 967
    .local v7, "structureSession":Landroid/view/contentcapture/MainContentCaptureSession$ViewStructureSession;
    invoke-virtual {v2, v3, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 968
    if-nez v6, :cond_4a

    .line 969
    sget-object v8, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "no content capture session on view: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    goto :goto_91

    .line 972
    :cond_4a
    invoke-virtual {v6}, Landroid/view/contentcapture/ContentCaptureSession;->getId()I

    move-result v8

    .line 973
    .local v8, "actualId":I
    if-eq v8, v1, :cond_83

    .line 974
    sget-object v9, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "content capture session mismatch for view ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "): was "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " before, it\'s "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " now"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    goto :goto_91

    .line 978
    :cond_83
    invoke-virtual {v6, v5}, Landroid/view/contentcapture/ContentCaptureSession;->newViewStructure(Landroid/view/View;)Landroid/view/ViewStructure;

    move-result-object v9

    .line 979
    .local v9, "structure":Landroid/view/ViewStructure;
    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/view/View;->onProvideContentCaptureStructure(Landroid/view/ViewStructure;I)V

    .line 981
    invoke-virtual {v7, v6}, Landroid/view/contentcapture/MainContentCaptureSession$ViewStructureSession;->setSession(Landroid/view/contentcapture/ContentCaptureSession;)V

    .line 982
    invoke-virtual {v7, v9}, Landroid/view/contentcapture/MainContentCaptureSession$ViewStructureSession;->setStructure(Landroid/view/ViewStructure;)V

    .line 957
    .end local v4    # "event":Ljava/lang/Object;
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "session":Landroid/view/contentcapture/ContentCaptureSession;
    .end local v7    # "structureSession":Landroid/view/contentcapture/MainContentCaptureSession$ViewStructureSession;
    .end local v8    # "actualId":I
    .end local v9    # "structure":Landroid/view/ViewStructure;
    :cond_91
    :goto_91
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_12

    .line 954
    .end local v1    # "sessionId":I
    .end local v2    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v3    # "j":I
    :cond_95
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 986
    .end local v0    # "i":I
    :cond_99
    return-void
.end method

.method private blacklist reportWrongThreadMetric()V
    .registers 4

    .line 1135
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mWrongThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1136
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    int-to-long v0, v0

    .line 1135
    const-string v2, "content_capture.value_content_capture_wrong_thread_count"

    invoke-static {v2, v0, v1}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;J)V

    .line 1137
    return-void
.end method

.method private blacklist runOnContentCaptureThread(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 1146
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContentCaptureHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1147
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContentCaptureHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_15

    .line 1149
    :cond_12
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1151
    :goto_15
    return-void
.end method

.method private blacklist runOnUiThread(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 1163
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1164
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_15

    .line 1166
    :cond_10
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1168
    :goto_15
    return-void
.end method

.method private blacklist scheduleFlush(IZ)V
    .registers 9
    .param p1, "reason"    # I
    .param p2, "checkExisting"    # Z

    .line 570
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->checkOnContentCaptureThread()V

    .line 571
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    const-string v1, "handleScheduleFlush("

    if-eqz v0, :cond_2d

    .line 572
    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", checkExisting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_2d
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 576
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_3e

    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    const-string v1, "handleScheduleFlush(): session not started yet"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_3e
    return-void

    .line 580
    :cond_3f
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 583
    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): should not be called when disabled. events="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 584
    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    if-nez v2, :cond_66

    const/4 v2, 0x0

    goto :goto_70

    :cond_66
    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 583
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    return-void

    .line 587
    :cond_7c
    const/4 v0, 0x1

    if-eqz p2, :cond_8c

    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContentCaptureHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 589
    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContentCaptureHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 593
    :cond_8c
    const/4 v2, 0x6

    if-ne p1, v2, :cond_96

    .line 594
    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v1, v1, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v1, v1, Landroid/content/ContentCaptureOptions;->textChangeFlushingFrequencyMs:I

    .local v1, "flushFrequencyMs":I
    goto :goto_c3

    .line 596
    .end local v1    # "flushFrequencyMs":I
    :cond_96
    const/4 v2, 0x5

    if-eq p1, v2, :cond_bd

    .line 597
    sget-boolean v2, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v2, :cond_bd

    .line 598
    sget-object v2, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "): not a timeout reason because mDirectServiceInterface is not ready yet"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_bd
    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v1, v1, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v1, v1, Landroid/content/ContentCaptureOptions;->idleFlushingFrequencyMs:I

    .line 605
    .restart local v1    # "flushFrequencyMs":I
    :goto_c3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mNextFlush:J

    .line 606
    sget-boolean v2, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v2, :cond_f7

    .line 607
    sget-object v2, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleScheduleFlush(): scheduled to flush in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mNextFlush:J

    .line 608
    invoke-static {v4, v5}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 607
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_f7
    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContentCaptureHandler:Landroid/os/Handler;

    new-instance v3, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda0;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;I)V

    int-to-long v4, v1

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    .line 613
    return-void
.end method

.method private blacklist sendContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V
    .registers 20
    .param p1, "event"    # Landroid/view/contentcapture/ContentCaptureEvent;
    .param p2, "forceFlush"    # Z

    .line 430
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Landroid/view/contentcapture/MainContentCaptureSession;->checkOnContentCaptureThread()V

    .line 431
    invoke-virtual {v1}, Landroid/view/contentcapture/ContentCaptureEvent;->getType()I

    move-result v2

    .line 432
    .local v2, "eventType":I
    iget-object v3, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v3, v3, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v3, v3, Landroid/content/ContentCaptureOptions;->maxBufferSize:I

    .line 433
    .local v3, "maxBufferSize":I
    iget-object v4, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    if-nez v4, :cond_3e

    .line 434
    sget-boolean v4, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v4, :cond_37

    .line 435
    sget-object v4, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSendEvent(): creating buffer for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " events"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_37
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    .line 441
    :cond_3e
    const/4 v4, 0x1

    .line 443
    .local v4, "addEvent":Z
    const/4 v5, 0x3

    const/4 v7, 0x1

    if-ne v2, v5, :cond_cf

    .line 450
    invoke-virtual {v1}, Landroid/view/contentcapture/ContentCaptureEvent;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    .line 451
    .local v8, "text":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/view/contentcapture/ContentCaptureEvent;->hasComposingSpan()Z

    move-result v9

    .line 452
    .local v9, "hasComposingSpan":Z
    if-eqz v9, :cond_cf

    .line 453
    const/4 v10, 0x0

    .line 454
    .local v10, "lastEvent":Landroid/view/contentcapture/ContentCaptureEvent;
    iget-object v11, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v7

    .local v11, "index":I
    :goto_55
    if-ltz v11, :cond_72

    .line 455
    iget-object v12, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/contentcapture/ContentCaptureEvent;

    .line 456
    .local v12, "tmpEvent":Landroid/view/contentcapture/ContentCaptureEvent;
    invoke-virtual {v1}, Landroid/view/contentcapture/ContentCaptureEvent;->getId()Landroid/view/autofill/AutofillId;

    move-result-object v13

    invoke-virtual {v12}, Landroid/view/contentcapture/ContentCaptureEvent;->getId()Landroid/view/autofill/AutofillId;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6f

    .line 457
    move-object v10, v12

    .line 458
    goto :goto_72

    .line 454
    .end local v12    # "tmpEvent":Landroid/view/contentcapture/ContentCaptureEvent;
    :cond_6f
    add-int/lit8 v11, v11, -0x1

    goto :goto_55

    .line 461
    .end local v11    # "index":I
    :cond_72
    :goto_72
    if-eqz v10, :cond_cf

    invoke-virtual {v10}, Landroid/view/contentcapture/ContentCaptureEvent;->hasComposingSpan()Z

    move-result v11

    if-eqz v11, :cond_cf

    .line 462
    invoke-virtual {v10}, Landroid/view/contentcapture/ContentCaptureEvent;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    .line 463
    .local v11, "lastText":Ljava/lang/CharSequence;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_8c

    .line 464
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_8c

    move v12, v7

    goto :goto_8d

    :cond_8c
    const/4 v12, 0x0

    .line 465
    .local v12, "bothNonEmpty":Z
    :goto_8d
    nop

    .line 466
    invoke-static {v11, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_a2

    .line 467
    invoke-virtual {v10, v1}, Landroid/view/contentcapture/ContentCaptureEvent;->hasSameComposingSpan(Landroid/view/contentcapture/ContentCaptureEvent;)Z

    move-result v13

    if-eqz v13, :cond_a2

    .line 468
    invoke-virtual {v10, v1}, Landroid/view/contentcapture/ContentCaptureEvent;->hasSameSelectionSpan(Landroid/view/contentcapture/ContentCaptureEvent;)Z

    move-result v13

    if-eqz v13, :cond_a2

    move v13, v7

    goto :goto_a3

    :cond_a2
    const/4 v13, 0x0

    .line 469
    .local v13, "equalContent":Z
    :goto_a3
    if-eqz v13, :cond_a7

    .line 470
    const/4 v4, 0x0

    goto :goto_ad

    .line 471
    :cond_a7
    if-eqz v12, :cond_ad

    .line 472
    invoke-virtual {v10, v1}, Landroid/view/contentcapture/ContentCaptureEvent;->mergeEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    .line 473
    const/4 v4, 0x0

    .line 475
    :cond_ad
    :goto_ad
    if-nez v4, :cond_cf

    sget-boolean v14, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v14, :cond_cf

    .line 476
    sget-object v14, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Buffering VIEW_TEXT_CHANGED event, updated text="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 477
    invoke-static {v8}, Landroid/view/contentcapture/ContentCaptureHelper;->getSanitizedString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 476
    invoke-static {v14, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    .end local v8    # "text":Ljava/lang/CharSequence;
    .end local v9    # "hasComposingSpan":Z
    .end local v10    # "lastEvent":Landroid/view/contentcapture/ContentCaptureEvent;
    .end local v11    # "lastText":Ljava/lang/CharSequence;
    .end local v12    # "bothNonEmpty":Z
    .end local v13    # "equalContent":Z
    :cond_cf
    iget-object v6, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    const/4 v8, 0x2

    if-nez v6, :cond_11d

    if-ne v2, v8, :cond_11d

    .line 484
    iget-object v6, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    iget-object v9, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/contentcapture/ContentCaptureEvent;

    .line 485
    .local v6, "lastEvent":Landroid/view/contentcapture/ContentCaptureEvent;
    invoke-virtual {v6}, Landroid/view/contentcapture/ContentCaptureEvent;->getType()I

    move-result v9

    if-ne v9, v8, :cond_11d

    .line 486
    invoke-virtual {v1}, Landroid/view/contentcapture/ContentCaptureEvent;->getSessionId()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/contentcapture/ContentCaptureEvent;->getSessionId()I

    move-result v10

    if-ne v9, v10, :cond_11d

    .line 487
    sget-boolean v9, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v9, :cond_119

    .line 488
    sget-object v9, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Buffering TYPE_VIEW_DISAPPEARED events for session "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 489
    invoke-virtual {v6}, Landroid/view/contentcapture/ContentCaptureEvent;->getSessionId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 488
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_119
    invoke-virtual {v6, v1}, Landroid/view/contentcapture/ContentCaptureEvent;->mergeEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    .line 492
    const/4 v4, 0x0

    .line 496
    .end local v6    # "lastEvent":Landroid/view/contentcapture/ContentCaptureEvent;
    :cond_11d
    if-eqz v4, :cond_124

    .line 497
    iget-object v6, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_124
    iget-object v6, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 507
    .local v6, "numberEvents":I
    if-ge v6, v3, :cond_12f

    move/from16 v16, v7

    goto :goto_131

    :cond_12f
    const/16 v16, 0x0

    .line 509
    .local v16, "bufferEvent":Z
    :goto_131
    if-eqz v16, :cond_150

    if-nez p2, :cond_150

    .line 511
    if-ne v2, v5, :cond_13b

    .line 512
    iput-boolean v7, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mNextFlushForTextChanged:Z

    .line 513
    const/4 v5, 0x6

    .local v5, "flushReason":I
    goto :goto_14c

    .line 515
    .end local v5    # "flushReason":I
    :cond_13b
    iget-boolean v5, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mNextFlushForTextChanged:Z

    if-eqz v5, :cond_14b

    .line 516
    sget-boolean v5, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v5, :cond_14a

    .line 517
    sget-object v5, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    const-string v7, "Not scheduling flush because next flush is for text changed"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_14a
    return-void

    .line 522
    :cond_14b
    const/4 v5, 0x5

    .line 524
    .restart local v5    # "flushReason":I
    :goto_14c
    invoke-direct {v0, v5, v7}, Landroid/view/contentcapture/MainContentCaptureSession;->scheduleFlush(IZ)V

    .line 525
    return-void

    .line 528
    .end local v5    # "flushReason":I
    :cond_150
    iget v5, v0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    if-eq v5, v8, :cond_18c

    if-lt v6, v3, :cond_18c

    .line 534
    sget-boolean v5, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v5, :cond_186

    .line 535
    sget-object v5, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Closing session for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {v0}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " after "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " delayed events"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_186
    const/16 v5, 0x84

    invoke-virtual {v0, v5}, Landroid/view/contentcapture/MainContentCaptureSession;->resetSession(I)V

    .line 541
    return-void

    .line 544
    :cond_18c
    sparse-switch v2, :sswitch_data_1a4

    .line 558
    if-eqz p2, :cond_19e

    const/16 v7, 0x8

    goto :goto_19e

    .line 555
    :sswitch_194
    const/16 v5, 0xa

    .line 556
    .restart local v5    # "flushReason":I
    goto :goto_19f

    .line 552
    .end local v5    # "flushReason":I
    :sswitch_197
    const/16 v5, 0x9

    .line 553
    .restart local v5    # "flushReason":I
    goto :goto_19f

    .line 546
    .end local v5    # "flushReason":I
    :sswitch_19a
    const/4 v5, 0x3

    .line 547
    .restart local v5    # "flushReason":I
    goto :goto_19f

    .line 549
    .end local v5    # "flushReason":I
    :sswitch_19c
    const/4 v5, 0x4

    .line 550
    .restart local v5    # "flushReason":I
    goto :goto_19f

    .line 558
    .end local v5    # "flushReason":I
    :cond_19e
    :goto_19e
    move v5, v7

    .line 561
    .restart local v5    # "flushReason":I
    :goto_19f
    invoke-virtual {v0, v5}, Landroid/view/contentcapture/MainContentCaptureSession;->flush(I)V

    .line 562
    return-void

    nop

    :sswitch_data_1a4
    .sparse-switch
        -0x2 -> :sswitch_19c
        -0x1 -> :sswitch_19a
        0x4 -> :sswitch_197
        0x5 -> :sswitch_194
    .end sparse-switch
.end method

.method private blacklist sendContentProtectionEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/contentcapture/ContentCaptureEvent;

    .line 423
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->checkOnContentCaptureThread()V

    .line 424
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContentProtectionEventProcessor:Landroid/view/contentprotection/ContentProtectionEventProcessor;

    if-eqz v0, :cond_c

    .line 425
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContentProtectionEventProcessor:Landroid/view/contentprotection/ContentProtectionEventProcessor;

    invoke-virtual {v0, p1}, Landroid/view/contentprotection/ContentProtectionEventProcessor;->processEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    .line 427
    :cond_c
    return-void
.end method

.method private blacklist sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V
    .registers 9
    .param p1, "event"    # Landroid/view/contentcapture/ContentCaptureEvent;
    .param p2, "forceFlush"    # Z

    .line 379
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->checkOnContentCaptureThread()V

    .line 380
    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getType()I

    move-result v0

    .line 381
    .local v0, "eventType":I
    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    const-string v2, "handleSendEvent("

    if-eqz v1, :cond_31

    sget-object v1, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_31
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->hasStarted()Z

    move-result v1

    if-nez v1, :cond_70

    const/4 v1, -0x1

    if-eq v0, v1, :cond_70

    const/4 v1, 0x6

    if-eq v0, v1, :cond_70

    .line 385
    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v1, :cond_6f

    .line 386
    sget-object v1, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 387
    invoke-static {v0}, Landroid/view/contentcapture/ContentCaptureEvent;->getTypeAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): dropping because session not started yet"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 386
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_6f
    return-void

    .line 392
    :cond_70
    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_84

    .line 396
    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v1, :cond_83

    sget-object v1, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    const-string v2, "handleSendEvent(): ignoring when disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_83
    return-void

    .line 400
    :cond_84
    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    const/4 v4, 0x0

    const-string/jumbo v5, "sendEventAsync"

    if-eqz v3, :cond_96

    .line 401
    const/4 v3, 0x4

    if-ne v0, v3, :cond_96

    .line 402
    invoke-static {v1, v2, v5, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 407
    :cond_96
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->isContentProtectionReceiverEnabled()Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 408
    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->sendContentProtectionEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    .line 410
    :cond_9f
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->isContentCaptureReceiverEnabled()Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 411
    invoke-direct {p0, p1, p2}, Landroid/view/contentcapture/MainContentCaptureSession;->sendContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    .line 414
    :cond_a8
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 415
    const/4 v3, 0x5

    if-ne v0, v3, :cond_b4

    .line 416
    invoke-static {v1, v2, v5, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 420
    :cond_b4
    return-void
.end method

.method private blacklist startImpl(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .registers 14
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "shareableActivityToken"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "flags"    # I

    .line 275
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->checkOnContentCaptureThread()V

    .line 276
    invoke-virtual {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 278
    :cond_a
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_35

    .line 279
    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start(): token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", comp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 280
    invoke-static {p3}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_35
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 285
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v0, :cond_75

    .line 286
    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring handleStartSession("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 287
    invoke-static {p3}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " while on state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    .line 288
    invoke-static {v2}, Landroid/view/contentcapture/MainContentCaptureSession;->getStateAsString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_75
    return-void

    .line 292
    :cond_76
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    .line 293
    iput-object p1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mApplicationToken:Landroid/os/IBinder;

    .line 294
    iput-object p2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mShareableActivityToken:Landroid/os/IBinder;

    .line 295
    iput-object p3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mComponentName:Landroid/content/ComponentName;

    .line 297
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_b5

    .line 298
    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStartSession(): token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", act="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 299
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_b5
    :try_start_b5
    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mSystemServerInterface:Landroid/view/contentcapture/IContentCaptureManager;

    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mApplicationToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mShareableActivityToken:Landroid/os/IBinder;

    iget v6, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    iget-object v8, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mSessionStateReceiver:Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver;
    :try_end_bf
    .catch Landroid/os/RemoteException; {:try_start_b5 .. :try_end_bf} :catch_c8

    move-object v5, p3

    move v7, p4

    .end local p3    # "component":Landroid/content/ComponentName;
    .end local p4    # "flags":I
    .local v5, "component":Landroid/content/ComponentName;
    .local v7, "flags":I
    :try_start_c1
    invoke-interface/range {v2 .. v8}, Landroid/view/contentcapture/IContentCaptureManager;->startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;IILcom/android/internal/os/IResultReceiver;)V
    :try_end_c4
    .catch Landroid/os/RemoteException; {:try_start_c1 .. :try_end_c4} :catch_c5

    .line 307
    goto :goto_f2

    .line 305
    :catch_c5
    move-exception v0

    move-object p3, v0

    goto :goto_cc

    .end local v5    # "component":Landroid/content/ComponentName;
    .end local v7    # "flags":I
    .restart local p3    # "component":Landroid/content/ComponentName;
    .restart local p4    # "flags":I
    :catch_c8
    move-exception v0

    move-object v5, p3

    move v7, p4

    move-object p3, v0

    .line 306
    .end local p4    # "flags":I
    .restart local v5    # "component":Landroid/content/ComponentName;
    .restart local v7    # "flags":I
    .local p3, "e":Landroid/os/RemoteException;
    :goto_cc
    sget-object p4, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error starting session for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .end local p3    # "e":Landroid/os/RemoteException;
    :goto_f2
    return-void
.end method


# virtual methods
.method public blacklist destroySession()V
    .registers 6

    .line 718
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->checkOnContentCaptureThread()V

    .line 719
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_52

    .line 720
    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroying session (ctx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContext:Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 721
    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    if-nez v3, :cond_33

    move v3, v1

    goto :goto_39

    :cond_33
    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " event(s) for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 722
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 720
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_52
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->reportWrongThreadMetric()V

    .line 727
    :try_start_55
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mSystemServerInterface:Landroid/view/contentcapture/IContentCaptureManager;

    iget v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-interface {v0, v2}, Landroid/view/contentcapture/IContentCaptureManager;->finishSession(I)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5c} :catch_5d

    .line 731
    goto :goto_90

    .line 728
    :catch_5d
    move-exception v0

    .line 729
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error destroying system-service session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 730
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->getDebugState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 729
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_90
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    if-eqz v0, :cond_9f

    .line 734
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    invoke-interface {v0}, Landroid/view/contentcapture/IContentCaptureDirectManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceVulture:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 736
    :cond_9f
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    .line 737
    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContentProtectionEventProcessor:Landroid/view/contentprotection/ContentProtectionEventProcessor;

    .line 738
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEventProcessQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 739
    return-void
.end method

.method blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1023
    invoke-super {p0, p1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1025
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContext: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContext:Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1026
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "user: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContext:Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;

    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;->getUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1027
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    if-eqz v0, :cond_33

    .line 1028
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDirectServiceInterface: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1029
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1031
    :cond_33
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDisabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1032
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isEnabled(): "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1033
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "state: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    invoke-static {v0}, Landroid/view/contentcapture/MainContentCaptureSession;->getStateAsString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1034
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mApplicationToken:Landroid/os/IBinder;

    if-eqz v0, :cond_76

    .line 1035
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "app token: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mApplicationToken:Landroid/os/IBinder;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1037
    :cond_76
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mShareableActivityToken:Landroid/os/IBinder;

    if-eqz v0, :cond_88

    .line 1038
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "sharable activity token: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1039
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mShareableActivityToken:Landroid/os/IBinder;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1041
    :cond_88
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_9d

    .line 1042
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "component name: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1043
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1045
    :cond_9d
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    if-eqz v0, :cond_151

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_151

    .line 1046
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1047
    .local v0, "numberEvents":I
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "buffered events: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1048
    const/16 v1, 0x2f

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(C)V

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v1, v1, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v1, v1, Landroid/content/ContentCaptureOptions;->maxBufferSize:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1049
    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v1, :cond_100

    if-lez v0, :cond_100

    .line 1050
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1051
    .local v1, "prefix3":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e2
    if-ge v2, v0, :cond_100

    .line 1052
    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/contentcapture/ContentCaptureEvent;

    .line 1053
    .local v3, "event":Landroid/view/contentcapture/ContentCaptureEvent;
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Landroid/view/contentcapture/ContentCaptureEvent;->dump(Ljava/io/PrintWriter;)V

    .line 1054
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1051
    .end local v3    # "event":Landroid/view/contentcapture/ContentCaptureEvent;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e2

    .line 1057
    .end local v1    # "prefix3":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_100
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mNextFlushForTextChanged: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1058
    iget-boolean v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mNextFlushForTextChanged:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1059
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "flush frequency: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1060
    iget-boolean v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mNextFlushForTextChanged:Z

    if-eqz v1, :cond_123

    .line 1061
    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v1, v1, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v1, v1, Landroid/content/ContentCaptureOptions;->textChangeFlushingFrequencyMs:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_12c

    .line 1063
    :cond_123
    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v1, v1, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v1, v1, Landroid/content/ContentCaptureOptions;->idleFlushingFrequencyMs:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1065
    :goto_12c
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "next flush: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1066
    iget-wide v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mNextFlush:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1067
    const-string v1, " ("

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mNextFlush:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ")"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1069
    .end local v0    # "numberEvents":I
    :cond_151
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mFlushHistory:Landroid/util/LocalLog;

    if-eqz v0, :cond_167

    .line 1070
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "flush history:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1071
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mFlushHistory:Landroid/util/LocalLog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, v1}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_16f

    .line 1073
    :cond_167
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "not logging flush history"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1076
    :goto_16f
    invoke-super {p0, p1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1077
    return-void
.end method

.method public blacklist flush(I)V
    .registers 3
    .param p1, "reason"    # I

    .line 630
    new-instance v0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda6;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;I)V

    invoke-direct {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->runOnContentCaptureThread(Ljava/lang/Runnable;)V

    .line 631
    return-void
.end method

.method blacklist getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;
    .registers 1

    .line 253
    return-object p0
.end method

.method blacklist internalNotifyChildSessionFinished(II)V
    .registers 5
    .param p1, "parentSessionId"    # I
    .param p2, "childSessionId"    # I

    .line 876
    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/4 v1, -0x2

    invoke-direct {v0, p2, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    .line 878
    invoke-virtual {v0, p1}, Landroid/view/contentcapture/ContentCaptureEvent;->setParentSessionId(I)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    .line 879
    .local v0, "event":Landroid/view/contentcapture/ContentCaptureEvent;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/contentcapture/MainContentCaptureSession;->enqueueEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    .line 880
    return-void
.end method

.method blacklist internalNotifyChildSessionStarted(IILandroid/view/contentcapture/ContentCaptureContext;)V
    .registers 6
    .param p1, "parentSessionId"    # I
    .param p2, "childSessionId"    # I
    .param p3, "clientContext"    # Landroid/view/contentcapture/ContentCaptureContext;

    .line 867
    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/4 v1, -0x1

    invoke-direct {v0, p2, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    .line 869
    invoke-virtual {v0, p1}, Landroid/view/contentcapture/ContentCaptureEvent;->setParentSessionId(I)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    .line 870
    invoke-virtual {v0, p3}, Landroid/view/contentcapture/ContentCaptureEvent;->setClientContext(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    .line 871
    .local v0, "event":Landroid/view/contentcapture/ContentCaptureEvent;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/contentcapture/MainContentCaptureSession;->enqueueEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    .line 872
    return-void
.end method

.method blacklist internalNotifyContextUpdated(ILandroid/view/contentcapture/ContentCaptureContext;)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "context"    # Landroid/view/contentcapture/ContentCaptureContext;

    .line 884
    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/4 v1, 0x6

    invoke-direct {v0, p1, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    .line 885
    invoke-virtual {v0, p2}, Landroid/view/contentcapture/ContentCaptureEvent;->setClientContext(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    .line 886
    .local v0, "event":Landroid/view/contentcapture/ContentCaptureEvent;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/contentcapture/MainContentCaptureSession;->enqueueEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    .line 887
    return-void
.end method

.method blacklist internalNotifySessionFlushEvent(I)V
    .registers 4
    .param p1, "sessionId"    # I

    .line 899
    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/16 v1, 0xb

    invoke-direct {v0, p1, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    .line 900
    .local v0, "event":Landroid/view/contentcapture/ContentCaptureEvent;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/contentcapture/MainContentCaptureSession;->enqueueEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    .line 901
    return-void
.end method

.method public blacklist internalNotifySessionPaused()V
    .registers 4

    .line 841
    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    iget v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    .line 842
    .local v0, "event":Landroid/view/contentcapture/ContentCaptureEvent;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/contentcapture/MainContentCaptureSession;->enqueueEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    .line 843
    return-void
.end method

.method public blacklist internalNotifySessionResumed()V
    .registers 4

    .line 835
    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    iget v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    .line 836
    .local v0, "event":Landroid/view/contentcapture/ContentCaptureEvent;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/contentcapture/MainContentCaptureSession;->enqueueEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    .line 837
    return-void
.end method

.method blacklist internalNotifyViewAppeared(ILandroid/view/contentcapture/ViewNode$ViewStructureImpl;)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "node"    # Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    .line 772
    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    iget-object v1, p2, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    .line 773
    invoke-virtual {v0, v1}, Landroid/view/contentcapture/ContentCaptureEvent;->setViewNode(Landroid/view/contentcapture/ViewNode;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    .line 774
    .local v0, "event":Landroid/view/contentcapture/ContentCaptureEvent;
    invoke-direct {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->enqueueEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    .line 775
    return-void
.end method

.method blacklist internalNotifyViewDisappeared(ILandroid/view/autofill/AutofillId;)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;

    .line 779
    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    .line 780
    invoke-virtual {v0, p2}, Landroid/view/contentcapture/ContentCaptureEvent;->setAutofillId(Landroid/view/autofill/AutofillId;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    .line 781
    .local v0, "event":Landroid/view/contentcapture/ContentCaptureEvent;
    invoke-direct {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->enqueueEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    .line 782
    return-void
.end method

.method blacklist internalNotifyViewInsetsChanged(ILandroid/graphics/Insets;)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "viewInsets"    # Landroid/graphics/Insets;

    .line 817
    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/16 v1, 0x9

    invoke-direct {v0, p1, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    .line 819
    invoke-virtual {v0, p2}, Landroid/view/contentcapture/ContentCaptureEvent;->setInsets(Landroid/graphics/Insets;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    .line 820
    .local v0, "event":Landroid/view/contentcapture/ContentCaptureEvent;
    invoke-direct {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->enqueueEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    .line 821
    return-void
.end method

.method blacklist internalNotifyViewTextChanged(ILandroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V
    .registers 12
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "text"    # Ljava/lang/CharSequence;

    .line 790
    invoke-static {p3}, Landroid/text/TextUtils;->trimToParcelableSize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 791
    .local v0, "trimmed":Ljava/lang/CharSequence;
    if-eqz v0, :cond_d

    if-ne v0, p3, :cond_d

    .line 792
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 793
    :cond_d
    move-object v1, v0

    :goto_e
    nop

    .line 797
    .local v1, "eventText":Ljava/lang/CharSequence;
    instance-of v2, p3, Landroid/text/Spannable;

    if-eqz v2, :cond_22

    .line 798
    move-object v2, p3

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 799
    .local v2, "composingStart":I
    move-object v3, p3

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    .local v3, "composingEnd":I
    goto :goto_24

    .line 801
    .end local v2    # "composingStart":I
    .end local v3    # "composingEnd":I
    :cond_22
    const/4 v2, -0x1

    .line 802
    .restart local v2    # "composingStart":I
    const/4 v3, -0x1

    .line 805
    .restart local v3    # "composingEnd":I
    :goto_24
    invoke-static {p3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 806
    .local v4, "startIndex":I
    invoke-static {p3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    .line 808
    .local v5, "endIndex":I
    new-instance v6, Landroid/view/contentcapture/ContentCaptureEvent;

    const/4 v7, 0x3

    invoke-direct {v6, p1, v7}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    .line 809
    invoke-virtual {v6, p2}, Landroid/view/contentcapture/ContentCaptureEvent;->setAutofillId(Landroid/view/autofill/AutofillId;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/contentcapture/ContentCaptureEvent;->setText(Ljava/lang/CharSequence;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v6

    .line 810
    invoke-virtual {v6, v2, v3}, Landroid/view/contentcapture/ContentCaptureEvent;->setComposingIndex(II)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v6

    .line 811
    invoke-virtual {v6, v4, v5}, Landroid/view/contentcapture/ContentCaptureEvent;->setSelectionIndex(II)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v6

    .line 812
    .local v6, "event":Landroid/view/contentcapture/ContentCaptureEvent;
    invoke-direct {p0, v6}, Landroid/view/contentcapture/MainContentCaptureSession;->enqueueEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    .line 813
    return-void
.end method

.method public blacklist internalNotifyViewTreeEvent(IZ)V
    .registers 7
    .param p1, "sessionId"    # I
    .param p2, "started"    # Z

    .line 825
    if-eqz p2, :cond_4

    const/4 v0, 0x4

    goto :goto_5

    :cond_4
    const/4 v0, 0x5

    .line 826
    .local v0, "type":I
    :goto_5
    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-virtual {v1}, Landroid/view/contentcapture/ContentCaptureManager;->getFlushViewTreeAppearingEventDisabled()Z

    move-result v1

    .line 827
    .local v1, "disableFlush":Z
    const/4 v2, 0x1

    if-eqz v1, :cond_12

    if-nez p2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    .line 829
    .local v2, "forceFlush":Z
    :cond_12
    :goto_12
    new-instance v3, Landroid/view/contentcapture/ContentCaptureEvent;

    invoke-direct {v3, p1, v0}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    .line 830
    .local v3, "event":Landroid/view/contentcapture/ContentCaptureEvent;
    invoke-direct {p0, v3, v2}, Landroid/view/contentcapture/MainContentCaptureSession;->enqueueEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    .line 831
    return-void
.end method

.method blacklist isContentCaptureEnabled()Z
    .registers 2

    .line 847
    invoke-super {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureManager;->isContentCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method blacklist isDisabled()Z
    .registers 2

    .line 852
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method blacklist newChild(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureSession;
    .registers 5
    .param p1, "clientContext"    # Landroid/view/contentcapture/ContentCaptureContext;

    .line 258
    new-instance v0, Landroid/view/contentcapture/ChildContentCaptureSession;

    invoke-direct {v0, p0, p1}, Landroid/view/contentcapture/ChildContentCaptureSession;-><init>(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/contentcapture/ContentCaptureContext;)V

    .line 259
    .local v0, "child":Landroid/view/contentcapture/ContentCaptureSession;
    iget v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    iget v2, v0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {p0, v1, v2, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->internalNotifyChildSessionStarted(IILandroid/view/contentcapture/ContentCaptureContext;)V

    .line 260
    return-object v0
.end method

.method public blacklist notifyContentCaptureEvents(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 940
    .local p1, "contentCaptureEvents":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    new-instance v0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda2;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;Landroid/util/SparseArray;)V

    invoke-direct {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 945
    return-void
.end method

.method public blacklist notifyWindowBoundsChanged(ILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 891
    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/16 v1, 0xa

    invoke-direct {v0, p1, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    .line 893
    invoke-virtual {v0, p2}, Landroid/view/contentcapture/ContentCaptureEvent;->setBounds(Landroid/graphics/Rect;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    .line 894
    .local v0, "event":Landroid/view/contentcapture/ContentCaptureEvent;
    invoke-direct {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->enqueueEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    .line 895
    return-void
.end method

.method blacklist onDestroy()V
    .registers 3

    .line 311
    new-instance v0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda4;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/contentcapture/MainContentCaptureSession;->clearAndRunOnContentCaptureThread(Ljava/lang/Runnable;I)V

    .line 318
    return-void
.end method

.method public blacklist onSessionStarted(ILandroid/os/IBinder;)V
    .registers 11
    .param p1, "resultCode"    # I
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 330
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->checkOnContentCaptureThread()V

    .line 331
    const/4 v1, 0x0

    if-eqz p2, :cond_3c

    .line 332
    invoke-static {p2}, Landroid/view/contentcapture/IContentCaptureDirectManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureDirectManager;

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    .line 333
    new-instance v0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda7;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;)V

    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceVulture:Landroid/os/IBinder$DeathRecipient;

    .line 339
    :try_start_13
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceVulture:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_18} :catch_19

    .line 342
    goto :goto_3c

    .line 340
    :catch_19
    move-exception v0

    .line 341
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to link to death on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3c
    :goto_3c
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->isContentProtectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 346
    new-instance v2, Landroid/view/contentprotection/ContentProtectionEventProcessor;

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    .line 348
    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureManager;->getContentProtectionEventBuffer()Lcom/android/internal/util/RingBuffer;

    move-result-object v3

    iget-object v4, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContentCaptureHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mSystemServerInterface:Landroid/view/contentcapture/IContentCaptureManager;

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mComponentName:Landroid/content/ComponentName;

    .line 351
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v0, v0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-object v7, v0, Landroid/content/ContentCaptureOptions;->contentProtectionOptions:Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

    invoke-direct/range {v2 .. v7}, Landroid/view/contentprotection/ContentProtectionEventProcessor;-><init>(Lcom/android/internal/util/RingBuffer;Landroid/os/Handler;Landroid/view/contentcapture/IContentCaptureManager;Ljava/lang/String;Landroid/content/ContentCaptureOptions$ContentProtectionOptions;)V

    iput-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContentProtectionEventProcessor:Landroid/view/contentprotection/ContentProtectionEventProcessor;

    goto :goto_63

    .line 354
    :cond_60
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContentProtectionEventProcessor:Landroid/view/contentprotection/ContentProtectionEventProcessor;

    .line 357
    :goto_63
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_6b

    .line 358
    invoke-virtual {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->resetSession(I)V

    goto :goto_76

    .line 360
    :cond_6b
    iput p1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    .line 361
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 363
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->flushIfNeeded(I)V

    .line 365
    :goto_76
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_dd

    .line 366
    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSessionStarted() result: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    .line 367
    invoke-static {v3}, Landroid/view/contentcapture/MainContentCaptureSession;->getStateAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", disabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", binder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", events="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 368
    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    if-nez v3, :cond_cc

    goto :goto_d2

    :cond_cc
    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_d2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 366
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_dd
    return-void
.end method

.method public blacklist resetSession(I)V
    .registers 7
    .param p1, "newState"    # I

    .line 746
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->checkOnContentCaptureThread()V

    .line 747
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_41

    .line 748
    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleResetSession("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSession;->getActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    .line 749
    invoke-static {v2}, Landroid/view/contentcapture/MainContentCaptureSession;->getStateAsString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/view/contentcapture/MainContentCaptureSession;->getStateAsString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 748
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_41
    iput p1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mState:I

    .line 752
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4d

    move v1, v2

    goto :goto_4e

    :cond_4d
    move v1, v3

    :goto_4e
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 754
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mApplicationToken:Landroid/os/IBinder;

    .line 755
    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mShareableActivityToken:Landroid/os/IBinder;

    .line 756
    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mComponentName:Landroid/content/ComponentName;

    .line 757
    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mEvents:Ljava/util/ArrayList;

    .line 758
    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    if-eqz v1, :cond_72

    .line 760
    :try_start_5e
    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    invoke-interface {v1}, Landroid/view/contentcapture/IContentCaptureDirectManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v4, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceVulture:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v4, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_69
    .catch Ljava/util/NoSuchElementException; {:try_start_5e .. :try_end_69} :catch_6a

    .line 763
    goto :goto_72

    .line 761
    :catch_6a
    move-exception v1

    .line 762
    .local v1, "e":Ljava/util/NoSuchElementException;
    sget-object v3, Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;

    const-string v4, "IContentCaptureDirectManager does not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :cond_72
    :goto_72
    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    .line 766
    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContentProtectionEventProcessor:Landroid/view/contentprotection/ContentProtectionEventProcessor;

    .line 767
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mContentCaptureHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 768
    return-void
.end method

.method public blacklist sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/contentcapture/ContentCaptureEvent;

    .line 375
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    .line 376
    return-void
.end method

.method blacklist setDisabled(Z)Z
    .registers 4
    .param p1, "disabled"    # Z

    .line 861
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method blacklist start(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "shareableActivityToken"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "flags"    # I

    .line 269
    new-instance v0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "shareableActivityToken":Landroid/os/IBinder;
    .end local p3    # "component":Landroid/content/ComponentName;
    .end local p4    # "flags":I
    .local v2, "token":Landroid/os/IBinder;
    .local v3, "shareableActivityToken":Landroid/os/IBinder;
    .local v4, "component":Landroid/content/ComponentName;
    .local v5, "flags":I
    invoke-direct/range {v0 .. v5}, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda5;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    invoke-direct {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->runOnContentCaptureThread(Ljava/lang/Runnable;)V

    .line 271
    return-void
.end method

.method public blacklist updateContentCaptureContext(Landroid/view/contentcapture/ContentCaptureContext;)V
    .registers 3
    .param p1, "context"    # Landroid/view/contentcapture/ContentCaptureContext;

    .line 695
    iget v0, p0, Landroid/view/contentcapture/MainContentCaptureSession;->mId:I

    invoke-virtual {p0, v0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->internalNotifyContextUpdated(ILandroid/view/contentcapture/ContentCaptureContext;)V

    .line 696
    return-void
.end method
