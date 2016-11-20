.class Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;
.super Landroid/widget/Filter;
.source "SuggestedLocaleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/SuggestedLocaleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FilterByNativeAndUiNames"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;


# direct methods
.method constructor <init>(Lcom/android/internal/app/SuggestedLocaleAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/SuggestedLocaleAdapter;

    #@0
    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    #@2
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 13
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 202
    new-instance v7, Landroid/widget/Filter$FilterResults;

    #@2
    invoke-direct {v7}, Landroid/widget/Filter$FilterResults;-><init>()V

    #@5
    .line 204
    .local v7, "results":Landroid/widget/Filter$FilterResults;
    iget-object v10, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    #@7
    invoke-static {v10}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-get1(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;

    #@a
    move-result-object v10

    #@b
    if-nez v10, :cond_0

    #@d
    .line 205
    iget-object v10, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    #@f
    new-instance v11, Ljava/util/ArrayList;

    #@11
    iget-object v12, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    #@13
    invoke-static {v12}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-get0(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;

    #@16
    move-result-object v12

    #@17
    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@1a
    invoke-static {v10, v11}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-set1(Lcom/android/internal/app/SuggestedLocaleAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    #@1d
    .line 209
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    #@1f
    iget-object v10, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    #@21
    invoke-static {v10}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-get1(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;

    #@24
    move-result-object v10

    #@25
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@28
    .line 210
    .local v9, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    if-eqz p1, :cond_1

    #@2a
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@2d
    move-result v10

    #@2e
    if-nez v10, :cond_2

    #@30
    .line 211
    :cond_1
    iput-object v9, v7, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    #@32
    .line 212
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@35
    move-result v10

    #@36
    iput v10, v7, Landroid/widget/Filter$FilterResults;->count:I

    #@38
    .line 237
    :goto_0
    return-object v7

    #@39
    .line 215
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3c
    move-result-object v2

    #@3d
    .line 216
    .local v2, "locale":Ljava/util/Locale;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@40
    move-result-object v10

    #@41
    invoke-static {v10, v2}, Lcom/android/internal/app/LocaleHelper;->normalizeForSearch(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    #@44
    move-result-object v6

    #@45
    .line 218
    .local v6, "prefixString":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@48
    move-result v0

    #@49
    .line 219
    .local v0, "count":I
    new-instance v5, Ljava/util/ArrayList;

    #@4b
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@4e
    .line 221
    .local v5, "newValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    const/4 v1, 0x0

    #@4f
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_5

    #@51
    .line 222
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@54
    move-result-object v8

    #@55
    check-cast v8, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    #@57
    .line 224
    .local v8, "value":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameInUiLanguage()Ljava/lang/String;

    #@5a
    move-result-object v10

    #@5b
    .line 223
    invoke-static {v10, v2}, Lcom/android/internal/app/LocaleHelper;->normalizeForSearch(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    #@5e
    move-result-object v3

    #@5f
    .line 226
    .local v3, "nameToCheck":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    #@62
    move-result-object v10

    #@63
    .line 225
    invoke-static {v10, v2}, Lcom/android/internal/app/LocaleHelper;->normalizeForSearch(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    #@66
    move-result-object v4

    #@67
    .line 227
    .local v4, "nativeNameToCheck":Ljava/lang/String;
    invoke-virtual {p0, v4, v6}, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->wordMatches(Ljava/lang/String;Ljava/lang/String;)Z

    #@6a
    move-result v10

    #@6b
    if-nez v10, :cond_3

    #@6d
    .line 228
    invoke-virtual {p0, v3, v6}, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->wordMatches(Ljava/lang/String;Ljava/lang/String;)Z

    #@70
    move-result v10

    #@71
    .line 227
    if-eqz v10, :cond_4

    #@73
    .line 229
    :cond_3
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@76
    .line 221
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@78
    goto :goto_1

    #@79
    .line 233
    .end local v3    # "nameToCheck":Ljava/lang/String;
    .end local v4    # "nativeNameToCheck":Ljava/lang/String;
    .end local v8    # "value":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_5
    iput-object v5, v7, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    #@7b
    .line 234
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@7e
    move-result v10

    #@7f
    iput v10, v7, Landroid/widget/Filter$FilterResults;->count:I

    #@81
    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 5
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 260
    iget-object v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    #@3
    iget-object v2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    #@5
    check-cast v2, Ljava/util/ArrayList;

    #@7
    invoke-static {v3, v2}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-set0(Lcom/android/internal/app/SuggestedLocaleAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    #@a
    .line 262
    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    #@c
    invoke-static {v2, v4}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-set2(Lcom/android/internal/app/SuggestedLocaleAdapter;I)I

    #@f
    .line 263
    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    #@11
    invoke-static {v2}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-get0(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;

    #@14
    move-result-object v2

    #@15
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v1

    #@19
    .local v1, "li$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_1

    #@1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    #@25
    .line 264
    .local v0, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_0

    #@2b
    .line 265
    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    #@2d
    invoke-static {v2}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-get2(Lcom/android/internal/app/SuggestedLocaleAdapter;)I

    #@30
    move-result v3

    #@31
    add-int/lit8 v3, v3, 0x1

    #@33
    invoke-static {v2, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-set2(Lcom/android/internal/app/SuggestedLocaleAdapter;I)I

    #@36
    goto :goto_0

    #@37
    .line 269
    .end local v0    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_1
    iget v2, p2, Landroid/widget/Filter$FilterResults;->count:I

    #@39
    if-lez v2, :cond_2

    #@3b
    .line 270
    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    #@3d
    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    #@40
    .line 259
    :goto_1
    return-void

    #@41
    .line 272
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    #@43
    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    #@46
    goto :goto_1
.end method

.method wordMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "valueText"    # Ljava/lang/String;
    .param p2, "prefixString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 243
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 244
    return v6

    #@9
    .line 247
    :cond_0
    const-string/jumbo v2, " "

    #@c
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 249
    .local v1, "words":[Ljava/lang/String;
    array-length v4, v1

    #@11
    move v2, v3

    #@12
    :goto_0
    if-ge v2, v4, :cond_2

    #@14
    aget-object v0, v1, v2

    #@16
    .line 250
    .local v0, "word":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_1

    #@1c
    .line 251
    return v6

    #@1d
    .line 249
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 255
    .end local v0    # "word":Ljava/lang/String;
    :cond_2
    return v3
.end method
