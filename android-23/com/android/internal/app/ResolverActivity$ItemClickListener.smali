.class Lcom/android/internal/app/ResolverActivity$ItemClickListener;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;

    #@0
    .prologue
    .line 1624
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1628
    instance-of v3, p1, Landroid/widget/ListView;

    #@4
    if-eqz v3, :cond_1

    #@6
    move-object v2, p1

    #@7
    check-cast v2, Landroid/widget/ListView;

    #@9
    .line 1629
    :goto_0
    if-eqz v2, :cond_0

    #@b
    .line 1630
    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    #@e
    move-result v3

    #@f
    sub-int/2addr p3, v3

    #@10
    .line 1632
    :cond_0
    if-gez p3, :cond_2

    #@12
    .line 1634
    return-void

    #@13
    .line 1628
    :cond_1
    const/4 v2, 0x0

    #@14
    .local v2, "listView":Landroid/widget/ListView;
    goto :goto_0

    #@15
    .line 1636
    .end local v2    # "listView":Landroid/widget/ListView;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@17
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get1(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/AbsListView;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    #@1e
    move-result v0

    #@1f
    .line 1637
    .local v0, "checkedPos":I
    const/4 v3, -0x1

    #@20
    if-eq v0, v3, :cond_5

    #@22
    const/4 v1, 0x1

    #@23
    .line 1638
    .local v1, "hasValidSelection":Z
    :goto_1
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@25
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get2(Lcom/android/internal/app/ResolverActivity;)Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_6

    #@2b
    if-eqz v1, :cond_3

    #@2d
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@2f
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get3(Lcom/android/internal/app/ResolverActivity;)I

    #@32
    move-result v3

    #@33
    if-eq v3, v0, :cond_6

    #@35
    .line 1639
    :cond_3
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@37
    invoke-static {v3, v1, v0, v5}, Lcom/android/internal/app/ResolverActivity;->-wrap0(Lcom/android/internal/app/ResolverActivity;ZIZ)V

    #@3a
    .line 1640
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@3c
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get4(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    #@43
    .line 1641
    if-eqz v1, :cond_4

    #@45
    .line 1642
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@47
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get1(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/AbsListView;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v3, v0}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    #@4e
    .line 1644
    :cond_4
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@50
    invoke-static {v3, v0}, Lcom/android/internal/app/ResolverActivity;->-set0(Lcom/android/internal/app/ResolverActivity;I)I

    #@53
    .line 1627
    :goto_2
    return-void

    #@54
    .line 1637
    .end local v1    # "hasValidSelection":Z
    :cond_5
    const/4 v1, 0x0

    #@55
    .restart local v1    # "hasValidSelection":Z
    goto :goto_1

    #@56
    .line 1646
    :cond_6
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@58
    invoke-virtual {v3, p3, v4, v5}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    #@5b
    goto :goto_2
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1652
    instance-of v2, p1, Landroid/widget/ListView;

    #@4
    if-eqz v2, :cond_1

    #@6
    move-object v0, p1

    #@7
    check-cast v0, Landroid/widget/ListView;

    #@9
    .line 1653
    :goto_0
    if-eqz v0, :cond_0

    #@b
    .line 1654
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    #@e
    move-result v2

    #@f
    sub-int/2addr p3, v2

    #@10
    .line 1656
    :cond_0
    if-gez p3, :cond_2

    #@12
    .line 1658
    return v3

    #@13
    .line 1652
    :cond_1
    const/4 v0, 0x0

    #@14
    .local v0, "listView":Landroid/widget/ListView;
    goto :goto_0

    #@15
    .line 1660
    .end local v0    # "listView":Landroid/widget/ListView;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@17
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->-get0(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p3, v4}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    #@1e
    move-result-object v1

    #@1f
    .line 1661
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@21
    invoke-virtual {v2, v1}, Lcom/android/internal/app/ResolverActivity;->showAppDetails(Landroid/content/pm/ResolveInfo;)V

    #@24
    .line 1662
    return v4
.end method
