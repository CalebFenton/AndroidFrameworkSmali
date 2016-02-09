.class Landroid/widget/AbsListView$CheckForLongPress;
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
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    #@0
    .prologue
    .line 3048
    iput-object p1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView$WindowRunnnable;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$WindowRunnnable;)V

    #@6
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$CheckForLongPress;-><init>(Landroid/widget/AbsListView;)V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 3051
    iget-object v6, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    #@3
    iget v5, v6, Landroid/widget/AbsListView;->mMotionPosition:I

    #@5
    .line 3052
    .local v5, "motionPosition":I
    iget-object v6, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    #@7
    iget-object v7, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    #@9
    iget v7, v7, Landroid/widget/AbsListView;->mFirstPosition:I

    #@b
    sub-int v7, v5, v7

    #@d
    invoke-virtual {v6, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v0

    #@11
    .line 3053
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    #@13
    .line 3054
    iget-object v6, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    #@15
    iget v4, v6, Landroid/widget/AbsListView;->mMotionPosition:I

    #@17
    .line 3055
    .local v4, "longPressPosition":I
    iget-object v6, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    #@19
    iget-object v6, v6, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@1b
    iget-object v7, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    #@1d
    iget v7, v7, Landroid/widget/AbsListView;->mMotionPosition:I

    #@1f
    invoke-interface {v6, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    #@22
    move-result-wide v2

    #@23
    .line 3057
    .local v2, "longPressId":J
    const/4 v1, 0x0

    #@24
    .line 3058
    .local v1, "handled":Z
    invoke-virtual {p0}, Landroid/widget/AbsListView$CheckForLongPress;->sameWindow()Z

    #@27
    move-result v6

    #@28
    if-eqz v6, :cond_0

    #@2a
    iget-object v6, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    #@2c
    iget-boolean v6, v6, Landroid/widget/AbsListView;->mDataChanged:Z

    #@2e
    if-eqz v6, :cond_2

    #@30
    .line 3061
    .end local v1    # "handled":Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    #@32
    .line 3062
    iget-object v6, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    #@34
    const/4 v7, -0x1

    #@35
    iput v7, v6, Landroid/widget/AbsListView;->mTouchMode:I

    #@37
    .line 3063
    iget-object v6, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    #@39
    invoke-virtual {v6, v8}, Landroid/widget/AbsListView;->setPressed(Z)V

    #@3c
    .line 3064
    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    #@3f
    .line 3050
    .end local v2    # "longPressId":J
    .end local v4    # "longPressPosition":I
    :cond_1
    :goto_1
    return-void

    #@40
    .line 3059
    .restart local v1    # "handled":Z
    .restart local v2    # "longPressId":J
    .restart local v4    # "longPressPosition":I
    :cond_2
    iget-object v6, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    #@42
    invoke-virtual {v6, v0, v4, v2, v3}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    #@45
    move-result v1

    #@46
    .local v1, "handled":Z
    goto :goto_0

    #@47
    .line 3066
    .end local v1    # "handled":Z
    :cond_3
    iget-object v6, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    #@49
    const/4 v7, 0x2

    #@4a
    iput v7, v6, Landroid/widget/AbsListView;->mTouchMode:I

    #@4c
    goto :goto_1
.end method
