.class Lcom/android/internal/widget/ActionBarView$1;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/ActionBarView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/ActionBarView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/widget/ActionBarView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$1;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 142
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$1;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$fgetmExpandedMenuPresenter(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 143
    .local v0, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    if-eqz v0, :cond_d

    .line 144
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 146
    :cond_d
    return-void
.end method
