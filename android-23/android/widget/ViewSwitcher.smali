.class public Landroid/widget/ViewSwitcher;
.super Landroid/widget/ViewAnimator;
.source "ViewSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ViewSwitcher$ViewFactory;
    }
.end annotation


# instance fields
.field mFactory:Landroid/widget/ViewSwitcher$ViewFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    #@3
    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 52
    return-void
.end method

.method private obtainView()Landroid/view/View;
    .locals 4

    #@0
    .prologue
    .line 85
    iget-object v2, p0, Landroid/widget/ViewSwitcher;->mFactory:Landroid/widget/ViewSwitcher$ViewFactory;

    #@2
    invoke-interface {v2}, Landroid/widget/ViewSwitcher$ViewFactory;->makeView()Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    .line 86
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    #@c
    .line 87
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-nez v1, :cond_0

    #@e
    .line 88
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    #@10
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, -0x1

    #@11
    const/4 v3, -0x2

    #@12
    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@15
    .line 90
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@18
    .line 91
    return-object v0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x2

    #@5
    if-lt v0, v1, :cond_0

    #@7
    .line 64
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "Can\'t add more than 2 views to a ViewSwitcher"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 66
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ViewAnimator;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@13
    .line 62
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 71
    const-class v0, Landroid/widget/ViewSwitcher;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNextView()Landroid/view/View;
    .locals 2

    #@0
    .prologue
    .line 80
    iget v1, p0, Landroid/widget/ViewSwitcher;->mWhichChild:I

    #@2
    if-nez v1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    .line 81
    .local v0, "which":I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ViewSwitcher;->getChildAt(I)Landroid/view/View;

    #@8
    move-result-object v1

    #@9
    return-object v1

    #@a
    .line 80
    .end local v0    # "which":I
    :cond_0
    const/4 v0, 0x0

    #@b
    .restart local v0    # "which":I
    goto :goto_0
.end method

.method public reset()V
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x8

    #@2
    const/4 v2, 0x1

    #@3
    .line 113
    iput-boolean v2, p0, Landroid/widget/ViewSwitcher;->mFirstTime:Z

    #@5
    .line 115
    const/4 v1, 0x0

    #@6
    invoke-virtual {p0, v1}, Landroid/widget/ViewSwitcher;->getChildAt(I)Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    .line 116
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    #@c
    .line 117
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    #@f
    .line 119
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/ViewSwitcher;->getChildAt(I)Landroid/view/View;

    #@12
    move-result-object v0

    #@13
    .line 120
    if-eqz v0, :cond_1

    #@15
    .line 121
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    #@18
    .line 112
    :cond_1
    return-void
.end method

.method public setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V
    .locals 0
    .param p1, "factory"    # Landroid/widget/ViewSwitcher$ViewFactory;

    #@0
    .prologue
    .line 103
    iput-object p1, p0, Landroid/widget/ViewSwitcher;->mFactory:Landroid/widget/ViewSwitcher$ViewFactory;

    #@2
    .line 104
    invoke-direct {p0}, Landroid/widget/ViewSwitcher;->obtainView()Landroid/view/View;

    #@5
    .line 105
    invoke-direct {p0}, Landroid/widget/ViewSwitcher;->obtainView()Landroid/view/View;

    #@8
    .line 102
    return-void
.end method
