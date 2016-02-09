.class Landroid/widget/AbsListView$PerformClick;
.super Landroid/widget/AbsListView$WindowRunnnable;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    #@0
    .prologue
    .line 3024
    iput-object p1, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView$WindowRunnnable;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$WindowRunnnable;)V

    #@6
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$PerformClick;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;)V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 3031
    iget-object v3, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    #@2
    iget-boolean v3, v3, Landroid/widget/AbsListView;->mDataChanged:Z

    #@4
    if-eqz v3, :cond_0

    #@6
    return-void

    #@7
    .line 3033
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    #@9
    iget-object v0, v3, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@b
    .line 3034
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget v1, p0, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    #@d
    .line 3035
    .local v1, "motionPosition":I
    if-eqz v0, :cond_1

    #@f
    iget-object v3, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    #@11
    iget v3, v3, Landroid/widget/AbsListView;->mItemCount:I

    #@13
    if-lez v3, :cond_1

    #@15
    .line 3036
    const/4 v3, -0x1

    #@16
    if-eq v1, v3, :cond_1

    #@18
    .line 3037
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    #@1b
    move-result v3

    #@1c
    if-ge v1, v3, :cond_1

    #@1e
    invoke-virtual {p0}, Landroid/widget/AbsListView$PerformClick;->sameWindow()Z

    #@21
    move-result v3

    #@22
    .line 3035
    if-eqz v3, :cond_1

    #@24
    .line 3038
    iget-object v3, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    #@26
    iget-object v4, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    #@28
    iget v4, v4, Landroid/widget/AbsListView;->mFirstPosition:I

    #@2a
    sub-int v4, v1, v4

    #@2c
    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@2f
    move-result-object v2

    #@30
    .line 3041
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    #@32
    .line 3042
    iget-object v3, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    #@34
    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    #@37
    move-result-wide v4

    #@38
    invoke-virtual {v3, v2, v1, v4, v5}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    #@3b
    .line 3028
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method
