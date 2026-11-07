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
.field final synthetic blacklist this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/AbsListView;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 3332
    iput-object p1, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView$WindowRunnnable;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 9

    .line 3335
    iget-object v0, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_4e

    .line 3336
    iget-object v0, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-object v1, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget v1, v1, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    .line 3337
    .local v0, "index":I
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3339
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mDataChanged:Z

    const/4 v3, 0x0

    if-nez v2, :cond_44

    .line 3340
    const/4 v2, 0x0

    .line 3341
    .local v2, "handled":Z
    invoke-virtual {p0}, Landroid/widget/AbsListView$CheckForKeyLongPress;->sameWindow()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 3342
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-object v6, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget-wide v6, v6, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v2

    .line 3344
    :cond_39
    if-eqz v2, :cond_43

    .line 3345
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v3}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3346
    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 3348
    .end local v2    # "handled":Z
    :cond_43
    goto :goto_4e

    .line 3349
    :cond_44
    iget-object v2, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3350
    if-eqz v1, :cond_4e

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 3353
    .end local v0    # "index":I
    .end local v1    # "v":Landroid/view/View;
    :cond_4e
    :goto_4e
    return-void
.end method
