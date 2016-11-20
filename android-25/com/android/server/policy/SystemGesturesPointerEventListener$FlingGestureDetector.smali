.class final Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SystemGesturesPointerEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SystemGesturesPointerEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FlingGestureDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/SystemGesturesPointerEventListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/SystemGesturesPointerEventListener;

    #@0
    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    #@2
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/SystemGesturesPointerEventListener;Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/SystemGesturesPointerEventListener;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;-><init>(Lcom/android/server/policy/SystemGesturesPointerEventListener;)V

    #@3
    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 14
    .param p1, "down"    # Landroid/view/MotionEvent;
    .param p2, "up"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    #@0
    .prologue
    .line 255
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    #@2
    invoke-static {v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->-get2(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    #@9
    .line 256
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@c
    move-result-wide v12

    #@d
    .line 258
    .local v12, "now":J
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    #@f
    invoke-static {v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->-get1(Lcom/android/server/policy/SystemGesturesPointerEventListener;)J

    #@12
    move-result-wide v2

    #@13
    const-wide/16 v4, 0x0

    #@15
    cmp-long v2, v2, v4

    #@17
    if-eqz v2, :cond_0

    #@19
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    #@1b
    invoke-static {v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->-get1(Lcom/android/server/policy/SystemGesturesPointerEventListener;)J

    #@1e
    move-result-wide v2

    #@1f
    const-wide/16 v4, 0x1388

    #@21
    add-long/2addr v2, v4

    #@22
    cmp-long v2, v12, v2

    #@24
    if-lez v2, :cond_0

    #@26
    .line 259
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    #@28
    invoke-static {v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->-get2(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    #@2b
    move-result-object v2

    #@2c
    const/4 v3, 0x1

    #@2d
    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->forceFinished(Z)V

    #@30
    .line 261
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    #@32
    invoke-static {v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->-get2(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    #@35
    move-result-object v2

    #@36
    move/from16 v0, p3

    #@38
    float-to-int v5, v0

    #@39
    move/from16 v0, p4

    #@3b
    float-to-int v6, v0

    #@3c
    const/4 v3, 0x0

    #@3d
    const/4 v4, 0x0

    #@3e
    .line 262
    const/high16 v7, -0x80000000

    #@40
    const v8, 0x7fffffff

    #@43
    const/high16 v9, -0x80000000

    #@45
    const v10, 0x7fffffff

    #@48
    .line 261
    invoke-virtual/range {v2 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    #@4b
    .line 263
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    #@4d
    invoke-static {v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->-get2(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v2}, Landroid/widget/OverScroller;->getDuration()I

    #@54
    move-result v11

    #@55
    .line 264
    .local v11, "duration":I
    const/16 v2, 0x1388

    #@57
    if-le v11, v2, :cond_1

    #@59
    .line 265
    const/16 v11, 0x1388

    #@5b
    .line 267
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    #@5d
    invoke-static {v2, v12, v13}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->-set0(Lcom/android/server/policy/SystemGesturesPointerEventListener;J)J

    #@60
    .line 268
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    #@62
    invoke-static {v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->-get0(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    #@65
    move-result-object v2

    #@66
    invoke-interface {v2, v11}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onFling(I)V

    #@69
    .line 269
    const/4 v2, 0x1

    #@6a
    return v2
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 247
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    #@3
    invoke-static {v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->-get2(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 248
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    #@f
    invoke-static {v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->-get2(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    #@16
    .line 250
    :cond_0
    return v1
.end method
