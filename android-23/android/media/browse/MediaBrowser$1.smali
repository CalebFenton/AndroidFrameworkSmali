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
.field final synthetic this$0:Landroid/media/browse/MediaBrowser;

.field final synthetic val$thisConnection:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Landroid/media/browse/MediaBrowser;Landroid/content/ServiceConnection;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/browse/MediaBrowser;
    .param p2, "val$thisConnection"    # Landroid/content/ServiceConnection;

    #@0
    .prologue
    .line 158
    iput-object p1, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    #@2
    iput-object p2, p0, Landroid/media/browse/MediaBrowser$1;->val$thisConnection:Landroid/content/ServiceConnection;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$1;->val$thisConnection:Landroid/content/ServiceConnection;

    #@2
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    #@4
    invoke-static {v1}, Landroid/media/browse/MediaBrowser;->-get6(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    #@7
    move-result-object v1

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 163
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    #@c
    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->-wrap3(Landroid/media/browse/MediaBrowser;)V

    #@f
    .line 164
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    #@11
    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->-get0(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$ConnectionCallback;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;->onConnectionFailed()V

    #@18
    .line 160
    :cond_0
    return-void
.end method
