.class Landroid/media/browse/MediaBrowser$6;
.super Ljava/lang/Object;
.source "MediaBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/browse/MediaBrowser;->onServiceConnected(Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/browse/MediaBrowser;

.field final synthetic blacklist val$callback:Landroid/service/media/IMediaBrowserServiceCallbacks;

.field final synthetic blacklist val$extra:Landroid/os/Bundle;

.field final synthetic blacklist val$root:Ljava/lang/String;

.field final synthetic blacklist val$session:Landroid/media/session/MediaSession$Token;


# direct methods
.method constructor blacklist <init>(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
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

    .line 579
    iput-object p1, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    iput-object p2, p0, Landroid/media/browse/MediaBrowser$6;->val$callback:Landroid/service/media/IMediaBrowserServiceCallbacks;

    iput-object p3, p0, Landroid/media/browse/MediaBrowser$6;->val$root:Ljava/lang/String;

    iput-object p4, p0, Landroid/media/browse/MediaBrowser$6;->val$session:Landroid/media/session/MediaSession$Token;

    iput-object p5, p0, Landroid/media/browse/MediaBrowser$6;->val$extra:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 13

    .line 584
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    iget-object v1, p0, Landroid/media/browse/MediaBrowser$6;->val$callback:Landroid/service/media/IMediaBrowserServiceCallbacks;

    const-string v2, "onConnect"

    invoke-static {v0, v1, v2}, Landroid/media/browse/MediaBrowser;->-$$Nest$misCurrent(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 585
    return-void

    .line 588
    :cond_d
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->-$$Nest$fgetmState(Landroid/media/browse/MediaBrowser;)I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "MediaBrowser"

    if-eq v0, v1, :cond_3f

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnect from service while mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v1}, Landroid/media/browse/MediaBrowser;->-$$Nest$fgetmState(Landroid/media/browse/MediaBrowser;)I

    move-result v1

    .line 590
    invoke-static {v1}, Landroid/media/browse/MediaBrowser;->-$$Nest$smgetStateLabel(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "... ignoring"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 589
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    return-void

    .line 593
    :cond_3f
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    iget-object v1, p0, Landroid/media/browse/MediaBrowser$6;->val$root:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->-$$Nest$fputmRootId(Landroid/media/browse/MediaBrowser;Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    iget-object v1, p0, Landroid/media/browse/MediaBrowser$6;->val$session:Landroid/media/session/MediaSession$Token;

    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->-$$Nest$fputmMediaSessionToken(Landroid/media/browse/MediaBrowser;Landroid/media/session/MediaSession$Token;)V

    .line 595
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    iget-object v1, p0, Landroid/media/browse/MediaBrowser$6;->val$extra:Landroid/os/Bundle;

    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->-$$Nest$fputmExtras(Landroid/media/browse/MediaBrowser;Landroid/os/Bundle;)V

    .line 596
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->-$$Nest$fputmState(Landroid/media/browse/MediaBrowser;I)V

    .line 602
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->-$$Nest$fgetmCallback(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$ConnectionCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;->onConnected()V

    .line 606
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->-$$Nest$fgetmSubscriptions(Landroid/media/browse/MediaBrowser;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_71
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 607
    .local v1, "subscriptionEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/media/browse/MediaBrowser$Subscription;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 608
    .local v3, "id":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/browse/MediaBrowser$Subscription;

    .line 609
    .local v4, "sub":Landroid/media/browse/MediaBrowser$Subscription;
    invoke-virtual {v4}, Landroid/media/browse/MediaBrowser$Subscription;->getCallbacks()Ljava/util/List;

    move-result-object v5

    .line 610
    .local v5, "callbackList":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$SubscriptionCallback;>;"
    invoke-virtual {v4}, Landroid/media/browse/MediaBrowser$Subscription;->getOptionsList()Ljava/util/List;

    move-result-object v6

    .line 611
    .local v6, "optionsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_92
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_d0

    .line 613
    :try_start_98
    iget-object v8, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v8}, Landroid/media/browse/MediaBrowser;->-$$Nest$fgetmServiceBinder(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserService;

    move-result-object v8

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    iget-object v9, v9, Landroid/media/browse/MediaBrowser$SubscriptionCallback;->mToken:Landroid/os/Binder;

    .line 614
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    iget-object v11, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v11}, Landroid/media/browse/MediaBrowser;->-$$Nest$fgetmServiceCallbacks(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object v11

    .line 613
    invoke-interface {v8, v3, v9, v10, v11}, Landroid/service/media/IMediaBrowserService;->addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_b5} :catch_b6

    .line 620
    goto :goto_cd

    .line 615
    :catch_b6
    move-exception v8

    .line 618
    .local v8, "ex":Landroid/os/RemoteException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addSubscription failed with RemoteException parentId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    .end local v8    # "ex":Landroid/os/RemoteException;
    :goto_cd
    add-int/lit8 v7, v7, 0x1

    goto :goto_92

    .line 622
    .end local v1    # "subscriptionEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/media/browse/MediaBrowser$Subscription;>;"
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "sub":Landroid/media/browse/MediaBrowser$Subscription;
    .end local v5    # "callbackList":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$SubscriptionCallback;>;"
    .end local v6    # "optionsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v7    # "i":I
    :cond_d0
    goto :goto_71

    .line 623
    :cond_d1
    return-void
.end method
