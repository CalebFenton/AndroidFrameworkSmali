.class Landroid/widget/PopupWindow$PopupDecorView$1$1;
.super Landroid/transition/Transition$EpicenterCallback;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PopupWindow$PopupDecorView$1;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$epicenter:Landroid/graphics/Rect;


# direct methods
.method constructor blacklist <init>(Landroid/widget/PopupWindow$PopupDecorView$1;Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "this$2"    # Landroid/widget/PopupWindow$PopupDecorView$1;
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

    .line 2606
    iput-object p2, p0, Landroid/widget/PopupWindow$PopupDecorView$1$1;->val$epicenter:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .registers 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 2609
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView$1$1;->val$epicenter:Landroid/graphics/Rect;

    return-object v0
.end method
