.class public Lcom/android/internal/app/LocalePicker;
.super Landroid/app/ListFragment;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocalePicker$LocaleInfo;,
        Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "LocalePicker"

.field private static final blacklist pseudoLocales:[Ljava/lang/String;


# instance fields
.field blacklist mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 58
    const-string v0, "en-XA"

    const-string v1, "ar-XB"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/LocalePicker;->pseudoLocales:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method public static blacklist constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 207
    const v0, 0x10900ae

    const v1, 0x10203c7

    invoke-static {p0, v0, v1}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "layoutId"    # I
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Landroid/widget/ArrayAdapter<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v2, 0x1

    .line 214
    .local v2, "isInDeveloperMode":Z
    :cond_e
    invoke-static {p0, v2}, Lcom/android/internal/app/LocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v7

    .line 216
    .local v7, "localeInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    nop

    .line 217
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/LayoutInflater;

    .line 218
    .local v8, "inflater":Landroid/view/LayoutInflater;
    new-instance v3, Lcom/android/internal/app/LocalePicker$1;

    move v9, p1

    move v10, p2

    move-object v4, p0

    move v5, p1

    move v6, p2

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "layoutId":I
    .end local p2    # "fieldId":I
    .local v4, "context":Landroid/content/Context;
    .local v5, "layoutId":I
    .local v6, "fieldId":I
    invoke-direct/range {v3 .. v10}, Lcom/android/internal/app/LocalePicker$1;-><init>(Landroid/content/Context;IILjava/util/List;Landroid/view/LayoutInflater;II)V

    return-object v3
.end method

.method public static blacklist getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isInDeveloperMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 143
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getSystemAssetLocales()[Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "locales":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    .local v2, "localeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 147
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 148
    const v3, 0x1070111

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "specialLocaleCodes":[Ljava/lang/String;
    const v4, 0x1070112

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "specialLocaleNames":[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    .local v5, "localeInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2f
    :goto_2f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 153
    .local v7, "locale":Ljava/lang/String;
    const/16 v8, 0x5f

    const/16 v9, 0x2d

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v8

    .line 154
    .local v8, "l":Ljava/util/Locale;
    if-eqz v8, :cond_2f

    const-string/jumbo v9, "und"

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2f

    .line 155
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2f

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6b

    .line 156
    goto :goto_2f

    .line 159
    :cond_6b
    if-nez p1, :cond_74

    invoke-static {v8}, Landroid/os/LocaleList;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v9

    if-eqz v9, :cond_74

    .line 160
    goto :goto_2f

    .line 163
    :cond_74
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8b

    .line 167
    new-instance v9, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v8, v8}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e3

    .line 173
    :cond_8b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 174
    .local v9, "previous":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    iget-object v10, v9, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d3

    iget-object v10, v9, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    .line 175
    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "zz"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d3

    .line 180
    iget-object v10, v9, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-static {v10, v3, v4}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    .line 186
    new-instance v10, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 187
    invoke-static {v8, v3, v4}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 186
    invoke-static {v11}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v8}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e3

    .line 189
    :cond_d3
    invoke-virtual {v8, v8}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 193
    .local v10, "displayName":Ljava/lang/String;
    new-instance v11, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-direct {v11, v10, v8}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .end local v7    # "locale":Ljava/lang/String;
    .end local v8    # "l":Ljava/util/Locale;
    .end local v9    # "previous":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .end local v10    # "displayName":Ljava/lang/String;
    :goto_e3
    goto/16 :goto_2f

    .line 198
    :cond_e5
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 199
    return-object v5
.end method

.method private static blacklist getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "l"    # Ljava/util/Locale;
    .param p1, "specialLocaleCodes"    # [Ljava/lang/String;
    .param p2, "specialLocaleNames"    # [Ljava/lang/String;

    .line 250
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "code":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, p1

    if-ge v1, v2, :cond_16

    .line 253
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 254
    aget-object v2, p2, v1

    return-object v2

    .line 252
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 258
    .end local v1    # "i":I
    :cond_16
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getLocaleFilter()Ljava/util/function/Predicate;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 128
    const-string v0, "LocalePicker"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Landroid/sysprop/LocalizationProperties;->locale_filter()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/android/internal/app/LocalePicker$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/internal/app/LocalePicker$$ExternalSyntheticLambda0;-><init>()V

    .line 129
    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    .line 130
    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Predicate;
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_16} :catch_39
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_3 .. :try_end_16} :catch_17

    .line 128
    return-object v2

    .line 133
    :catch_17
    move-exception v2

    .line 134
    .local v2, "e":Ljava/util/regex/PatternSyntaxException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad locale filter format (\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/regex/PatternSyntaxException;->getPattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"), skipping."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 131
    .end local v2    # "e":Ljava/util/regex/PatternSyntaxException;
    :catch_39
    move-exception v2

    .line 132
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v3, "Failed to read locale filter."

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .end local v2    # "e":Ljava/lang/SecurityException;
    nop

    .line 137
    :goto_40
    return-object v1
.end method

.method public static greylist getLocales()Landroid/os/LocaleList;
    .registers 2

    .line 358
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 359
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 358
    return-object v0

    .line 360
    :catch_d
    move-exception v0

    .line 362
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getSupportedLocales(Landroid/content/Context;)[Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .line 103
    const/4 v0, 0x0

    if-nez p0, :cond_6

    .line 104
    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 106
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070114

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "allLocales":[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getLocaleFilter()Ljava/util/function/Predicate;

    move-result-object v2

    .line 109
    .local v2, "localeFilter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/String;>;"
    if-nez v2, :cond_18

    .line 110
    return-object v1

    .line 113
    :cond_18
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v4, v1

    :goto_1f
    if-ge v0, v4, :cond_2f

    aget-object v5, v1, v0

    .line 115
    .local v5, "locale":Ljava/lang/String;
    invoke-interface {v2, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 116
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    .end local v5    # "locale":Ljava/lang/String;
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 120
    :cond_2f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 121
    .local v0, "localeCount":I
    array-length v4, v1

    if-ne v0, v4, :cond_38

    move-object v4, v1

    goto :goto_40

    .line 122
    :cond_38
    new-array v4, v0, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 121
    :goto_40
    return-object v4
.end method

.method public static blacklist getSystemAssetLocales()[Ljava/lang/String;
    .registers 1

    .line 99
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getLocaleFilter$0(Ljava/lang/String;)Ljava/util/function/Predicate;
    .registers 2
    .param p0, "filter"    # Ljava/lang/String;

    .line 129
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->asPredicate()Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist removeExcludedLocales(Landroid/os/LocaleList;)Landroid/os/LocaleList;
    .registers 7
    .param p0, "locales"    # Landroid/os/LocaleList;

    .line 332
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getLocaleFilter()Ljava/util/function/Predicate;

    move-result-object v0

    .line 333
    .local v0, "localeFilter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/String;>;"
    if-nez v0, :cond_7

    .line 334
    return-object p0

    .line 337
    :cond_7
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v1

    .line 338
    .local v1, "localeCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 339
    .local v2, "filteredLocales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v1, :cond_27

    .line 340
    invoke-virtual {p0, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    .line 341
    .local v4, "locale":Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 342
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    .end local v4    # "locale":Ljava/util/Locale;
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 346
    .end local v3    # "i":I
    :cond_27
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v1, v3, :cond_2f

    move-object v3, p0

    goto :goto_3d

    .line 347
    :cond_2f
    new-instance v3, Landroid/os/LocaleList;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/util/Locale;

    invoke-direct {v3, v4}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 346
    :goto_3d
    return-object v3
.end method

.method private static blacklist toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 241
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 242
    return-object p0

    .line 245
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist updateLocale(Ljava/util/Locale;)V
    .registers 4
    .param p0, "locale"    # Ljava/util/Locale;

    .line 300
    new-instance v0, Landroid/os/LocaleList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Locale;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->updateLocales(Landroid/os/LocaleList;)V

    .line 301
    return-void
.end method

.method public static greylist updateLocales(Landroid/os/LocaleList;)V
    .registers 5
    .param p0, "locales"    # Landroid/os/LocaleList;

    .line 310
    if-eqz p0, :cond_6

    .line 311
    invoke-static {p0}, Lcom/android/internal/app/LocalePicker;->removeExcludedLocales(Landroid/os/LocaleList;)Landroid/os/LocaleList;

    move-result-object p0

    .line 316
    :cond_6
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 317
    .local v0, "am":Landroid/app/IActivityManager;
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 318
    .local v1, "config":Landroid/content/res/Configuration;
    invoke-virtual {v1, p0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 319
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 321
    nop

    .line 322
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 321
    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->updatePersistentConfigurationWithAttribution(Landroid/content/res/Configuration;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v2, "com.android.providers.settings"

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_23} :catch_24

    .line 327
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    goto :goto_25

    .line 325
    :catch_24
    move-exception v0

    .line 328
    :goto_25
    return-void
.end method


# virtual methods
.method public whitelist onActivityCreated(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 263
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 264
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 265
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-virtual {p0, v0}, Lcom/android/internal/app/LocalePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 266
    return-void
.end method

.method public whitelist onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 8
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 286
    iget-object v0, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    if-eqz v0, :cond_15

    .line 287
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    iget-object v0, v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    .line 288
    .local v0, "locale":Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    invoke-interface {v1, v0}, Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;->onLocaleSelected(Ljava/util/Locale;)V

    .line 290
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_15
    return-void
.end method

.method public whitelist onResume()V
    .registers 2

    .line 274
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 275
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 276
    return-void
.end method

.method public blacklist setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    .line 269
    iput-object p1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    .line 270
    return-void
.end method
