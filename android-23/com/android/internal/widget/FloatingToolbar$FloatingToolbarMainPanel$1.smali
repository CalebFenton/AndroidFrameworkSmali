.class Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$1;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    #@0
    .prologue
    .line 1010
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$1;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 1013
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    instance-of v0, v0, Landroid/view/MenuItem;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1014
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$1;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    #@a
    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->-get0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)Landroid/view/MenuItem$OnMenuItemClickListener;

    #@d
    move-result-object v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 1015
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$1;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    #@12
    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->-get0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)Landroid/view/MenuItem$OnMenuItemClickListener;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/view/MenuItem;

    #@1c
    invoke-interface {v1, v0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    #@1f
    .line 1012
    :cond_0
    return-void
.end method
