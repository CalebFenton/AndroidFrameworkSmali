.class Landroid/widget/AdapterViewAnimator$1$1;
.super Ljava/lang/Object;
.source "AdapterViewAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AdapterViewAnimator$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/AdapterViewAnimator$1;

.field final synthetic val$v:Landroid/view/View;

.field final synthetic val$viewData:Landroid/widget/AdapterViewAnimator$ViewAndMetaData;


# direct methods
.method constructor <init>(Landroid/widget/AdapterViewAnimator$1;Landroid/widget/AdapterViewAnimator$ViewAndMetaData;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/AdapterViewAnimator$1;
    .param p2, "val$viewData"    # Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    .param p3, "val$v"    # Landroid/view/View;

    #@0
    .prologue
    .line 651
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator$1$1;->this$1:Landroid/widget/AdapterViewAnimator$1;

    #@2
    iput-object p2, p0, Landroid/widget/AdapterViewAnimator$1$1;->val$viewData:Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    #@4
    iput-object p3, p0, Landroid/widget/AdapterViewAnimator$1$1;->val$v:Landroid/view/View;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 653
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$1$1;->val$viewData:Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 654
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$1$1;->this$1:Landroid/widget/AdapterViewAnimator$1;

    #@6
    iget-object v0, v0, Landroid/widget/AdapterViewAnimator$1;->this$0:Landroid/widget/AdapterViewAnimator;

    #@8
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator$1$1;->val$v:Landroid/view/View;

    #@a
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$1$1;->val$viewData:Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    #@c
    iget v2, v2, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->adapterPosition:I

    #@e
    .line 655
    iget-object v3, p0, Landroid/widget/AdapterViewAnimator$1$1;->val$viewData:Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    #@10
    iget-wide v4, v3, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->itemId:J

    #@12
    .line 654
    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/widget/AdapterViewAnimator;->performItemClick(Landroid/view/View;IJ)Z

    #@15
    .line 652
    :goto_0
    return-void

    #@16
    .line 657
    :cond_0
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$1$1;->this$1:Landroid/widget/AdapterViewAnimator$1;

    #@18
    iget-object v0, v0, Landroid/widget/AdapterViewAnimator$1;->this$0:Landroid/widget/AdapterViewAnimator;

    #@1a
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator$1$1;->val$v:Landroid/view/View;

    #@1c
    const-wide/16 v2, 0x0

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/AdapterViewAnimator;->performItemClick(Landroid/view/View;IJ)Z

    #@22
    goto :goto_0
.end method
