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
    .line 938
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 941
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    #@2
    invoke-static {v2}, Landroid/widget/RemoteViewsAdapter;->-get6(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 943
    const/4 v0, -0x1

    #@d
    .line 944
    .local v0, "position":I
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    #@f
    invoke-static {v2}, Landroid/widget/RemoteViewsAdapter;->-get0(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@12
    move-result-object v3

    #@13
    monitor-enter v3

    #@14
    .line 945
    :try_start_0
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    #@16
    invoke-static {v2}, Landroid/widget/RemoteViewsAdapter;->-get0(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getNextIndexToLoad()[I

    #@1d
    move-result-object v1

    #@1e
    .line 946
    .local v1, "res":[I
    const/4 v2, 0x0

    #@1f
    aget v0, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit v3

    #@22
    .line 948
    const/4 v2, -0x1

    #@23
    if-le v0, v2, :cond_1

    #@25
    .line 950
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    #@27
    const/4 v3, 0x1

    #@28
    invoke-static {v2, v0, v3}, Landroid/widget/RemoteViewsAdapter;->-wrap3(Landroid/widget/RemoteViewsAdapter;IZ)V

    #@2b
    .line 953
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    #@2d
    invoke-static {v2}, Landroid/widget/RemoteViewsAdapter;->-wrap1(Landroid/widget/RemoteViewsAdapter;)V

    #@30
    .line 940
    .end local v0    # "position":I
    .end local v1    # "res":[I
    :cond_0
    :goto_0
    return-void

    #@31
    .line 944
    .restart local v0    # "position":I
    :catchall_0
    move-exception v2

    #@32
    monitor-exit v3

    #@33
    throw v2

    #@34
    .line 956
    .restart local v1    # "res":[I
    :cond_1
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    #@36
    invoke-static {v2}, Landroid/widget/RemoteViewsAdapter;->-wrap0(Landroid/widget/RemoteViewsAdapter;)V

    #@39
    goto :goto_0
.end method
