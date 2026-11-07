.class public abstract Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
.super Lcom/android/internal/widget/PagerAdapter;
.source "AbstractMultiProfilePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;,
        Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;,
        Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;,
        Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;,
        Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;,
        Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;,
        Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CompositeEmptyStateProvider;,
        Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker;,
        Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$MyUserIdProvider;,
        Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$Profile;
    }
.end annotation


# static fields
.field static final blacklist PROFILE_PERSONAL:I = 0x0

.field static final blacklist PROFILE_WORK:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "AbstractMultiProfilePagerAdapter"


# instance fields
.field private final blacklist mCloneUserHandle:Landroid/os/UserHandle;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentPage:I

.field private final blacklist mEmptyStateProvider:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;

.field private blacklist mLoadedPages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOnProfileSelectedListener:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;

.field private final blacklist mQuietModeManager:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

.field private final blacklist mWorkProfileUserHandle:Landroid/os/UserHandle;


# direct methods
.method public static synthetic blacklist $r8$lambda$VlEe-l4IBckwOaGlgN3bJ3hrC_Y(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;Lcom/android/internal/app/ResolverListAdapter;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->lambda$showEmptyResolverListEmptyState$1(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;Lcom/android/internal/app/ResolverListAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$okKXmWw0k61XyKhbqEYp1Jbw2Eo(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->lambda$showEmptyResolverListEmptyState$0(Lcom/android/internal/app/ResolverListAdapter;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLoadedPages(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mLoadedPages:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnProfileSelectedListener(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mOnProfileSelectedListener:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentPage(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mCurrentPage:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;ILcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;Landroid/os/UserHandle;Landroid/os/UserHandle;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentPage"    # I
    .param p3, "emptyStateProvider"    # Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;
    .param p4, "quietModeManager"    # Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;
    .param p5, "workProfileUserHandle"    # Landroid/os/UserHandle;
    .param p6, "cloneUserHandle"    # Landroid/os/UserHandle;

    .line 70
    invoke-direct {p0}, Lcom/android/internal/widget/PagerAdapter;-><init>()V

    .line 71
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mContext:Landroid/content/Context;

    .line 72
    iput p2, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mCurrentPage:I

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mLoadedPages:Ljava/util/Set;

    .line 74
    iput-object p5, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    .line 75
    iput-object p6, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mCloneUserHandle:Landroid/os/UserHandle;

    .line 76
    iput-object p3, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mEmptyStateProvider:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;

    .line 77
    iput-object p4, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mQuietModeManager:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

    .line 78
    return-void
.end method

.method private blacklist isQuietModeEnabled(Landroid/os/UserHandle;)Z
    .registers 3
    .param p1, "workProfileUserHandle"    # Landroid/os/UserHandle;

    .line 81
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mQuietModeManager:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

    invoke-interface {v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method private synthetic blacklist lambda$showEmptyResolverListEmptyState$0(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 4
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 318
    nop

    .line 319
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->userHandleToPageIndex(Landroid/os/UserHandle;)I

    move-result v0

    .line 318
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;

    move-result-object v0

    .line 320
    .local v0, "descriptor":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->getEmptyStateView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->showSpinner(Landroid/view/View;)V

    .line 321
    return-void
.end method

.method private synthetic blacklist lambda$showEmptyResolverListEmptyState$1(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;Lcom/android/internal/app/ResolverListAdapter;Landroid/view/View;)V
    .registers 6
    .param p1, "emptyState"    # Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;
    .param p2, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p3, "v"    # Landroid/view/View;

    .line 317
    invoke-interface {p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;->getButtonClickListener()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState$ClickListener;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Lcom/android/internal/app/ResolverListAdapter;)V

    invoke-interface {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState$ClickListener;->onClick(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState$TabControl;)V

    return-void
.end method

.method private blacklist rebuildTab(Lcom/android/internal/app/ResolverListAdapter;Z)Z
    .registers 4
    .param p1, "activeListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p2, "doPostProcessing"    # Z

    .line 280
    invoke-direct {p0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->shouldSkipRebuild(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 281
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/app/ResolverListAdapter;->postListReadyRunnable(ZZ)V

    .line 282
    const/4 v0, 0x0

    return v0

    .line 284
    :cond_c
    invoke-virtual {p1, p2}, Lcom/android/internal/app/ResolverListAdapter;->rebuildList(Z)Z

    move-result v0

    return v0
.end method

.method private blacklist resetViewVisibilitiesForEmptyState(Landroid/view/View;)V
    .registers 4
    .param p1, "emptyStateView"    # Landroid/view/View;

    .line 419
    const v0, 0x10204c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 420
    const v0, 0x10204c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 421
    const v0, 0x10204bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 422
    const v0, 0x10204bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 423
    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 424
    return-void
.end method

.method private blacklist shouldSkipRebuild(Lcom/android/internal/app/ResolverListAdapter;)Z
    .registers 4
    .param p1, "activeListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 288
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mEmptyStateProvider:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;->getEmptyState(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;

    move-result-object v0

    .line 289
    .local v0, "emptyState":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;
    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;->shouldSkipDataRebuild()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method private blacklist showSpinner(Landroid/view/View;)V
    .registers 4
    .param p1, "emptyStateView"    # Landroid/view/View;

    .line 412
    const v0, 0x10204c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 413
    const v0, 0x10204bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 414
    const v0, 0x10204bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 415
    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 416
    return-void
.end method

.method private blacklist userHandleToPageIndex(Landroid/os/UserHandle;)I
    .registers 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 272
    invoke-virtual {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getPersonalListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListController;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 273
    const/4 v0, 0x0

    return v0

    .line 275
    :cond_12
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method blacklist clearInactiveProfileCache()V
    .registers 4

    .line 124
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mLoadedPages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 125
    return-void

    .line 127
    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mLoadedPages:Ljava/util/Set;

    iget v2, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mCurrentPage:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public blacklist destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .line 139
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 140
    return-void
.end method

.method abstract blacklist getActiveAdapterView()Landroid/view/ViewGroup;
.end method

.method public abstract blacklist getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;
.end method

.method public abstract blacklist getAdapterForIndex(I)Ljava/lang/Object;
.end method

.method public blacklist getCloneUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mCloneUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method blacklist getContext()Landroid/content/Context;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public blacklist getCount()I
    .registers 2

    .line 144
    invoke-virtual {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method protected blacklist getCurrentPage()I
    .registers 2

    .line 148
    iget v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mCurrentPage:I

    return v0
.end method

.method abstract blacklist getCurrentRootAdapter()Ljava/lang/Object;
.end method

.method public blacklist getCurrentUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListController;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method abstract blacklist getInactiveAdapterView()Landroid/view/ViewGroup;
.end method

.method public abstract blacklist getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;
.end method

.method public abstract blacklist getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;
.end method

.method abstract blacklist getItemCount()I
.end method

.method abstract blacklist getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;
.end method

.method public blacklist getPageTitle(I)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "position"    # I

    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract blacklist getPersonalListAdapter()Lcom/android/internal/app/ResolverListAdapter;
.end method

.method public abstract blacklist getWorkListAdapter()Lcom/android/internal/app/ResolverListAdapter;
.end method

.method public blacklist instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;
    .registers 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .line 132
    invoke-virtual {p0, p2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;

    move-result-object v0

    .line 133
    .local v0, "profileDescriptor":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;
    iget-object v1, v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 134
    iget-object v1, v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    return-object v1
.end method

.method public bridge synthetic blacklist instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method public blacklist isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .line 158
    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method blacklist rebuildActiveTab(Z)Z
    .registers 3
    .param p1, "doPostProcessing"    # Z

    .line 250
    const-string v0, "MultiProfilePagerAdapter#rebuildActiveTab"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildTab(Lcom/android/internal/app/ResolverListAdapter;Z)Z

    move-result v0

    .line 252
    .local v0, "result":Z
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 253
    return v0
.end method

.method blacklist rebuildInactiveTab(Z)Z
    .registers 4
    .param p1, "doPostProcessing"    # Z

    .line 261
    const-string v0, "MultiProfilePagerAdapter#rebuildInactiveTab"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 263
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 264
    const/4 v0, 0x0

    return v0

    .line 266
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildTab(Lcom/android/internal/app/ResolverListAdapter;Z)Z

    move-result v0

    .line 267
    .local v0, "result":Z
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 268
    return v0
.end method

.method blacklist setOnProfileSelectedListener(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;

    .line 85
    iput-object p1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mOnProfileSelectedListener:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;

    .line 86
    return-void
.end method

.method protected blacklist setupContainerPadding(Landroid/view/View;)V
    .registers 2
    .param p1, "container"    # Landroid/view/View;

    .line 409
    return-void
.end method

.method abstract blacklist setupListAdapter(I)V
.end method

.method blacklist setupViewPager(Lcom/android/internal/widget/ViewPager;)V
    .registers 4
    .param p1, "viewPager"    # Lcom/android/internal/widget/ViewPager;

    .line 98
    new-instance v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$1;-><init>(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ViewPager;->setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    .line 118
    invoke-virtual {p1, p0}, Lcom/android/internal/widget/ViewPager;->setAdapter(Lcom/android/internal/widget/PagerAdapter;)V

    .line 119
    iget v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mCurrentPage:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    .line 120
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mLoadedPages:Ljava/util/Set;

    iget v1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mCurrentPage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method blacklist shouldShowEmptyStateScreen(Lcom/android/internal/app/ResolverListAdapter;)Z
    .registers 5
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 435
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v0

    .line 436
    .local v0, "count":I
    if-nez v0, :cond_c

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getPlaceholderCount()I

    move-result v1

    if-eqz v1, :cond_20

    .line 437
    :cond_c
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    .line 438
    invoke-direct {p0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_22

    :cond_20
    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    .line 436
    :goto_23
    return v1
.end method

.method blacklist showEmptyResolverListEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 5
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 306
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->mEmptyStateProvider:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;->getEmptyState(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;

    move-result-object v0

    .line 308
    .local v0, "emptyState":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;
    if-nez v0, :cond_9

    .line 309
    return-void

    .line 312
    :cond_9
    invoke-interface {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;->onEmptyStateShown()V

    .line 314
    const/4 v1, 0x0

    .line 316
    .local v1, "clickListener":Landroid/view/View$OnClickListener;
    invoke-interface {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;->getButtonClickListener()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState$ClickListener;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 317
    new-instance v2, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;Lcom/android/internal/app/ResolverListAdapter;)V

    move-object v1, v2

    .line 324
    :cond_19
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;Landroid/view/View$OnClickListener;)V

    .line 325
    return-void
.end method

.method protected blacklist showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;Landroid/view/View$OnClickListener;)V
    .registers 15
    .param p1, "activeListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p2, "emptyState"    # Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;
    .param p3, "buttonOnClick"    # Landroid/view/View$OnClickListener;

    .line 367
    nop

    .line 368
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->userHandleToPageIndex(Landroid/os/UserHandle;)I

    move-result v0

    .line 367
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;

    move-result-object v0

    .line 369
    .local v0, "descriptor":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;
    iget-object v1, v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    const v2, 0x10204c2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 370
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->getEmptyStateView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 371
    .local v1, "emptyStateView":Landroid/view/ViewGroup;
    invoke-direct {p0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->resetViewVisibilitiesForEmptyState(Landroid/view/View;)V

    .line 372
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 374
    const v4, 0x10204bd

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 375
    .local v4, "container":Landroid/view/View;
    invoke-virtual {p0, v4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->setupContainerPadding(Landroid/view/View;)V

    .line 377
    const v5, 0x10204c1

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 378
    .local v5, "titleView":Landroid/widget/TextView;
    invoke-interface {p2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 379
    .local v6, "title":Ljava/lang/String;
    if-eqz v6, :cond_46

    .line 380
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 381
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_49

    .line 383
    :cond_46
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    :goto_49
    const v7, 0x10204c0

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 387
    .local v7, "subtitleView":Landroid/widget/TextView;
    invoke-interface {p2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;->getSubtitle()Ljava/lang/String;

    move-result-object v8

    .line 388
    .local v8, "subtitle":Ljava/lang/String;
    if-eqz v8, :cond_5f

    .line 389
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_62

    .line 392
    :cond_5f
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 395
    :goto_62
    const v9, 0x1020004

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 396
    .local v9, "defaultEmptyText":Landroid/view/View;
    invoke-interface {p2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;->useDefaultEmptyView()Z

    move-result v10

    if-eqz v10, :cond_71

    move v10, v3

    goto :goto_72

    :cond_71
    move v10, v2

    :goto_72
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 398
    const v10, 0x10204bc

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 399
    .local v10, "button":Landroid/widget/Button;
    if-eqz p3, :cond_81

    move v2, v3

    :cond_81
    invoke-virtual {v10, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 400
    invoke-virtual {v10, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->markTabLoaded()V

    .line 403
    return-void
.end method

.method protected blacklist showListView(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 5
    .param p1, "activeListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 427
    nop

    .line 428
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->userHandleToPageIndex(Landroid/os/UserHandle;)I

    move-result v0

    .line 427
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;

    move-result-object v0

    .line 429
    .local v0, "descriptor":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;
    iget-object v1, v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    const v2, 0x10204c2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 430
    iget-object v1, v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    const v2, 0x10204bb

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 431
    .local v1, "emptyStateView":Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 432
    return-void
.end method
