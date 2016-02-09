.class Landroid/service/media/MediaBrowserService$3;
.super Landroid/service/media/MediaBrowserService$Result;
.source "MediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/media/MediaBrowserService;->performLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/service/media/MediaBrowserService$Result",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/media/browse/MediaBrowser$MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/media/MediaBrowserService;

.field final synthetic val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

.field final synthetic val$parentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService;Ljava/lang/Object;Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/media/MediaBrowserService;
    .param p2, "this$0_1"    # Landroid/service/media/MediaBrowserService;
    .param p3, "$anonymous0"    # Ljava/lang/Object;
    .param p4, "val$parentId"    # Ljava/lang/String;
    .param p5, "val$connection"    # Landroid/service/media/MediaBrowserService$ConnectionRecord;

    #@0
    .prologue
    .line 469
    iput-object p2, p0, Landroid/service/media/MediaBrowserService$3;->this$0:Landroid/service/media/MediaBrowserService;

    #@2
    iput-object p4, p0, Landroid/service/media/MediaBrowserService$3;->val$parentId:Ljava/lang/String;

    #@4
    iput-object p5, p0, Landroid/service/media/MediaBrowserService$3;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    #@6
    invoke-direct {p0, p1, p3}, Landroid/service/media/MediaBrowserService$Result;-><init>(Landroid/service/media/MediaBrowserService;Ljava/lang/Object;)V

    #@9
    return-void
.end method


# virtual methods
.method bridge synthetic onResultSent(Ljava/lang/Object;)V
    .locals 0
    .param p1, "list"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 471
    check-cast p1, Ljava/util/List;

    #@2
    .end local p1    # "list":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/service/media/MediaBrowserService$3;->onResultSent(Ljava/util/List;)V

    #@5
    return-void
.end method

.method onResultSent(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 472
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    if-nez p1, :cond_0

    #@2
    .line 473
    new-instance v2, Ljava/lang/IllegalStateException;

    #@4
    new-instance v3, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v4, "onLoadChildren sent null list for id "

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    .line 474
    iget-object v4, p0, Landroid/service/media/MediaBrowserService$3;->val$parentId:Ljava/lang/String;

    #@12
    .line 473
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v2

    #@1e
    .line 476
    :cond_0
    iget-object v2, p0, Landroid/service/media/MediaBrowserService$3;->this$0:Landroid/service/media/MediaBrowserService;

    #@20
    invoke-static {v2}, Landroid/service/media/MediaBrowserService;->-get0(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    #@23
    move-result-object v2

    #@24
    iget-object v3, p0, Landroid/service/media/MediaBrowserService$3;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    #@26
    iget-object v3, v3, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@28
    invoke-interface {v3}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    move-result-object v2

    #@30
    iget-object v3, p0, Landroid/service/media/MediaBrowserService$3;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    #@32
    if-eq v2, v3, :cond_1

    #@34
    .line 481
    return-void

    #@35
    .line 484
    :cond_1
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    #@37
    invoke-direct {v1, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    #@3a
    .line 486
    .local v1, "pls":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    :try_start_0
    iget-object v2, p0, Landroid/service/media/MediaBrowserService$3;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    #@3c
    iget-object v2, v2, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@3e
    iget-object v3, p0, Landroid/service/media/MediaBrowserService$3;->val$parentId:Ljava/lang/String;

    #@40
    invoke-interface {v2, v3, v1}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onLoadChildren(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    .line 471
    :goto_0
    return-void

    #@44
    .line 487
    :catch_0
    move-exception v0

    #@45
    .line 489
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "MediaBrowserService"

    #@48
    new-instance v3, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v4, "Calling onLoadChildren() failed for id="

    #@50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    iget-object v4, p0, Landroid/service/media/MediaBrowserService$3;->val$parentId:Ljava/lang/String;

    #@56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v3

    #@5a
    .line 490
    const-string/jumbo v4, " package="

    #@5d
    .line 489
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v3

    #@61
    .line 490
    iget-object v4, p0, Landroid/service/media/MediaBrowserService$3;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    #@63
    iget-object v4, v4, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pkg:Ljava/lang/String;

    #@65
    .line 489
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v3

    #@69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v3

    #@6d
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@70
    goto :goto_0
.end method
