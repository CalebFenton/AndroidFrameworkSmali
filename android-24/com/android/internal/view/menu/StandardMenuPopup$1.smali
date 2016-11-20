.class Lcom/android/internal/view/menu/StandardMenuPopup$1;
.super Ljava/lang/Object;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/StandardMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/StandardMenuPopup;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/StandardMenuPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/view/menu/StandardMenuPopup;

    #@0
    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    #@0
    .prologue
    .line 65
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/view/menu/StandardMenuPopup;->isShowing()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    #@a
    invoke-static {v1}, Lcom/android/internal/view/menu/StandardMenuPopup;->-get1(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/widget/MenuPopupWindow;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Landroid/widget/MenuPopupWindow;->isModal()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 61
    :cond_0
    :goto_0
    return-void

    #@15
    .line 66
    :cond_1
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    #@17
    invoke-static {v1}, Lcom/android/internal/view/menu/StandardMenuPopup;->-get2(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/view/View;

    #@1a
    move-result-object v0

    #@1b
    .line 67
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_2

    #@1d
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_2

    #@23
    .line 71
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    #@25
    invoke-static {v1}, Lcom/android/internal/view/menu/StandardMenuPopup;->-get1(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/widget/MenuPopupWindow;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Landroid/widget/MenuPopupWindow;->show()V

    #@2c
    goto :goto_0

    #@2d
    .line 68
    :cond_2
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    #@2f
    invoke-virtual {v1}, Lcom/android/internal/view/menu/StandardMenuPopup;->dismiss()V

    #@32
    goto :goto_0
.end method
