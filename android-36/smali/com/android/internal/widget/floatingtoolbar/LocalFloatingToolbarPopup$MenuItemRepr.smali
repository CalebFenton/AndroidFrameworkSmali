.class public final Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;
.super Ljava/lang/Object;
.source "LocalFloatingToolbarPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MenuItemRepr"
.end annotation


# instance fields
.field public final blacklist groupId:I

.field public final blacklist itemId:I

.field private final blacklist mIcon:Landroid/graphics/drawable/Drawable;

.field public final blacklist title:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "itemId"    # I
    .param p2, "groupId"    # I
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 1573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1574
    iput p1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->itemId:I

    .line 1575
    iput p2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->groupId:I

    .line 1576
    if-nez p3, :cond_b

    const/4 v0, 0x0

    goto :goto_f

    :cond_b
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_f
    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->title:Ljava/lang/String;

    .line 1577
    iput-object p4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1578
    return-void
.end method

.method public static blacklist of(Landroid/view/MenuItem;)Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;
    .registers 6
    .param p0, "menuItem"    # Landroid/view/MenuItem;

    .line 1584
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;

    .line 1585
    invoke-interface {p0}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 1586
    invoke-interface {p0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    .line 1587
    invoke-interface {p0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1588
    invoke-interface {p0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;-><init>(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 1584
    return-object v0
.end method

.method public static blacklist reprEquals(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/MenuItem;",
            ">;",
            "Ljava/util/Collection<",
            "Landroid/view/MenuItem;",
            ">;)Z"
        }
    .end annotation

    .line 1624
    .local p0, "menuItems1":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/MenuItem;>;"
    .local p1, "menuItems2":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/MenuItem;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 1625
    return v2

    .line 1628
    :cond_c
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1629
    .local v0, "menuItems2Iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/MenuItem;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MenuItem;

    .line 1630
    .local v3, "menuItem1":Landroid/view/MenuItem;
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/MenuItem;

    .line 1631
    .local v4, "menuItem2":Landroid/view/MenuItem;
    invoke-static {v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->of(Landroid/view/MenuItem;)Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;

    move-result-object v5

    invoke-static {v4}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->of(Landroid/view/MenuItem;)Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    .line 1632
    return v2

    .line 1634
    .end local v3    # "menuItem1":Landroid/view/MenuItem;
    .end local v4    # "menuItem2":Landroid/view/MenuItem;
    :cond_35
    goto :goto_14

    .line 1636
    :cond_36
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1604
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 1605
    return v0

    .line 1607
    :cond_4
    instance-of v1, p1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1608
    return v2

    .line 1610
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;

    .line 1611
    .local v1, "other":Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;
    iget v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->itemId:I

    iget v4, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->itemId:I

    if-ne v3, v4, :cond_2e

    iget v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->groupId:I

    iget v4, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->groupId:I

    if-ne v3, v4, :cond_2e

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->title:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->title:Ljava/lang/String;

    .line 1613
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v4, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1616
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v2

    .line 1611
    :goto_2f
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 1596
    iget v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->itemId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->groupId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->mIcon:Landroid/graphics/drawable/Drawable;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
