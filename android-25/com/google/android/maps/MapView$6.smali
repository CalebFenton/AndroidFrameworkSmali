.class Lcom/google/android/maps/MapView$6;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Landroid/widget/ZoomButtonsController$OnZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/maps/MapView;->createZoomButtonsController()Landroid/widget/ZoomButtonsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mTempPoint:Landroid/graphics/Point;

.field final synthetic this$0:Lcom/google/android/maps/MapView;

.field final synthetic val$controller:Landroid/widget/ZoomButtonsController;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapView;Landroid/widget/ZoomButtonsController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/android/maps/MapView;
    .param p2, "val$controller"    # Landroid/widget/ZoomButtonsController;

    #@0
    .prologue
    .line 1448
    iput-object p1, p0, Lcom/google/android/maps/MapView$6;->this$0:Lcom/google/android/maps/MapView;

    #@2
    iput-object p2, p0, Lcom/google/android/maps/MapView$6;->val$controller:Landroid/widget/ZoomButtonsController;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 1449
    new-instance v0, Landroid/graphics/Point;

    #@9
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    #@c
    iput-object v0, p0, Lcom/google/android/maps/MapView$6;->mTempPoint:Landroid/graphics/Point;

    #@e
    .line 1448
    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .locals 2
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 1475
    if-eqz p1, :cond_0

    #@2
    .line 1476
    iget-object v0, p0, Lcom/google/android/maps/MapView$6;->this$0:Lcom/google/android/maps/MapView;

    #@4
    invoke-static {v0}, Lcom/google/android/maps/MapView;->-wrap0(Lcom/google/android/maps/MapView;)V

    #@7
    .line 1474
    :goto_0
    return-void

    #@8
    .line 1478
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/MapView$6;->val$controller:Landroid/widget/ZoomButtonsController;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setFocusable(Z)V

    #@e
    goto :goto_0
.end method

.method public onZoom(Z)V
    .locals 1
    .param p1, "zoomIn"    # Z

    #@0
    .prologue
    .line 1483
    iget-object v0, p0, Lcom/google/android/maps/MapView$6;->this$0:Lcom/google/android/maps/MapView;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapView;->doZoom(Z)Z

    #@5
    .line 1482
    return-void
.end method
