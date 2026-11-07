.class Landroid/media/browse/MediaBrowser$8;
.super Ljava/lang/Object;
.source "MediaBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/browse/MediaBrowser;->onLoadChildren(Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/browse/MediaBrowser;

.field final synthetic blacklist val$callback:Landroid/service/media/IMediaBrowserServiceCallbacks;

.field final synthetic blacklist val$list:Landroid/content/pm/ParceledListSlice;

.field final synthetic blacklist val$options:Landroid/os/Bundle;

.field final synthetic blacklist val$parentId:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/pm/ParceledListSlice;)V
    .registers 6
    .param p1, "this$0"    # Landroid/media/browse/MediaBrowser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 656
    iput-object p1, p0, Landroid/media/browse/MediaBrowser$8;->this$0:Landroid/media/browse/MediaBrowser;

    iput-object p2, p0, Landroid/media/browse/MediaBrowser$8;->val$callback:Landroid/service/media/IMediaBrowserServiceCallbacks;

    iput-object p3, p0, Landroid/media/browse/MediaBrowser$8;->val$parentId:Ljava/lang/String;

    iput-object p4, p0, Landroid/media/browse/MediaBrowser$8;->val$options:Landroid/os/Bundle;

    iput-object p5, p0, Landroid/media/browse/MediaBrowser$8;->val$list:Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 661
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$8;->this$0:Landroid/media/browse/MediaBrowser;

    iget-object v1, p0, Landroid/media/browse/MediaBrowser$8;->val$callback:Landroid/service/media/IMediaBrowserServiceCallbacks;

    const-string v2, "onLoadChildren"

    invoke-static {v0, v1, v2}, Landroid/media/browse/MediaBrowser;->-$$Nest$misCurrent(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 662
    return-void

    .line 670
    :cond_d
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$8;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->-$$Nest$fgetmSubscriptions(Landroid/media/browse/MediaBrowser;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Landroid/media/browse/MediaBrowser$8;->val$parentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/browse/MediaBrowser$Subscription;

    .line 671
    .local v0, "subscription":Landroid/media/browse/MediaBrowser$Subscription;
    if-eqz v0, :cond_5b

    .line 673
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$8;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v1}, Landroid/media/browse/MediaBrowser;->-$$Nest$fgetmContext(Landroid/media/browse/MediaBrowser;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/media/browse/MediaBrowser$8;->val$options:Landroid/os/Bundle;

    .line 674
    invoke-virtual {v0, v1, v2}, Landroid/media/browse/MediaBrowser$Subscription;->getCallback(Landroid/content/Context;Landroid/os/Bundle;)Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    move-result-object v1

    .line 675
    .local v1, "subscriptionCallback":Landroid/media/browse/MediaBrowser$SubscriptionCallback;
    if-eqz v1, :cond_5b

    .line 676
    iget-object v2, p0, Landroid/media/browse/MediaBrowser$8;->val$list:Landroid/content/pm/ParceledListSlice;

    if-nez v2, :cond_31

    const/4 v2, 0x0

    goto :goto_37

    :cond_31
    iget-object v2, p0, Landroid/media/browse/MediaBrowser$8;->val$list:Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    .line 677
    .local v2, "data":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    :goto_37
    iget-object v3, p0, Landroid/media/browse/MediaBrowser$8;->val$options:Landroid/os/Bundle;

    if-nez v3, :cond_49

    .line 678
    if-nez v2, :cond_43

    .line 679
    iget-object v3, p0, Landroid/media/browse/MediaBrowser$8;->val$parentId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/media/browse/MediaBrowser$SubscriptionCallback;->onError(Ljava/lang/String;)V

    goto :goto_5a

    .line 681
    :cond_43
    iget-object v3, p0, Landroid/media/browse/MediaBrowser$8;->val$parentId:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/media/browse/MediaBrowser$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_5a

    .line 684
    :cond_49
    if-nez v2, :cond_53

    .line 685
    iget-object v3, p0, Landroid/media/browse/MediaBrowser$8;->val$parentId:Ljava/lang/String;

    iget-object v4, p0, Landroid/media/browse/MediaBrowser$8;->val$options:Landroid/os/Bundle;

    invoke-virtual {v1, v3, v4}, Landroid/media/browse/MediaBrowser$SubscriptionCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_5a

    .line 687
    :cond_53
    iget-object v3, p0, Landroid/media/browse/MediaBrowser$8;->val$parentId:Ljava/lang/String;

    iget-object v4, p0, Landroid/media/browse/MediaBrowser$8;->val$options:Landroid/os/Bundle;

    invoke-virtual {v1, v3, v2, v4}, Landroid/media/browse/MediaBrowser$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    .line 690
    :goto_5a
    return-void

    .line 696
    .end local v1    # "subscriptionCallback":Landroid/media/browse/MediaBrowser$SubscriptionCallback;
    .end local v2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    :cond_5b
    return-void
.end method
