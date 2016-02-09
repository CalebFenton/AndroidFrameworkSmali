.class Landroid/media/browse/MediaBrowser$7;
.super Ljava/lang/Object;
.source "MediaBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/browse/MediaBrowser;->onLoadChildren(Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/browse/MediaBrowser;

.field final synthetic val$callback:Landroid/service/media/IMediaBrowserServiceCallbacks;

.field final synthetic val$list:Landroid/content/pm/ParceledListSlice;

.field final synthetic val$parentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/content/pm/ParceledListSlice;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/browse/MediaBrowser;
    .param p2, "val$callback"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .param p3, "val$list"    # Landroid/content/pm/ParceledListSlice;
    .param p4, "val$parentId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 513
    iput-object p1, p0, Landroid/media/browse/MediaBrowser$7;->this$0:Landroid/media/browse/MediaBrowser;

    #@2
    iput-object p2, p0, Landroid/media/browse/MediaBrowser$7;->val$callback:Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@4
    iput-object p3, p0, Landroid/media/browse/MediaBrowser$7;->val$list:Landroid/content/pm/ParceledListSlice;

    #@6
    iput-object p4, p0, Landroid/media/browse/MediaBrowser$7;->val$parentId:Ljava/lang/String;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    .line 518
    iget-object v2, p0, Landroid/media/browse/MediaBrowser$7;->this$0:Landroid/media/browse/MediaBrowser;

    #@2
    iget-object v3, p0, Landroid/media/browse/MediaBrowser$7;->val$callback:Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@4
    const-string/jumbo v4, "onLoadChildren"

    #@7
    invoke-static {v2, v3, v4}, Landroid/media/browse/MediaBrowser;->-wrap1(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;)Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_0

    #@d
    .line 519
    return-void

    #@e
    .line 522
    :cond_0
    iget-object v2, p0, Landroid/media/browse/MediaBrowser$7;->val$list:Landroid/content/pm/ParceledListSlice;

    #@10
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@13
    move-result-object v0

    #@14
    .line 526
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    if-nez v0, :cond_1

    #@16
    .line 527
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@19
    move-result-object v0

    #@1a
    .line 531
    :cond_1
    iget-object v2, p0, Landroid/media/browse/MediaBrowser$7;->this$0:Landroid/media/browse/MediaBrowser;

    #@1c
    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->-get8(Landroid/media/browse/MediaBrowser;)Landroid/util/ArrayMap;

    #@1f
    move-result-object v2

    #@20
    iget-object v3, p0, Landroid/media/browse/MediaBrowser$7;->val$parentId:Ljava/lang/String;

    #@22
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Landroid/media/browse/MediaBrowser$Subscription;

    #@28
    .line 532
    .local v1, "subscription":Landroid/media/browse/MediaBrowser$Subscription;
    if-nez v1, :cond_2

    #@2a
    .line 537
    return-void

    #@2b
    .line 541
    :cond_2
    iget-object v2, v1, Landroid/media/browse/MediaBrowser$Subscription;->callback:Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    #@2d
    iget-object v3, p0, Landroid/media/browse/MediaBrowser$7;->val$parentId:Ljava/lang/String;

    #@2f
    invoke-virtual {v2, v3, v0}, Landroid/media/browse/MediaBrowser$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    #@32
    .line 515
    return-void
.end method
