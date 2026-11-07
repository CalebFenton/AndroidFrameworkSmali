.class Lcom/android/internal/app/MediaRouteControllerContentManager$1$1;
.super Ljava/lang/Object;
.source "MediaRouteControllerContentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MediaRouteControllerContentManager$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/app/MediaRouteControllerContentManager$1;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/MediaRouteControllerContentManager$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/internal/app/MediaRouteControllerContentManager$1;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$1$1;->this$1:Lcom/android/internal/app/MediaRouteControllerContentManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 101
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$1$1;->this$1:Lcom/android/internal/app/MediaRouteControllerContentManager$1;

    iget-object v0, v0, Lcom/android/internal/app/MediaRouteControllerContentManager$1;->this$0:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->-$$Nest$fgetmVolumeSliderTouched(Lcom/android/internal/app/MediaRouteControllerContentManager;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 102
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$1$1;->this$1:Lcom/android/internal/app/MediaRouteControllerContentManager$1;

    iget-object v0, v0, Lcom/android/internal/app/MediaRouteControllerContentManager$1;->this$0:Lcom/android/internal/app/MediaRouteControllerContentManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/app/MediaRouteControllerContentManager;->-$$Nest$fputmVolumeSliderTouched(Lcom/android/internal/app/MediaRouteControllerContentManager;Z)V

    .line 103
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$1$1;->this$1:Lcom/android/internal/app/MediaRouteControllerContentManager$1;

    iget-object v0, v0, Lcom/android/internal/app/MediaRouteControllerContentManager$1;->this$0:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->-$$Nest$mupdateVolume(Lcom/android/internal/app/MediaRouteControllerContentManager;)V

    .line 105
    :cond_19
    return-void
.end method
