.class Landroid/widget/PopupWindow$PopupDecorView$1;
.super Ljava/lang/Object;
.source "PopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PopupWindow$PopupDecorView;->requestEnterTransition(Landroid/transition/Transition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/PopupWindow$PopupDecorView;

.field final synthetic blacklist val$enterTransition:Landroid/transition/Transition;


# direct methods
.method constructor blacklist <init>(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition;)V
    .registers 3
    .param p1, "this$1"    # Landroid/widget/PopupWindow$PopupDecorView;
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

    .line 2597
    iput-object p1, p0, Landroid/widget/PopupWindow$PopupDecorView$1;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    iput-object p2, p0, Landroid/widget/PopupWindow$PopupDecorView$1;->val$enterTransition:Landroid/transition/Transition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onGlobalLayout()V
    .registers 5

    .line 2600
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView$1;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2601
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_b

    .line 2602
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2605
    :cond_b
    iget-object v1, p0, Landroid/widget/PopupWindow$PopupDecorView$1;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v1, v1, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object v1

    .line 2606
    .local v1, "epicenter":Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/widget/PopupWindow$PopupDecorView$1;->val$enterTransition:Landroid/transition/Transition;

    new-instance v3, Landroid/widget/PopupWindow$PopupDecorView$1$1;

    invoke-direct {v3, p0, v1}, Landroid/widget/PopupWindow$PopupDecorView$1$1;-><init>(Landroid/widget/PopupWindow$PopupDecorView$1;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v3}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 2612
    iget-object v2, p0, Landroid/widget/PopupWindow$PopupDecorView$1;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v3, p0, Landroid/widget/PopupWindow$PopupDecorView$1;->val$enterTransition:Landroid/transition/Transition;

    invoke-static {v2, v3}, Landroid/widget/PopupWindow$PopupDecorView;->-$$Nest$mstartEnterTransition(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition;)V

    .line 2613
    return-void
.end method
