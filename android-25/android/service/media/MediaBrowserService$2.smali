.class Landroid/service/media/MediaBrowserService$2;
.super Ljava/lang/Object;
.source "MediaBrowserService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/media/MediaBrowserService;->notifyChildrenChangedInternal(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/media/MediaBrowserService;

.field final synthetic val$options:Landroid/os/Bundle;

.field final synthetic val$parentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/service/media/MediaBrowserService;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/media/MediaBrowserService;
    .param p2, "val$parentId"    # Ljava/lang/String;
    .param p3, "val$options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 544
    iput-object p1, p0, Landroid/service/media/MediaBrowserService$2;->this$0:Landroid/service/media/MediaBrowserService;

    #@2
    iput-object p2, p0, Landroid/service/media/MediaBrowserService$2;->val$parentId:Ljava/lang/String;

    #@4
    iput-object p3, p0, Landroid/service/media/MediaBrowserService$2;->val$options:Landroid/os/Bundle;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    #@0
    .prologue
    .line 547
    iget-object v6, p0, Landroid/service/media/MediaBrowserService$2;->this$0:Landroid/service/media/MediaBrowserService;

    #@2
    invoke-static {v6}, Landroid/service/media/MediaBrowserService;->-get0(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    #@5
    move-result-object v6

    #@6
    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    #@9
    move-result-object v6

    #@a
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "binder$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v6

    #@12
    if-eqz v6, :cond_2

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/os/IBinder;

    #@1a
    .line 548
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v6, p0, Landroid/service/media/MediaBrowserService$2;->this$0:Landroid/service/media/MediaBrowserService;

    #@1c
    invoke-static {v6}, Landroid/service/media/MediaBrowserService;->-get0(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    #@1f
    move-result-object v6

    #@20
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v5

    #@24
    check-cast v5, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    #@26
    .line 550
    .local v5, "connection":Landroid/service/media/MediaBrowserService$ConnectionRecord;
    iget-object v6, v5, Landroid/service/media/MediaBrowserService$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    #@28
    iget-object v7, p0, Landroid/service/media/MediaBrowserService$2;->val$parentId:Ljava/lang/String;

    #@2a
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v4

    #@2e
    check-cast v4, Ljava/util/List;

    #@30
    .line 551
    .local v4, "callbackList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    if-eqz v4, :cond_0

    #@32
    .line 552
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@35
    move-result-object v3

    #@36
    .local v3, "callback$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@39
    move-result v6

    #@3a
    if-eqz v6, :cond_0

    #@3c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3f
    move-result-object v2

    #@40
    check-cast v2, Landroid/util/Pair;

    #@42
    .line 553
    .local v2, "callback":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;"
    iget-object v7, p0, Landroid/service/media/MediaBrowserService$2;->val$options:Landroid/os/Bundle;

    #@44
    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@46
    check-cast v6, Landroid/os/Bundle;

    #@48
    invoke-static {v7, v6}, Landroid/media/browse/MediaBrowserUtils;->hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    #@4b
    move-result v6

    #@4c
    if-eqz v6, :cond_1

    #@4e
    .line 554
    iget-object v7, p0, Landroid/service/media/MediaBrowserService$2;->this$0:Landroid/service/media/MediaBrowserService;

    #@50
    iget-object v8, p0, Landroid/service/media/MediaBrowserService$2;->val$parentId:Ljava/lang/String;

    #@52
    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@54
    check-cast v6, Landroid/os/Bundle;

    #@56
    invoke-static {v7, v8, v5, v6}, Landroid/service/media/MediaBrowserService;->-wrap4(Landroid/service/media/MediaBrowserService;Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;Landroid/os/Bundle;)V

    #@59
    goto :goto_0

    #@5a
    .line 546
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "callback":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;"
    .end local v3    # "callback$iterator":Ljava/util/Iterator;
    .end local v4    # "callbackList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    .end local v5    # "connection":Landroid/service/media/MediaBrowserService$ConnectionRecord;
    :cond_2
    return-void
.end method
