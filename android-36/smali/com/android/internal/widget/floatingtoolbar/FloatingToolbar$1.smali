.class Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blacklist mNewRect:Landroid/graphics/Rect;

.field private final blacklist mOldRect:Landroid/graphics/Rect;

.field final synthetic blacklist this$0:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->this$0:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->mNewRect:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->mOldRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public whitelist onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "newLeft"    # I
    .param p3, "newRight"    # I
    .param p4, "newTop"    # I
    .param p5, "newBottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldRight"    # I
    .param p8, "oldTop"    # I
    .param p9, "oldBottom"    # I

    .line 67
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->mNewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 68
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->mOldRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p6, p7, p8, p9}, Landroid/graphics/Rect;->set(IIII)V

    .line 69
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->this$0:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-static {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->-$$Nest$fgetmPopup(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->mNewRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->mOldRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 70
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->this$0:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-static {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->-$$Nest$fgetmPopup(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->setWidthChanged(Z)V

    .line 71
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->this$0:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->updateLayout()Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 73
    :cond_2f
    return-void
.end method
