.class Landroid/widget/AdapterViewAnimator$2;
.super Ljava/lang/Object;
.source "AdapterViewAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AdapterViewAnimator;->checkForAndHandleDataChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/AdapterViewAnimator;


# direct methods
.method constructor blacklist <init>(Landroid/widget/AdapterViewAnimator;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/AdapterViewAnimator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 747
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 749
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v0}, Landroid/widget/AdapterViewAnimator;->handleDataChanged()V

    .line 752
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget v0, v0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_20

    .line 753
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iput v2, v0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 755
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget v1, v1, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    goto :goto_35

    .line 756
    :cond_20
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget v0, v0, Landroid/widget/AdapterViewAnimator;->mOldItemCount:I

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_35

    .line 757
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget v1, v1, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    .line 759
    :cond_35
    :goto_35
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v0}, Landroid/widget/AdapterViewAnimator;->refreshChildren()V

    .line 760
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v0}, Landroid/widget/AdapterViewAnimator;->requestLayout()V

    .line 761
    return-void
.end method
