.class public Landroid/preference/PreferenceGroupAdapter;
.super Landroid/widget/BaseAdapter;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeInternalListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;,
        Landroid/preference/PreferenceGroupAdapter$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceGroupAdapter"

.field private static sWrapperLayoutParams:Landroid/view/ViewGroup$LayoutParams;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHasReturnedViewTypeCount:Z

.field private mHighlightedDrawable:Landroid/graphics/drawable/Drawable;

.field private mHighlightedPosition:I

.field private volatile mIsSyncing:Z

.field private mPreferenceGroup:Landroid/preference/PreferenceGroup;

.field private mPreferenceLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncRunnable:Ljava/lang/Runnable;

.field private mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;


# direct methods
.method static synthetic -wrap0(Landroid/preference/PreferenceGroupAdapter;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/preference/PreferenceGroupAdapter;->syncMyPreferences()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 99
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    #@2
    .line 100
    const/4 v1, -0x1

    #@3
    const/4 v2, -0x2

    #@4
    .line 99
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@7
    sput-object v0, Landroid/preference/PreferenceGroupAdapter;->sWrapperLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    #@9
    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/preference/PreferenceGroup;)V
    .locals 3
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 125
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@4
    .line 79
    new-instance v0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-direct {v0, v1}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)V

    #@a
    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    #@c
    .line 84
    iput-boolean v2, p0, Landroid/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    #@e
    .line 86
    iput-boolean v2, p0, Landroid/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    #@10
    .line 88
    new-instance v0, Landroid/os/Handler;

    #@12
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@15
    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    #@17
    .line 90
    new-instance v0, Landroid/preference/PreferenceGroupAdapter$1;

    #@19
    invoke-direct {v0, p0}, Landroid/preference/PreferenceGroupAdapter$1;-><init>(Landroid/preference/PreferenceGroupAdapter;)V

    #@1c
    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    #@1e
    .line 96
    const/4 v0, -0x1

    #@1f
    iput v0, p0, Landroid/preference/PreferenceGroupAdapter;->mHighlightedPosition:I

    #@21
    .line 126
    iput-object p1, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/preference/PreferenceGroup;

    #@23
    .line 128
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/preference/PreferenceGroup;

    #@25
    invoke-virtual {v0, p0}, Landroid/preference/PreferenceGroup;->setOnPreferenceChangeInternalListener(Landroid/preference/Preference$OnPreferenceChangeInternalListener;)V

    #@28
    .line 130
    new-instance v0, Ljava/util/ArrayList;

    #@2a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2d
    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    #@2f
    .line 131
    new-instance v0, Ljava/util/ArrayList;

    #@31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@34
    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    #@36
    .line 133
    invoke-direct {p0}, Landroid/preference/PreferenceGroupAdapter;->syncMyPreferences()V

    #@39
    .line 125
    return-void
.end method

.method private addPreferenceClassName(Landroid/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    #@0
    .prologue
    .line 196
    const/4 v2, 0x0

    #@1
    invoke-direct {p0, p1, v2}, Landroid/preference/PreferenceGroupAdapter;->createPreferenceLayout(Landroid/preference/Preference;Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    #@4
    move-result-object v1

    #@5
    .line 197
    .local v1, "pl":Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
    iget-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    #@7
    invoke-static {v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    #@a
    move-result v0

    #@b
    .line 200
    .local v0, "insertPos":I
    if-gez v0, :cond_0

    #@d
    .line 202
    mul-int/lit8 v2, v0, -0x1

    #@f
    add-int/lit8 v0, v2, -0x1

    #@11
    .line 203
    iget-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@16
    .line 195
    :cond_0
    return-void
.end method

.method private createPreferenceLayout(Landroid/preference/Preference;Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "in"    # Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 188
    if-eqz p2, :cond_0

    #@3
    move-object v0, p2

    #@4
    .line 189
    .local v0, "pl":Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
    :goto_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-static {v0, v1}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->-set0(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;Ljava/lang/String;)Ljava/lang/String;

    #@f
    .line 190
    invoke-virtual {p1}, Landroid/preference/Preference;->getLayoutResource()I

    #@12
    move-result v1

    #@13
    invoke-static {v0, v1}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->-set1(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;I)I

    #@16
    .line 191
    invoke-virtual {p1}, Landroid/preference/Preference;->getWidgetLayoutResource()I

    #@19
    move-result v1

    #@1a
    invoke-static {v0, v1}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->-set2(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;I)I

    #@1d
    .line 192
    return-object v0

    #@1e
    .line 188
    .end local v0    # "pl":Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
    :cond_0
    new-instance v0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    #@20
    invoke-direct {v0, v1}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)V

    #@23
    .restart local v0    # "pl":Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
    goto :goto_0
.end method

.method private flattenPreferenceGroup(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 5
    .param p2, "group"    # Landroid/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;",
            "Landroid/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 159
    .local p1, "preferences":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-virtual {p2}, Landroid/preference/PreferenceGroup;->sortPreferences()V

    #@3
    .line 161
    invoke-virtual {p2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    #@6
    move-result v0

    #@7
    .line 162
    .local v0, "groupSize":I
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@a
    .line 163
    invoke-virtual {p2, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    #@d
    move-result-object v2

    #@e
    .line 165
    .local v2, "preference":Landroid/preference/Preference;
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@11
    .line 167
    iget-boolean v4, p0, Landroid/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    #@13
    if-nez v4, :cond_0

    #@15
    invoke-virtual {v2}, Landroid/preference/Preference;->canRecycleLayout()Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_0

    #@1b
    .line 168
    invoke-direct {p0, v2}, Landroid/preference/PreferenceGroupAdapter;->addPreferenceClassName(Landroid/preference/Preference;)V

    #@1e
    .line 171
    :cond_0
    instance-of v4, v2, Landroid/preference/PreferenceGroup;

    #@20
    if-eqz v4, :cond_1

    #@22
    move-object v3, v2

    #@23
    .line 172
    check-cast v3, Landroid/preference/PreferenceGroup;

    #@25
    .line 173
    .local v3, "preferenceAsGroup":Landroid/preference/PreferenceGroup;
    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->isOnSameScreenAsChildren()Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_1

    #@2b
    .line 174
    invoke-direct {p0, p1, v3}, Landroid/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    #@2e
    .line 178
    .end local v3    # "preferenceAsGroup":Landroid/preference/PreferenceGroup;
    :cond_1
    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeInternalListener(Landroid/preference/Preference$OnPreferenceChangeInternalListener;)V

    #@31
    .line 162
    add-int/lit8 v1, v1, 0x1

    #@33
    goto :goto_0

    #@34
    .line 157
    .end local v2    # "preference":Landroid/preference/Preference;
    :cond_2
    return-void
.end method

.method private getHighlightItemViewType()I
    .locals 1

    #@0
    .prologue
    .line 285
    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->getViewTypeCount()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    return v0
.end method

.method private syncMyPreferences()V
    .locals 2

    #@0
    .prologue
    .line 137
    monitor-enter p0

    #@1
    .line 138
    :try_start_0
    iget-boolean v1, p0, Landroid/preference/PreferenceGroupAdapter;->mIsSyncing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v1, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 139
    return-void

    #@7
    .line 142
    :cond_0
    const/4 v1, 0x1

    #@8
    :try_start_1
    iput-boolean v1, p0, Landroid/preference/PreferenceGroupAdapter;->mIsSyncing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 145
    new-instance v0, Ljava/util/ArrayList;

    #@d
    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    #@f
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@12
    move-result v1

    #@13
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@16
    .line 146
    .local v0, "newPreferenceList":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/preference/PreferenceGroup;

    #@18
    invoke-direct {p0, v0, v1}, Landroid/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    #@1b
    .line 147
    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    #@1d
    .line 149
    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->notifyDataSetChanged()V

    #@20
    .line 151
    monitor-enter p0

    #@21
    .line 152
    const/4 v1, 0x0

    #@22
    :try_start_2
    iput-boolean v1, p0, Landroid/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    #@24
    .line 153
    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@27
    monitor-exit p0

    #@28
    .line 136
    return-void

    #@29
    .line 137
    .end local v0    # "newPreferenceList":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit p0

    #@2b
    throw v1

    #@2c
    .line 151
    .restart local v0    # "newPreferenceList":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :catchall_1
    move-exception v1

    #@2d
    monitor-exit p0

    #@2e
    throw v1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 267
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCount()I
    .locals 1

    #@0
    .prologue
    .line 208
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getItem(I)Landroid/preference/Preference;
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 212
    if-ltz p1, :cond_0

    #@2
    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->getCount()I

    #@5
    move-result v0

    #@6
    if-lt p1, v0, :cond_1

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    return-object v0

    #@a
    .line 213
    :cond_1
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    #@c
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/preference/Preference;

    #@12
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 211
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 217
    if-ltz p1, :cond_0

    #@2
    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->getCount()I

    #@5
    move-result v0

    #@6
    if-lt p1, v0, :cond_1

    #@8
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    #@a
    return-wide v0

    #@b
    .line 218
    :cond_1
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/preference/Preference;->getId()J

    #@12
    move-result-wide v0

    #@13
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 290
    iget v2, p0, Landroid/preference/PreferenceGroupAdapter;->mHighlightedPosition:I

    #@3
    if-ne p1, v2, :cond_0

    #@5
    .line 291
    invoke-direct {p0}, Landroid/preference/PreferenceGroupAdapter;->getHighlightItemViewType()I

    #@8
    move-result v2

    #@9
    return v2

    #@a
    .line 294
    :cond_0
    iget-boolean v2, p0, Landroid/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    #@c
    if-nez v2, :cond_1

    #@e
    .line 295
    const/4 v2, 0x1

    #@f
    iput-boolean v2, p0, Landroid/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    #@11
    .line 298
    :cond_1
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    #@14
    move-result-object v0

    #@15
    .line 299
    .local v0, "preference":Landroid/preference/Preference;
    invoke-virtual {v0}, Landroid/preference/Preference;->canRecycleLayout()Z

    #@18
    move-result v2

    #@19
    if-nez v2, :cond_2

    #@1b
    .line 300
    return v4

    #@1c
    .line 303
    :cond_2
    iget-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    #@1e
    invoke-direct {p0, v0, v2}, Landroid/preference/PreferenceGroupAdapter;->createPreferenceLayout(Landroid/preference/Preference;Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    #@21
    move-result-object v2

    #@22
    iput-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    #@24
    .line 305
    iget-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    #@26
    iget-object v3, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    #@28
    invoke-static {v2, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    #@2b
    move-result v1

    #@2c
    .line 306
    .local v1, "viewType":I
    if-gez v1, :cond_3

    #@2e
    .line 309
    return v4

    #@2f
    .line 311
    :cond_3
    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 236
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    #@3
    move-result-object v0

    #@4
    .line 238
    .local v0, "preference":Landroid/preference/Preference;
    iget-object v3, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    #@6
    invoke-direct {p0, v0, v3}, Landroid/preference/PreferenceGroupAdapter;->createPreferenceLayout(Landroid/preference/Preference;Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    #@9
    move-result-object v3

    #@a
    iput-object v3, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    #@c
    .line 242
    iget-object v3, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    #@e
    iget-object v4, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    #@10
    invoke-static {v3, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    #@13
    move-result v3

    #@14
    if-ltz v3, :cond_0

    #@16
    .line 243
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItemViewType(I)I

    #@19
    move-result v3

    #@1a
    invoke-direct {p0}, Landroid/preference/PreferenceGroupAdapter;->getHighlightItemViewType()I

    #@1d
    move-result v4

    #@1e
    if-ne v3, v4, :cond_1

    #@20
    .line 244
    :cond_0
    const/4 p2, 0x0

    #@21
    .line 246
    .end local p2    # "convertView":Landroid/view/View;
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@24
    move-result-object v1

    #@25
    .line 247
    .local v1, "result":Landroid/view/View;
    iget v3, p0, Landroid/preference/PreferenceGroupAdapter;->mHighlightedPosition:I

    #@27
    if-ne p1, v3, :cond_2

    #@29
    iget-object v3, p0, Landroid/preference/PreferenceGroupAdapter;->mHighlightedDrawable:Landroid/graphics/drawable/Drawable;

    #@2b
    if-eqz v3, :cond_2

    #@2d
    .line 248
    new-instance v2, Landroid/widget/FrameLayout;

    #@2f
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    #@32
    move-result-object v3

    #@33
    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@36
    .line 249
    .local v2, "wrapper":Landroid/view/ViewGroup;
    sget-object v3, Landroid/preference/PreferenceGroupAdapter;->sWrapperLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    #@38
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@3b
    .line 250
    iget-object v3, p0, Landroid/preference/PreferenceGroupAdapter;->mHighlightedDrawable:Landroid/graphics/drawable/Drawable;

    #@3d
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@40
    .line 251
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@43
    .line 252
    move-object v1, v2

    #@44
    .line 254
    .end local v2    # "wrapper":Landroid/view/ViewGroup;
    :cond_2
    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 317
    iget-boolean v0, p0, Landroid/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 318
    iput-boolean v1, p0, Landroid/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    #@7
    .line 321
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v0

    #@d
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@10
    move-result v0

    #@11
    add-int/lit8 v0, v0, 0x1

    #@13
    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    #@0
    .prologue
    .line 281
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 259
    if-ltz p1, :cond_0

    #@2
    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->getCount()I

    #@5
    move-result v0

    #@6
    if-lt p1, v0, :cond_1

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 260
    :cond_1
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Landroid/preference/Preference;->isSelectable()Z

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/preference/Preference;

    #@0
    .prologue
    .line 271
    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->notifyDataSetChanged()V

    #@3
    .line 270
    return-void
.end method

.method public onPreferenceHierarchyChange(Landroid/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    #@0
    .prologue
    .line 275
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    #@2
    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@7
    .line 276
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    #@9
    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@e
    .line 274
    return-void
.end method

.method public setHighlighted(I)V
    .locals 0
    .param p1, "position"    # I

    #@0
    .prologue
    .line 225
    iput p1, p0, Landroid/preference/PreferenceGroupAdapter;->mHighlightedPosition:I

    #@2
    .line 224
    return-void
.end method

.method public setHighlightedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 232
    iput-object p1, p0, Landroid/preference/PreferenceGroupAdapter;->mHighlightedDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    .line 231
    return-void
.end method
