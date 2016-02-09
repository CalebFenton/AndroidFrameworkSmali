.class Lcom/android/server/display/OverlayDisplayWindow$3;
.super Ljava/lang/Object;
.source "OverlayDisplayWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 338
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow$3;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 342
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    #@3
    move-result v0

    #@4
    .line 343
    .local v0, "oldX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    #@7
    move-result v1

    #@8
    .line 344
    .local v1, "oldY":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    #@b
    move-result v2

    #@c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    #@f
    move-result v3

    #@10
    invoke-virtual {p2, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    #@13
    .line 346
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayWindow$3;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    #@15
    invoke-static {v2}, Lcom/android/server/display/OverlayDisplayWindow;->-get2(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/GestureDetector;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@1c
    .line 347
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayWindow$3;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    #@1e
    invoke-static {v2}, Lcom/android/server/display/OverlayDisplayWindow;->-get7(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/ScaleGestureDetector;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@25
    .line 349
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    #@28
    move-result v2

    #@29
    packed-switch v2, :pswitch_data_0

    #@2c
    .line 357
    :goto_0
    :pswitch_0
    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    #@2f
    .line 358
    const/4 v2, 0x1

    #@30
    return v2

    #@31
    .line 352
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayWindow$3;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    #@33
    invoke-static {v2}, Lcom/android/server/display/OverlayDisplayWindow;->-wrap1(Lcom/android/server/display/OverlayDisplayWindow;)V

    #@36
    goto :goto_0

    #@37
    .line 349
    nop

    #@38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
