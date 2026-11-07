.class Landroid/media/tv/TvView$1;
.super Ljava/lang/Object;
.source "TvView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvView;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/tv/TvView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 124
    iput-object p1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 9
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 131
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-static {v0, p2}, Landroid/media/tv/TvView;->-$$Nest$fputmSurfaceFormat(Landroid/media/tv/TvView;I)V

    .line 132
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-static {v0, p3}, Landroid/media/tv/TvView;->-$$Nest$fputmSurfaceWidth(Landroid/media/tv/TvView;I)V

    .line 133
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-static {v0, p4}, Landroid/media/tv/TvView;->-$$Nest$fputmSurfaceHeight(Landroid/media/tv/TvView;I)V

    .line 134
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/tv/TvView;->-$$Nest$fputmSurfaceChanged(Landroid/media/tv/TvView;Z)V

    .line 135
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    iget-object v1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-static {v1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSurfaceFormat(Landroid/media/tv/TvView;)I

    move-result v1

    iget-object v2, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-static {v2}, Landroid/media/tv/TvView;->-$$Nest$fgetmSurfaceWidth(Landroid/media/tv/TvView;)I

    move-result v2

    iget-object v3, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-static {v3}, Landroid/media/tv/TvView;->-$$Nest$fgetmSurfaceHeight(Landroid/media/tv/TvView;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/media/tv/TvView;->-$$Nest$mdispatchSurfaceChanged(Landroid/media/tv/TvView;III)V

    .line 136
    return-void
.end method

.method public whitelist surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 140
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/tv/TvView;->-$$Nest$fputmSurface(Landroid/media/tv/TvView;Landroid/view/Surface;)V

    .line 141
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    iget-object v1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-static {v1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSurface(Landroid/media/tv/TvView;)Landroid/view/Surface;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/tv/TvView;->-$$Nest$msetSessionSurface(Landroid/media/tv/TvView;Landroid/view/Surface;)V

    .line 142
    return-void
.end method

.method public whitelist surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 146
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/tv/TvView;->-$$Nest$fputmSurface(Landroid/media/tv/TvView;Landroid/view/Surface;)V

    .line 147
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/media/tv/TvView;->-$$Nest$fputmSurfaceChanged(Landroid/media/tv/TvView;Z)V

    .line 148
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-static {v0, v1}, Landroid/media/tv/TvView;->-$$Nest$msetSessionSurface(Landroid/media/tv/TvView;Landroid/view/Surface;)V

    .line 149
    return-void
.end method
