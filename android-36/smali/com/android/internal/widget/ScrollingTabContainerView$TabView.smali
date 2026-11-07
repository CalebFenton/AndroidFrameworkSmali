.class Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
.super Landroid/widget/LinearLayout;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabView"
.end annotation


# instance fields
.field private greylist-max-o mCustomView:Landroid/view/View;

.field private greylist-max-o mIconView:Landroid/widget/ImageView;

.field private greylist-max-o mTab:Landroid/app/ActionBar$Tab;

.field private greylist-max-o mTextView:Landroid/widget/TextView;

.field final synthetic blacklist this$0:Lcom/android/internal/widget/ScrollingTabContainerView;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)V
    .registers 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "tab"    # Landroid/app/ActionBar$Tab;
    .param p4, "forList"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 380
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 381
    const/4 p1, 0x0

    const v0, 0x10102f3

    invoke-direct {p0, p2, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 382
    iput-object p3, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    .line 384
    if-eqz p4, :cond_13

    .line 385
    const p1, 0x800013

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setGravity(I)V

    .line 388
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 389
    return-void
.end method


# virtual methods
.method public greylist-max-o bindTab(Landroid/app/ActionBar$Tab;)V
    .registers 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .line 392
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    .line 393
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 394
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 408
    const-class v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getTab()Landroid/app/ActionBar$Tab;
    .registers 2

    .line 491
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method public whitelist onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 413
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 416
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    if-lez v0, :cond_20

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    iget v1, v1, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    if-le v0, v1, :cond_20

    .line 417
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 420
    :cond_20
    return-void
.end method

.method public whitelist setSelected(Z)V
    .registers 4
    .param p1, "selected"    # Z

    .line 398
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 399
    .local v0, "changed":Z
    :goto_9
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 400
    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    .line 401
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->sendAccessibilityEvent(I)V

    .line 403
    :cond_14
    return-void
.end method

.method public greylist-max-o update()V
    .registers 13

    .line 423
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    .line 424
    .local v0, "tab":Landroid/app/ActionBar$Tab;
    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 425
    .local v1, "custom":Landroid/view/View;
    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_37

    .line 426
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 427
    .local v4, "customParent":Landroid/view/ViewParent;
    if-eq v4, p0, :cond_1c

    .line 428
    if-eqz v4, :cond_19

    move-object v5, v4

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 429
    :cond_19
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 431
    :cond_1c
    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 432
    iget-object v5, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_27

    iget-object v5, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
    :cond_27
    iget-object v5, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v5, :cond_35

    .line 434
    iget-object v5, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 435
    iget-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 437
    .end local v4    # "customParent":Landroid/view/ViewParent;
    :cond_35
    goto/16 :goto_e1

    .line 438
    :cond_37
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    if-eqz v4, :cond_42

    .line 439
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->removeView(Landroid/view/View;)V

    .line 440
    iput-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 443
    :cond_42
    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 444
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 446
    .local v5, "text":Ljava/lang/CharSequence;
    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v8, -0x2

    if-eqz v4, :cond_77

    .line 447
    iget-object v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v9, :cond_6c

    .line 448
    new-instance v9, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 449
    .local v9, "iconView":Landroid/widget/ImageView;
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 451
    .local v10, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 452
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    invoke-virtual {p0, v9, v7}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;I)V

    .line 454
    iput-object v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    .line 456
    .end local v9    # "iconView":Landroid/widget/ImageView;
    .end local v10    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6c
    iget-object v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 457
    iget-object v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_85

    .line 458
    :cond_77
    iget-object v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v9, :cond_85

    .line 459
    iget-object v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 460
    iget-object v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 463
    :cond_85
    :goto_85
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    .line 464
    .local v9, "hasText":Z
    if-eqz v9, :cond_bc

    .line 465
    iget-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v2, :cond_b1

    .line 466
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x10102f5

    invoke-direct {v2, v10, v3, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 468
    .local v2, "textView":Landroid/widget/TextView;
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 469
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 471
    .restart local v10    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 472
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 473
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 474
    iput-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    .line 476
    .end local v2    # "textView":Landroid/widget/TextView;
    .end local v10    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_b1
    iget-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_ca

    .line 478
    :cond_bc
    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_ca

    .line 479
    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 480
    iget-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    :cond_ca
    :goto_ca
    iget-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_d7

    .line 484
    iget-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 486
    :cond_d7
    if-eqz v9, :cond_da

    goto :goto_de

    :cond_da
    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    :goto_de
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 488
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "text":Ljava/lang/CharSequence;
    .end local v9    # "hasText":Z
    :goto_e1
    return-void
.end method
