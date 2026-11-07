.class public Lcom/android/internal/app/MicroAlertController;
.super Lcom/android/internal/app/AlertController;
.source "MicroAlertController.java"


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected blacklist setupButtons(Landroid/view/ViewGroup;)V
    .registers 4
    .param p1, "buttonPanel"    # Landroid/view/ViewGroup;

    .line 107
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    .line 108
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_f

    .line 109
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 111
    :cond_f
    return-void
.end method

.method protected blacklist setupContent(Landroid/view/ViewGroup;)V
    .registers 11
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    .line 42
    iget-object v0, p0, Lcom/android/internal/app/MicroAlertController;->mWindow:Landroid/view/Window;

    const v1, 0x10204e1

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/internal/app/MicroAlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 45
    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/MicroAlertController;->mMessageView:Landroid/widget/TextView;

    .line 46
    iget-object v0, p0, Lcom/android/internal/app/MicroAlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_1d

    .line 47
    return-void

    .line 50
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/app/MicroAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2a

    .line 51
    iget-object v0, p0, Lcom/android/internal/app/MicroAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/app/MicroAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a4

    .line 54
    :cond_2a
    iget-object v0, p0, Lcom/android/internal/app/MicroAlertController;->mMessageView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/android/internal/app/MicroAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 57
    iget-object v0, p0, Lcom/android/internal/app/MicroAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_a1

    .line 61
    iget-object v0, p0, Lcom/android/internal/app/MicroAlertController;->mScrollView:Landroid/widget/ScrollView;

    const v1, 0x10205aa

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "topPanel":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 63
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    .local v1, "topParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x30

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object v2, p0, Lcom/android/internal/app/MicroAlertController;->mScrollView:Landroid/widget/ScrollView;

    const v3, 0x1020258

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 70
    .local v2, "buttonPanel":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 71
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 72
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    .local v3, "buttonParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x50

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 74
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v4, p0, Lcom/android/internal/app/MicroAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 78
    .local v4, "scrollParent":Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/android/internal/app/MicroAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 79
    .local v5, "childIndex":I
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 82
    iget-object v6, p0, Lcom/android/internal/app/MicroAlertController;->mListView:Landroid/widget/ListView;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v7, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 90
    .end local v0    # "topPanel":Landroid/view/View;
    .end local v1    # "topParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "buttonPanel":Landroid/view/View;
    .end local v3    # "buttonParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "scrollParent":Landroid/view/ViewGroup;
    .end local v5    # "childIndex":I
    goto :goto_a4

    .line 92
    :cond_a1
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 95
    :goto_a4
    return-void
.end method

.method protected blacklist setupTitle(Landroid/view/ViewGroup;)V
    .registers 4
    .param p1, "topPanel"    # Landroid/view/ViewGroup;

    .line 99
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    .line 100
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_f

    .line 101
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 103
    :cond_f
    return-void
.end method
