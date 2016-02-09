.class Landroid/view/ScaleGestureDetector$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ScaleGestureDetector;


# direct methods
.method constructor <init>(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ScaleGestureDetector;

    #@0
    .prologue
    .line 485
    iput-object p1, p0, Landroid/view/ScaleGestureDetector$1;->this$0:Landroid/view/ScaleGestureDetector;

    #@2
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 489
    iget-object v0, p0, Landroid/view/ScaleGestureDetector$1;->this$0:Landroid/view/ScaleGestureDetector;

    #@3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@6
    move-result v1

    #@7
    invoke-static {v0, v1}, Landroid/view/ScaleGestureDetector;->-set1(Landroid/view/ScaleGestureDetector;F)F

    #@a
    .line 490
    iget-object v0, p0, Landroid/view/ScaleGestureDetector$1;->this$0:Landroid/view/ScaleGestureDetector;

    #@c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@f
    move-result v1

    #@10
    invoke-static {v0, v1}, Landroid/view/ScaleGestureDetector;->-set2(Landroid/view/ScaleGestureDetector;F)F

    #@13
    .line 491
    iget-object v0, p0, Landroid/view/ScaleGestureDetector$1;->this$0:Landroid/view/ScaleGestureDetector;

    #@15
    invoke-static {v0, v2}, Landroid/view/ScaleGestureDetector;->-set0(Landroid/view/ScaleGestureDetector;I)I

    #@18
    .line 492
    return v2
.end method
