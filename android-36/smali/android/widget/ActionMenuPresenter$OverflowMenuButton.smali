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
.field final synthetic blacklist this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 847
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 848
    const/4 v0, 0x0

    const v1, 0x10102f6

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 850
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setClickable(Z)V

    .line 851
    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setFocusable(Z)V

    .line 852
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setVisibility(I)V

    .line 853
    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setEnabled(Z)V

    .line 855
    new-instance v0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton$1;

    invoke-direct {v0, p0, p0, p1}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton$1;-><init>(Landroid/widget/ActionMenuPresenter$OverflowMenuButton;Landroid/view/View;Landroid/widget/ActionMenuPresenter;)V

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 884
    return-void
.end method


# virtual methods
.method public greylist-max-o needsDividerAfter()Z
    .registers 2

    .line 904
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o needsDividerBefore()Z
    .registers 2

    .line 899
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 910
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 911
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 912
    return-void
.end method

.method public whitelist performClick()Z
    .registers 3

    .line 888
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 889
    return v1

    .line 892
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->playSoundEffect(I)V

    .line 893
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 894
    return v1
.end method

.method protected whitelist setFrame(IIII)Z
    .registers 19
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 916
    invoke-super/range {p0 .. p4}, Landroid/widget/ImageButton;->setFrame(IIII)Z

    move-result v0

    .line 919
    .local v0, "changed":Z
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 920
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 921
    .local v2, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_43

    if-eqz v2, :cond_43

    .line 922
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getWidth()I

    move-result v3

    .line 923
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getHeight()I

    move-result v4

    .line 924
    .local v4, "height":I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 925
    .local v5, "halfEdge":I
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 926
    .local v6, "offsetX":I
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    .line 927
    .local v7, "offsetY":I
    add-int v8, v3, v6

    div-int/lit8 v8, v8, 0x2

    .line 928
    .local v8, "centerX":I
    add-int v9, v4, v7

    div-int/lit8 v9, v9, 0x2

    .line 929
    .local v9, "centerY":I
    sub-int v10, v8, v5

    sub-int v11, v9, v5

    add-int v12, v8, v5

    add-int v13, v9, v5

    invoke-virtual {v2, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 933
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "halfEdge":I
    .end local v6    # "offsetX":I
    .end local v7    # "offsetY":I
    .end local v8    # "centerX":I
    .end local v9    # "centerY":I
    :cond_43
    return v0
.end method
