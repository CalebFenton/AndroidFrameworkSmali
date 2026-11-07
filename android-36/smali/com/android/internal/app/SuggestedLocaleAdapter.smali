.class public Lcom/android/internal/app/SuggestedLocaleAdapter;
.super Landroid/widget/BaseAdapter;
.source "SuggestedLocaleAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;
    }
.end annotation


# static fields
.field protected static final blacklist APP_LANGUAGE_PICKER_TYPE_COUNT:I = 0x5

.field protected static final blacklist MIN_REGIONS_FOR_SUGGESTIONS:I = 0x6

.field protected static final blacklist SYSTEM_LANGUAGE_TYPE_COUNT:I = 0x3

.field protected static final blacklist SYSTEM_LANGUAGE_WITHOUT_HEADER_TYPE_COUNT:I = 0x1

.field protected static final blacklist TYPE_CURRENT_LOCALE:I = 0x4

.field protected static final blacklist TYPE_HEADER_ALL_OTHERS:I = 0x1

.field protected static final blacklist TYPE_HEADER_SUGGESTED:I = 0x0

.field protected static final blacklist TYPE_LOCALE:I = 0x2

.field protected static final blacklist TYPE_SYSTEM_LANGUAGE_FOR_APP_LANGUAGE_PICKER:I = 0x3


# instance fields
.field protected blacklist mContextOverride:Landroid/content/Context;

.field protected final blacklist mCountryMode:Z

.field protected blacklist mDisplayLocale:Ljava/util/Locale;

.field private blacklist mHasSpecificAppPackageName:Z

.field protected blacklist mInflater:Landroid/view/LayoutInflater;

.field protected blacklist mIsNumberingMode:Z

.field protected blacklist mLocaleOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mOriginalLocaleOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mSuggestionCount:I


# direct methods
.method public constructor blacklist <init>(Ljava/util/Set;Z)V
    .registers 4
    .param p2, "countryMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 77
    .local p1, "localeOptions":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/app/SuggestedLocaleAdapter;-><init>(Ljava/util/Set;ZZ)V

    .line 78
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Set;ZZ)V
    .registers 7
    .param p2, "countryMode"    # Z
    .param p3, "hasSpecificAppPackageName"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;ZZ)V"
        }
    .end annotation

    .line 81
    .local p1, "localeOptions":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    .line 73
    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    .line 82
    iput-boolean p2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    .line 84
    iput-boolean p3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mHasSpecificAppPackageName:Z

    .line 86
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 87
    .local v1, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 88
    iget v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    .line 90
    :cond_33
    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v1    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    goto :goto_1b

    .line 92
    :cond_39
    return-void
.end method

.method private blacklist getNewViewIfNeeded(Landroid/view/View;Landroid/view/ViewGroup;II)Landroid/view/View;
    .registers 15
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "itemType"    # I
    .param p4, "position"    # I

    .line 278
    move-object v0, p1

    .line 280
    .local v0, "updatedView":Landroid/view/View;
    const v1, 0x10900a4

    const v2, 0x10203c7

    const v3, 0x10203b3

    const v4, 0x1020001

    const v5, 0x109003f

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch p3, :pswitch_data_d2

    .line 320
    :pswitch_15
    invoke-virtual {p0, p4}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 321
    .local v8, "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    iget-boolean v9, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mHasSpecificAppPackageName:Z

    if-eqz v9, :cond_bc

    .line 322
    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v9

    if-eqz v9, :cond_bc

    iget-boolean v9, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-nez v9, :cond_bc

    .line 323
    instance-of v1, p1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_a9

    .line 324
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_a9

    goto/16 :goto_aa

    .line 310
    .end local v8    # "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :pswitch_35
    instance-of v1, p1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_41

    .line 311
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_41

    move v1, v6

    goto :goto_42

    :cond_41
    move v1, v7

    .line 312
    .local v1, "shouldReuseView":Z
    :goto_42
    if-nez v1, :cond_d0

    .line 313
    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 315
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 316
    .local v2, "option":Landroid/widget/RadioButton;
    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 317
    .end local v2    # "option":Landroid/widget/RadioButton;
    goto/16 :goto_d0

    .line 291
    .end local v1    # "shouldReuseView":Z
    :pswitch_55
    iget-boolean v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mHasSpecificAppPackageName:Z

    if-eqz v3, :cond_79

    .line 292
    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 294
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 295
    .local v1, "option":Landroid/widget/RadioButton;
    invoke-virtual {p0, p4}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result v2

    if-eqz v2, :cond_75

    .line 296
    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_78

    .line 298
    :cond_75
    invoke-virtual {v1, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 300
    .end local v1    # "option":Landroid/widget/RadioButton;
    :goto_78
    goto :goto_d0

    .line 301
    :cond_79
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_84

    .line 302
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_84

    goto :goto_85

    :cond_84
    move v6, v7

    .line 303
    .local v6, "shouldReuseView":Z
    :goto_85
    if-nez v6, :cond_d0

    .line 304
    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 305
    invoke-virtual {v2, v1, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_d0

    .line 283
    .end local v6    # "shouldReuseView":Z
    :pswitch_8e
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_9c

    .line 284
    const v1, 0x10203b2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_9c

    goto :goto_9d

    :cond_9c
    move v6, v7

    .line 285
    .restart local v6    # "shouldReuseView":Z
    :goto_9d
    if-nez v6, :cond_d0

    .line 286
    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x10900a5

    invoke-virtual {v1, v2, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_d0

    .line 324
    .end local v6    # "shouldReuseView":Z
    .restart local v8    # "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_a9
    move v6, v7

    .line 325
    .restart local v6    # "shouldReuseView":Z
    :goto_aa
    if-nez v6, :cond_d0

    .line 326
    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 328
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 329
    .restart local v1    # "option":Landroid/widget/RadioButton;
    invoke-virtual {v1, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 330
    .end local v1    # "option":Landroid/widget/RadioButton;
    goto :goto_d0

    .line 332
    .end local v6    # "shouldReuseView":Z
    :cond_bc
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_c7

    .line 333
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_c7

    goto :goto_c8

    :cond_c7
    move v6, v7

    .line 334
    .restart local v6    # "shouldReuseView":Z
    :goto_c8
    if-nez v6, :cond_d0

    .line 335
    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v1, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 341
    .end local v6    # "shouldReuseView":Z
    .end local v8    # "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_d0
    :goto_d0
    return-object v0

    nop

    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_8e
        :pswitch_8e
        :pswitch_15
        :pswitch_55
        :pswitch_35
    .end packed-switch
.end method

.method private blacklist isHeaderPosition(I)Z
    .registers 4
    .param p1, "position"    # I

    .line 184
    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    if-eqz p1, :cond_e

    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    add-int/2addr v1, v0

    if-ne p1, v1, :cond_f

    :cond_e
    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private blacklist updateTextView(Landroid/view/View;Landroid/widget/TextView;I)V
    .registers 7
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "text"    # Landroid/widget/TextView;
    .param p3, "position"    # I

    .line 452
    invoke-virtual {p0, p3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 453
    .local v0, "item":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    iget-boolean v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsNumberingMode:Z

    if-eqz v1, :cond_f

    .line 454
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getNumberingSystem()Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_f
    iget-boolean v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLabel(Z)Ljava/lang/String;

    move-result-object v1

    .line 453
    :goto_15
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 456
    iget-boolean v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsNumberingMode:Z

    if-eqz v1, :cond_28

    .line 457
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getNumberingSystem()Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :cond_28
    iget-boolean v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getContentDescription(Z)Ljava/lang/String;

    move-result-object v1

    .line 456
    :goto_2e
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 458
    iget-boolean v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-eqz v1, :cond_49

    .line 459
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    .line 461
    .local v1, "layoutDir":I
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 462
    const/4 v2, 0x1

    if-ne v1, v2, :cond_45

    .line 463
    const/4 v2, 0x4

    goto :goto_46

    .line 464
    :cond_45
    const/4 v2, 0x3

    .line 462
    :goto_46
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 466
    .end local v1    # "layoutDir":I
    :cond_49
    return-void
.end method


# virtual methods
.method public whitelist areAllItemsEnabled()Z
    .registers 2

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCount()I
    .registers 2

    .line 162
    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 163
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0

    .line 165
    :cond_f
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getFilter()Landroid/widget/Filter;
    .registers 2

    .line 448
    new-instance v0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;

    invoke-direct {v0, p0}, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;-><init>(Lcom/android/internal/app/SuggestedLocaleAdapter;)V

    return-object v0
.end method

.method public blacklist getIsForNumberingSystem()Z
    .registers 2

    .line 99
    iget-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsNumberingMode:Z

    return v0
.end method

.method public whitelist getItem(I)Ljava/lang/Object;
    .registers 5
    .param p1, "position"    # I

    .line 171
    invoke-direct {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->isHeaderPosition(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 172
    const/4 v0, 0x0

    return-object v0

    .line 175
    :cond_8
    const/4 v0, 0x0

    .line 176
    .local v0, "offset":I
    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 177
    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-le p1, v1, :cond_15

    const/4 v1, -0x2

    goto :goto_16

    :cond_15
    const/4 v1, -0x1

    :goto_16
    move v0, v1

    .line 180
    :cond_17
    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    add-int v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .line 189
    int-to-long v0, p1

    return-wide v0
.end method

.method public whitelist getItemViewType(I)I
    .registers 7
    .param p1, "position"    # I

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-nez v0, :cond_1e

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 118
    .local v0, "item":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSystemLocale()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 119
    return v3

    .line 121
    :cond_16
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 122
    return v1

    .line 124
    :cond_1d
    return v2

    .line 126
    .end local v0    # "item":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_1e
    if-nez p1, :cond_22

    .line 127
    const/4 v0, 0x0

    return v0

    .line 129
    :cond_22
    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    if-ne p1, v0, :cond_29

    .line 130
    return v4

    .line 133
    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 134
    .restart local v0    # "item":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    if-eqz v0, :cond_40

    .line 137
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSystemLocale()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 138
    return v3

    .line 140
    :cond_38
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 141
    return v1

    .line 143
    :cond_3f
    return v2

    .line 135
    :cond_40
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Non header locale cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 219
    if-nez p2, :cond_10

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_10

    .line 220
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 222
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItemViewType(I)I

    move-result v0

    .line 223
    .local v0, "itemType":I
    invoke-direct {p0, p2, p3, v0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getNewViewIfNeeded(Landroid/view/View;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v1

    .line 224
    .local v1, "itemView":Landroid/view/View;
    const v2, 0x10203c7

    const v3, 0x10203b3

    packed-switch v0, :pswitch_data_b8

    .line 258
    :pswitch_21
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 259
    .local v4, "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    if-eqz v4, :cond_b0

    .line 262
    iget-boolean v5, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mHasSpecificAppPackageName:Z

    if-eqz v5, :cond_a6

    invoke-virtual {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v5

    if-eqz v5, :cond_a6

    iget-boolean v5, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-nez v5, :cond_a6

    .line 263
    nop

    .line 265
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 263
    invoke-direct {p0, v1, v2, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->updateTextView(Landroid/view/View;Landroid/widget/TextView;I)V

    goto/16 :goto_af

    .line 254
    .end local v4    # "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :pswitch_43
    nop

    .line 255
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 254
    invoke-direct {p0, v1, v2, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->updateTextView(Landroid/view/View;Landroid/widget/TextView;I)V

    .line 256
    goto :goto_af

    .line 246
    :pswitch_4e
    iget-boolean v4, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mHasSpecificAppPackageName:Z

    if-eqz v4, :cond_59

    .line 247
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .local v2, "title":Landroid/widget/TextView;
    goto :goto_5f

    .line 249
    .end local v2    # "title":Landroid/widget/TextView;
    :cond_59
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 251
    .restart local v2    # "title":Landroid/widget/TextView;
    :goto_5f
    const v3, 0x1040a33

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 252
    goto :goto_af

    .line 227
    .end local v2    # "title":Landroid/widget/TextView;
    :pswitch_66
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    .line 228
    .local v2, "textView":Landroid/widget/TextView;
    if-nez v0, :cond_81

    .line 229
    iget-boolean v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-eqz v3, :cond_7a

    iget-boolean v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsNumberingMode:Z

    if-nez v3, :cond_7a

    .line 230
    const v3, 0x1040588

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    goto :goto_96

    .line 232
    :cond_7a
    const v3, 0x104058a

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    goto :goto_96

    .line 235
    :cond_81
    iget-boolean v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-eqz v3, :cond_90

    iget-boolean v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsNumberingMode:Z

    if-nez v3, :cond_90

    .line 236
    const v3, 0x1040906

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    goto :goto_96

    .line 238
    :cond_90
    const v3, 0x1040589

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    .line 241
    :goto_96
    nop

    .line 242
    iget-object v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    if-eqz v3, :cond_9e

    iget-object v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    goto :goto_a2

    :cond_9e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 241
    :goto_a2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 243
    goto :goto_af

    .line 268
    .end local v2    # "textView":Landroid/widget/TextView;
    .restart local v4    # "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_a6
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0, v1, v2, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->updateTextView(Landroid/view/View;Landroid/widget/TextView;I)V

    .line 272
    .end local v4    # "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :goto_af
    return-object v1

    .line 260
    .restart local v4    # "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_b0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Non header locale cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_66
        :pswitch_66
        :pswitch_21
        :pswitch_4e
        :pswitch_43
    .end packed-switch
.end method

.method public whitelist getViewTypeCount()I
    .registers 2

    .line 149
    iget-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mHasSpecificAppPackageName:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 151
    const/4 v0, 0x5

    return v0

    .line 152
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 154
    const/4 v0, 0x3

    return v0

    .line 156
    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isEnabled(I)Z
    .registers 4
    .param p1, "position"    # I

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_18

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    .line 109
    :goto_19
    return v0
.end method

.method public blacklist setDisplayLocale(Landroid/content/Context;Ljava/util/Locale;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 197
    if-nez p2, :cond_8

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    .line 199
    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    goto :goto_20

    .line 200
    :cond_8
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 201
    iput-object p2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    .line 202
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 203
    .local v0, "configOverride":Landroid/content/res/Configuration;
    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 204
    invoke-virtual {p1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    .line 206
    .end local v0    # "configOverride":Landroid/content/res/Configuration;
    :cond_20
    :goto_20
    return-void
.end method

.method public blacklist setNumberingSystemMode(Z)V
    .registers 2
    .param p1, "isNumberSystemMode"    # Z

    .line 95
    iput-boolean p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsNumberingMode:Z

    .line 96
    return-void
.end method

.method protected blacklist setTextTo(Landroid/widget/TextView;I)V
    .registers 4
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "resId"    # I

    .line 209
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    if-nez v0, :cond_8

    .line 210
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_11

    .line 212
    :cond_8
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :goto_11
    return-void
.end method

.method protected blacklist showHeaders()Z
    .registers 4

    .line 353
    iget-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x6

    if-ge v0, v2, :cond_f

    .line 354
    return v1

    .line 356
    :cond_f
    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-eqz v0, :cond_1e

    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1
.end method

.method public blacklist sort(Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;)V
    .registers 3
    .param p1, "comp"    # Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;

    .line 364
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 365
    return-void
.end method
