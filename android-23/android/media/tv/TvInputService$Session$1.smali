.class Landroid/media/tv/TvInputService$Session$1;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$Session;->setOverlayViewEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/tv/TvInputService$Session;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputService$Session;Z)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/tv/TvInputService$Session;
    .param p2, "val$enable"    # Z

    #@0
    .prologue
    .line 297
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$1;->this$1:Landroid/media/tv/TvInputService$Session;

    #@2
    iput-boolean p2, p0, Landroid/media/tv/TvInputService$Session$1;->val$enable:Z

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
    .line 300
    iget-boolean v0, p0, Landroid/media/tv/TvInputService$Session$1;->val$enable:Z

    #@2
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$1;->this$1:Landroid/media/tv/TvInputService$Session;

    #@4
    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->-get2(Landroid/media/tv/TvInputService$Session;)Z

    #@7
    move-result v1

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 301
    return-void

    #@b
    .line 303
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$1;->this$1:Landroid/media/tv/TvInputService$Session;

    #@d
    iget-boolean v1, p0, Landroid/media/tv/TvInputService$Session$1;->val$enable:Z

    #@f
    invoke-static {v0, v1}, Landroid/media/tv/TvInputService$Session;->-set1(Landroid/media/tv/TvInputService$Session;Z)Z

    #@12
    .line 304
    iget-boolean v0, p0, Landroid/media/tv/TvInputService$Session$1;->val$enable:Z

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 305
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$1;->this$1:Landroid/media/tv/TvInputService$Session;

    #@18
    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-get6(Landroid/media/tv/TvInputService$Session;)Landroid/os/IBinder;

    #@1b
    move-result-object v0

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 306
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$1;->this$1:Landroid/media/tv/TvInputService$Session;

    #@20
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$1;->this$1:Landroid/media/tv/TvInputService$Session;

    #@22
    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->-get6(Landroid/media/tv/TvInputService$Session;)Landroid/os/IBinder;

    #@25
    move-result-object v1

    #@26
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$1;->this$1:Landroid/media/tv/TvInputService$Session;

    #@28
    invoke-static {v2}, Landroid/media/tv/TvInputService$Session;->-get1(Landroid/media/tv/TvInputService$Session;)Landroid/graphics/Rect;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v0, v1, v2}, Landroid/media/tv/TvInputService$Session;->createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    #@2f
    .line 299
    :cond_1
    :goto_0
    return-void

    #@30
    .line 309
    :cond_2
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$1;->this$1:Landroid/media/tv/TvInputService$Session;

    #@32
    const/4 v1, 0x0

    #@33
    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputService$Session;->removeOverlayView(Z)V

    #@36
    goto :goto_0
.end method
