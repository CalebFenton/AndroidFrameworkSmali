.class Landroid/service/media/MediaBrowserService$ServiceBinder$3;
.super Ljava/lang/Object;
.source "MediaBrowserService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/media/MediaBrowserService$ServiceBinder;->addSubscription(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

.field final synthetic val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/service/media/MediaBrowserService$ServiceBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Landroid/service/media/MediaBrowserService$ServiceBinder;
    .param p2, "val$callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .param p3, "val$id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 234
    iput-object p1, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$3;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    #@2
    iput-object p2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$3;->val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@4
    iput-object p3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$3;->val$id:Ljava/lang/String;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    .line 237
    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$3;->val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@2
    invoke-interface {v2}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    .line 240
    .local v0, "b":Landroid/os/IBinder;
    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$3;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    #@8
    iget-object v2, v2, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    #@a
    invoke-static {v2}, Landroid/service/media/MediaBrowserService;->-get0(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    #@14
    .line 241
    .local v1, "connection":Landroid/service/media/MediaBrowserService$ConnectionRecord;
    if-nez v1, :cond_0

    #@16
    .line 242
    const-string/jumbo v2, "MediaBrowserService"

    #@19
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v4, "addSubscription for callback that isn\'t registered id="

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    .line 243
    iget-object v4, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$3;->val$id:Ljava/lang/String;

    #@27
    .line 242
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 244
    return-void

    #@33
    .line 247
    :cond_0
    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$3;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    #@35
    iget-object v2, v2, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    #@37
    iget-object v3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$3;->val$id:Ljava/lang/String;

    #@39
    invoke-static {v2, v3, v1}, Landroid/service/media/MediaBrowserService;->-wrap1(Landroid/service/media/MediaBrowserService;Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    #@3c
    .line 236
    return-void
.end method
