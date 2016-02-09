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
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 178
    new-instance v1, Ljava/util/TreeMap;

    #@5
    .line 179
    new-instance v2, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList$1;

    #@7
    invoke-direct {v2, p0}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList$1;-><init>(Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;)V

    #@a
    .line 178
    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    #@d
    .line 177
    iput-object v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSortedImmis:Ljava/util/TreeMap;

    #@f
    .line 170
    iput-object p1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mContext:Landroid/content/Context;

    #@11
    .line 171
    iput-object p2, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@13
    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@16
    move-result-object v1

    #@17
    iput-object v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mPm:Landroid/content/pm/PackageManager;

    #@19
    .line 173
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
    .line 174
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
    .line 169
    return-void

    #@2c
    .line 174
    :cond_0
    const-string/jumbo v1, ""

    #@2f
    goto :goto_0
.end method


# virtual methods
.method public getSortedInputMethodAndSubtypeList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 196
    const/4 v0, 0x1

    #@2
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->getSortedInputMethodAndSubtypeList(ZZZ)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSortedInputMethodAndSubtypeList(ZZZ)Ljava/util/List;
    .locals 22
    .param p1, "showSubtypes"    # Z
    .param p2, "includeAuxiliarySubtypes"    # Z
    .param p3, "isScreenLocked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 202
    new-instance v15, Ljava/util/ArrayList;

    #@2
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 204
    .local v15, "imList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    move-object/from16 v0, p0

    #@7
    iget-object v1, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@9
    .line 205
    move-object/from16 v0, p0

    #@b
    iget-object v6, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mContext:Landroid/content/Context;

    #@d
    .line 204
    invoke-virtual {v1, v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getExplicitlyOrImplicitlyEnabledInputMethodsAndSubtypeListLocked(Landroid/content/Context;)Ljava/util/HashMap;

    #@10
    move-result-object v17

    #@11
    .line 206
    .local v17, "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    if-eqz v17, :cond_0

    #@13
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_1

    #@19
    .line 207
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@1c
    move-result-object v1

    #@1d
    return-object v1

    #@1e
    .line 209
    :cond_1
    if-eqz p3, :cond_2

    #@20
    if-eqz p2, :cond_2

    #@22
    .line 213
    const/16 p2, 0x0

    #@24
    .line 215
    .end local p2    # "includeAuxiliarySubtypes":Z
    :cond_2
    move-object/from16 v0, p0

    #@26
    iget-object v1, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSortedImmis:Ljava/util/TreeMap;

    #@28
    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V

    #@2b
    .line 216
    move-object/from16 v0, p0

    #@2d
    iget-object v1, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSortedImmis:Ljava/util/TreeMap;

    #@2f
    move-object/from16 v0, v17

    #@31
    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    #@34
    .line 217
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
    .line 218
    .local v4, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v4, :cond_3

    #@4e
    .line 221
    move-object/from16 v0, v17

    #@50
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    move-result-object v14

    #@54
    check-cast v14, Ljava/util/List;

    #@56
    .line 222
    .local v14, "explicitlyOrImplicitlyEnabledSubtypeList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    new-instance v13, Ljava/util/HashSet;

    #@58
    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    #@5b
    .line 223
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
    .line 224
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
    .line 226
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
    .line 227
    .local v2, "imeLabel":Ljava/lang/CharSequence;
    if-eqz p1, :cond_8

    #@81
    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    #@84
    move-result v1

    #@85
    if-lez v1, :cond_8

    #@87
    .line 228
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    #@8a
    move-result v20

    #@8b
    .line 232
    .local v20, "subtypeCount":I
    const/4 v5, 0x0

    #@8c
    .local v5, "j":I
    :goto_2
    move/from16 v0, v20

    #@8e
    if-ge v5, v0, :cond_3

    #@90
    .line 233
    invoke-virtual {v4, v5}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    #@93
    move-result-object v18

    #@94
    .line 234
    .restart local v18    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {v18 .. v18}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    #@97
    move-result v1

    #@98
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@9b
    move-result-object v21

    #@9c
    .line 236
    .local v21, "subtypeHashCode":Ljava/lang/String;
    move-object/from16 v0, v21

    #@9e
    invoke-virtual {v13, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@a1
    move-result v1

    #@a2
    if-eqz v1, :cond_5

    #@a4
    .line 237
    if-nez p2, :cond_6

    #@a6
    invoke-virtual/range {v18 .. v18}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    #@a9
    move-result v1

    #@aa
    if-eqz v1, :cond_6

    #@ac
    .line 232
    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    #@ae
    goto :goto_2

    #@af
    .line 239
    :cond_6
    invoke-virtual/range {v18 .. v18}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    #@b2
    move-result v1

    #@b3
    if-eqz v1, :cond_7

    #@b5
    const/4 v3, 0x0

    #@b6
    .line 242
    :goto_4
    new-instance v1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    #@b8
    .line 243
    invoke-virtual/range {v18 .. v18}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    #@bb
    move-result-object v6

    #@bc
    move-object/from16 v0, p0

    #@be
    iget-object v7, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSystemLocaleStr:Ljava/lang/String;

    #@c0
    .line 242
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;ILjava/lang/String;Ljava/lang/String;)V

    #@c3
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c6
    .line 248
    move-object/from16 v0, v21

    #@c8
    invoke-virtual {v13, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@cb
    goto :goto_3

    #@cc
    .line 240
    :cond_7
    move-object/from16 v0, p0

    #@ce
    iget-object v1, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mContext:Landroid/content/Context;

    #@d0
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    #@d3
    move-result-object v6

    #@d4
    .line 241
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    #@d7
    move-result-object v7

    #@d8
    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@da
    .line 239
    move-object/from16 v0, v18

    #@dc
    invoke-virtual {v0, v1, v6, v7}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@df
    move-result-object v3

    #@e0
    .local v3, "subtypeLabel":Ljava/lang/CharSequence;
    goto :goto_4

    #@e1
    .line 252
    .end local v3    # "subtypeLabel":Ljava/lang/CharSequence;
    .end local v5    # "j":I
    .end local v18    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v20    # "subtypeCount":I
    .end local v21    # "subtypeHashCode":Ljava/lang/String;
    :cond_8
    new-instance v6, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    #@e3
    .line 253
    move-object/from16 v0, p0

    #@e5
    iget-object v12, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSystemLocaleStr:Ljava/lang/String;

    #@e7
    .line 252
    const/4 v8, 0x0

    #@e8
    const/4 v10, -0x1

    #@e9
    const/4 v11, 0x0

    #@ea
    move-object v7, v2

    #@eb
    move-object v9, v4

    #@ec
    invoke-direct/range {v6 .. v12}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;ILjava/lang/String;Ljava/lang/String;)V

    #@ef
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@f2
    goto/16 :goto_0

    #@f4
    .line 256
    .end local v2    # "imeLabel":Ljava/lang/CharSequence;
    .end local v4    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v13    # "enabledSubtypeSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v14    # "explicitlyOrImplicitlyEnabledSubtypeList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v19    # "subtype$iterator":Ljava/util/Iterator;
    :cond_9
    invoke-static {v15}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@f7
    .line 257
    return-object v15
.end method
