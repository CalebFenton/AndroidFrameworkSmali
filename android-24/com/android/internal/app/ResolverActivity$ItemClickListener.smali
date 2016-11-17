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
    .line 1763
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
    const/4 v2, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 1767
    instance-of v3, p1, Landroid/widget/ListView;

    #@5
    if-eqz v3, :cond_0

    #@7
    nop

    #@8
    nop

    #@9
    move-object v2, p1

    #@a
    .line 1768
    .end local p1    # "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    .local v2, "listView":Landroid/widget/ListView;
    :cond_0
    if-eqz v2, :cond_1

    #@c
    .line 1769
    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    #@f
    move-result v3

    #@10
    sub-int/2addr p3, v3

    #@11
    .line 1771
    :cond_1
    if-gez p3, :cond_2

    #@13
    .line 1773
    return-void

    #@14
    .line 1775
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@16
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get1(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/AbsListView;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    #@1d
    move-result v0

    #@1e
    .line 1776
    .local v0, "checkedPos":I
    const/4 v3, -0x1

    #@1f
    if-eq v0, v3, :cond_5

    #@21
    const/4 v1, 0x1

    #@22
    .line 1777
    .local v1, "hasValidSelection":Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@24
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get2(Lcom/android/internal/app/ResolverActivity;)Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_6

    #@2a
    if-eqz v1, :cond_3

    #@2c
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@2e
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get3(Lcom/android/internal/app/ResolverActivity;)I

    #@31
    move-result v3

    #@32
    if-eq v3, v0, :cond_6

    #@34
    .line 1778
    :cond_3
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@36
    invoke-static {v3, v1, v0, v5}, Lcom/android/internal/app/ResolverActivity;->-wrap0(Lcom/android/internal/app/ResolverActivity;ZIZ)V

    #@39
    .line 1779
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@3b
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get4(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    #@42
    .line 1780
    if-eqz v1, :cond_4

    #@44
    .line 1781
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@46
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get1(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/AbsListView;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v3, v0}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    #@4d
    .line 1783
    :cond_4
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@4f
    invoke-static {v3, v0}, Lcom/android/internal/app/ResolverActivity;->-set0(Lcom/android/internal/app/ResolverActivity;I)I

    #@52
    .line 1766
    :goto_1
    return-void

    #@53
    .line 1776
    .end local v1    # "hasValidSelection":Z
    :cond_5
    const/4 v1, 0x0

    #@54
    .restart local v1    # "hasValidSelection":Z
    goto :goto_0

    #@55
    .line 1785
    :cond_6
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@57
    invoke-virtual {v3, p3, v4, v5}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    #@5a
    goto :goto_1
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
    const/4 v0, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 1791
    instance-of v2, p1, Landroid/widget/ListView;

    #@5
    if-eqz v2, :cond_0

    #@7
    nop

    #@8
    nop

    #@9
    move-object v0, p1

    #@a
    .line 1792
    .end local p1    # "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    .local v0, "listView":Landroid/widget/ListView;
    :cond_0
    if-eqz v0, :cond_1

    #@c
    .line 1793
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    #@f
    move-result v2

    #@10
    sub-int/2addr p3, v2

    #@11
    .line 1795
    :cond_1
    if-gez p3, :cond_2

    #@13
    .line 1797
    return v3

    #@14
    .line 1799
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@16
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->-get0(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p3, v4}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    #@1d
    move-result-object v1

    #@1e
    .line 1800
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@20
    invoke-virtual {v2, v1}, Lcom/android/internal/app/ResolverActivity;->showTargetDetails(Landroid/content/pm/ResolveInfo;)V

    #@23
    .line 1801
    return v4
.end method
