.class Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;

.field final synthetic val$adapter:Landroid/widget/RemoteViewsAdapter;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;Landroid/widget/RemoteViewsAdapter;)V
    .locals 0
    .param p1, "this$2"    # Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;
    .param p2, "val$adapter"    # Landroid/widget/RemoteViewsAdapter;

    #@0
    .prologue
    .line 229
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;->this$2:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;

    #@2
    iput-object p2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 232
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    #@2
    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter;->-get0(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 233
    :try_start_0
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    #@9
    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter;->-get0(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->commitTemporaryMetaData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v2

    #@11
    .line 237
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    #@13
    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter;->-get1(Landroid/widget/RemoteViewsAdapter;)Ljava/lang/ref/WeakReference;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    #@1d
    .line 238
    .local v0, "callback":Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;
    if-eqz v0, :cond_0

    #@1f
    .line 239
    invoke-interface {v0}, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;->onRemoteAdapterConnected()Z

    #@22
    .line 231
    :cond_0
    return-void

    #@23
    .line 232
    .end local v0    # "callback":Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1
.end method
