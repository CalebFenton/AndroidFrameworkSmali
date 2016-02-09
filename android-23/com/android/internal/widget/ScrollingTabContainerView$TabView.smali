.class Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
.super Landroid/widget/LinearLayout;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabView"
.end annotation


# instance fields
.field private mCustomView:Landroid/view/View;

.field private mIconView:Landroid/widget/ImageView;

.field private mTab:Landroid/app/ActionBar$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/internal/widget/ScrollingTabContainerView;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/widget/ScrollingTabContainerView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "tab"    # Landroid/app/ActionBar$Tab;
    .param p4, "forList"    # Z

    #@0
    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@2
    .line 370
    const/4 v0, 0x0

    #@3
    const v1, 0x10102f3

    #@6
    invoke-direct {p0, p2, v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@9
    .line 371
    iput-object p3, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    #@b
    .line 373
    if-eqz p4, :cond_0

    #@d
    .line 374
    const v0, 0x800013

    #@10
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setGravity(I)V

    #@13
    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->update()V

    #@16
    .line 369
    return-void
.end method


# virtual methods
.method public bindTab(Landroid/app/ActionBar$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    #@0
    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    #@2
    .line 382
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->update()V

    #@5
    .line 380
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 397
    const-class v0, Landroid/app/ActionBar$Tab;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTab()Landroid/app/ActionBar$Tab;
    .locals 1

    #@0
    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    #@2
    return-object v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 486
    const/4 v6, 0x2

    #@2
    new-array v3, v6, [I

    #@4
    .line 487
    .local v3, "screenPos":[I
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getLocationOnScreen([I)V

    #@7
    .line 489
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    #@a
    move-result-object v1

    #@b
    .line 490
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getWidth()I

    #@e
    move-result v5

    #@f
    .line 491
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getHeight()I

    #@12
    move-result v2

    #@13
    .line 492
    .local v2, "height":I
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@16
    move-result-object v6

    #@17
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@1a
    move-result-object v6

    #@1b
    iget v4, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    #@1d
    .line 494
    .local v4, "screenWidth":I
    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    #@1f
    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    #@22
    move-result-object v6

    #@23
    invoke-static {v1, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    #@26
    move-result-object v0

    #@27
    .line 498
    .local v0, "cheatSheet":Landroid/widget/Toast;
    aget v6, v3, v7

    #@29
    div-int/lit8 v7, v5, 0x2

    #@2b
    add-int/2addr v6, v7

    #@2c
    div-int/lit8 v7, v4, 0x2

    #@2e
    sub-int/2addr v6, v7

    #@2f
    .line 497
    const/16 v7, 0x31

    #@31
    invoke-virtual {v0, v7, v6, v2}, Landroid/widget/Toast;->setGravity(III)V

    #@34
    .line 500
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    #@37
    .line 501
    const/4 v6, 0x1

    #@38
    return v6
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 402
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@3
    .line 405
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@5
    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    #@7
    if-lez v0, :cond_0

    #@9
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getMeasuredWidth()I

    #@c
    move-result v0

    #@d
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@f
    iget v1, v1, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    #@11
    if-le v0, v1, :cond_0

    #@13
    .line 406
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@15
    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    #@17
    const/high16 v1, 0x40000000    # 2.0f

    #@19
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1c
    move-result v0

    #@1d
    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@20
    .line 401
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 2
    .param p1, "selected"    # Z

    #@0
    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->isSelected()Z

    #@3
    move-result v1

    #@4
    if-eq v1, p1, :cond_1

    #@6
    const/4 v0, 0x1

    #@7
    .line 388
    .local v0, "changed":Z
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    #@a
    .line 389
    if-eqz v0, :cond_0

    #@c
    if-eqz p1, :cond_0

    #@e
    .line 390
    const/4 v1, 0x4

    #@f
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->sendAccessibilityEvent(I)V

    #@12
    .line 386
    :cond_0
    return-void

    #@13
    .line 387
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    #@14
    .restart local v0    # "changed":Z
    goto :goto_0
.end method

.method public update()V
    .locals 15

    #@0
    .prologue
    const/16 v14, 0x10

    #@2
    const/16 v10, 0x8

    #@4
    const/4 v13, 0x0

    #@5
    const/4 v12, -0x2

    #@6
    const/4 v11, 0x0

    #@7
    .line 412
    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    #@9
    .line 413
    .local v6, "tab":Landroid/app/ActionBar$Tab;
    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    #@c
    move-result-object v0

    #@d
    .line 414
    .local v0, "custom":Landroid/view/View;
    if-eqz v0, :cond_4

    #@f
    .line 415
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@12
    move-result-object v1

    #@13
    .line 416
    .local v1, "customParent":Landroid/view/ViewParent;
    if-eq v1, p0, :cond_1

    #@15
    .line 417
    if-eqz v1, :cond_0

    #@17
    check-cast v1, Landroid/view/ViewGroup;

    #@19
    .end local v1    # "customParent":Landroid/view/ViewParent;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@1c
    .line 418
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    #@1f
    .line 420
    :cond_1
    iput-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    #@21
    .line 421
    iget-object v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    #@23
    if-eqz v9, :cond_2

    #@25
    iget-object v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    #@27
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    #@2a
    .line 422
    :cond_2
    iget-object v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    #@2c
    if-eqz v9, :cond_3

    #@2e
    .line 423
    iget-object v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    #@30
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    #@33
    .line 424
    iget-object v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    #@35
    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@38
    .line 411
    :cond_3
    :goto_0
    return-void

    #@39
    .line 427
    :cond_4
    iget-object v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    #@3b
    if-eqz v9, :cond_5

    #@3d
    .line 428
    iget-object v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    #@3f
    invoke-virtual {p0, v9}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->removeView(Landroid/view/View;)V

    #@42
    .line 429
    iput-object v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    #@44
    .line 432
    :cond_5
    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    #@47
    move-result-object v3

    #@48
    .line 433
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    #@4b
    move-result-object v7

    #@4c
    .line 435
    .local v7, "text":Ljava/lang/CharSequence;
    if-eqz v3, :cond_c

    #@4e
    .line 436
    iget-object v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    #@50
    if-nez v9, :cond_6

    #@52
    .line 437
    new-instance v4, Landroid/widget/ImageView;

    #@54
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    #@57
    move-result-object v9

    #@58
    invoke-direct {v4, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #@5b
    .line 438
    .local v4, "iconView":Landroid/widget/ImageView;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    #@5d
    invoke-direct {v5, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    #@60
    .line 440
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v14, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    #@62
    .line 441
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@65
    .line 442
    invoke-virtual {p0, v4, v13}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;I)V

    #@68
    .line 443
    iput-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    #@6a
    .line 445
    .end local v4    # "iconView":Landroid/widget/ImageView;
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    iget-object v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    #@6c
    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@6f
    .line 446
    iget-object v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    #@71
    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    #@74
    .line 452
    :cond_7
    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@77
    move-result v9

    #@78
    if-eqz v9, :cond_d

    #@7a
    const/4 v2, 0x0

    #@7b
    .line 453
    .local v2, "hasText":Z
    :goto_2
    if-eqz v2, :cond_e

    #@7d
    .line 454
    iget-object v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    #@7f
    if-nez v9, :cond_8

    #@81
    .line 455
    new-instance v8, Landroid/widget/TextView;

    #@83
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    #@86
    move-result-object v9

    #@87
    .line 456
    const v10, 0x10102f5

    #@8a
    .line 455
    invoke-direct {v8, v9, v11, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@8d
    .line 457
    .local v8, "textView":Landroid/widget/TextView;
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@8f
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@92
    .line 458
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    #@94
    invoke-direct {v5, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    #@97
    .line 460
    .restart local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v14, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    #@99
    .line 461
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@9c
    .line 462
    invoke-virtual {p0, v8}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    #@9f
    .line 463
    iput-object v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    #@a1
    .line 465
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "textView":Landroid/widget/TextView;
    :cond_8
    iget-object v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    #@a3
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@a6
    .line 466
    iget-object v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    #@a8
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    #@ab
    .line 472
    :cond_9
    :goto_3
    iget-object v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    #@ad
    if-eqz v9, :cond_a

    #@af
    .line 473
    iget-object v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    #@b1
    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    #@b4
    move-result-object v10

    #@b5
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@b8
    .line 476
    :cond_a
    if-nez v2, :cond_b

    #@ba
    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    #@bd
    move-result-object v9

    #@be
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@c1
    move-result v9

    #@c2
    if-eqz v9, :cond_f

    #@c4
    .line 479
    :cond_b
    invoke-virtual {p0, v11}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    #@c7
    .line 480
    invoke-virtual {p0, v13}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setLongClickable(Z)V

    #@ca
    goto/16 :goto_0

    #@cc
    .line 447
    .end local v2    # "hasText":Z
    :cond_c
    iget-object v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    #@ce
    if-eqz v9, :cond_7

    #@d0
    .line 448
    iget-object v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    #@d2
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    #@d5
    .line 449
    iget-object v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    #@d7
    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@da
    goto :goto_1

    #@db
    .line 452
    :cond_d
    const/4 v2, 0x1

    #@dc
    .restart local v2    # "hasText":Z
    goto :goto_2

    #@dd
    .line 467
    :cond_e
    iget-object v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    #@df
    if-eqz v9, :cond_9

    #@e1
    .line 468
    iget-object v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    #@e3
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    #@e6
    .line 469
    iget-object v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    #@e8
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@eb
    goto :goto_3

    #@ec
    .line 477
    :cond_f
    invoke-virtual {p0, p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    #@ef
    goto/16 :goto_0
.end method
