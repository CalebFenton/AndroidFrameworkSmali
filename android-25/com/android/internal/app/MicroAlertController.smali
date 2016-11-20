.class public Lcom/android/internal/app/MicroAlertController;
.super Lcom/android/internal/app/AlertController;
.source "MicroAlertController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    #@0
    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    #@3
    .line 35
    return-void
.end method


# virtual methods
.method protected setupButtons(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "buttonPanel"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    #@3
    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    #@6
    move-result v0

    #@7
    const/16 v1, 0x8

    #@9
    if-ne v0, v1, :cond_0

    #@b
    .line 109
    const/4 v0, 0x4

    #@c
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    #@f
    .line 106
    :cond_0
    return-void
.end method

.method protected setupContent(Landroid/view/ViewGroup;)V
    .locals 10
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    const/16 v9, 0x8

    #@2
    const/4 v8, -0x1

    #@3
    .line 42
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    #@5
    const v7, 0x102032b

    #@8
    invoke-virtual {v6, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@b
    move-result-object v6

    #@c
    check-cast v6, Landroid/widget/ScrollView;

    #@e
    iput-object v6, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    #@10
    .line 45
    const v6, 0x102000b

    #@13
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@16
    move-result-object v6

    #@17
    check-cast v6, Landroid/widget/TextView;

    #@19
    iput-object v6, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    #@1b
    .line 46
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    #@1d
    if-nez v6, :cond_0

    #@1f
    .line 47
    return-void

    #@20
    .line 50
    :cond_0
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    #@22
    if-eqz v6, :cond_1

    #@24
    .line 51
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    #@26
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    #@28
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@2b
    .line 40
    :goto_0
    return-void

    #@2c
    .line 54
    :cond_1
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    #@2e
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    #@31
    .line 55
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    #@33
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@36
    .line 57
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    #@38
    if-eqz v6, :cond_2

    #@3a
    .line 61
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    #@3c
    const v7, 0x1020323

    #@3f
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@42
    move-result-object v4

    #@43
    .line 62
    .local v4, "topPanel":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@46
    move-result-object v6

    #@47
    check-cast v6, Landroid/view/ViewGroup;

    #@49
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@4c
    .line 64
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    #@4e
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@51
    move-result-object v6

    #@52
    invoke-direct {v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@55
    .line 65
    .local v5, "topParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v6, 0x30

    #@57
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    #@59
    .line 66
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@5c
    .line 69
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    #@5e
    const v7, 0x1020327

    #@61
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@64
    move-result-object v0

    #@65
    .line 70
    .local v0, "buttonPanel":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@68
    move-result-object v6

    #@69
    check-cast v6, Landroid/view/ViewGroup;

    #@6b
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@6e
    .line 72
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    #@70
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@73
    move-result-object v6

    #@74
    invoke-direct {v1, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@77
    .line 73
    .local v1, "buttonParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v6, 0x50

    #@79
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    #@7b
    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@7e
    .line 77
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    #@80
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@83
    move-result-object v3

    #@84
    check-cast v3, Landroid/view/ViewGroup;

    #@86
    .line 78
    .local v3, "scrollParent":Landroid/view/ViewGroup;
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    #@88
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    #@8b
    move-result v2

    #@8c
    .line 79
    .local v2, "childIndex":I
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    #@8f
    .line 82
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    #@91
    .line 83
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    #@93
    invoke-direct {v7, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@96
    .line 82
    invoke-virtual {v3, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@99
    .line 88
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@9c
    .line 89
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@9f
    goto :goto_0

    #@a0
    .line 92
    .end local v0    # "buttonPanel":Landroid/view/View;
    .end local v1    # "buttonParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "childIndex":I
    .end local v3    # "scrollParent":Landroid/view/ViewGroup;
    .end local v4    # "topPanel":Landroid/view/View;
    .end local v5    # "topParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    #@a3
    goto :goto_0
.end method

.method protected setupTitle(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "topPanel"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    #@3
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    #@6
    move-result v0

    #@7
    const/16 v1, 0x8

    #@9
    if-ne v0, v1, :cond_0

    #@b
    .line 101
    const/4 v0, 0x4

    #@c
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    #@f
    .line 98
    :cond_0
    return-void
.end method
