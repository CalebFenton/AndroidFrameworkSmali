.class final Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OverflowPanelViewHelper"
.end annotation


# static fields
.field private static final NUM_OF_VIEW_TYPES:I = 0x2

.field private static final VIEW_TYPE_ICON_ONLY:I = 0x1

.field private static final VIEW_TYPE_STRING_TITLE:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIconOnlyViewCalculator:Landroid/view/View;

.field private final mStringTitleViewCalculator:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 1532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1533
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/content/Context;

    #@b
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mContext:Landroid/content/Context;

    #@d
    .line 1534
    invoke-direct {p0, v1, v2, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->getStringTitleView(Landroid/view/MenuItem;ILandroid/view/View;)Landroid/widget/TextView;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mStringTitleViewCalculator:Landroid/widget/TextView;

    #@13
    .line 1535
    invoke-direct {p0, v1, v2, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->getIconOnlyView(Landroid/view/MenuItem;ILandroid/view/View;)Landroid/view/View;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mIconOnlyViewCalculator:Landroid/view/View;

    #@19
    .line 1532
    return-void
.end method

.method private getIconOnlyView(Landroid/view/MenuItem;ILandroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "minimumWidth"    # I
    .param p3, "convertView"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v4, -0x2

    #@1
    const/4 v3, 0x0

    #@2
    .line 1596
    if-eqz p3, :cond_1

    #@4
    .line 1597
    move-object v0, p3

    #@5
    .line 1605
    .local v0, "menuButton":Landroid/view/View;
    :goto_0
    if-eqz p1, :cond_0

    #@7
    .line 1607
    const v1, 0x102005b

    #@a
    .line 1606
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Landroid/widget/ImageView;

    #@10
    .line 1608
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object v2

    #@14
    .line 1606
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@17
    .line 1609
    invoke-virtual {v0, p2}, Landroid/view/View;->setMinimumWidth(I)V

    #@1a
    .line 1611
    :cond_0
    return-object v0

    #@1b
    .line 1599
    .end local v0    # "menuButton":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mContext:Landroid/content/Context;

    #@1d
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@20
    move-result-object v1

    #@21
    .line 1600
    const v2, 0x1090061

    #@24
    .line 1599
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@27
    move-result-object v0

    #@28
    .line 1601
    .restart local v0    # "menuButton":Landroid/view/View;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    #@2a
    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@2d
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@30
    goto :goto_0
.end method

.method private getStringTitleView(Landroid/view/MenuItem;ILandroid/view/View;)Landroid/widget/TextView;
    .locals 4
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "minimumWidth"    # I
    .param p3, "convertView"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1576
    if-eqz p3, :cond_1

    #@3
    move-object v0, p3

    #@4
    .line 1577
    check-cast v0, Landroid/widget/TextView;

    #@6
    .line 1585
    .local v0, "menuButton":Landroid/widget/TextView;
    :goto_0
    if-eqz p1, :cond_0

    #@8
    .line 1586
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@f
    .line 1587
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@16
    .line 1588
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    #@19
    .line 1590
    :cond_0
    return-object v0

    #@1a
    .line 1579
    .end local v0    # "menuButton":Landroid/widget/TextView;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mContext:Landroid/content/Context;

    #@1c
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@1f
    move-result-object v1

    #@20
    .line 1580
    const v2, 0x1090062

    #@23
    .line 1579
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Landroid/widget/TextView;

    #@29
    .line 1581
    .restart local v0    # "menuButton":Landroid/widget/TextView;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    #@2b
    .line 1582
    const/4 v2, -0x1

    #@2c
    .line 1583
    const/4 v3, -0x2

    #@2d
    .line 1581
    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@33
    goto :goto_0
.end method


# virtual methods
.method public calculateWidth(Landroid/view/MenuItem;)I
    .locals 4
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1560
    invoke-static {p1}, Lcom/android/internal/widget/FloatingToolbar;->-wrap5(Landroid/view/MenuItem;)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1561
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mIconOnlyViewCalculator:Landroid/view/View;

    #@9
    .line 1562
    const v2, 0x102005b

    #@c
    .line 1561
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/widget/ImageView;

    #@12
    .line 1563
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    #@15
    move-result-object v2

    #@16
    .line 1561
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@19
    .line 1564
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mIconOnlyViewCalculator:Landroid/view/View;

    #@1b
    .line 1569
    .local v0, "calculator":Landroid/view/View;
    :goto_0
    invoke-virtual {v0, v3, v3}, Landroid/view/View;->measure(II)V

    #@1e
    .line 1570
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@21
    move-result v1

    #@22
    return v1

    #@23
    .line 1566
    .end local v0    # "calculator":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mStringTitleViewCalculator:Landroid/widget/TextView;

    #@25
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@2c
    .line 1567
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mStringTitleViewCalculator:Landroid/widget/TextView;

    #@2e
    .restart local v0    # "calculator":Landroid/view/View;
    goto :goto_0
.end method

.method public getItemViewType(Landroid/view/MenuItem;)I
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 1551
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1552
    invoke-static {p1}, Lcom/android/internal/widget/FloatingToolbar;->-wrap5(Landroid/view/MenuItem;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1553
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 1555
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public getView(Landroid/view/MenuItem;ILandroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "minimumWidth"    # I
    .param p3, "convertView"    # Landroid/view/View;

    #@0
    .prologue
    .line 1543
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1544
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->getItemViewType(Landroid/view/MenuItem;)I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x1

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 1545
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->getIconOnlyView(Landroid/view/MenuItem;ILandroid/view/View;)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 1547
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->getStringTitleView(Landroid/view/MenuItem;ILandroid/view/View;)Landroid/widget/TextView;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    #@0
    .prologue
    .line 1539
    const/4 v0, 0x2

    #@1
    return v0
.end method
