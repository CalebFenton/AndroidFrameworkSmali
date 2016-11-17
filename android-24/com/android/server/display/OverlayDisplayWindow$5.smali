.class Lcom/android/server/display/OverlayDisplayWindow$5;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "OverlayDisplayWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/OverlayDisplayWindow;


# direct methods
.method constructor <init>(Lcom/android/server/display/OverlayDisplayWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/OverlayDisplayWindow;

    #@0
    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow$5;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    #@2
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    #@0
    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$5;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    #@2
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayWindow;->-get4(Lcom/android/server/display/OverlayDisplayWindow;)F

    #@5
    move-result v1

    #@6
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    #@9
    move-result v2

    #@a
    mul-float/2addr v1, v2

    #@b
    invoke-static {v0, v1}, Lcom/android/server/display/OverlayDisplayWindow;->-set0(Lcom/android/server/display/OverlayDisplayWindow;F)F

    #@e
    .line 379
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$5;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    #@10
    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayWindow;->relayout()V

    #@13
    .line 380
    const/4 v0, 0x1

    #@14
    return v0
.end method
