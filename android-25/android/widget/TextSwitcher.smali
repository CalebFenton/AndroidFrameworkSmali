.class public Landroid/widget/TextSwitcher;
.super Landroid/widget/ViewSwitcher;
.source "TextSwitcher.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    #@3
    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 50
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 62
    instance-of v0, p1, Landroid/widget/TextView;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    .line 64
    const-string/jumbo v1, "TextSwitcher children must be instances of TextView"

    #@9
    .line 63
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 67
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@10
    .line 61
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 94
    const-class v0, Landroid/widget/TextSwitcher;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public setCurrentText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->getCurrentView()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/widget/TextView;

    #@6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@9
    .line 88
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->getNextView()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/widget/TextView;

    #@6
    .line 78
    .local v0, "t":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@9
    .line 79
    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->showNext()V

    #@c
    .line 76
    return-void
.end method
