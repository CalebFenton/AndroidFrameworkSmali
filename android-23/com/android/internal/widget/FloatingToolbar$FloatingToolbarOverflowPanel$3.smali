.class Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$3;
.super Landroid/widget/ArrayAdapter;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->createOverflowListView()Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/view/MenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;Landroid/content/Context;ILandroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # I
    .param p4, "val$context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1321
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$3;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@2
    iput-object p4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$3;->val$context:Landroid/content/Context;

    #@4
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    #@7
    return-void
.end method

.method private getIconOnlyView(ILandroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1359
    if-eqz p2, :cond_0

    #@3
    .line 1360
    move-object v0, p2

    #@4
    .line 1365
    .local v0, "menuButton":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$3;->getItem(I)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Landroid/view/MenuItem;

    #@a
    .line 1367
    .local v1, "menuItem":Landroid/view/MenuItem;
    const v2, 0x1020054

    #@d
    .line 1366
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Landroid/widget/ImageView;

    #@13
    .line 1368
    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    #@16
    move-result-object v3

    #@17
    .line 1366
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1a
    .line 1369
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$3;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@1c
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->-get3(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;)I

    #@1f
    move-result v2

    #@20
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    #@23
    .line 1370
    return-object v0

    #@24
    .line 1362
    .end local v0    # "menuButton":Landroid/view/View;
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$3;->val$context:Landroid/content/Context;

    #@26
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@29
    move-result-object v2

    #@2a
    .line 1363
    const v3, 0x109005d

    #@2d
    .line 1362
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@30
    move-result-object v0

    #@31
    .restart local v0    # "menuButton":Landroid/view/View;
    goto :goto_0
.end method

.method private getStringTitleView(ILandroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;

    #@0
    .prologue
    .line 1345
    if-eqz p2, :cond_0

    #@2
    move-object v0, p2

    #@3
    .line 1346
    check-cast v0, Landroid/widget/TextView;

    #@5
    .line 1350
    .local v0, "menuButton":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$3;->getItem(I)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    check-cast v1, Landroid/view/MenuItem;

    #@b
    .line 1351
    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@12
    .line 1352
    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@19
    .line 1353
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$3;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    #@1b
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->-get3(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;)I

    #@1e
    move-result v2

    #@1f
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    #@22
    .line 1354
    return-object v0

    #@23
    .line 1348
    .end local v0    # "menuButton":Landroid/widget/TextView;
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$3;->val$context:Landroid/content/Context;

    #@25
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar;->-wrap5(Landroid/content/Context;)Landroid/widget/TextView;

    #@28
    move-result-object v0

    #@29
    .restart local v0    # "menuButton":Landroid/widget/TextView;
    goto :goto_0
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1329
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$3;->getItem(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/view/MenuItem;

    #@6
    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar;->-wrap6(Landroid/view/MenuItem;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1330
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    .line 1332
    :cond_0
    const/4 v0, 0x0

    #@f
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 1337
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$3;->getItemViewType(I)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 1338
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$3;->getIconOnlyView(ILandroid/view/View;)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 1340
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$3;->getStringTitleView(ILandroid/view/View;)Landroid/view/View;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    #@0
    .prologue
    .line 1324
    const/4 v0, 0x2

    #@1
    return v0
.end method
