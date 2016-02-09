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
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ActionBarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/ActionBarView;

    #@0
    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$1;->this$0:Lcom/android/internal/widget/ActionBarView;

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
    .line 140
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$1;->this$0:Lcom/android/internal/widget/ActionBarView;

    #@2
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->-get3(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    #@5
    move-result-object v1

    #@6
    iget-object v0, v1, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@8
    .line 141
    .local v0, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    if-eqz v0, :cond_0

    #@a
    .line 142
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    #@d
    .line 139
    :cond_0
    return-void
.end method
