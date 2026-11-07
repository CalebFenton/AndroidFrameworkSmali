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
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputService$Session;

.field final synthetic blacklist val$enable:Z


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvInputService$Session;Z)V
    .registers 3
    .param p1, "this$0"    # Landroid/media/tv/TvInputService$Session;
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

    .line 574
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$1;->this$0:Landroid/media/tv/TvInputService$Session;

    iput-boolean p2, p0, Landroid/media/tv/TvInputService$Session$1;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 577
    iget-boolean v0, p0, Landroid/media/tv/TvInputService$Session$1;->val$enable:Z

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$1;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmOverlayViewEnabled(Landroid/media/tv/TvInputService$Session;)Z

    move-result v1

    if-ne v0, v1, :cond_b

    .line 578
    return-void

    .line 580
    :cond_b
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$1;->this$0:Landroid/media/tv/TvInputService$Session;

    iget-boolean v1, p0, Landroid/media/tv/TvInputService$Session$1;->val$enable:Z

    invoke-static {v0, v1}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fputmOverlayViewEnabled(Landroid/media/tv/TvInputService$Session;Z)V

    .line 581
    iget-boolean v0, p0, Landroid/media/tv/TvInputService$Session$1;->val$enable:Z

    if-eqz v0, :cond_30

    .line 582
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$1;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmWindowToken(Landroid/media/tv/TvInputService$Session;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 583
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$1;->this$0:Landroid/media/tv/TvInputService$Session;

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$1;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmWindowToken(Landroid/media/tv/TvInputService$Session;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$1;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v2}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmOverlayFrame(Landroid/media/tv/TvInputService$Session;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/tv/TvInputService$Session;->createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    goto :goto_36

    .line 586
    :cond_30
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$1;->this$0:Landroid/media/tv/TvInputService$Session;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputService$Session;->removeOverlayView(Z)V

    .line 588
    :cond_36
    :goto_36
    return-void
.end method
