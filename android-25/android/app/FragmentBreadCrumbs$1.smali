.class Landroid/app/FragmentBreadCrumbs$1;
.super Ljava/lang/Object;
.source "FragmentBreadCrumbs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FragmentBreadCrumbs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/FragmentBreadCrumbs;


# direct methods
.method constructor <init>(Landroid/app/FragmentBreadCrumbs;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/FragmentBreadCrumbs;

    #@0
    .prologue
    .line 356
    iput-object p1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 358
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    instance-of v2, v2, Landroid/app/FragmentManager$BackStackEntry;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 359
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/app/FragmentManager$BackStackEntry;

    #@10
    .line 360
    .local v0, "bse":Landroid/app/FragmentManager$BackStackEntry;
    iget-object v2, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    #@12
    iget-object v2, v2, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    #@14
    if-ne v0, v2, :cond_1

    #@16
    .line 361
    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    #@18
    invoke-static {v1}, Landroid/app/FragmentBreadCrumbs;->-get1(Landroid/app/FragmentBreadCrumbs;)Landroid/view/View$OnClickListener;

    #@1b
    move-result-object v1

    #@1c
    if-eqz v1, :cond_0

    #@1e
    .line 362
    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    #@20
    invoke-static {v1}, Landroid/app/FragmentBreadCrumbs;->-get1(Landroid/app/FragmentBreadCrumbs;)Landroid/view/View$OnClickListener;

    #@23
    move-result-object v1

    #@24
    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    #@27
    .line 357
    .end local v0    # "bse":Landroid/app/FragmentManager$BackStackEntry;
    :cond_0
    :goto_0
    return-void

    #@28
    .line 365
    .restart local v0    # "bse":Landroid/app/FragmentManager$BackStackEntry;
    :cond_1
    iget-object v2, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    #@2a
    invoke-static {v2}, Landroid/app/FragmentBreadCrumbs;->-get0(Landroid/app/FragmentBreadCrumbs;)Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    #@2d
    move-result-object v2

    #@2e
    if-eqz v2, :cond_3

    #@30
    .line 366
    iget-object v2, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    #@32
    invoke-static {v2}, Landroid/app/FragmentBreadCrumbs;->-get0(Landroid/app/FragmentBreadCrumbs;)Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    #@35
    move-result-object v2

    #@36
    .line 367
    iget-object v3, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    #@38
    iget-object v3, v3, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    #@3a
    if-ne v0, v3, :cond_2

    #@3c
    .line 366
    :goto_1
    invoke-interface {v2, v1, v4}, Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;->onBreadCrumbClick(Landroid/app/FragmentManager$BackStackEntry;I)Z

    #@3f
    move-result v1

    #@40
    if-eqz v1, :cond_3

    #@42
    .line 368
    return-void

    #@43
    :cond_2
    move-object v1, v0

    #@44
    .line 367
    goto :goto_1

    #@45
    .line 371
    :cond_3
    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    #@47
    iget-object v1, v1, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    #@49
    if-ne v0, v1, :cond_4

    #@4b
    .line 373
    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    #@4d
    iget-object v1, v1, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    #@4f
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    #@56
    goto :goto_0

    #@57
    .line 375
    :cond_4
    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    #@59
    iget-object v1, v1, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    #@5b
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    #@5e
    move-result-object v1

    #@5f
    invoke-interface {v0}, Landroid/app/FragmentManager$BackStackEntry;->getId()I

    #@62
    move-result v2

    #@63
    invoke-virtual {v1, v2, v4}, Landroid/app/FragmentManager;->popBackStack(II)V

    #@66
    goto :goto_0
.end method
