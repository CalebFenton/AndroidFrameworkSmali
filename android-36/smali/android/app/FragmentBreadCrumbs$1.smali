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
.field final synthetic blacklist this$0:Landroid/app/FragmentBreadCrumbs;


# direct methods
.method constructor blacklist <init>(Landroid/app/FragmentBreadCrumbs;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/FragmentBreadCrumbs;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 359
    iput-object p1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 361
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/FragmentManager$BackStackEntry;

    if-eqz v0, :cond_66

    .line 362
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/FragmentManager$BackStackEntry;

    .line 363
    .local v0, "bse":Landroid/app/FragmentManager$BackStackEntry;
    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    iget-object v1, v1, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    if-ne v0, v1, :cond_26

    .line 364
    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    invoke-static {v1}, Landroid/app/FragmentBreadCrumbs;->-$$Nest$fgetmParentClickListener(Landroid/app/FragmentBreadCrumbs;)Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_66

    .line 365
    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    invoke-static {v1}, Landroid/app/FragmentBreadCrumbs;->-$$Nest$fgetmParentClickListener(Landroid/app/FragmentBreadCrumbs;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_66

    .line 368
    :cond_26
    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    invoke-static {v1}, Landroid/app/FragmentBreadCrumbs;->-$$Nest$fgetmOnBreadCrumbClickListener(Landroid/app/FragmentBreadCrumbs;)Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_45

    .line 369
    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    invoke-static {v1}, Landroid/app/FragmentBreadCrumbs;->-$$Nest$fgetmOnBreadCrumbClickListener(Landroid/app/FragmentBreadCrumbs;)Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    move-result-object v1

    .line 370
    iget-object v3, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    iget-object v3, v3, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    if-ne v0, v3, :cond_3d

    const/4 v3, 0x0

    goto :goto_3e

    :cond_3d
    move-object v3, v0

    .line 369
    :goto_3e
    invoke-interface {v1, v3, v2}, Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;->onBreadCrumbClick(Landroid/app/FragmentManager$BackStackEntry;I)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 371
    return-void

    .line 374
    :cond_45
    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    iget-object v1, v1, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    if-ne v0, v1, :cond_57

    .line 376
    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    iget-object v1, v1, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_66

    .line 378
    :cond_57
    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    iget-object v1, v1, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-interface {v0}, Landroid/app/FragmentManager$BackStackEntry;->getId()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroid/app/FragmentManager;->popBackStack(II)V

    .line 382
    .end local v0    # "bse":Landroid/app/FragmentManager$BackStackEntry;
    :cond_66
    :goto_66
    return-void
.end method
