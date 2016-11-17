.class final Lcom/android/server/wm/TaskTapPointerEventListener$TwoFingerScrollListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TaskTapPointerEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskTapPointerEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TwoFingerScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/TaskTapPointerEventListener;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/TaskTapPointerEventListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/TaskTapPointerEventListener;

    #@0
    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/server/wm/TaskTapPointerEventListener$TwoFingerScrollListener;->this$0:Lcom/android/server/wm/TaskTapPointerEventListener;

    #@2
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/TaskTapPointerEventListener;Lcom/android/server/wm/TaskTapPointerEventListener$TwoFingerScrollListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/TaskTapPointerEventListener;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskTapPointerEventListener$TwoFingerScrollListener;-><init>(Lcom/android/server/wm/TaskTapPointerEventListener;)V

    #@3
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
    .line 185
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x2

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 186
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener$TwoFingerScrollListener;->this$0:Lcom/android/server/wm/TaskTapPointerEventListener;

    #@9
    invoke-static {v0, p2}, Lcom/android/server/wm/TaskTapPointerEventListener;->-wrap0(Lcom/android/server/wm/TaskTapPointerEventListener;Landroid/view/MotionEvent;)V

    #@c
    .line 187
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener$TwoFingerScrollListener;->this$0:Lcom/android/server/wm/TaskTapPointerEventListener;

    #@10
    invoke-static {v0}, Lcom/android/server/wm/TaskTapPointerEventListener;->-wrap1(Lcom/android/server/wm/TaskTapPointerEventListener;)V

    #@13
    .line 190
    const/4 v0, 0x0

    #@14
    return v0
.end method
