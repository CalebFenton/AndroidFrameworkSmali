.class Landroid/service/media/MediaBrowserService$ServiceState$2;
.super Landroid/service/media/MediaBrowserService$Result;
.source "MediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/media/MediaBrowserService$ServiceState;->performLoadItemOnHandler(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/service/media/MediaBrowserService$Result<",
        "Landroid/media/browse/MediaBrowser$MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/service/media/MediaBrowserService$ServiceState;

.field final synthetic blacklist val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

.field final synthetic blacklist val$itemId:Ljava/lang/String;

.field final synthetic blacklist val$receiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor blacklist <init>(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/Object;Landroid/service/media/MediaBrowserService$ConnectionRecord;Ljava/lang/String;Landroid/os/ResultReceiver;)V
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

    .line 918
    iput-object p1, p0, Landroid/service/media/MediaBrowserService$ServiceState$2;->this$1:Landroid/service/media/MediaBrowserService$ServiceState;

    iput-object p3, p0, Landroid/service/media/MediaBrowserService$ServiceState$2;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iput-object p4, p0, Landroid/service/media/MediaBrowserService$ServiceState$2;->val$itemId:Ljava/lang/String;

    iput-object p5, p0, Landroid/service/media/MediaBrowserService$ServiceState$2;->val$receiver:Landroid/os/ResultReceiver;

    iget-object p3, p1, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-direct {p0, p3, p2}, Landroid/service/media/MediaBrowserService$Result;-><init>(Landroid/service/media/MediaBrowserService;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method blacklist onResultSent(Landroid/media/browse/MediaBrowser$MediaItem;I)V
    .registers 6
    .param p1, "item"    # Landroid/media/browse/MediaBrowser$MediaItem;
    .param p2, "flag"    # I

    .line 921
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState$2;->this$1:Landroid/service/media/MediaBrowserService$ServiceState;

    invoke-static {v0}, Landroid/service/media/MediaBrowserService$ServiceState;->-$$Nest$fgetmConnections(Landroid/service/media/MediaBrowserService$ServiceState;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceState$2;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iget-object v1, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v1}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceState$2;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    if-eq v0, v1, :cond_17

    .line 931
    return-void

    .line 933
    :cond_17
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_23

    .line 934
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState$2;->val$receiver:Landroid/os/ResultReceiver;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 935
    return-void

    .line 937
    :cond_23
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 938
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "media_item"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 939
    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceState$2;->val$receiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 940
    return-void
.end method

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

    .line 918
    check-cast p1, Landroid/media/browse/MediaBrowser$MediaItem;

    invoke-virtual {p0, p1, p2}, Landroid/service/media/MediaBrowserService$ServiceState$2;->onResultSent(Landroid/media/browse/MediaBrowser$MediaItem;I)V

    return-void
.end method
