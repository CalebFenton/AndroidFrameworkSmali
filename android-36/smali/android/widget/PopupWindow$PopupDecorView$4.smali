.class Landroid/widget/PopupWindow$PopupDecorView$4;
.super Ljava/lang/Object;
.source "PopupWindow.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PopupWindow$PopupDecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/PopupWindow$PopupDecorView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/PopupWindow$PopupDecorView;)V
    .registers 2
    .param p1, "this$1"    # Landroid/widget/PopupWindow$PopupDecorView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2719
    iput-object p1, p0, Landroid/widget/PopupWindow$PopupDecorView$4;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .line 2721
    return-void
.end method

.method public whitelist onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 2725
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2727
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView$4;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2728
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView$4;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 2730
    :cond_10
    return-void
.end method
