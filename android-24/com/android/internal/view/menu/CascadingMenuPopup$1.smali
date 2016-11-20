.class Lcom/android/internal/view/menu/CascadingMenuPopup$1;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/CascadingMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/CascadingMenuPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/view/menu/CascadingMenuPopup;

    #@0
    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$1;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 86
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$1;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    #@3
    invoke-virtual {v3}, Lcom/android/internal/view/menu/CascadingMenuPopup;->isShowing()Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_0

    #@9
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$1;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    #@b
    invoke-static {v3}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-get1(Lcom/android/internal/view/menu/CascadingMenuPopup;)Ljava/util/List;

    #@e
    move-result-object v3

    #@f
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@12
    move-result v3

    #@13
    if-lez v3, :cond_0

    #@15
    .line 87
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$1;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    #@17
    invoke-static {v3}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-get1(Lcom/android/internal/view/menu/CascadingMenuPopup;)Ljava/util/List;

    #@1a
    move-result-object v3

    #@1b
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@21
    iget-object v3, v3, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    #@23
    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->isModal()Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_1

    #@29
    .line 82
    :cond_0
    :goto_0
    return-void

    #@2a
    .line 88
    :cond_1
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$1;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    #@2c
    invoke-static {v3}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-get2(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/view/View;

    #@2f
    move-result-object v0

    #@30
    .line 89
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_2

    #@32
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_2

    #@38
    .line 93
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$1;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    #@3a
    invoke-static {v3}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-get1(Lcom/android/internal/view/menu/CascadingMenuPopup;)Ljava/util/List;

    #@3d
    move-result-object v3

    #@3e
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@41
    move-result-object v2

    #@42
    .local v2, "info$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@45
    move-result v3

    #@46
    if-eqz v3, :cond_0

    #@48
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4b
    move-result-object v1

    #@4c
    check-cast v1, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@4e
    .line 94
    .local v1, "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v3, v1, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    #@50
    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->show()V

    #@53
    goto :goto_1

    #@54
    .line 90
    .end local v1    # "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    .end local v2    # "info$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$1;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    #@56
    invoke-virtual {v3}, Lcom/android/internal/view/menu/CascadingMenuPopup;->dismiss()V

    #@59
    goto :goto_0
.end method
