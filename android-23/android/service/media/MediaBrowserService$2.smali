.class Landroid/service/media/MediaBrowserService$2;
.super Ljava/lang/Object;
.source "MediaBrowserService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/media/MediaBrowserService;->notifyChildrenChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/media/MediaBrowserService;

.field final synthetic val$parentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/service/media/MediaBrowserService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/media/MediaBrowserService;
    .param p2, "val$parentId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 420
    iput-object p1, p0, Landroid/service/media/MediaBrowserService$2;->this$0:Landroid/service/media/MediaBrowserService;

    #@2
    iput-object p2, p0, Landroid/service/media/MediaBrowserService$2;->val$parentId:Ljava/lang/String;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    .line 423
    iget-object v3, p0, Landroid/service/media/MediaBrowserService$2;->this$0:Landroid/service/media/MediaBrowserService;

    #@2
    invoke-static {v3}, Landroid/service/media/MediaBrowserService;->-get0(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    #@9
    move-result-object v3

    #@a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "binder$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_1

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/os/IBinder;

    #@1a
    .line 424
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Landroid/service/media/MediaBrowserService$2;->this$0:Landroid/service/media/MediaBrowserService;

    #@1c
    invoke-static {v3}, Landroid/service/media/MediaBrowserService;->-get0(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    #@26
    .line 425
    .local v2, "connection":Landroid/service/media/MediaBrowserService$ConnectionRecord;
    iget-object v3, v2, Landroid/service/media/MediaBrowserService$ConnectionRecord;->subscriptions:Ljava/util/HashSet;

    #@28
    iget-object v4, p0, Landroid/service/media/MediaBrowserService$2;->val$parentId:Ljava/lang/String;

    #@2a
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_0

    #@30
    .line 426
    iget-object v3, p0, Landroid/service/media/MediaBrowserService$2;->this$0:Landroid/service/media/MediaBrowserService;

    #@32
    iget-object v4, p0, Landroid/service/media/MediaBrowserService$2;->val$parentId:Ljava/lang/String;

    #@34
    invoke-static {v3, v4, v2}, Landroid/service/media/MediaBrowserService;->-wrap2(Landroid/service/media/MediaBrowserService;Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    #@37
    goto :goto_0

    #@38
    .line 422
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "connection":Landroid/service/media/MediaBrowserService$ConnectionRecord;
    :cond_1
    return-void
.end method
