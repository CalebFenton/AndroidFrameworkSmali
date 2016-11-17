.class Landroid/media/browse/MediaBrowser$5;
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
.field final synthetic this$0:Landroid/media/browse/MediaBrowser;

.field final synthetic val$callback:Landroid/service/media/IMediaBrowserServiceCallbacks;

.field final synthetic val$extra:Landroid/os/Bundle;

.field final synthetic val$root:Ljava/lang/String;

.field final synthetic val$session:Landroid/media/session/MediaSession$Token;


# direct methods
.method constructor <init>(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/browse/MediaBrowser;
    .param p2, "val$callback"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .param p3, "val$root"    # Ljava/lang/String;
    .param p4, "val$session"    # Landroid/media/session/MediaSession$Token;
    .param p5, "val$extra"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 554
    iput-object p1, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    #@2
    iput-object p2, p0, Landroid/media/browse/MediaBrowser$5;->val$callback:Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@4
    iput-object p3, p0, Landroid/media/browse/MediaBrowser$5;->val$root:Ljava/lang/String;

    #@6
    iput-object p4, p0, Landroid/media/browse/MediaBrowser$5;->val$session:Landroid/media/session/MediaSession$Token;

    #@8
    iput-object p5, p0, Landroid/media/browse/MediaBrowser$5;->val$extra:Landroid/os/Bundle;

    #@a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    #@0
    .prologue
    .line 559
    iget-object v8, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    #@2
    iget-object v9, p0, Landroid/media/browse/MediaBrowser$5;->val$callback:Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@4
    const-string/jumbo v10, "onConnect"

    #@7
    invoke-static {v8, v9, v10}, Landroid/media/browse/MediaBrowser;->-wrap1(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;)Z

    #@a
    move-result v8

    #@b
    if-nez v8, :cond_0

    #@d
    .line 560
    return-void

    #@e
    .line 563
    :cond_0
    iget-object v8, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    #@10
    invoke-static {v8}, Landroid/media/browse/MediaBrowser;->-get8(Landroid/media/browse/MediaBrowser;)I

    #@13
    move-result v8

    #@14
    const/4 v9, 0x1

    #@15
    if-eq v8, v9, :cond_1

    #@17
    .line 564
    const-string/jumbo v8, "MediaBrowser"

    #@1a
    new-instance v9, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v10, "onConnect from service while mState="

    #@22
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v9

    #@26
    .line 565
    iget-object v10, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    #@28
    invoke-static {v10}, Landroid/media/browse/MediaBrowser;->-get8(Landroid/media/browse/MediaBrowser;)I

    #@2b
    move-result v10

    #@2c
    invoke-static {v10}, Landroid/media/browse/MediaBrowser;->-wrap2(I)Ljava/lang/String;

    #@2f
    move-result-object v10

    #@30
    .line 564
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v9

    #@34
    .line 565
    const-string/jumbo v10, "... ignoring"

    #@37
    .line 564
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v9

    #@3b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v9

    #@3f
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 566
    return-void

    #@43
    .line 568
    :cond_1
    iget-object v8, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    #@45
    iget-object v9, p0, Landroid/media/browse/MediaBrowser$5;->val$root:Ljava/lang/String;

    #@47
    invoke-static {v8, v9}, Landroid/media/browse/MediaBrowser;->-set2(Landroid/media/browse/MediaBrowser;Ljava/lang/String;)Ljava/lang/String;

    #@4a
    .line 569
    iget-object v8, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    #@4c
    iget-object v9, p0, Landroid/media/browse/MediaBrowser$5;->val$session:Landroid/media/session/MediaSession$Token;

    #@4e
    invoke-static {v8, v9}, Landroid/media/browse/MediaBrowser;->-set1(Landroid/media/browse/MediaBrowser;Landroid/media/session/MediaSession$Token;)Landroid/media/session/MediaSession$Token;

    #@51
    .line 570
    iget-object v8, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    #@53
    iget-object v9, p0, Landroid/media/browse/MediaBrowser$5;->val$extra:Landroid/os/Bundle;

    #@55
    invoke-static {v8, v9}, Landroid/media/browse/MediaBrowser;->-set0(Landroid/media/browse/MediaBrowser;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@58
    .line 571
    iget-object v8, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    #@5a
    const/4 v9, 0x2

    #@5b
    invoke-static {v8, v9}, Landroid/media/browse/MediaBrowser;->-set5(Landroid/media/browse/MediaBrowser;I)I

    #@5e
    .line 577
    iget-object v8, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    #@60
    invoke-static {v8}, Landroid/media/browse/MediaBrowser;->-get0(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$ConnectionCallback;

    #@63
    move-result-object v8

    #@64
    invoke-virtual {v8}, Landroid/media/browse/MediaBrowser$ConnectionCallback;->onConnected()V

    #@67
    .line 581
    iget-object v8, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    #@69
    invoke-static {v8}, Landroid/media/browse/MediaBrowser;->-get9(Landroid/media/browse/MediaBrowser;)Landroid/util/ArrayMap;

    #@6c
    move-result-object v8

    #@6d
    invoke-virtual {v8}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@70
    move-result-object v8

    #@71
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@74
    move-result-object v7

    #@75
    .local v7, "subscriptionEntry$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@78
    move-result v8

    #@79
    if-eqz v8, :cond_3

    #@7b
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7e
    move-result-object v6

    #@7f
    check-cast v6, Ljava/util/Map$Entry;

    #@81
    .line 582
    .local v6, "subscriptionEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/media/browse/MediaBrowser$Subscription;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@84
    move-result-object v3

    #@85
    check-cast v3, Ljava/lang/String;

    #@87
    .line 583
    .local v3, "id":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@8a
    move-result-object v5

    #@8b
    check-cast v5, Landroid/media/browse/MediaBrowser$Subscription;

    #@8d
    .line 584
    .local v5, "sub":Landroid/media/browse/MediaBrowser$Subscription;
    invoke-virtual {v5}, Landroid/media/browse/MediaBrowser$Subscription;->getCallbacks()Ljava/util/List;

    #@90
    move-result-object v0

    #@91
    .line 585
    .local v0, "callbackList":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$SubscriptionCallback;>;"
    invoke-virtual {v5}, Landroid/media/browse/MediaBrowser$Subscription;->getOptionsList()Ljava/util/List;

    #@94
    move-result-object v4

    #@95
    .line 586
    .local v4, "optionsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v2, 0x0

    #@96
    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@99
    move-result v8

    #@9a
    if-ge v2, v8, :cond_2

    #@9c
    .line 588
    :try_start_0
    iget-object v8, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    #@9e
    invoke-static {v8}, Landroid/media/browse/MediaBrowser;->-get4(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserService;

    #@a1
    move-result-object v9

    #@a2
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a5
    move-result-object v8

    #@a6
    check-cast v8, Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    #@a8
    iget-object v10, v8, Landroid/media/browse/MediaBrowser$SubscriptionCallback;->mToken:Landroid/os/Binder;

    #@aa
    .line 589
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@ad
    move-result-object v8

    #@ae
    check-cast v8, Landroid/os/Bundle;

    #@b0
    iget-object v11, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    #@b2
    invoke-static {v11}, Landroid/media/browse/MediaBrowser;->-get5(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@b5
    move-result-object v11

    #@b6
    .line 588
    invoke-interface {v9, v3, v10, v8, v11}, Landroid/service/media/IMediaBrowserService;->addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b9
    .line 586
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@bb
    goto :goto_0

    #@bc
    .line 590
    :catch_0
    move-exception v1

    #@bd
    .line 593
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v8, "MediaBrowser"

    #@c0
    new-instance v9, Ljava/lang/StringBuilder;

    #@c2
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@c5
    const-string/jumbo v10, "addSubscription failed with RemoteException parentId="

    #@c8
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v9

    #@cc
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v9

    #@d0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d3
    move-result-object v9

    #@d4
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d7
    goto :goto_1

    #@d8
    .line 556
    .end local v0    # "callbackList":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$SubscriptionCallback;>;"
    .end local v1    # "ex":Landroid/os/RemoteException;
    .end local v2    # "i":I
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "optionsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v5    # "sub":Landroid/media/browse/MediaBrowser$Subscription;
    .end local v6    # "subscriptionEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/media/browse/MediaBrowser$Subscription;>;"
    :cond_3
    return-void
.end method
