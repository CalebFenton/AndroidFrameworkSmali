.class Landroid/service/media/MediaBrowserService$ServiceBinder;
.super Landroid/service/media/IMediaBrowserService$Stub;
.source "MediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/media/MediaBrowserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/media/MediaBrowserService;


# direct methods
.method private constructor <init>(Landroid/service/media/MediaBrowserService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/media/MediaBrowserService;

    #@0
    .prologue
    .line 162
    iput-object p1, p0, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    #@2
    invoke-direct {p0}, Landroid/service/media/IMediaBrowserService$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$ServiceBinder;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/media/MediaBrowserService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/service/media/MediaBrowserService$ServiceBinder;-><init>(Landroid/service/media/MediaBrowserService;)V

    #@3
    return-void
.end method


# virtual methods
.method public addSubscription(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@0
    .prologue
    .line 234
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    #@2
    invoke-static {v0}, Landroid/service/media/MediaBrowserService;->-get1(Landroid/service/media/MediaBrowserService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Landroid/service/media/MediaBrowserService$ServiceBinder$3;

    #@8
    invoke-direct {v1, p0, p2, p1}, Landroid/service/media/MediaBrowserService$ServiceBinder$3;-><init>(Landroid/service/media/MediaBrowserService$ServiceBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;)V

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@e
    .line 233
    return-void
.end method

.method public connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "rootHints"    # Landroid/os/Bundle;
    .param p3, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@0
    .prologue
    .line 167
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v5

    #@4
    .line 168
    .local v5, "uid":I
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    #@6
    invoke-static {v0, p1, v5}, Landroid/service/media/MediaBrowserService;->-wrap0(Landroid/service/media/MediaBrowserService;Ljava/lang/String;I)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "Package/uid mismatch: uid="

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 170
    const-string/jumbo v2, " package="

    #@21
    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 173
    :cond_0
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    #@33
    invoke-static {v0}, Landroid/service/media/MediaBrowserService;->-get1(Landroid/service/media/MediaBrowserService;)Landroid/os/Handler;

    #@36
    move-result-object v6

    #@37
    new-instance v0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;

    #@39
    move-object v1, p0

    #@3a
    move-object v2, p3

    #@3b
    move-object v3, p1

    #@3c
    move-object v4, p2

    #@3d
    invoke-direct/range {v0 .. v5}, Landroid/service/media/MediaBrowserService$ServiceBinder$1;-><init>(Landroid/service/media/MediaBrowserService$ServiceBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/os/Bundle;I)V

    #@40
    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@43
    .line 165
    return-void
.end method

.method public disconnect(Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 2
    .param p1, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@0
    .prologue
    .line 217
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    #@2
    invoke-static {v0}, Landroid/service/media/MediaBrowserService;->-get1(Landroid/service/media/MediaBrowserService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Landroid/service/media/MediaBrowserService$ServiceBinder$2;

    #@8
    invoke-direct {v1, p0, p1}, Landroid/service/media/MediaBrowserService$ServiceBinder$2;-><init>(Landroid/service/media/MediaBrowserService$ServiceBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@e
    .line 216
    return-void
.end method

.method public getMediaItem(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 276
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    if-nez p2, :cond_1

    #@8
    .line 277
    :cond_0
    return-void

    #@9
    .line 280
    :cond_1
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    #@b
    invoke-static {v0}, Landroid/service/media/MediaBrowserService;->-get1(Landroid/service/media/MediaBrowserService;)Landroid/os/Handler;

    #@e
    move-result-object v0

    #@f
    new-instance v1, Landroid/service/media/MediaBrowserService$ServiceBinder$5;

    #@11
    invoke-direct {v1, p0, p1, p2}, Landroid/service/media/MediaBrowserService$ServiceBinder$5;-><init>(Landroid/service/media/MediaBrowserService$ServiceBinder;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    #@14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@17
    .line 275
    return-void
.end method

.method public removeSubscription(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@0
    .prologue
    .line 255
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    #@2
    invoke-static {v0}, Landroid/service/media/MediaBrowserService;->-get1(Landroid/service/media/MediaBrowserService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Landroid/service/media/MediaBrowserService$ServiceBinder$4;

    #@8
    invoke-direct {v1, p0, p2, p1}, Landroid/service/media/MediaBrowserService$ServiceBinder$4;-><init>(Landroid/service/media/MediaBrowserService$ServiceBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;)V

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@e
    .line 254
    return-void
.end method
