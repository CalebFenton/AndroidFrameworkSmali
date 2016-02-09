.class final Landroid/widget/AdapterViewAnimator$CheckForTap;
.super Ljava/lang/Object;
.source "AdapterViewAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AdapterViewAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AdapterViewAnimator;


# direct methods
.method constructor <init>(Landroid/widget/AdapterViewAnimator;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AdapterViewAnimator;

    #@0
    .prologue
    .line 608
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator$CheckForTap;->this$0:Landroid/widget/AdapterViewAnimator;

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
    .line 610
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator$CheckForTap;->this$0:Landroid/widget/AdapterViewAnimator;

    #@2
    invoke-static {v1}, Landroid/widget/AdapterViewAnimator;->-get0(Landroid/widget/AdapterViewAnimator;)I

    #@5
    move-result v1

    #@6
    const/4 v2, 0x1

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 611
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator$CheckForTap;->this$0:Landroid/widget/AdapterViewAnimator;

    #@b
    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    #@e
    move-result-object v0

    #@f
    .line 612
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator$CheckForTap;->this$0:Landroid/widget/AdapterViewAnimator;

    #@11
    invoke-virtual {v1, v0}, Landroid/widget/AdapterViewAnimator;->showTapFeedback(Landroid/view/View;)V

    #@14
    .line 609
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method
