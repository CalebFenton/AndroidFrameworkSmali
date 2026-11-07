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

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist PARENT_FRAGMENT_NAME:Ljava/lang/String; = "localeListEditor"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

.field private blacklist mFirstVisiblePosition:I

.field private blacklist mIsNumberingSystem:Z

.field private blacklist mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

.field private blacklist mLocaleList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLocalePickerCollector:Lcom/android/internal/app/LocaleCollectorBase;

.field private blacklist mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

.field private blacklist mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

.field private blacklist mPreviousSearch:Ljava/lang/CharSequence;

.field private blacklist mPreviousSearchHadFocus:Z

.field private blacklist mSearchView:Landroid/widget/SearchView;

.field private blacklist mTitle:Ljava/lang/CharSequence;

.field private blacklist mTopDistance:I

.field private blacklist mTranslatedOnly:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    const-class v0, Lcom/android/internal/app/LocalePickerWithRegion;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/LocalePickerWithRegion;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 50
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTranslatedOnly:Z

    .line 60
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    .line 61
    iput-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    .line 62
    iput-boolean v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearchHadFocus:Z

    .line 63
    iput v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mFirstVisiblePosition:I

    .line 64
    iput v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTopDistance:I

    .line 65
    iput-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTitle:Ljava/lang/CharSequence;

    .line 67
    iput-boolean v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mIsNumberingSystem:Z

    return-void
.end method

.method private static blacklist createCountryPicker(Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLandroid/view/MenuItem$OnActionExpandListener;Lcom/android/internal/app/LocaleCollectorBase;)Lcom/android/internal/app/LocalePickerWithRegion;
    .registers 8
    .param p0, "listener"    # Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;
    .param p1, "parent"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p2, "translatedOnly"    # Z
    .param p3, "onActionExpandListener"    # Landroid/view/MenuItem$OnActionExpandListener;
    .param p4, "localePickerCollector"    # Lcom/android/internal/app/LocaleCollectorBase;

    .line 99
    new-instance v0, Lcom/android/internal/app/LocalePickerWithRegion;

    invoke-direct {v0}, Lcom/android/internal/app/LocalePickerWithRegion;-><init>()V

    .line 100
    .local v0, "localePicker":Lcom/android/internal/app/LocalePickerWithRegion;
    invoke-virtual {v0, p3}, Lcom/android/internal/app/LocalePickerWithRegion;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)V

    .line 101
    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/internal/app/LocalePickerWithRegion;->setListener(Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLcom/android/internal/app/LocaleCollectorBase;)Z

    move-result v1

    .line 103
    .local v1, "shouldShowTheList":Z
    if-eqz v1, :cond_10

    move-object v2, v0

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    return-object v2
.end method

.method public static blacklist createLanguagePicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Z)Lcom/android/internal/app/LocalePickerWithRegion;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;
    .param p2, "translatedOnly"    # Z

    .line 108
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "listener":Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;
    .end local p2    # "translatedOnly":Z
    .local v0, "context":Landroid/content/Context;
    .local v1, "listener":Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;
    .local v2, "translatedOnly":Z
    invoke-static/range {v0 .. v5}, Lcom/android/internal/app/LocalePickerWithRegion;->createLanguagePicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;ZLandroid/os/LocaleList;Ljava/lang/String;Landroid/view/MenuItem$OnActionExpandListener;)Lcom/android/internal/app/LocalePickerWithRegion;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist createLanguagePicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;ZLandroid/os/LocaleList;)Lcom/android/internal/app/LocalePickerWithRegion;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;
    .param p2, "translatedOnly"    # Z
    .param p3, "explicitLocales"    # Landroid/os/LocaleList;

    .line 113
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "listener":Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;
    .end local p2    # "translatedOnly":Z
    .end local p3    # "explicitLocales":Landroid/os/LocaleList;
    .local v0, "context":Landroid/content/Context;
    .local v1, "listener":Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;
    .local v2, "translatedOnly":Z
    .local v3, "explicitLocales":Landroid/os/LocaleList;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/app/LocalePickerWithRegion;->createLanguagePicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;ZLandroid/os/LocaleList;Ljava/lang/String;Landroid/view/MenuItem$OnActionExpandListener;)Lcom/android/internal/app/LocalePickerWithRegion;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist createLanguagePicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;ZLandroid/os/LocaleList;Ljava/lang/String;Landroid/view/MenuItem$OnActionExpandListener;)Lcom/android/internal/app/LocalePickerWithRegion;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;
    .param p2, "translatedOnly"    # Z
    .param p3, "explicitLocales"    # Landroid/os/LocaleList;
    .param p4, "appPackageName"    # Ljava/lang/String;
    .param p5, "onActionExpandListener"    # Landroid/view/MenuItem$OnActionExpandListener;

    .line 121
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 122
    new-instance v0, Lcom/android/internal/app/SystemLocaleCollector;

    invoke-direct {v0, p0, p3}, Lcom/android/internal/app/SystemLocaleCollector;-><init>(Landroid/content/Context;Landroid/os/LocaleList;)V

    .local v0, "localePickerController":Lcom/android/internal/app/LocaleCollectorBase;
    goto :goto_11

    .line 124
    .end local v0    # "localePickerController":Lcom/android/internal/app/LocaleCollectorBase;
    :cond_c
    new-instance v0, Lcom/android/internal/app/AppLocaleCollector;

    invoke-direct {v0, p0, p4}, Lcom/android/internal/app/AppLocaleCollector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 126
    .restart local v0    # "localePickerController":Lcom/android/internal/app/LocaleCollectorBase;
    :goto_11
    new-instance v1, Lcom/android/internal/app/LocalePickerWithRegion;

    invoke-direct {v1}, Lcom/android/internal/app/LocalePickerWithRegion;-><init>()V

    .line 127
    .local v1, "localePicker":Lcom/android/internal/app/LocalePickerWithRegion;
    invoke-virtual {v1, p5}, Lcom/android/internal/app/LocalePickerWithRegion;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)V

    .line 128
    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2, v0}, Lcom/android/internal/app/LocalePickerWithRegion;->setListener(Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLcom/android/internal/app/LocaleCollectorBase;)Z

    .line 130
    return-object v1
.end method

.method private static blacklist createNumberingSystemPicker(Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLandroid/view/MenuItem$OnActionExpandListener;Lcom/android/internal/app/LocaleCollectorBase;)Lcom/android/internal/app/LocalePickerWithRegion;
    .registers 8
    .param p0, "listener"    # Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;
    .param p1, "parent"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p2, "translatedOnly"    # Z
    .param p3, "onActionExpandListener"    # Landroid/view/MenuItem$OnActionExpandListener;
    .param p4, "localePickerCollector"    # Lcom/android/internal/app/LocaleCollectorBase;

    .line 87
    new-instance v0, Lcom/android/internal/app/LocalePickerWithRegion;

    invoke-direct {v0}, Lcom/android/internal/app/LocalePickerWithRegion;-><init>()V

    .line 88
    .local v0, "localePicker":Lcom/android/internal/app/LocalePickerWithRegion;
    invoke-virtual {v0, p3}, Lcom/android/internal/app/LocalePickerWithRegion;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)V

    .line 89
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/internal/app/LocalePickerWithRegion;->setIsNumberingSystem(Z)V

    .line 90
    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/internal/app/LocalePickerWithRegion;->setListener(Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLcom/android/internal/app/LocaleCollectorBase;)Z

    move-result v1

    .line 92
    .local v1, "shouldShowTheList":Z
    if-eqz v1, :cond_14

    move-object v2, v0

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    return-object v2
.end method

.method private blacklist returnToParentFrame()V
    .registers 4

    .line 170
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "localeListEditor"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 172
    return-void
.end method

.method private blacklist setIsNumberingSystem(Z)V
    .registers 2
    .param p1, "isNumberingSystem"    # Z

    .line 134
    iput-boolean p1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mIsNumberingSystem:Z

    .line 135
    return-void
.end method

.method private blacklist setListener(Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLcom/android/internal/app/LocaleCollectorBase;)Z
    .registers 8
    .param p1, "listener"    # Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;
    .param p2, "parent"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p3, "translatedOnly"    # Z
    .param p4, "localePickerController"    # Lcom/android/internal/app/LocaleCollectorBase;

    .line 152
    iput-object p2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 153
    iput-object p1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

    .line 154
    iput-boolean p3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTranslatedOnly:Z

    .line 155
    iput-object p4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocalePickerCollector:Lcom/android/internal/app/LocaleCollectorBase;

    .line 156
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/LocalePickerWithRegion;->setRetainInstance(Z)V

    .line 158
    const/4 v1, 0x0

    if-eqz p2, :cond_11

    move v2, v0

    goto :goto_12

    :cond_11
    move v2, v1

    :goto_12
    invoke-interface {p4, p2, p3, v2}, Lcom/android/internal/app/LocaleCollectorBase;->getSupportedLocaleList(Lcom/android/internal/app/LocaleStore$LocaleInfo;ZZ)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    .line 161
    if-eqz p2, :cond_34

    if-eqz p1, :cond_34

    iget-object v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v0, :cond_34

    .line 162
    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-interface {p1, v0}, Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;->onLocaleSelected(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 163
    return v1

    .line 165
    :cond_34
    return v0
.end method


# virtual methods
.method public whitelist onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 176
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 177
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/LocalePickerWithRegion;->setHasOptionsMenu(Z)V

    .line 179
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    if-nez v1, :cond_f

    .line 183
    invoke-direct {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->returnToParentFrame()V

    .line 184
    return-void

    .line 187
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTitle:Ljava/lang/CharSequence;

    .line 188
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    move v1, v0

    goto :goto_21

    :cond_20
    move v1, v2

    .line 189
    .local v1, "countryMode":Z
    :goto_21
    if-eqz v1, :cond_2a

    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    goto :goto_2e

    :cond_2a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 190
    .local v3, "sortingLocale":Ljava/util/Locale;
    :goto_2e
    iget-object v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocalePickerCollector:Lcom/android/internal/app/LocaleCollectorBase;

    if-eqz v4, :cond_3b

    iget-object v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocalePickerCollector:Lcom/android/internal/app/LocaleCollectorBase;

    .line 191
    invoke-interface {v4}, Lcom/android/internal/app/LocaleCollectorBase;->hasSpecificPackageName()Z

    move-result v4

    if-eqz v4, :cond_3b

    goto :goto_3c

    :cond_3b
    move v0, v2

    .line 192
    .local v0, "hasSpecificPackageName":Z
    :goto_3c
    new-instance v2, Lcom/android/internal/app/SuggestedLocaleAdapter;

    iget-object v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    invoke-direct {v2, v4, v1, v0}, Lcom/android/internal/app/SuggestedLocaleAdapter;-><init>(Ljava/util/Set;ZZ)V

    iput-object v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    .line 193
    iget-object v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    iget-boolean v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mIsNumberingSystem:Z

    invoke-virtual {v2, v4}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setNumberingSystemMode(Z)V

    .line 194
    new-instance v2, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;

    invoke-direct {v2, v3, v1}, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;-><init>(Ljava/util/Locale;Z)V

    .line 196
    .local v2, "comp":Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;
    iget-object v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/SuggestedLocaleAdapter;->sort(Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;)V

    .line 197
    iget-object v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {p0, v4}, Lcom/android/internal/app/LocalePickerWithRegion;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 198
    return-void
.end method

.method public whitelist onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 304
    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-nez v0, :cond_6b

    .line 305
    const/high16 v0, 0x1140000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 307
    const v0, 0x10203c9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 308
    .local v0, "searchMenuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v1, :cond_19

    .line 309
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 312
    :cond_19
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    .line 313
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    const v2, 0x104098a

    invoke-virtual {p0, v2}, Lcom/android/internal/app/LocalePickerWithRegion;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 317
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5a

    .line 318
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 319
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 320
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setActivated(Z)V

    .line 321
    iget-boolean v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearchHadFocus:Z

    if-eqz v1, :cond_52

    .line 322
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->requestFocus()Z

    .line 324
    :cond_52
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_60

    .line 326
    :cond_5a
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 330
    :goto_60
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mFirstVisiblePosition:I

    iget v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTopDistance:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 332
    .end local v0    # "searchMenuItem":Landroid/view/MenuItem;
    :cond_6b
    return-void
.end method

.method public whitelist onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 14
    .param p1, "parent"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 254
    nop

    .line 255
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 256
    .local v0, "locale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    if-nez v0, :cond_15

    .line 257
    sget-object v1, Lcom/android/internal/app/LocalePickerWithRegion;->TAG:Ljava/lang/String;

    const-string v2, "Can not get the locale."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return-void

    .line 262
    :cond_15
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSystemLocale()Z

    move-result v1

    .line 263
    .local v1, "isSystemLocale":Z
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v2

    if-eqz v2, :cond_21

    const/4 v2, 0x1

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    .line 264
    .local v2, "isRegionLocale":Z
    :goto_22
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->hasNumberingSystems()Z

    move-result v3

    .line 266
    .local v3, "mayHaveDifferentNumberingSystem":Z
    if-nez v1, :cond_7c

    .line 270
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v4

    if-nez v4, :cond_7c

    if-eqz v2, :cond_32

    if-eqz v3, :cond_7c

    :cond_32
    iget-boolean v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mIsNumberingSystem:Z

    if-eqz v4, :cond_37

    goto :goto_7c

    .line 280
    :cond_37
    if-eqz v3, :cond_46

    .line 281
    iget-object v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

    iget-boolean v5, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTranslatedOnly:Z

    iget-object v6, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    iget-object v7, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocalePickerCollector:Lcom/android/internal/app/LocaleCollectorBase;

    .line 282
    invoke-static {v4, v0, v5, v6, v7}, Lcom/android/internal/app/LocalePickerWithRegion;->createNumberingSystemPicker(Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLandroid/view/MenuItem$OnActionExpandListener;Lcom/android/internal/app/LocaleCollectorBase;)Lcom/android/internal/app/LocalePickerWithRegion;

    move-result-object v4

    .local v4, "selector":Lcom/android/internal/app/LocalePickerWithRegion;
    goto :goto_52

    .line 286
    .end local v4    # "selector":Lcom/android/internal/app/LocalePickerWithRegion;
    :cond_46
    iget-object v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

    iget-boolean v5, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTranslatedOnly:Z

    iget-object v6, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    iget-object v7, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocalePickerCollector:Lcom/android/internal/app/LocaleCollectorBase;

    invoke-static {v4, v0, v5, v6, v7}, Lcom/android/internal/app/LocalePickerWithRegion;->createCountryPicker(Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLandroid/view/MenuItem$OnActionExpandListener;Lcom/android/internal/app/LocaleCollectorBase;)Lcom/android/internal/app/LocalePickerWithRegion;

    move-result-object v4

    .line 290
    .restart local v4    # "selector":Lcom/android/internal/app/LocalePickerWithRegion;
    :goto_52
    iget-object v5, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

    invoke-interface {v5, v0}, Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;->onParentLocaleSelected(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 291
    if-eqz v4, :cond_78

    .line 292
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    .line 293
    const/16 v6, 0x1001

    invoke-virtual {v5, v6}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v5

    .line 294
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getId()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v5

    .line 295
    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_89

    .line 297
    :cond_78
    invoke-direct {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->returnToParentFrame()V

    goto :goto_89

    .line 273
    .end local v4    # "selector":Lcom/android/internal/app/LocalePickerWithRegion;
    :cond_7c
    :goto_7c
    iget-object v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

    if-eqz v4, :cond_86

    .line 274
    iget-object v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

    invoke-interface {v4, v0}, Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;->onLocaleSelected(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    goto :goto_89

    .line 276
    :cond_86
    invoke-direct {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->returnToParentFrame()V

    .line 300
    :goto_89
    return-void
.end method

.method public whitelist onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 211
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 212
    .local v0, "id":I
    packed-switch v0, :pswitch_data_16

    .line 217
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 214
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 215
    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_16
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method public whitelist onPause()V
    .registers 5

    .line 234
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 237
    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 238
    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearchHadFocus:Z

    .line 239
    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    goto :goto_1e

    .line 241
    :cond_19
    iput-boolean v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearchHadFocus:Z

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    .line 246
    :goto_1e
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 247
    .local v0, "list":Landroid/widget/ListView;
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 248
    .local v2, "firstChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    iput v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mFirstVisiblePosition:I

    .line 249
    if-nez v2, :cond_2f

    goto :goto_38

    :cond_2f
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v1, v3

    :goto_38
    iput v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTopDistance:I

    .line 250
    return-void
.end method

.method public whitelist onQueryTextChange(Ljava/lang/String;)Z
    .registers 3
    .param p1, "newText"    # Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    if-eqz v0, :cond_d

    .line 342
    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 344
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 3
    .param p1, "query"    # Ljava/lang/String;

    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onResume()V
    .registers 3

    .line 222
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 223
    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-eqz v0, :cond_15

    .line 224
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1e

    .line 226
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 229
    :goto_1e
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 230
    return-void
.end method

.method public whitelist onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 202
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setNestedScrollingEnabled(Z)V

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 207
    return-void
.end method

.method public blacklist setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)V
    .registers 2
    .param p1, "onActionExpandListener"    # Landroid/view/MenuItem$OnActionExpandListener;

    .line 351
    iput-object p1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    .line 352
    return-void
.end method
