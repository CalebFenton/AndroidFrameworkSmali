.class Landroid/service/media/MediaBrowserService$ServiceBinder$1;
.super Ljava/lang/Object;
.source "MediaBrowserService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/media/MediaBrowserService$ServiceBinder;->connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

.field final synthetic val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$rootHints:Landroid/os/Bundle;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Landroid/service/media/MediaBrowserService$ServiceBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "this$1"    # Landroid/service/media/MediaBrowserService$ServiceBinder;
    .param p2, "val$callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .param p3, "val$pkg"    # Ljava/lang/String;
    .param p4, "val$rootHints"    # Landroid/os/Bundle;
    .param p5, "val$uid"    # I

    #@0
    .prologue
    .line 193
    iput-object p1, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    #@2
    iput-object p2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@4
    iput-object p3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$pkg:Ljava/lang/String;

    #@6
    iput-object p4, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$rootHints:Landroid/os/Bundle;

    #@8
    iput p5, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$uid:I

    #@a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 196
    iget-object v3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@3
    invoke-interface {v3}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 199
    .local v0, "b":Landroid/os/IBinder;
    iget-object v3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    #@9
    iget-object v3, v3, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    #@b
    invoke-static {v3}, Landroid/service/media/MediaBrowserService;->-get0(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 201
    new-instance v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    #@14
    iget-object v3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    #@16
    iget-object v3, v3, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    #@18
    invoke-direct {v1, v3, v4}, Landroid/service/media/MediaBrowserService$ConnectionRecord;-><init>(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    #@1b
    .line 202
    .local v1, "connection":Landroid/service/media/MediaBrowserService$ConnectionRecord;
    iget-object v3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$pkg:Ljava/lang/String;

    #@1d
    iput-object v3, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pkg:Ljava/lang/String;

    #@1f
    .line 203
    iget-object v3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$rootHints:Landroid/os/Bundle;

    #@21
    iput-object v3, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->rootHints:Landroid/os/Bundle;

    #@23
    .line 204
    iget-object v3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@25
    iput-object v3, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@27
    .line 206
    iget-object v3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    #@29
    iget-object v3, v3, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    #@2b
    iget-object v4, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$pkg:Ljava/lang/String;

    #@2d
    iget v5, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$uid:I

    #@2f
    iget-object v6, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$rootHints:Landroid/os/Bundle;

    #@31
    invoke-virtual {v3, v4, v5, v6}, Landroid/service/media/MediaBrowserService;->onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;

    #@34
    move-result-object v3

    #@35
    iput-object v3, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    #@37
    .line 209
    iget-object v3, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    #@39
    if-nez v3, :cond_1

    #@3b
    .line 210
    const-string/jumbo v3, "MediaBrowserService"

    #@3e
    new-instance v4, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v5, "No root for client "

    #@46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    iget-object v5, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$pkg:Ljava/lang/String;

    #@4c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    const-string/jumbo v5, " from service "

    #@53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    .line 211
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5a
    move-result-object v5

    #@5b
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5e
    move-result-object v5

    #@5f
    .line 210
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v4

    #@67
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@6a
    .line 213
    :try_start_0
    iget-object v3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@6c
    invoke-interface {v3}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onConnectFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6f
    .line 195
    :cond_0
    :goto_0
    return-void

    #@70
    .line 214
    :catch_0
    move-exception v2

    #@71
    .line 215
    .local v2, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "MediaBrowserService"

    #@74
    new-instance v4, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v5, "Calling onConnectFailed() failed. Ignoring. pkg="

    #@7c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v4

    #@80
    .line 216
    iget-object v5, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$pkg:Ljava/lang/String;

    #@82
    .line 215
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v4

    #@86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v4

    #@8a
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@8d
    goto :goto_0

    #@8e
    .line 220
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    #@90
    iget-object v3, v3, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    #@92
    invoke-static {v3}, Landroid/service/media/MediaBrowserService;->-get0(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    #@95
    move-result-object v3

    #@96
    invoke-virtual {v3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@99
    .line 221
    iget-object v3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    #@9b
    iget-object v3, v3, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    #@9d
    iget-object v3, v3, Landroid/service/media/MediaBrowserService;->mSession:Landroid/media/session/MediaSession$Token;

    #@9f
    if-eqz v3, :cond_0

    #@a1
    .line 222
    iget-object v3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@a3
    iget-object v4, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    #@a5
    invoke-virtual {v4}, Landroid/service/media/MediaBrowserService$BrowserRoot;->getRootId()Ljava/lang/String;

    #@a8
    move-result-object v4

    #@a9
    .line 223
    iget-object v5, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    #@ab
    iget-object v5, v5, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    #@ad
    iget-object v5, v5, Landroid/service/media/MediaBrowserService;->mSession:Landroid/media/session/MediaSession$Token;

    #@af
    iget-object v6, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    #@b1
    invoke-virtual {v6}, Landroid/service/media/MediaBrowserService$BrowserRoot;->getExtras()Landroid/os/Bundle;

    #@b4
    move-result-object v6

    #@b5
    .line 222
    invoke-interface {v3, v4, v5, v6}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onConnect(Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@b8
    goto :goto_0

    #@b9
    .line 225
    :catch_1
    move-exception v2

    #@ba
    .line 226
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "MediaBrowserService"

    #@bd
    new-instance v4, Ljava/lang/StringBuilder;

    #@bf
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c2
    const-string/jumbo v5, "Calling onConnect() failed. Dropping client. pkg="

    #@c5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v4

    #@c9
    .line 227
    iget-object v5, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$pkg:Ljava/lang/String;

    #@cb
    .line 226
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v4

    #@cf
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v4

    #@d3
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d6
    .line 228
    iget-object v3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    #@d8
    iget-object v3, v3, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    #@da
    invoke-static {v3}, Landroid/service/media/MediaBrowserService;->-get0(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    #@dd
    move-result-object v3

    #@de
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@e1
    goto :goto_0
.end method
