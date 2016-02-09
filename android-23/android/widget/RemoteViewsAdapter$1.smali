.class Landroid/widget/RemoteViewsAdapter$1;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/RemoteViewsAdapter;

.field final synthetic val$key:Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViewsAdapter;Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/RemoteViewsAdapter;
    .param p2, "val$key"    # Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    #@0
    .prologue
    .line 919
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$1;->this$0:Landroid/widget/RemoteViewsAdapter;

    #@2
    iput-object p2, p0, Landroid/widget/RemoteViewsAdapter$1;->val$key:Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

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
    .line 922
    invoke-static {}, Landroid/widget/RemoteViewsAdapter;->-get8()Ljava/util/HashMap;

    #@3
    move-result-object v1

    #@4
    monitor-enter v1

    #@5
    .line 923
    :try_start_0
    invoke-static {}, Landroid/widget/RemoteViewsAdapter;->-get8()Ljava/util/HashMap;

    #@8
    move-result-object v0

    #@9
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$1;->val$key:Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    #@b
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 924
    invoke-static {}, Landroid/widget/RemoteViewsAdapter;->-get8()Ljava/util/HashMap;

    #@14
    move-result-object v0

    #@15
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$1;->val$key:Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    #@17
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 926
    :cond_0
    invoke-static {}, Landroid/widget/RemoteViewsAdapter;->-get9()Ljava/util/HashMap;

    #@1d
    move-result-object v0

    #@1e
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$1;->val$key:Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    #@20
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_1

    #@26
    .line 927
    invoke-static {}, Landroid/widget/RemoteViewsAdapter;->-get9()Ljava/util/HashMap;

    #@29
    move-result-object v0

    #@2a
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$1;->val$key:Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    #@2c
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    :cond_1
    monitor-exit v1

    #@30
    .line 921
    return-void

    #@31
    .line 922
    :catchall_0
    move-exception v0

    #@32
    monitor-exit v1

    #@33
    throw v0
.end method
