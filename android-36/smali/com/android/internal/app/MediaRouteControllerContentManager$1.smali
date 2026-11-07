.class Lcom/android/internal/app/MediaRouteControllerContentManager$1;
.super Ljava/lang/Object;
.source "MediaRouteControllerContentManager.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/MediaRouteControllerContentManager;->bindViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blacklist mStopTrackingTouch:Ljava/lang/Runnable;

.field final synthetic blacklist this$0:Lcom/android/internal/app/MediaRouteControllerContentManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/MediaRouteControllerContentManager;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/app/MediaRouteControllerContentManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$1;->this$0:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcom/android/internal/app/MediaRouteControllerContentManager$1$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/MediaRouteControllerContentManager$1$1;-><init>(Lcom/android/internal/app/MediaRouteControllerContentManager$1;)V

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$1;->mStopTrackingTouch:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public whitelist onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 127
    if-eqz p3, :cond_b

    .line 128
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$1;->this$0:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->-$$Nest$fgetmRoute(Lcom/android/internal/app/MediaRouteControllerContentManager;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    .line 130
    :cond_b
    return-void
.end method

.method public whitelist onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 110
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$1;->this$0:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->-$$Nest$fgetmVolumeSliderTouched(Lcom/android/internal/app/MediaRouteControllerContentManager;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 111
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$1;->this$0:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->-$$Nest$fgetmVolumeSlider(Lcom/android/internal/app/MediaRouteControllerContentManager;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$1;->mStopTrackingTouch:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1a

    .line 113
    :cond_14
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$1;->this$0:Lcom/android/internal/app/MediaRouteControllerContentManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/app/MediaRouteControllerContentManager;->-$$Nest$fputmVolumeSliderTouched(Lcom/android/internal/app/MediaRouteControllerContentManager;Z)V

    .line 115
    :goto_1a
    return-void
.end method

.method public whitelist onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 122
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$1;->this$0:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->-$$Nest$fgetmVolumeSlider(Lcom/android/internal/app/MediaRouteControllerContentManager;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$1;->mStopTrackingTouch:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    return-void
.end method
