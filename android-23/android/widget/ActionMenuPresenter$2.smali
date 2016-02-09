.class Landroid/widget/ActionMenuPresenter$2;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method constructor <init>(Landroid/widget/ActionMenuPresenter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ActionMenuPresenter;

    #@0
    .prologue
    .line 111
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$2;->this$0:Landroid/widget/ActionMenuPresenter;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 113
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$2;->this$0:Landroid/widget/ActionMenuPresenter;

    #@2
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->-get3(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@b
    move-result-object v0

    #@c
    .line 119
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$2;->this$0:Landroid/widget/ActionMenuPresenter;

    #@e
    invoke-static {v1}, Landroid/widget/ActionMenuPresenter;->-get1(Landroid/widget/ActionMenuPresenter;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@11
    move-result-object v1

    #@12
    .line 118
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@15
    .line 120
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$2;->this$0:Landroid/widget/ActionMenuPresenter;

    #@17
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->-get8(Landroid/widget/ActionMenuPresenter;)Landroid/util/SparseArray;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    #@1e
    .line 121
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$2;->this$0:Landroid/widget/ActionMenuPresenter;

    #@20
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->-get6(Landroid/widget/ActionMenuPresenter;)Landroid/util/SparseArray;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    #@27
    .line 117
    return-void
.end method
