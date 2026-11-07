.class final Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;
.super Ljava/lang/Object;
.source "LocalFloatingToolbarPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OverflowPanelViewHelper"
.end annotation


# instance fields
.field private final blacklist mCalculator:Landroid/view/View;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mIconTextSpacing:I

.field private final blacklist mSidePadding:I


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconTextSpacing"    # I

    .line 1402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1403
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->mContext:Landroid/content/Context;

    .line 1404
    iput p2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->mIconTextSpacing:I

    .line 1405
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1406
    const v1, 0x1050195

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->mSidePadding:I

    .line 1407
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->createMenuButton(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->mCalculator:Landroid/view/View;

    .line 1408
    return-void
.end method

.method private blacklist createMenuButton(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 6
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 1431
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->mIconTextSpacing:I

    .line 1432
    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->shouldShowIcon(Landroid/view/MenuItem;)Z

    move-result v2

    .line 1431
    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$smcreateMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;IZ)Landroid/view/View;

    move-result-object v0

    .line 1433
    .local v0, "button":Landroid/view/View;
    iget v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->mSidePadding:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->mSidePadding:I

    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1434
    return-object v0
.end method

.method private blacklist shouldShowIcon(Landroid/view/MenuItem;)Z
    .registers 5
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 1438
    const/4 v0, 0x0

    if-eqz p1, :cond_e

    .line 1439
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    const v2, 0x1020041

    if-ne v1, v2, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0

    .line 1441
    :cond_e
    return v0
.end method


# virtual methods
.method public blacklist calculateWidth(Landroid/view/MenuItem;)I
    .registers 5
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 1423
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->mCalculator:Landroid/view/View;

    iget v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->mIconTextSpacing:I

    .line 1424
    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->shouldShowIcon(Landroid/view/MenuItem;)Z

    move-result v2

    .line 1423
    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$smupdateMenuItemButton(Landroid/view/View;Landroid/view/MenuItem;IZ)V

    .line 1425
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->mCalculator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 1427
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->mCalculator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public blacklist getView(Landroid/view/MenuItem;ILandroid/view/View;)Landroid/view/View;
    .registers 6
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "minimumWidth"    # I
    .param p3, "convertView"    # Landroid/view/View;

    .line 1411
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    if-eqz p3, :cond_f

    .line 1413
    iget v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->mIconTextSpacing:I

    .line 1414
    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->shouldShowIcon(Landroid/view/MenuItem;)Z

    move-result v1

    .line 1413
    invoke-static {p3, p1, v0, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$smupdateMenuItemButton(Landroid/view/View;Landroid/view/MenuItem;IZ)V

    goto :goto_13

    .line 1416
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->createMenuButton(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p3

    .line 1418
    :goto_13
    invoke-virtual {p3, p2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1419
    return-object p3
.end method
