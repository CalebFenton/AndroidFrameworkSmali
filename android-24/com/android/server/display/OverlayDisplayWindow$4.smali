.class Lcom/android/server/display/OverlayDisplayWindow$4;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
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
    .line 363
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow$4;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    #@2
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    #@0
    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$4;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    #@2
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayWindow;->-get5(Lcom/android/server/display/OverlayDisplayWindow;)F

    #@5
    move-result v1

    #@6
    sub-float/2addr v1, p3

    #@7
    invoke-static {v0, v1}, Lcom/android/server/display/OverlayDisplayWindow;->-set1(Lcom/android/server/display/OverlayDisplayWindow;F)F

    #@a
    .line 368
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$4;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    #@c
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayWindow;->-get6(Lcom/android/server/display/OverlayDisplayWindow;)F

    #@f
    move-result v1

    #@10
    sub-float/2addr v1, p4

    #@11
    invoke-static {v0, v1}, Lcom/android/server/display/OverlayDisplayWindow;->-set2(Lcom/android/server/display/OverlayDisplayWindow;F)F

    #@14
    .line 369
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$4;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    #@16
    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayWindow;->relayout()V

    #@19
    .line 370
    const/4 v0, 0x1

    #@1a
    return v0
.end method
