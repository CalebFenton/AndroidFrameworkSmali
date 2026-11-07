.class public Landroid/widget/RemoteViewsAdapter;
.super Landroid/widget/BaseAdapter;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;,
        Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;,
        Landroid/widget/RemoteViewsAdapter$HandlerThreadExecutor;,
        Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;,
        Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;,
        Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;,
        Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;
    }
.end annotation


# static fields
.field private static final blacklist CACHE_RESET_CONFIG_FLAGS:I = -0x3fffee00

.field private static final greylist-max-o DEFAULT_CACHE_SIZE:I = 0x28

.field private static final greylist-max-o DEFAULT_LOADING_VIEW_HEIGHT:I = 0x32

.field static final greylist-max-o MSG_LOAD_NEXT_ITEM:I = 0x3

.field private static final greylist-max-o MSG_MAIN_HANDLER_COMMIT_METADATA:I = 0x1

.field private static final greylist-max-o MSG_MAIN_HANDLER_REMOTE_ADAPTER_CONNECTED:I = 0x3

.field private static final greylist-max-o MSG_MAIN_HANDLER_REMOTE_ADAPTER_DISCONNECTED:I = 0x4

.field private static final greylist-max-o MSG_MAIN_HANDLER_REMOTE_VIEWS_LOADED:I = 0x5

.field private static final greylist-max-o MSG_MAIN_HANDLER_SUPER_NOTIFY_DATA_SET_CHANGED:I = 0x2

.field static final greylist-max-o MSG_NOTIFY_DATA_SET_CHANGED:I = 0x2

.field static final greylist-max-o MSG_REQUEST_BIND:I = 0x1

.field static final greylist-max-o MSG_UNBIND_SERVICE:I = 0x4

.field private static final greylist-max-o REMOTE_VIEWS_CACHE_DURATION:I = 0x1388

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RemoteViewsAdapter"

.field private static final greylist-max-o UNBIND_SERVICE_DELAY:I = 0x1388

.field private static greylist-max-o sCacheRemovalQueue:Landroid/os/Handler;

.field private static greylist-max-o sCacheRemovalThread:Landroid/os/HandlerThread;

.field private static final greylist-max-o sCachedRemoteViewsCaches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;",
            "Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mAppWidgetId:I

.field private final greylist-max-o mAsyncViewLoadExecutor:Ljava/util/concurrent/Executor;

.field private final greylist-max-r mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

.field private final greylist-max-o mCallback:Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDataReady:Z

.field private final greylist-max-o mIntent:Landroid/content/Intent;

.field private greylist-max-o mLastRemoteViewAppInfo:Landroid/content/pm/ApplicationInfo;

.field private final greylist-max-o mMainHandler:Landroid/os/Handler;

.field private final blacklist mOnLightBackground:Z

.field private blacklist mRemoteViewsInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

.field private greylist-max-o mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

.field private final greylist-max-o mServiceHandler:Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;

.field private greylist-max-o mVisibleWindowLowerBound:I

.field private greylist-max-o mVisibleWindowUpperBound:I

.field private final greylist-max-r mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCache(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMainHandler(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViewsAdapter;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRemoteViewsInteractionHandler(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViews$InteractionHandler;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViewsAdapter;->mRemoteViewsInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetVisibleWindow(Landroid/widget/RemoteViewsAdapter;I)[I
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RemoteViewsAdapter;->getVisibleWindow(I)[I

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mrequestBindService(Landroid/widget/RemoteViewsAdapter;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->requestBindService()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateRemoteViews(Landroid/widget/RemoteViewsAdapter;Lcom/android/internal/widget/IRemoteViewsFactory;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViewsAdapter;->updateRemoteViews(Lcom/android/internal/widget/IRemoteViewsFactory;IZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateTemporaryMetaData(Landroid/widget/RemoteViewsAdapter;Lcom/android/internal/widget/IRemoteViewsFactory;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RemoteViewsAdapter;->updateTemporaryMetaData(Lcom/android/internal/widget/IRemoteViewsFactory;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Z)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "callback"    # Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;
    .param p4, "useAsyncLoader"    # Z

    .line 834
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViewsAdapter;->mDataReady:Z

    .line 835
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;

    .line 836
    iput-object p2, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    .line 838
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_f5

    .line 842
    const-string/jumbo v1, "remoteAdapterAppWidgetId"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViewsAdapter;->mAppWidgetId:I

    .line 843
    new-instance v1, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;-><init>(Landroid/widget/RemoteViewsAdapter;Landroid/widget/RemoteViewsAdapter-IA;)V

    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    .line 844
    const-string/jumbo v1, "remoteAdapterOnLightBackground"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/RemoteViewsAdapter;->mOnLightBackground:Z

    .line 847
    const-string/jumbo v0, "remoteAdapterAppWidgetId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 848
    const-string/jumbo v0, "remoteAdapterOnLightBackground"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 851
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RemoteViewsCache-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    .line 852
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 853
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mMainHandler:Landroid/os/Handler;

    .line 854
    new-instance v0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 855
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v1, p0, v3}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;-><init>(Landroid/os/Looper;Landroid/widget/RemoteViewsAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceHandler:Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;

    .line 856
    if-eqz p4, :cond_68

    new-instance v2, Landroid/widget/RemoteViewsAdapter$HandlerThreadExecutor;

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-direct {v2, v0}, Landroid/widget/RemoteViewsAdapter$HandlerThreadExecutor;-><init>(Landroid/os/HandlerThread;)V

    :cond_68
    iput-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mAsyncViewLoadExecutor:Ljava/util/concurrent/Executor;

    .line 857
    iput-object p3, p0, Landroid/widget/RemoteViewsAdapter;->mCallback:Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    .line 859
    sget-object v0, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_8b

    .line 860
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RemoteViewsAdapter-cachePruner"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalThread:Landroid/os/HandlerThread;

    .line 861
    sget-object v0, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 862
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalQueue:Landroid/os/Handler;

    .line 865
    :cond_8b
    new-instance v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    iget v2, p0, Landroid/widget/RemoteViewsAdapter;->mAppWidgetId:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;-><init>(Landroid/content/Intent$FilterComparison;I)V

    .line 868
    .local v0, "key":Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;
    sget-object v1, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    monitor-enter v1

    .line 869
    :try_start_9c
    sget-object v2, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    .line 870
    .local v2, "cache":Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 871
    .local v3, "config":Landroid/content/res/Configuration;
    if-eqz v2, :cond_e0

    invoke-static {v2}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-$$Nest$fgetmConfiguration(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/content/res/Configuration;

    move-result-object v4

    .line 872
    invoke-virtual {v4, v3}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    const v5, -0x3fffee00

    and-int/2addr v4, v5

    if-eqz v4, :cond_bd

    goto :goto_e0

    .line 875
    :cond_bd
    sget-object v4, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    iput-object v4, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    .line 876
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-static {v4}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-$$Nest$fgetmMetaData(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v4

    monitor-enter v4
    :try_end_ce
    .catchall {:try_start_9c .. :try_end_ce} :catchall_f2

    .line 877
    :try_start_ce
    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-static {v5}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-$$Nest$fgetmMetaData(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v5

    iget v5, v5, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    if-lez v5, :cond_db

    .line 880
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/RemoteViewsAdapter;->mDataReady:Z

    .line 882
    :cond_db
    monitor-exit v4

    goto :goto_e9

    :catchall_dd
    move-exception v5

    monitor-exit v4
    :try_end_df
    .catchall {:try_start_ce .. :try_end_df} :catchall_dd

    .end local v0    # "key":Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;
    .end local p0    # "this":Landroid/widget/RemoteViewsAdapter;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "intent":Landroid/content/Intent;
    .end local p3    # "callback":Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;
    .end local p4    # "useAsyncLoader":Z
    :try_start_df
    throw v5

    .line 873
    .restart local v0    # "key":Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;
    .restart local p0    # "this":Landroid/widget/RemoteViewsAdapter;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "intent":Landroid/content/Intent;
    .restart local p3    # "callback":Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;
    .restart local p4    # "useAsyncLoader":Z
    :cond_e0
    :goto_e0
    new-instance v4, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    const/16 v5, 0x28

    invoke-direct {v4, v5, v3}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;-><init>(ILandroid/content/res/Configuration;)V

    iput-object v4, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    .line 884
    :goto_e9
    iget-boolean v4, p0, Landroid/widget/RemoteViewsAdapter;->mDataReady:Z

    if-nez v4, :cond_f0

    .line 885
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->requestBindService()V

    .line 887
    .end local v2    # "cache":Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    .end local v3    # "config":Landroid/content/res/Configuration;
    :cond_f0
    monitor-exit v1

    .line 888
    return-void

    .line 887
    :catchall_f2
    move-exception v2

    monitor-exit v1
    :try_end_f4
    .catchall {:try_start_df .. :try_end_f4} :catchall_f2

    throw v2

    .line 839
    .end local v0    # "key":Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;
    :cond_f5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null Intent must be specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getVisibleWindow(I)[I
    .registers 7
    .param p1, "count"    # I

    .line 1177
    iget v0, p0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowLowerBound:I

    .line 1178
    .local v0, "lower":I
    iget v1, p0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowUpperBound:I

    .line 1180
    .local v1, "upper":I
    if-nez v0, :cond_8

    if-eqz v1, :cond_41

    :cond_8
    if-ltz v0, :cond_41

    if-gez v1, :cond_d

    goto :goto_41

    .line 1185
    :cond_d
    if-gt v0, v1, :cond_20

    .line 1186
    add-int/lit8 v2, v1, 0x1

    sub-int/2addr v2, v0

    new-array v2, v2, [I

    .line 1187
    .local v2, "window":[I
    move v3, v0

    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_16
    if-gt v3, v1, :cond_1f

    .line 1188
    aput v3, v2, v4

    .line 1187
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .end local v3    # "i":I
    .end local v4    # "j":I
    :cond_1f
    goto :goto_40

    .line 1193
    .end local v2    # "window":[I
    :cond_20
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1194
    sub-int v2, p1, v0

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    .line 1195
    .restart local v2    # "window":[I
    const/4 v3, 0x0

    .line 1197
    .local v3, "j":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2d
    if-gt v4, v1, :cond_36

    .line 1198
    aput v4, v2, v3

    .line 1197
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 1200
    .end local v4    # "i":I
    :cond_36
    move v4, v0

    .restart local v4    # "i":I
    :goto_37
    if-ge v4, p1, :cond_40

    .line 1201
    aput v4, v2, v3

    .line 1200
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 1204
    .end local v3    # "j":I
    .end local v4    # "i":I
    :cond_40
    :goto_40
    return-object v2

    .line 1181
    .end local v2    # "window":[I
    :cond_41
    :goto_41
    const/4 v2, 0x0

    new-array v2, v2, [I

    return-object v2
.end method

.method static synthetic blacklist lambda$saveRemoteViewsCache$0(Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;)V
    .registers 3
    .param p0, "key"    # Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    .line 935
    sget-object v0, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    monitor-enter v0

    .line 936
    :try_start_3
    sget-object v1, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    sget-object v1, Landroid/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    monitor-exit v0

    .line 939
    return-void

    .line 938
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private greylist-max-o requestBindService()V
    .registers 6

    .line 1248
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceHandler:Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->removeMessages(I)V

    .line 1249
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceHandler:Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;

    iget v1, p0, Landroid/widget/RemoteViewsAdapter;->mAppWidgetId:I

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    const/4 v4, 0x1

    invoke-static {v0, v4, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1250
    return-void
.end method

.method private greylist-max-o updateRemoteViews(Lcom/android/internal/widget/IRemoteViewsFactory;IZ)V
    .registers 16
    .param p1, "factory"    # Lcom/android/internal/widget/IRemoteViewsFactory;
    .param p2, "position"    # I
    .param p3, "notifyWhenLoaded"    # Z

    .line 992
    :try_start_0
    invoke-interface {p1, p2}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v0

    move-object v3, v0

    .line 993
    .local v3, "remoteViews":Landroid/widget/RemoteViews;
    invoke-interface {p1, p2}, Lcom/android/internal/widget/IRemoteViewsFactory;->getItemId(I)J

    move-result-wide v4
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_82
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_82

    .line 995
    .local v4, "itemId":J
    if-eqz v3, :cond_76

    .line 1004
    nop

    .line 1006
    iget-object v0, v3, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_25

    .line 1010
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mLastRemoteViewAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mLastRemoteViewAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 1011
    invoke-virtual {v3, v0}, Landroid/widget/RemoteViews;->hasSameAppInfo(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1014
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mLastRemoteViewAppInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, v3, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    goto :goto_25

    .line 1016
    :cond_21
    iget-object v0, v3, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mLastRemoteViewAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 1020
    :cond_25
    :goto_25
    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v7

    .line 1021
    .local v7, "layoutId":I
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v8

    .line 1024
    .local v8, "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v8

    .line 1025
    :try_start_30
    invoke-virtual {v8, v7}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->isViewTypeInRange(I)Z

    move-result v0

    move v9, v0

    .line 1026
    .local v9, "viewTypeInRange":Z
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-$$Nest$fgetmMetaData(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    iget v0, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    move v10, v0

    .line 1027
    .local v10, "cacheCount":I
    monitor-exit v8
    :try_end_3f
    .catchall {:try_start_30 .. :try_end_3f} :catchall_6e

    .line 1028
    iget-object v11, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v11

    .line 1029
    if-eqz v9, :cond_60

    .line 1030
    :try_start_44
    invoke-direct {p0, v10}, Landroid/widget/RemoteViewsAdapter;->getVisibleWindow(I)[I

    move-result-object v6

    .line 1032
    .local v6, "visibleWindow":[I
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_5c

    move v2, p2

    .end local p2    # "position":I
    .local v2, "position":I
    :try_start_4b
    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->insert(ILandroid/widget/RemoteViews;J[I)V

    .line 1034
    if-eqz p3, :cond_5b

    .line 1037
    iget-object p2, p0, Landroid/widget/RemoteViewsAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {p2, v0, v2, v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 1038
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1040
    .end local v6    # "visibleWindow":[I
    :cond_5b
    goto :goto_68

    .line 1048
    .end local v2    # "position":I
    .restart local p2    # "position":I
    :catchall_5c
    move-exception v0

    move v2, p2

    move-object p2, v0

    .end local p2    # "position":I
    .restart local v2    # "position":I
    goto :goto_6c

    .line 1045
    .end local v2    # "position":I
    .restart local p2    # "position":I
    :cond_60
    move v2, p2

    .end local p2    # "position":I
    .restart local v2    # "position":I
    const-string p2, "RemoteViewsAdapter"

    const-string v0, "Error: widget\'s RemoteViewsFactory returns more view types than  indicated by getViewTypeCount() "

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :goto_68
    monitor-exit v11

    .line 1049
    return-void

    .line 1048
    :catchall_6a
    move-exception v0

    move-object p2, v0

    :goto_6c
    monitor-exit v11
    :try_end_6d
    .catchall {:try_start_4b .. :try_end_6d} :catchall_6a

    throw p2

    .line 1027
    .end local v2    # "position":I
    .end local v9    # "viewTypeInRange":Z
    .end local v10    # "cacheCount":I
    .restart local p2    # "position":I
    :catchall_6e
    move-exception v0

    move v2, p2

    move-object p2, v0

    .end local p2    # "position":I
    .restart local v2    # "position":I
    :goto_71
    :try_start_71
    monitor-exit v8
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_73

    throw p2

    :catchall_73
    move-exception v0

    move-object p2, v0

    goto :goto_71

    .line 996
    .end local v2    # "position":I
    .end local v7    # "layoutId":I
    .end local v8    # "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .restart local p2    # "position":I
    :cond_76
    move v2, p2

    .end local p2    # "position":I
    .restart local v2    # "position":I
    :try_start_77
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Null remoteViews"

    invoke-direct {p2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v2    # "position":I
    .end local p0    # "this":Landroid/widget/RemoteViewsAdapter;
    .end local p1    # "factory":Lcom/android/internal/widget/IRemoteViewsFactory;
    .end local p3    # "notifyWhenLoaded":Z
    throw p2
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_7f} :catch_7f
    .catch Ljava/lang/RuntimeException; {:try_start_77 .. :try_end_7f} :catch_7f

    .line 998
    .end local v3    # "remoteViews":Landroid/widget/RemoteViews;
    .end local v4    # "itemId":J
    .restart local v2    # "position":I
    .restart local p0    # "this":Landroid/widget/RemoteViewsAdapter;
    .restart local p1    # "factory":Lcom/android/internal/widget/IRemoteViewsFactory;
    .restart local p3    # "notifyWhenLoaded":Z
    :catch_7f
    move-exception v0

    move-object p2, v0

    goto :goto_85

    .end local v2    # "position":I
    .restart local p2    # "position":I
    :catch_82
    move-exception v0

    move v2, p2

    move-object p2, v0

    .line 999
    .restart local v2    # "position":I
    .local p2, "e":Ljava/lang/Exception;
    :goto_85
    const-string v0, "RemoteViewsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in updateRemoteViews("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    return-void
.end method

.method private greylist-max-o updateTemporaryMetaData(Lcom/android/internal/widget/IRemoteViewsFactory;)V
    .registers 10
    .param p1, "factory"    # Lcom/android/internal/widget/IRemoteViewsFactory;

    .line 950
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/widget/IRemoteViewsFactory;->hasStableIds()Z

    move-result v0

    .line 951
    .local v0, "hasStableIds":Z
    invoke-interface {p1}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewTypeCount()I

    move-result v1

    .line 952
    .local v1, "viewTypeCount":I
    invoke-interface {p1}, Lcom/android/internal/widget/IRemoteViewsFactory;->getCount()I

    move-result v2

    .line 953
    .local v2, "count":I
    new-instance v3, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;

    .line 954
    invoke-interface {p1}, Lcom/android/internal/widget/IRemoteViewsFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;-><init>(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 955
    .local v3, "loadingTemplate":Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;
    if-lez v2, :cond_30

    iget-object v4, v3, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;->remoteViews:Landroid/widget/RemoteViews;

    if-nez v4, :cond_30

    .line 956
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 957
    .local v4, "firstView":Landroid/widget/RemoteViews;
    if-eqz v4, :cond_30

    .line 958
    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/widget/RemoteViewsAdapter$HandlerThreadExecutor;

    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-direct {v6, v7}, Landroid/widget/RemoteViewsAdapter$HandlerThreadExecutor;-><init>(Landroid/os/HandlerThread;)V

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;->loadFirstViewHeight(Landroid/widget/RemoteViews;Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    .line 962
    .end local v4    # "firstView":Landroid/widget/RemoteViews;
    :cond_30
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v4}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getTemporaryMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v4

    .line 963
    .local v4, "tmpMetaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v4
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_37} :catch_46
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_37} :catch_46

    .line 964
    :try_start_37
    iput-boolean v0, v4, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    .line 966
    add-int/lit8 v5, v1, 0x1

    iput v5, v4, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    .line 967
    iput v2, v4, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    .line 968
    iput-object v3, v4, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->loadingTemplate:Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;

    .line 969
    monitor-exit v4

    .line 982
    .end local v0    # "hasStableIds":Z
    .end local v1    # "viewTypeCount":I
    .end local v2    # "count":I
    .end local v3    # "loadingTemplate":Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;
    .end local v4    # "tmpMetaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    goto :goto_83

    .line 969
    .restart local v0    # "hasStableIds":Z
    .restart local v1    # "viewTypeCount":I
    .restart local v2    # "count":I
    .restart local v3    # "loadingTemplate":Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;
    .restart local v4    # "tmpMetaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    :catchall_43
    move-exception v5

    monitor-exit v4
    :try_end_45
    .catchall {:try_start_37 .. :try_end_45} :catchall_43

    .end local p0    # "this":Landroid/widget/RemoteViewsAdapter;
    .end local p1    # "factory":Lcom/android/internal/widget/IRemoteViewsFactory;
    :try_start_45
    throw v5
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_46} :catch_46
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_46} :catch_46

    .line 970
    .end local v0    # "hasStableIds":Z
    .end local v1    # "viewTypeCount":I
    .end local v2    # "count":I
    .end local v3    # "loadingTemplate":Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;
    .end local v4    # "tmpMetaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .restart local p0    # "this":Landroid/widget/RemoteViewsAdapter;
    .restart local p1    # "factory":Lcom/android/internal/widget/IRemoteViewsFactory;
    :catch_46
    move-exception v0

    .line 971
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RemoteViewsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in updateMetaData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v1

    monitor-enter v1

    .line 976
    :try_start_6a
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->reset()V

    .line 977
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_6a .. :try_end_74} :catchall_87

    .line 978
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v2

    .line 979
    :try_start_77
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->reset()V

    .line 980
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_77 .. :try_end_7d} :catchall_84

    .line 981
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 983
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_83
    return-void

    .line 980
    .restart local v0    # "e":Ljava/lang/Exception;
    :catchall_84
    move-exception v1

    :try_start_85
    monitor-exit v2
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw v1

    .line 977
    :catchall_87
    move-exception v2

    :try_start_88
    monitor-exit v1
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw v2
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 893
    :try_start_0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceHandler:Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->unbindNow()V

    .line 894
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_f

    .line 896
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 897
    nop

    .line 898
    return-void

    .line 896
    :catchall_f
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 897
    throw v0
.end method

.method public whitelist getCount()I
    .registers 3

    .line 1057
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    .line 1058
    .local v0, "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    .line 1059
    :try_start_7
    iget v1, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    monitor-exit v0

    return v1

    .line 1060
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .line 1065
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getItemId(I)J
    .registers 5
    .param p1, "position"    # I

    .line 1069
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v0

    .line 1070
    :try_start_3
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->containsMetaDataAt(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1071
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaDataAt(I)Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    move-result-object v1

    iget-wide v1, v1, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->itemId:J

    monitor-exit v0

    return-wide v1

    .line 1073
    :cond_15
    monitor-exit v0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1074
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public whitelist getItemViewType(I)I
    .registers 5
    .param p1, "position"    # I

    .line 1079
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v0

    .line 1080
    :try_start_3
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->containsMetaDataAt(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1081
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaDataAt(I)Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    move-result-object v1

    iget v1, v1, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I

    .line 1085
    .local v1, "typeId":I
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_27

    .line 1087
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v2

    .line 1088
    .local v2, "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v2

    .line 1089
    :try_start_1b
    invoke-virtual {v2, v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->getMappedViewType(I)I

    move-result v0

    monitor-exit v2

    return v0

    .line 1090
    :catchall_21
    move-exception v0

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_21

    throw v0

    .line 1083
    .end local v1    # "typeId":I
    .end local v2    # "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    :cond_24
    :try_start_24
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 1085
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public greylist-max-r getRemoteViewsServiceIntent()Landroid/content/Intent;
    .registers 2

    .line 1053
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 1107
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v0

    .line 1108
    :try_start_3
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getRemoteViewsAt(I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 1109
    .local v1, "rv":Landroid/widget/RemoteViews;
    const/4 v2, 0x0

    if-eqz v1, :cond_e

    const/4 v3, 0x1

    goto :goto_f

    :cond_e
    move v3, v2

    .line 1110
    .local v3, "isInCache":Z
    :goto_f
    const/4 v4, 0x0

    .line 1112
    .local v4, "hasNewItems":Z
    if-eqz p2, :cond_1e

    instance-of v5, p2, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    if-eqz v5, :cond_1e

    .line 1113
    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter;->mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    move-object v6, p2

    check-cast v6, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    invoke-virtual {v5, v6}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->removeView(Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;)V

    .line 1116
    :cond_1e
    if-nez v3, :cond_24

    .line 1119
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->requestBindService()V

    goto :goto_2b

    .line 1122
    :cond_24
    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v5, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->queuePositionsToBePreloadedFromRequestedPosition(I)Z

    move-result v5

    move v4, v5

    .line 1126
    :goto_2b
    instance-of v5, p2, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    if-eqz v5, :cond_33

    .line 1127
    move-object v5, p2

    check-cast v5, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    .local v5, "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    goto :goto_48

    .line 1129
    .end local v5    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :cond_33
    new-instance v5, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;-><init>(Landroid/content/Context;Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)V

    .line 1130
    .restart local v5    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mAsyncViewLoadExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v5, v6}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 1131
    iget-boolean v6, p0, Landroid/widget/RemoteViewsAdapter;->mOnLightBackground:Z

    invoke-virtual {v5, v6}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->setOnLightBackground(Z)V

    .line 1134
    :goto_48
    const/4 v6, 0x3

    if-eqz v3, :cond_58

    .line 1136
    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter;->mRemoteViewsInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-virtual {v5, v1, v7, v2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->onRemoteViewsLoaded(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$InteractionHandler;Z)V

    .line 1137
    if-eqz v4, :cond_7a

    .line 1138
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mServiceHandler:Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;

    invoke-virtual {v2, v6}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->sendEmptyMessage(I)Z

    goto :goto_7a

    .line 1143
    :cond_58
    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    .line 1144
    invoke-virtual {v7}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->getLoadingTemplate(Landroid/content/Context;)Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;

    move-result-object v7

    iget-object v7, v7, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;->remoteViews:Landroid/widget/RemoteViews;

    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter;->mRemoteViewsInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    .line 1143
    invoke-virtual {v5, v7, v8, v2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->onRemoteViewsLoaded(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$InteractionHandler;Z)V

    .line 1147
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    invoke-virtual {v2, p1, v5}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->add(ILandroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;)V

    .line 1148
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v2, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->queueRequestedPositionToLoad(I)V

    .line 1149
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mServiceHandler:Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;

    invoke-virtual {v2, v6}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->sendEmptyMessage(I)Z

    .line 1151
    :cond_7a
    :goto_7a
    monitor-exit v0

    return-object v5

    .line 1152
    .end local v1    # "rv":Landroid/widget/RemoteViews;
    .end local v3    # "isInCache":Z
    .end local v4    # "hasNewItems":Z
    .end local v5    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :catchall_7c
    move-exception v1

    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_3 .. :try_end_7e} :catchall_7c

    throw v1
.end method

.method public whitelist getViewTypeCount()I
    .registers 3

    .line 1156
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    .line 1157
    .local v0, "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    .line 1158
    :try_start_7
    iget v1, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    monitor-exit v0

    return v1

    .line 1159
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist handleMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1218
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_32

    .line 1244
    const/4 v0, 0x0

    return v0

    .line 1240
    :pswitch_8
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->notifyOnRemoteViewsLoaded(ILandroid/widget/RemoteViews;)V

    .line 1241
    return v1

    .line 1234
    :pswitch_14
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCallback:Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    if-eqz v0, :cond_1d

    .line 1235
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCallback:Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    invoke-interface {v0}, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;->onRemoteAdapterDisconnected()V

    .line 1237
    :cond_1d
    return v1

    .line 1228
    :pswitch_1e
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCallback:Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    if-eqz v0, :cond_27

    .line 1229
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCallback:Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    invoke-interface {v0}, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;->onRemoteAdapterConnected()Z

    .line 1231
    :cond_27
    return v1

    .line 1224
    :pswitch_28
    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 1225
    return v1

    .line 1220
    :pswitch_2c
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->commitTemporaryMetaData()V

    .line 1221
    return v1

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_28
        :pswitch_1e
        :pswitch_14
        :pswitch_8
    .end packed-switch
.end method

.method public whitelist hasStableIds()Z
    .registers 3

    .line 1163
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    .line 1164
    .local v0, "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    .line 1165
    :try_start_7
    iget-boolean v1, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    monitor-exit v0

    return v1

    .line 1166
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public greylist-max-r isDataReady()Z
    .registers 2

    .line 902
    iget-boolean v0, p0, Landroid/widget/RemoteViewsAdapter;->mDataReady:Z

    return v0
.end method

.method public whitelist isEmpty()Z
    .registers 2

    .line 1170
    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist notifyDataSetChanged()V
    .registers 3

    .line 1208
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceHandler:Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->removeMessages(I)V

    .line 1209
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceHandler:Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->sendEmptyMessage(I)Z

    .line 1210
    return-void
.end method

.method public greylist-max-r saveRemoteViewsCache()V
    .registers 9

    .line 912
    new-instance v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    iget v2, p0, Landroid/widget/RemoteViewsAdapter;->mAppWidgetId:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;-><init>(Landroid/content/Intent$FilterComparison;I)V

    .line 915
    .local v0, "key":Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;
    sget-object v1, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    monitor-enter v1

    .line 917
    :try_start_11
    sget-object v2, Landroid/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 918
    sget-object v2, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalQueue:Landroid/os/Handler;

    sget-object v3, Landroid/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 919
    sget-object v2, Landroid/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    :cond_2b
    const/4 v2, 0x0

    .line 923
    .local v2, "metaDataCount":I
    const/4 v3, 0x0

    .line 924
    .local v3, "numRemoteViewsCached":I
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-static {v4}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-$$Nest$fgetmMetaData(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v4

    monitor-enter v4
    :try_end_34
    .catchall {:try_start_11 .. :try_end_34} :catchall_72

    .line 925
    :try_start_34
    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-static {v5}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-$$Nest$fgetmMetaData(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v5

    iget v5, v5, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    move v2, v5

    .line 926
    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_6f

    .line 927
    :try_start_3e
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v4
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_72

    .line 928
    :try_start_41
    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-static {v5}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-$$Nest$fgetmIndexRemoteViews(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v3, v5

    .line 929
    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_41 .. :try_end_4d} :catchall_6c

    .line 930
    if-lez v2, :cond_58

    if-lez v3, :cond_58

    .line 931
    :try_start_51
    sget-object v4, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    :cond_58
    new-instance v4, Landroid/widget/RemoteViewsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Landroid/widget/RemoteViewsAdapter$$ExternalSyntheticLambda0;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;)V

    .line 940
    .local v4, "r":Ljava/lang/Runnable;
    sget-object v5, Landroid/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    sget-object v5, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalQueue:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 942
    nop

    .end local v2    # "metaDataCount":I
    .end local v3    # "numRemoteViewsCached":I
    .end local v4    # "r":Ljava/lang/Runnable;
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_51 .. :try_end_6b} :catchall_72

    .line 943
    return-void

    .line 929
    .restart local v2    # "metaDataCount":I
    .restart local v3    # "numRemoteViewsCached":I
    :catchall_6c
    move-exception v5

    :try_start_6d
    monitor-exit v4
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    .end local v0    # "key":Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;
    .end local p0    # "this":Landroid/widget/RemoteViewsAdapter;
    :try_start_6e
    throw v5
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_72

    .line 926
    .restart local v0    # "key":Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;
    .restart local p0    # "this":Landroid/widget/RemoteViewsAdapter;
    :catchall_6f
    move-exception v5

    :try_start_70
    monitor-exit v4
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    .end local v0    # "key":Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;
    .end local p0    # "this":Landroid/widget/RemoteViewsAdapter;
    :try_start_71
    throw v5

    .line 942
    .end local v2    # "metaDataCount":I
    .end local v3    # "numRemoteViewsCached":I
    .restart local v0    # "key":Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;
    .restart local p0    # "this":Landroid/widget/RemoteViewsAdapter;
    :catchall_72
    move-exception v2

    monitor-exit v1
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_72

    throw v2
.end method

.method public blacklist setRemoteViewsInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V
    .registers 2
    .param p1, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;

    .line 907
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter;->mRemoteViewsInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    .line 908
    return-void
.end method

.method public greylist-max-r setVisibleRangeHint(II)V
    .registers 3
    .param p1, "lowerBound"    # I
    .param p2, "upperBound"    # I

    .line 1100
    iput p1, p0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowLowerBound:I

    .line 1101
    iput p2, p0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowUpperBound:I

    .line 1102
    return-void
.end method

.method greylist-max-o superNotifyDataSetChanged()V
    .registers 1

    .line 1213
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1214
    return-void
.end method
