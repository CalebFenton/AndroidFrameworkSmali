.class Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;
.super Ljava/lang/Object;
.source "InputMethodSubtypeSwitchingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputMethodAndSubtypeList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList$1;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

.field private final mSortedImmis:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSystemLocaleStr:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;)Landroid/content/pm/PackageManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mPm:Landroid/content/pm/PackageManager;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@0
    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 179
    new-instance v1, Ljava/util/TreeMap;

    #@5
    .line 180
    new-instance v2, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList$1;

    #@7
    invoke-direct {v2, p0}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList$1;-><init>(Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;)V

    #@a
    .line 179
    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    #@d
    .line 178
    iput-object v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSortedImmis:Ljava/util/TreeMap;

    #@f
    .line 171
    iput-object p1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mContext:Landroid/content/Context;

    #@11
    .line 172
    iput-object p2, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@13
    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@16
    move-result-object v1

    #@17
    iput-object v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mPm:Landroid/content/pm/PackageManager;

    #@19
    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@20
    move-result-object v1

    #@21
    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@23
    .line 175
    .local v0, "locale":Ljava/util/Locale;
    if-eqz v0, :cond_0

    #@25
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    :goto_0
    iput-object v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSystemLocaleStr:Ljava/lang/String;

    #@2b
    .line 170
    return-void

    #@2c
    .line 175
    :cond_0
    const-string/jumbo v1, ""

    #@2f
    goto :goto_0
.end method


# virtual methods
.method public getSortedInputMethodAndSubtypeList(ZZ)Ljava/util/List;
    .locals 22
    .param p1, "includeAuxiliarySubtypes"    # Z
    .param p2, "isScreenLocked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 198
    new-instance v15, Ljava/util/ArrayList;

    #@2
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 200
    .local v15, "imList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    move-object/from16 v0, p0

    #@7
    iget-object v1, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@9
    .line 201
    move-object/from16 v0, p0

    #@b
    iget-object v6, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mContext:Landroid/content/Context;

    #@d
    .line 200
    invoke-virtual {v1, v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getExplicitlyOrImplicitlyEnabledInputMethodsAndSubtypeListLocked(Landroid/content/Context;)Ljava/util/HashMap;

    #@10
    move-result-object v17

    #@11
    .line 202
    .local v17, "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    if-eqz v17, :cond_0

    #@13
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_1

    #@19
    .line 203
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@1c
    move-result-object v1

    #@1d
    return-object v1

    #@1e
    .line 205
    :cond_1
    if-eqz p2, :cond_2

    #@20
    if-eqz p1, :cond_2

    #@22
    .line 209
    const/16 p1, 0x0

    #@24
    .line 211
    .end local p1    # "includeAuxiliarySubtypes":Z
    :cond_2
    move-object/from16 v0, p0

    #@26
    iget-object v1, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSortedImmis:Ljava/util/TreeMap;

    #@28
    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V

    #@2b
    .line 212
    move-object/from16 v0, p0

    #@2d
    iget-object v1, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSortedImmis:Ljava/util/TreeMap;

    #@2f
    move-object/from16 v0, v17

    #@31
    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    #@34
    .line 213
    move-object/from16 v0, p0

    #@36
    iget-object v1, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSortedImmis:Ljava/util/TreeMap;

    #@38
    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    #@3b
    move-result-object v1

    #@3c
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3f
    move-result-object v16

    #@40
    .local v16, "imi$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@43
    move-result v1

    #@44
    if-eqz v1, :cond_9

    #@46
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@49
    move-result-object v4

    #@4a
    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    #@4c
    .line 214
    .local v4, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v4, :cond_3

    #@4e
    .line 217
    move-object/from16 v0, v17

    #@50
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    move-result-object v14

    #@54
    check-cast v14, Ljava/util/List;

    #@56
    .line 218
    .local v14, "explicitlyOrImplicitlyEnabledSubtypeList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    new-instance v13, Ljava/util/HashSet;

    #@58
    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    #@5b
    .line 219
    .local v13, "enabledSubtypeSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5e
    move-result-object v19

    #@5f
    .local v19, "subtype$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    #@62
    move-result v1

    #@63
    if-eqz v1, :cond_4

    #@65
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@68
    move-result-object v18

    #@69
    check-cast v18, Landroid/view/inputmethod/InputMethodSubtype;

    #@6b
    .line 220
    .local v18, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {v18 .. v18}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    #@6e
    move-result v1

    #@6f
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@72
    move-result-object v1

    #@73
    invoke-virtual {v13, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@76
    goto :goto_1

    #@77
    .line 222
    .end local v18    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    move-object/from16 v0, p0

    #@79
    iget-object v1, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mPm:Landroid/content/pm/PackageManager;

    #@7b
    invoke-virtual {v4, v1}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@7e
    move-result-object v2

    #@7f
    .line 223
    .local v2, "imeLabel":Ljava/lang/CharSequence;
    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    #@82
    move-result v1

    #@83
    if-lez v1, :cond_8

    #@85
    .line 224
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    #@88
    move-result v20

    #@89
    .line 228
    .local v20, "subtypeCount":I
    const/4 v5, 0x0

    #@8a
    .local v5, "j":I
    :goto_2
    move/from16 v0, v20

    #@8c
    if-ge v5, v0, :cond_3

    #@8e
    .line 229
    invoke-virtual {v4, v5}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    #@91
    move-result-object v18

    #@92
    .line 230
    .restart local v18    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {v18 .. v18}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    #@95
    move-result v1

    #@96
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@99
    move-result-object v21

    #@9a
    .line 232
    .local v21, "subtypeHashCode":Ljava/lang/String;
    move-object/from16 v0, v21

    #@9c
    invoke-virtual {v13, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@9f
    move-result v1

    #@a0
    if-eqz v1, :cond_5

    #@a2
    .line 233
    if-nez p1, :cond_6

    #@a4
    invoke-virtual/range {v18 .. v18}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    #@a7
    move-result v1

    #@a8
    if-eqz v1, :cond_6

    #@aa
    .line 228
    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    #@ac
    goto :goto_2

    #@ad
    .line 235
    :cond_6
    invoke-virtual/range {v18 .. v18}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    #@b0
    move-result v1

    #@b1
    if-eqz v1, :cond_7

    #@b3
    const/4 v3, 0x0

    #@b4
    .line 238
    :goto_4
    new-instance v1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    #@b6
    .line 239
    invoke-virtual/range {v18 .. v18}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    #@b9
    move-result-object v6

    #@ba
    move-object/from16 v0, p0

    #@bc
    iget-object v7, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSystemLocaleStr:Ljava/lang/String;

    #@be
    .line 238
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;ILjava/lang/String;Ljava/lang/String;)V

    #@c1
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c4
    .line 244
    move-object/from16 v0, v21

    #@c6
    invoke-virtual {v13, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@c9
    goto :goto_3

    #@ca
    .line 236
    :cond_7
    move-object/from16 v0, p0

    #@cc
    iget-object v1, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mContext:Landroid/content/Context;

    #@ce
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    #@d1
    move-result-object v6

    #@d2
    .line 237
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    #@d5
    move-result-object v7

    #@d6
    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@d8
    .line 235
    move-object/from16 v0, v18

    #@da
    invoke-virtual {v0, v1, v6, v7}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@dd
    move-result-object v3

    #@de
    .local v3, "subtypeLabel":Ljava/lang/CharSequence;
    goto :goto_4

    #@df
    .line 248
    .end local v3    # "subtypeLabel":Ljava/lang/CharSequence;
    .end local v5    # "j":I
    .end local v18    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v20    # "subtypeCount":I
    .end local v21    # "subtypeHashCode":Ljava/lang/String;
    :cond_8
    new-instance v6, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    #@e1
    .line 249
    move-object/from16 v0, p0

    #@e3
    iget-object v12, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSystemLocaleStr:Ljava/lang/String;

    #@e5
    .line 248
    const/4 v8, 0x0

    #@e6
    const/4 v10, -0x1

    #@e7
    const/4 v11, 0x0

    #@e8
    move-object v7, v2

    #@e9
    move-object v9, v4

    #@ea
    invoke-direct/range {v6 .. v12}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;ILjava/lang/String;Ljava/lang/String;)V

    #@ed
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@f0
    goto/16 :goto_0

    #@f2
    .line 252
    .end local v2    # "imeLabel":Ljava/lang/CharSequence;
    .end local v4    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v13    # "enabledSubtypeSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v14    # "explicitlyOrImplicitlyEnabledSubtypeList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v19    # "subtype$iterator":Ljava/util/Iterator;
    :cond_9
    invoke-static {v15}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@f5
    .line 253
    return-object v15
.end method
