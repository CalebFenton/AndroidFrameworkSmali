.class public Lcom/android/internal/app/LocalePickerWithRegion;
.super Landroid/app/ListFragment;
.source "LocalePickerWithRegion.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;
    }
.end annotation


# static fields
.field private static final PARENT_FRAGMENT_NAME:Ljava/lang/String; = "localeListEditor"


# instance fields
.field private mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

.field private mFirstVisiblePosition:I

.field private mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

.field private mLocaleList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

.field private mPreviousSearch:Ljava/lang/CharSequence;

.field private mPreviousSearchHadFocus:Z

.field private mSearchView:Landroid/widget/SearchView;

.field private mTopDistance:I

.field private mTranslatedOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 47
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    #@5
    .line 54
    iput-boolean v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTranslatedOnly:Z

    #@7
    .line 55
    iput-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    #@9
    .line 56
    iput-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    #@b
    .line 57
    iput-boolean v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearchHadFocus:Z

    #@d
    .line 58
    iput v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mFirstVisiblePosition:I

    #@f
    .line 59
    iput v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTopDistance:I

    #@11
    .line 47
    return-void
.end method

.method private static createCountryPicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Lcom/android/internal/app/LocalePickerWithRegion;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;
    .param p2, "parent"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p3, "translatedOnly"    # Z

    #@0
    .prologue
    .line 77
    new-instance v0, Lcom/android/internal/app/LocalePickerWithRegion;

    #@2
    invoke-direct {v0}, Lcom/android/internal/app/LocalePickerWithRegion;-><init>()V

    #@5
    .line 78
    .local v0, "localePicker":Lcom/android/internal/app/LocalePickerWithRegion;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/app/LocalePickerWithRegion;->setListener(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Z

    #@8
    move-result v1

    #@9
    .line 80
    .local v1, "shouldShowTheList":Z
    if-eqz v1, :cond_0

    #@b
    .end local v0    # "localePicker":Lcom/android/internal/app/LocalePickerWithRegion;
    :goto_0
    return-object v0

    #@c
    .restart local v0    # "localePicker":Lcom/android/internal/app/LocalePickerWithRegion;
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public static createLanguagePicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Z)Lcom/android/internal/app/LocalePickerWithRegion;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;
    .param p2, "translatedOnly"    # Z

    #@0
    .prologue
    .line 85
    new-instance v0, Lcom/android/internal/app/LocalePickerWithRegion;

    #@2
    invoke-direct {v0}, Lcom/android/internal/app/LocalePickerWithRegion;-><init>()V

    #@5
    .line 86
    .local v0, "localePicker":Lcom/android/internal/app/LocalePickerWithRegion;
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, p0, p1, v1, p2}, Lcom/android/internal/app/LocalePickerWithRegion;->setListener(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Z

    #@9
    .line 87
    return-object v0
.end method

.method private returnToParentFrame()V
    .locals 3

    #@0
    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "localeListEditor"

    #@7
    .line 136
    const/4 v2, 0x1

    #@8
    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    #@b
    .line 134
    return-void
.end method

.method private setListener(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;
    .param p3, "parent"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p4, "translatedOnly"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 105
    iput-object p3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    #@4
    .line 106
    iput-object p2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

    #@6
    .line 107
    iput-boolean p4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTranslatedOnly:Z

    #@8
    .line 108
    invoke-virtual {p0, v5}, Landroid/app/Fragment;->setRetainInstance(Z)V

    #@b
    .line 110
    new-instance v1, Ljava/util/HashSet;

    #@d
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@10
    .line 111
    .local v1, "langTagsToIgnore":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez p4, :cond_0

    #@12
    .line 112
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getLocales()Landroid/os/LocaleList;

    #@15
    move-result-object v2

    #@16
    .line 113
    .local v2, "userLocales":Landroid/os/LocaleList;
    invoke-virtual {v2}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    const-string/jumbo v4, ","

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    .line 114
    .local v0, "langTags":[Ljava/lang/String;
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@24
    .line 117
    .end local v0    # "langTags":[Ljava/lang/String;
    .end local v2    # "userLocales":Landroid/os/LocaleList;
    :cond_0
    if-eqz p3, :cond_2

    #@26
    .line 118
    invoke-static {p1, v1, p3, p4}, Lcom/android/internal/app/LocaleStore;->getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;

    #@29
    move-result-object v3

    #@2a
    iput-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    #@2c
    .line 120
    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    #@2e
    invoke-interface {v3}, Ljava/util/Set;->size()I

    #@31
    move-result v3

    #@32
    if-gt v3, v5, :cond_3

    #@34
    .line 121
    if-eqz p2, :cond_1

    #@36
    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    #@38
    invoke-interface {v3}, Ljava/util/Set;->size()I

    #@3b
    move-result v3

    #@3c
    if-ne v3, v5, :cond_1

    #@3e
    .line 122
    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    #@40
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@43
    move-result-object v3

    #@44
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@47
    move-result-object v3

    #@48
    check-cast v3, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    #@4a
    invoke-interface {p2, v3}, Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;->onLocaleSelected(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    #@4d
    .line 124
    :cond_1
    const/4 v3, 0x0

    #@4e
    return v3

    #@4f
    .line 127
    :cond_2
    invoke-static {p1, v1, v6, p4}, Lcom/android/internal/app/LocaleStore;->getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;

    #@52
    move-result-object v3

    #@53
    iput-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    #@55
    .line 131
    :cond_3
    return v5
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 141
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    #@4
    .line 142
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    #@7
    .line 144
    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    #@9
    if-nez v3, :cond_0

    #@b
    .line 148
    invoke-direct {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->returnToParentFrame()V

    #@e
    .line 149
    return-void

    #@f
    .line 152
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    #@11
    if-eqz v3, :cond_1

    #@13
    .line 153
    .local v1, "countryMode":Z
    :goto_0
    if-eqz v1, :cond_2

    #@15
    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    #@17
    invoke-virtual {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    #@1a
    move-result-object v2

    #@1b
    .line 154
    .local v2, "sortingLocale":Ljava/util/Locale;
    :goto_1
    new-instance v3, Lcom/android/internal/app/SuggestedLocaleAdapter;

    #@1d
    iget-object v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    #@1f
    invoke-direct {v3, v4, v1}, Lcom/android/internal/app/SuggestedLocaleAdapter;-><init>(Ljava/util/Set;Z)V

    #@22
    iput-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    #@24
    .line 156
    new-instance v0, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;

    #@26
    invoke-direct {v0, v2, v1}, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;-><init>(Ljava/util/Locale;Z)V

    #@29
    .line 157
    .local v0, "comp":Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;
    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    #@2b
    invoke-virtual {v3, v0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->sort(Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;)V

    #@2e
    .line 158
    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    #@30
    invoke-virtual {p0, v3}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    #@33
    .line 140
    return-void

    #@34
    .line 152
    .end local v0    # "comp":Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;
    .end local v1    # "countryMode":Z
    .end local v2    # "sortingLocale":Ljava/util/Locale;
    :cond_1
    const/4 v1, 0x0

    #@35
    goto :goto_0

    #@36
    .line 153
    .restart local v1    # "countryMode":Z
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@39
    move-result-object v2

    #@3a
    .restart local v2    # "sortingLocale":Ljava/util/Locale;
    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 231
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    #@5
    if-nez v1, :cond_1

    #@7
    .line 232
    const/high16 v1, 0x1150000

    #@9
    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    #@c
    .line 234
    const v1, 0x102045c

    #@f
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    #@12
    move-result-object v0

    #@13
    .line 235
    .local v0, "searchMenuItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/widget/SearchView;

    #@19
    iput-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    #@1b
    .line 237
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    #@1d
    const v2, 0x10405d5

    #@20
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    #@27
    .line 238
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    #@29
    invoke-virtual {v1, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    #@2c
    .line 241
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    #@2e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@31
    move-result v1

    #@32
    if-nez v1, :cond_2

    #@34
    .line 242
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    #@37
    .line 243
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    #@39
    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setIconified(Z)V

    #@3c
    .line 244
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    #@3e
    invoke-virtual {v1, v4}, Landroid/view/View;->setActivated(Z)V

    #@41
    .line 245
    iget-boolean v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearchHadFocus:Z

    #@43
    if-eqz v1, :cond_0

    #@45
    .line 246
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    #@47
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    #@4a
    .line 248
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    #@4c
    iget-object v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    #@4e
    invoke-virtual {v1, v2, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    #@51
    .line 254
    :goto_0
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    #@54
    move-result-object v1

    #@55
    iget v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mFirstVisiblePosition:I

    #@57
    iget v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTopDistance:I

    #@59
    invoke-virtual {v1, v2, v3}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    #@5c
    .line 230
    .end local v0    # "searchMenuItem":Landroid/view/MenuItem;
    :cond_1
    return-void

    #@5d
    .line 250
    .restart local v0    # "searchMenuItem":Landroid/view/MenuItem;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    #@5f
    invoke-virtual {v1, v5, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    #@62
    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 208
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    #@4
    move-result-object v2

    #@5
    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    #@b
    .line 210
    .local v0, "locale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    #@e
    move-result-object v2

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 211
    iget-object v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 212
    iget-object v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

    #@17
    invoke-interface {v2, v0}, Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;->onLocaleSelected(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    #@1a
    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->returnToParentFrame()V

    #@1d
    .line 206
    :goto_0
    return-void

    #@1e
    .line 217
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    #@21
    move-result-object v2

    #@22
    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

    #@24
    iget-boolean v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTranslatedOnly:Z

    #@26
    .line 216
    invoke-static {v2, v3, v0, v4}, Lcom/android/internal/app/LocalePickerWithRegion;->createCountryPicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Lcom/android/internal/app/LocalePickerWithRegion;

    #@29
    move-result-object v1

    #@2a
    .line 218
    .local v1, "selector":Lcom/android/internal/app/LocalePickerWithRegion;
    if-eqz v1, :cond_2

    #@2c
    .line 219
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    #@33
    move-result-object v2

    #@34
    .line 220
    const/16 v3, 0x1001

    #@36
    .line 219
    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    #@39
    move-result-object v2

    #@3a
    .line 221
    invoke-virtual {p0}, Landroid/app/Fragment;->getId()I

    #@3d
    move-result v3

    #@3e
    .line 219
    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2, v5}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    #@49
    goto :goto_0

    #@4a
    .line 224
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->returnToParentFrame()V

    #@4d
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 163
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    #@3
    move-result v0

    #@4
    .line 164
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    #@7
    .line 169
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    #@a
    move-result v1

    #@b
    return v1

    #@c
    .line 166
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    #@13
    .line 167
    const/4 v1, 0x1

    #@14
    return v1

    #@15
    .line 164
    nop

    #@16
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 187
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    #@5
    .line 190
    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 191
    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    #@b
    invoke-virtual {v3}, Landroid/view/ViewGroup;->hasFocus()Z

    #@e
    move-result v3

    #@f
    iput-boolean v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearchHadFocus:Z

    #@11
    .line 192
    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    #@13
    invoke-virtual {v3}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    #@16
    move-result-object v3

    #@17
    iput-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    #@19
    .line 199
    :goto_0
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    #@1c
    move-result-object v1

    #@1d
    .line 200
    .local v1, "list":Landroid/widget/ListView;
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@20
    move-result-object v0

    #@21
    .line 201
    .local v0, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    #@24
    move-result v3

    #@25
    iput v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mFirstVisiblePosition:I

    #@27
    .line 202
    if-nez v0, :cond_1

    #@29
    :goto_1
    iput v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTopDistance:I

    #@2b
    .line 186
    return-void

    #@2c
    .line 194
    .end local v0    # "firstChild":Landroid/view/View;
    .end local v1    # "list":Landroid/widget/ListView;
    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearchHadFocus:Z

    #@2e
    .line 195
    iput-object v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    #@30
    goto :goto_0

    #@31
    .line 202
    .restart local v0    # "firstChild":Landroid/view/View;
    .restart local v1    # "list":Landroid/widget/ListView;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@34
    move-result v2

    #@35
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    #@38
    move-result v3

    #@39
    sub-int/2addr v2, v3

    #@3a
    goto :goto_1
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    #@0
    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 266
    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getFilter()Landroid/widget/Filter;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    #@d
    .line 268
    :cond_0
    const/4 v0, 0x0

    #@e
    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    #@0
    .prologue
    .line 260
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onResume()V
    .locals 2

    #@0
    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    #@3
    .line 176
    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 177
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    #@d
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    #@14
    .line 182
    :goto_0
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    #@1b
    .line 173
    return-void

    #@1c
    .line 179
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    #@1f
    move-result-object v0

    #@20
    const v1, 0x10405d3

    #@23
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    #@26
    goto :goto_0
.end method
