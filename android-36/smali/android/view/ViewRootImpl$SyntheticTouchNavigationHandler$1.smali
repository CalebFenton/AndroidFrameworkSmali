.class Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;-><init>(Landroid/view/ViewRootImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

.field final synthetic blacklist val$this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;Landroid/view/ViewRootImpl;)V
    .registers 3
    .param p1, "this$1"    # Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9020
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    iput-object p2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->val$this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 9025
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 9053
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-static {v0, p3, p4, v1, v2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->-$$Nest$mdispatchFling(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;FFJ)V

    .line 9054
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onLongPress(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 9048
    return-void
.end method

.method public whitelist onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 9042
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 9030
    return-void
.end method

.method public whitelist onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 9034
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->-$$Nest$mdispatchTap(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;J)V

    .line 9035
    const/4 v0, 0x1

    return v0
.end method
