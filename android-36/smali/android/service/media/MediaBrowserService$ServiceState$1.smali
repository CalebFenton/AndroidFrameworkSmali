.class Landroid/service/media/MediaBrowserService$ServiceState$1;
.super Landroid/service/media/MediaBrowserService$Result;
.source "MediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/media/MediaBrowserService$ServiceState;->performLoadChildrenOnHandler(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/service/media/MediaBrowserService$Result<",
        "Ljava/util/List<",
        "Landroid/media/browse/MediaBrowser$MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/service/media/MediaBrowserService$ServiceState;

.field final synthetic blacklist val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

.field final synthetic blacklist val$options:Landroid/os/Bundle;

.field final synthetic blacklist val$parentId:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/Object;Landroid/service/media/MediaBrowserService$ConnectionRecord;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "this$1"    # Landroid/service/media/MediaBrowserService$ServiceState;
    .param p2, "debug"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 846
    iput-object p1, p0, Landroid/service/media/MediaBrowserService$ServiceState$1;->this$1:Landroid/service/media/MediaBrowserService$ServiceState;

    iput-object p3, p0, Landroid/service/media/MediaBrowserService$ServiceState$1;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iput-object p4, p0, Landroid/service/media/MediaBrowserService$ServiceState$1;->val$parentId:Ljava/lang/String;

    iput-object p5, p0, Landroid/service/media/MediaBrowserService$ServiceState$1;->val$options:Landroid/os/Bundle;

    iget-object p3, p1, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-direct {p0, p3, p2}, Landroid/service/media/MediaBrowserService$Result;-><init>(Landroid/service/media/MediaBrowserService;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method bridge synthetic blacklist onResultSent(Ljava/lang/Object;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 846
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Landroid/service/media/MediaBrowserService$ServiceState$1;->onResultSent(Ljava/util/List;I)V

    return-void
.end method

.method blacklist onResultSent(Ljava/util/List;I)V
    .registers 8
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;I)V"
        }
    .end annotation

    .line 850
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState$1;->this$1:Landroid/service/media/MediaBrowserService$ServiceState;

    invoke-static {v0}, Landroid/service/media/MediaBrowserService$ServiceState;->-$$Nest$fgetmConnections(Landroid/service/media/MediaBrowserService$ServiceState;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceState$1;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iget-object v1, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v1}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceState$1;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    if-eq v0, v1, :cond_17

    .line 860
    return-void

    .line 864
    :cond_17
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_22

    .line 865
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState$1;->val$options:Landroid/os/Bundle;

    invoke-static {p1, v0}, Landroid/media/browse/MediaBrowserUtils;->applyPagingOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    goto :goto_23

    .line 866
    :cond_22
    move-object v0, p1

    :goto_23
    nop

    .line 867
    .local v0, "filteredList":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    const/4 v1, 0x0

    .line 868
    .local v1, "pls":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    if-eqz v0, :cond_31

    .line 869
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    move-object v1, v2

    .line 872
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/pm/ParceledListSlice;->setInlineCountLimit(I)V

    .line 875
    :cond_31
    :try_start_31
    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceState$1;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iget-object v2, v2, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    iget-object v3, p0, Landroid/service/media/MediaBrowserService$ServiceState$1;->val$parentId:Ljava/lang/String;

    iget-object v4, p0, Landroid/service/media/MediaBrowserService$ServiceState$1;->val$options:Landroid/os/Bundle;

    invoke-interface {v2, v3, v1, v4}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onLoadChildren(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/os/Bundle;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3c} :catch_3d

    .line 884
    goto :goto_66

    .line 876
    :catch_3d
    move-exception v2

    .line 878
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling onLoadChildren() failed for id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/service/media/MediaBrowserService$ServiceState$1;->val$parentId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/service/media/MediaBrowserService$ServiceState$1;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iget-object v4, v4, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaBrowserService"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_66
    return-void
.end method
