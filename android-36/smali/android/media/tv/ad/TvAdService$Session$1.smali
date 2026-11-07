.class Landroid/media/tv/ad/TvAdService$Session$1;
.super Ljava/lang/Object;
.source "TvAdService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/ad/TvAdService$Session;->setMediaViewEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/ad/TvAdService$Session;

.field final synthetic blacklist val$enable:Z


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/ad/TvAdService$Session;Z)V
    .registers 3
    .param p1, "this$0"    # Landroid/media/tv/ad/TvAdService$Session;
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

    .line 204
    iput-object p1, p0, Landroid/media/tv/ad/TvAdService$Session$1;->this$0:Landroid/media/tv/ad/TvAdService$Session;

    iput-boolean p2, p0, Landroid/media/tv/ad/TvAdService$Session$1;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 207
    iget-boolean v0, p0, Landroid/media/tv/ad/TvAdService$Session$1;->val$enable:Z

    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$Session$1;->this$0:Landroid/media/tv/ad/TvAdService$Session;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdService$Session;->-$$Nest$fgetmMediaViewEnabled(Landroid/media/tv/ad/TvAdService$Session;)Z

    move-result v1

    if-ne v0, v1, :cond_b

    .line 208
    return-void

    .line 210
    :cond_b
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session$1;->this$0:Landroid/media/tv/ad/TvAdService$Session;

    iget-boolean v1, p0, Landroid/media/tv/ad/TvAdService$Session$1;->val$enable:Z

    invoke-static {v0, v1}, Landroid/media/tv/ad/TvAdService$Session;->-$$Nest$fputmMediaViewEnabled(Landroid/media/tv/ad/TvAdService$Session;Z)V

    .line 211
    iget-boolean v0, p0, Landroid/media/tv/ad/TvAdService$Session$1;->val$enable:Z

    if-eqz v0, :cond_30

    .line 212
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session$1;->this$0:Landroid/media/tv/ad/TvAdService$Session;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdService$Session;->-$$Nest$fgetmWindowToken(Landroid/media/tv/ad/TvAdService$Session;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 213
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session$1;->this$0:Landroid/media/tv/ad/TvAdService$Session;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$Session$1;->this$0:Landroid/media/tv/ad/TvAdService$Session;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdService$Session;->-$$Nest$fgetmWindowToken(Landroid/media/tv/ad/TvAdService$Session;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/ad/TvAdService$Session$1;->this$0:Landroid/media/tv/ad/TvAdService$Session;

    invoke-static {v2}, Landroid/media/tv/ad/TvAdService$Session;->-$$Nest$fgetmMediaFrame(Landroid/media/tv/ad/TvAdService$Session;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/tv/ad/TvAdService$Session;->createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    goto :goto_36

    .line 216
    :cond_30
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session$1;->this$0:Landroid/media/tv/ad/TvAdService$Session;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/tv/ad/TvAdService$Session;->removeMediaView(Z)V

    .line 218
    :cond_36
    :goto_36
    return-void
.end method
