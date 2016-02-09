.class public abstract Landroid/support/v4/app/FragmentPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "FragmentPagerAdapter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FragmentPagerAdapter"


# instance fields
.field private mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

.field private final mFragmentManager:Landroid/support/v4/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 69
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    #@4
    .line 66
    iput-object v0, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    #@6
    .line 67
    iput-object v0, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    #@8
    .line 70
    iput-object p1, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    #@a
    .line 69
    return-void
.end method

.method private static makeFragmentName(IJ)Ljava/lang/String;
    .locals 3
    .param p0, "viewId"    # I
    .param p1, "id"    # J

    #@0
    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "android:switcher:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, ":"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 113
    iget-object v0, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    #@6
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    #@c
    .line 117
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    #@e
    check-cast p3, Landroid/support/v4/app/Fragment;

    #@10
    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    #@13
    .line 111
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 138
    iget-object v0, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 139
    iget-object v0, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    #@7
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    #@a
    .line 140
    iput-object v1, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    #@c
    .line 141
    iget-object v0, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    #@e
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    #@11
    .line 137
    :cond_0
    return-void
.end method

.method public abstract getItem(I)Landroid/support/v4/app/Fragment;
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 169
    int-to-long v0, p1

    #@1
    return-wide v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 84
    iget-object v4, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    #@3
    if-nez v4, :cond_0

    #@5
    .line 85
    iget-object v4, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    #@7
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    #@a
    move-result-object v4

    #@b
    iput-object v4, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    #@d
    .line 88
    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->getItemId(I)J

    #@10
    move-result-wide v2

    #@11
    .line 91
    .local v2, "itemId":J
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    #@14
    move-result v4

    #@15
    invoke-static {v4, v2, v3}, Landroid/support/v4/app/FragmentPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 92
    .local v1, "name":Ljava/lang/String;
    iget-object v4, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    #@1b
    invoke-virtual {v4, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    #@1e
    move-result-object v0

    #@1f
    .line 93
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    #@21
    .line 95
    iget-object v4, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    #@23
    invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    #@26
    .line 102
    :goto_0
    iget-object v4, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    #@28
    if-eq v0, v4, :cond_1

    #@2a
    .line 103
    invoke-virtual {v0, v7}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    #@2d
    .line 104
    invoke-virtual {v0, v7}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    #@30
    .line 107
    :cond_1
    return-object v0

    #@31
    .line 97
    :cond_2
    invoke-virtual {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    #@34
    move-result-object v0

    #@35
    .line 99
    iget-object v4, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    #@37
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    #@3a
    move-result v5

    #@3b
    .line 100
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    #@3e
    move-result v6

    #@3f
    invoke-static {v6, v2, v3}, Landroid/support/v4/app/FragmentPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    #@42
    move-result-object v6

    #@43
    .line 99
    invoke-virtual {v4, v5, v0, v6}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    #@46
    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 147
    check-cast p2, Landroid/support/v4/app/Fragment;

    #@2
    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    if-ne v0, p1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 156
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    #@0
    .prologue
    .line 152
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    move-object v0, p3

    #@3
    .line 122
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@5
    .line 123
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    #@7
    if-eq v0, v1, :cond_2

    #@9
    .line 124
    iget-object v1, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 125
    iget-object v1, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    #@f
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    #@12
    .line 126
    iget-object v1, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    #@14
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    #@17
    .line 128
    :cond_0
    if-eqz v0, :cond_1

    #@19
    .line 129
    invoke-virtual {v0, v3}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    #@1c
    .line 130
    invoke-virtual {v0, v3}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    #@1f
    .line 132
    :cond_1
    iput-object v0, p0, Landroid/support/v4/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    #@21
    .line 121
    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 79
    return-void
.end method
