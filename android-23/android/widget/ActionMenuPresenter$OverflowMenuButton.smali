.class Landroid/widget/ActionMenuPresenter$OverflowMenuButton;
.super Landroid/widget/ImageButton;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuButton"
.end annotation


# instance fields
.field private final mTempPts:[F

.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 3
    .param p1, "this$0"    # Landroid/widget/ActionMenuPresenter;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 821
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    #@3
    .line 822
    const/4 v0, 0x0

    #@4
    const v1, 0x10102f6

    #@7
    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@a
    .line 819
    const/4 v0, 0x2

    #@b
    new-array v0, v0, [F

    #@d
    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->mTempPts:[F

    #@f
    .line 824
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setClickable(Z)V

    #@12
    .line 825
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setFocusable(Z)V

    #@15
    .line 826
    const/4 v0, 0x0

    #@16
    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setVisibility(I)V

    #@19
    .line 827
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setEnabled(Z)V

    #@1c
    .line 829
    new-instance v0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton$1;

    #@1e
    invoke-direct {v0, p0, p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton$1;-><init>(Landroid/widget/ActionMenuPresenter$OverflowMenuButton;Landroid/view/View;)V

    #@21
    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@24
    .line 821
    return-void
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    #@0
    .prologue
    .line 878
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    #@0
    .prologue
    .line 873
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    .line 884
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 885
    const/4 v0, 0x1

    #@4
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    #@7
    .line 883
    return-void
.end method

.method public performClick()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 862
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 863
    return v1

    #@8
    .line 866
    :cond_0
    const/4 v0, 0x0

    #@9
    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->playSoundEffect(I)V

    #@c
    .line 867
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    #@e
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    #@11
    .line 868
    return v1
.end method

.method protected setFrame(IIII)Z
    .locals 14
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    #@0
    .prologue
    .line 890
    invoke-super/range {p0 .. p4}, Landroid/widget/ImageButton;->setFrame(IIII)Z

    #@3
    move-result v3

    #@4
    .line 893
    .local v3, "changed":Z
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v4

    #@8
    .line 894
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getBackground()Landroid/graphics/drawable/Drawable;

    #@b
    move-result-object v0

    #@c
    .line 895
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 896
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getWidth()I

    #@13
    move-result v9

    #@14
    .line 897
    .local v9, "width":I
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getHeight()I

    #@17
    move-result v6

    #@18
    .line 898
    .local v6, "height":I
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    #@1b
    move-result v10

    #@1c
    div-int/lit8 v5, v10, 0x2

    #@1e
    .line 899
    .local v5, "halfEdge":I
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingLeft()I

    #@21
    move-result v10

    #@22
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingRight()I

    #@25
    move-result v11

    #@26
    sub-int v7, v10, v11

    #@28
    .line 900
    .local v7, "offsetX":I
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingTop()I

    #@2b
    move-result v10

    #@2c
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingBottom()I

    #@2f
    move-result v11

    #@30
    sub-int v8, v10, v11

    #@32
    .line 901
    .local v8, "offsetY":I
    add-int v10, v9, v7

    #@34
    div-int/lit8 v1, v10, 0x2

    #@36
    .line 902
    .local v1, "centerX":I
    add-int v10, v6, v8

    #@38
    div-int/lit8 v2, v10, 0x2

    #@3a
    .line 903
    .local v2, "centerY":I
    sub-int v10, v1, v5

    #@3c
    sub-int v11, v2, v5

    #@3e
    .line 904
    add-int v12, v1, v5

    #@40
    add-int v13, v2, v5

    #@42
    .line 903
    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    #@45
    .line 907
    .end local v1    # "centerX":I
    .end local v2    # "centerY":I
    .end local v5    # "halfEdge":I
    .end local v6    # "height":I
    .end local v7    # "offsetX":I
    .end local v8    # "offsetY":I
    .end local v9    # "width":I
    :cond_0
    return v3
.end method
