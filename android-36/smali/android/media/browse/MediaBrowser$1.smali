.class Landroid/media/browse/MediaBrowser$1;
.super Ljava/lang/Object;
.source "MediaBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/browse/MediaBrowser;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/browse/MediaBrowser;


# direct methods
.method constructor blacklist <init>(Landroid/media/browse/MediaBrowser;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/browse/MediaBrowser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 156
    iput-object p1, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 159
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->-$$Nest$fgetmState(Landroid/media/browse/MediaBrowser;)I

    move-result v0

    if-nez v0, :cond_9

    .line 160
    return-void

    .line 162
    :cond_9
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->-$$Nest$fputmState(Landroid/media/browse/MediaBrowser;I)V

    .line 170
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->-$$Nest$fgetmServiceBinder(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserService;

    move-result-object v0

    if-nez v0, :cond_a0

    .line 174
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->-$$Nest$fgetmServiceCallbacks(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object v0

    if-nez v0, :cond_81

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.browse.MediaBrowserService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v1}, Landroid/media/browse/MediaBrowser;->-$$Nest$fgetmServiceComponent(Landroid/media/browse/MediaBrowser;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 182
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    new-instance v2, Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iget-object v3, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/media/browse/MediaBrowser$MediaServiceConnection;-><init>(Landroid/media/browse/MediaBrowser;Landroid/media/browse/MediaBrowser-IA;)V

    invoke-static {v1, v2}, Landroid/media/browse/MediaBrowser;->-$$Nest$fputmServiceConnection(Landroid/media/browse/MediaBrowser;Landroid/media/browse/MediaBrowser$MediaServiceConnection;)V

    .line 184
    const/4 v1, 0x0

    .line 186
    .local v1, "bound":Z
    :try_start_3d
    iget-object v2, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->-$$Nest$fgetmContext(Landroid/media/browse/MediaBrowser;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v3}, Landroid/media/browse/MediaBrowser;->-$$Nest$fgetmServiceConnection(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    move-result-object v3

    const/16 v4, 0x1001

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4f} :catch_51

    move v1, v2

    .line 190
    goto :goto_70

    .line 188
    :catch_51
    move-exception v2

    .line 189
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed binding to service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v4}, Landroid/media/browse/MediaBrowser;->-$$Nest$fgetmServiceComponent(Landroid/media/browse/MediaBrowser;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaBrowser"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_70
    if-nez v1, :cond_80

    .line 194
    iget-object v2, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->-$$Nest$mforceCloseConnection(Landroid/media/browse/MediaBrowser;)V

    .line 195
    iget-object v2, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->-$$Nest$fgetmCallback(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$ConnectionCallback;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/browse/MediaBrowser$ConnectionCallback;->onConnectionFailed()V

    .line 202
    :cond_80
    return-void

    .line 175
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "bound":Z
    :cond_81
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mServiceCallbacks should be null. Instead it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->-$$Nest$fgetmServiceCallbacks(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_a0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mServiceBinder should be null. Instead it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->-$$Nest$fgetmServiceBinder(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
