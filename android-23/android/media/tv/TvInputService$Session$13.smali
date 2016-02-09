.class Landroid/media/tv/TvInputService$Session$13;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$Session;->layoutSurface(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/tv/TvInputService$Session;

.field final synthetic val$bottom:I

.field final synthetic val$left:I

.field final synthetic val$right:I

.field final synthetic val$top:I


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputService$Session;IIII)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/tv/TvInputService$Session;
    .param p2, "val$left"    # I
    .param p3, "val$top"    # I
    .param p4, "val$right"    # I
    .param p5, "val$bottom"    # I

    #@0
    .prologue
    .line 668
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$13;->this$1:Landroid/media/tv/TvInputService$Session;

    #@2
    iput p2, p0, Landroid/media/tv/TvInputService$Session$13;->val$left:I

    #@4
    iput p3, p0, Landroid/media/tv/TvInputService$Session$13;->val$top:I

    #@6
    iput p4, p0, Landroid/media/tv/TvInputService$Session$13;->val$right:I

    #@8
    iput p5, p0, Landroid/media/tv/TvInputService$Session$13;->val$bottom:I

    #@a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 674
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$13;->this$1:Landroid/media/tv/TvInputService$Session;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->-get3(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    #@5
    move-result-object v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 675
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$13;->this$1:Landroid/media/tv/TvInputService$Session;

    #@a
    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->-get3(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    #@d
    move-result-object v1

    #@e
    iget v2, p0, Landroid/media/tv/TvInputService$Session$13;->val$left:I

    #@10
    iget v3, p0, Landroid/media/tv/TvInputService$Session$13;->val$top:I

    #@12
    iget v4, p0, Landroid/media/tv/TvInputService$Session$13;->val$right:I

    #@14
    iget v5, p0, Landroid/media/tv/TvInputService$Session$13;->val$bottom:I

    #@16
    invoke-interface {v1, v2, v3, v4, v5}, Landroid/media/tv/ITvInputSessionCallback;->onLayoutSurface(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 670
    :cond_0
    :goto_0
    return-void

    #@1a
    .line 677
    :catch_0
    move-exception v0

    #@1b
    .line 678
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TvInputService"

    #@1e
    const-string/jumbo v2, "error in layoutSurface"

    #@21
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@24
    goto :goto_0
.end method
