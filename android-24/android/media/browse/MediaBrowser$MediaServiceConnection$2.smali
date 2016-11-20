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
.field final synthetic this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

.field final synthetic val$name:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/media/browse/MediaBrowser$MediaServiceConnection;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/browse/MediaBrowser$MediaServiceConnection;
    .param p2, "val$name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 992
    iput-object p1, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$2;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    #@2
    iput-object p2, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$2;->val$name:Landroid/content/ComponentName;

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
    const/4 v2, 0x0

    #@1
    .line 1003
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$2;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    #@3
    const-string/jumbo v1, "onServiceDisconnected"

    #@6
    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->-wrap0(Landroid/media/browse/MediaBrowser$MediaServiceConnection;Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 1004
    return-void

    #@d
    .line 1008
    :cond_0
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$2;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    #@f
    iget-object v0, v0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    #@11
    invoke-static {v0, v2}, Landroid/media/browse/MediaBrowser;->-set3(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserService;)Landroid/service/media/IMediaBrowserService;

    #@14
    .line 1009
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$2;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    #@16
    iget-object v0, v0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    #@18
    invoke-static {v0, v2}, Landroid/media/browse/MediaBrowser;->-set4(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@1b
    .line 1012
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$2;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    #@1d
    iget-object v0, v0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    #@1f
    const/4 v1, 0x3

    #@20
    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->-set5(Landroid/media/browse/MediaBrowser;I)I

    #@23
    .line 1013
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$2;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    #@25
    iget-object v0, v0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    #@27
    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->-get0(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$ConnectionCallback;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;->onConnectionSuspended()V

    #@2e
    .line 994
    return-void
.end method
