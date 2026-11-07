.class Landroid/widget/PopupWindow$PopupDecorView$3;
.super Landroid/transition/Transition$EpicenterCallback;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PopupWindow$PopupDecorView;->startExitTransition(Landroid/transition/Transition;Landroid/view/View;Landroid/graphics/Rect;Landroid/transition/Transition$TransitionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$epicenter:Landroid/graphics/Rect;


# direct methods
.method constructor blacklist <init>(Landroid/widget/PopupWindow$PopupDecorView;Landroid/graphics/Rect;)V
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

    .line 2684
    iput-object p2, p0, Landroid/widget/PopupWindow$PopupDecorView$3;->val$epicenter:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .registers 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 2687
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView$3;->val$epicenter:Landroid/graphics/Rect;

    return-object v0
.end method
