.class Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$2;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@0
    .prologue
    .line 1190
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$2;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1193
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$2;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@2
    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->-get1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;)Landroid/widget/ListView;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/view/MenuItem;

    #@10
    .line 1194
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$2;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@12
    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->-get2(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;)Landroid/view/MenuItem$OnMenuItemClickListener;

    #@15
    move-result-object v1

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 1195
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$2;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@1a
    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->-get2(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;)Landroid/view/MenuItem$OnMenuItemClickListener;

    #@1d
    move-result-object v1

    #@1e
    invoke-interface {v1, v0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    #@21
    .line 1192
    :cond_0
    return-void
.end method
