.class Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ReverseLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$Reversible;,
        Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;
    }
.end annotation


# instance fields
.field private blacklist mIsAlternativeOrder:Z

.field private blacklist mIsLayoutReverse:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreverseGroup(Landroid/view/ViewGroup;Z)V
    .registers 2

    invoke-static {p0, p1}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->reverseGroup(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method private static blacklist reverseGroup(Landroid/view/ViewGroup;Z)V
    .registers 5
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "isLayoutReverse"    # Z

    .line 161
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 162
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 163
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v1, p1}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->reverseParams(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Z)V

    .line 166
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1c

    .line 167
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, p1}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->reverseGroup(Landroid/view/ViewGroup;Z)V

    .line 161
    .end local v1    # "child":Landroid/view/View;
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 170
    .end local v0    # "i":I
    :cond_1f
    return-void
.end method

.method private static blacklist reverseParams(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Z)V
    .registers 7
    .param p0, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "isLayoutReverse"    # Z

    .line 109
    instance-of v0, p1, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$Reversible;

    if-eqz v0, :cond_a

    .line 110
    move-object v0, p1

    check-cast v0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$Reversible;

    invoke-interface {v0, p2}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$Reversible;->reverse(Z)V

    .line 112
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    if-ne v0, v1, :cond_31

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    if-ne v0, v1, :cond_31

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 114
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 117
    :cond_31
    if-nez p0, :cond_34

    .line 118
    return-void

    .line 120
    :cond_34
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 121
    .local v0, "width":I
    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 122
    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 123
    return-void
.end method

.method private blacklist updateOrder()V
    .registers 7

    .line 88
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    .line 89
    .local v1, "isLayoutRtl":Z
    :goto_9
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->mIsAlternativeOrder:Z

    xor-int/2addr v0, v1

    .line 91
    .local v0, "isLayoutReverse":Z
    iget-boolean v2, p0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->mIsLayoutReverse:Z

    if-eq v2, v0, :cond_3b

    .line 93
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->getChildCount()I

    move-result v2

    .line 94
    .local v2, "childCount":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    .local v3, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1a
    if-ge v4, v2, :cond_26

    .line 96
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 98
    .end local v4    # "i":I
    :cond_26
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->removeAllViews()V

    .line 99
    add-int/lit8 v4, v2, -0x1

    .restart local v4    # "i":I
    :goto_2b
    if-ltz v4, :cond_39

    .line 100
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 101
    .local v5, "child":Landroid/view/View;
    invoke-super {p0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    .end local v5    # "child":Landroid/view/View;
    add-int/lit8 v4, v4, -0x1

    goto :goto_2b

    .line 103
    .end local v4    # "i":I
    :cond_39
    iput-boolean v0, p0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->mIsLayoutReverse:Z

    .line 105
    .end local v2    # "childCount":I
    .end local v3    # "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_3b
    return-void
.end method


# virtual methods
.method public whitelist addView(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean v1, p0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->mIsLayoutReverse:Z

    invoke-static {v0, p1, v1}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->reverseParams(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Z)V

    .line 55
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->mIsLayoutReverse:Z

    if-eqz v0, :cond_12

    .line 56
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_15

    .line 58
    :cond_12
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 60
    :goto_15
    return-void
.end method

.method public whitelist addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 64
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->mIsLayoutReverse:Z

    invoke-static {p2, p1, v0}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->reverseParams(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Z)V

    .line 65
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->mIsLayoutReverse:Z

    if-eqz v0, :cond_e

    .line 66
    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_11

    .line 68
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    :goto_11
    return-void
.end method

.method protected whitelist onFinishInflate()V
    .registers 1

    .line 48
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 49
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->updateOrder()V

    .line 50
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .registers 2
    .param p1, "layoutDirection"    # I

    .line 74
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 75
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->updateOrder()V

    .line 76
    return-void
.end method

.method public blacklist setAlternativeOrder(Z)V
    .registers 2
    .param p1, "alternative"    # Z

    .line 79
    iput-boolean p1, p0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->mIsAlternativeOrder:Z

    .line 80
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->updateOrder()V

    .line 81
    return-void
.end method
