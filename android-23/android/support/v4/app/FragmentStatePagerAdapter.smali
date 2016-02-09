.class public abstract Landroid/support/v4/app/FragmentStatePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "FragmentStatePagerAdapter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FragmentStatePagerAdapter"


# instance fields
.field private mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

.field private final mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedState:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 75
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    #@4
    .line 69
    iput-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    #@6
    .line 71
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    #@d
    .line 72
    new-instance v0, Ljava/util/ArrayList;

    #@f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@12
    iput-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    #@14
    .line 73
    iput-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    #@16
    .line 76
    iput-object p1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    #@18
    .line 75
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    move-object v0, p3

    #@2
    .line 126
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@4
    .line 128
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    #@6
    if-nez v1, :cond_0

    #@8
    .line 129
    iget-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    #@a
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    #@10
    .line 133
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v1

    #@16
    if-gt v1, p2, :cond_1

    #@18
    .line 134
    iget-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1d
    goto :goto_0

    #@1e
    .line 136
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    #@20
    iget-object v2, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    #@22
    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentManager;->saveFragmentInstanceState(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v1, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@29
    .line 137
    iget-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v1, p2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 139
    iget-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    #@30
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    #@33
    .line 125
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 160
    iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 161
    iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    #@7
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    #@a
    .line 162
    iput-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    #@c
    .line 163
    iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    #@e
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    #@11
    .line 159
    :cond_0
    return-void
.end method

.method public abstract getItem(I)Landroid/support/v4/app/Fragment;
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 94
    iget-object v3, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v3

    #@8
    if-le v3, p2, :cond_0

    #@a
    .line 95
    iget-object v3, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@12
    .line 96
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    #@14
    .line 97
    return-object v0

    #@15
    .line 101
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    #@17
    if-nez v3, :cond_1

    #@19
    .line 102
    iget-object v3, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    #@1b
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    #@1e
    move-result-object v3

    #@1f
    iput-object v3, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    #@21
    .line 105
    :cond_1
    invoke-virtual {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    #@24
    move-result-object v1

    #@25
    .line 107
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v3, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@2a
    move-result v3

    #@2b
    if-le v3, p2, :cond_2

    #@2d
    .line 108
    iget-object v3, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    check-cast v2, Landroid/support/v4/app/Fragment$SavedState;

    #@35
    .line 109
    .local v2, "fss":Landroid/support/v4/app/Fragment$SavedState;
    if-eqz v2, :cond_2

    #@37
    .line 110
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setInitialSavedState(Landroid/support/v4/app/Fragment$SavedState;)V

    #@3a
    .line 113
    .end local v2    # "fss":Landroid/support/v4/app/Fragment$SavedState;
    :cond_2
    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    #@3c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@3f
    move-result v3

    #@40
    if-gt v3, p2, :cond_3

    #@42
    .line 114
    iget-object v3, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    #@44
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@47
    goto :goto_0

    #@48
    .line 116
    :cond_3
    invoke-virtual {v1, v5}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    #@4b
    .line 117
    invoke-virtual {v1, v5}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    #@4e
    .line 118
    iget-object v3, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    #@50
    invoke-virtual {v3, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@53
    .line 119
    iget-object v3, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    #@55
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    #@58
    move-result v4

    #@59
    invoke-virtual {v3, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    #@5c
    .line 121
    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 169
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
    .locals 12
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 196
    if-eqz p1, :cond_4

    #@3
    move-object v0, p1

    #@4
    .line 197
    check-cast v0, Landroid/os/Bundle;

    #@6
    .line 198
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@9
    .line 199
    const-string/jumbo v8, "states"

    #@c
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    #@f
    move-result-object v2

    #@10
    .line 200
    .local v2, "fss":[Landroid/os/Parcelable;
    iget-object v8, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    #@15
    .line 201
    iget-object v8, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    #@1a
    .line 202
    if-eqz v2, :cond_0

    #@1c
    .line 203
    const/4 v3, 0x0

    #@1d
    .local v3, "i":I
    :goto_0
    array-length v8, v2

    #@1e
    if-ge v3, v8, :cond_0

    #@20
    .line 204
    iget-object v9, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    #@22
    aget-object v8, v2, v3

    #@24
    check-cast v8, Landroid/support/v4/app/Fragment$SavedState;

    #@26
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@29
    .line 203
    add-int/lit8 v3, v3, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 207
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@2f
    move-result-object v7

    #@30
    .line 208
    .local v7, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@33
    move-result-object v6

    #@34
    .local v6, "key$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@37
    move-result v8

    #@38
    if-eqz v8, :cond_4

    #@3a
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3d
    move-result-object v5

    #@3e
    check-cast v5, Ljava/lang/String;

    #@40
    .line 209
    .local v5, "key":Ljava/lang/String;
    const-string/jumbo v8, "f"

    #@43
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@46
    move-result v8

    #@47
    if-eqz v8, :cond_1

    #@49
    .line 210
    const/4 v8, 0x1

    #@4a
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4d
    move-result-object v8

    #@4e
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@51
    move-result v4

    #@52
    .line 211
    .local v4, "index":I
    iget-object v8, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    #@54
    invoke-virtual {v8, v0, v5}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    #@57
    move-result-object v1

    #@58
    .line 212
    .local v1, "f":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_3

    #@5a
    .line 213
    :goto_2
    iget-object v8, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    #@5c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@5f
    move-result v8

    #@60
    if-gt v8, v4, :cond_2

    #@62
    .line 214
    iget-object v8, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    #@64
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@67
    goto :goto_2

    #@68
    .line 216
    :cond_2
    const/4 v8, 0x0

    #@69
    invoke-virtual {v1, v8}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    #@6c
    .line 217
    iget-object v8, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    #@6e
    invoke-virtual {v8, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@71
    goto :goto_1

    #@72
    .line 219
    :cond_3
    const-string/jumbo v8, "FragmentStatePagerAdapter"

    #@75
    new-instance v9, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v10, "Bad fragment at key "

    #@7d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v9

    #@81
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v9

    #@85
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v9

    #@89
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@8c
    goto :goto_1

    #@8d
    .line 195
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    .end local v2    # "fss":[Landroid/os/Parcelable;
    .end local v4    # "index":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "key$iterator":Ljava/util/Iterator;
    .end local v7    # "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    :cond_4
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 7

    #@0
    .prologue
    .line 174
    const/4 v4, 0x0

    #@1
    .line 175
    .local v4, "state":Landroid/os/Bundle;
    iget-object v5, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v5

    #@7
    if-lez v5, :cond_0

    #@9
    .line 176
    new-instance v4, Landroid/os/Bundle;

    #@b
    .end local v4    # "state":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    #@e
    .line 177
    .local v4, "state":Landroid/os/Bundle;
    iget-object v5, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v5

    #@14
    new-array v1, v5, [Landroid/support/v4/app/Fragment$SavedState;

    #@16
    .line 178
    .local v1, "fss":[Landroid/support/v4/app/Fragment$SavedState;
    iget-object v5, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1b
    .line 179
    const-string/jumbo v5, "states"

    #@1e
    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@21
    .line 181
    .end local v1    # "fss":[Landroid/support/v4/app/Fragment$SavedState;
    .end local v4    # "state":Landroid/os/Bundle;
    :cond_0
    const/4 v2, 0x0

    #@22
    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@27
    move-result v5

    #@28
    if-ge v2, v5, :cond_3

    #@2a
    .line 182
    iget-object v5, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@32
    .line 183
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    #@34
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    #@37
    move-result v5

    #@38
    if-eqz v5, :cond_2

    #@3a
    .line 184
    if-nez v4, :cond_1

    #@3c
    .line 185
    new-instance v4, Landroid/os/Bundle;

    #@3e
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    #@41
    .line 187
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v6, "f"

    #@49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    .line 188
    .local v3, "key":Ljava/lang/String;
    iget-object v5, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    #@57
    invoke-virtual {v5, v4, v3, v0}, Landroid/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    #@5a
    .line 181
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@5c
    goto :goto_0

    #@5d
    .line 191
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_3
    return-object v4
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
    .line 144
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@5
    .line 145
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    #@7
    if-eq v0, v1, :cond_2

    #@9
    .line 146
    iget-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 147
    iget-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    #@f
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    #@12
    .line 148
    iget-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    #@14
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    #@17
    .line 150
    :cond_0
    if-eqz v0, :cond_1

    #@19
    .line 151
    invoke-virtual {v0, v3}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    #@1c
    .line 152
    invoke-virtual {v0, v3}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    #@1f
    .line 154
    :cond_1
    iput-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    #@21
    .line 143
    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 85
    return-void
.end method
