.class Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/app/Fragment$OnStartEnterTransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartEnterTransitionListener"
.end annotation


# instance fields
.field private final greylist-max-o mIsBack:Z

.field private greylist-max-o mNumPostponed:I

.field private final greylist-max-o mRecord:Landroid/app/BackStackRecord;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsBack(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRecord(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroid/app/BackStackRecord;
    .registers 1

    iget-object p0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/app/BackStackRecord;Z)V
    .registers 3
    .param p1, "record"    # Landroid/app/BackStackRecord;
    .param p2, "isBack"    # Z

    .line 3677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3678
    iput-boolean p2, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    .line 3679
    iput-object p1, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    .line 3680
    return-void
.end method


# virtual methods
.method public greylist-max-o cancelTransaction()V
    .registers 5

    .line 3738
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    iget-object v0, v0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    iget-boolean v2, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Landroid/app/FragmentManagerImpl;->-$$Nest$mcompleteExecute(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;ZZZ)V

    .line 3739
    return-void
.end method

.method public greylist-max-o completeTransaction()V
    .registers 9

    .line 3720
    iget v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 3721
    .local v0, "canceled":Z
    :goto_9
    iget-object v3, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    iget-object v3, v3, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    .line 3722
    .local v3, "manager":Landroid/app/FragmentManagerImpl;
    iget-object v4, v3, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3723
    .local v4, "numAdded":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_14
    if-ge v5, v4, :cond_30

    .line 3724
    iget-object v6, v3, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Fragment;

    .line 3725
    .local v6, "fragment":Landroid/app/Fragment;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/Fragment;->setOnStartEnterTransitionListener(Landroid/app/Fragment$OnStartEnterTransitionListener;)V

    .line 3726
    if-eqz v0, :cond_2d

    invoke-virtual {v6}, Landroid/app/Fragment;->isPostponed()Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 3727
    invoke-virtual {v6}, Landroid/app/Fragment;->startPostponedEnterTransition()V

    .line 3723
    .end local v6    # "fragment":Landroid/app/Fragment;
    :cond_2d
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 3730
    .end local v5    # "i":I
    :cond_30
    iget-object v5, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    iget-object v5, v5, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v6, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    iget-boolean v7, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    if-nez v0, :cond_3b

    move v1, v2

    :cond_3b
    invoke-static {v5, v6, v7, v1, v2}, Landroid/app/FragmentManagerImpl;->-$$Nest$mcompleteExecute(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;ZZZ)V

    .line 3731
    return-void
.end method

.method public greylist-max-o isReady()Z
    .registers 2

    .line 3710
    iget v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist-max-o onStartEnterTransition()V
    .registers 2

    .line 3689
    iget v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    .line 3690
    iget v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-eqz v0, :cond_b

    .line 3691
    return-void

    .line 3693
    :cond_b
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    iget-object v0, v0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-static {v0}, Landroid/app/FragmentManagerImpl;->-$$Nest$mscheduleCommit(Landroid/app/FragmentManagerImpl;)V

    .line 3694
    return-void
.end method

.method public greylist-max-o startListening()V
    .registers 2

    .line 3703
    iget v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    .line 3704
    return-void
.end method
