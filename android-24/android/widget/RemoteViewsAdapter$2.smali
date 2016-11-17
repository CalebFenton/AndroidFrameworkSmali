.class Landroid/widget/RemoteViewsAdapter$2;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/RemoteViewsAdapter;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViewsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/RemoteViewsAdapter;

    #@0
    .prologue
    .line 893
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 896
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    #@2
    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter;->-get6(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 898
    const/4 v0, -0x1

    #@d
    .line 899
    .local v0, "position":I
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    #@f
    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter;->-get0(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@12
    move-result-object v2

    #@13
    monitor-enter v2

    #@14
    .line 900
    :try_start_0
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    #@16
    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter;->-get0(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getNextIndexToLoad()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result v0

    #@1e
    monitor-exit v2

    #@1f
    .line 902
    const/4 v1, -0x1

    #@20
    if-le v0, v1, :cond_1

    #@22
    .line 904
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    #@24
    const/4 v2, 0x1

    #@25
    invoke-static {v1, v0, v2}, Landroid/widget/RemoteViewsAdapter;->-wrap3(Landroid/widget/RemoteViewsAdapter;IZ)V

    #@28
    .line 907
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    #@2a
    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter;->-wrap1(Landroid/widget/RemoteViewsAdapter;)V

    #@2d
    .line 895
    .end local v0    # "position":I
    :cond_0
    :goto_0
    return-void

    #@2e
    .line 899
    .restart local v0    # "position":I
    :catchall_0
    move-exception v1

    #@2f
    monitor-exit v2

    #@30
    throw v1

    #@31
    .line 910
    :cond_1
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    #@33
    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter;->-wrap0(Landroid/widget/RemoteViewsAdapter;)V

    #@36
    goto :goto_0
.end method
