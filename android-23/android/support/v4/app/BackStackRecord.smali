.class final Landroid/support/v4/app/BackStackRecord;
.super Landroid/support/v4/app/FragmentTransaction;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$BackStackEntry;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/BackStackRecord$Op;,
        Landroid/support/v4/app/BackStackRecord$TransitionState;
    }
.end annotation


# static fields
.field static final OP_ADD:I = 0x1

.field static final OP_ATTACH:I = 0x7

.field static final OP_DETACH:I = 0x6

.field static final OP_HIDE:I = 0x4

.field static final OP_NULL:I = 0x0

.field static final OP_REMOVE:I = 0x3

.field static final OP_REPLACE:I = 0x2

.field static final OP_SHOW:I = 0x5

.field static final SUPPORTS_TRANSITIONS:Z

.field static final TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field mAddToBackStack:Z

.field mAllowAddToBackStack:Z

.field mBreadCrumbShortTitleRes:I

.field mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field mBreadCrumbTitleRes:I

.field mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field mCommitted:Z

.field mEnterAnim:I

.field mExitAnim:I

.field mHead:Landroid/support/v4/app/BackStackRecord$Op;

.field mIndex:I

.field final mManager:Landroid/support/v4/app/FragmentManagerImpl;

.field mName:Ljava/lang/String;

.field mNumOp:I

.field mPopEnterAnim:I

.field mPopExitAnim:I

.field mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTail:Landroid/support/v4/app/BackStackRecord$Op;

.field mTransition:I

.field mTransitionStyle:I


# direct methods
.method static synthetic -wrap0(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/support/v4/app/Fragment;)Landroid/support/v4/util/ArrayMap;
    .locals 1
    .param p1, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p2, "isBack"    # Z
    .param p3, "inFragment"    # Landroid/support/v4/app/Fragment;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/BackStackRecord;->mapSharedElementsIn(Landroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/support/v4/app/Fragment;)Landroid/support/v4/util/ArrayMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;)V
    .locals 0
    .param p1, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p2, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p4, "isBack"    # Z
    .param p5, "namedViews"    # Landroid/support/v4/util/ArrayMap;

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/support/v4/app/BackStackRecord;->callSharedElementEnd(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p2, "containerId"    # I
    .param p3, "transition"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/BackStackRecord;->excludeHiddenFragments(Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/BackStackRecord$TransitionState;)V
    .locals 0
    .param p1, "namedViews"    # Landroid/support/v4/util/ArrayMap;
    .param p2, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/BackStackRecord;->setEpicenterIn(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/BackStackRecord$TransitionState;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 191
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x15

    #@4
    if-lt v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    sput-boolean v0, Landroid/support/v4/app/BackStackRecord;->SUPPORTS_TRANSITIONS:Z

    #@9
    .line 188
    return-void

    #@a
    .line 191
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;)V
    .locals 1
    .param p1, "manager"    # Landroid/support/v4/app/FragmentManagerImpl;

    #@0
    .prologue
    .line 353
    invoke-direct {p0}, Landroid/support/v4/app/FragmentTransaction;-><init>()V

    #@3
    .line 226
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    #@6
    .line 229
    const/4 v0, -0x1

    #@7
    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@9
    .line 354
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@b
    .line 353
    return-void
.end method

.method private beginTransition(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/BackStackRecord$TransitionState;
    .locals 8
    .param p3, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;Z)",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;"
        }
    .end annotation

    #@0
    .prologue
    .line 1019
    .local p1, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    .local p2, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    new-instance v2, Landroid/support/v4/app/BackStackRecord$TransitionState;

    #@2
    invoke-direct {v2, p0}, Landroid/support/v4/app/BackStackRecord$TransitionState;-><init>(Landroid/support/v4/app/BackStackRecord;)V

    #@5
    .line 1024
    .local v2, "state":Landroid/support/v4/app/BackStackRecord$TransitionState;
    new-instance v0, Landroid/view/View;

    #@7
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@9
    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@b
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@e
    move-result-object v3

    #@f
    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@12
    iput-object v0, v2, Landroid/support/v4/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    #@14
    .line 1026
    const/4 v6, 0x0

    #@15
    .line 1028
    .local v6, "anyTransitionStarted":Z
    const/4 v7, 0x0

    #@16
    .local v7, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    #@19
    move-result v0

    #@1a
    if-ge v7, v0, :cond_1

    #@1c
    .line 1029
    invoke-virtual {p1, v7}, Landroid/util/SparseArray;->keyAt(I)I

    #@1f
    move-result v1

    #@20
    .local v1, "containerId":I
    move-object v0, p0

    #@21
    move v3, p3

    #@22
    move-object v4, p1

    #@23
    move-object v5, p2

    #@24
    .line 1030
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/BackStackRecord;->configureTransitions(ILandroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_0

    #@2a
    .line 1032
    const/4 v6, 0x1

    #@2b
    .line 1028
    :cond_0
    add-int/lit8 v7, v7, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 1037
    .end local v1    # "containerId":I
    :cond_1
    const/4 v7, 0x0

    #@2f
    :goto_1
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    #@32
    move-result v0

    #@33
    if-ge v7, v0, :cond_3

    #@35
    .line 1038
    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->keyAt(I)I

    #@38
    move-result v1

    #@39
    .line 1039
    .restart local v1    # "containerId":I
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v0

    #@3d
    if-nez v0, :cond_2

    #@3f
    move-object v0, p0

    #@40
    move v3, p3

    #@41
    move-object v4, p1

    #@42
    move-object v5, p2

    #@43
    .line 1040
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/BackStackRecord;->configureTransitions(ILandroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z

    #@46
    move-result v0

    #@47
    .line 1039
    if-eqz v0, :cond_2

    #@49
    .line 1042
    const/4 v6, 0x1

    #@4a
    .line 1037
    :cond_2
    add-int/lit8 v7, v7, 0x1

    #@4c
    goto :goto_1

    #@4d
    .line 1046
    .end local v1    # "containerId":I
    :cond_3
    if-nez v6, :cond_4

    #@4f
    .line 1047
    const/4 v2, 0x0

    #@50
    .line 1050
    .end local v2    # "state":Landroid/support/v4/app/BackStackRecord$TransitionState;
    :cond_4
    return-object v2
.end method

.method private calculateFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 775
    .local p1, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    .local p2, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    #@4
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentContainer;->onHasView()Z

    #@7
    move-result v4

    #@8
    if-nez v4, :cond_0

    #@a
    .line 776
    return-void

    #@b
    .line 778
    :cond_0
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    #@d
    .line 779
    .local v3, "op":Landroid/support/v4/app/BackStackRecord$Op;
    :goto_0
    if-eqz v3, :cond_5

    #@f
    .line 780
    iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    #@11
    packed-switch v4, :pswitch_data_0

    #@14
    .line 818
    :goto_1
    iget-object v3, v3, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    #@16
    goto :goto_0

    #@17
    .line 782
    :pswitch_0
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@19
    invoke-direct {p0, p2, v4}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    #@1c
    goto :goto_1

    #@1d
    .line 785
    :pswitch_1
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@1f
    .line 786
    .local v0, "f":Landroid/support/v4/app/Fragment;
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@21
    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@23
    if-eqz v4, :cond_4

    #@25
    .line 787
    const/4 v1, 0x0

    #@26
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .local v1, "i":I
    :goto_2
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@28
    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@2d
    move-result v4

    #@2e
    if-ge v1, v4, :cond_4

    #@30
    .line 788
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@32
    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v2

    #@38
    check-cast v2, Landroid/support/v4/app/Fragment;

    #@3a
    .line 789
    .local v2, "old":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_1

    #@3c
    iget v4, v2, Landroid/support/v4/app/Fragment;->mContainerId:I

    #@3e
    iget v5, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    #@40
    if-ne v4, v5, :cond_2

    #@42
    .line 790
    :cond_1
    if-ne v2, v0, :cond_3

    #@44
    .line 791
    const/4 v0, 0x0

    #@45
    .line 787
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@47
    goto :goto_2

    #@48
    .line 793
    :cond_3
    invoke-static {p1, v2}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    #@4b
    goto :goto_3

    #@4c
    .line 798
    .end local v1    # "i":I
    .end local v2    # "old":Landroid/support/v4/app/Fragment;
    :cond_4
    invoke-direct {p0, p2, v0}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    #@4f
    goto :goto_1

    #@50
    .line 802
    :pswitch_2
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@52
    invoke-static {p1, v4}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    #@55
    goto :goto_1

    #@56
    .line 805
    :pswitch_3
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@58
    invoke-static {p1, v4}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    #@5b
    goto :goto_1

    #@5c
    .line 808
    :pswitch_4
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@5e
    invoke-direct {p0, p2, v4}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    #@61
    goto :goto_1

    #@62
    .line 811
    :pswitch_5
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@64
    invoke-static {p1, v4}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    #@67
    goto :goto_1

    #@68
    .line 814
    :pswitch_6
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@6a
    invoke-direct {p0, p2, v4}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    #@6d
    goto :goto_1

    #@6e
    .line 774
    :cond_5
    return-void

    #@6f
    .line 780
    nop

    #@70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private callSharedElementEnd(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;)V
    .locals 5
    .param p1, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p2, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p4, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/support/v4/app/Fragment;",
            "Z",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p5, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v4, 0x0

    #@1
    .line 1262
    if-eqz p4, :cond_1

    #@3
    .line 1263
    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    #@5
    .line 1265
    .local v1, "sharedElementCallback":Landroid/support/v4/app/SharedElementCallback;
    :goto_0
    if-eqz v1, :cond_0

    #@7
    .line 1266
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-virtual {p5}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    #@c
    move-result-object v3

    #@d
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@10
    .line 1267
    .local v0, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@12
    invoke-virtual {p5}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    #@15
    move-result-object v3

    #@16
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@19
    .line 1268
    .local v2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v1, v0, v2, v4}, Landroid/support/v4/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    #@1c
    .line 1261
    .end local v0    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    return-void

    #@1d
    .line 1264
    .end local v1    # "sharedElementCallback":Landroid/support/v4/app/SharedElementCallback;
    :cond_1
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    #@1f
    .restart local v1    # "sharedElementCallback":Landroid/support/v4/app/SharedElementCallback;
    goto :goto_0
.end method

.method private static captureExitingViews(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .param p0, "exitTransition"    # Ljava/lang/Object;
    .param p1, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p4, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    #@0
    .prologue
    .line 1081
    .local p2, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p3, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz p0, :cond_0

    #@2
    .line 1083
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    .line 1082
    invoke-static {p0, v0, p2, p3, p4}, Landroid/support/v4/app/FragmentTransitionCompat21;->captureExitingViews(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;Landroid/view/View;)Ljava/lang/Object;

    #@9
    move-result-object p0

    #@a
    .line 1085
    :cond_0
    return-object p0
.end method

.method private configureTransitions(ILandroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 38
    .param p1, "containerId"    # I
    .param p2, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p3, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Z",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1132
    .local p4, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    .local p5, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v4, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@4
    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    #@6
    move/from16 v0, p1

    #@8
    invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    #@b
    move-result-object v6

    #@c
    check-cast v6, Landroid/view/ViewGroup;

    #@e
    .line 1133
    .local v6, "sceneRoot":Landroid/view/ViewGroup;
    if-nez v6, :cond_0

    #@10
    .line 1134
    const/4 v4, 0x0

    #@11
    return v4

    #@12
    .line 1136
    :cond_0
    move-object/from16 v0, p5

    #@14
    move/from16 v1, p1

    #@16
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v8

    #@1a
    check-cast v8, Landroid/support/v4/app/Fragment;

    #@1c
    .line 1137
    .local v8, "inFragment":Landroid/support/v4/app/Fragment;
    move-object/from16 v0, p4

    #@1e
    move/from16 v1, p1

    #@20
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v9

    #@24
    check-cast v9, Landroid/support/v4/app/Fragment;

    #@26
    .line 1139
    .local v9, "outFragment":Landroid/support/v4/app/Fragment;
    move/from16 v0, p3

    #@28
    invoke-static {v8, v0}, Landroid/support/v4/app/BackStackRecord;->getEnterTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    #@2b
    move-result-object v12

    #@2c
    .line 1140
    .local v12, "enterTransition":Ljava/lang/Object;
    move/from16 v0, p3

    #@2e
    invoke-static {v8, v9, v0}, Landroid/support/v4/app/BackStackRecord;->getSharedElementTransition(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    #@31
    move-result-object v7

    #@32
    .line 1142
    .local v7, "sharedElementTransition":Ljava/lang/Object;
    move/from16 v0, p3

    #@34
    invoke-static {v9, v0}, Landroid/support/v4/app/BackStackRecord;->getExitTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    #@37
    move-result-object v26

    #@38
    .line 1143
    .local v26, "exitTransition":Ljava/lang/Object;
    const/16 v20, 0x0

    #@3a
    .line 1144
    .local v20, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    new-instance v11, Ljava/util/ArrayList;

    #@3c
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    #@3f
    .line 1145
    .local v11, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v7, :cond_1

    #@41
    .line 1146
    move-object/from16 v0, p0

    #@43
    move-object/from16 v1, p2

    #@45
    move/from16 v2, p3

    #@47
    invoke-direct {v0, v1, v9, v2}, Landroid/support/v4/app/BackStackRecord;->remapSharedElements(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/util/ArrayMap;

    #@4a
    move-result-object v20

    #@4b
    .line 1147
    .local v20, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual/range {v20 .. v20}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    #@4e
    move-result v4

    #@4f
    if-eqz v4, :cond_2

    #@51
    .line 1148
    const/4 v7, 0x0

    #@52
    .line 1149
    const/16 v20, 0x0

    #@54
    .line 1164
    .end local v7    # "sharedElementTransition":Ljava/lang/Object;
    .end local v20    # "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_1
    :goto_0
    if-nez v12, :cond_5

    #@56
    if-nez v7, :cond_5

    #@58
    .line 1165
    if-nez v26, :cond_5

    #@5a
    .line 1166
    const/4 v4, 0x0

    #@5b
    return v4

    #@5c
    .line 1152
    .restart local v7    # "sharedElementTransition":Ljava/lang/Object;
    .restart local v20    # "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_2
    if-eqz p3, :cond_4

    #@5e
    .line 1153
    iget-object v0, v9, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    #@60
    move-object/from16 v34, v0

    #@62
    .line 1155
    .local v34, "callback":Landroid/support/v4/app/SharedElementCallback;
    :goto_1
    if-eqz v34, :cond_3

    #@64
    .line 1156
    new-instance v36, Ljava/util/ArrayList;

    #@66
    invoke-virtual/range {v20 .. v20}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    #@69
    move-result-object v4

    #@6a
    move-object/from16 v0, v36

    #@6c
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@6f
    .line 1157
    .local v36, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v37, Ljava/util/ArrayList;

    #@71
    invoke-virtual/range {v20 .. v20}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    #@74
    move-result-object v4

    #@75
    move-object/from16 v0, v37

    #@77
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@7a
    .line 1158
    .local v37, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v4, 0x0

    #@7b
    move-object/from16 v0, v34

    #@7d
    move-object/from16 v1, v36

    #@7f
    move-object/from16 v2, v37

    #@81
    invoke-virtual {v0, v1, v2, v4}, Landroid/support/v4/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    #@84
    .end local v36    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v37    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_3
    move-object/from16 v4, p0

    #@86
    move-object/from16 v5, p2

    #@88
    move/from16 v10, p3

    #@8a
    .line 1160
    invoke-direct/range {v4 .. v11}, Landroid/support/v4/app/BackStackRecord;->prepareSharedElementTransition(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/view/View;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;)V

    #@8d
    goto :goto_0

    #@8e
    .line 1154
    .end local v34    # "callback":Landroid/support/v4/app/SharedElementCallback;
    :cond_4
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    #@90
    move-object/from16 v34, v0

    #@92
    .restart local v34    # "callback":Landroid/support/v4/app/SharedElementCallback;
    goto :goto_1

    #@93
    .line 1169
    .end local v7    # "sharedElementTransition":Ljava/lang/Object;
    .end local v20    # "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v34    # "callback":Landroid/support/v4/app/SharedElementCallback;
    :cond_5
    new-instance v27, Ljava/util/ArrayList;

    #@95
    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    #@98
    .line 1171
    .local v27, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p2

    #@9a
    iget-object v4, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    #@9c
    .line 1170
    move-object/from16 v0, v26

    #@9e
    move-object/from16 v1, v27

    #@a0
    move-object/from16 v2, v20

    #@a2
    invoke-static {v0, v9, v1, v2, v4}, Landroid/support/v4/app/BackStackRecord;->captureExitingViews(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;Landroid/view/View;)Ljava/lang/Object;

    #@a5
    move-result-object v26

    #@a6
    .line 1174
    move-object/from16 v0, p0

    #@a8
    iget-object v4, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@aa
    if-eqz v4, :cond_7

    #@ac
    if-eqz v20, :cond_7

    #@ae
    .line 1175
    move-object/from16 v0, p0

    #@b0
    iget-object v4, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@b2
    const/4 v5, 0x0

    #@b3
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b6
    move-result-object v4

    #@b7
    move-object/from16 v0, v20

    #@b9
    invoke-virtual {v0, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@bc
    move-result-object v35

    #@bd
    check-cast v35, Landroid/view/View;

    #@bf
    .line 1176
    .local v35, "epicenterView":Landroid/view/View;
    if-eqz v35, :cond_7

    #@c1
    .line 1177
    if-eqz v26, :cond_6

    #@c3
    .line 1178
    move-object/from16 v0, v26

    #@c5
    move-object/from16 v1, v35

    #@c7
    invoke-static {v0, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    #@ca
    .line 1180
    :cond_6
    if-eqz v7, :cond_7

    #@cc
    .line 1181
    move-object/from16 v0, v35

    #@ce
    invoke-static {v7, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    #@d1
    .line 1188
    .end local v35    # "epicenterView":Landroid/view/View;
    :cond_7
    new-instance v15, Landroid/support/v4/app/BackStackRecord$1;

    #@d3
    move-object/from16 v0, p0

    #@d5
    invoke-direct {v15, v0, v8}, Landroid/support/v4/app/BackStackRecord$1;-><init>(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/Fragment;)V

    #@d8
    .line 1195
    .local v15, "viewRetriever":Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;
    new-instance v19, Ljava/util/ArrayList;

    #@da
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    #@dd
    .line 1196
    .local v19, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v21, Landroid/support/v4/util/ArrayMap;

    #@df
    invoke-direct/range {v21 .. v21}, Landroid/support/v4/util/ArrayMap;-><init>()V

    #@e2
    .line 1198
    .local v21, "renamedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    const/16 v33, 0x1

    #@e4
    .line 1199
    .local v33, "allowOverlap":Z
    if-eqz v8, :cond_8

    #@e6
    .line 1200
    if-eqz p3, :cond_a

    #@e8
    invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->getAllowReturnTransitionOverlap()Z

    #@eb
    move-result v33

    #@ec
    .line 1203
    .end local v33    # "allowOverlap":Z
    :cond_8
    :goto_2
    move-object/from16 v0, v26

    #@ee
    move/from16 v1, v33

    #@f0
    invoke-static {v12, v0, v7, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->mergeTransitions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    #@f3
    move-result-object v30

    #@f4
    .line 1206
    .local v30, "transition":Ljava/lang/Object;
    if-eqz v30, :cond_9

    #@f6
    .line 1208
    move-object/from16 v0, p2

    #@f8
    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    #@fa
    move-object/from16 v16, v0

    #@fc
    .line 1209
    move-object/from16 v0, p2

    #@fe
    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->enteringEpicenterView:Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;

    #@100
    move-object/from16 v17, v0

    #@102
    move-object/from16 v0, p2

    #@104
    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/support/v4/util/ArrayMap;

    #@106
    move-object/from16 v18, v0

    #@108
    move-object v13, v7

    #@109
    move-object v14, v6

    #@10a
    move-object/from16 v22, v11

    #@10c
    .line 1207
    invoke-static/range {v12 .. v22}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTransitionTargets(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;)V

    #@10f
    .line 1211
    move-object/from16 v0, p0

    #@111
    move-object/from16 v1, p2

    #@113
    move/from16 v2, p1

    #@115
    move-object/from16 v3, v30

    #@117
    invoke-direct {v0, v6, v1, v2, v3}, Landroid/support/v4/app/BackStackRecord;->excludeHiddenFragmentsAfterEnter(Landroid/view/View;Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V

    #@11a
    .line 1215
    move-object/from16 v0, p2

    #@11c
    iget-object v4, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    #@11e
    const/4 v5, 0x1

    #@11f
    move-object/from16 v0, v30

    #@121
    invoke-static {v0, v4, v5}, Landroid/support/v4/app/FragmentTransitionCompat21;->excludeTarget(Ljava/lang/Object;Landroid/view/View;Z)V

    #@124
    .line 1217
    move-object/from16 v0, p0

    #@126
    move-object/from16 v1, p2

    #@128
    move/from16 v2, p1

    #@12a
    move-object/from16 v3, v30

    #@12c
    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/app/BackStackRecord;->excludeHiddenFragments(Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V

    #@12f
    .line 1219
    move-object/from16 v0, v30

    #@131
    invoke-static {v6, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    #@134
    .line 1221
    move-object/from16 v0, p2

    #@136
    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    #@138
    move-object/from16 v23, v0

    #@13a
    .line 1224
    move-object/from16 v0, p2

    #@13c
    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->hiddenFragmentViews:Ljava/util/ArrayList;

    #@13e
    move-object/from16 v31, v0

    #@140
    move-object/from16 v22, v6

    #@142
    move-object/from16 v24, v12

    #@144
    move-object/from16 v25, v19

    #@146
    move-object/from16 v28, v7

    #@148
    move-object/from16 v29, v11

    #@14a
    move-object/from16 v32, v21

    #@14c
    .line 1221
    invoke-static/range {v22 .. v32}, Landroid/support/v4/app/FragmentTransitionCompat21;->cleanupTransitions(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)V

    #@14f
    .line 1226
    :cond_9
    if-eqz v30, :cond_b

    #@151
    const/4 v4, 0x1

    #@152
    :goto_3
    return v4

    #@153
    .line 1201
    .end local v30    # "transition":Ljava/lang/Object;
    .restart local v33    # "allowOverlap":Z
    :cond_a
    invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->getAllowEnterTransitionOverlap()Z

    #@156
    move-result v33

    #@157
    .local v33, "allowOverlap":Z
    goto :goto_2

    #@158
    .line 1226
    .end local v33    # "allowOverlap":Z
    .restart local v30    # "transition":Ljava/lang/Object;
    :cond_b
    const/4 v4, 0x0

    #@159
    goto :goto_3
.end method

.method private doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .locals 4
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "opcmd"    # I

    #@0
    .prologue
    .line 414
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    iput-object v1, p2, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@4
    .line 416
    if-eqz p3, :cond_1

    #@6
    .line 417
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    #@8
    if-eqz v1, :cond_0

    #@a
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    #@c
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_2

    #@12
    .line 422
    :cond_0
    iput-object p3, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    #@14
    .line 425
    :cond_1
    if-eqz p1, :cond_4

    #@16
    .line 426
    iget v1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    #@18
    if-eqz v1, :cond_3

    #@1a
    iget v1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    #@1c
    if-eq v1, p1, :cond_3

    #@1e
    .line 427
    new-instance v1, Ljava/lang/IllegalStateException;

    #@20
    new-instance v2, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v3, "Can\'t change container ID of fragment "

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    .line 428
    const-string/jumbo v3, ": was "

    #@33
    .line 427
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    .line 428
    iget v3, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    #@39
    .line 427
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    .line 429
    const-string/jumbo v3, " now "

    #@40
    .line 427
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v1

    #@50
    .line 418
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    #@52
    new-instance v2, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v3, "Can\'t change tag of fragment "

    #@5a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v2

    #@62
    .line 419
    const-string/jumbo v3, ": was "

    #@65
    .line 418
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v2

    #@69
    .line 419
    iget-object v3, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    #@6b
    .line 418
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v2

    #@6f
    .line 420
    const-string/jumbo v3, " now "

    #@72
    .line 418
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v2

    #@7a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v2

    #@7e
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@81
    throw v1

    #@82
    .line 431
    :cond_3
    iput p1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    #@84
    iput p1, p2, Landroid/support/v4/app/Fragment;->mContainerId:I

    #@86
    .line 434
    :cond_4
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    #@88
    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    #@8b
    .line 435
    .local v0, "op":Landroid/support/v4/app/BackStackRecord$Op;
    iput p4, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    #@8d
    .line 436
    iput-object p2, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@8f
    .line 437
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    #@92
    .line 413
    return-void
.end method

.method private excludeHiddenFragments(Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p2, "containerId"    # I
    .param p3, "transition"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1370
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@4
    if-eqz v2, :cond_2

    #@6
    .line 1371
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@9
    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v2

    #@f
    if-ge v1, v2, :cond_2

    #@11
    .line 1372
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@13
    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@1b
    .line 1373
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@1d
    if-eqz v2, :cond_0

    #@1f
    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@21
    if-eqz v2, :cond_0

    #@23
    .line 1374
    iget v2, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    #@25
    if-ne v2, p2, :cond_0

    #@27
    .line 1375
    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->mHidden:Z

    #@29
    if-eqz v2, :cond_1

    #@2b
    .line 1376
    iget-object v2, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->hiddenFragmentViews:Ljava/util/ArrayList;

    #@2d
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@2f
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@32
    move-result v2

    #@33
    if-nez v2, :cond_0

    #@35
    .line 1377
    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@37
    .line 1378
    const/4 v3, 0x1

    #@38
    .line 1377
    invoke-static {p3, v2, v3}, Landroid/support/v4/app/FragmentTransitionCompat21;->excludeTarget(Ljava/lang/Object;Landroid/view/View;Z)V

    #@3b
    .line 1379
    iget-object v2, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->hiddenFragmentViews:Ljava/util/ArrayList;

    #@3d
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@3f
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@42
    .line 1371
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@44
    goto :goto_0

    #@45
    .line 1382
    :cond_1
    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@47
    .line 1383
    const/4 v3, 0x0

    #@48
    .line 1382
    invoke-static {p3, v2, v3}, Landroid/support/v4/app/FragmentTransitionCompat21;->excludeTarget(Ljava/lang/Object;Landroid/view/View;Z)V

    #@4b
    .line 1384
    iget-object v2, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->hiddenFragmentViews:Ljava/util/ArrayList;

    #@4d
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@4f
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@52
    goto :goto_1

    #@53
    .line 1369
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private excludeHiddenFragmentsAfterEnter(Landroid/view/View;Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V
    .locals 7
    .param p1, "sceneRoot"    # Landroid/view/View;
    .param p2, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p3, "containerId"    # I
    .param p4, "transition"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1359
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@3
    move-result-object v6

    #@4
    .line 1360
    new-instance v0, Landroid/support/v4/app/BackStackRecord$3;

    #@6
    move-object v1, p0

    #@7
    move-object v2, p1

    #@8
    move-object v3, p2

    #@9
    move v4, p3

    #@a
    move-object v5, p4

    #@b
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/BackStackRecord$3;-><init>(Landroid/support/v4/app/BackStackRecord;Landroid/view/View;Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V

    #@e
    .line 1359
    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@11
    .line 1358
    return-void
.end method

.method private static getEnterTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "isBack"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1054
    if-nez p0, :cond_0

    #@3
    .line 1055
    return-object v0

    #@4
    .line 1057
    :cond_0
    if-eqz p1, :cond_1

    #@6
    .line 1058
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    .line 1057
    :goto_0
    invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 1058
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    goto :goto_0
.end method

.method private static getExitTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "isBack"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1062
    if-nez p0, :cond_0

    #@3
    .line 1063
    return-object v0

    #@4
    .line 1065
    :cond_0
    if-eqz p1, :cond_1

    #@6
    .line 1066
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    .line 1065
    :goto_0
    invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 1066
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    goto :goto_0
.end method

.method private static getSharedElementTransition(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "isBack"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1071
    if-eqz p0, :cond_0

    #@3
    if-nez p1, :cond_1

    #@5
    .line 1072
    :cond_0
    return-object v0

    #@6
    .line 1074
    :cond_1
    if-eqz p2, :cond_2

    #@8
    .line 1075
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    .line 1074
    :goto_0
    invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->wrapSharedElementTransition(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    return-object v0

    #@11
    .line 1076
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    goto :goto_0
.end method

.method private mapEnteringSharedElements(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/util/ArrayMap;
    .locals 4
    .param p1, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p2, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/support/v4/app/Fragment;",
            "Z)",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1341
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    #@2
    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    #@5
    .line 1342
    .local v0, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    #@8
    move-result-object v1

    #@9
    .line 1343
    .local v1, "root":Landroid/view/View;
    if-eqz v1, :cond_0

    #@b
    .line 1344
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 1345
    invoke-static {v0, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    #@12
    .line 1346
    if-eqz p3, :cond_1

    #@14
    .line 1347
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@16
    .line 1348
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@18
    .line 1347
    invoke-static {v2, v3, v0}, Landroid/support/v4/app/BackStackRecord;->remapNames(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;)Landroid/support/v4/util/ArrayMap;

    #@1b
    move-result-object v0

    #@1c
    .line 1354
    :cond_0
    :goto_0
    return-object v0

    #@1d
    .line 1350
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v0, v2}, Landroid/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    #@22
    goto :goto_0
.end method

.method private mapSharedElementsIn(Landroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/support/v4/app/Fragment;)Landroid/support/v4/util/ArrayMap;
    .locals 4
    .param p1, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p2, "isBack"    # Z
    .param p3, "inFragment"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Z",
            "Landroid/support/v4/app/Fragment;",
            ")",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1286
    invoke-direct {p0, p1, p3, p2}, Landroid/support/v4/app/BackStackRecord;->mapEnteringSharedElements(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/util/ArrayMap;

    #@4
    move-result-object v0

    #@5
    .line 1290
    .local v0, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz p2, :cond_1

    #@7
    .line 1291
    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 1292
    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    #@d
    .line 1293
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@f
    .line 1292
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    #@12
    .line 1295
    :cond_0
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/BackStackRecord;->setBackNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V

    #@15
    .line 1303
    :goto_0
    return-object v0

    #@16
    .line 1297
    :cond_1
    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    #@18
    if-eqz v1, :cond_2

    #@1a
    .line 1298
    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    #@1c
    .line 1299
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@1e
    .line 1298
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    #@21
    .line 1301
    :cond_2
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/BackStackRecord;->setNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V

    #@24
    goto :goto_0
.end method

.method private prepareSharedElementTransition(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/view/View;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;)V
    .locals 10
    .param p1, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p2, "sceneRoot"    # Landroid/view/View;
    .param p3, "sharedElementTransition"    # Ljava/lang/Object;
    .param p4, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p5, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p6, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/support/v4/app/Fragment;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1233
    .local p7, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@3
    move-result-object v9

    #@4
    .line 1234
    new-instance v0, Landroid/support/v4/app/BackStackRecord$2;

    #@6
    move-object v1, p0

    #@7
    move-object v2, p2

    #@8
    move-object v3, p3

    #@9
    move-object/from16 v4, p7

    #@b
    move-object v5, p1

    #@c
    move/from16 v6, p6

    #@e
    move-object v7, p4

    #@f
    move-object v8, p5

    #@10
    invoke-direct/range {v0 .. v8}, Landroid/support/v4/app/BackStackRecord$2;-><init>(Landroid/support/v4/app/BackStackRecord;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Landroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    #@13
    .line 1233
    invoke-virtual {v9, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@16
    .line 1232
    return-void
.end method

.method private static remapNames(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;)Landroid/support/v4/util/ArrayMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1316
    .local p0, "inMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p1, "toGoInMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p2}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    #@3
    move-result v4

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 1317
    return-object p2

    #@7
    .line 1319
    :cond_0
    new-instance v2, Landroid/support/v4/util/ArrayMap;

    #@9
    invoke-direct {v2}, Landroid/support/v4/util/ArrayMap;-><init>()V

    #@c
    .line 1320
    .local v2, "remappedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v1

    #@10
    .line 1321
    .local v1, "numKeys":I
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@13
    .line 1322
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {p2, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    check-cast v3, Landroid/view/View;

    #@1d
    .line 1323
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_1

    #@1f
    .line 1324
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v4

    #@23
    check-cast v4, Ljava/lang/String;

    #@25
    invoke-virtual {v2, v4, v3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    .line 1321
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1327
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    return-object v2
.end method

.method private remapSharedElements(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/util/ArrayMap;
    .locals 4
    .param p1, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p2, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/support/v4/app/Fragment;",
            "Z)",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1090
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    #@3
    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    #@6
    .line 1091
    .local v0, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 1092
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    #@d
    move-result-object v1

    #@e
    invoke-static {v0, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    #@11
    .line 1093
    if-eqz p3, :cond_2

    #@13
    .line 1094
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    #@18
    .line 1101
    :cond_0
    :goto_0
    if-eqz p3, :cond_3

    #@1a
    .line 1102
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 1103
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    #@20
    .line 1104
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@22
    .line 1103
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    #@25
    .line 1106
    :cond_1
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/BackStackRecord;->setBackNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V

    #@28
    .line 1115
    :goto_1
    return-object v0

    #@29
    .line 1096
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@2b
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@2d
    invoke-static {v1, v2, v0}, Landroid/support/v4/app/BackStackRecord;->remapNames(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;)Landroid/support/v4/util/ArrayMap;

    #@30
    move-result-object v0

    #@31
    goto :goto_0

    #@32
    .line 1108
    :cond_3
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    #@34
    if-eqz v1, :cond_4

    #@36
    .line 1109
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    #@38
    .line 1110
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@3a
    .line 1109
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    #@3d
    .line 1112
    :cond_4
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/BackStackRecord;->setNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V

    #@40
    goto :goto_1
.end method

.method private setBackNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V
    .locals 7
    .param p1, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p3, "isEnd"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1417
    .local p2, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@2
    if-nez v6, :cond_1

    #@4
    const/4 v0, 0x0

    #@5
    .line 1418
    .local v0, "count":I
    :goto_0
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    #@8
    .line 1419
    iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v3

    #@e
    check-cast v3, Ljava/lang/String;

    #@10
    .line 1420
    .local v3, "source":Ljava/lang/String;
    iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Ljava/lang/String;

    #@18
    .line 1421
    .local v2, "originalTarget":Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v5

    #@1c
    check-cast v5, Landroid/view/View;

    #@1e
    .line 1422
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_0

    #@20
    .line 1423
    invoke-static {v5}, Landroid/support/v4/app/FragmentTransitionCompat21;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    .line 1424
    .local v4, "target":Ljava/lang/String;
    if-eqz p3, :cond_2

    #@26
    .line 1425
    iget-object v6, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/support/v4/util/ArrayMap;

    #@28
    invoke-static {v6, v3, v4}, Landroid/support/v4/app/BackStackRecord;->setNameOverride(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    #@2b
    .line 1418
    .end local v4    # "target":Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@2d
    goto :goto_1

    #@2e
    .line 1417
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "originalTarget":Ljava/lang/String;
    .end local v3    # "source":Ljava/lang/String;
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@33
    move-result v0

    #@34
    .restart local v0    # "count":I
    goto :goto_0

    #@35
    .line 1427
    .restart local v1    # "i":I
    .restart local v2    # "originalTarget":Ljava/lang/String;
    .restart local v3    # "source":Ljava/lang/String;
    .restart local v4    # "target":Ljava/lang/String;
    .restart local v5    # "view":Landroid/view/View;
    :cond_2
    iget-object v6, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/support/v4/util/ArrayMap;

    #@37
    invoke-static {v6, v4, v3}, Landroid/support/v4/app/BackStackRecord;->setNameOverride(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    #@3a
    goto :goto_2

    #@3b
    .line 1416
    .end local v2    # "originalTarget":Ljava/lang/String;
    .end local v3    # "source":Ljava/lang/String;
    .end local v4    # "target":Ljava/lang/String;
    .end local v5    # "view":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private setEpicenterIn(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/BackStackRecord$TransitionState;)V
    .locals 3
    .param p2, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 1273
    .local p1, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 1272
    :cond_0
    :goto_0
    return-void

    #@b
    .line 1276
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@d
    const/4 v2, 0x0

    #@e
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    .line 1275
    invoke-virtual {p1, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/view/View;

    #@18
    .line 1277
    .local v0, "epicenter":Landroid/view/View;
    if-eqz v0, :cond_0

    #@1a
    .line 1278
    iget-object v1, p2, Landroid/support/v4/app/BackStackRecord$TransitionState;->enteringEpicenterView:Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;

    #@1c
    iput-object v0, v1, Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;->epicenter:Landroid/view/View;

    #@1e
    goto :goto_0
.end method

.method private static setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 746
    .local p0, "fragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    if-eqz p1, :cond_0

    #@2
    .line 747
    iget v0, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    #@4
    .line 748
    .local v0, "containerId":I
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isHidden()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 745
    .end local v0    # "containerId":I
    :cond_0
    :goto_0
    return-void

    #@d
    .line 748
    .restart local v0    # "containerId":I
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 749
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    #@16
    move-result-object v1

    #@17
    if-eqz v1, :cond_0

    #@19
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    if-nez v1, :cond_0

    #@1f
    .line 750
    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@22
    goto :goto_0
.end method

.method private setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 756
    .local p1, "fragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    if-eqz p2, :cond_0

    #@2
    .line 757
    iget v0, p2, Landroid/support/v4/app/Fragment;->mContainerId:I

    #@4
    .line 758
    .local v0, "containerId":I
    if-eqz v0, :cond_0

    #@6
    .line 759
    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@9
    .line 755
    .end local v0    # "containerId":I
    :cond_0
    return-void
.end method

.method private static setNameOverride(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 1393
    .local p0, "overrides":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    #@2
    if-eqz p2, :cond_2

    #@4
    .line 1394
    const/4 v0, 0x0

    #@5
    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/util/ArrayMap;->size()I

    #@8
    move-result v1

    #@9
    if-ge v0, v1, :cond_1

    #@b
    .line 1395
    invoke-virtual {p0, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 1396
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    #@18
    .line 1397
    return-void

    #@19
    .line 1394
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1400
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 1392
    .end local v0    # "index":I
    :cond_2
    return-void
.end method

.method private setNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V
    .locals 5
    .param p1, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .param p3, "isEnd"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1435
    .local p2, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p2}, Landroid/support/v4/util/ArrayMap;->size()I

    #@3
    move-result v0

    #@4
    .line 1436
    .local v0, "count":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@7
    .line 1437
    invoke-virtual {p2, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Ljava/lang/String;

    #@d
    .line 1438
    .local v2, "source":Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v4

    #@11
    check-cast v4, Landroid/view/View;

    #@13
    invoke-static {v4}, Landroid/support/v4/app/FragmentTransitionCompat21;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    .line 1439
    .local v3, "target":Ljava/lang/String;
    if-eqz p3, :cond_0

    #@19
    .line 1440
    iget-object v4, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/support/v4/util/ArrayMap;

    #@1b
    invoke-static {v4, v2, v3}, Landroid/support/v4/app/BackStackRecord;->setNameOverride(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    .line 1436
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 1442
    :cond_0
    iget-object v4, p1, Landroid/support/v4/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/support/v4/util/ArrayMap;

    #@23
    invoke-static {v4, v3, v2}, Landroid/support/v4/app/BackStackRecord;->setNameOverride(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    #@26
    goto :goto_1

    #@27
    .line 1434
    .end local v2    # "source":Ljava/lang/String;
    .end local v3    # "target":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static setNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1406
    .local p1, "sourceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "targetNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    #@2
    .line 1407
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v3

    #@7
    if-ge v0, v3, :cond_0

    #@9
    .line 1408
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Ljava/lang/String;

    #@f
    .line 1409
    .local v1, "source":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Ljava/lang/String;

    #@15
    .line 1410
    .local v2, "target":Ljava/lang/String;
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/support/v4/util/ArrayMap;

    #@17
    invoke-static {v3, v1, v2}, Landroid/support/v4/app/BackStackRecord;->setNameOverride(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 1407
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1405
    .end local v0    # "i":I
    .end local v1    # "source":Ljava/lang/String;
    .end local v2    # "target":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    #@0
    .prologue
    .line 404
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    #@5
    .line 405
    return-object p0
.end method

.method public add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 409
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    #@4
    .line 410
    return-object p0
.end method

.method public add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 399
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    #@5
    .line 400
    return-object p0
.end method

.method addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
    .locals 1
    .param p1, "op"    # Landroid/support/v4/app/BackStackRecord$Op;

    #@0
    .prologue
    .line 384
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 385
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    #@6
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    #@8
    .line 391
    :goto_0
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    #@a
    iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    #@c
    .line 392
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    #@e
    iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    #@10
    .line 393
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    #@12
    iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    #@14
    .line 394
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    #@16
    iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    #@18
    .line 395
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mNumOp:I

    #@1a
    add-int/lit8 v0, v0, 0x1

    #@1c
    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mNumOp:I

    #@1e
    .line 383
    return-void

    #@1f
    .line 387
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    #@21
    iput-object v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->prev:Landroid/support/v4/app/BackStackRecord$Op;

    #@23
    .line 388
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    #@25
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    #@27
    .line 389
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    #@29
    goto :goto_0
.end method

.method public addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 3
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 518
    sget-boolean v1, Landroid/support/v4/app/BackStackRecord;->SUPPORTS_TRANSITIONS:Z

    #@2
    if-eqz v1, :cond_2

    #@4
    .line 519
    invoke-static {p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 520
    .local v0, "transitionName":Ljava/lang/String;
    if-nez v0, :cond_0

    #@a
    .line 521
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v2, "Unique transitionNames are required for all sharedElements"

    #@f
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 524
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@15
    if-nez v1, :cond_1

    #@17
    .line 525
    new-instance v1, Ljava/util/ArrayList;

    #@19
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1c
    iput-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@1e
    .line 526
    new-instance v1, Ljava/util/ArrayList;

    #@20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@23
    iput-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@25
    .line 529
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    .line 530
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2f
    .line 532
    .end local v0    # "transitionName":Ljava/lang/String;
    :cond_2
    return-object p0
.end method

.method public addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 541
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 542
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 543
    const-string/jumbo v1, "This FragmentTransaction is not allowed to be added to the back stack."

    #@9
    .line 542
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 545
    :cond_0
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    #@10
    .line 546
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    #@12
    .line 547
    return-object p0
.end method

.method public attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    #@0
    .prologue
    .line 490
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    #@2
    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    #@5
    .line 491
    .local v0, "op":Landroid/support/v4/app/BackStackRecord$Op;
    const/4 v1, 0x7

    #@6
    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    #@8
    .line 492
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@a
    .line 493
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    #@d
    .line 495
    return-object p0
.end method

.method bumpBackStackNesting(I)V
    .locals 6
    .param p1, "amt"    # I

    #@0
    .prologue
    .line 588
    iget-boolean v3, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    #@2
    if-nez v3, :cond_0

    #@4
    .line 589
    return-void

    #@5
    .line 591
    :cond_0
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@7
    if-eqz v3, :cond_1

    #@9
    const-string/jumbo v3, "FragmentManager"

    #@c
    new-instance v4, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v5, "Bump nesting in "

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    .line 592
    const-string/jumbo v5, " by "

    #@1f
    .line 591
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 593
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    #@30
    .line 594
    .local v1, "op":Landroid/support/v4/app/BackStackRecord$Op;
    :goto_0
    if-eqz v1, :cond_5

    #@32
    .line 595
    iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@34
    if-eqz v3, :cond_2

    #@36
    .line 596
    iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@38
    iget v4, v3, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    #@3a
    add-int/2addr v4, p1

    #@3b
    iput v4, v3, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    #@3d
    .line 597
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@3f
    if-eqz v3, :cond_2

    #@41
    const-string/jumbo v3, "FragmentManager"

    #@44
    new-instance v4, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v5, "Bump nesting of "

    #@4c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    .line 598
    iget-object v5, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@52
    .line 597
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    .line 598
    const-string/jumbo v5, " to "

    #@59
    .line 597
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v4

    #@5d
    .line 598
    iget-object v5, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@5f
    iget v5, v5, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    #@61
    .line 597
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v4

    #@65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v4

    #@69
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    .line 600
    :cond_2
    iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@6e
    if-eqz v3, :cond_4

    #@70
    .line 601
    iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@72
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@75
    move-result v3

    #@76
    add-int/lit8 v0, v3, -0x1

    #@78
    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    #@7a
    .line 602
    iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@7c
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7f
    move-result-object v2

    #@80
    check-cast v2, Landroid/support/v4/app/Fragment;

    #@82
    .line 603
    .local v2, "r":Landroid/support/v4/app/Fragment;
    iget v3, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    #@84
    add-int/2addr v3, p1

    #@85
    iput v3, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    #@87
    .line 604
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@89
    if-eqz v3, :cond_3

    #@8b
    const-string/jumbo v3, "FragmentManager"

    #@8e
    new-instance v4, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    const-string/jumbo v5, "Bump nesting of "

    #@96
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v4

    #@9a
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v4

    #@9e
    .line 605
    const-string/jumbo v5, " to "

    #@a1
    .line 604
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v4

    #@a5
    .line 605
    iget v5, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    #@a7
    .line 604
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v4

    #@ab
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v4

    #@af
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@b2
    .line 601
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@b4
    goto :goto_1

    #@b5
    .line 608
    .end local v0    # "i":I
    .end local v2    # "r":Landroid/support/v4/app/Fragment;
    :cond_4
    iget-object v1, v1, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    #@b7
    goto/16 :goto_0

    #@b9
    .line 587
    :cond_5
    return-void
.end method

.method public calculateBackFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 833
    .local p1, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    .local p2, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    #@4
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentContainer;->onHasView()Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 834
    return-void

    #@b
    .line 836
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    #@d
    .line 837
    .local v1, "op":Landroid/support/v4/app/BackStackRecord$Op;
    :goto_0
    if-eqz v1, :cond_2

    #@f
    .line 838
    iget v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    #@11
    packed-switch v2, :pswitch_data_0

    #@14
    .line 867
    :goto_1
    iget-object v1, v1, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    #@16
    goto :goto_0

    #@17
    .line 840
    :pswitch_0
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@19
    invoke-static {p1, v2}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    #@1c
    goto :goto_1

    #@1d
    .line 843
    :pswitch_1
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@1f
    if-eqz v2, :cond_1

    #@21
    .line 844
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@26
    move-result v2

    #@27
    add-int/lit8 v0, v2, -0x1

    #@29
    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_1

    #@2b
    .line 845
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v2

    #@31
    check-cast v2, Landroid/support/v4/app/Fragment;

    #@33
    invoke-direct {p0, p2, v2}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    #@36
    .line 844
    add-int/lit8 v0, v0, -0x1

    #@38
    goto :goto_2

    #@39
    .line 848
    .end local v0    # "i":I
    :cond_1
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@3b
    invoke-static {p1, v2}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    #@3e
    goto :goto_1

    #@3f
    .line 851
    :pswitch_2
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@41
    invoke-direct {p0, p2, v2}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    #@44
    goto :goto_1

    #@45
    .line 854
    :pswitch_3
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@47
    invoke-direct {p0, p2, v2}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    #@4a
    goto :goto_1

    #@4b
    .line 857
    :pswitch_4
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@4d
    invoke-static {p1, v2}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    #@50
    goto :goto_1

    #@51
    .line 860
    :pswitch_5
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@53
    invoke-direct {p0, p2, v2}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    #@56
    goto :goto_1

    #@57
    .line 863
    :pswitch_6
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@59
    invoke-static {p1, v2}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    #@5c
    goto :goto_1

    #@5d
    .line 832
    :cond_2
    return-void

    #@5e
    .line 838
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public commit()I
    .locals 1

    #@0
    .prologue
    .line 613
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->commitInternal(Z)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public commitAllowingStateLoss()I
    .locals 1

    #@0
    .prologue
    .line 617
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->commitInternal(Z)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method commitInternal(Z)I
    .locals 6
    .param p1, "allowStateLoss"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 621
    iget-boolean v2, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    new-instance v2, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v3, "commit already called"

    #@a
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 622
    :cond_0
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 623
    const-string/jumbo v2, "FragmentManager"

    #@15
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "Commit: "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 624
    new-instance v0, Landroid/support/v4/util/LogWriter;

    #@2e
    const-string/jumbo v2, "FragmentManager"

    #@31
    invoke-direct {v0, v2}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    #@34
    .line 625
    .local v0, "logw":Landroid/support/v4/util/LogWriter;
    new-instance v1, Ljava/io/PrintWriter;

    #@36
    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #@39
    .line 626
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v2, "  "

    #@3c
    invoke-virtual {p0, v2, v5, v1, v5}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@3f
    .line 628
    .end local v0    # "logw":Landroid/support/v4/util/LogWriter;
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_1
    const/4 v2, 0x1

    #@40
    iput-boolean v2, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    #@42
    .line 629
    iget-boolean v2, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    #@44
    if-eqz v2, :cond_2

    #@46
    .line 630
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@48
    invoke-virtual {v2, p0}, Landroid/support/v4/app/FragmentManagerImpl;->allocBackStackIndex(Landroid/support/v4/app/BackStackRecord;)I

    #@4b
    move-result v2

    #@4c
    iput v2, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@4e
    .line 634
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@50
    invoke-virtual {v2, p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    #@53
    .line 635
    iget v2, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@55
    return v2

    #@56
    .line 632
    :cond_2
    const/4 v2, -0x1

    #@57
    iput v2, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@59
    goto :goto_0
.end method

.method public detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    #@0
    .prologue
    .line 481
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    #@2
    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    #@5
    .line 482
    .local v0, "op":Landroid/support/v4/app/BackStackRecord$Op;
    const/4 v1, 0x6

    #@6
    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    #@8
    .line 483
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@a
    .line 484
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    #@d
    .line 486
    return-object p0
.end method

.method public disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;
    .locals 2

    #@0
    .prologue
    .line 555
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 556
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 557
    const-string/jumbo v1, "This transaction is already being added to the back stack"

    #@9
    .line 556
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 559
    :cond_0
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    #@10
    .line 560
    return-object p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 257
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p3, v0}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    #@4
    .line 256
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "full"    # Z

    #@0
    .prologue
    .line 261
    if-eqz p3, :cond_8

    #@2
    .line 262
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5
    const-string/jumbo v5, "mName="

    #@8
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b
    iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    #@d
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10
    .line 263
    const-string/jumbo v5, " mIndex="

    #@13
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@18
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    #@1b
    .line 264
    const-string/jumbo v5, " mCommitted="

    #@1e
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21
    iget-boolean v5, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    #@23
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    #@26
    .line 265
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    #@28
    if-eqz v5, :cond_0

    #@2a
    .line 266
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d
    const-string/jumbo v5, "mTransition=#"

    #@30
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@33
    .line 267
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    #@35
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c
    .line 268
    const-string/jumbo v5, " mTransitionStyle=#"

    #@3f
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@42
    .line 269
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    #@44
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4b
    .line 271
    :cond_0
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    #@4d
    if-nez v5, :cond_1

    #@4f
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    #@51
    if-eqz v5, :cond_2

    #@53
    .line 272
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56
    const-string/jumbo v5, "mEnterAnim=#"

    #@59
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c
    .line 273
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    #@5e
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@61
    move-result-object v5

    #@62
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@65
    .line 274
    const-string/jumbo v5, " mExitAnim=#"

    #@68
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6b
    .line 275
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    #@6d
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@70
    move-result-object v5

    #@71
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@74
    .line 277
    :cond_2
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    #@76
    if-nez v5, :cond_3

    #@78
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    #@7a
    if-eqz v5, :cond_4

    #@7c
    .line 278
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7f
    const-string/jumbo v5, "mPopEnterAnim=#"

    #@82
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@85
    .line 279
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    #@87
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@8a
    move-result-object v5

    #@8b
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8e
    .line 280
    const-string/jumbo v5, " mPopExitAnim=#"

    #@91
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@94
    .line 281
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    #@96
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@99
    move-result-object v5

    #@9a
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9d
    .line 283
    :cond_4
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@9f
    if-nez v5, :cond_5

    #@a1
    iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@a3
    if-eqz v5, :cond_6

    #@a5
    .line 284
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a8
    const-string/jumbo v5, "mBreadCrumbTitleRes=#"

    #@ab
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ae
    .line 285
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@b0
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@b3
    move-result-object v5

    #@b4
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b7
    .line 286
    const-string/jumbo v5, " mBreadCrumbTitleText="

    #@ba
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bd
    .line 287
    iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@bf
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@c2
    .line 289
    :cond_6
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@c4
    if-nez v5, :cond_7

    #@c6
    iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@c8
    if-eqz v5, :cond_8

    #@ca
    .line 290
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cd
    const-string/jumbo v5, "mBreadCrumbShortTitleRes=#"

    #@d0
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d3
    .line 291
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@d5
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@d8
    move-result-object v5

    #@d9
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@dc
    .line 292
    const-string/jumbo v5, " mBreadCrumbShortTitleText="

    #@df
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e2
    .line 293
    iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@e4
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@e7
    .line 297
    :cond_8
    iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    #@e9
    if-eqz v5, :cond_10

    #@eb
    .line 298
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ee
    const-string/jumbo v5, "Operations:"

    #@f1
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f4
    .line 299
    new-instance v5, Ljava/lang/StringBuilder;

    #@f6
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@f9
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v5

    #@fd
    const-string/jumbo v6, "    "

    #@100
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v5

    #@104
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@107
    move-result-object v2

    #@108
    .line 300
    .local v2, "innerPrefix":Ljava/lang/String;
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    #@10a
    .line 301
    .local v4, "op":Landroid/support/v4/app/BackStackRecord$Op;
    const/4 v3, 0x0

    #@10b
    .line 302
    .local v3, "num":I
    :goto_0
    if-eqz v4, :cond_10

    #@10d
    .line 304
    iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    #@10f
    packed-switch v5, :pswitch_data_0

    #@112
    .line 313
    new-instance v5, Ljava/lang/StringBuilder;

    #@114
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@117
    const-string/jumbo v6, "cmd="

    #@11a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v5

    #@11e
    iget v6, v4, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    #@120
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@123
    move-result-object v5

    #@124
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@127
    move-result-object v0

    #@128
    .line 315
    .local v0, "cmdStr":Ljava/lang/String;
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12b
    const-string/jumbo v5, "  Op #"

    #@12e
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@131
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    #@134
    .line 316
    const-string/jumbo v5, ": "

    #@137
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13d
    .line 317
    const-string/jumbo v5, " "

    #@140
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@143
    iget-object v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@145
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@148
    .line 318
    if-eqz p3, :cond_c

    #@14a
    .line 319
    iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    #@14c
    if-nez v5, :cond_9

    #@14e
    iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    #@150
    if-eqz v5, :cond_a

    #@152
    .line 320
    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@155
    const-string/jumbo v5, "enterAnim=#"

    #@158
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15b
    .line 321
    iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    #@15d
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@160
    move-result-object v5

    #@161
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@164
    .line 322
    const-string/jumbo v5, " exitAnim=#"

    #@167
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16a
    .line 323
    iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    #@16c
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@16f
    move-result-object v5

    #@170
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@173
    .line 325
    :cond_a
    iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    #@175
    if-nez v5, :cond_b

    #@177
    iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    #@179
    if-eqz v5, :cond_c

    #@17b
    .line 326
    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17e
    const-string/jumbo v5, "popEnterAnim=#"

    #@181
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@184
    .line 327
    iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    #@186
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@189
    move-result-object v5

    #@18a
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18d
    .line 328
    const-string/jumbo v5, " popExitAnim=#"

    #@190
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@193
    .line 329
    iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    #@195
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@198
    move-result-object v5

    #@199
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19c
    .line 332
    :cond_c
    iget-object v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@19e
    if-eqz v5, :cond_f

    #@1a0
    iget-object v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@1a2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@1a5
    move-result v5

    #@1a6
    if-lez v5, :cond_f

    #@1a8
    .line 333
    const/4 v1, 0x0

    #@1a9
    .local v1, "i":I
    :goto_2
    iget-object v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@1ab
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@1ae
    move-result v5

    #@1af
    if-ge v1, v5, :cond_f

    #@1b1
    .line 334
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b4
    .line 335
    iget-object v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@1b6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@1b9
    move-result v5

    #@1ba
    const/4 v6, 0x1

    #@1bb
    if-ne v5, v6, :cond_d

    #@1bd
    .line 336
    const-string/jumbo v5, "Removed: "

    #@1c0
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c3
    .line 344
    :goto_3
    iget-object v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@1c5
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c8
    move-result-object v5

    #@1c9
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1cc
    .line 333
    add-int/lit8 v1, v1, 0x1

    #@1ce
    goto :goto_2

    #@1cf
    .line 305
    .end local v0    # "cmdStr":Ljava/lang/String;
    .end local v1    # "i":I
    :pswitch_0
    const-string/jumbo v0, "NULL"

    #@1d2
    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    #@1d4
    .line 306
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "ADD"

    #@1d7
    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    #@1d9
    .line 307
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "REPLACE"

    #@1dc
    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    #@1de
    .line 308
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "REMOVE"

    #@1e1
    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    #@1e3
    .line 309
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v0, "HIDE"

    #@1e6
    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    #@1e8
    .line 310
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v0, "SHOW"

    #@1eb
    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    #@1ed
    .line 311
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v0, "DETACH"

    #@1f0
    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    #@1f2
    .line 312
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v0, "ATTACH"

    #@1f5
    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    #@1f7
    .line 338
    .restart local v1    # "i":I
    :cond_d
    if-nez v1, :cond_e

    #@1f9
    .line 339
    const-string/jumbo v5, "Removed:"

    #@1fc
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ff
    .line 341
    :cond_e
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@202
    const-string/jumbo v5, "  #"

    #@205
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@208
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    #@20b
    .line 342
    const-string/jumbo v5, ": "

    #@20e
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@211
    goto :goto_3

    #@212
    .line 347
    .end local v1    # "i":I
    :cond_f
    iget-object v4, v4, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    #@214
    .line 348
    add-int/lit8 v3, v3, 0x1

    #@216
    goto/16 :goto_0

    #@218
    .line 260
    .end local v0    # "cmdStr":Ljava/lang/String;
    .end local v2    # "innerPrefix":Ljava/lang/String;
    .end local v3    # "num":I
    .end local v4    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    :cond_10
    return-void

    #@219
    .line 304
    nop

    #@21a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getBreadCrumbShortTitle()Ljava/lang/CharSequence;
    .locals 2

    #@0
    .prologue
    .line 377
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 378
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@6
    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@8
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@e
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@11
    move-result-object v0

    #@12
    return-object v0

    #@13
    .line 380
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@15
    return-object v0
.end method

.method public getBreadCrumbShortTitleRes()I
    .locals 1

    #@0
    .prologue
    .line 366
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@2
    return v0
.end method

.method public getBreadCrumbTitle()Ljava/lang/CharSequence;
    .locals 2

    #@0
    .prologue
    .line 370
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 371
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@6
    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@8
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@e
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@11
    move-result-object v0

    #@12
    return-object v0

    #@13
    .line 373
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@15
    return-object v0
.end method

.method public getBreadCrumbTitleRes()I
    .locals 1

    #@0
    .prologue
    .line 362
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@2
    return v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 358
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@2
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 971
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTransition()I
    .locals 1

    #@0
    .prologue
    .line 975
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    #@2
    return v0
.end method

.method public getTransitionStyle()I
    .locals 1

    #@0
    .prologue
    .line 979
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    #@2
    return v0
.end method

.method public hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    #@0
    .prologue
    .line 463
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    #@2
    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    #@5
    .line 464
    .local v0, "op":Landroid/support/v4/app/BackStackRecord$Op;
    const/4 v1, 0x4

    #@6
    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    #@8
    .line 465
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@a
    .line 466
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    #@d
    .line 468
    return-object p0
.end method

.method public isAddToBackStackAllowed()Z
    .locals 1

    #@0
    .prologue
    .line 551
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    #@2
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 983
    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mNumOp:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public popFromBackStack(ZLandroid/support/v4/app/BackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/BackStackRecord$TransitionState;
    .locals 17
    .param p1, "doStateMove"    # Z
    .param p2, "state"    # Landroid/support/v4/app/BackStackRecord$TransitionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;"
        }
    .end annotation

    #@0
    .prologue
    .line 873
    .local p3, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    .local p4, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    sget-boolean v13, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@2
    if-eqz v13, :cond_0

    #@4
    .line 874
    const-string/jumbo v13, "FragmentManager"

    #@7
    new-instance v14, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v15, "popFromBackStack: "

    #@f
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v14

    #@13
    move-object/from16 v0, p0

    #@15
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v14

    #@19
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v14

    #@1d
    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 875
    new-instance v5, Landroid/support/v4/util/LogWriter;

    #@22
    const-string/jumbo v13, "FragmentManager"

    #@25
    invoke-direct {v5, v13}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    #@28
    .line 876
    .local v5, "logw":Landroid/support/v4/util/LogWriter;
    new-instance v10, Ljava/io/PrintWriter;

    #@2a
    invoke-direct {v10, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #@2d
    .line 877
    .local v10, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v13, "  "

    #@30
    const/4 v14, 0x0

    #@31
    const/4 v15, 0x0

    #@32
    move-object/from16 v0, p0

    #@34
    invoke-virtual {v0, v13, v14, v10, v15}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@37
    .line 880
    .end local v5    # "logw":Landroid/support/v4/util/LogWriter;
    .end local v10    # "pw":Ljava/io/PrintWriter;
    :cond_0
    sget-boolean v13, Landroid/support/v4/app/BackStackRecord;->SUPPORTS_TRANSITIONS:Z

    #@39
    if-eqz v13, :cond_2

    #@3b
    .line 881
    if-nez p2, :cond_3

    #@3d
    .line 882
    invoke-virtual/range {p3 .. p3}, Landroid/util/SparseArray;->size()I

    #@40
    move-result v13

    #@41
    if-nez v13, :cond_1

    #@43
    invoke-virtual/range {p4 .. p4}, Landroid/util/SparseArray;->size()I

    #@46
    move-result v13

    #@47
    if-eqz v13, :cond_2

    #@49
    .line 883
    :cond_1
    const/4 v13, 0x1

    #@4a
    move-object/from16 v0, p0

    #@4c
    move-object/from16 v1, p3

    #@4e
    move-object/from16 v2, p4

    #@50
    invoke-direct {v0, v1, v2, v13}, Landroid/support/v4/app/BackStackRecord;->beginTransition(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/BackStackRecord$TransitionState;

    #@53
    move-result-object p2

    #@54
    .line 890
    :cond_2
    :goto_0
    const/4 v13, -0x1

    #@55
    move-object/from16 v0, p0

    #@57
    invoke-virtual {v0, v13}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    #@5a
    .line 892
    if-eqz p2, :cond_4

    #@5c
    const/4 v12, 0x0

    #@5d
    .line 893
    .local v12, "transitionStyle":I
    :goto_1
    if-eqz p2, :cond_5

    #@5f
    const/4 v11, 0x0

    #@60
    .line 894
    .local v11, "transition":I
    :goto_2
    move-object/from16 v0, p0

    #@62
    iget-object v7, v0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    #@64
    .line 895
    .local v7, "op":Landroid/support/v4/app/BackStackRecord$Op;
    :goto_3
    if-eqz v7, :cond_a

    #@66
    .line 896
    if-eqz p2, :cond_6

    #@68
    const/4 v8, 0x0

    #@69
    .line 897
    .local v8, "popEnterAnim":I
    :goto_4
    if-eqz p2, :cond_7

    #@6b
    const/4 v9, 0x0

    #@6c
    .line 898
    .local v9, "popExitAnim":I
    :goto_5
    iget v13, v7, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    #@6e
    packed-switch v13, :pswitch_data_0

    #@71
    .line 950
    new-instance v13, Ljava/lang/IllegalArgumentException;

    #@73
    new-instance v14, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v15, "Unknown cmd: "

    #@7b
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v14

    #@7f
    iget v15, v7, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    #@81
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@84
    move-result-object v14

    #@85
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v14

    #@89
    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8c
    throw v13

    #@8d
    .line 885
    .end local v7    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    .end local v8    # "popEnterAnim":I
    .end local v9    # "popExitAnim":I
    .end local v11    # "transition":I
    .end local v12    # "transitionStyle":I
    :cond_3
    if-nez p1, :cond_2

    #@8f
    .line 886
    move-object/from16 v0, p0

    #@91
    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@93
    move-object/from16 v0, p0

    #@95
    iget-object v14, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@97
    move-object/from16 v0, p2

    #@99
    invoke-static {v0, v13, v14}, Landroid/support/v4/app/BackStackRecord;->setNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    #@9c
    goto :goto_0

    #@9d
    .line 892
    :cond_4
    move-object/from16 v0, p0

    #@9f
    iget v12, v0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    #@a1
    .restart local v12    # "transitionStyle":I
    goto :goto_1

    #@a2
    .line 893
    :cond_5
    move-object/from16 v0, p0

    #@a4
    iget v11, v0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    #@a6
    .restart local v11    # "transition":I
    goto :goto_2

    #@a7
    .line 896
    .restart local v7    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    :cond_6
    iget v8, v7, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    #@a9
    .restart local v8    # "popEnterAnim":I
    goto :goto_4

    #@aa
    .line 897
    :cond_7
    iget v9, v7, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    #@ac
    .restart local v9    # "popExitAnim":I
    goto :goto_5

    #@ad
    .line 900
    :pswitch_0
    iget-object v3, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@af
    .line 901
    .local v3, "f":Landroid/support/v4/app/Fragment;
    iput v9, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@b1
    .line 902
    move-object/from16 v0, p0

    #@b3
    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@b5
    .line 903
    invoke-static {v11}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    #@b8
    move-result v14

    #@b9
    .line 902
    invoke-virtual {v13, v3, v14, v12}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    #@bc
    .line 954
    :cond_8
    :goto_6
    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord$Op;->prev:Landroid/support/v4/app/BackStackRecord$Op;

    #@be
    goto :goto_3

    #@bf
    .line 906
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_1
    iget-object v3, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@c1
    .line 907
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    if-eqz v3, :cond_9

    #@c3
    .line 908
    iput v9, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@c5
    .line 909
    move-object/from16 v0, p0

    #@c7
    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@c9
    .line 910
    invoke-static {v11}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    #@cc
    move-result v14

    #@cd
    .line 909
    invoke-virtual {v13, v3, v14, v12}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    #@d0
    .line 912
    :cond_9
    iget-object v13, v7, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@d2
    if-eqz v13, :cond_8

    #@d4
    .line 913
    const/4 v4, 0x0

    #@d5
    .local v4, "i":I
    :goto_7
    iget-object v13, v7, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@d7
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    #@da
    move-result v13

    #@db
    if-ge v4, v13, :cond_8

    #@dd
    .line 914
    iget-object v13, v7, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@df
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e2
    move-result-object v6

    #@e3
    check-cast v6, Landroid/support/v4/app/Fragment;

    #@e5
    .line 915
    .local v6, "old":Landroid/support/v4/app/Fragment;
    iput v8, v6, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@e7
    .line 916
    move-object/from16 v0, p0

    #@e9
    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@eb
    const/4 v14, 0x0

    #@ec
    invoke-virtual {v13, v6, v14}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    #@ef
    .line 913
    add-int/lit8 v4, v4, 0x1

    #@f1
    goto :goto_7

    #@f2
    .line 921
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    .end local v4    # "i":I
    .end local v6    # "old":Landroid/support/v4/app/Fragment;
    :pswitch_2
    iget-object v3, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@f4
    .line 922
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    iput v8, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@f6
    .line 923
    move-object/from16 v0, p0

    #@f8
    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@fa
    const/4 v14, 0x0

    #@fb
    invoke-virtual {v13, v3, v14}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    #@fe
    goto :goto_6

    #@ff
    .line 926
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_3
    iget-object v3, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@101
    .line 927
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    iput v8, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@103
    .line 928
    move-object/from16 v0, p0

    #@105
    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@107
    .line 929
    invoke-static {v11}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    #@10a
    move-result v14

    #@10b
    .line 928
    invoke-virtual {v13, v3, v14, v12}, Landroid/support/v4/app/FragmentManagerImpl;->showFragment(Landroid/support/v4/app/Fragment;II)V

    #@10e
    goto :goto_6

    #@10f
    .line 932
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_4
    iget-object v3, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@111
    .line 933
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    iput v9, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@113
    .line 934
    move-object/from16 v0, p0

    #@115
    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@117
    .line 935
    invoke-static {v11}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    #@11a
    move-result v14

    #@11b
    .line 934
    invoke-virtual {v13, v3, v14, v12}, Landroid/support/v4/app/FragmentManagerImpl;->hideFragment(Landroid/support/v4/app/Fragment;II)V

    #@11e
    goto :goto_6

    #@11f
    .line 938
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_5
    iget-object v3, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@121
    .line 939
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    iput v8, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@123
    .line 940
    move-object/from16 v0, p0

    #@125
    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@127
    .line 941
    invoke-static {v11}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    #@12a
    move-result v14

    #@12b
    .line 940
    invoke-virtual {v13, v3, v14, v12}, Landroid/support/v4/app/FragmentManagerImpl;->attachFragment(Landroid/support/v4/app/Fragment;II)V

    #@12e
    goto :goto_6

    #@12f
    .line 944
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_6
    iget-object v3, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@131
    .line 945
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    iput v8, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@133
    .line 946
    move-object/from16 v0, p0

    #@135
    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@137
    .line 947
    invoke-static {v11}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    #@13a
    move-result v14

    #@13b
    .line 946
    invoke-virtual {v13, v3, v14, v12}, Landroid/support/v4/app/FragmentManagerImpl;->detachFragment(Landroid/support/v4/app/Fragment;II)V

    #@13e
    goto/16 :goto_6

    #@140
    .line 957
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    .end local v8    # "popEnterAnim":I
    .end local v9    # "popExitAnim":I
    :cond_a
    if-eqz p1, :cond_b

    #@142
    .line 958
    move-object/from16 v0, p0

    #@144
    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@146
    move-object/from16 v0, p0

    #@148
    iget-object v14, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@14a
    iget v14, v14, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    #@14c
    .line 959
    invoke-static {v11}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    #@14f
    move-result v15

    #@150
    const/16 v16, 0x1

    #@152
    .line 958
    move/from16 v0, v16

    #@154
    invoke-virtual {v13, v14, v15, v12, v0}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V

    #@157
    .line 960
    const/16 p2, 0x0

    #@159
    .line 963
    .end local p2    # "state":Landroid/support/v4/app/BackStackRecord$TransitionState;
    :cond_b
    move-object/from16 v0, p0

    #@15b
    iget v13, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@15d
    if-ltz v13, :cond_c

    #@15f
    .line 964
    move-object/from16 v0, p0

    #@161
    iget-object v13, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@163
    move-object/from16 v0, p0

    #@165
    iget v14, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@167
    invoke-virtual {v13, v14}, Landroid/support/v4/app/FragmentManagerImpl;->freeBackStackIndex(I)V

    #@16a
    .line 965
    const/4 v13, -0x1

    #@16b
    move-object/from16 v0, p0

    #@16d
    iput v13, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@16f
    .line 967
    :cond_c
    return-object p2

    #@170
    .line 898
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    #@0
    .prologue
    .line 454
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    #@2
    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    #@5
    .line 455
    .local v0, "op":Landroid/support/v4/app/BackStackRecord$Op;
    const/4 v1, 0x3

    #@6
    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    #@8
    .line 456
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@a
    .line 457
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    #@d
    .line 459
    return-object p0
.end method

.method public replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    #@0
    .prologue
    .line 441
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/BackStackRecord;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 445
    if-nez p1, :cond_0

    #@2
    .line 446
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Must use non-zero containerViewId"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 449
    :cond_0
    const/4 v0, 0x2

    #@c
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    #@f
    .line 450
    return-object p0
.end method

.method public run()V
    .locals 15

    #@0
    .prologue
    .line 639
    sget-boolean v12, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@2
    if-eqz v12, :cond_0

    #@4
    const-string/jumbo v12, "FragmentManager"

    #@7
    new-instance v13, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v14, "Run: "

    #@f
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v13

    #@13
    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v13

    #@17
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v13

    #@1b
    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 641
    :cond_0
    iget-boolean v12, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    #@20
    if-eqz v12, :cond_1

    #@22
    .line 642
    iget v12, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@24
    if-gez v12, :cond_1

    #@26
    .line 643
    new-instance v12, Ljava/lang/IllegalStateException;

    #@28
    const-string/jumbo v13, "addToBackStack() called after commit()"

    #@2b
    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v12

    #@2f
    .line 647
    :cond_1
    const/4 v12, 0x1

    #@30
    invoke-virtual {p0, v12}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    #@33
    .line 649
    const/4 v9, 0x0

    #@34
    .line 650
    .local v9, "state":Landroid/support/v4/app/BackStackRecord$TransitionState;
    const/4 v4, 0x0

    #@35
    .line 651
    .local v4, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    const/4 v6, 0x0

    #@36
    .line 652
    .local v6, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    sget-boolean v12, Landroid/support/v4/app/BackStackRecord;->SUPPORTS_TRANSITIONS:Z

    #@38
    if-eqz v12, :cond_2

    #@3a
    .line 653
    new-instance v4, Landroid/util/SparseArray;

    #@3c
    .end local v4    # "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    #@3f
    .line 654
    .local v4, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    new-instance v6, Landroid/util/SparseArray;

    #@41
    .end local v6    # "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    #@44
    .line 656
    .local v6, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    invoke-direct {p0, v4, v6}, Landroid/support/v4/app/BackStackRecord;->calculateFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    #@47
    .line 658
    const/4 v12, 0x0

    #@48
    invoke-direct {p0, v4, v6, v12}, Landroid/support/v4/app/BackStackRecord;->beginTransition(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/BackStackRecord$TransitionState;

    #@4b
    move-result-object v9

    #@4c
    .line 661
    .end local v4    # "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    .end local v6    # "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    .end local v9    # "state":Landroid/support/v4/app/BackStackRecord$TransitionState;
    :cond_2
    if-eqz v9, :cond_3

    #@4e
    const/4 v11, 0x0

    #@4f
    .line 662
    .local v11, "transitionStyle":I
    :goto_0
    if-eqz v9, :cond_4

    #@51
    const/4 v10, 0x0

    #@52
    .line 663
    .local v10, "transition":I
    :goto_1
    iget-object v8, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    #@54
    .line 664
    .local v8, "op":Landroid/support/v4/app/BackStackRecord$Op;
    :goto_2
    if-eqz v8, :cond_e

    #@56
    .line 665
    if-eqz v9, :cond_5

    #@58
    const/4 v1, 0x0

    #@59
    .line 666
    .local v1, "enterAnim":I
    :goto_3
    if-eqz v9, :cond_6

    #@5b
    const/4 v2, 0x0

    #@5c
    .line 667
    .local v2, "exitAnim":I
    :goto_4
    iget v12, v8, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    #@5e
    packed-switch v12, :pswitch_data_0

    #@61
    .line 731
    new-instance v12, Ljava/lang/IllegalArgumentException;

    #@63
    new-instance v13, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v14, "Unknown cmd: "

    #@6b
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v13

    #@6f
    iget v14, v8, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    #@71
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@74
    move-result-object v13

    #@75
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v13

    #@79
    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7c
    throw v12

    #@7d
    .line 661
    .end local v1    # "enterAnim":I
    .end local v2    # "exitAnim":I
    .end local v8    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    .end local v10    # "transition":I
    .end local v11    # "transitionStyle":I
    :cond_3
    iget v11, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    #@7f
    .restart local v11    # "transitionStyle":I
    goto :goto_0

    #@80
    .line 662
    :cond_4
    iget v10, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    #@82
    .restart local v10    # "transition":I
    goto :goto_1

    #@83
    .line 665
    .restart local v8    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    :cond_5
    iget v1, v8, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    #@85
    .restart local v1    # "enterAnim":I
    goto :goto_3

    #@86
    .line 666
    :cond_6
    iget v2, v8, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    #@88
    .restart local v2    # "exitAnim":I
    goto :goto_4

    #@89
    .line 669
    :pswitch_0
    iget-object v3, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@8b
    .line 670
    .local v3, "f":Landroid/support/v4/app/Fragment;
    iput v1, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@8d
    .line 671
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@8f
    const/4 v13, 0x0

    #@90
    invoke-virtual {v12, v3, v13}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    #@93
    .line 735
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :cond_7
    :goto_5
    iget-object v8, v8, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    #@95
    goto :goto_2

    #@96
    .line 674
    :pswitch_1
    iget-object v3, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@98
    .line 675
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    iget v0, v3, Landroid/support/v4/app/Fragment;->mContainerId:I

    #@9a
    .line 676
    .local v0, "containerId":I
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@9c
    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@9e
    if-eqz v12, :cond_d

    #@a0
    .line 677
    const/4 v5, 0x0

    #@a1
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    .local v5, "i":I
    :goto_6
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@a3
    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@a5
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@a8
    move-result v12

    #@a9
    if-ge v5, v12, :cond_d

    #@ab
    .line 678
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@ad
    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@af
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b2
    move-result-object v7

    #@b3
    check-cast v7, Landroid/support/v4/app/Fragment;

    #@b5
    .line 679
    .local v7, "old":Landroid/support/v4/app/Fragment;
    sget-boolean v12, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@b7
    if-eqz v12, :cond_8

    #@b9
    const-string/jumbo v12, "FragmentManager"

    #@bc
    .line 680
    new-instance v13, Ljava/lang/StringBuilder;

    #@be
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@c1
    const-string/jumbo v14, "OP_REPLACE: adding="

    #@c4
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v13

    #@c8
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v13

    #@cc
    const-string/jumbo v14, " old="

    #@cf
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v13

    #@d3
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v13

    #@d7
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v13

    #@db
    .line 679
    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@de
    .line 681
    :cond_8
    iget v12, v7, Landroid/support/v4/app/Fragment;->mContainerId:I

    #@e0
    if-ne v12, v0, :cond_9

    #@e2
    .line 682
    if-ne v7, v3, :cond_a

    #@e4
    .line 683
    const/4 v3, 0x0

    #@e5
    .local v3, "f":Landroid/support/v4/app/Fragment;
    const/4 v12, 0x0

    #@e6
    iput-object v12, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@e8
    .line 677
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :cond_9
    :goto_7
    add-int/lit8 v5, v5, 0x1

    #@ea
    goto :goto_6

    #@eb
    .line 685
    :cond_a
    iget-object v12, v8, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@ed
    if-nez v12, :cond_b

    #@ef
    .line 686
    new-instance v12, Ljava/util/ArrayList;

    #@f1
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    #@f4
    iput-object v12, v8, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@f6
    .line 688
    :cond_b
    iget-object v12, v8, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@f8
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@fb
    .line 689
    iput v2, v7, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@fd
    .line 690
    iget-boolean v12, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    #@ff
    if-eqz v12, :cond_c

    #@101
    .line 691
    iget v12, v7, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    #@103
    add-int/lit8 v12, v12, 0x1

    #@105
    iput v12, v7, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    #@107
    .line 692
    sget-boolean v12, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@109
    if-eqz v12, :cond_c

    #@10b
    const-string/jumbo v12, "FragmentManager"

    #@10e
    new-instance v13, Ljava/lang/StringBuilder;

    #@110
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@113
    const-string/jumbo v14, "Bump nesting of "

    #@116
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v13

    #@11a
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v13

    #@11e
    .line 693
    const-string/jumbo v14, " to "

    #@121
    .line 692
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v13

    #@125
    .line 693
    iget v14, v7, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    #@127
    .line 692
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v13

    #@12b
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12e
    move-result-object v13

    #@12f
    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@132
    .line 695
    :cond_c
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@134
    invoke-virtual {v12, v7, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    #@137
    goto :goto_7

    #@138
    .line 700
    .end local v5    # "i":I
    .end local v7    # "old":Landroid/support/v4/app/Fragment;
    :cond_d
    if-eqz v3, :cond_7

    #@13a
    .line 701
    iput v1, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@13c
    .line 702
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@13e
    const/4 v13, 0x0

    #@13f
    invoke-virtual {v12, v3, v13}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    #@142
    goto/16 :goto_5

    #@144
    .line 706
    .end local v0    # "containerId":I
    :pswitch_2
    iget-object v3, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@146
    .line 707
    .local v3, "f":Landroid/support/v4/app/Fragment;
    iput v2, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@148
    .line 708
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@14a
    invoke-virtual {v12, v3, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    #@14d
    goto/16 :goto_5

    #@14f
    .line 711
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_3
    iget-object v3, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@151
    .line 712
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    iput v2, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@153
    .line 713
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@155
    invoke-virtual {v12, v3, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->hideFragment(Landroid/support/v4/app/Fragment;II)V

    #@158
    goto/16 :goto_5

    #@15a
    .line 716
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_4
    iget-object v3, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@15c
    .line 717
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    iput v1, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@15e
    .line 718
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@160
    invoke-virtual {v12, v3, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->showFragment(Landroid/support/v4/app/Fragment;II)V

    #@163
    goto/16 :goto_5

    #@165
    .line 721
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_5
    iget-object v3, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@167
    .line 722
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    iput v2, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@169
    .line 723
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@16b
    invoke-virtual {v12, v3, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->detachFragment(Landroid/support/v4/app/Fragment;II)V

    #@16e
    goto/16 :goto_5

    #@170
    .line 726
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_6
    iget-object v3, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@172
    .line 727
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    iput v1, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@174
    .line 728
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@176
    invoke-virtual {v12, v3, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->attachFragment(Landroid/support/v4/app/Fragment;II)V

    #@179
    goto/16 :goto_5

    #@17b
    .line 738
    .end local v1    # "enterAnim":I
    .end local v2    # "exitAnim":I
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :cond_e
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@17d
    iget-object v13, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@17f
    iget v13, v13, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    #@181
    const/4 v14, 0x1

    #@182
    invoke-virtual {v12, v13, v10, v11, v14}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V

    #@185
    .line 740
    iget-boolean v12, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    #@187
    if-eqz v12, :cond_f

    #@189
    .line 741
    iget-object v12, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@18b
    invoke-virtual {v12, p0}, Landroid/support/v4/app/FragmentManagerImpl;->addBackStackState(Landroid/support/v4/app/BackStackRecord;)V

    #@18e
    .line 638
    :cond_f
    return-void

    #@18f
    .line 667
    nop

    #@190
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setBreadCrumbShortTitle(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "res"    # I

    #@0
    .prologue
    .line 576
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@2
    .line 577
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@5
    .line 578
    return-object p0
.end method

.method public setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 582
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@3
    .line 583
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@5
    .line 584
    return-object p0
.end method

.method public setBreadCrumbTitle(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "res"    # I

    #@0
    .prologue
    .line 564
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@2
    .line 565
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@5
    .line 566
    return-object p0
.end method

.method public setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 570
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@3
    .line 571
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@5
    .line 572
    return-object p0
.end method

.method public setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "enter"    # I
    .param p2, "exit"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 499
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/v4/app/BackStackRecord;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;
    .locals 0
    .param p1, "enter"    # I
    .param p2, "exit"    # I
    .param p3, "popEnter"    # I
    .param p4, "popExit"    # I

    #@0
    .prologue
    .line 504
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    #@2
    .line 505
    iput p2, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    #@4
    .line 506
    iput p3, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    #@6
    .line 507
    iput p4, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    #@8
    .line 508
    return-object p0
.end method

.method public setTransition(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 0
    .param p1, "transition"    # I

    #@0
    .prologue
    .line 512
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    #@2
    .line 513
    return-object p0
.end method

.method public setTransitionStyle(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 0
    .param p1, "styleRes"    # I

    #@0
    .prologue
    .line 536
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    #@2
    .line 537
    return-object p0
.end method

.method public show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    #@0
    .prologue
    .line 472
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    #@2
    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    #@5
    .line 473
    .local v0, "op":Landroid/support/v4/app/BackStackRecord$Op;
    const/4 v1, 0x5

    #@6
    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    #@8
    .line 474
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@a
    .line 475
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    #@d
    .line 477
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 242
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "BackStackEntry{"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 243
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@10
    move-result v1

    #@11
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 244
    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@1a
    if-ltz v1, :cond_0

    #@1c
    .line 245
    const-string/jumbo v1, " #"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 246
    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    .line 248
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    #@29
    if-eqz v1, :cond_1

    #@2b
    .line 249
    const-string/jumbo v1, " "

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 250
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 252
    :cond_1
    const-string/jumbo v1, "}"

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    return-object v1
.end method
