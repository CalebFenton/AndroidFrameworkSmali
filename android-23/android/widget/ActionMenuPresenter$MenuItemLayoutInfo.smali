.class Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MenuItemLayoutInfo"
.end annotation


# instance fields
.field left:I

.field top:I

.field view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "preLayout"    # Z

    #@0
    .prologue
    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1022
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    #@9
    .line 1023
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    #@f
    .line 1024
    if-eqz p2, :cond_0

    #@11
    .line 1027
    iget v0, p0, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    #@13
    int-to-float v0, v0

    #@14
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    #@17
    move-result v1

    #@18
    add-float/2addr v0, v1

    #@19
    float-to-int v0, v0

    #@1a
    iput v0, p0, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    #@1c
    .line 1028
    iget v0, p0, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    #@1e
    int-to-float v0, v0

    #@1f
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    #@22
    move-result v1

    #@23
    add-float/2addr v0, v1

    #@24
    float-to-int v0, v0

    #@25
    iput v0, p0, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    #@27
    .line 1030
    :cond_0
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    #@29
    .line 1021
    return-void
.end method
