.class Landroid/service/media/MediaBrowserService$4;
.super Landroid/service/media/MediaBrowserService$Result;
.source "MediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/media/MediaBrowserService;->performLoadItem(Ljava/lang/String;Landroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/service/media/MediaBrowserService$Result",
        "<",
        "Landroid/media/browse/MediaBrowser$MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/media/MediaBrowserService;

.field final synthetic val$receiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService;Ljava/lang/Object;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/media/MediaBrowserService;
    .param p2, "this$0_1"    # Landroid/service/media/MediaBrowserService;
    .param p3, "$anonymous0"    # Ljava/lang/Object;
    .param p4, "val$receiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 505
    iput-object p2, p0, Landroid/service/media/MediaBrowserService$4;->this$0:Landroid/service/media/MediaBrowserService;

    #@2
    iput-object p4, p0, Landroid/service/media/MediaBrowserService$4;->val$receiver:Landroid/os/ResultReceiver;

    #@4
    invoke-direct {p0, p1, p3}, Landroid/service/media/MediaBrowserService$Result;-><init>(Landroid/service/media/MediaBrowserService;Ljava/lang/Object;)V

    #@7
    return-void
.end method


# virtual methods
.method onResultSent(Landroid/media/browse/MediaBrowser$MediaItem;)V
    .locals 3
    .param p1, "item"    # Landroid/media/browse/MediaBrowser$MediaItem;

    #@0
    .prologue
    .line 508
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 509
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "media_item"

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@b
    .line 510
    iget-object v1, p0, Landroid/service/media/MediaBrowserService$4;->val$receiver:Landroid/os/ResultReceiver;

    #@d
    const/4 v2, 0x0

    #@e
    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    #@11
    .line 507
    return-void
.end method

.method bridge synthetic onResultSent(Ljava/lang/Object;)V
    .locals 0
    .param p1, "item"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 507
    check-cast p1, Landroid/media/browse/MediaBrowser$MediaItem;

    #@2
    .end local p1    # "item":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/service/media/MediaBrowserService$4;->onResultSent(Landroid/media/browse/MediaBrowser$MediaItem;)V

    #@5
    return-void
.end method
