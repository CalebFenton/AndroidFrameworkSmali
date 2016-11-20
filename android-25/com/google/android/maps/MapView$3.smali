.class Lcom/google/android/maps/MapView$3;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/maps/MapView;->getZoomControls()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/maps/MapView;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/maps/MapView;

    #@0
    .prologue
    .line 1398
    iput-object p1, p0, Lcom/google/android/maps/MapView$3;->this$0:Lcom/google/android/maps/MapView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 1404
    iget-object v0, p0, Lcom/google/android/maps/MapView$3;->this$0:Lcom/google/android/maps/MapView;

    #@2
    invoke-static {v0}, Lcom/google/android/maps/MapView;->-get8(Lcom/google/android/maps/MapView;)Landroid/widget/ZoomControls;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/widget/ZoomControls;->hasFocus()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 1405
    iget-object v0, p0, Lcom/google/android/maps/MapView$3;->this$0:Lcom/google/android/maps/MapView;

    #@e
    invoke-static {v0}, Lcom/google/android/maps/MapView;->-get8(Lcom/google/android/maps/MapView;)Landroid/widget/ZoomControls;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Landroid/widget/ZoomControls;->hide()V

    #@15
    .line 1399
    :goto_0
    return-void

    #@16
    .line 1407
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/MapView$3;->this$0:Lcom/google/android/maps/MapView;

    #@18
    invoke-static {v0}, Lcom/google/android/maps/MapView;->-get3(Lcom/google/android/maps/MapView;)Landroid/os/Handler;

    #@1b
    move-result-object v0

    #@1c
    iget-object v1, p0, Lcom/google/android/maps/MapView$3;->this$0:Lcom/google/android/maps/MapView;

    #@1e
    invoke-static {v1}, Lcom/google/android/maps/MapView;->-get7(Lcom/google/android/maps/MapView;)Ljava/lang/Runnable;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@25
    .line 1408
    iget-object v0, p0, Lcom/google/android/maps/MapView$3;->this$0:Lcom/google/android/maps/MapView;

    #@27
    invoke-static {v0}, Lcom/google/android/maps/MapView;->-get3(Lcom/google/android/maps/MapView;)Landroid/os/Handler;

    #@2a
    move-result-object v0

    #@2b
    .line 1409
    iget-object v1, p0, Lcom/google/android/maps/MapView$3;->this$0:Lcom/google/android/maps/MapView;

    #@2d
    invoke-static {v1}, Lcom/google/android/maps/MapView;->-get7(Lcom/google/android/maps/MapView;)Ljava/lang/Runnable;

    #@30
    move-result-object v1

    #@31
    invoke-static {}, Lcom/google/android/maps/MapView;->-get0()J

    #@34
    move-result-wide v2

    #@35
    .line 1408
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@38
    goto :goto_0
.end method
