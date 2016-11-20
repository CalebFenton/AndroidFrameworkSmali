.class Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OffsetDataSetObserver"
.end annotation


# instance fields
.field private mCachedView:Landroid/view/View;

.field private mCachedViewType:I

.field private final mListView:Landroid/widget/AbsListView;

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Landroid/widget/AbsListView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "listView"    # Landroid/widget/AbsListView;

    #@0
    .prologue
    .line 1519
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@2
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    #@5
    .line 1516
    const/4 v0, -0x1

    #@6
    iput v0, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mCachedViewType:I

    #@8
    .line 1520
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mListView:Landroid/widget/AbsListView;

    #@a
    .line 1519
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 1525
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@3
    iget-object v7, v7, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    #@5
    if-nez v7, :cond_0

    #@7
    .line 1526
    return-void

    #@8
    .line 1529
    :cond_0
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@a
    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->-get2(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@d
    move-result-object v7

    #@e
    invoke-virtual {v7}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getServiceTargetRowCount()I

    #@11
    move-result v0

    #@12
    .line 1530
    .local v0, "chooserTargetRows":I
    const/4 v3, 0x0

    #@13
    .line 1531
    .local v3, "offset":I
    const/4 v2, 0x0

    #@14
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    #@16
    .line 1532
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@18
    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->-get2(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@1b
    move-result-object v7

    #@1c
    invoke-virtual {v7}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getCallerTargetRowCount()I

    #@1f
    move-result v7

    #@20
    add-int v4, v7, v2

    #@22
    .line 1533
    .local v4, "pos":I
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@24
    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->-get2(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7, v4}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getItemViewType(I)I

    #@2b
    move-result v6

    #@2c
    .line 1534
    .local v6, "vt":I
    iget v7, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mCachedViewType:I

    #@2e
    if-eq v6, v7, :cond_1

    #@30
    .line 1535
    iput-object v10, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mCachedView:Landroid/view/View;

    #@32
    .line 1537
    :cond_1
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@34
    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->-get2(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@37
    move-result-object v7

    #@38
    iget-object v8, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mCachedView:Landroid/view/View;

    #@3a
    iget-object v9, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mListView:Landroid/widget/AbsListView;

    #@3c
    invoke-virtual {v7, v4, v8, v9}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@3f
    move-result-object v5

    #@40
    .line 1538
    .local v5, "v":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@43
    move-result-object v7

    #@44
    check-cast v7, Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    #@46
    iget v1, v7, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measuredRowHeight:I

    #@48
    .line 1540
    .local v1, "height":I
    int-to-float v7, v1

    #@49
    iget-object v8, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@4b
    invoke-static {v8}, Lcom/android/internal/app/ChooserActivity;->-get2(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@4e
    move-result-object v8

    #@4f
    invoke-static {v8, v4}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->-wrap0(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;I)F

    #@52
    move-result v8

    #@53
    mul-float/2addr v7, v8

    #@54
    float-to-int v7, v7

    #@55
    add-int/2addr v3, v7

    #@56
    .line 1542
    if-ltz v6, :cond_2

    #@58
    .line 1543
    iput v6, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mCachedViewType:I

    #@5a
    .line 1544
    iput-object v5, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mCachedView:Landroid/view/View;

    #@5c
    .line 1531
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@5e
    goto :goto_0

    #@5f
    .line 1546
    :cond_2
    const/4 v7, -0x1

    #@60
    iput v7, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mCachedViewType:I

    #@62
    goto :goto_1

    #@63
    .line 1550
    .end local v1    # "height":I
    .end local v4    # "pos":I
    .end local v5    # "v":Landroid/view/View;
    .end local v6    # "vt":I
    :cond_3
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@65
    iget-object v7, v7, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    #@67
    invoke-virtual {v7, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapsibleHeightReserved(I)V

    #@6a
    .line 1524
    return-void
.end method
