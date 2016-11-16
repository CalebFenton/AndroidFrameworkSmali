.class public Landroid/widget/RemoteViewsAdapter;
.super Landroid/widget/BaseAdapter;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;,
        Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    }
.end annotation


# static fields
.field private static final MULTI_USER_PERM:Ljava/lang/String; = "android.permission.INTERACT_ACROSS_USERS_FULL"

.field private static final REMOTE_VIEWS_CACHE_DURATION:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "RemoteViewsAdapter"

.field private static sCacheRemovalQueue:Landroid/os/Handler; = null

.field private static sCacheRemovalThread:Landroid/os/HandlerThread; = null

.field private static final sCachedRemoteViewsCaches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;",
            "Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDefaultCacheSize:I = 0x28

.field private static final sDefaultLoadingViewHeight:I = 0x32

.field private static final sDefaultMessageType:I = 0x0

.field private static final sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUnbindServiceDelay:I = 0x1388

.field private static final sUnbindServiceMessageType:I = 0x1


# instance fields
.field private final mAppWidgetId:I

.field private final mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

.field private mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDataReady:Z

.field private final mIntent:Landroid/content/Intent;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMainQueue:Landroid/os/Handler;

.field private mNotifyDataSetChangedAfterOnServiceConnected:Z

.field private mRemoteViewsOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field private mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

.field private mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

.field private mVisibleWindowLowerBound:I

.field private mVisibleWindowUpperBound:I

.field private mWorkerQueue:Landroid/os/Handler;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/RemoteViewsAdapter;)Ljava/lang/ref/WeakReference;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCallback:Ljava/lang/ref/WeakReference;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/RemoteViewsAdapter;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/RemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    #@2
    return v0
.end method

.method static synthetic -get4(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViews$OnClickHandler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mRemoteViewsOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get8()Ljava/util/HashMap;
    .locals 1

    #@0
    sget-object v0, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get9()Ljava/util/HashMap;
    .locals 1

    #@0
    sget-object v0, Landroid/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/RemoteViewsAdapter;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->enqueueDeferredUnbindServiceMessage()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/RemoteViewsAdapter;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/RemoteViewsAdapter;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->onNotifyDataSetChanged()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/widget/RemoteViewsAdapter;IZ)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "notifyWhenLoaded"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->updateRemoteViews(IZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Landroid/widget/RemoteViewsAdapter;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->updateTemporaryMetaData()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 101
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    #@7
    .line 103
    new-instance v0, Ljava/util/HashMap;

    #@9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@c
    sput-object v0, Landroid/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    #@e
    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "callback"    # Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 776
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@5
    .line 87
    iput-boolean v1, p0, Landroid/widget/RemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    #@7
    .line 115
    iput-boolean v1, p0, Landroid/widget/RemoteViewsAdapter;->mDataReady:Z

    #@9
    .line 778
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;

    #@b
    .line 779
    iput-object p2, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    #@d
    .line 781
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    #@f
    if-nez v1, :cond_0

    #@11
    .line 782
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v2, "Non-null Intent must be specified."

    #@16
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 785
    :cond_0
    const-string/jumbo v1, "remoteAdapterAppWidgetId"

    #@1d
    const/4 v2, -0x1

    #@1e
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@21
    move-result v1

    #@22
    iput v1, p0, Landroid/widget/RemoteViewsAdapter;->mAppWidgetId:I

    #@24
    .line 786
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@27
    move-result-object v1

    #@28
    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    #@2a
    .line 787
    new-instance v1, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    #@2c
    invoke-direct {v1, p0, v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;-><init>(Landroid/widget/RemoteViewsAdapter;Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;)V

    #@2f
    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    #@31
    .line 790
    const-string/jumbo v1, "remoteAdapterAppWidgetId"

    #@34
    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_1

    #@3a
    .line 791
    const-string/jumbo v1, "remoteAdapterAppWidgetId"

    #@3d
    invoke-virtual {p2, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    #@40
    .line 795
    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    #@42
    const-string/jumbo v2, "RemoteViewsCache-loader"

    #@45
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@48
    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    #@4a
    .line 796
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    #@4c
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    #@4f
    .line 797
    new-instance v1, Landroid/os/Handler;

    #@51
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    #@53
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@56
    move-result-object v2

    #@57
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5a
    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;

    #@5c
    .line 798
    new-instance v1, Landroid/os/Handler;

    #@5e
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@61
    move-result-object v2

    #@62
    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #@65
    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    #@67
    .line 800
    sget-object v1, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalThread:Landroid/os/HandlerThread;

    #@69
    if-nez v1, :cond_2

    #@6b
    .line 801
    new-instance v1, Landroid/os/HandlerThread;

    #@6d
    const-string/jumbo v2, "RemoteViewsAdapter-cachePruner"

    #@70
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@73
    sput-object v1, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalThread:Landroid/os/HandlerThread;

    #@75
    .line 802
    sget-object v1, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalThread:Landroid/os/HandlerThread;

    #@77
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    #@7a
    .line 803
    new-instance v1, Landroid/os/Handler;

    #@7c
    sget-object v2, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalThread:Landroid/os/HandlerThread;

    #@7e
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@81
    move-result-object v2

    #@82
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@85
    sput-object v1, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalQueue:Landroid/os/Handler;

    #@87
    .line 807
    :cond_2
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@89
    invoke-direct {v1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8c
    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCallback:Ljava/lang/ref/WeakReference;

    #@8e
    .line 808
    new-instance v1, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    #@90
    invoke-direct {v1, p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    #@93
    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    #@95
    .line 810
    new-instance v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    #@97
    new-instance v1, Landroid/content/Intent$FilterComparison;

    #@99
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    #@9b
    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    #@9e
    .line 811
    iget v2, p0, Landroid/widget/RemoteViewsAdapter;->mAppWidgetId:I

    #@a0
    .line 810
    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;-><init>(Landroid/content/Intent$FilterComparison;I)V

    #@a3
    .line 813
    .local v0, "key":Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;
    sget-object v2, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    #@a5
    monitor-enter v2

    #@a6
    .line 814
    :try_start_0
    sget-object v1, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    #@a8
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@ab
    move-result v1

    #@ac
    if-eqz v1, :cond_5

    #@ae
    .line 815
    sget-object v1, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    #@b0
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b3
    move-result-object v1

    #@b4
    check-cast v1, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@b6
    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@b8
    .line 816
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@ba
    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-get1(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@bd
    move-result-object v3

    #@be
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@bf
    .line 817
    :try_start_1
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@c1
    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-get1(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@c4
    move-result-object v1

    #@c5
    iget v1, v1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    #@c7
    if-lez v1, :cond_3

    #@c9
    .line 820
    const/4 v1, 0x1

    #@ca
    iput-boolean v1, p0, Landroid/widget/RemoteViewsAdapter;->mDataReady:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@cc
    :cond_3
    :try_start_2
    monitor-exit v3

    #@cd
    .line 826
    :goto_0
    iget-boolean v1, p0, Landroid/widget/RemoteViewsAdapter;->mDataReady:Z

    #@cf
    if-nez v1, :cond_4

    #@d1
    .line 827
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->requestBindService()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@d4
    :cond_4
    monitor-exit v2

    #@d5
    .line 777
    return-void

    #@d6
    .line 816
    :catchall_0
    move-exception v1

    #@d7
    :try_start_3
    monitor-exit v3

    #@d8
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@d9
    .line 813
    :catchall_1
    move-exception v1

    #@da
    monitor-exit v2

    #@db
    throw v1

    #@dc
    .line 824
    :cond_5
    :try_start_4
    new-instance v1, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@de
    const/16 v3, 0x28

    #@e0
    invoke-direct {v1, v3}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;-><init>(I)V

    #@e3
    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@e5
    goto :goto_0
.end method

.method private enqueueDeferredUnbindServiceMessage()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1276
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@6
    .line 1277
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    #@8
    const-wide/16 v2, 0x1388

    #@a
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@d
    .line 1274
    return-void
.end method

.method private getVisibleWindow(III)[I
    .locals 4
    .param p1, "lower"    # I
    .param p2, "upper"    # I
    .param p3, "count"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1207
    if-nez p1, :cond_1

    #@3
    if-nez p2, :cond_1

    #@5
    .line 1208
    :cond_0
    new-array v3, v3, [I

    #@7
    return-object v3

    #@8
    .line 1207
    :cond_1
    if-ltz p1, :cond_0

    #@a
    if-ltz p2, :cond_0

    #@c
    .line 1212
    if-gt p1, p2, :cond_2

    #@e
    .line 1213
    add-int/lit8 v3, p2, 0x1

    #@10
    sub-int/2addr v3, p1

    #@11
    new-array v2, v3, [I

    #@13
    .line 1214
    .local v2, "window":[I
    move v0, p1

    #@14
    .local v0, "i":I
    const/4 v1, 0x0

    #@15
    .local v1, "j":I
    :goto_0
    if-gt v0, p2, :cond_4

    #@17
    .line 1215
    aput v0, v2, v1

    #@19
    .line 1214
    add-int/lit8 v0, v0, 0x1

    #@1b
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1220
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "window":[I
    :cond_2
    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    #@21
    move-result p3

    #@22
    .line 1221
    sub-int v3, p3, p1

    #@24
    add-int/2addr v3, p2

    #@25
    add-int/lit8 v3, v3, 0x1

    #@27
    new-array v2, v3, [I

    #@29
    .line 1222
    .restart local v2    # "window":[I
    const/4 v1, 0x0

    #@2a
    .line 1224
    .restart local v1    # "j":I
    const/4 v0, 0x0

    #@2b
    .restart local v0    # "i":I
    :goto_1
    if-gt v0, p2, :cond_3

    #@2d
    .line 1225
    aput v0, v2, v1

    #@2f
    .line 1224
    add-int/lit8 v0, v0, 0x1

    #@31
    add-int/lit8 v1, v1, 0x1

    #@33
    goto :goto_1

    #@34
    .line 1227
    :cond_3
    move v0, p1

    #@35
    :goto_2
    if-ge v0, p3, :cond_4

    #@37
    .line 1228
    aput v0, v2, v1

    #@39
    .line 1227
    add-int/lit8 v0, v0, 0x1

    #@3b
    add-int/lit8 v1, v1, 0x1

    #@3d
    goto :goto_2

    #@3e
    .line 1231
    :cond_4
    return-object v2
.end method

.method private loadNextIndexInBackground()V
    .locals 2

    #@0
    .prologue
    .line 893
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;

    #@2
    new-instance v1, Landroid/widget/RemoteViewsAdapter$2;

    #@4
    invoke-direct {v1, p0}, Landroid/widget/RemoteViewsAdapter$2;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 892
    return-void
.end method

.method private onNotifyDataSetChanged()V
    .locals 10

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1145
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    #@3
    invoke-virtual {v6}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;

    #@6
    move-result-object v2

    #@7
    .line 1147
    .local v2, "factory":Lcom/android/internal/widget/IRemoteViewsFactory;
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->onDataSetChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 1160
    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@c
    monitor-enter v8

    #@d
    .line 1161
    :try_start_1
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@f
    invoke-virtual {v6}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    monitor-exit v8

    #@13
    .line 1165
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->updateTemporaryMetaData()V

    #@16
    .line 1168
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@18
    invoke-virtual {v6}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getTemporaryMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@1b
    move-result-object v8

    #@1c
    monitor-enter v8

    #@1d
    .line 1169
    :try_start_2
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@1f
    invoke-virtual {v6}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getTemporaryMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@22
    move-result-object v6

    #@23
    iget v4, v6, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    #@25
    .line 1170
    .local v4, "newCount":I
    iget v6, p0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowLowerBound:I

    #@27
    .line 1171
    iget v9, p0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowUpperBound:I

    #@29
    .line 1170
    invoke-direct {p0, v6, v9, v4}, Landroid/widget/RemoteViewsAdapter;->getVisibleWindow(III)[I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2c
    move-result-object v5

    #@2d
    .local v5, "visibleWindow":[I
    monitor-exit v8

    #@2e
    .line 1177
    array-length v8, v5

    #@2f
    move v6, v7

    #@30
    :goto_0
    if-ge v6, v8, :cond_1

    #@32
    aget v3, v5, v6

    #@34
    .line 1180
    .local v3, "i":I
    if-ge v3, v4, :cond_0

    #@36
    .line 1181
    invoke-direct {p0, v3, v7}, Landroid/widget/RemoteViewsAdapter;->updateRemoteViews(IZ)V

    #@39
    .line 1177
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 1154
    .end local v3    # "i":I
    .end local v4    # "newCount":I
    .end local v5    # "visibleWindow":[I
    :catch_0
    move-exception v1

    #@3d
    .line 1155
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v6, "RemoteViewsAdapter"

    #@40
    new-instance v7, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v8, "Error in updateNotifyDataSetChanged(): "

    #@48
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v7

    #@4c
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@4f
    move-result-object v8

    #@50
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v7

    #@54
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v7

    #@58
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5b
    .line 1156
    return-void

    #@5c
    .line 1148
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    #@5d
    .line 1149
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "RemoteViewsAdapter"

    #@60
    new-instance v7, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v8, "Error in updateNotifyDataSetChanged(): "

    #@68
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v7

    #@6c
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@6f
    move-result-object v8

    #@70
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v7

    #@74
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v7

    #@78
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7b
    .line 1153
    return-void

    #@7c
    .line 1160
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    #@7d
    monitor-exit v8

    #@7e
    throw v6

    #@7f
    .line 1168
    :catchall_1
    move-exception v6

    #@80
    monitor-exit v8

    #@81
    throw v6

    #@82
    .line 1186
    .restart local v4    # "newCount":I
    .restart local v5    # "visibleWindow":[I
    :cond_1
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    #@84
    new-instance v8, Landroid/widget/RemoteViewsAdapter$5;

    #@86
    invoke-direct {v8, p0}, Landroid/widget/RemoteViewsAdapter$5;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    #@89
    invoke-virtual {v6, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@8c
    .line 1199
    iput-boolean v7, p0, Landroid/widget/RemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    #@8e
    .line 1143
    return-void
.end method

.method private processException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 918
    const-string/jumbo v1, "RemoteViewsAdapter"

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "Error in "

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    const-string/jumbo v3, ": "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 922
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@2b
    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@2e
    move-result-object v0

    #@2f
    .line 923
    .local v0, "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    #@30
    .line 924
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    monitor-exit v0

    #@34
    .line 926
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@36
    monitor-enter v2

    #@37
    .line 927
    :try_start_1
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@39
    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3c
    monitor-exit v2

    #@3d
    .line 929
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    #@3f
    new-instance v2, Landroid/widget/RemoteViewsAdapter$3;

    #@41
    invoke-direct {v2, p0}, Landroid/widget/RemoteViewsAdapter$3;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    #@44
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@47
    .line 917
    return-void

    #@48
    .line 923
    :catchall_0
    move-exception v1

    #@49
    monitor-exit v0

    #@4a
    throw v1

    #@4b
    .line 926
    :catchall_1
    move-exception v1

    #@4c
    monitor-exit v2

    #@4d
    throw v1
.end method

.method private requestBindService()Z
    .locals 4

    #@0
    .prologue
    .line 1282
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    #@2
    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1283
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    #@a
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;

    #@c
    iget v2, p0, Landroid/widget/RemoteViewsAdapter;->mAppWidgetId:I

    #@e
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    #@10
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->bind(Landroid/content/Context;ILandroid/content/Intent;)V

    #@13
    .line 1287
    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    #@15
    const/4 v1, 0x1

    #@16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@19
    .line 1288
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    #@1b
    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    #@1e
    move-result v0

    #@1f
    return v0
.end method

.method private updateRemoteViews(IZ)V
    .locals 17
    .param p1, "position"    # I
    .param p2, "notifyWhenLoaded"    # Z

    #@0
    .prologue
    .line 967
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    #@4
    invoke-virtual {v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;

    #@7
    move-result-object v11

    #@8
    .line 970
    .local v11, "factory":Lcom/android/internal/widget/IRemoteViewsFactory;
    const/4 v5, 0x0

    #@9
    .line 971
    .local v5, "remoteViews":Landroid/widget/RemoteViews;
    const-wide/16 v6, 0x0

    #@b
    .line 973
    .local v6, "itemId":J
    :try_start_0
    move/from16 v0, p1

    #@d
    invoke-interface {v11, v0}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    #@10
    move-result-object v5

    #@11
    .line 974
    .local v5, "remoteViews":Landroid/widget/RemoteViews;
    move/from16 v0, p1

    #@13
    invoke-interface {v11, v0}, Lcom/android/internal/widget/IRemoteViewsFactory;->getItemId(I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result-wide v6

    #@17
    .line 986
    if-nez v5, :cond_0

    #@19
    .line 990
    const-string/jumbo v3, "RemoteViewsAdapter"

    #@1c
    new-instance v4, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v16, "Error in updateRemoteViews("

    #@24
    move-object/from16 v0, v16

    #@26
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    move/from16 v0, p1

    #@2c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    const-string/jumbo v16, "): "

    #@33
    move-object/from16 v0, v16

    #@35
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    const-string/jumbo v16, " null RemoteViews "

    #@3c
    move-object/from16 v0, v16

    #@3e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    .line 991
    const-string/jumbo v16, "returned from RemoteViewsFactory."

    #@45
    .line 990
    move-object/from16 v0, v16

    #@47
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    .line 992
    return-void

    #@53
    .line 981
    .end local v5    # "remoteViews":Landroid/widget/RemoteViews;
    :catch_0
    move-exception v10

    #@54
    .line 982
    .local v10, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "RemoteViewsAdapter"

    #@57
    new-instance v4, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v16, "Error in updateRemoteViews("

    #@5f
    move-object/from16 v0, v16

    #@61
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v4

    #@65
    move/from16 v0, p1

    #@67
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    const-string/jumbo v16, "): "

    #@6e
    move-object/from16 v0, v16

    #@70
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v4

    #@74
    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@77
    move-result-object v16

    #@78
    move-object/from16 v0, v16

    #@7a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v4

    #@7e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v4

    #@82
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@85
    .line 983
    return-void

    #@86
    .line 975
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v9

    #@87
    .line 976
    .local v9, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "RemoteViewsAdapter"

    #@8a
    new-instance v4, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string/jumbo v16, "Error in updateRemoteViews("

    #@92
    move-object/from16 v0, v16

    #@94
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v4

    #@98
    move/from16 v0, p1

    #@9a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v4

    #@9e
    const-string/jumbo v16, "): "

    #@a1
    move-object/from16 v0, v16

    #@a3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v4

    #@a7
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@aa
    move-result-object v16

    #@ab
    move-object/from16 v0, v16

    #@ad
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v4

    #@b1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v4

    #@b5
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b8
    .line 980
    return-void

    #@b9
    .line 995
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v5    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_0
    invoke-virtual {v5}, Landroid/widget/RemoteViews;->getLayoutId()I

    #@bc
    move-result v12

    #@bd
    .line 996
    .local v12, "layoutId":I
    move-object/from16 v0, p0

    #@bf
    iget-object v3, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@c1
    invoke-virtual {v3}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@c4
    move-result-object v13

    #@c5
    .line 999
    .local v13, "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v13

    #@c6
    .line 1000
    :try_start_1
    invoke-virtual {v13, v12}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->isViewTypeInRange(I)Z

    #@c9
    move-result v15

    #@ca
    .line 1001
    .local v15, "viewTypeInRange":Z
    move-object/from16 v0, p0

    #@cc
    iget-object v3, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@ce
    invoke-static {v3}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-get1(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@d1
    move-result-object v3

    #@d2
    iget v2, v3, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d4
    .local v2, "cacheCount":I
    monitor-exit v13

    #@d5
    .line 1003
    move-object/from16 v0, p0

    #@d7
    iget-object v0, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@d9
    move-object/from16 v16, v0

    #@db
    monitor-enter v16

    #@dc
    .line 1004
    if-eqz v15, :cond_2

    #@de
    .line 1005
    :try_start_2
    move-object/from16 v0, p0

    #@e0
    iget v3, v0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowLowerBound:I

    #@e2
    .line 1006
    move-object/from16 v0, p0

    #@e4
    iget v4, v0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowUpperBound:I

    #@e6
    .line 1005
    move-object/from16 v0, p0

    #@e8
    invoke-direct {v0, v3, v4, v2}, Landroid/widget/RemoteViewsAdapter;->getVisibleWindow(III)[I

    #@eb
    move-result-object v8

    #@ec
    .line 1008
    .local v8, "visibleWindow":[I
    move-object/from16 v0, p0

    #@ee
    iget-object v3, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@f0
    move/from16 v4, p1

    #@f2
    invoke-virtual/range {v3 .. v8}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->insert(ILandroid/widget/RemoteViews;J[I)V

    #@f5
    .line 1012
    move-object v14, v5

    #@f6
    .line 1013
    .local v14, "rv":Landroid/widget/RemoteViews;
    if-eqz p2, :cond_1

    #@f8
    .line 1014
    move-object/from16 v0, p0

    #@fa
    iget-object v3, v0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    #@fc
    new-instance v4, Landroid/widget/RemoteViewsAdapter$4;

    #@fe
    move-object/from16 v0, p0

    #@100
    move/from16 v1, p1

    #@102
    invoke-direct {v4, v0, v1, v5}, Landroid/widget/RemoteViewsAdapter$4;-><init>(Landroid/widget/RemoteViewsAdapter;ILandroid/widget/RemoteViews;)V

    #@105
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@108
    .end local v8    # "visibleWindow":[I
    .end local v14    # "rv":Landroid/widget/RemoteViews;
    :cond_1
    :goto_0
    monitor-exit v16

    #@109
    .line 966
    return-void

    #@10a
    .line 999
    .end local v2    # "cacheCount":I
    .end local v15    # "viewTypeInRange":Z
    :catchall_0
    move-exception v3

    #@10b
    monitor-exit v13

    #@10c
    throw v3

    #@10d
    .line 1026
    .restart local v2    # "cacheCount":I
    .restart local v15    # "viewTypeInRange":Z
    :cond_2
    :try_start_3
    const-string/jumbo v3, "RemoteViewsAdapter"

    #@110
    const-string/jumbo v4, "Error: widget\'s RemoteViewsFactory returns more view types than  indicated by getViewTypeCount() "

    #@113
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@116
    goto :goto_0

    #@117
    .line 1003
    :catchall_1
    move-exception v3

    #@118
    monitor-exit v16

    #@119
    throw v3
.end method

.method private updateTemporaryMetaData()V
    .locals 10

    #@0
    .prologue
    .line 938
    iget-object v9, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    #@2
    invoke-virtual {v9}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;

    #@5
    move-result-object v3

    #@6
    .line 943
    .local v3, "factory":Lcom/android/internal/widget/IRemoteViewsFactory;
    :try_start_0
    invoke-interface {v3}, Lcom/android/internal/widget/IRemoteViewsFactory;->hasStableIds()Z

    #@9
    move-result v5

    #@a
    .line 944
    .local v5, "hasStableIds":Z
    invoke-interface {v3}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewTypeCount()I

    #@d
    move-result v8

    #@e
    .line 945
    .local v8, "viewTypeCount":I
    invoke-interface {v3}, Lcom/android/internal/widget/IRemoteViewsFactory;->getCount()I

    #@11
    move-result v0

    #@12
    .line 946
    .local v0, "count":I
    invoke-interface {v3}, Lcom/android/internal/widget/IRemoteViewsFactory;->getLoadingView()Landroid/widget/RemoteViews;

    #@15
    move-result-object v6

    #@16
    .line 947
    .local v6, "loadingView":Landroid/widget/RemoteViews;
    const/4 v4, 0x0

    #@17
    .line 948
    .local v4, "firstView":Landroid/widget/RemoteViews;
    if-lez v0, :cond_0

    #@19
    if-nez v6, :cond_0

    #@1b
    .line 949
    const/4 v9, 0x0

    #@1c
    invoke-interface {v3, v9}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    #@1f
    move-result-object v4

    #@20
    .line 951
    .end local v4    # "firstView":Landroid/widget/RemoteViews;
    :cond_0
    iget-object v9, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@22
    invoke-virtual {v9}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getTemporaryMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@25
    move-result-object v7

    #@26
    .line 952
    .local v7, "tmpMetaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    #@27
    .line 953
    :try_start_1
    iput-boolean v5, v7, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    #@29
    .line 955
    add-int/lit8 v9, v8, 0x1

    #@2b
    iput v9, v7, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    #@2d
    .line 956
    iput v0, v7, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    #@2f
    .line 957
    invoke-virtual {v7, v6, v4}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->setLoadingViewTemplates(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    :try_start_2
    monitor-exit v7

    #@33
    .line 937
    .end local v0    # "count":I
    .end local v5    # "hasStableIds":Z
    .end local v6    # "loadingView":Landroid/widget/RemoteViews;
    .end local v7    # "tmpMetaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .end local v8    # "viewTypeCount":I
    :goto_0
    return-void

    #@34
    .line 952
    .restart local v0    # "count":I
    .restart local v5    # "hasStableIds":Z
    .restart local v6    # "loadingView":Landroid/widget/RemoteViews;
    .restart local v7    # "tmpMetaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .restart local v8    # "viewTypeCount":I
    :catchall_0
    move-exception v9

    #@35
    monitor-exit v7

    #@36
    throw v9
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    #@37
    .line 959
    .end local v0    # "count":I
    .end local v5    # "hasStableIds":Z
    .end local v6    # "loadingView":Landroid/widget/RemoteViews;
    .end local v7    # "tmpMetaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .end local v8    # "viewTypeCount":I
    :catch_0
    move-exception v1

    #@38
    .line 960
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v9, "updateMetaData"

    #@3b
    invoke-direct {p0, v9, v1}, Landroid/widget/RemoteViewsAdapter;->processException(Ljava/lang/String;Ljava/lang/Exception;)V

    #@3e
    goto :goto_0

    #@3f
    .line 961
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    #@40
    .line 962
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v9, "updateMetaData"

    #@43
    invoke-direct {p0, v9, v2}, Landroid/widget/RemoteViewsAdapter;->processException(Ljava/lang/String;Ljava/lang/Exception;)V

    #@46
    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 835
    :try_start_0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 836
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    #@6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 839
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->finalize()V

    #@c
    .line 833
    return-void

    #@d
    .line 838
    :catchall_0
    move-exception v0

    #@e
    .line 839
    invoke-super {p0}, Landroid/widget/BaseAdapter;->finalize()V

    #@11
    .line 838
    throw v0
.end method

.method public getCount()I
    .locals 2

    #@0
    .prologue
    .line 1037
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@2
    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@5
    move-result-object v0

    #@6
    .line 1038
    .local v0, "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    #@7
    .line 1039
    :try_start_0
    iget v1, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v0

    #@a
    return v1

    #@b
    .line 1038
    :catchall_0
    move-exception v1

    #@c
    monitor-exit v0

    #@d
    throw v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1045
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1049
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@2
    monitor-enter v1

    #@3
    .line 1050
    :try_start_0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@5
    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->containsMetaDataAt(I)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1051
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@d
    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaDataAt(I)Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    #@10
    move-result-object v0

    #@11
    iget-wide v2, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->itemId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v1

    #@14
    return-wide v2

    #@15
    .line 1053
    :cond_0
    const-wide/16 v2, 0x0

    #@17
    monitor-exit v1

    #@18
    return-wide v2

    #@19
    .line 1049
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1058
    const/4 v1, 0x0

    #@1
    .line 1059
    .local v1, "typeId":I
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@3
    monitor-enter v3

    #@4
    .line 1060
    :try_start_0
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@6
    invoke-virtual {v2, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->containsMetaDataAt(I)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 1061
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@e
    invoke-virtual {v2, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaDataAt(I)Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    #@11
    move-result-object v2

    #@12
    iget v1, v2, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v3

    #@15
    .line 1067
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@17
    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@1a
    move-result-object v0

    #@1b
    .line 1068
    .local v0, "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    #@1c
    .line 1069
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->getMappedViewType(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1f
    move-result v2

    #@20
    monitor-exit v0

    #@21
    return v2

    #@22
    .line 1063
    .end local v0    # "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    :cond_0
    const/4 v2, 0x0

    #@23
    monitor-exit v3

    #@24
    return v2

    #@25
    .line 1059
    :catchall_0
    move-exception v2

    #@26
    monitor-exit v3

    #@27
    throw v2

    #@28
    .line 1068
    .restart local v0    # "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    :catchall_1
    move-exception v2

    #@29
    monitor-exit v0

    #@2a
    throw v2
.end method

.method public getRemoteViewsServiceIntent()Landroid/content/Intent;
    .locals 1

    #@0
    .prologue
    .line 1033
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    #@2
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 1086
    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@2
    monitor-enter v7

    #@3
    .line 1087
    :try_start_0
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@5
    invoke-virtual {v6, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getRemoteViewsAt(I)Landroid/widget/RemoteViews;

    #@8
    move-result-object v5

    #@9
    .line 1088
    .local v5, "rv":Landroid/widget/RemoteViews;
    if-eqz v5, :cond_3

    #@b
    const/4 v3, 0x1

    #@c
    .line 1089
    .local v3, "isInCache":Z
    :goto_0
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    #@e
    invoke-virtual {v6}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    #@11
    move-result v2

    #@12
    .line 1090
    .local v2, "isConnected":Z
    const/4 v1, 0x0

    #@13
    .line 1092
    .local v1, "hasNewItems":Z
    if-eqz p2, :cond_0

    #@15
    instance-of v6, p2, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    #@17
    if-eqz v6, :cond_0

    #@19
    .line 1093
    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter;->mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    #@1b
    move-object v0, p2

    #@1c
    nop

    #@1d
    nop

    #@1e
    move-object v6, v0

    #@1f
    invoke-virtual {v8, v6}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->removeView(Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;)V

    #@22
    .line 1096
    :cond_0
    if-nez v3, :cond_1

    #@24
    if-eqz v2, :cond_4

    #@26
    .line 1102
    :cond_1
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@28
    invoke-virtual {v6, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->queuePositionsToBePreloadedFromRequestedPosition(I)Z

    #@2b
    move-result v1

    #@2c
    .line 1106
    .end local v1    # "hasNewItems":Z
    :goto_1
    instance-of v6, p2, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    #@2e
    if-eqz v6, :cond_5

    #@30
    .line 1107
    move-object v0, p2

    #@31
    nop

    #@32
    nop

    #@33
    move-object v4, v0

    #@34
    .line 1109
    .local v4, "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :goto_2
    if-eqz v3, :cond_6

    #@36
    .line 1110
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mRemoteViewsOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    #@38
    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->onRemoteViewsLoaded(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$OnClickHandler;)V

    #@3b
    .line 1111
    if-eqz v1, :cond_2

    #@3d
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    :cond_2
    :goto_3
    monitor-exit v7

    #@41
    .line 1121
    return-object v4

    #@42
    .line 1088
    .end local v2    # "isConnected":Z
    .end local v3    # "isInCache":Z
    .end local v4    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :cond_3
    const/4 v3, 0x0

    #@43
    .restart local v3    # "isInCache":Z
    goto :goto_0

    #@44
    .line 1099
    .restart local v1    # "hasNewItems":Z
    .restart local v2    # "isConnected":Z
    :cond_4
    :try_start_1
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->requestBindService()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    goto :goto_1

    #@48
    .line 1086
    .end local v1    # "hasNewItems":Z
    .end local v2    # "isConnected":Z
    .end local v3    # "isInCache":Z
    .end local v5    # "rv":Landroid/widget/RemoteViews;
    :catchall_0
    move-exception v6

    #@49
    monitor-exit v7

    #@4a
    throw v6

    #@4b
    .line 1108
    .restart local v2    # "isConnected":Z
    .restart local v3    # "isInCache":Z
    .restart local v5    # "rv":Landroid/widget/RemoteViews;
    :cond_5
    :try_start_2
    new-instance v4, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    #@4d
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@50
    move-result-object v6

    #@51
    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@53
    invoke-direct {v4, v6, v8}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;-><init>(Landroid/content/Context;Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)V

    #@56
    .restart local v4    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    goto :goto_2

    #@57
    .line 1115
    :cond_6
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@59
    invoke-virtual {v6}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@5c
    move-result-object v6

    #@5d
    iget-object v6, v6, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Landroid/widget/RemoteViews;

    #@5f
    .line 1116
    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter;->mRemoteViewsOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    #@61
    .line 1115
    invoke-virtual {v4, v6, v8}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->onRemoteViewsLoaded(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$OnClickHandler;)V

    #@64
    .line 1117
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    #@66
    invoke-virtual {v6, p1, v4}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->add(ILandroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;)V

    #@69
    .line 1118
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@6b
    invoke-virtual {v6, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->queueRequestedPositionToLoad(I)V

    #@6e
    .line 1119
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@71
    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 2

    #@0
    .prologue
    .line 1126
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@2
    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@5
    move-result-object v0

    #@6
    .line 1127
    .local v0, "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    #@7
    .line 1128
    :try_start_0
    iget v1, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v0

    #@a
    return v1

    #@b
    .line 1127
    :catchall_0
    move-exception v1

    #@c
    monitor-exit v0

    #@d
    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1260
    const/4 v0, 0x0

    #@1
    .line 1261
    .local v0, "result":Z
    iget v1, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v1, :pswitch_data_0

    #@6
    .line 1271
    :goto_0
    return v0

    #@7
    .line 1263
    :pswitch_0
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    #@9
    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 1264
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    #@11
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;

    #@13
    iget v3, p0, Landroid/widget/RemoteViewsAdapter;->mAppWidgetId:I

    #@15
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    #@17
    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->unbind(Landroid/content/Context;ILandroid/content/Intent;)V

    #@1a
    .line 1266
    :cond_0
    const/4 v0, 0x1

    #@1b
    .line 1267
    goto :goto_0

    #@1c
    .line 1261
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public hasStableIds()Z
    .locals 2

    #@0
    .prologue
    .line 1133
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@2
    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@5
    move-result-object v0

    #@6
    .line 1134
    .local v0, "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    #@7
    .line 1135
    :try_start_0
    iget-boolean v1, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v0

    #@a
    return v1

    #@b
    .line 1134
    :catchall_0
    move-exception v1

    #@c
    monitor-exit v0

    #@d
    throw v1
.end method

.method public isDataReady()Z
    .locals 1

    #@0
    .prologue
    .line 844
    iget-boolean v0, p0, Landroid/widget/RemoteViewsAdapter;->mDataReady:Z

    #@2
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1140
    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter;->getCount()I

    #@4
    move-result v1

    #@5
    if-gtz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1236
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@6
    .line 1240
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    #@8
    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 1241
    iput-boolean v1, p0, Landroid/widget/RemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    #@10
    .line 1242
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->requestBindService()Z

    #@13
    .line 1243
    return-void

    #@14
    .line 1246
    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;

    #@16
    new-instance v1, Landroid/widget/RemoteViewsAdapter$6;

    #@18
    invoke-direct {v1, p0}, Landroid/widget/RemoteViewsAdapter$6;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    #@1b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1e
    .line 1234
    return-void
.end method

.method public saveRemoteViewsCache()V
    .locals 8

    #@0
    .prologue
    .line 852
    new-instance v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    #@2
    .line 853
    new-instance v4, Landroid/content/Intent$FilterComparison;

    #@4
    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    #@6
    invoke-direct {v4, v5}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    #@9
    iget v5, p0, Landroid/widget/RemoteViewsAdapter;->mAppWidgetId:I

    #@b
    .line 852
    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;-><init>(Landroid/content/Intent$FilterComparison;I)V

    #@e
    .line 855
    .local v0, "key":Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;
    sget-object v5, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    #@10
    monitor-enter v5

    #@11
    .line 857
    :try_start_0
    sget-object v4, Landroid/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    #@13
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_0

    #@19
    .line 858
    sget-object v6, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalQueue:Landroid/os/Handler;

    #@1b
    sget-object v4, Landroid/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    #@1d
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v4

    #@21
    check-cast v4, Ljava/lang/Runnable;

    #@23
    invoke-virtual {v6, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@26
    .line 859
    sget-object v4, Landroid/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    #@28
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    .line 862
    :cond_0
    const/4 v1, 0x0

    #@2c
    .line 863
    .local v1, "metaDataCount":I
    const/4 v2, 0x0

    #@2d
    .line 864
    .local v2, "numRemoteViewsCached":I
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@2f
    invoke-static {v4}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-get1(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@32
    move-result-object v6

    #@33
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@34
    .line 865
    :try_start_1
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@36
    invoke-static {v4}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-get1(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@39
    move-result-object v4

    #@3a
    iget v1, v4, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    :try_start_2
    monitor-exit v6

    #@3d
    .line 867
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@3f
    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@40
    .line 868
    :try_start_3
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@42
    invoke-static {v4}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-get0(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/util/SparseArray;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@49
    move-result v2

    #@4a
    :try_start_4
    monitor-exit v6

    #@4b
    .line 870
    if-lez v1, :cond_1

    #@4d
    if-lez v2, :cond_1

    #@4f
    .line 871
    sget-object v4, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    #@51
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@53
    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    .line 874
    :cond_1
    new-instance v3, Landroid/widget/RemoteViewsAdapter$1;

    #@58
    invoke-direct {v3, p0, v0}, Landroid/widget/RemoteViewsAdapter$1;-><init>(Landroid/widget/RemoteViewsAdapter;Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;)V

    #@5b
    .line 887
    .local v3, "r":Ljava/lang/Runnable;
    sget-object v4, Landroid/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    #@5d
    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@60
    .line 888
    sget-object v4, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalQueue:Landroid/os/Handler;

    #@62
    const-wide/16 v6, 0x1388

    #@64
    invoke-virtual {v4, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@67
    monitor-exit v5

    #@68
    .line 851
    return-void

    #@69
    .line 864
    .end local v3    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v4

    #@6a
    :try_start_5
    monitor-exit v6

    #@6b
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@6c
    .line 855
    .end local v1    # "metaDataCount":I
    .end local v2    # "numRemoteViewsCached":I
    :catchall_1
    move-exception v4

    #@6d
    monitor-exit v5

    #@6e
    throw v4

    #@6f
    .line 867
    .restart local v1    # "metaDataCount":I
    .restart local v2    # "numRemoteViewsCached":I
    :catchall_2
    move-exception v4

    #@70
    :try_start_6
    monitor-exit v6

    #@71
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0
    .param p1, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    .line 848
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter;->mRemoteViewsOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    #@2
    .line 847
    return-void
.end method

.method public setVisibleRangeHint(II)V
    .locals 0
    .param p1, "lowerBound"    # I
    .param p2, "upperBound"    # I

    #@0
    .prologue
    .line 1079
    iput p1, p0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowLowerBound:I

    #@2
    .line 1080
    iput p2, p0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowUpperBound:I

    #@4
    .line 1078
    return-void
.end method

.method superNotifyDataSetChanged()V
    .locals 0

    #@0
    .prologue
    .line 1255
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    #@3
    .line 1254
    return-void
.end method
