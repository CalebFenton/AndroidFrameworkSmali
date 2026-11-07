.class final Landroid/app/BackStackRecord;
.super Landroid/app/FragmentTransaction;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/app/FragmentManager$BackStackEntry;
.implements Landroid/app/FragmentManagerImpl$OpGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/BackStackRecord$Op;
    }
.end annotation


# static fields
.field static final greylist-max-o OP_ADD:I = 0x1

.field static final greylist-max-o OP_ATTACH:I = 0x7

.field static final greylist-max-o OP_DETACH:I = 0x6

.field static final greylist-max-o OP_HIDE:I = 0x4

.field static final greylist-max-o OP_NULL:I = 0x0

.field static final greylist-max-o OP_REMOVE:I = 0x3

.field static final greylist-max-o OP_REPLACE:I = 0x2

.field static final greylist-max-o OP_SET_PRIMARY_NAV:I = 0x8

.field static final greylist-max-o OP_SHOW:I = 0x5

.field static final greylist-max-o OP_UNSET_PRIMARY_NAV:I = 0x9

.field static final greylist-max-o TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field greylist-max-o mAddToBackStack:Z

.field greylist-max-o mAllowAddToBackStack:Z

.field greylist-max-o mBreadCrumbShortTitleRes:I

.field greylist-max-o mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field greylist-max-o mBreadCrumbTitleRes:I

.field greylist-max-o mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field greylist-max-o mCommitRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mCommitted:Z

.field greylist-max-o mEnterAnim:I

.field greylist-max-o mExitAnim:I

.field greylist-max-o mIndex:I

.field final greylist-max-o mManager:Landroid/app/FragmentManagerImpl;

.field greylist-max-o mName:Ljava/lang/String;

.field greylist-max-o mOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord$Op;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mPopEnterAnim:I

.field greylist-max-o mPopExitAnim:I

.field greylist-max-o mReorderingAllowed:Z

.field greylist-max-o mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mTransition:I

.field greylist-max-o mTransitionStyle:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/app/FragmentManagerImpl;)V
    .registers 5
    .param p1, "manager"    # Landroid/app/FragmentManagerImpl;

    .line 369
    invoke-direct {p0}, Landroid/app/FragmentTransaction;-><init>()V

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/BackStackRecord;->mAllowAddToBackStack:Z

    .line 218
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/BackStackRecord;->mIndex:I

    .line 370
    iput-object p1, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    .line 371
    iget-object v1, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/app/FragmentManagerImpl;->getTargetSdk()I

    move-result v1

    const/16 v2, 0x19

    if-le v1, v2, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    iput-boolean v0, p0, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    .line 372
    return-void
.end method

.method private greylist-max-o doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V
    .registers 10
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "opcmd"    # I

    .line 424
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->getTargetSdk()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_4e

    .line 425
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 426
    .local v0, "fragmentClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    .line 427
    .local v1, "modifiers":I
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 428
    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_4e

    .line 429
    :cond_2b
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must be a public static class to be  properly recreated from instance state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 434
    .end local v0    # "fragmentClass":Ljava/lang/Class;
    .end local v1    # "modifiers":I
    :cond_4e
    :goto_4e
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iput-object v0, p2, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 436
    const-string v0, " now "

    const-string v1, ": was "

    if-eqz p3, :cond_92

    .line 437
    iget-object v2, p2, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v2, :cond_90

    iget-object v2, p2, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    goto :goto_90

    .line 438
    :cond_65
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t change tag of fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p2, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 442
    :cond_90
    :goto_90
    iput-object p3, p2, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    .line 445
    :cond_92
    if-eqz p1, :cond_f9

    .line 446
    const/4 v2, -0x1

    if-eq p1, v2, :cond_d0

    .line 450
    iget v2, p2, Landroid/app/Fragment;->mFragmentId:I

    if-eqz v2, :cond_cb

    iget v2, p2, Landroid/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_a0

    goto :goto_cb

    .line 451
    :cond_a0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t change container ID of fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p2, Landroid/app/Fragment;->mFragmentId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 455
    :cond_cb
    :goto_cb
    iput p1, p2, Landroid/app/Fragment;->mFragmentId:I

    iput p1, p2, Landroid/app/Fragment;->mContainerId:I

    goto :goto_f9

    .line 447
    :cond_d0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t add fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to container view with no id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_f9
    :goto_f9
    new-instance v0, Landroid/app/BackStackRecord$Op;

    invoke-direct {v0, p4, p2}, Landroid/app/BackStackRecord$Op;-><init>(ILandroid/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    .line 459
    return-void
.end method

.method private static greylist-max-o isFragmentPostponed(Landroid/app/BackStackRecord$Op;)Z
    .registers 3
    .param p0, "op"    # Landroid/app/BackStackRecord$Op;

    .line 1004
    iget-object v0, p0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 1005
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_1c

    iget-boolean v1, v0, Landroid/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_1c

    iget-object v1, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_1c

    iget-boolean v1, v0, Landroid/app/Fragment;->mDetached:Z

    if-nez v1, :cond_1c

    iget-boolean v1, v0, Landroid/app/Fragment;->mHidden:Z

    if-nez v1, :cond_1c

    .line 1006
    invoke-virtual {v0}, Landroid/app/Fragment;->isPostponed()Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    .line 1005
    :goto_1d
    return v1
.end method


# virtual methods
.method public whitelist add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .registers 5
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;

    .line 414
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/app/BackStackRecord;->doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V

    .line 415
    return-object p0
.end method

.method public whitelist add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .registers 5
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .line 419
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/BackStackRecord;->doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V

    .line 420
    return-object p0
.end method

.method public whitelist add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .registers 5
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "tag"    # Ljava/lang/String;

    .line 409
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/app/BackStackRecord;->doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V

    .line 410
    return-object p0
.end method

.method greylist-max-o addOp(Landroid/app/BackStackRecord$Op;)V
    .registers 3
    .param p1, "op"    # Landroid/app/BackStackRecord$Op;

    .line 401
    iget-object v0, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    iget v0, p0, Landroid/app/BackStackRecord;->mEnterAnim:I

    iput v0, p1, Landroid/app/BackStackRecord$Op;->enterAnim:I

    .line 403
    iget v0, p0, Landroid/app/BackStackRecord;->mExitAnim:I

    iput v0, p1, Landroid/app/BackStackRecord$Op;->exitAnim:I

    .line 404
    iget v0, p0, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    iput v0, p1, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    .line 405
    iget v0, p0, Landroid/app/BackStackRecord;->mPopExitAnim:I

    iput v0, p1, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    .line 406
    return-void
.end method

.method public whitelist addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .registers 7
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;

    .line 530
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, "transitionName":Ljava/lang/String;
    if-eqz v0, :cond_72

    .line 535
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-nez v1, :cond_19

    .line 536
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 537
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    goto :goto_29

    .line 538
    :cond_19
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 541
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 545
    :goto_29
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    return-object p0

    .line 542
    :cond_34
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A shared element with the source name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has already been added to the transaction."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 539
    :cond_53
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A shared element with the target name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' has already been added to the transaction."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 532
    :cond_72
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unique transitionNames are required for all sharedElements"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 556
    iget-boolean v0, p0, Landroid/app/BackStackRecord;->mAllowAddToBackStack:Z

    if-eqz v0, :cond_a

    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    .line 561
    iput-object p1, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    .line 562
    return-object p0

    .line 557
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .registers 4
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 499
    new-instance v0, Landroid/app/BackStackRecord$Op;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1}, Landroid/app/BackStackRecord$Op;-><init>(ILandroid/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    .line 501
    return-object p0
.end method

.method greylist-max-o bumpBackStackNesting(I)V
    .registers 8
    .param p1, "amt"    # I

    .line 603
    iget-boolean v0, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v0, :cond_5

    .line 604
    return-void

    .line 606
    :cond_5
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    const-string v1, "FragmentManager"

    if-eqz v0, :cond_2b

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bump nesting in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_2b
    iget-object v0, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 611
    .local v0, "numOps":I
    const/4 v2, 0x0

    .local v2, "opNum":I
    :goto_32
    if-ge v2, v0, :cond_74

    .line 612
    iget-object v3, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/BackStackRecord$Op;

    .line 613
    .local v3, "op":Landroid/app/BackStackRecord$Op;
    iget-object v4, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    if-eqz v4, :cond_71

    .line 614
    iget-object v4, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    iget v5, v4, Landroid/app/Fragment;->mBackStackNesting:I

    add-int/2addr v5, p1

    iput v5, v4, Landroid/app/Fragment;->mBackStackNesting:I

    .line 615
    sget-boolean v4, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_71

    .line 616
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bump nesting of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    iget v5, v5, Landroid/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    .end local v3    # "op":Landroid/app/BackStackRecord$Op;
    :cond_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 621
    .end local v2    # "opNum":I
    :cond_74
    return-void
.end method

.method public whitelist commit()I
    .registers 2

    .line 646
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method public whitelist commitAllowingStateLoss()I
    .registers 2

    .line 650
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method greylist-max-o commitInternal(Z)I
    .registers 6
    .param p1, "allowStateLoss"    # Z

    .line 672
    iget-boolean v0, p0, Landroid/app/BackStackRecord;->mCommitted:Z

    if-nez v0, :cond_52

    .line 675
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_37

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Commit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    new-instance v0, Landroid/util/LogWriter;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    .line 678
    .local v0, "logw":Landroid/util/LogWriter;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 679
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v2, "  "

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1, v3}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 680
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 682
    .end local v0    # "logw":Landroid/util/LogWriter;
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_37
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/BackStackRecord;->mCommitted:Z

    .line 683
    iget-boolean v0, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_47

    .line 684
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroid/app/FragmentManagerImpl;->allocBackStackIndex(Landroid/app/BackStackRecord;)I

    move-result v0

    iput v0, p0, Landroid/app/BackStackRecord;->mIndex:I

    goto :goto_4a

    .line 686
    :cond_47
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/BackStackRecord;->mIndex:I

    .line 688
    :goto_4a
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p0, p1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Landroid/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 689
    iget v0, p0, Landroid/app/BackStackRecord;->mIndex:I

    return v0

    .line 673
    :cond_52
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist commitNow()V
    .registers 3

    .line 655
    invoke-virtual {p0}, Landroid/app/BackStackRecord;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    .line 656
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/FragmentManagerImpl;->execSingleAction(Landroid/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 657
    return-void
.end method

.method public whitelist commitNowAllowingStateLoss()V
    .registers 3

    .line 661
    invoke-virtual {p0}, Landroid/app/BackStackRecord;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    .line 662
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/app/FragmentManagerImpl;->execSingleAction(Landroid/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 663
    return-void
.end method

.method public whitelist detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .registers 4
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 493
    new-instance v0, Landroid/app/BackStackRecord$Op;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1}, Landroid/app/BackStackRecord$Op;-><init>(ILandroid/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    .line 495
    return-object p0
.end method

.method public whitelist disallowAddToBackStack()Landroid/app/FragmentTransaction;
    .registers 3

    .line 570
    iget-boolean v0, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v0, :cond_8

    .line 574
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/BackStackRecord;->mAllowAddToBackStack:Z

    .line 575
    return-object p0

    .line 571
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 249
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 250
    return-void
.end method

.method greylist-max-o dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .registers 10
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "full"    # Z

    .line 253
    if-eqz p3, :cond_e0

    .line 254
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 255
    const-string/jumbo v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 257
    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 258
    iget v0, p0, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 259
    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 260
    iget-boolean v0, p0, Landroid/app/BackStackRecord;->mCommitted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 261
    iget v0, p0, Landroid/app/BackStackRecord;->mTransition:I

    if-eqz v0, :cond_48

    .line 262
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 263
    const-string/jumbo v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 264
    iget v0, p0, Landroid/app/BackStackRecord;->mTransition:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 265
    const-string v0, " mTransitionStyle=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 266
    iget v0, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    :cond_48
    iget v0, p0, Landroid/app/BackStackRecord;->mEnterAnim:I

    if-nez v0, :cond_50

    iget v0, p0, Landroid/app/BackStackRecord;->mExitAnim:I

    if-eqz v0, :cond_70

    .line 269
    :cond_50
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 270
    const-string/jumbo v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 271
    iget v0, p0, Landroid/app/BackStackRecord;->mEnterAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 272
    const-string v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    iget v0, p0, Landroid/app/BackStackRecord;->mExitAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    :cond_70
    iget v0, p0, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    if-nez v0, :cond_78

    iget v0, p0, Landroid/app/BackStackRecord;->mPopExitAnim:I

    if-eqz v0, :cond_98

    .line 276
    :cond_78
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 277
    const-string/jumbo v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 278
    iget v0, p0, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    iget v0, p0, Landroid/app/BackStackRecord;->mPopExitAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    :cond_98
    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-nez v0, :cond_a0

    iget-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_bc

    .line 283
    :cond_a0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 284
    const-string/jumbo v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 285
    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 286
    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 289
    :cond_bc
    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-nez v0, :cond_c4

    iget-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_e0

    .line 290
    :cond_c4
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 291
    const-string/jumbo v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 293
    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 298
    :cond_e0
    iget-object v0, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1bf

    .line 299
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 300
    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "innerPrefix":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 303
    .local v1, "numOps":I
    const/4 v2, 0x0

    .local v2, "opNum":I
    :goto_10a
    if-ge v2, v1, :cond_1bf

    .line 304
    iget-object v3, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/BackStackRecord$Op;

    .line 306
    .local v3, "op":Landroid/app/BackStackRecord$Op;
    iget v4, v3, Landroid/app/BackStackRecord$Op;->cmd:I

    packed-switch v4, :pswitch_data_1c0

    .line 339
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "cmdStr":Ljava/lang/String;
    goto :goto_14d

    .line 335
    .end local v4    # "cmdStr":Ljava/lang/String;
    :pswitch_12f
    const-string v4, "UNSET_PRIMARY_NAV"

    .line 336
    .restart local v4    # "cmdStr":Ljava/lang/String;
    goto :goto_14d

    .line 332
    .end local v4    # "cmdStr":Ljava/lang/String;
    :pswitch_132
    const-string v4, "SET_PRIMARY_NAV"

    .line 333
    .restart local v4    # "cmdStr":Ljava/lang/String;
    goto :goto_14d

    .line 329
    .end local v4    # "cmdStr":Ljava/lang/String;
    :pswitch_135
    const-string v4, "ATTACH"

    .line 330
    .restart local v4    # "cmdStr":Ljava/lang/String;
    goto :goto_14d

    .line 326
    .end local v4    # "cmdStr":Ljava/lang/String;
    :pswitch_138
    const-string v4, "DETACH"

    .line 327
    .restart local v4    # "cmdStr":Ljava/lang/String;
    goto :goto_14d

    .line 323
    .end local v4    # "cmdStr":Ljava/lang/String;
    :pswitch_13b
    const-string v4, "SHOW"

    .line 324
    .restart local v4    # "cmdStr":Ljava/lang/String;
    goto :goto_14d

    .line 320
    .end local v4    # "cmdStr":Ljava/lang/String;
    :pswitch_13e
    const-string v4, "HIDE"

    .line 321
    .restart local v4    # "cmdStr":Ljava/lang/String;
    goto :goto_14d

    .line 317
    .end local v4    # "cmdStr":Ljava/lang/String;
    :pswitch_141
    const-string v4, "REMOVE"

    .line 318
    .restart local v4    # "cmdStr":Ljava/lang/String;
    goto :goto_14d

    .line 314
    .end local v4    # "cmdStr":Ljava/lang/String;
    :pswitch_144
    const-string v4, "REPLACE"

    .line 315
    .restart local v4    # "cmdStr":Ljava/lang/String;
    goto :goto_14d

    .line 311
    .end local v4    # "cmdStr":Ljava/lang/String;
    :pswitch_147
    const-string v4, "ADD"

    .line 312
    .restart local v4    # "cmdStr":Ljava/lang/String;
    goto :goto_14d

    .line 308
    .end local v4    # "cmdStr":Ljava/lang/String;
    :pswitch_14a
    const-string v4, "NULL"

    .line 309
    .restart local v4    # "cmdStr":Ljava/lang/String;
    nop

    .line 342
    :goto_14d
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 343
    const-string v5, "  Op #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 345
    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 347
    const-string v5, " "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 348
    iget-object v5, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 349
    if-eqz p3, :cond_1bb

    .line 350
    iget v5, v3, Landroid/app/BackStackRecord$Op;->enterAnim:I

    if-nez v5, :cond_174

    iget v5, v3, Landroid/app/BackStackRecord$Op;->exitAnim:I

    if-eqz v5, :cond_193

    .line 351
    :cond_174
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 352
    const-string v5, "enterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 353
    iget v5, v3, Landroid/app/BackStackRecord$Op;->enterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 354
    const-string v5, " exitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 355
    iget v5, v3, Landroid/app/BackStackRecord$Op;->exitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    :cond_193
    iget v5, v3, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    if-nez v5, :cond_19b

    iget v5, v3, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    if-eqz v5, :cond_1bb

    .line 358
    :cond_19b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 359
    const-string/jumbo v5, "popEnterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 360
    iget v5, v3, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 361
    const-string v5, " popExitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 362
    iget v5, v3, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    .end local v3    # "op":Landroid/app/BackStackRecord$Op;
    .end local v4    # "cmdStr":Ljava/lang/String;
    :cond_1bb
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_10a

    .line 367
    .end local v0    # "innerPrefix":Ljava/lang/String;
    .end local v1    # "numOps":I
    .end local v2    # "opNum":I
    :cond_1bf
    return-void

    :pswitch_data_1c0
    .packed-switch 0x0
        :pswitch_14a
        :pswitch_147
        :pswitch_144
        :pswitch_141
        :pswitch_13e
        :pswitch_13b
        :pswitch_138
        :pswitch_135
        :pswitch_132
        :pswitch_12f
    .end packed-switch
.end method

.method greylist-max-o executeOps()V
    .registers 8

    .line 760
    iget-object v0, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 761
    .local v0, "numOps":I
    const/4 v1, 0x0

    .local v1, "opNum":I
    :goto_7
    const/4 v2, 0x1

    if-ge v1, v0, :cond_a0

    .line 762
    iget-object v3, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/BackStackRecord$Op;

    .line 763
    .local v3, "op":Landroid/app/BackStackRecord$Op;
    iget-object v4, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 764
    .local v4, "f":Landroid/app/Fragment;
    if-eqz v4, :cond_1d

    .line 765
    iget v5, p0, Landroid/app/BackStackRecord;->mTransition:I

    iget v6, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v5, v6}, Landroid/app/Fragment;->setNextTransition(II)V

    .line 767
    :cond_1d
    iget v5, v3, Landroid/app/BackStackRecord$Op;->cmd:I

    packed-switch v5, :pswitch_data_ae

    .line 799
    :pswitch_22
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown cmd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 796
    :pswitch_3d
    iget-object v5, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/FragmentManagerImpl;->setPrimaryNavigationFragment(Landroid/app/Fragment;)V

    .line 797
    goto :goto_8d

    .line 793
    :pswitch_44
    iget-object v5, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v5, v4}, Landroid/app/FragmentManagerImpl;->setPrimaryNavigationFragment(Landroid/app/Fragment;)V

    .line 794
    goto :goto_8d

    .line 789
    :pswitch_4a
    iget v5, v3, Landroid/app/BackStackRecord$Op;->enterAnim:I

    invoke-virtual {v4, v5}, Landroid/app/Fragment;->setNextAnim(I)V

    .line 790
    iget-object v5, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v5, v4}, Landroid/app/FragmentManagerImpl;->attachFragment(Landroid/app/Fragment;)V

    .line 791
    goto :goto_8d

    .line 785
    :pswitch_55
    iget v5, v3, Landroid/app/BackStackRecord$Op;->exitAnim:I

    invoke-virtual {v4, v5}, Landroid/app/Fragment;->setNextAnim(I)V

    .line 786
    iget-object v5, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v5, v4}, Landroid/app/FragmentManagerImpl;->detachFragment(Landroid/app/Fragment;)V

    .line 787
    goto :goto_8d

    .line 781
    :pswitch_60
    iget v5, v3, Landroid/app/BackStackRecord$Op;->enterAnim:I

    invoke-virtual {v4, v5}, Landroid/app/Fragment;->setNextAnim(I)V

    .line 782
    iget-object v5, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v5, v4}, Landroid/app/FragmentManagerImpl;->showFragment(Landroid/app/Fragment;)V

    .line 783
    goto :goto_8d

    .line 777
    :pswitch_6b
    iget v5, v3, Landroid/app/BackStackRecord$Op;->exitAnim:I

    invoke-virtual {v4, v5}, Landroid/app/Fragment;->setNextAnim(I)V

    .line 778
    iget-object v5, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v5, v4}, Landroid/app/FragmentManagerImpl;->hideFragment(Landroid/app/Fragment;)V

    .line 779
    goto :goto_8d

    .line 773
    :pswitch_76
    iget v5, v3, Landroid/app/BackStackRecord$Op;->exitAnim:I

    invoke-virtual {v4, v5}, Landroid/app/Fragment;->setNextAnim(I)V

    .line 774
    iget-object v5, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v5, v4}, Landroid/app/FragmentManagerImpl;->removeFragment(Landroid/app/Fragment;)V

    .line 775
    goto :goto_8d

    .line 769
    :pswitch_81
    iget v5, v3, Landroid/app/BackStackRecord$Op;->enterAnim:I

    invoke-virtual {v4, v5}, Landroid/app/Fragment;->setNextAnim(I)V

    .line 770
    iget-object v5, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/app/FragmentManagerImpl;->addFragment(Landroid/app/Fragment;Z)V

    .line 771
    nop

    .line 801
    :goto_8d
    iget-boolean v5, p0, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v5, :cond_9c

    iget v5, v3, Landroid/app/BackStackRecord$Op;->cmd:I

    if-eq v5, v2, :cond_9c

    if-eqz v4, :cond_9c

    .line 802
    iget-object v2, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v2, v4}, Landroid/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroid/app/Fragment;)V

    .line 761
    .end local v3    # "op":Landroid/app/BackStackRecord$Op;
    .end local v4    # "f":Landroid/app/Fragment;
    :cond_9c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    .line 805
    .end local v1    # "opNum":I
    :cond_a0
    iget-boolean v1, p0, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v1, :cond_ad

    .line 807
    iget-object v1, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v3, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v3, v3, Landroid/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {v1, v3, v2}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 809
    :cond_ad
    return-void

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_81
        :pswitch_22
        :pswitch_76
        :pswitch_6b
        :pswitch_60
        :pswitch_55
        :pswitch_4a
        :pswitch_44
        :pswitch_3d
    .end packed-switch
.end method

.method greylist-max-o executePopOps(Z)V
    .registers 8
    .param p1, "moveToState"    # Z

    .line 819
    iget-object v0, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "opNum":I
    :goto_8
    if-ltz v0, :cond_a5

    .line 820
    iget-object v2, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/BackStackRecord$Op;

    .line 821
    .local v2, "op":Landroid/app/BackStackRecord$Op;
    iget-object v3, v2, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 822
    .local v3, "f":Landroid/app/Fragment;
    if-eqz v3, :cond_21

    .line 823
    iget v4, p0, Landroid/app/BackStackRecord;->mTransition:I

    invoke-static {v4}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v4

    iget v5, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v3, v4, v5}, Landroid/app/Fragment;->setNextTransition(II)V

    .line 826
    :cond_21
    iget v4, v2, Landroid/app/BackStackRecord$Op;->cmd:I

    packed-switch v4, :pswitch_data_b6

    .line 858
    :pswitch_26
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown cmd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 855
    :pswitch_41
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v4, v3}, Landroid/app/FragmentManagerImpl;->setPrimaryNavigationFragment(Landroid/app/Fragment;)V

    .line 856
    goto :goto_91

    .line 852
    :pswitch_47
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/FragmentManagerImpl;->setPrimaryNavigationFragment(Landroid/app/Fragment;)V

    .line 853
    goto :goto_91

    .line 848
    :pswitch_4e
    iget v4, v2, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    invoke-virtual {v3, v4}, Landroid/app/Fragment;->setNextAnim(I)V

    .line 849
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v4, v3}, Landroid/app/FragmentManagerImpl;->detachFragment(Landroid/app/Fragment;)V

    .line 850
    goto :goto_91

    .line 844
    :pswitch_59
    iget v4, v2, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    invoke-virtual {v3, v4}, Landroid/app/Fragment;->setNextAnim(I)V

    .line 845
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v4, v3}, Landroid/app/FragmentManagerImpl;->attachFragment(Landroid/app/Fragment;)V

    .line 846
    goto :goto_91

    .line 840
    :pswitch_64
    iget v4, v2, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    invoke-virtual {v3, v4}, Landroid/app/Fragment;->setNextAnim(I)V

    .line 841
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v4, v3}, Landroid/app/FragmentManagerImpl;->hideFragment(Landroid/app/Fragment;)V

    .line 842
    goto :goto_91

    .line 836
    :pswitch_6f
    iget v4, v2, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    invoke-virtual {v3, v4}, Landroid/app/Fragment;->setNextAnim(I)V

    .line 837
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v4, v3}, Landroid/app/FragmentManagerImpl;->showFragment(Landroid/app/Fragment;)V

    .line 838
    goto :goto_91

    .line 832
    :pswitch_7a
    iget v4, v2, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    invoke-virtual {v3, v4}, Landroid/app/Fragment;->setNextAnim(I)V

    .line 833
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/app/FragmentManagerImpl;->addFragment(Landroid/app/Fragment;Z)V

    .line 834
    goto :goto_91

    .line 828
    :pswitch_86
    iget v4, v2, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    invoke-virtual {v3, v4}, Landroid/app/Fragment;->setNextAnim(I)V

    .line 829
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v4, v3}, Landroid/app/FragmentManagerImpl;->removeFragment(Landroid/app/Fragment;)V

    .line 830
    nop

    .line 860
    :goto_91
    iget-boolean v4, p0, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v4, :cond_a1

    iget v4, v2, Landroid/app/BackStackRecord$Op;->cmd:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_a1

    if-eqz v3, :cond_a1

    .line 861
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v4, v3}, Landroid/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroid/app/Fragment;)V

    .line 819
    .end local v2    # "op":Landroid/app/BackStackRecord$Op;
    .end local v3    # "f":Landroid/app/Fragment;
    :cond_a1
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8

    .line 864
    .end local v0    # "opNum":I
    :cond_a5
    iget-boolean v0, p0, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v0, :cond_b4

    if-eqz p1, :cond_b4

    .line 865
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v2, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v2, v2, Landroid/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 867
    :cond_b4
    return-void

    nop

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_86
        :pswitch_26
        :pswitch_7a
        :pswitch_6f
        :pswitch_64
        :pswitch_59
        :pswitch_4e
        :pswitch_47
        :pswitch_41
    .end packed-switch
.end method

.method greylist-max-o expandOps(Ljava/util/ArrayList;Landroid/app/Fragment;)Landroid/app/Fragment;
    .registers 14
    .param p2, "oldPrimaryNav"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/app/Fragment;",
            ")",
            "Landroid/app/Fragment;"
        }
    .end annotation

    .line 893
    .local p1, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    const/4 v0, 0x0

    .local v0, "opNum":I
    :goto_1
    iget-object v1, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_a8

    .line 894
    iget-object v1, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord$Op;

    .line 895
    .local v1, "op":Landroid/app/BackStackRecord$Op;
    iget v2, v1, Landroid/app/BackStackRecord$Op;->cmd:I

    const/16 v3, 0x9

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_aa

    :pswitch_19
    goto/16 :goto_a5

    .line 950
    :pswitch_1b
    iget-object v2, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    new-instance v5, Landroid/app/BackStackRecord$Op;

    invoke-direct {v5, v3, p2}, Landroid/app/BackStackRecord$Op;-><init>(ILandroid/app/Fragment;)V

    invoke-virtual {v2, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 951
    add-int/lit8 v0, v0, 0x1

    .line 953
    iget-object p2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    goto/16 :goto_a5

    .line 902
    :pswitch_2b
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 903
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    if-ne v2, p2, :cond_a5

    .line 904
    iget-object v2, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    new-instance v5, Landroid/app/BackStackRecord$Op;

    iget-object v6, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-direct {v5, v3, v6}, Landroid/app/BackStackRecord$Op;-><init>(ILandroid/app/Fragment;)V

    invoke-virtual {v2, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 905
    add-int/lit8 v0, v0, 0x1

    .line 906
    const/4 p2, 0x0

    goto :goto_a5

    .line 911
    :pswitch_44
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 912
    .local v2, "f":Landroid/app/Fragment;
    iget v5, v2, Landroid/app/Fragment;->mContainerId:I

    .line 913
    .local v5, "containerId":I
    const/4 v6, 0x0

    .line 914
    .local v6, "alreadyAdded":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v4

    .local v7, "i":I
    :goto_4e
    if-ltz v7, :cond_8f

    .line 915
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Fragment;

    .line 916
    .local v8, "old":Landroid/app/Fragment;
    iget v9, v8, Landroid/app/Fragment;->mContainerId:I

    if-ne v9, v5, :cond_8c

    .line 917
    if-ne v8, v2, :cond_5e

    .line 918
    const/4 v6, 0x1

    goto :goto_8c

    .line 922
    :cond_5e
    if-ne v8, p2, :cond_6d

    .line 923
    iget-object v9, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    new-instance v10, Landroid/app/BackStackRecord$Op;

    invoke-direct {v10, v3, v8}, Landroid/app/BackStackRecord$Op;-><init>(ILandroid/app/Fragment;)V

    invoke-virtual {v9, v0, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 924
    add-int/lit8 v0, v0, 0x1

    .line 925
    const/4 p2, 0x0

    .line 927
    :cond_6d
    new-instance v9, Landroid/app/BackStackRecord$Op;

    const/4 v10, 0x3

    invoke-direct {v9, v10, v8}, Landroid/app/BackStackRecord$Op;-><init>(ILandroid/app/Fragment;)V

    .line 928
    .local v9, "removeOp":Landroid/app/BackStackRecord$Op;
    iget v10, v1, Landroid/app/BackStackRecord$Op;->enterAnim:I

    iput v10, v9, Landroid/app/BackStackRecord$Op;->enterAnim:I

    .line 929
    iget v10, v1, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    iput v10, v9, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    .line 930
    iget v10, v1, Landroid/app/BackStackRecord$Op;->exitAnim:I

    iput v10, v9, Landroid/app/BackStackRecord$Op;->exitAnim:I

    .line 931
    iget v10, v1, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    iput v10, v9, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    .line 932
    iget-object v10, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v10, v0, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 933
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 934
    add-int/2addr v0, v4

    .line 914
    .end local v8    # "old":Landroid/app/Fragment;
    .end local v9    # "removeOp":Landroid/app/BackStackRecord$Op;
    :cond_8c
    :goto_8c
    add-int/lit8 v7, v7, -0x1

    goto :goto_4e

    .line 938
    .end local v7    # "i":I
    :cond_8f
    if-eqz v6, :cond_99

    .line 939
    iget-object v3, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 940
    add-int/lit8 v0, v0, -0x1

    goto :goto_9e

    .line 942
    :cond_99
    iput v4, v1, Landroid/app/BackStackRecord$Op;->cmd:I

    .line 943
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 946
    .end local v2    # "f":Landroid/app/Fragment;
    .end local v5    # "containerId":I
    .end local v6    # "alreadyAdded":Z
    :goto_9e
    goto :goto_a5

    .line 898
    :pswitch_9f
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    nop

    .line 893
    .end local v1    # "op":Landroid/app/BackStackRecord$Op;
    :cond_a5
    :goto_a5
    add-int/2addr v0, v4

    goto/16 :goto_1

    .line 958
    .end local v0    # "opNum":I
    :cond_a8
    return-object p2

    nop

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_9f
        :pswitch_44
        :pswitch_2b
        :pswitch_19
        :pswitch_19
        :pswitch_2b
        :pswitch_9f
        :pswitch_1b
    .end packed-switch
.end method

.method public greylist-max-o generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 703
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Run: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_1c
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    iget-boolean v0, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_30

    .line 710
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroid/app/FragmentManagerImpl;->addBackStackState(Landroid/app/BackStackRecord;)V

    .line 712
    :cond_30
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getBreadCrumbShortTitle()Ljava/lang/CharSequence;
    .registers 3

    .line 394
    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_19

    .line 395
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 397
    :cond_19
    iget-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getBreadCrumbShortTitleRes()I
    .registers 2

    .line 383
    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    return v0
.end method

.method public whitelist getBreadCrumbTitle()Ljava/lang/CharSequence;
    .registers 3

    .line 387
    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_19

    .line 388
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 390
    :cond_19
    iget-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getBreadCrumbTitleRes()I
    .registers 2

    .line 379
    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    return v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 375
    iget v0, p0, Landroid/app/BackStackRecord;->mIndex:I

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 1010
    iget-object v0, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getTransition()I
    .registers 2

    .line 1014
    iget v0, p0, Landroid/app/BackStackRecord;->mTransition:I

    return v0
.end method

.method public greylist-max-o getTransitionStyle()I
    .registers 2

    .line 1018
    iget v0, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    return v0
.end method

.method public whitelist hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .registers 4
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 481
    new-instance v0, Landroid/app/BackStackRecord$Op;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Landroid/app/BackStackRecord$Op;-><init>(ILandroid/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    .line 483
    return-object p0
.end method

.method greylist-max-o interactsWith(I)Z
    .registers 7
    .param p1, "containerId"    # I

    .line 716
    iget-object v0, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 717
    .local v0, "numOps":I
    const/4 v1, 0x0

    .local v1, "opNum":I
    :goto_7
    const/4 v2, 0x0

    if-ge v1, v0, :cond_23

    .line 718
    iget-object v3, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/BackStackRecord$Op;

    .line 719
    .local v3, "op":Landroid/app/BackStackRecord$Op;
    iget-object v4, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    if-eqz v4, :cond_1a

    iget-object v2, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    iget v2, v2, Landroid/app/Fragment;->mContainerId:I

    .line 720
    .local v2, "fragContainer":I
    :cond_1a
    if-eqz v2, :cond_20

    if-ne v2, p1, :cond_20

    .line 721
    const/4 v4, 0x1

    return v4

    .line 717
    .end local v2    # "fragContainer":I
    .end local v3    # "op":Landroid/app/BackStackRecord$Op;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 724
    .end local v1    # "opNum":I
    :cond_23
    return v2
.end method

.method greylist-max-o interactsWith(Ljava/util/ArrayList;II)Z
    .registers 16
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;II)Z"
        }
    .end annotation

    .line 728
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/BackStackRecord;>;"
    const/4 v0, 0x0

    if-ne p3, p2, :cond_4

    .line 729
    return v0

    .line 731
    :cond_4
    iget-object v1, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 732
    .local v1, "numOps":I
    const/4 v2, -0x1

    .line 733
    .local v2, "lastContainer":I
    const/4 v3, 0x0

    .local v3, "opNum":I
    :goto_c
    if-ge v3, v1, :cond_56

    .line 734
    iget-object v4, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BackStackRecord$Op;

    .line 735
    .local v4, "op":Landroid/app/BackStackRecord$Op;
    iget-object v5, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    if-eqz v5, :cond_1f

    iget-object v5, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    iget v5, v5, Landroid/app/Fragment;->mContainerId:I

    goto :goto_20

    :cond_1f
    move v5, v0

    .line 736
    .local v5, "container":I
    :goto_20
    if-eqz v5, :cond_53

    if-eq v5, v2, :cond_53

    .line 737
    move v2, v5

    .line 738
    move v6, p2

    .local v6, "i":I
    :goto_26
    if-ge v6, p3, :cond_53

    .line 739
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/BackStackRecord;

    .line 740
    .local v7, "record":Landroid/app/BackStackRecord;
    iget-object v8, v7, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 741
    .local v8, "numThoseOps":I
    const/4 v9, 0x0

    .local v9, "thoseOpIndex":I
    :goto_35
    if-ge v9, v8, :cond_50

    .line 742
    iget-object v10, v7, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/BackStackRecord$Op;

    .line 743
    .local v10, "thatOp":Landroid/app/BackStackRecord$Op;
    iget-object v11, v10, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    if-eqz v11, :cond_48

    .line 744
    iget-object v11, v10, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    iget v11, v11, Landroid/app/Fragment;->mContainerId:I

    goto :goto_49

    :cond_48
    move v11, v0

    .line 745
    .local v11, "thatContainer":I
    :goto_49
    if-ne v11, v5, :cond_4d

    .line 746
    const/4 v0, 0x1

    return v0

    .line 741
    .end local v10    # "thatOp":Landroid/app/BackStackRecord$Op;
    .end local v11    # "thatContainer":I
    :cond_4d
    add-int/lit8 v9, v9, 0x1

    goto :goto_35

    .line 738
    .end local v7    # "record":Landroid/app/BackStackRecord;
    .end local v8    # "numThoseOps":I
    .end local v9    # "thoseOpIndex":I
    :cond_50
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    .line 733
    .end local v4    # "op":Landroid/app/BackStackRecord$Op;
    .end local v5    # "container":I
    .end local v6    # "i":I
    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 752
    .end local v3    # "opNum":I
    :cond_56
    return v0
.end method

.method public whitelist isAddToBackStackAllowed()Z
    .registers 2

    .line 566
    iget-boolean v0, p0, Landroid/app/BackStackRecord;->mAllowAddToBackStack:Z

    return v0
.end method

.method public whitelist isEmpty()Z
    .registers 2

    .line 1022
    iget-object v0, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method greylist-max-o isPostponed()Z
    .registers 4

    .line 985
    const/4 v0, 0x0

    .local v0, "opNum":I
    :goto_1
    iget-object v1, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 986
    iget-object v1, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord$Op;

    .line 987
    .local v1, "op":Landroid/app/BackStackRecord$Op;
    invoke-static {v1}, Landroid/app/BackStackRecord;->isFragmentPostponed(Landroid/app/BackStackRecord$Op;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 988
    const/4 v2, 0x1

    return v2

    .line 985
    .end local v1    # "op":Landroid/app/BackStackRecord$Op;
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 991
    .end local v0    # "opNum":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .registers 4
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 475
    new-instance v0, Landroid/app/BackStackRecord$Op;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Landroid/app/BackStackRecord$Op;-><init>(ILandroid/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    .line 477
    return-object p0
.end method

.method public whitelist replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .registers 4
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;

    .line 462
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/BackStackRecord;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public whitelist replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .registers 6
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .line 466
    if-eqz p1, :cond_7

    .line 470
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/BackStackRecord;->doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V

    .line 471
    return-object p0

    .line 467
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use non-zero containerViewId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist runOnCommit(Ljava/lang/Runnable;)Landroid/app/FragmentTransaction;
    .registers 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 625
    if-eqz p1, :cond_16

    .line 628
    invoke-virtual {p0}, Landroid/app/BackStackRecord;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    .line 629
    iget-object v0, p0, Landroid/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    if-nez v0, :cond_10

    .line 630
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    .line 632
    :cond_10
    iget-object v0, p0, Landroid/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    return-object p0

    .line 626
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "runnable cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o runOnCommitRunnables()V
    .registers 4

    .line 637
    iget-object v0, p0, Landroid/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    if-eqz v0, :cond_1e

    .line 638
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Landroid/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "N":I
    :goto_b
    if-ge v0, v1, :cond_1b

    .line 639
    iget-object v2, p0, Landroid/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 638
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 641
    .end local v0    # "i":I
    .end local v1    # "N":I
    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    .line 643
    :cond_1e
    return-void
.end method

.method public whitelist setBreadCrumbShortTitle(I)Landroid/app/FragmentTransaction;
    .registers 3
    .param p1, "res"    # I

    .line 591
    iput p1, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 592
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 593
    return-object p0
.end method

.method public whitelist setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 597
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 598
    iput-object p1, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 599
    return-object p0
.end method

.method public whitelist setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;
    .registers 3
    .param p1, "res"    # I

    .line 579
    iput p1, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 580
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 581
    return-object p0
.end method

.method public whitelist setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 585
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 586
    iput-object p1, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 587
    return-object p0
.end method

.method public whitelist setCustomAnimations(II)Landroid/app/FragmentTransaction;
    .registers 4
    .param p1, "enter"    # I
    .param p2, "exit"    # I

    .line 511
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/app/BackStackRecord;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setCustomAnimations(IIII)Landroid/app/FragmentTransaction;
    .registers 5
    .param p1, "enter"    # I
    .param p2, "exit"    # I
    .param p3, "popEnter"    # I
    .param p4, "popExit"    # I

    .line 516
    iput p1, p0, Landroid/app/BackStackRecord;->mEnterAnim:I

    .line 517
    iput p2, p0, Landroid/app/BackStackRecord;->mExitAnim:I

    .line 518
    iput p3, p0, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    .line 519
    iput p4, p0, Landroid/app/BackStackRecord;->mPopExitAnim:I

    .line 520
    return-object p0
.end method

.method greylist-max-o setOnStartPostponedListener(Landroid/app/Fragment$OnStartEnterTransitionListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/app/Fragment$OnStartEnterTransitionListener;

    .line 995
    const/4 v0, 0x0

    .local v0, "opNum":I
    :goto_1
    iget-object v1, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 996
    iget-object v1, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord$Op;

    .line 997
    .local v1, "op":Landroid/app/BackStackRecord$Op;
    invoke-static {v1}, Landroid/app/BackStackRecord;->isFragmentPostponed(Landroid/app/BackStackRecord$Op;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 998
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-virtual {v2, p1}, Landroid/app/Fragment;->setOnStartEnterTransitionListener(Landroid/app/Fragment$OnStartEnterTransitionListener;)V

    .line 995
    .end local v1    # "op":Landroid/app/BackStackRecord$Op;
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1001
    .end local v0    # "opNum":I
    :cond_1f
    return-void
.end method

.method public whitelist setPrimaryNavigationFragment(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .registers 4
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 505
    new-instance v0, Landroid/app/BackStackRecord$Op;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1}, Landroid/app/BackStackRecord$Op;-><init>(ILandroid/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    .line 507
    return-object p0
.end method

.method public whitelist setReorderingAllowed(Z)Landroid/app/FragmentTransaction;
    .registers 2
    .param p1, "reorderingAllowed"    # Z

    .line 667
    iput-boolean p1, p0, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    .line 668
    return-object p0
.end method

.method public whitelist setTransition(I)Landroid/app/FragmentTransaction;
    .registers 2
    .param p1, "transition"    # I

    .line 524
    iput p1, p0, Landroid/app/BackStackRecord;->mTransition:I

    .line 525
    return-object p0
.end method

.method public whitelist setTransitionStyle(I)Landroid/app/FragmentTransaction;
    .registers 2
    .param p1, "styleRes"    # I

    .line 551
    iput p1, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    .line 552
    return-object p0
.end method

.method public whitelist show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .registers 4
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 487
    new-instance v0, Landroid/app/BackStackRecord$Op;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Landroid/app/BackStackRecord$Op;-><init>(ILandroid/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    .line 489
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 234
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget v1, p0, Landroid/app/BackStackRecord;->mIndex:I

    if-ltz v1, :cond_25

    .line 237
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget v1, p0, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    :cond_25
    iget-object v1, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    if-eqz v1, :cond_33

    .line 241
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget-object v1, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_33
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method greylist-max-o trackAddedFragmentsInPop(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 969
    .local p1, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    const/4 v0, 0x0

    .local v0, "opNum":I
    :goto_1
    iget-object v1, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 970
    iget-object v1, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord$Op;

    .line 971
    .local v1, "op":Landroid/app/BackStackRecord$Op;
    iget v2, v1, Landroid/app/BackStackRecord$Op;->cmd:I

    packed-switch v2, :pswitch_data_28

    :pswitch_16
    goto :goto_23

    .line 978
    :pswitch_17
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 974
    :pswitch_1d
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 975
    nop

    .line 969
    .end local v1    # "op":Landroid/app/BackStackRecord$Op;
    :goto_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 982
    .end local v0    # "opNum":I
    :cond_26
    return-void

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_16
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_17
        :pswitch_1d
    .end packed-switch
.end method
