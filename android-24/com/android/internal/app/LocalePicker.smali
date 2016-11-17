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
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LocalePicker"

.field private static final pseudoLocales:[Ljava/lang/String;


# instance fields
.field mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 49
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const-string/jumbo v1, "en-XA"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    const-string/jumbo v1, "ar-XB"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    sput-object v0, Lcom/android/internal/app/LocalePicker;->pseudoLocales:[Ljava/lang/String;

    #@11
    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    #@3
    return-void
.end method

.method public static constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 170
    const v0, 0x109007e

    #@3
    const v1, 0x10201e1

    #@6
    invoke-static {p0, v0, v1}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "layoutId"    # I
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4
    move-result-object v0

    #@5
    .line 176
    const-string/jumbo v1, "development_settings_enabled"

    #@8
    .line 175
    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    const/4 v8, 0x1

    #@f
    .line 177
    .local v8, "isInDeveloperMode":Z
    :cond_0
    invoke-static {p0, v8}, Lcom/android/internal/app/LocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    #@12
    move-result-object v4

    #@13
    .line 180
    .local v4, "localeInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    const-string/jumbo v0, "layout_inflater"

    #@16
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@19
    move-result-object v5

    #@1a
    check-cast v5, Landroid/view/LayoutInflater;

    #@1c
    .line 181
    .local v5, "inflater":Landroid/view/LayoutInflater;
    new-instance v0, Lcom/android/internal/app/LocalePicker$1;

    #@1e
    move-object v1, p0

    #@1f
    move v2, p1

    #@20
    move v3, p2

    #@21
    move v6, p1

    #@22
    move v7, p2

    #@23
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/LocalePicker$1;-><init>(Landroid/content/Context;IILjava/util/List;Landroid/view/LayoutInflater;II)V

    #@26
    return-object v0
.end method

.method public static getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isInDeveloperMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v8

    #@4
    .line 103
    .local v8, "resources":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getSystemAssetLocales()[Ljava/lang/String;

    #@7
    move-result-object v6

    #@8
    .line 104
    .local v6, "locales":[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    #@a
    array-length v11, v6

    #@b
    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(I)V

    #@e
    .line 105
    .local v5, "localeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v5, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@11
    .line 108
    if-nez p1, :cond_0

    #@13
    .line 109
    sget-object v12, Lcom/android/internal/app/LocalePicker;->pseudoLocales:[Ljava/lang/String;

    #@15
    const/4 v11, 0x0

    #@16
    array-length v13, v12

    #@17
    :goto_0
    if-ge v11, v13, :cond_0

    #@19
    aget-object v2, v12, v11

    #@1b
    .line 110
    .local v2, "locale":Ljava/lang/String;
    invoke-interface {v5, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@1e
    .line 109
    add-int/lit8 v11, v11, 0x1

    #@20
    goto :goto_0

    #@21
    .line 114
    .end local v2    # "locale":Ljava/lang/String;
    :cond_0
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@24
    .line 115
    const v11, 0x1070009

    #@27
    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@2a
    move-result-object v9

    #@2b
    .line 116
    .local v9, "specialLocaleCodes":[Ljava/lang/String;
    const v11, 0x107000a

    #@2e
    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@31
    move-result-object v10

    #@32
    .line 118
    .local v10, "specialLocaleNames":[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    #@34
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@37
    move-result v11

    #@38
    invoke-direct {v4, v11}, Ljava/util/ArrayList;-><init>(I)V

    #@3b
    .line 119
    .local v4, "localeInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3e
    move-result-object v3

    #@3f
    .local v3, "locale$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@42
    move-result v11

    #@43
    if-eqz v11, :cond_5

    #@45
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@48
    move-result-object v2

    #@49
    check-cast v2, Ljava/lang/String;

    #@4b
    .line 120
    .restart local v2    # "locale":Ljava/lang/String;
    const/16 v11, 0x5f

    #@4d
    const/16 v12, 0x2d

    #@4f
    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@52
    move-result-object v11

    #@53
    invoke-static {v11}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@56
    move-result-object v1

    #@57
    .line 121
    .local v1, "l":Ljava/util/Locale;
    if-eqz v1, :cond_1

    #@59
    const-string/jumbo v11, "und"

    #@5c
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@5f
    move-result-object v12

    #@60
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v11

    #@64
    if-nez v11, :cond_1

    #@66
    .line 122
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@69
    move-result-object v11

    #@6a
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    #@6d
    move-result v11

    #@6e
    .line 121
    if-nez v11, :cond_1

    #@70
    .line 122
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@73
    move-result-object v11

    #@74
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    #@77
    move-result v11

    #@78
    .line 121
    if-nez v11, :cond_1

    #@7a
    .line 126
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    #@7d
    move-result v11

    #@7e
    if-eqz v11, :cond_2

    #@80
    .line 130
    new-instance v11, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    #@82
    invoke-virtual {v1, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    #@85
    move-result-object v12

    #@86
    invoke-static {v12}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    #@89
    move-result-object v12

    #@8a
    invoke-direct {v11, v12, v1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@8d
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@90
    goto :goto_1

    #@91
    .line 136
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@94
    move-result v11

    #@95
    add-int/lit8 v11, v11, -0x1

    #@97
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9a
    move-result-object v7

    #@9b
    check-cast v7, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    #@9d
    .line 137
    .local v7, "previous":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    iget-object v11, v7, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    #@9f
    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@a2
    move-result-object v11

    #@a3
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@a6
    move-result-object v12

    #@a7
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@aa
    move-result v11

    #@ab
    if-eqz v11, :cond_3

    #@ad
    .line 138
    iget-object v11, v7, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    #@af
    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@b2
    move-result-object v11

    #@b3
    const-string/jumbo v12, "zz"

    #@b6
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b9
    move-result v11

    #@ba
    if-eqz v11, :cond_4

    #@bc
    .line 152
    :cond_3
    invoke-virtual {v1, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    #@bf
    move-result-object v11

    #@c0
    invoke-static {v11}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    #@c3
    move-result-object v0

    #@c4
    .line 156
    .local v0, "displayName":Ljava/lang/String;
    new-instance v11, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    #@c6
    invoke-direct {v11, v0, v1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@c9
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@cc
    goto/16 :goto_1

    #@ce
    .line 144
    .end local v0    # "displayName":Ljava/lang/String;
    :cond_4
    iget-object v11, v7, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    #@d0
    .line 143
    invoke-static {v11, v9, v10}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    #@d3
    move-result-object v11

    #@d4
    invoke-static {v11}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    #@d7
    move-result-object v11

    #@d8
    iput-object v11, v7, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    #@da
    .line 149
    new-instance v11, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    #@dc
    .line 150
    invoke-static {v1, v9, v10}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    #@df
    move-result-object v12

    #@e0
    .line 149
    invoke-static {v12}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    #@e3
    move-result-object v12

    #@e4
    invoke-direct {v11, v12, v1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@e7
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ea
    goto/16 :goto_1

    #@ec
    .line 161
    .end local v1    # "l":Ljava/util/Locale;
    .end local v2    # "locale":Ljava/lang/String;
    .end local v7    # "previous":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_5
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@ef
    .line 162
    return-object v4
.end method

.method private static getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "l"    # Ljava/util/Locale;
    .param p1, "specialLocaleCodes"    # [Ljava/lang/String;
    .param p2, "specialLocaleNames"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 213
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 215
    .local v0, "code":Ljava/lang/String;
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    array-length v2, p1

    #@6
    if-ge v1, v2, :cond_1

    #@8
    .line 216
    aget-object v2, p1, v1

    #@a
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 217
    aget-object v2, p2, v1

    #@12
    return-object v2

    #@13
    .line 215
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 221
    :cond_1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    return-object v2
.end method

.method public static getLocales()Landroid/os/LocaleList;
    .locals 2

    #@0
    .prologue
    .line 293
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 295
    :catch_0
    move-exception v0

    #@e
    .line 297
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    #@11
    move-result-object v1

    #@12
    return-object v1
.end method

.method public static getPseudoLocales()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 97
    sget-object v0, Lcom/android/internal/app/LocalePicker;->pseudoLocales:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public static getSupportedLocales(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    const v1, 0x107004d

    #@7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static getSystemAssetLocales()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 89
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 204
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 205
    return-object p0

    #@8
    .line 208
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@10
    move-result v1

    #@11
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    #@14
    move-result v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const/4 v1, 0x1

    #@1a
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    return-object v0
.end method

.method public static updateLocale(Ljava/util/Locale;)V
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 262
    new-instance v0, Landroid/os/LocaleList;

    #@2
    const/4 v1, 0x1

    #@3
    new-array v1, v1, [Ljava/util/Locale;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object p0, v1, v2

    #@8
    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    #@b
    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->updateLocales(Landroid/os/LocaleList;)V

    #@e
    .line 261
    return-void
.end method

.method public static updateLocales(Landroid/os/LocaleList;)V
    .locals 4
    .param p0, "locales"    # Landroid/os/LocaleList;

    #@0
    .prologue
    .line 272
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v0

    #@4
    .line 273
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    #@7
    move-result-object v1

    #@8
    .line 275
    .local v1, "config":Landroid/content/res/Configuration;
    invoke-virtual {v1, p0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    #@b
    .line 276
    const/4 v3, 0x1

    #@c
    iput-boolean v3, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    #@e
    .line 278
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    #@11
    .line 280
    const-string/jumbo v3, "com.android.providers.settings"

    #@14
    invoke-static {v3}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 270
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    :goto_0
    return-void

    #@18
    .line 281
    :catch_0
    move-exception v2

    #@19
    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 226
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    #@3
    .line 227
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    #@6
    move-result-object v1

    #@7
    invoke-static {v1}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    #@a
    move-result-object v0

    #@b
    .line 228
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-virtual {p0, v0}, Lcom/android/internal/app/LocalePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    #@e
    .line 225
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    #@0
    .prologue
    .line 249
    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 250
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListAdapter()Landroid/widget/ListAdapter;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    #@e
    iget-object v0, v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    #@10
    .line 251
    .local v0, "locale":Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    #@12
    invoke-interface {v1, v0}, Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;->onLocaleSelected(Ljava/util/Locale;)V

    #@15
    .line 248
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    #@0
    .prologue
    .line 237
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    #@3
    .line 238
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListView()Landroid/widget/ListView;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    #@a
    .line 236
    return-void
.end method

.method public setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    #@0
    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    #@2
    .line 231
    return-void
.end method
