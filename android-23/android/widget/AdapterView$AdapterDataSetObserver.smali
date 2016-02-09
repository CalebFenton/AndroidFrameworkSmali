.class Landroid/widget/AdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Landroid/widget/AdapterView;


# direct methods
.method constructor <init>(Landroid/widget/AdapterView;)V
    .locals 1

    #@0
    .prologue
    .line 811
    .local p0, "this":Landroid/widget/AdapterView$AdapterDataSetObserver;, "Landroid/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    .local p1, "this$0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    #@2
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    #@5
    .line 813
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    #@8
    .line 811
    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    #@0
    .prologue
    .line 858
    .local p0, "this":Landroid/widget/AdapterView$AdapterDataSetObserver;, "Landroid/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    #@3
    .line 857
    return-void
.end method

.method public onChanged()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Landroid/widget/AdapterView$AdapterDataSetObserver;, "Landroid/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    const/4 v2, 0x0

    #@1
    .line 817
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    #@3
    const/4 v1, 0x1

    #@4
    iput-boolean v1, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    #@6
    .line 818
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    #@8
    iget-object v1, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    #@a
    iget v1, v1, Landroid/widget/AdapterView;->mItemCount:I

    #@c
    iput v1, v0, Landroid/widget/AdapterView;->mOldItemCount:I

    #@e
    .line 819
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    #@10
    iget-object v1, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    #@12
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    #@15
    move-result-object v1

    #@16
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    #@19
    move-result v1

    #@1a
    iput v1, v0, Landroid/widget/AdapterView;->mItemCount:I

    #@1c
    .line 823
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    #@1e
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    #@21
    move-result-object v0

    #@22
    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_0

    #@28
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    #@2a
    if-eqz v0, :cond_0

    #@2c
    .line 824
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    #@2e
    iget v0, v0, Landroid/widget/AdapterView;->mOldItemCount:I

    #@30
    if-nez v0, :cond_0

    #@32
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    #@34
    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    #@36
    if-lez v0, :cond_0

    #@38
    .line 825
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    #@3a
    iget-object v1, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    #@3c
    invoke-static {v0, v1}, Landroid/widget/AdapterView;->-wrap2(Landroid/widget/AdapterView;Landroid/os/Parcelable;)V

    #@3f
    .line 826
    iput-object v2, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    #@41
    .line 830
    :goto_0
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    #@43
    invoke-virtual {v0}, Landroid/widget/AdapterView;->checkFocus()V

    #@46
    .line 831
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    #@48
    invoke-virtual {v0}, Landroid/widget/AdapterView;->requestLayout()V

    #@4b
    .line 816
    return-void

    #@4c
    .line 828
    :cond_0
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    #@4e
    invoke-virtual {v0}, Landroid/widget/AdapterView;->rememberSyncState()V

    #@51
    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 6

    #@0
    .prologue
    .local p0, "this":Landroid/widget/AdapterView$AdapterDataSetObserver;, "Landroid/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    const-wide/high16 v4, -0x8000000000000000L

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v2, -0x1

    #@4
    .line 836
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    #@6
    const/4 v1, 0x1

    #@7
    iput-boolean v1, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    #@9
    .line 838
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    #@b
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    #@e
    move-result-object v0

    #@f
    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 841
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    #@17
    invoke-static {v0}, Landroid/widget/AdapterView;->-wrap0(Landroid/widget/AdapterView;)Landroid/os/Parcelable;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    #@1d
    .line 845
    :cond_0
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    #@1f
    iget-object v1, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    #@21
    iget v1, v1, Landroid/widget/AdapterView;->mItemCount:I

    #@23
    iput v1, v0, Landroid/widget/AdapterView;->mOldItemCount:I

    #@25
    .line 846
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    #@27
    iput v3, v0, Landroid/widget/AdapterView;->mItemCount:I

    #@29
    .line 847
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    #@2b
    iput v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@2d
    .line 848
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    #@2f
    iput-wide v4, v0, Landroid/widget/AdapterView;->mSelectedRowId:J

    #@31
    .line 849
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    #@33
    iput v2, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    #@35
    .line 850
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    #@37
    iput-wide v4, v0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    #@39
    .line 851
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    #@3b
    iput-boolean v3, v0, Landroid/widget/AdapterView;->mNeedSync:Z

    #@3d
    .line 853
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    #@3f
    invoke-virtual {v0}, Landroid/widget/AdapterView;->checkFocus()V

    #@42
    .line 854
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    #@44
    invoke-virtual {v0}, Landroid/widget/AdapterView;->requestLayout()V

    #@47
    .line 835
    return-void
.end method
