.class Landroid/widget/AbsListView$CheckForKeyLongPress;
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
    name = "CheckForKeyLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    #@0
    .prologue
    .line 3166
    iput-object p1, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView$WindowRunnnable;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$WindowRunnnable;)V

    #@6
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForKeyLongPress;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;)V

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
    .line 3169
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    #@3
    invoke-virtual {v3}, Landroid/view/View;->isPressed()Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_1

    #@9
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    #@b
    iget v3, v3, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@d
    if-ltz v3, :cond_1

    #@f
    .line 3170
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    #@11
    iget v3, v3, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@13
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    #@15
    iget v4, v4, Landroid/widget/AdapterView;->mFirstPosition:I

    #@17
    sub-int v1, v3, v4

    #@19
    .line 3171
    .local v1, "index":I
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    #@1b
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@1e
    move-result-object v2

    #@1f
    .line 3173
    .local v2, "v":Landroid/view/View;
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    #@21
    iget-boolean v3, v3, Landroid/widget/AdapterView;->mDataChanged:Z

    #@23
    if-nez v3, :cond_2

    #@25
    .line 3174
    const/4 v0, 0x0

    #@26
    .line 3175
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroid/widget/AbsListView$WindowRunnnable;->sameWindow()Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_0

    #@2c
    .line 3176
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    #@2e
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    #@30
    iget v4, v4, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@32
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    #@34
    iget-wide v6, v5, Landroid/widget/AdapterView;->mSelectedRowId:J

    #@36
    invoke-virtual {v3, v2, v4, v6, v7}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    #@39
    move-result v0

    #@3a
    .line 3178
    .end local v0    # "handled":Z
    :cond_0
    if-eqz v0, :cond_1

    #@3c
    .line 3179
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    #@3e
    invoke-virtual {v3, v8}, Landroid/view/View;->setPressed(Z)V

    #@41
    .line 3180
    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    #@44
    .line 3168
    .end local v1    # "index":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    #@45
    .line 3183
    .restart local v1    # "index":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_2
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    #@47
    invoke-virtual {v3, v8}, Landroid/view/View;->setPressed(Z)V

    #@4a
    .line 3184
    if-eqz v2, :cond_1

    #@4c
    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    #@4f
    goto :goto_0
.end method
