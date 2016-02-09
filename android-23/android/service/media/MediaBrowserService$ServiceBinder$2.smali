.class Landroid/service/media/MediaBrowserService$ServiceBinder$2;
.super Ljava/lang/Object;
.source "MediaBrowserService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/media/MediaBrowserService$ServiceBinder;->disconnect(Landroid/service/media/IMediaBrowserServiceCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

.field final synthetic val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;


# direct methods
.method constructor <init>(Landroid/service/media/MediaBrowserService$ServiceBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 0
    .param p1, "this$1"    # Landroid/service/media/MediaBrowserService$ServiceBinder;
    .param p2, "val$callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@0
    .prologue
    .line 217
    iput-object p1, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$2;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    #@2
    iput-object p2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$2;->val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

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
    .line 220
    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$2;->val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@2
    invoke-interface {v2}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    .line 223
    .local v0, "b":Landroid/os/IBinder;
    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$2;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    #@8
    iget-object v2, v2, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    #@a
    invoke-static {v2}, Landroid/service/media/MediaBrowserService;->-get0(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    #@14
    .line 224
    .local v1, "old":Landroid/service/media/MediaBrowserService$ConnectionRecord;
    if-eqz v1, :cond_0

    #@16
    .line 219
    :cond_0
    return-void
.end method
