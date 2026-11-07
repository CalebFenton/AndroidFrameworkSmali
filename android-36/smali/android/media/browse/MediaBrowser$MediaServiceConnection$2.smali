.class Landroid/media/browse/MediaBrowser$MediaServiceConnection$2;
.super Ljava/lang/Object;
.source "MediaBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/browse/MediaBrowser$MediaServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

.field final synthetic blacklist val$name:Landroid/content/ComponentName;


# direct methods
.method constructor blacklist <init>(Landroid/media/browse/MediaBrowser$MediaServiceConnection;Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "this$1"    # Landroid/media/browse/MediaBrowser$MediaServiceConnection;
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

    .line 1049
    iput-object p1, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$2;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iput-object p2, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$2;->val$name:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 1060
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$2;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->-$$Nest$misCurrent(Landroid/media/browse/MediaBrowser$MediaServiceConnection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1061
    return-void

    .line 1065
    :cond_b
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$2;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iget-object v0, v0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->-$$Nest$fputmServiceBinder(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserService;)V

    .line 1066
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$2;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iget-object v0, v0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->-$$Nest$fputmServiceCallbacks(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    .line 1069
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$2;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iget-object v0, v0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->-$$Nest$fputmState(Landroid/media/browse/MediaBrowser;I)V

    .line 1070
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$2;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iget-object v0, v0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->-$$Nest$fgetmCallback(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$ConnectionCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;->onConnectionSuspended()V

    .line 1071
    return-void
.end method
