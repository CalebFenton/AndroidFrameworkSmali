.class public Lcom/android/internal/app/LocalePicker;
.super Landroid/app/ListFragment;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;,
        Lcom/android/internal/app/LocalePicker$LocaleInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LocalePicker"


# instance fields
.field mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 45
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
    .line 155
    const v0, 0x1090078

    #@3
    const v1, 0x10201cd

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
    const/4 v2, 0x0

    #@1
    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4
    move-result-object v0

    #@5
    .line 161
    const-string/jumbo v1, "development_settings_enabled"

    #@8
    .line 160
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    const/4 v8, 0x1

    #@f
    .line 162
    .local v8, "isInDeveloperMode":Z
    :goto_0
    invoke-static {p0, v8}, Lcom/android/internal/app/LocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    #@12
    move-result-object v4

    #@13
    .line 165
    .local v4, "localeInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    const-string/jumbo v0, "layout_inflater"

    #@16
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@19
    move-result-object v5

    #@1a
    check-cast v5, Landroid/view/LayoutInflater;

    #@1c
    .line 166
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

    #@27
    .line 160
    .end local v4    # "localeInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    .end local v8    # "isInDeveloperMode":Z
    :cond_0
    const/4 v8, 0x0

    #@28
    .restart local v8    # "isInDeveloperMode":Z
    goto :goto_0
.end method

.method public static getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;
    .locals 13
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
    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v8

    #@4
    .line 89
    .local v8, "resources":Landroid/content/res/Resources;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@7
    move-result-object v11

    #@8
    invoke-virtual {v11}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    #@b
    move-result-object v11

    #@c
    invoke-virtual {v11}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    #@f
    move-result-object v6

    #@10
    .line 90
    .local v6, "locales":[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    #@12
    array-length v11, v6

    #@13
    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(I)V

    #@16
    .line 91
    .local v5, "localeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v5, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@19
    .line 94
    if-nez p1, :cond_0

    #@1b
    .line 95
    const-string/jumbo v11, "ar-XB"

    #@1e
    invoke-interface {v5, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@21
    .line 96
    const-string/jumbo v11, "en-XA"

    #@24
    invoke-interface {v5, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@27
    .line 99
    :cond_0
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@2a
    .line 100
    const v11, 0x1070008

    #@2d
    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@30
    move-result-object v9

    #@31
    .line 101
    .local v9, "specialLocaleCodes":[Ljava/lang/String;
    const v11, 0x1070009

    #@34
    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@37
    move-result-object v10

    #@38
    .line 103
    .local v10, "specialLocaleNames":[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    #@3a
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@3d
    move-result v11

    #@3e
    invoke-direct {v4, v11}, Ljava/util/ArrayList;-><init>(I)V

    #@41
    .line 104
    .local v4, "localeInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@44
    move-result-object v3

    #@45
    .local v3, "locale$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@48
    move-result v11

    #@49
    if-eqz v11, :cond_5

    #@4b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4e
    move-result-object v2

    #@4f
    check-cast v2, Ljava/lang/String;

    #@51
    .line 105
    .local v2, "locale":Ljava/lang/String;
    const/16 v11, 0x5f

    #@53
    const/16 v12, 0x2d

    #@55
    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@58
    move-result-object v11

    #@59
    invoke-static {v11}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@5c
    move-result-object v1

    #@5d
    .line 106
    .local v1, "l":Ljava/util/Locale;
    if-eqz v1, :cond_1

    #@5f
    const-string/jumbo v11, "und"

    #@62
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@65
    move-result-object v12

    #@66
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@69
    move-result v11

    #@6a
    if-nez v11, :cond_1

    #@6c
    .line 107
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@6f
    move-result-object v11

    #@70
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    #@73
    move-result v11

    #@74
    .line 106
    if-nez v11, :cond_1

    #@76
    .line 107
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@79
    move-result-object v11

    #@7a
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    #@7d
    move-result v11

    #@7e
    .line 106
    if-nez v11, :cond_1

    #@80
    .line 111
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    #@83
    move-result v11

    #@84
    if-eqz v11, :cond_2

    #@86
    .line 115
    new-instance v11, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    #@88
    invoke-virtual {v1, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    #@8b
    move-result-object v12

    #@8c
    invoke-static {v12}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    #@8f
    move-result-object v12

    #@90
    invoke-direct {v11, v12, v1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@93
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@96
    goto :goto_0

    #@97
    .line 121
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@9a
    move-result v11

    #@9b
    add-int/lit8 v11, v11, -0x1

    #@9d
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a0
    move-result-object v7

    #@a1
    check-cast v7, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    #@a3
    .line 122
    .local v7, "previous":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    iget-object v11, v7, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    #@a5
    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@a8
    move-result-object v11

    #@a9
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@ac
    move-result-object v12

    #@ad
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b0
    move-result v11

    #@b1
    if-eqz v11, :cond_3

    #@b3
    .line 123
    iget-object v11, v7, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    #@b5
    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@b8
    move-result-object v11

    #@b9
    const-string/jumbo v12, "zz"

    #@bc
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bf
    move-result v11

    #@c0
    if-eqz v11, :cond_4

    #@c2
    .line 137
    :cond_3
    invoke-virtual {v1, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    #@c5
    move-result-object v11

    #@c6
    invoke-static {v11}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    #@c9
    move-result-object v0

    #@ca
    .line 141
    .local v0, "displayName":Ljava/lang/String;
    new-instance v11, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    #@cc
    invoke-direct {v11, v0, v1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@cf
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d2
    goto/16 :goto_0

    #@d4
    .line 129
    .end local v0    # "displayName":Ljava/lang/String;
    :cond_4
    iget-object v11, v7, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    #@d6
    .line 128
    invoke-static {v11, v9, v10}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    #@d9
    move-result-object v11

    #@da
    invoke-static {v11}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    #@dd
    move-result-object v11

    #@de
    iput-object v11, v7, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    #@e0
    .line 134
    new-instance v11, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    #@e2
    .line 135
    invoke-static {v1, v9, v10}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    #@e5
    move-result-object v12

    #@e6
    .line 134
    invoke-static {v12}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    #@e9
    move-result-object v12

    #@ea
    invoke-direct {v11, v12, v1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@ed
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@f0
    goto/16 :goto_0

    #@f2
    .line 146
    .end local v1    # "l":Ljava/util/Locale;
    .end local v2    # "locale":Ljava/lang/String;
    .end local v7    # "previous":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_5
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@f5
    .line 147
    return-object v4
.end method

.method private static getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "l"    # Ljava/util/Locale;
    .param p1, "specialLocaleCodes"    # [Ljava/lang/String;
    .param p2, "specialLocaleNames"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 198
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 200
    .local v0, "code":Ljava/lang/String;
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    array-length v2, p1

    #@6
    if-ge v1, v2, :cond_1

    #@8
    .line 201
    aget-object v2, p1, v1

    #@a
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 202
    aget-object v2, p2, v1

    #@12
    return-object v2

    #@13
    .line 200
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 206
    :cond_1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    return-object v2
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 189
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 190
    return-object p0

    #@8
    .line 193
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
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 246
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v0

    #@4
    .line 247
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    #@7
    move-result-object v1

    #@8
    .line 249
    .local v1, "config":Landroid/content/res/Configuration;
    invoke-virtual {v1, p0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    #@b
    .line 250
    const/4 v3, 0x1

    #@c
    iput-boolean v3, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    #@e
    .line 252
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    #@11
    .line 254
    const-string/jumbo v3, "com.android.providers.settings"

    #@14
    invoke-static {v3}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 244
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    :goto_0
    return-void

    #@18
    .line 255
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
    .line 211
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    #@3
    .line 212
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    #@6
    move-result-object v1

    #@7
    invoke-static {v1}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    #@a
    move-result-object v0

    #@b
    .line 213
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-virtual {p0, v0}, Lcom/android/internal/app/LocalePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    #@e
    .line 210
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
    .line 234
    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 235
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
    .line 236
    .local v0, "locale":Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    #@12
    invoke-interface {v1, v0}, Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;->onLocaleSelected(Ljava/util/Locale;)V

    #@15
    .line 233
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    #@0
    .prologue
    .line 222
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    #@3
    .line 223
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListView()Landroid/widget/ListView;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    #@a
    .line 221
    return-void
.end method

.method public setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    #@0
    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    #@2
    .line 216
    return-void
.end method
