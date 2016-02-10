.class Lcom/google/android/maps/MapView$1;
.super Lcom/google/android/maps/GestureDetector$SimpleOnGestureListener;
.source "MapView.java"


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
    .line 330
    iput-object p1, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    #@2
    invoke-direct {p0}, Lcom/google/android/maps/GestureDetector$SimpleOnGestureListener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 338
    iget-object v0, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    #@3
    invoke-static {v0}, Lcom/google/android/maps/MapView;->-get6(Lcom/google/android/maps/MapView;)Landroid/widget/Scroller;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 339
    iget-object v0, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    #@f
    invoke-static {v0}, Lcom/google/android/maps/MapView;->-get6(Lcom/google/android/maps/MapView;)Landroid/widget/Scroller;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    #@16
    .line 341
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    #@18
    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapView;->displayZoomControls(Z)V

    #@1b
    .line 342
    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    #@0
    .prologue
    const/16 v6, 0x320

    #@2
    const/16 v1, 0x190

    #@4
    const/4 v5, 0x0

    #@5
    .line 364
    iget-object v0, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    #@7
    invoke-static {v0}, Lcom/google/android/maps/MapView;->-get6(Lcom/google/android/maps/MapView;)Landroid/widget/Scroller;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    #@e
    .line 365
    iget-object v0, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    #@10
    invoke-static {v0, v1}, Lcom/google/android/maps/MapView;->-set0(Lcom/google/android/maps/MapView;I)I

    #@13
    .line 366
    iget-object v0, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    #@15
    invoke-static {v0, v1}, Lcom/google/android/maps/MapView;->-set1(Lcom/google/android/maps/MapView;I)I

    #@18
    .line 371
    iget-object v0, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    #@1a
    invoke-static {v0}, Lcom/google/android/maps/MapView;->-get6(Lcom/google/android/maps/MapView;)Landroid/widget/Scroller;

    #@1d
    move-result-object v0

    #@1e
    iget-object v1, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    #@20
    invoke-static {v1}, Lcom/google/android/maps/MapView;->-get4(Lcom/google/android/maps/MapView;)I

    #@23
    move-result v1

    #@24
    iget-object v2, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    #@26
    invoke-static {v2}, Lcom/google/android/maps/MapView;->-get4(Lcom/google/android/maps/MapView;)I

    #@29
    move-result v2

    #@2a
    .line 372
    neg-float v3, p3

    #@2b
    float-to-int v3, v3

    #@2c
    div-int/lit8 v3, v3, 0x2

    #@2e
    neg-float v4, p4

    #@2f
    float-to-int v4, v4

    #@30
    div-int/lit8 v4, v4, 0x2

    #@32
    move v7, v5

    #@33
    move v8, v6

    #@34
    .line 371
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    #@37
    .line 374
    iget-object v0, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    #@39
    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->postInvalidate()V

    #@3c
    .line 375
    return v5
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    #@0
    .prologue
    .line 348
    iget-object v1, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapView;->displayZoomControls(Z)V

    #@6
    .line 349
    iget-object v1, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    #@8
    invoke-static {v1}, Lcom/google/android/maps/MapView;->-get9(Lcom/google/android/maps/MapView;)Lcom/google/android/maps/ZoomHelper;

    #@b
    move-result-object v1

    #@c
    float-to-int v2, p3

    #@d
    float-to-int v3, p4

    #@e
    invoke-virtual {v1, v2, v3}, Lcom/google/android/maps/ZoomHelper;->scrollBy(II)V

    #@11
    .line 350
    iget-object v1, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    #@13
    invoke-static {v1}, Lcom/google/android/maps/MapView;->-get9(Lcom/google/android/maps/MapView;)Lcom/google/android/maps/ZoomHelper;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Lcom/google/android/maps/ZoomHelper;->getCurrentScale()F

    #@1a
    move-result v1

    #@1b
    const/high16 v2, 0x3f800000    # 1.0f

    #@1d
    div-float v0, v2, v1

    #@1f
    .line 351
    .local v0, "scale":F
    iget-object v1, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    #@21
    invoke-static {v1}, Lcom/google/android/maps/MapView;->-get1(Lcom/google/android/maps/MapView;)Lcom/google/android/maps/MapController;

    #@24
    move-result-object v1

    #@25
    mul-float v2, p3, v0

    #@27
    float-to-int v2, v2

    #@28
    mul-float v3, p4, v0

    #@2a
    float-to-int v3, v3

    #@2b
    invoke-virtual {v1, v2, v3}, Lcom/google/android/maps/MapController;->scrollBy(II)V

    #@2e
    .line 352
    const/4 v1, 0x1

    #@2f
    return v1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 357
    iget-object v1, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    #@2
    invoke-static {v1}, Lcom/google/android/maps/MapView;->-get2(Lcom/google/android/maps/MapView;)Lcom/google/android/maps/PixelConverter;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@9
    move-result v2

    #@a
    float-to-int v2, v2

    #@b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@e
    move-result v3

    #@f
    float-to-int v3, v3

    #@10
    invoke-virtual {v1, v2, v3}, Lcom/google/android/maps/PixelConverter;->fromPixels(II)Lcom/google/android/maps/GeoPoint;

    #@13
    move-result-object v0

    #@14
    .line 358
    .local v0, "point":Lcom/google/android/maps/GeoPoint;
    iget-object v1, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    #@16
    invoke-static {v1}, Lcom/google/android/maps/MapView;->-get5(Lcom/google/android/maps/MapView;)Lcom/google/android/maps/OverlayBundle;

    #@19
    move-result-object v1

    #@1a
    iget-object v2, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    #@1c
    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/OverlayBundle;->onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z

    #@1f
    move-result v1

    #@20
    return v1
.end method
