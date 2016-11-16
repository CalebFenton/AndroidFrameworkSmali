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
.field private static final MIN_REGIONS_FOR_SUGGESTIONS:I = 0x6

.field private static final TYPE_HEADER_ALL_OTHERS:I = 0x1

.field private static final TYPE_HEADER_SUGGESTED:I = 0x0

.field private static final TYPE_LOCALE:I = 0x2


# instance fields
.field private final mCountryMode:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLocaleOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalLocaleOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionCount:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mOriginalLocaleOptions:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/SuggestedLocaleAdapter;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/app/SuggestedLocaleAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/app/SuggestedLocaleAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mOriginalLocaleOptions:Ljava/util/ArrayList;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/android/internal/app/SuggestedLocaleAdapter;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    #@2
    return p1
.end method

.method public constructor <init>(Ljava/util/Set;Z)V
    .locals 4
    .param p2, "countryMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 60
    .local p1, "localeOptions":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@3
    .line 61
    iput-boolean p2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    #@5
    .line 62
    new-instance v2, Ljava/util/ArrayList;

    #@7
    invoke-interface {p1}, Ljava/util/Set;->size()I

    #@a
    move-result v3

    #@b
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@e
    iput-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    #@10
    .line 63
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v1

    #@14
    .local v1, "li$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_1

    #@1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    #@20
    .line 64
    .local v0, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_0

    #@26
    .line 65
    iget v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    #@28
    add-int/lit8 v2, v2, 0x1

    #@2a
    iput v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    #@2c
    .line 67
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@31
    goto :goto_0

    #@32
    .line 60
    .end local v0    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_1
    return-void
.end method

.method private showHeaders()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 188
    iget-boolean v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v1

    #@b
    const/4 v2, 0x6

    #@c
    if-ge v1, v2, :cond_0

    #@e
    .line 189
    return v0

    #@f
    .line 191
    :cond_0
    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    #@11
    if-eqz v1, :cond_1

    #@13
    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    #@15
    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v2

    #@1b
    if-eq v1, v2, :cond_1

    #@1d
    const/4 v0, 0x1

    #@1e
    :cond_1
    return v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 73
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCount()I
    .locals 1

    #@0
    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 108
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v0

    #@c
    add-int/lit8 v0, v0, 0x2

    #@e
    return v0

    #@f
    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    #@0
    .prologue
    .line 283
    new-instance v0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;

    #@2
    invoke-direct {v0, p0}, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;-><init>(Lcom/android/internal/app/SuggestedLocaleAdapter;)V

    #@5
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    #@0
    .prologue
    .line 116
    const/4 v0, 0x0

    #@1
    .line 117
    .local v0, "offset":I
    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 118
    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    #@9
    if-le p1, v1, :cond_1

    #@b
    const/4 v0, -0x2

    #@c
    .line 121
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    #@e
    add-int v2, p1, v0

    #@10
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 118
    :cond_1
    const/4 v0, -0x1

    #@16
    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 126
    int-to-long v0, p1

    #@1
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    const/4 v1, 0x0

    #@2
    .line 83
    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 84
    return v2

    #@9
    .line 86
    :cond_0
    if-nez p1, :cond_1

    #@b
    .line 87
    return v1

    #@c
    .line 89
    :cond_1
    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    #@e
    add-int/lit8 v0, v0, 0x1

    #@10
    if-ne p1, v0, :cond_2

    #@12
    .line 90
    const/4 v0, 0x1

    #@13
    return v0

    #@14
    .line 92
    :cond_2
    return v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 131
    if-nez p2, :cond_0

    #@3
    iget-object v5, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@5
    if-nez v5, :cond_0

    #@7
    .line 132
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@a
    move-result-object v5

    #@b
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@e
    move-result-object v5

    #@f
    iput-object v5, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@11
    .line 135
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItemViewType(I)I

    #@14
    move-result v1

    #@15
    .line 136
    .local v1, "itemType":I
    packed-switch v1, :pswitch_data_0

    #@18
    .line 158
    instance-of v5, p2, Landroid/view/ViewGroup;

    #@1a
    if-nez v5, :cond_1

    #@1c
    .line 159
    iget-object v5, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@1e
    const v6, 0x1090075

    #@21
    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@24
    move-result-object p2

    #@25
    .line 162
    :cond_1
    const v5, 0x10201e6

    #@28
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@2b
    move-result-object v3

    #@2c
    check-cast v3, Landroid/widget/TextView;

    #@2e
    .line 163
    .local v3, "text":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    #@34
    .line 164
    .local v0, "item":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    iget-boolean v5, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    #@36
    invoke-virtual {v0, v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLabel(Z)Ljava/lang/String;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@3d
    .line 165
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    #@44
    .line 166
    iget-boolean v5, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    #@46
    invoke-virtual {v0, v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getContentDescription(Z)Ljava/lang/String;

    #@49
    move-result-object v5

    #@4a
    invoke-virtual {v3, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    #@4d
    .line 167
    iget-boolean v5, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    #@4f
    if-eqz v5, :cond_2

    #@51
    .line 168
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    #@54
    move-result-object v5

    #@55
    invoke-static {v5}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    #@58
    move-result v2

    #@59
    .line 170
    .local v2, "layoutDir":I
    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutDirection(I)V

    #@5c
    .line 171
    const/4 v5, 0x1

    #@5d
    if-ne v2, v5, :cond_6

    #@5f
    .line 172
    const/4 v5, 0x4

    #@60
    .line 171
    :goto_0
    invoke-virtual {v3, v5}, Landroid/view/View;->setTextDirection(I)V

    #@63
    .line 176
    .end local v0    # "item":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v2    # "layoutDir":I
    .end local v3    # "text":Landroid/widget/TextView;
    :cond_2
    :goto_1
    return-object p2

    #@64
    .line 140
    :pswitch_0
    instance-of v5, p2, Landroid/widget/TextView;

    #@66
    if-nez v5, :cond_3

    #@68
    .line 141
    iget-object v5, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@6a
    const v6, 0x1090076

    #@6d
    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@70
    move-result-object p2

    #@71
    :cond_3
    move-object v4, p2

    #@72
    .line 144
    check-cast v4, Landroid/widget/TextView;

    #@74
    .line 145
    .local v4, "textView":Landroid/widget/TextView;
    if-nez v1, :cond_4

    #@76
    .line 146
    const v5, 0x10405e4

    #@79
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    #@7c
    .line 154
    :goto_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@7f
    move-result-object v5

    #@80
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    #@83
    goto :goto_1

    #@84
    .line 148
    :cond_4
    iget-boolean v5, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    #@86
    if-eqz v5, :cond_5

    #@88
    .line 149
    const v5, 0x10405e6

    #@8b
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    #@8e
    goto :goto_2

    #@8f
    .line 151
    :cond_5
    const v5, 0x10405e5

    #@92
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    #@95
    goto :goto_2

    #@96
    .line 173
    .end local v4    # "textView":Landroid/widget/TextView;
    .restart local v0    # "item":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .restart local v2    # "layoutDir":I
    .restart local v3    # "text":Landroid/widget/TextView;
    :cond_6
    const/4 v5, 0x3

    #@97
    goto :goto_0

    #@98
    .line 136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    #@0
    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 99
    const/4 v0, 0x3

    #@7
    return v0

    #@8
    .line 101
    :cond_0
    const/4 v0, 0x1

    #@9
    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItemViewType(I)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x2

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public sort(Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;)V
    .locals 1
    .param p1, "comp"    # Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;

    #@0
    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    #@2
    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@5
    .line 198
    return-void
.end method
