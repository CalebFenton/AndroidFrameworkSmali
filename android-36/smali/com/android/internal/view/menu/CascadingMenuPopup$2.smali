.class Lcom/android/internal/view/menu/CascadingMenuPopup$2;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/CascadingMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/view/menu/CascadingMenuPopup;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/view/menu/CascadingMenuPopup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$2;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .line 103
    return-void
.end method

.method public whitelist onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$2;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-static {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-$$Nest$fgetmTreeObserver(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 108
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$2;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-static {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-$$Nest$fgetmTreeObserver(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 109
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$2;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-$$Nest$fputmTreeObserver(Lcom/android/internal/view/menu/CascadingMenuPopup;Landroid/view/ViewTreeObserver;)V

    .line 111
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$2;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-static {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-$$Nest$fgetmTreeObserver(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$2;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-static {v1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-$$Nest$fgetmGlobalLayoutListener(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 113
    :cond_2c
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 114
    return-void
.end method
