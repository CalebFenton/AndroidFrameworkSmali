.class Lcom/google/android/maps/MapView$2;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/maps/MapView;->setup(Landroid/com/google/googlenav/map/Map;Landroid/com/google/googlenav/map/TrafficService;Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;)V
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
    .line 380
    iput-object p1, p0, Lcom/google/android/maps/MapView$2;->this$0:Lcom/google/android/maps/MapView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    #@0
    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/android/maps/MapView$2;->this$0:Lcom/google/android/maps/MapView;

    #@2
    invoke-static {v0}, Lcom/google/android/maps/MapView;->-get9(Lcom/google/android/maps/MapView;)Lcom/google/android/maps/ZoomHelper;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    #@9
    move-result v1

    #@a
    .line 388
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    #@d
    move-result v2

    #@e
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    #@11
    move-result v3

    #@12
    .line 387
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/ZoomHelper;->updateZoom(FFF)V

    #@15
    .line 389
    const/4 v0, 0x1

    #@16
    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    #@0
    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/android/maps/MapView$2;->this$0:Lcom/google/android/maps/MapView;

    #@2
    invoke-static {v0}, Lcom/google/android/maps/MapView;->-get9(Lcom/google/android/maps/MapView;)Lcom/google/android/maps/ZoomHelper;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    #@9
    move-result v1

    #@a
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    #@d
    move-result v2

    #@e
    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/ZoomHelper;->beginZoom(FF)V

    #@11
    .line 383
    const/4 v0, 0x1

    #@12
    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    #@0
    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/android/maps/MapView$2;->this$0:Lcom/google/android/maps/MapView;

    #@2
    invoke-static {v0}, Lcom/google/android/maps/MapView;->-get9(Lcom/google/android/maps/MapView;)Lcom/google/android/maps/ZoomHelper;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/google/android/maps/ZoomHelper;->endZoom()V

    #@9
    .line 392
    return-void
.end method
