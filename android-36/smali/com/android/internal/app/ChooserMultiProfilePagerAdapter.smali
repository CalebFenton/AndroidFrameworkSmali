.class public Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;
.super Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
.source "ChooserMultiProfilePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;
    }
.end annotation


# static fields
.field private static final blacklist SINGLE_CELL_SPAN_SIZE:I = 0x1


# instance fields
.field private blacklist mBottomOffset:I

.field private final blacklist mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

.field private blacklist mMaxTargetsPerRow:I


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;Landroid/os/UserHandle;Landroid/os/UserHandle;I)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .param p3, "emptyStateProvider"    # Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;
    .param p4, "quietModeManager"    # Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;
    .param p5, "workProfileUserHandle"    # Landroid/os/UserHandle;
    .param p6, "cloneUserHandle"    # Landroid/os/UserHandle;
    .param p7, "maxTargetsPerRow"    # I

    .line 50
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .end local p1    # "context":Landroid/content/Context;
    .end local p3    # "emptyStateProvider":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;
    .end local p4    # "quietModeManager":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;
    .end local p5    # "workProfileUserHandle":Landroid/os/UserHandle;
    .end local p6    # "cloneUserHandle":Landroid/os/UserHandle;
    .local v1, "context":Landroid/content/Context;
    .local v3, "emptyStateProvider":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;
    .local v4, "quietModeManager":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;
    .local v5, "workProfileUserHandle":Landroid/os/UserHandle;
    .local v6, "cloneUserHandle":Landroid/os/UserHandle;
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;-><init>(Landroid/content/Context;ILcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;Landroid/os/UserHandle;Landroid/os/UserHandle;)V

    .line 52
    const/4 p1, 0x1

    new-array p1, p1, [Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    .line 53
    invoke-direct {p0, p2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, p1, p4

    iput-object p1, v0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    .line 55
    iput p7, v0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mMaxTargetsPerRow:I

    .line 56
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;ILandroid/os/UserHandle;Landroid/os/UserHandle;I)V
    .registers 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "personalAdapter"    # Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .param p3, "workAdapter"    # Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .param p4, "emptyStateProvider"    # Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;
    .param p5, "quietModeManager"    # Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;
    .param p6, "defaultProfile"    # I
    .param p7, "workProfileUserHandle"    # Landroid/os/UserHandle;
    .param p8, "cloneUserHandle"    # Landroid/os/UserHandle;
    .param p9, "maxTargetsPerRow"    # I

    .line 67
    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p5

    move v2, p6

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;-><init>(Landroid/content/Context;ILcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;Landroid/os/UserHandle;Landroid/os/UserHandle;)V

    .line 69
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    .line 70
    invoke-direct {p0, p2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 71
    invoke-direct {p0, p3}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    .line 73
    move/from16 v1, p9

    iput v1, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mMaxTargetsPerRow:I

    .line 74
    return-void
.end method

.method private blacklist createProfileDescriptor(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;
    .registers 8
    .param p1, "adapter"    # Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    .line 78
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 79
    .local v0, "inflater":Landroid/view/LayoutInflater;
    nop

    .line 80
    const v1, 0x1090066

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 81
    .local v1, "rootView":Landroid/view/ViewGroup;
    new-instance v2, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;Landroid/view/ViewGroup;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)V

    .line 83
    .local v2, "profileDescriptor":Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;
    invoke-static {v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetrecyclerView(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v3

    new-instance v4, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;

    invoke-static {v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetrecyclerView(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/RecyclerView;->setAccessibilityDelegateCompat(Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;)V

    .line 85
    return-object v2
.end method


# virtual methods
.method bridge synthetic blacklist getActiveAdapterView()Landroid/view/ViewGroup;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method blacklist getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;
    .registers 2

    .line 179
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getListViewForIndex(I)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;
    .registers 2

    .line 146
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .registers 3
    .param p1, "pageIndex"    # I

    .line 109
    iget-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetchooserGridAdapter(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getAdapterForIndex(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object p1

    return-object p1
.end method

.method blacklist getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .registers 2

    .line 174
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic blacklist getCurrentRootAdapter()Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic blacklist getInactiveAdapterView()Landroid/view/ViewGroup;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method blacklist getInactiveAdapterView()Lcom/android/internal/widget/RecyclerView;
    .registers 3

    .line 185
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 186
    const/4 v0, 0x0

    return-object v0

    .line 188
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getListViewForIndex(I)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;
    .registers 3

    .line 152
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 153
    const/4 v0, 0x0

    return-object v0

    .line 155
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;
    .registers 3
    .param p1, "pageIndex"    # I

    .line 98
    iget-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    aget-object v0, v0, p1

    return-object v0
.end method

.method blacklist getItemCount()I
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    array-length v0, v0

    return v0
.end method

.method blacklist getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ChooserListAdapter;
    .registers 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 115
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getPersonalListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCloneUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_34

    .line 118
    :cond_19
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getWorkListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getWorkListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 120
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getWorkListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0

    .line 122
    :cond_32
    const/4 v0, 0x0

    return-object v0

    .line 117
    :cond_34
    :goto_34
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getPersonalListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic blacklist getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object p1

    return-object p1
.end method

.method blacklist getListViewForIndex(I)Lcom/android/internal/widget/RecyclerView;
    .registers 3
    .param p1, "index"    # I

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetrecyclerView(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPersonalListAdapter()Lcom/android/internal/app/ChooserListAdapter;
    .registers 2

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getPersonalListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getPersonalListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWorkListAdapter()Lcom/android/internal/app/ChooserListAdapter;
    .registers 3

    .line 166
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 167
    const/4 v0, 0x0

    return-object v0

    .line 169
    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getWorkListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getWorkListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method blacklist setEmptyStateBottomOffset(I)V
    .registers 2
    .param p1, "bottomOffset"    # I

    .line 192
    iput p1, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mBottomOffset:I

    .line 193
    return-void
.end method

.method public blacklist setMaxTargetsPerRow(I)V
    .registers 2
    .param p1, "maxTargetsPerRow"    # I

    .line 89
    iput p1, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mMaxTargetsPerRow:I

    .line 90
    return-void
.end method

.method protected blacklist setupContainerPadding(Landroid/view/View;)V
    .registers 7
    .param p1, "container"    # Landroid/view/View;

    .line 197
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050328

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 199
    .local v0, "initialBottomPadding":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mBottomOffset:I

    add-int/2addr v4, v0

    .line 199
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 201
    return-void
.end method

.method blacklist setupListAdapter(I)V
    .registers 6
    .param p1, "pageIndex"    # I

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetrecyclerView(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    .line 128
    .local v0, "recyclerView":Lcom/android/internal/widget/RecyclerView;
    nop

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetchooserGridAdapter(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v1

    .line 130
    .local v1, "chooserGridAdapter":Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/GridLayoutManager;

    .line 131
    .local v2, "glm":Lcom/android/internal/widget/GridLayoutManager;
    iget v3, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mMaxTargetsPerRow:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/GridLayoutManager;->setSpanCount(I)V

    .line 132
    new-instance v3, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$1;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/widget/GridLayoutManager;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/GridLayoutManager;->setSpanSizeLookup(Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 141
    return-void
.end method
