.class Landroid/media/tv/tuner/Tuner$1;
.super Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;
.source "Tuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/Tuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/tuner/Tuner;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/tuner/Tuner;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/tv/tuner/Tuner;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 336
    iput-object p1, p0, Landroid/media/tv/tuner/Tuner$1;->this$0:Landroid/media/tv/tuner/Tuner;

    invoke-direct {p0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onReclaimResources()V
    .registers 4

    .line 339
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner$1;->this$0:Landroid/media/tv/tuner/Tuner;

    invoke-static {v0}, Landroid/media/tv/tuner/Tuner;->-$$Nest$fgetmFrontend(Landroid/media/tv/tuner/Tuner;)Landroid/media/tv/tuner/Tuner$Frontend;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 340
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner$1;->this$0:Landroid/media/tv/tuner/Tuner;

    invoke-static {v0}, Landroid/media/tv/tuner/Tuner;->-$$Nest$fgetmUserId(Landroid/media/tv/tuner/Tuner;)I

    move-result v0

    .line 341
    const/16 v1, 0x114

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 344
    :cond_14
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner$1;->this$0:Landroid/media/tv/tuner/Tuner;

    invoke-static {v0}, Landroid/media/tv/tuner/Tuner;->-$$Nest$mreleaseAll(Landroid/media/tv/tuner/Tuner;)V

    .line 345
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner$1;->this$0:Landroid/media/tv/tuner/Tuner;

    invoke-static {v0}, Landroid/media/tv/tuner/Tuner;->-$$Nest$fgetmHandler(Landroid/media/tv/tuner/Tuner;)Landroid/media/tv/tuner/Tuner$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner$1;->this$0:Landroid/media/tv/tuner/Tuner;

    invoke-static {v1}, Landroid/media/tv/tuner/Tuner;->-$$Nest$fgetmHandler(Landroid/media/tv/tuner/Tuner;)Landroid/media/tv/tuner/Tuner$EventHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/tv/tuner/Tuner$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/tv/tuner/Tuner$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 346
    return-void
.end method
