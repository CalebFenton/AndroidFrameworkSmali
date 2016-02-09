.class Landroid/media/browse/MediaBrowser$6;
.super Ljava/lang/Object;
.source "MediaBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/browse/MediaBrowser;->onConnectionFailed(Landroid/service/media/IMediaBrowserServiceCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/browse/MediaBrowser;

.field final synthetic val$callback:Landroid/service/media/IMediaBrowserServiceCallbacks;


# direct methods
.method constructor <init>(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/browse/MediaBrowser;
    .param p2, "val$callback"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@0
    .prologue
    .line 485
    iput-object p1, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    #@2
    iput-object p2, p0, Landroid/media/browse/MediaBrowser$6;->val$callback:Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 488
    const-string/jumbo v0, "MediaBrowser"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "onConnectFailed for "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    #@11
    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->-get5(Landroid/media/browse/MediaBrowser;)Landroid/content/ComponentName;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 492
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    #@22
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$6;->val$callback:Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@24
    const-string/jumbo v2, "onConnectFailed"

    #@27
    invoke-static {v0, v1, v2}, Landroid/media/browse/MediaBrowser;->-wrap1(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;)Z

    #@2a
    move-result v0

    #@2b
    if-nez v0, :cond_0

    #@2d
    .line 493
    return-void

    #@2e
    .line 496
    :cond_0
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    #@30
    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->-get7(Landroid/media/browse/MediaBrowser;)I

    #@33
    move-result v0

    #@34
    const/4 v1, 0x1

    #@35
    if-eq v0, v1, :cond_1

    #@37
    .line 497
    const-string/jumbo v0, "MediaBrowser"

    #@3a
    new-instance v1, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v2, "onConnect from service while mState="

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    .line 498
    iget-object v2, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    #@48
    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->-get7(Landroid/media/browse/MediaBrowser;)I

    #@4b
    move-result v2

    #@4c
    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->-wrap2(I)Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    .line 497
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    .line 498
    const-string/jumbo v2, "... ignoring"

    #@57
    .line 497
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    .line 499
    return-void

    #@63
    .line 503
    :cond_1
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    #@65
    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->-wrap3(Landroid/media/browse/MediaBrowser;)V

    #@68
    .line 506
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    #@6a
    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->-get0(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$ConnectionCallback;

    #@6d
    move-result-object v0

    #@6e
    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;->onConnectionFailed()V

    #@71
    .line 487
    return-void
.end method
