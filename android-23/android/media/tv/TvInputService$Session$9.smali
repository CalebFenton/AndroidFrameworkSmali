.class Landroid/media/tv/TvInputService$Session$9;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$Session;->notifyContentBlocked(Landroid/media/tv/TvContentRating;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/tv/TvInputService$Session;

.field final synthetic val$rating:Landroid/media/tv/TvContentRating;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/TvContentRating;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/tv/TvInputService$Session;
    .param p2, "val$rating"    # Landroid/media/tv/TvContentRating;

    #@0
    .prologue
    .line 565
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$9;->this$1:Landroid/media/tv/TvInputService$Session;

    #@2
    iput-object p2, p0, Landroid/media/tv/TvInputService$Session$9;->val$rating:Landroid/media/tv/TvContentRating;

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
    .line 570
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$9;->this$1:Landroid/media/tv/TvInputService$Session;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->-get3(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    #@5
    move-result-object v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 571
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$9;->this$1:Landroid/media/tv/TvInputService$Session;

    #@a
    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->-get3(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    #@d
    move-result-object v1

    #@e
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$9;->val$rating:Landroid/media/tv/TvContentRating;

    #@10
    invoke-virtual {v2}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-interface {v1, v2}, Landroid/media/tv/ITvInputSessionCallback;->onContentBlocked(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 567
    :cond_0
    :goto_0
    return-void

    #@18
    .line 573
    :catch_0
    move-exception v0

    #@19
    .line 574
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TvInputService"

    #@1c
    const-string/jumbo v2, "error in notifyContentBlocked"

    #@1f
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    goto :goto_0
.end method
