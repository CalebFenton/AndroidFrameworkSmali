.class Landroid/service/media/MediaBrowserService$1;
.super Ljava/lang/Object;
.source "MediaBrowserService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/media/MediaBrowserService;->setSessionToken(Landroid/media/session/MediaSession$Token;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/media/MediaBrowserService;

.field final synthetic val$token:Landroid/media/session/MediaSession$Token;


# direct methods
.method constructor <init>(Landroid/service/media/MediaBrowserService;Landroid/media/session/MediaSession$Token;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/media/MediaBrowserService;
    .param p2, "val$token"    # Landroid/media/session/MediaSession$Token;

    #@0
    .prologue
    .line 383
    iput-object p1, p0, Landroid/service/media/MediaBrowserService$1;->this$0:Landroid/service/media/MediaBrowserService;

    #@2
    iput-object p2, p0, Landroid/service/media/MediaBrowserService$1;->val$token:Landroid/media/session/MediaSession$Token;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    #@0
    .prologue
    .line 386
    iget-object v4, p0, Landroid/service/media/MediaBrowserService$1;->this$0:Landroid/service/media/MediaBrowserService;

    #@2
    invoke-static {v4}, Landroid/service/media/MediaBrowserService;->-get0(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    #@5
    move-result-object v4

    #@6
    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    #@9
    move-result-object v4

    #@a
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v3

    #@e
    .local v3, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_0

    #@14
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Landroid/os/IBinder;

    #@1a
    .line 387
    .local v2, "key":Landroid/os/IBinder;
    iget-object v4, p0, Landroid/service/media/MediaBrowserService$1;->this$0:Landroid/service/media/MediaBrowserService;

    #@1c
    invoke-static {v4}, Landroid/service/media/MediaBrowserService;->-get0(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    #@26
    .line 389
    .local v0, "connection":Landroid/service/media/MediaBrowserService$ConnectionRecord;
    :try_start_0
    iget-object v4, v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@28
    iget-object v5, v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    #@2a
    invoke-virtual {v5}, Landroid/service/media/MediaBrowserService$BrowserRoot;->getRootId()Ljava/lang/String;

    #@2d
    move-result-object v5

    #@2e
    iget-object v6, p0, Landroid/service/media/MediaBrowserService$1;->val$token:Landroid/media/session/MediaSession$Token;

    #@30
    .line 390
    iget-object v7, v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    #@32
    invoke-virtual {v7}, Landroid/service/media/MediaBrowserService$BrowserRoot;->getExtras()Landroid/os/Bundle;

    #@35
    move-result-object v7

    #@36
    .line 389
    invoke-interface {v4, v5, v6, v7}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onConnect(Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    goto :goto_0

    #@3a
    .line 391
    :catch_0
    move-exception v1

    #@3b
    .line 392
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "MediaBrowserService"

    #@3e
    new-instance v5, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v6, "Connection for "

    #@46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    iget-object v6, v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pkg:Ljava/lang/String;

    #@4c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    const-string/jumbo v6, " is no longer valid."

    #@53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v5

    #@5b
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    .line 393
    iget-object v4, p0, Landroid/service/media/MediaBrowserService$1;->this$0:Landroid/service/media/MediaBrowserService;

    #@60
    invoke-static {v4}, Landroid/service/media/MediaBrowserService;->-get0(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@67
    goto :goto_0

    #@68
    .line 385
    .end local v0    # "connection":Landroid/service/media/MediaBrowserService$ConnectionRecord;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "key":Landroid/os/IBinder;
    :cond_0
    return-void
.end method
