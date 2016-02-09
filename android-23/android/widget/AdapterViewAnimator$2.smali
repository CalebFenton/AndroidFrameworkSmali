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
.field final synthetic this$0:Landroid/widget/AdapterViewAnimator;


# direct methods
.method constructor <init>(Landroid/widget/AdapterViewAnimator;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AdapterViewAnimator;

    #@0
    .prologue
    .line 740
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 742
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    #@3
    invoke-virtual {v0}, Landroid/widget/AdapterViewAnimator;->handleDataChanged()V

    #@6
    .line 745
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    #@8
    iget v0, v0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    #@a
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    #@c
    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    #@f
    move-result v1

    #@10
    if-lt v0, v1, :cond_1

    #@12
    .line 746
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    #@14
    iput v2, v0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    #@16
    .line 748
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    #@18
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    #@1a
    iget v1, v1, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    #@1c
    invoke-virtual {v0, v1, v2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    #@1f
    .line 752
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    #@21
    invoke-virtual {v0}, Landroid/widget/AdapterViewAnimator;->refreshChildren()V

    #@24
    .line 753
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    #@26
    invoke-virtual {v0}, Landroid/widget/AdapterViewAnimator;->requestLayout()V

    #@29
    .line 741
    return-void

    #@2a
    .line 749
    :cond_1
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    #@2c
    iget v0, v0, Landroid/widget/AdapterViewAnimator;->mOldItemCount:I

    #@2e
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    #@30
    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getCount()I

    #@33
    move-result v1

    #@34
    if-eq v0, v1, :cond_0

    #@36
    .line 750
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    #@38
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    #@3a
    iget v1, v1, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    #@3c
    invoke-virtual {v0, v1, v2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    #@3f
    goto :goto_0
.end method
