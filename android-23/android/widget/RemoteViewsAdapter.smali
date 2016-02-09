.class public Landroid/widget/RemoteViewsAdapter;
.super Landroid/widget/BaseAdapter;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;,
        Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;
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

.field private mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

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
    .line 97
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 96
    sput-object v0, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    #@7
    .line 101
    new-instance v0, Ljava/util/HashMap;

    #@9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@c
    .line 100
    sput-object v0, Landroid/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    #@e
    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "callback"    # Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 821
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@4
    .line 82
    iput-boolean v1, p0, Landroid/widget/RemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    #@6
    .line 113
    iput-boolean v1, p0, Landroid/widget/RemoteViewsAdapter;->mDataReady:Z

    #@8
    .line 823
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;

    #@a
    .line 824
    iput-object p2, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    #@c
    .line 826
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    #@e
    if-nez v1, :cond_0

    #@10
    .line 827
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v2, "Non-null Intent must be specified."

    #@15
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v1

    #@19
    .line 830
    :cond_0
    const-string/jumbo v1, "remoteAdapterAppWidgetId"

    #@1c
    const/4 v2, -0x1

    #@1d
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@20
    move-result v1

    #@21
    iput v1, p0, Landroid/widget/RemoteViewsAdapter;->mAppWidgetId:I

    #@23
    .line 831
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@26
    move-result-object v1

    #@27
    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    #@29
    .line 832
    new-instance v1, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    #@2b
    invoke-direct {v1, p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    #@2e
    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    #@30
    .line 835
    const-string/jumbo v1, "remoteAdapterAppWidgetId"

    #@33
    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@36
    move-result v1

    #@37
    if-eqz v1, :cond_1

    #@39
    .line 836
    const-string/jumbo v1, "remoteAdapterAppWidgetId"

    #@3c
    invoke-virtual {p2, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    #@3f
    .line 840
    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    #@41
    const-string/jumbo v2, "RemoteViewsCache-loader"

    #@44
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@47
    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    #@49
    .line 841
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    #@4b
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    #@4e
    .line 842
    new-instance v1, Landroid/os/Handler;

    #@50
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    #@52
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@55
    move-result-object v2

    #@56
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@59
    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;

    #@5b
    .line 843
    new-instance v1, Landroid/os/Handler;

    #@5d
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@60
    move-result-object v2

    #@61
    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #@64
    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    #@66
    .line 845
    sget-object v1, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalThread:Landroid/os/HandlerThread;

    #@68
    if-nez v1, :cond_2

    #@6a
    .line 846
    new-instance v1, Landroid/os/HandlerThread;

    #@6c
    const-string/jumbo v2, "RemoteViewsAdapter-cachePruner"

    #@6f
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@72
    sput-object v1, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalThread:Landroid/os/HandlerThread;

    #@74
    .line 847
    sget-object v1, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalThread:Landroid/os/HandlerThread;

    #@76
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    #@79
    .line 848
    new-instance v1, Landroid/os/Handler;

    #@7b
    sget-object v2, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalThread:Landroid/os/HandlerThread;

    #@7d
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@80
    move-result-object v2

    #@81
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@84
    sput-object v1, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalQueue:Landroid/os/Handler;

    #@86
    .line 852
    :cond_2
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@88
    invoke-direct {v1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8b
    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCallback:Ljava/lang/ref/WeakReference;

    #@8d
    .line 853
    new-instance v1, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    #@8f
    invoke-direct {v1, p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    #@92
    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    #@94
    .line 855
    new-instance v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    #@96
    new-instance v1, Landroid/content/Intent$FilterComparison;

    #@98
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    #@9a
    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    #@9d
    .line 856
    iget v2, p0, Landroid/widget/RemoteViewsAdapter;->mAppWidgetId:I

    #@9f
    .line 855
    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;-><init>(Landroid/content/Intent$FilterComparison;I)V

    #@a2
    .line 858
    .local v0, "key":Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;
    sget-object v2, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    #@a4
    monitor-enter v2

    #@a5
    .line 859
    :try_start_0
    sget-object v1, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    #@a7
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@aa
    move-result v1

    #@ab
    if-eqz v1, :cond_5

    #@ad
    .line 860
    sget-object v1, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    #@af
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b2
    move-result-object v1

    #@b3
    check-cast v1, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@b5
    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@b7
    .line 861
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@b9
    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-get1(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@bc
    move-result-object v3

    #@bd
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@be
    .line 862
    :try_start_1
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@c0
    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-get1(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@c3
    move-result-object v1

    #@c4
    iget v1, v1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    #@c6
    if-lez v1, :cond_3

    #@c8
    .line 865
    const/4 v1, 0x1

    #@c9
    iput-boolean v1, p0, Landroid/widget/RemoteViewsAdapter;->mDataReady:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@cb
    :cond_3
    :try_start_2
    monitor-exit v3

    #@cc
    .line 871
    :goto_0
    iget-boolean v1, p0, Landroid/widget/RemoteViewsAdapter;->mDataReady:Z

    #@ce
    if-nez v1, :cond_4

    #@d0
    .line 872
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->requestBindService()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@d3
    :cond_4
    monitor-exit v2

    #@d4
    .line 822
    return-void

    #@d5
    .line 861
    :catchall_0
    move-exception v1

    #@d6
    :try_start_3
    monitor-exit v3

    #@d7
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@d8
    .line 858
    :catchall_1
    move-exception v1

    #@d9
    monitor-exit v2

    #@da
    throw v1

    #@db
    .line 869
    :cond_5
    :try_start_4
    new-instance v1, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@dd
    const/16 v3, 0x28

    #@df
    invoke-direct {v1, v3}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;-><init>(I)V

    #@e2
    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@e4
    goto :goto_0
.end method

.method private enqueueDeferredUnbindServiceMessage()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1381
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@6
    .line 1382
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    #@8
    const-wide/16 v2, 0x1388

    #@a
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@d
    .line 1379
    return-void
.end method

.method private getConvertViewTypeId(Landroid/view/View;)I
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;

    #@0
    .prologue
    .line 1124
    const/4 v1, -0x1

    #@1
    .line 1125
    .local v1, "typeId":I
    if-eqz p1, :cond_0

    #@3
    .line 1126
    const v2, 0x1020046

    #@6
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    .line 1127
    .local v0, "tag":Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@c
    .line 1128
    check-cast v0, Ljava/lang/Integer;

    #@e
    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@11
    move-result v1

    #@12
    .line 1131
    :cond_0
    return v1
.end method

.method private getVisibleWindow(III)Ljava/util/ArrayList;
    .locals 3
    .param p1, "lower"    # I
    .param p2, "upper"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1315
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1318
    .local v1, "window":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p1, :cond_1

    #@7
    if-nez p2, :cond_1

    #@9
    .line 1319
    :cond_0
    return-object v1

    #@a
    .line 1318
    :cond_1
    if-ltz p1, :cond_0

    #@c
    if-ltz p2, :cond_0

    #@e
    .line 1322
    if-gt p1, p2, :cond_2

    #@10
    .line 1323
    move v0, p1

    #@11
    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_4

    #@13
    .line 1324
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1a
    .line 1323
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1329
    .end local v0    # "i":I
    :cond_2
    move v0, p1

    #@1e
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p3, :cond_3

    #@20
    .line 1330
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@27
    .line 1329
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_1

    #@2a
    .line 1332
    :cond_3
    const/4 v0, 0x0

    #@2b
    :goto_2
    if-gt v0, p2, :cond_4

    #@2d
    .line 1333
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@34
    .line 1332
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_2

    #@37
    .line 1336
    :cond_4
    return-object v1
.end method

.method private loadNextIndexInBackground()V
    .locals 2

    #@0
    .prologue
    .line 938
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;

    #@2
    new-instance v1, Landroid/widget/RemoteViewsAdapter$2;

    #@4
    invoke-direct {v1, p0}, Landroid/widget/RemoteViewsAdapter$2;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 937
    return-void
.end method

.method private onNotifyDataSetChanged()V
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 1257
    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    #@3
    invoke-virtual {v7}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;

    #@6
    move-result-object v2

    #@7
    .line 1259
    .local v2, "factory":Lcom/android/internal/widget/IRemoteViewsFactory;
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->onDataSetChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 1272
    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@c
    monitor-enter v8

    #@d
    .line 1273
    :try_start_1
    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@f
    invoke-virtual {v7}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    monitor-exit v8

    #@13
    .line 1277
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->updateTemporaryMetaData()V

    #@16
    .line 1280
    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@18
    invoke-virtual {v7}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getTemporaryMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@1b
    move-result-object v8

    #@1c
    monitor-enter v8

    #@1d
    .line 1281
    :try_start_2
    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@1f
    invoke-virtual {v7}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getTemporaryMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@22
    move-result-object v7

    #@23
    iget v5, v7, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    #@25
    .line 1282
    .local v5, "newCount":I
    iget v7, p0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowLowerBound:I

    #@27
    .line 1283
    iget v9, p0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowUpperBound:I

    #@29
    .line 1282
    invoke-direct {p0, v7, v9, v5}, Landroid/widget/RemoteViewsAdapter;->getVisibleWindow(III)Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2c
    move-result-object v6

    #@2d
    .local v6, "visibleWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    monitor-exit v8

    #@2e
    .line 1289
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v4

    #@32
    .local v4, "i$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v7

    #@36
    if-eqz v7, :cond_1

    #@38
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v7

    #@3c
    check-cast v7, Ljava/lang/Integer;

    #@3e
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@41
    move-result v3

    #@42
    .line 1292
    .local v3, "i":I
    if-ge v3, v5, :cond_0

    #@44
    .line 1293
    invoke-direct {p0, v3, v10}, Landroid/widget/RemoteViewsAdapter;->updateRemoteViews(IZ)V

    #@47
    goto :goto_0

    #@48
    .line 1266
    .end local v3    # "i":I
    .end local v4    # "i$iterator":Ljava/util/Iterator;
    .end local v5    # "newCount":I
    .end local v6    # "visibleWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v1

    #@49
    .line 1267
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v7, "RemoteViewsAdapter"

    #@4c
    new-instance v8, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v9, "Error in updateNotifyDataSetChanged(): "

    #@54
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v8

    #@58
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    #@5b
    move-result-object v9

    #@5c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v8

    #@60
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v8

    #@64
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    .line 1268
    return-void

    #@68
    .line 1260
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    #@69
    .line 1261
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "RemoteViewsAdapter"

    #@6c
    new-instance v8, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v9, "Error in updateNotifyDataSetChanged(): "

    #@74
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v8

    #@78
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    #@7b
    move-result-object v9

    #@7c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v8

    #@80
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v8

    #@84
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@87
    .line 1265
    return-void

    #@88
    .line 1272
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v7

    #@89
    monitor-exit v8

    #@8a
    throw v7

    #@8b
    .line 1280
    :catchall_1
    move-exception v7

    #@8c
    monitor-exit v8

    #@8d
    throw v7

    #@8e
    .line 1298
    .restart local v4    # "i$iterator":Ljava/util/Iterator;
    .restart local v5    # "newCount":I
    .restart local v6    # "visibleWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    #@90
    new-instance v8, Landroid/widget/RemoteViewsAdapter$5;

    #@92
    invoke-direct {v8, p0}, Landroid/widget/RemoteViewsAdapter$5;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    #@95
    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@98
    .line 1311
    iput-boolean v10, p0, Landroid/widget/RemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    #@9a
    .line 1255
    return-void
.end method

.method private processException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 964
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
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

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
    .line 968
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@2b
    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@2e
    move-result-object v0

    #@2f
    .line 969
    .local v0, "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    #@30
    .line 970
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    monitor-exit v0

    #@34
    .line 972
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@36
    monitor-enter v2

    #@37
    .line 973
    :try_start_1
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@39
    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3c
    monitor-exit v2

    #@3d
    .line 975
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    #@3f
    new-instance v2, Landroid/widget/RemoteViewsAdapter$3;

    #@41
    invoke-direct {v2, p0}, Landroid/widget/RemoteViewsAdapter$3;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    #@44
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@47
    .line 963
    return-void

    #@48
    .line 969
    :catchall_0
    move-exception v1

    #@49
    monitor-exit v0

    #@4a
    throw v1

    #@4b
    .line 972
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
    .line 1387
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    #@2
    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1388
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
    .line 1392
    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    #@15
    const/4 v1, 0x1

    #@16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@19
    .line 1393
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
    .line 1013
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    #@4
    invoke-virtual {v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;

    #@7
    move-result-object v11

    #@8
    .line 1016
    .local v11, "factory":Lcom/android/internal/widget/IRemoteViewsFactory;
    const/4 v5, 0x0

    #@9
    .line 1017
    .local v5, "remoteViews":Landroid/widget/RemoteViews;
    const-wide/16 v6, 0x0

    #@b
    .line 1019
    .local v6, "itemId":J
    :try_start_0
    move/from16 v0, p1

    #@d
    invoke-interface {v11, v0}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    #@10
    move-result-object v5

    #@11
    .line 1020
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
    .line 1032
    if-nez v5, :cond_0

    #@19
    .line 1036
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
    .line 1037
    const-string/jumbo v16, "returned from RemoteViewsFactory."

    #@45
    .line 1036
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
    .line 1038
    return-void

    #@53
    .line 1027
    .end local v5    # "remoteViews":Landroid/widget/RemoteViews;
    :catch_0
    move-exception v10

    #@54
    .line 1028
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
    invoke-virtual {v10}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

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
    .line 1029
    return-void

    #@86
    .line 1021
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v9

    #@87
    .line 1022
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
    invoke-virtual {v9}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

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
    .line 1026
    return-void

    #@b9
    .line 1041
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v5    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_0
    invoke-virtual {v5}, Landroid/widget/RemoteViews;->getLayoutId()I

    #@bc
    move-result v12

    #@bd
    .line 1042
    .local v12, "layoutId":I
    move-object/from16 v0, p0

    #@bf
    iget-object v3, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@c1
    invoke-virtual {v3}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@c4
    move-result-object v13

    #@c5
    .line 1045
    .local v13, "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v13

    #@c6
    .line 1046
    :try_start_1
    invoke-virtual {v13, v12}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->isViewTypeInRange(I)Z

    #@c9
    move-result v15

    #@ca
    .line 1047
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
    .line 1049
    move-object/from16 v0, p0

    #@d7
    iget-object v0, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@d9
    move-object/from16 v16, v0

    #@db
    monitor-enter v16

    #@dc
    .line 1050
    if-eqz v15, :cond_2

    #@de
    .line 1051
    :try_start_2
    move-object/from16 v0, p0

    #@e0
    iget v3, v0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowLowerBound:I

    #@e2
    .line 1052
    move-object/from16 v0, p0

    #@e4
    iget v4, v0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowUpperBound:I

    #@e6
    .line 1051
    move-object/from16 v0, p0

    #@e8
    invoke-direct {v0, v3, v4, v2}, Landroid/widget/RemoteViewsAdapter;->getVisibleWindow(III)Ljava/util/ArrayList;

    #@eb
    move-result-object v8

    #@ec
    .line 1054
    .local v8, "visibleWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    #@ee
    iget-object v3, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@f0
    move/from16 v4, p1

    #@f2
    invoke-virtual/range {v3 .. v8}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->insert(ILandroid/widget/RemoteViews;JLjava/util/ArrayList;)V

    #@f5
    .line 1058
    move-object v14, v5

    #@f6
    .line 1059
    .local v14, "rv":Landroid/widget/RemoteViews;
    if-eqz p2, :cond_1

    #@f8
    .line 1060
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
    invoke-direct {v4, v0, v1, v14}, Landroid/widget/RemoteViewsAdapter$4;-><init>(Landroid/widget/RemoteViewsAdapter;ILandroid/widget/RemoteViews;)V

    #@105
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@108
    .end local v8    # "visibleWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v14    # "rv":Landroid/widget/RemoteViews;
    :cond_1
    :goto_0
    monitor-exit v16

    #@109
    .line 1012
    return-void

    #@10a
    .line 1045
    .end local v2    # "cacheCount":I
    .end local v15    # "viewTypeInRange":Z
    :catchall_0
    move-exception v3

    #@10b
    monitor-exit v13

    #@10c
    throw v3

    #@10d
    .line 1072
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
    .line 1049
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
    .line 984
    iget-object v9, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    #@2
    invoke-virtual {v9}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;

    #@5
    move-result-object v3

    #@6
    .line 989
    .local v3, "factory":Lcom/android/internal/widget/IRemoteViewsFactory;
    :try_start_0
    invoke-interface {v3}, Lcom/android/internal/widget/IRemoteViewsFactory;->hasStableIds()Z

    #@9
    move-result v5

    #@a
    .line 990
    .local v5, "hasStableIds":Z
    invoke-interface {v3}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewTypeCount()I

    #@d
    move-result v8

    #@e
    .line 991
    .local v8, "viewTypeCount":I
    invoke-interface {v3}, Lcom/android/internal/widget/IRemoteViewsFactory;->getCount()I

    #@11
    move-result v0

    #@12
    .line 992
    .local v0, "count":I
    invoke-interface {v3}, Lcom/android/internal/widget/IRemoteViewsFactory;->getLoadingView()Landroid/widget/RemoteViews;

    #@15
    move-result-object v6

    #@16
    .line 993
    .local v6, "loadingView":Landroid/widget/RemoteViews;
    const/4 v4, 0x0

    #@17
    .line 994
    .local v4, "firstView":Landroid/widget/RemoteViews;
    if-lez v0, :cond_0

    #@19
    if-nez v6, :cond_0

    #@1b
    .line 995
    const/4 v9, 0x0

    #@1c
    invoke-interface {v3, v9}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    #@1f
    move-result-object v4

    #@20
    .line 997
    .end local v4    # "firstView":Landroid/widget/RemoteViews;
    :cond_0
    iget-object v9, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@22
    invoke-virtual {v9}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getTemporaryMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@25
    move-result-object v7

    #@26
    .line 998
    .local v7, "tmpMetaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    #@27
    .line 999
    :try_start_1
    iput-boolean v5, v7, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    #@29
    .line 1001
    add-int/lit8 v9, v8, 0x1

    #@2b
    iput v9, v7, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    #@2d
    .line 1002
    iput v0, v7, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    #@2f
    .line 1003
    invoke-virtual {v7, v6, v4}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->setLoadingViewTemplates(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    :try_start_2
    monitor-exit v7

    #@33
    .line 983
    .end local v0    # "count":I
    .end local v5    # "hasStableIds":Z
    .end local v6    # "loadingView":Landroid/widget/RemoteViews;
    .end local v7    # "tmpMetaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .end local v8    # "viewTypeCount":I
    :goto_0
    return-void

    #@34
    .line 998
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
    .line 1005
    .end local v0    # "count":I
    .end local v5    # "hasStableIds":Z
    .end local v6    # "loadingView":Landroid/widget/RemoteViews;
    .end local v7    # "tmpMetaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .end local v8    # "viewTypeCount":I
    :catch_0
    move-exception v1

    #@38
    .line 1006
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v9, "updateMetaData"

    #@3b
    invoke-direct {p0, v9, v1}, Landroid/widget/RemoteViewsAdapter;->processException(Ljava/lang/String;Ljava/lang/Exception;)V

    #@3e
    goto :goto_0

    #@3f
    .line 1007
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    #@40
    .line 1008
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
    .line 880
    :try_start_0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 881
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    #@6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 884
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->finalize()V

    #@c
    .line 878
    return-void

    #@d
    .line 883
    :catchall_0
    move-exception v0

    #@e
    .line 884
    invoke-super {p0}, Landroid/widget/BaseAdapter;->finalize()V

    #@11
    .line 883
    throw v0
.end method

.method public getCount()I
    .locals 2

    #@0
    .prologue
    .line 1083
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@2
    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@5
    move-result-object v0

    #@6
    .line 1084
    .local v0, "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    #@7
    .line 1085
    :try_start_0
    iget v1, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v0

    #@a
    return v1

    #@b
    .line 1084
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
    .line 1091
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1095
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@2
    monitor-enter v1

    #@3
    .line 1096
    :try_start_0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@5
    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->containsMetaDataAt(I)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1097
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
    .line 1099
    :cond_0
    const-wide/16 v2, 0x0

    #@17
    monitor-exit v1

    #@18
    return-wide v2

    #@19
    .line 1095
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
    .line 1104
    const/4 v1, 0x0

    #@1
    .line 1105
    .local v1, "typeId":I
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@3
    monitor-enter v3

    #@4
    .line 1106
    :try_start_0
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@6
    invoke-virtual {v2, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->containsMetaDataAt(I)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 1107
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
    .line 1113
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@17
    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@1a
    move-result-object v0

    #@1b
    .line 1114
    .local v0, "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    #@1c
    .line 1115
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
    .line 1109
    .end local v0    # "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    :cond_0
    const/4 v2, 0x0

    #@23
    monitor-exit v3

    #@24
    return v2

    #@25
    .line 1105
    :catchall_0
    move-exception v2

    #@26
    monitor-exit v3

    #@27
    throw v2

    #@28
    .line 1114
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
    .line 1079
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    #@2
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 24
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 1147
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@4
    move-object/from16 v23, v0

    #@6
    monitor-enter v23

    #@7
    .line 1148
    :try_start_0
    move-object/from16 v0, p0

    #@9
    iget-object v3, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@b
    move/from16 v0, p1

    #@d
    invoke-virtual {v3, v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->containsRemoteViewAt(I)Z

    #@10
    move-result v16

    #@11
    .line 1149
    .local v16, "isInCache":Z
    move-object/from16 v0, p0

    #@13
    iget-object v3, v0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    #@15
    invoke-virtual {v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    #@18
    move-result v15

    #@19
    .line 1150
    .local v15, "isConnected":Z
    const/4 v13, 0x0

    #@1a
    .line 1152
    .local v13, "hasNewItems":Z
    if-eqz p2, :cond_0

    #@1c
    move-object/from16 v0, p2

    #@1e
    instance-of v3, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    #@20
    if-eqz v3, :cond_0

    #@22
    .line 1153
    move-object/from16 v0, p0

    #@24
    iget-object v4, v0, Landroid/widget/RemoteViewsAdapter;->mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    #@26
    move-object/from16 v0, p2

    #@28
    check-cast v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    #@2a
    move-object v3, v0

    #@2b
    invoke-virtual {v4, v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->removeView(Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;)V

    #@2e
    .line 1156
    :cond_0
    if-nez v16, :cond_1

    #@30
    if-eqz v15, :cond_3

    #@32
    .line 1162
    :cond_1
    move-object/from16 v0, p0

    #@34
    iget-object v3, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@36
    move/from16 v0, p1

    #@38
    invoke-virtual {v3, v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->queuePositionsToBePreloadedFromRequestedPosition(I)Z

    #@3b
    move-result v13

    #@3c
    .line 1165
    .end local v13    # "hasNewItems":Z
    :goto_0
    if-eqz v16, :cond_9

    #@3e
    .line 1166
    const/4 v10, 0x0

    #@3f
    .line 1167
    .local v10, "convertViewChild":Landroid/view/View;
    const/4 v11, 0x0

    #@40
    .line 1168
    .local v11, "convertViewTypeId":I
    const/16 v17, 0x0

    #@42
    .line 1170
    .local v17, "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    move-object/from16 v0, p2

    #@44
    instance-of v3, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    #@46
    if-eqz v3, :cond_a

    #@48
    .line 1171
    move-object/from16 v0, p2

    #@4a
    check-cast v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    #@4c
    move-object/from16 v17, v0

    #@4e
    .line 1172
    .local v17, "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    const/4 v3, 0x0

    #@4f
    move-object/from16 v0, v17

    #@51
    invoke-virtual {v0, v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->getChildAt(I)Landroid/view/View;

    #@54
    move-result-object v10

    #@55
    .line 1173
    .local v10, "convertViewChild":Landroid/view/View;
    move-object/from16 v0, p0

    #@57
    invoke-direct {v0, v10}, Landroid/widget/RemoteViewsAdapter;->getConvertViewTypeId(Landroid/view/View;)I

    #@5a
    move-result v11

    #@5b
    move-object/from16 v18, v17

    #@5d
    .line 1178
    .end local v10    # "convertViewChild":Landroid/view/View;
    .end local v17    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .local v18, "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :goto_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    #@60
    move-result-object v9

    #@61
    .line 1179
    .local v9, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    #@63
    iget-object v3, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@65
    move/from16 v0, p1

    #@67
    invoke-virtual {v3, v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getRemoteViewsAt(I)Landroid/widget/RemoteViews;

    #@6a
    move-result-object v21

    #@6b
    .line 1180
    .local v21, "rv":Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    #@6d
    iget-object v3, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@6f
    move/from16 v0, p1

    #@71
    invoke-virtual {v3, v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaDataAt(I)Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    #@74
    move-result-object v14

    #@75
    .line 1181
    .local v14, "indexMetaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    iget v0, v14, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I

    #@77
    move/from16 v22, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@79
    .line 1185
    .local v22, "typeId":I
    if-eqz v18, :cond_6

    #@7b
    .line 1186
    move/from16 v0, v22

    #@7d
    if-ne v11, v0, :cond_4

    #@7f
    .line 1187
    :try_start_1
    move-object/from16 v0, p0

    #@81
    iget-object v3, v0, Landroid/widget/RemoteViewsAdapter;->mRemoteViewsOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    #@83
    move-object/from16 v0, v21

    #@85
    invoke-virtual {v0, v9, v10, v3}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    #@88
    .line 1216
    if-eqz v13, :cond_2

    #@8a
    :try_start_2
    invoke-direct/range {p0 .. p0}, Landroid/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8d
    :cond_2
    monitor-exit v23

    #@8e
    .line 1188
    return-object v18

    #@8f
    .line 1159
    .end local v9    # "context":Landroid/content/Context;
    .end local v11    # "convertViewTypeId":I
    .end local v14    # "indexMetaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .end local v18    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v21    # "rv":Landroid/widget/RemoteViews;
    .end local v22    # "typeId":I
    .restart local v13    # "hasNewItems":Z
    :cond_3
    :try_start_3
    invoke-direct/range {p0 .. p0}, Landroid/widget/RemoteViewsAdapter;->requestBindService()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@92
    goto :goto_0

    #@93
    .line 1147
    .end local v13    # "hasNewItems":Z
    .end local v15    # "isConnected":Z
    .end local v16    # "isInCache":Z
    :catchall_0
    move-exception v3

    #@94
    monitor-exit v23

    #@95
    throw v3

    #@96
    .line 1190
    .restart local v9    # "context":Landroid/content/Context;
    .restart local v11    # "convertViewTypeId":I
    .restart local v14    # "indexMetaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .restart local v15    # "isConnected":Z
    .restart local v16    # "isInCache":Z
    .restart local v18    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v21    # "rv":Landroid/widget/RemoteViews;
    .restart local v22    # "typeId":I
    :cond_4
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->removeAllViews()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    #@99
    move-object/from16 v17, v18

    #@9b
    .line 1196
    .end local v18    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v17    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :goto_2
    :try_start_5
    move-object/from16 v0, p0

    #@9d
    iget-object v3, v0, Landroid/widget/RemoteViewsAdapter;->mRemoteViewsOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    #@9f
    move-object/from16 v0, v21

    #@a1
    move-object/from16 v1, p3

    #@a3
    invoke-virtual {v0, v9, v1, v3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    #@a6
    move-result-object v20

    #@a7
    .line 1198
    .local v20, "newView":Landroid/view/View;
    new-instance v3, Ljava/lang/Integer;

    #@a9
    move/from16 v0, v22

    #@ab
    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    #@ae
    .line 1197
    const v4, 0x1020046

    #@b1
    move-object/from16 v0, v20

    #@b3
    invoke-virtual {v0, v4, v3}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    #@b6
    .line 1199
    move-object/from16 v0, v17

    #@b8
    move-object/from16 v1, v20

    #@ba
    invoke-virtual {v0, v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->addView(Landroid/view/View;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@bd
    .line 1216
    if-eqz v13, :cond_5

    #@bf
    :try_start_6
    invoke-direct/range {p0 .. p0}, Landroid/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@c2
    :cond_5
    monitor-exit v23

    #@c3
    .line 1200
    return-object v17

    #@c4
    .line 1192
    .end local v17    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v20    # "newView":Landroid/view/View;
    .restart local v18    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :cond_6
    :try_start_7
    new-instance v17, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    #@c6
    move-object/from16 v0, v17

    #@c8
    invoke-direct {v0, v9}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    #@cb
    .end local v18    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v17    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    goto :goto_2

    #@cc
    .line 1202
    .end local v17    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v18    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :catch_0
    move-exception v12

    #@cd
    .local v12, "e":Ljava/lang/Exception;
    move-object/from16 v17, v18

    #@cf
    .line 1205
    .end local v18    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v17    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :goto_3
    :try_start_8
    const-string/jumbo v3, "RemoteViewsAdapter"

    #@d2
    new-instance v4, Ljava/lang/StringBuilder;

    #@d4
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d7
    const-string/jumbo v5, "Error inflating RemoteViews at position: "

    #@da
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v4

    #@de
    move/from16 v0, p1

    #@e0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v4

    #@e4
    const-string/jumbo v5, ", using"

    #@e7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v4

    #@eb
    .line 1206
    const-string/jumbo v5, "loading view instead"

    #@ee
    .line 1205
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v4

    #@f2
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v4

    #@f6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f9
    move-result-object v4

    #@fa
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@fd
    .line 1208
    const/16 v19, 0x0

    #@ff
    .line 1209
    .local v19, "loadingView":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    move-object/from16 v0, p0

    #@101
    iget-object v3, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@103
    invoke-virtual {v3}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@106
    move-result-object v2

    #@107
    .line 1210
    .local v2, "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@108
    .line 1212
    :try_start_9
    move-object/from16 v0, p0

    #@10a
    iget-object v6, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@10c
    move-object/from16 v0, p0

    #@10e
    iget-object v7, v0, Landroid/widget/RemoteViewsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    #@110
    move-object/from16 v0, p0

    #@112
    iget-object v8, v0, Landroid/widget/RemoteViewsAdapter;->mRemoteViewsOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    #@114
    move/from16 v3, p1

    #@116
    move-object/from16 v4, p2

    #@118
    move-object/from16 v5, p3

    #@11a
    .line 1211
    invoke-static/range {v2 .. v8}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->-wrap0(Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;Landroid/view/LayoutInflater;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@11d
    move-result-object v19

    #@11e
    .local v19, "loadingView":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    #@11f
    .line 1216
    if-eqz v13, :cond_7

    #@121
    :try_start_b
    invoke-direct/range {p0 .. p0}, Landroid/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@124
    :cond_7
    monitor-exit v23

    #@125
    .line 1214
    return-object v19

    #@126
    .line 1210
    .local v19, "loadingView":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :catchall_1
    move-exception v3

    #@127
    :try_start_c
    monitor-exit v2

    #@128
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    #@129
    .line 1215
    .end local v2    # "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v19    # "loadingView":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :catchall_2
    move-exception v3

    #@12a
    .line 1216
    :goto_4
    if-eqz v13, :cond_8

    #@12c
    :try_start_d
    invoke-direct/range {p0 .. p0}, Landroid/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V

    #@12f
    .line 1215
    :cond_8
    throw v3

    #@130
    .line 1221
    .end local v9    # "context":Landroid/content/Context;
    .end local v11    # "convertViewTypeId":I
    .end local v14    # "indexMetaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .end local v17    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v21    # "rv":Landroid/widget/RemoteViews;
    .end local v22    # "typeId":I
    :cond_9
    const/16 v19, 0x0

    #@132
    .line 1222
    .restart local v19    # "loadingView":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    move-object/from16 v0, p0

    #@134
    iget-object v3, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@136
    invoke-virtual {v3}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@139
    move-result-object v2

    #@13a
    .line 1223
    .restart local v2    # "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@13b
    .line 1225
    :try_start_e
    move-object/from16 v0, p0

    #@13d
    iget-object v6, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@13f
    move-object/from16 v0, p0

    #@141
    iget-object v7, v0, Landroid/widget/RemoteViewsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    #@143
    move-object/from16 v0, p0

    #@145
    iget-object v8, v0, Landroid/widget/RemoteViewsAdapter;->mRemoteViewsOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    #@147
    move/from16 v3, p1

    #@149
    move-object/from16 v4, p2

    #@14b
    move-object/from16 v5, p3

    #@14d
    .line 1224
    invoke-static/range {v2 .. v8}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->-wrap0(Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;Landroid/view/LayoutInflater;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    #@150
    move-result-object v19

    #@151
    .local v19, "loadingView":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :try_start_f
    monitor-exit v2

    #@152
    .line 1228
    move-object/from16 v0, p0

    #@154
    iget-object v3, v0, Landroid/widget/RemoteViewsAdapter;->mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    #@156
    move/from16 v0, p1

    #@158
    move-object/from16 v1, v19

    #@15a
    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->add(ILandroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;)V

    #@15d
    .line 1229
    move-object/from16 v0, p0

    #@15f
    iget-object v3, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@161
    move/from16 v0, p1

    #@163
    invoke-virtual {v3, v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->queueRequestedPositionToLoad(I)V

    #@166
    .line 1230
    invoke-direct/range {p0 .. p0}, Landroid/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    #@169
    monitor-exit v23

    #@16a
    .line 1232
    return-object v19

    #@16b
    .line 1223
    .local v19, "loadingView":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :catchall_3
    move-exception v3

    #@16c
    :try_start_10
    monitor-exit v2

    #@16d
    throw v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    #@16e
    .line 1215
    .end local v2    # "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .end local v19    # "loadingView":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v9    # "context":Landroid/content/Context;
    .restart local v11    # "convertViewTypeId":I
    .restart local v14    # "indexMetaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .restart local v18    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v21    # "rv":Landroid/widget/RemoteViews;
    .restart local v22    # "typeId":I
    :catchall_4
    move-exception v3

    #@16f
    move-object/from16 v17, v18

    #@171
    .end local v18    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v17    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    goto :goto_4

    #@172
    .line 1202
    :catch_1
    move-exception v12

    #@173
    .restart local v12    # "e":Ljava/lang/Exception;
    goto/16 :goto_3

    #@175
    .end local v9    # "context":Landroid/content/Context;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v14    # "indexMetaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .end local v21    # "rv":Landroid/widget/RemoteViews;
    .end local v22    # "typeId":I
    .local v10, "convertViewChild":Landroid/view/View;
    .local v17, "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :cond_a
    move-object/from16 v18, v17

    #@177
    .restart local v18    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 2

    #@0
    .prologue
    .line 1238
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@2
    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@5
    move-result-object v0

    #@6
    .line 1239
    .local v0, "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    #@7
    .line 1240
    :try_start_0
    iget v1, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v0

    #@a
    return v1

    #@b
    .line 1239
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
    .line 1365
    const/4 v0, 0x0

    #@1
    .line 1366
    .local v0, "result":Z
    iget v1, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v1, :pswitch_data_0

    #@6
    .line 1376
    :goto_0
    return v0

    #@7
    .line 1368
    :pswitch_0
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    #@9
    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 1369
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
    .line 1371
    :cond_0
    const/4 v0, 0x1

    #@1b
    .line 1372
    goto :goto_0

    #@1c
    .line 1366
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public hasStableIds()Z
    .locals 2

    #@0
    .prologue
    .line 1245
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@2
    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@5
    move-result-object v0

    #@6
    .line 1246
    .local v0, "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    #@7
    .line 1247
    :try_start_0
    iget-boolean v1, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v0

    #@a
    return v1

    #@b
    .line 1246
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
    .line 889
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
    .line 1252
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
    .line 1341
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@6
    .line 1345
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    #@8
    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 1346
    iput-boolean v1, p0, Landroid/widget/RemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    #@10
    .line 1347
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->requestBindService()Z

    #@13
    .line 1348
    return-void

    #@14
    .line 1351
    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;

    #@16
    new-instance v1, Landroid/widget/RemoteViewsAdapter$6;

    #@18
    invoke-direct {v1, p0}, Landroid/widget/RemoteViewsAdapter$6;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    #@1b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1e
    .line 1339
    return-void
.end method

.method public saveRemoteViewsCache()V
    .locals 8

    #@0
    .prologue
    .line 897
    new-instance v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    #@2
    .line 898
    new-instance v4, Landroid/content/Intent$FilterComparison;

    #@4
    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    #@6
    invoke-direct {v4, v5}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    #@9
    iget v5, p0, Landroid/widget/RemoteViewsAdapter;->mAppWidgetId:I

    #@b
    .line 897
    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;-><init>(Landroid/content/Intent$FilterComparison;I)V

    #@e
    .line 900
    .local v0, "key":Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;
    sget-object v5, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    #@10
    monitor-enter v5

    #@11
    .line 902
    :try_start_0
    sget-object v4, Landroid/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    #@13
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_0

    #@19
    .line 903
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
    .line 904
    sget-object v4, Landroid/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    #@28
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    .line 907
    :cond_0
    const/4 v1, 0x0

    #@2c
    .line 908
    .local v1, "metaDataCount":I
    const/4 v2, 0x0

    #@2d
    .line 909
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
    .line 910
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
    .line 912
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@3f
    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@40
    .line 913
    :try_start_3
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@42
    invoke-static {v4}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-get0(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Ljava/util/HashMap;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@49
    move-result v2

    #@4a
    :try_start_4
    monitor-exit v6

    #@4b
    .line 915
    if-lez v1, :cond_1

    #@4d
    if-lez v2, :cond_1

    #@4f
    .line 916
    sget-object v4, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    #@51
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@53
    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    .line 919
    :cond_1
    new-instance v3, Landroid/widget/RemoteViewsAdapter$1;

    #@58
    invoke-direct {v3, p0, v0}, Landroid/widget/RemoteViewsAdapter$1;-><init>(Landroid/widget/RemoteViewsAdapter;Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;)V

    #@5b
    .line 932
    .local v3, "r":Ljava/lang/Runnable;
    sget-object v4, Landroid/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    #@5d
    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@60
    .line 933
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
    .line 896
    return-void

    #@69
    .line 909
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
    .line 900
    .end local v1    # "metaDataCount":I
    .end local v2    # "numRemoteViewsCached":I
    :catchall_1
    move-exception v4

    #@6d
    monitor-exit v5

    #@6e
    throw v4

    #@6f
    .line 912
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
    .line 893
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter;->mRemoteViewsOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    #@2
    .line 892
    return-void
.end method

.method public setVisibleRangeHint(II)V
    .locals 0
    .param p1, "lowerBound"    # I
    .param p2, "upperBound"    # I

    #@0
    .prologue
    .line 1140
    iput p1, p0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowLowerBound:I

    #@2
    .line 1141
    iput p2, p0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowUpperBound:I

    #@4
    .line 1139
    return-void
.end method

.method superNotifyDataSetChanged()V
    .locals 0

    #@0
    .prologue
    .line 1360
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    #@3
    .line 1359
    return-void
.end method
