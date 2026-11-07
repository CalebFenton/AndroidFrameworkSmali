.class Landroid/media/browse/MediaBrowser$7;
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
.field final synthetic blacklist this$0:Landroid/media/browse/MediaBrowser;

.field final synthetic blacklist val$callback:Landroid/service/media/IMediaBrowserServiceCallbacks;


# direct methods
.method constructor blacklist <init>(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 3
    .param p1, "this$0"    # Landroid/media/browse/MediaBrowser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 628
    iput-object p1, p0, Landroid/media/browse/MediaBrowser$7;->this$0:Landroid/media/browse/MediaBrowser;

    iput-object p2, p0, Landroid/media/browse/MediaBrowser$7;->val$callback:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectFailed for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/browse/MediaBrowser$7;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v1}, Landroid/media/browse/MediaBrowser;->-$$Nest$fgetmServiceComponent(Landroid/media/browse/MediaBrowser;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaBrowser"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$7;->this$0:Landroid/media/browse/MediaBrowser;

    iget-object v2, p0, Landroid/media/browse/MediaBrowser$7;->val$callback:Landroid/service/media/IMediaBrowserServiceCallbacks;

    const-string v3, "onConnectFailed"

    invoke-static {v0, v2, v3}, Landroid/media/browse/MediaBrowser;->-$$Nest$misCurrent(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 636
    return-void

    .line 639
    :cond_2b
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$7;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->-$$Nest$fgetmState(Landroid/media/browse/MediaBrowser;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5b

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnect from service while mState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/media/browse/MediaBrowser$7;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->-$$Nest$fgetmState(Landroid/media/browse/MediaBrowser;)I

    move-result v2

    .line 641
    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->-$$Nest$smgetStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "... ignoring"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 640
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    return-void

    .line 646
    :cond_5b
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$7;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->-$$Nest$mforceCloseConnection(Landroid/media/browse/MediaBrowser;)V

    .line 649
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$7;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->-$$Nest$fgetmCallback(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$ConnectionCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;->onConnectionFailed()V

    .line 650
    return-void
.end method
