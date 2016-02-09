.class Landroid/widget/ActionMenuPresenter$1;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


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
    .line 101
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$1;->this$0:Landroid/widget/ActionMenuPresenter;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$1;->this$0:Landroid/widget/ActionMenuPresenter;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Landroid/widget/ActionMenuPresenter;->-wrap0(Landroid/widget/ActionMenuPresenter;Z)V

    #@6
    .line 105
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$1;->this$0:Landroid/widget/ActionMenuPresenter;

    #@8
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->-get3(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/view/View;

    #@e
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@15
    .line 106
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$1;->this$0:Landroid/widget/ActionMenuPresenter;

    #@17
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->-wrap1(Landroid/widget/ActionMenuPresenter;)V

    #@1a
    .line 107
    const/4 v0, 0x1

    #@1b
    return v0
.end method
