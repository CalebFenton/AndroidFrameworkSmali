.class Landroid/service/media/MediaBrowserService$3;
.super Landroid/service/media/MediaBrowserService$Result;
.source "MediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/media/MediaBrowserService;->performLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;Landroid/os/Bundle;)V
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

.field final synthetic val$options:Landroid/os/Bundle;

.field final synthetic val$parentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService;Ljava/lang/Object;Landroid/service/media/MediaBrowserService$ConnectionRecord;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/media/MediaBrowserService;
    .param p2, "this$0_1"    # Landroid/service/media/MediaBrowserService;
    .param p3, "$anonymous0"    # Ljava/lang/Object;
    .param p4, "val$connection"    # Landroid/service/media/MediaBrowserService$ConnectionRecord;
    .param p5, "val$parentId"    # Ljava/lang/String;
    .param p6, "val$options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 634
    iput-object p2, p0, Landroid/service/media/MediaBrowserService$3;->this$0:Landroid/service/media/MediaBrowserService;

    #@2
    iput-object p4, p0, Landroid/service/media/MediaBrowserService$3;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    #@4
    iput-object p5, p0, Landroid/service/media/MediaBrowserService$3;->val$parentId:Ljava/lang/String;

    #@6
    iput-object p6, p0, Landroid/service/media/MediaBrowserService$3;->val$options:Landroid/os/Bundle;

    #@8
    invoke-direct {p0, p1, p3}, Landroid/service/media/MediaBrowserService$Result;-><init>(Landroid/service/media/MediaBrowserService;Ljava/lang/Object;)V

    #@b
    return-void
.end method


# virtual methods
.method bridge synthetic onResultSent(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "list"    # Ljava/lang/Object;
    .param p2, "flag"    # I

    #@0
    .prologue
    .line 636
    check-cast p1, Ljava/util/List;

    #@2
    .end local p1    # "list":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/service/media/MediaBrowserService$3;->onResultSent(Ljava/util/List;I)V

    #@5
    return-void
.end method

.method onResultSent(Ljava/util/List;I)V
    .locals 6
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 637
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    iget-object v3, p0, Landroid/service/media/MediaBrowserService$3;->this$0:Landroid/service/media/MediaBrowserService;

    #@2
    invoke-static {v3}, Landroid/service/media/MediaBrowserService;->-get0(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    #@5
    move-result-object v3

    #@6
    iget-object v4, p0, Landroid/service/media/MediaBrowserService$3;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    #@8
    iget-object v4, v4, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@a
    invoke-interface {v4}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    iget-object v4, p0, Landroid/service/media/MediaBrowserService$3;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    #@14
    if-eq v3, v4, :cond_0

    #@16
    .line 642
    return-void

    #@17
    .line 646
    :cond_0
    and-int/lit8 v3, p2, 0x1

    #@19
    if-eqz v3, :cond_1

    #@1b
    .line 647
    iget-object v3, p0, Landroid/service/media/MediaBrowserService$3;->this$0:Landroid/service/media/MediaBrowserService;

    #@1d
    iget-object v4, p0, Landroid/service/media/MediaBrowserService$3;->val$options:Landroid/os/Bundle;

    #@1f
    invoke-static {v3, p1, v4}, Landroid/service/media/MediaBrowserService;->-wrap2(Landroid/service/media/MediaBrowserService;Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;

    #@22
    move-result-object v1

    #@23
    .line 649
    .local v1, "filteredList":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    :goto_0
    if-nez v1, :cond_2

    #@25
    const/4 v2, 0x0

    #@26
    .line 651
    :goto_1
    :try_start_0
    iget-object v3, p0, Landroid/service/media/MediaBrowserService$3;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    #@28
    iget-object v3, v3, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@2a
    iget-object v4, p0, Landroid/service/media/MediaBrowserService$3;->val$parentId:Ljava/lang/String;

    #@2c
    iget-object v5, p0, Landroid/service/media/MediaBrowserService$3;->val$options:Landroid/os/Bundle;

    #@2e
    invoke-interface {v3, v4, v2, v5}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onLoadChildrenWithOptions(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    .line 636
    :goto_2
    return-void

    #@32
    .end local v1    # "filteredList":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    :cond_1
    move-object v1, p1

    #@33
    .line 647
    goto :goto_0

    #@34
    .line 649
    .restart local v1    # "filteredList":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    :cond_2
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    #@36
    invoke-direct {v2, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    #@39
    .local v2, "pls":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    goto :goto_1

    #@3a
    .line 652
    .end local v2    # "pls":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    :catch_0
    move-exception v0

    #@3b
    .line 654
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "MediaBrowserService"

    #@3e
    new-instance v4, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v5, "Calling onLoadChildren() failed for id="

    #@46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    iget-object v5, p0, Landroid/service/media/MediaBrowserService$3;->val$parentId:Ljava/lang/String;

    #@4c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    .line 655
    const-string/jumbo v5, " package="

    #@53
    .line 654
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    .line 655
    iget-object v5, p0, Landroid/service/media/MediaBrowserService$3;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    #@59
    iget-object v5, v5, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pkg:Ljava/lang/String;

    #@5b
    .line 654
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    goto :goto_2
.end method
