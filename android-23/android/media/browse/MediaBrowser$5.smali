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
    .line 444
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
    .locals 6

    #@0
    .prologue
    .line 449
    iget-object v3, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    #@2
    iget-object v4, p0, Landroid/media/browse/MediaBrowser$5;->val$callback:Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@4
    const-string/jumbo v5, "onConnect"

    #@7
    invoke-static {v3, v4, v5}, Landroid/media/browse/MediaBrowser;->-wrap1(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;)Z

    #@a
    move-result v3

    #@b
    if-nez v3, :cond_0

    #@d
    .line 450
    return-void

    #@e
    .line 453
    :cond_0
    iget-object v3, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    #@10
    invoke-static {v3}, Landroid/media/browse/MediaBrowser;->-get7(Landroid/media/browse/MediaBrowser;)I

    #@13
    move-result v3

    #@14
    const/4 v4, 0x1

    #@15
    if-eq v3, v4, :cond_1

    #@17
    .line 454
    const-string/jumbo v3, "MediaBrowser"

    #@1a
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v5, "onConnect from service while mState="

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    .line 455
    iget-object v5, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    #@28
    invoke-static {v5}, Landroid/media/browse/MediaBrowser;->-get7(Landroid/media/browse/MediaBrowser;)I

    #@2b
    move-result v5

    #@2c
    invoke-static {v5}, Landroid/media/browse/MediaBrowser;->-wrap2(I)Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    .line 454
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    .line 455
    const-string/jumbo v5, "... ignoring"

    #@37
    .line 454
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 456
    return-void

    #@43
    .line 458
    :cond_1
    iget-object v3, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    #@45
    iget-object v4, p0, Landroid/media/browse/MediaBrowser$5;->val$root:Ljava/lang/String;

    #@47
    invoke-static {v3, v4}, Landroid/media/browse/MediaBrowser;->-set2(Landroid/media/browse/MediaBrowser;Ljava/lang/String;)Ljava/lang/String;

    #@4a
    .line 459
    iget-object v3, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    #@4c
    iget-object v4, p0, Landroid/media/browse/MediaBrowser$5;->val$session:Landroid/media/session/MediaSession$Token;

    #@4e
    invoke-static {v3, v4}, Landroid/media/browse/MediaBrowser;->-set1(Landroid/media/browse/MediaBrowser;Landroid/media/session/MediaSession$Token;)Landroid/media/session/MediaSession$Token;

    #@51
    .line 460
    iget-object v3, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    #@53
    iget-object v4, p0, Landroid/media/browse/MediaBrowser$5;->val$extra:Landroid/os/Bundle;

    #@55
    invoke-static {v3, v4}, Landroid/media/browse/MediaBrowser;->-set0(Landroid/media/browse/MediaBrowser;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@58
    .line 461
    iget-object v3, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    #@5a
    const/4 v4, 0x2

    #@5b
    invoke-static {v3, v4}, Landroid/media/browse/MediaBrowser;->-set5(Landroid/media/browse/MediaBrowser;I)I

    #@5e
    .line 467
    iget-object v3, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    #@60
    invoke-static {v3}, Landroid/media/browse/MediaBrowser;->-get0(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$ConnectionCallback;

    #@63
    move-result-object v3

    #@64
    invoke-virtual {v3}, Landroid/media/browse/MediaBrowser$ConnectionCallback;->onConnected()V

    #@67
    .line 471
    iget-object v3, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    #@69
    invoke-static {v3}, Landroid/media/browse/MediaBrowser;->-get8(Landroid/media/browse/MediaBrowser;)Landroid/util/ArrayMap;

    #@6c
    move-result-object v3

    #@6d
    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    #@70
    move-result-object v3

    #@71
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@74
    move-result-object v2

    #@75
    .local v2, "id$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@78
    move-result v3

    #@79
    if-eqz v3, :cond_2

    #@7b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7e
    move-result-object v1

    #@7f
    check-cast v1, Ljava/lang/String;

    #@81
    .line 473
    .local v1, "id":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    #@83
    invoke-static {v3}, Landroid/media/browse/MediaBrowser;->-get3(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserService;

    #@86
    move-result-object v3

    #@87
    iget-object v4, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    #@89
    invoke-static {v4}, Landroid/media/browse/MediaBrowser;->-get4(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@8c
    move-result-object v4

    #@8d
    invoke-interface {v3, v1, v4}, Landroid/service/media/IMediaBrowserService;->addSubscription(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@90
    goto :goto_0

    #@91
    .line 474
    :catch_0
    move-exception v0

    #@92
    .line 477
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "MediaBrowser"

    #@95
    new-instance v4, Ljava/lang/StringBuilder;

    #@97
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@9a
    const-string/jumbo v5, "addSubscription failed with RemoteException parentId="

    #@9d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v4

    #@a1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v4

    #@a5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v4

    #@a9
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ac
    goto :goto_0

    #@ad
    .line 446
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "id":Ljava/lang/String;
    :cond_2
    return-void
.end method
