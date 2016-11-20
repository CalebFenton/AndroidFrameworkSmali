.class Lcom/android/server/pm/ShortcutPackage;
.super Lcom/android/server/pm/ShortcutPackageItem;
.source "ShortcutPackage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShortcutPackage$-void__init__com_android_server_pm_ShortcutUser_shortcutUser_int_packageUserId_java_lang_String_packageName_com_android_server_pm_ShortcutPackageInfo_spi_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutPackage$-void__init__com_android_server_pm_ShortcutUser_shortcutUser_int_packageUserId_java_lang_String_packageName_com_android_server_pm_ShortcutPackageInfo_spi_LambdaImpl1;,
        Lcom/android/server/pm/ShortcutPackage$-void_refreshPinnedFlags__LambdaImpl0;,
        Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl0;,
        Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl1;,
        Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl2;
    }
.end annotation


# static fields
.field private static final ATTR_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final ATTR_BITMAP_PATH:Ljava/lang/String; = "bitmap-path"

.field private static final ATTR_CALL_COUNT:Ljava/lang/String; = "call-count"

.field private static final ATTR_DISABLED_MESSAGE:Ljava/lang/String; = "dmessage"

.field private static final ATTR_DISABLED_MESSAGE_RES_ID:Ljava/lang/String; = "dmessageid"

.field private static final ATTR_DISABLED_MESSAGE_RES_NAME:Ljava/lang/String; = "dmessagename"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_ICON_RES_ID:Ljava/lang/String; = "icon-res"

.field private static final ATTR_ICON_RES_NAME:Ljava/lang/String; = "icon-resname"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_INTENT_LEGACY:Ljava/lang/String; = "intent"

.field private static final ATTR_INTENT_NO_EXTRA:Ljava/lang/String; = "intent-base"

.field private static final ATTR_LAST_RESET:Ljava/lang/String; = "last-reset"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_NAME_XMLUTILS:Ljava/lang/String; = "name"

.field private static final ATTR_RANK:Ljava/lang/String; = "rank"

.field private static final ATTR_TEXT:Ljava/lang/String; = "text"

.field private static final ATTR_TEXT_RES_ID:Ljava/lang/String; = "textid"

.field private static final ATTR_TEXT_RES_NAME:Ljava/lang/String; = "textname"

.field private static final ATTR_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final ATTR_TITLE:Ljava/lang/String; = "title"

.field private static final ATTR_TITLE_RES_ID:Ljava/lang/String; = "titleid"

.field private static final ATTR_TITLE_RES_NAME:Ljava/lang/String; = "titlename"

.field private static final KEY_BITMAPS:Ljava/lang/String; = "bitmaps"

.field private static final KEY_BITMAP_BYTES:Ljava/lang/String; = "bitmapBytes"

.field private static final KEY_DYNAMIC:Ljava/lang/String; = "dynamic"

.field private static final KEY_MANIFEST:Ljava/lang/String; = "manifest"

.field private static final KEY_PINNED:Ljava/lang/String; = "pinned"

.field private static final NAME_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final TAG_EXTRAS:Ljava/lang/String; = "extras"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_INTENT_EXTRAS_LEGACY:Ljava/lang/String; = "intent-extras"

.field static final TAG_ROOT:Ljava/lang/String; = "package"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG_STRING_ARRAY_XMLUTILS:Ljava/lang/String; = "string-array"

.field private static final TAG_VERIFY:Ljava/lang/String; = "ShortcutService.verify"


# instance fields
.field private mApiCallCount:I

.field private mLastKnownForegroundElapsedTime:J

.field private mLastResetTime:J

.field private final mPackageUid:I

.field final mShortcutRankComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mShortcutTypeAndRankComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortcuts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -com_android_server_pm_ShortcutPackage_lambda$1(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .locals 2
    .param p0, "a"    # Landroid/content/pm/ShortcutInfo;
    .param p1, "b"    # Landroid/content/pm/ShortcutInfo;

    #@0
    .prologue
    .line 887
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 890
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_2

    #@12
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 891
    const/4 v0, 0x1

    #@19
    return v0

    #@1a
    .line 888
    :cond_1
    const/4 v0, -0x1

    #@1b
    return v0

    #@1c
    .line 893
    :cond_2
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    #@1f
    move-result v0

    #@20
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    #@23
    move-result v1

    #@24
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    #@27
    move-result v0

    #@28
    return v0
.end method

.method static synthetic -com_android_server_pm_ShortcutPackage_lambda$2(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .locals 3
    .param p0, "a"    # Landroid/content/pm/ShortcutInfo;
    .param p1, "b"    # Landroid/content/pm/ShortcutInfo;

    #@0
    .prologue
    .line 1050
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    #@3
    move-result v1

    #@4
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    #@7
    move-result v2

    #@8
    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    #@b
    move-result v0

    #@c
    .line 1051
    .local v0, "ret":I
    if-eqz v0, :cond_0

    #@e
    .line 1052
    return v0

    #@f
    .line 1059
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    #@12
    move-result v1

    #@13
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    #@16
    move-result v2

    #@17
    if-eq v1, v2, :cond_2

    #@19
    .line 1060
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_1

    #@1f
    const/4 v1, -0x1

    #@20
    :goto_0
    return v1

    #@21
    :cond_1
    const/4 v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 1064
    :cond_2
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    #@26
    move-result v1

    #@27
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    #@2a
    move-result v2

    #@2b
    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    #@2e
    move-result v0

    #@2f
    .line 1065
    if-eqz v0, :cond_3

    #@31
    .line 1066
    return v0

    #@32
    .line 1071
    :cond_3
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@3d
    move-result v1

    #@3e
    return v1
.end method

.method static synthetic -com_android_server_pm_ShortcutPackage_lambda$4(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .locals 2
    .param p0, "a"    # Landroid/content/pm/ShortcutInfo;
    .param p1, "b"    # Landroid/content/pm/ShortcutInfo;

    #@0
    .prologue
    .line 1530
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    #@7
    move-result v1

    #@8
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method static synthetic -com_android_server_pm_ShortcutPackage_lambda$5(Landroid/content/pm/ShortcutInfo;)Z
    .locals 1
    .param p0, "si"    # Landroid/content/pm/ShortcutInfo;

    #@0
    .prologue
    .line 1534
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0
.end method

.method static synthetic -com_android_server_pm_ShortcutPackage_lambda$6(Landroid/content/pm/ShortcutInfo;)Z
    .locals 1
    .param p0, "si"    # Landroid/content/pm/ShortcutInfo;

    #@0
    .prologue
    .line 1537
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V
    .locals 1
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "packageUserId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 134
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/ShortcutPackage;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V

    #@4
    .line 133
    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V
    .locals 1
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "packageUserId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "spi"    # Lcom/android/server/pm/ShortcutPackageInfo;

    #@0
    .prologue
    .line 128
    if-eqz p4, :cond_0

    #@2
    .line 127
    .end local p4    # "spi":Lcom/android/server/pm/ShortcutPackageInfo;
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/ShortcutPackageItem;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V

    #@5
    .line 109
    new-instance v0, Landroid/util/ArrayMap;

    #@7
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@c
    .line 885
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$-void__init__com_android_server_pm_ShortcutUser_shortcutUser_int_packageUserId_java_lang_String_packageName_com_android_server_pm_ShortcutPackageInfo_spi_LambdaImpl0;

    #@e
    invoke-direct {v0}, Lcom/android/server/pm/ShortcutPackage$-void__init__com_android_server_pm_ShortcutUser_shortcutUser_int_packageUserId_java_lang_String_packageName_com_android_server_pm_ShortcutPackageInfo_spi_LambdaImpl0;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeAndRankComparator:Ljava/util/Comparator;

    #@13
    .line 1048
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$-void__init__com_android_server_pm_ShortcutUser_shortcutUser_int_packageUserId_java_lang_String_packageName_com_android_server_pm_ShortcutPackageInfo_spi_LambdaImpl1;

    #@15
    invoke-direct {v0}, Lcom/android/server/pm/ShortcutPackage$-void__init__com_android_server_pm_ShortcutUser_shortcutUser_int_packageUserId_java_lang_String_packageName_com_android_server_pm_ShortcutPackageInfo_spi_LambdaImpl1;-><init>()V

    #@18
    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutRankComparator:Ljava/util/Comparator;

    #@1a
    .line 130
    iget-object v0, p1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@1c
    invoke-virtual {v0, p3, p2}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(Ljava/lang/String;I)I

    #@1f
    move-result v0

    #@20
    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    #@22
    .line 126
    return-void

    #@23
    .line 128
    .restart local p4    # "spi":Lcom/android/server/pm/ShortcutPackageInfo;
    :cond_0
    invoke-static {}, Lcom/android/server/pm/ShortcutPackageInfo;->newEmpty()Lcom/android/server/pm/ShortcutPackageInfo;

    #@26
    move-result-object p4

    #@27
    goto :goto_0
.end method

.method private addShortcutInner(Landroid/content/pm/ShortcutInfo;)V
    .locals 3
    .param p1, "newShortcut"    # Landroid/content/pm/ShortcutInfo;

    #@0
    .prologue
    .line 209
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    #@2
    iget-object v0, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@4
    .line 211
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->deleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    #@b
    .line 214
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    #@e
    move-result v1

    #@f
    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/ShortcutService;->saveIconAndFixUpShortcut(ILandroid/content/pm/ShortcutInfo;)V

    #@12
    .line 215
    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V

    #@15
    .line 216
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@17
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    .line 208
    return-void
.end method

.method private areAllActivitiesStillEnabled()Z
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 587
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@7
    move-result v5

    #@8
    if-nez v5, :cond_0

    #@a
    .line 588
    return v7

    #@b
    .line 590
    :cond_0
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    #@d
    iget-object v3, v5, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@f
    .line 594
    .local v3, "s":Lcom/android/server/pm/ShortcutService;
    new-instance v1, Ljava/util/ArrayList;

    #@11
    const/4 v5, 0x4

    #@12
    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@15
    .line 596
    .local v1, "checked":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@17
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@1a
    move-result v5

    #@1b
    add-int/lit8 v2, v5, -0x1

    #@1d
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    #@1f
    .line 597
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@21
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@24
    move-result-object v4

    #@25
    check-cast v4, Landroid/content/pm/ShortcutInfo;

    #@27
    .line 598
    .local v4, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    #@2a
    move-result-object v0

    #@2b
    .line 600
    .local v0, "activity":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@2e
    move-result v5

    #@2f
    if-eqz v5, :cond_2

    #@31
    .line 596
    :cond_1
    add-int/lit8 v2, v2, -0x1

    #@33
    goto :goto_0

    #@34
    .line 603
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@37
    .line 605
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getOwnerUserId()I

    #@3a
    move-result v5

    #@3b
    invoke-virtual {v3, v0, v5}, Lcom/android/server/pm/ShortcutService;->injectIsActivityEnabledAndExported(Landroid/content/ComponentName;I)Z

    #@3e
    move-result v5

    #@3f
    if-nez v5, :cond_1

    #@41
    .line 606
    return v6

    #@42
    .line 609
    .end local v0    # "activity":Landroid/content/ComponentName;
    .end local v4    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_3
    return v7
.end method

.method private deleteOrDisableWithId(Ljava/lang/String;ZZ)Landroid/content/pm/ShortcutInfo;
    .locals 4
    .param p1, "shortcutId"    # Ljava/lang/String;
    .param p2, "disable"    # Z
    .param p3, "overrideImmutable"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 347
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/content/pm/ShortcutInfo;

    #@9
    .line 349
    .local v0, "oldShortcut":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_2

    #@b
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_2

    #@11
    .line 352
    if-nez p3, :cond_0

    #@13
    .line 353
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;)V

    #@16
    .line 355
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_3

    #@1c
    .line 357
    const/4 v1, 0x0

    #@1d
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    #@20
    .line 358
    const/16 v1, 0x21

    #@22
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    #@25
    .line 359
    if-eqz p2, :cond_1

    #@27
    .line 360
    const/16 v1, 0x40

    #@29
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    #@2c
    .line 362
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    #@2e
    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@30
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    #@33
    move-result-wide v2

    #@34
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    #@37
    .line 364
    return-object v0

    #@38
    .line 350
    :cond_2
    return-object v2

    #@39
    .line 366
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->deleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    #@3c
    .line 367
    return-object v2
.end method

.method private deleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/pm/ShortcutInfo;

    #@8
    .line 200
    .local v0, "shortcut":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_0

    #@a
    .line 201
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    #@c
    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@e
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    #@11
    move-result v2

    #@12
    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/ShortcutService;->removeIcon(ILandroid/content/pm/ShortcutInfo;)V

    #@15
    .line 202
    const/16 v1, 0x23

    #@17
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    #@1a
    .line 205
    :cond_0
    return-object v0
.end method

.method private disableDynamicWithId(Ljava/lang/String;)Z
    .locals 3
    .param p1, "shortcutId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 319
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZ)Landroid/content/pm/ShortcutInfo;

    #@5
    move-result-object v0

    #@6
    .line 321
    .local v0, "disabled":Landroid/content/pm/ShortcutInfo;
    if-nez v0, :cond_0

    #@8
    :goto_0
    return v1

    #@9
    :cond_0
    move v1, v2

    #@a
    goto :goto_0
.end method

.method private ensureNotImmutable(Landroid/content/pm/ShortcutInfo;)V
    .locals 3
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    #@0
    .prologue
    .line 175
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isImmutable()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Manifest shortcut ID="

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 178
    const-string/jumbo v2, " may not be manipulated via APIs"

    #@21
    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    .line 176
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 174
    :cond_0
    return-void
.end method

.method private ensureNotImmutable(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/pm/ShortcutInfo;

    #@8
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;)V

    #@b
    .line 182
    return-void
.end method

.method private static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 575
    sget-char v1, Ljava/io/File;->separatorChar:C

    #@2
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    #@5
    move-result v0

    #@6
    .line 576
    .local v0, "sep":I
    const/4 v1, -0x1

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 577
    return-object p0

    #@a
    .line 579
    :cond_0
    add-int/lit8 v1, v0, 0x1

    #@c
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method private incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V
    .locals 2
    .param p2, "cn"    # Landroid/content/ComponentName;
    .param p3, "increment"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/ComponentName;",
            "I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 924
    .local p1, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/lang/Integer;

    #@6
    .line 925
    .local v0, "oldValue":Ljava/lang/Integer;
    if-nez v0, :cond_0

    #@8
    .line 926
    const/4 v1, 0x0

    #@9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c
    move-result-object v0

    #@d
    .line 929
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@10
    move-result v1

    #@11
    add-int/2addr v1, p3

    #@12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    .line 923
    return-void
.end method

.method public static loadFromXml(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Lorg/xmlpull/v1/XmlPullParser;Z)Lcom/android/server/pm/ShortcutPackage;
    .locals 10
    .param p0, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "fromBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 1332
    const-string/jumbo v7, "name"

    #@3
    .line 1331
    invoke-static {p2, v7}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    .line 1334
    .local v2, "packageName":Ljava/lang/String;
    new-instance v3, Lcom/android/server/pm/ShortcutPackage;

    #@9
    .line 1335
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    #@c
    move-result v7

    #@d
    .line 1334
    invoke-direct {v3, p1, v7, v2}, Lcom/android/server/pm/ShortcutPackage;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V

    #@10
    .line 1338
    .local v3, "ret":Lcom/android/server/pm/ShortcutPackage;
    const-string/jumbo v7, "call-count"

    #@13
    invoke-static {p2, v7}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@16
    move-result v7

    #@17
    .line 1337
    iput v7, v3, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    #@19
    .line 1340
    const-string/jumbo v7, "last-reset"

    #@1c
    invoke-static {p2, v7}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@1f
    move-result-wide v8

    #@20
    .line 1339
    iput-wide v8, v3, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    #@22
    .line 1342
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@25
    move-result v1

    #@26
    .line 1344
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@29
    move-result v6

    #@2a
    .local v6, "type":I
    const/4 v7, 0x1

    #@2b
    if-eq v6, v7, :cond_4

    #@2d
    .line 1345
    const/4 v7, 0x3

    #@2e
    if-ne v6, v7, :cond_1

    #@30
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@33
    move-result v7

    #@34
    if-le v7, v1, :cond_4

    #@36
    .line 1346
    :cond_1
    const/4 v7, 0x2

    #@37
    if-ne v6, v7, :cond_0

    #@39
    .line 1349
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3c
    move-result v0

    #@3d
    .line 1350
    .local v0, "depth":I
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    .line 1351
    .local v5, "tag":Ljava/lang/String;
    add-int/lit8 v7, v1, 0x1

    #@43
    if-ne v0, v7, :cond_3

    #@45
    .line 1352
    const-string/jumbo v7, "package-info"

    #@48
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v7

    #@4c
    if-eqz v7, :cond_2

    #@4e
    .line 1354
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    #@51
    move-result-object v7

    #@52
    invoke-virtual {v7, p2, p3}, Lcom/android/server/pm/ShortcutPackageInfo;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;Z)V

    #@55
    goto :goto_0

    #@56
    .line 1352
    :cond_2
    const-string/jumbo v7, "shortcut"

    #@59
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v7

    #@5d
    if-eqz v7, :cond_3

    #@5f
    .line 1358
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    #@62
    move-result v7

    #@63
    .line 1357
    invoke-static {p2, v2, v7}, Lcom/android/server/pm/ShortcutPackage;->parseShortcut(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/content/pm/ShortcutInfo;

    #@66
    move-result-object v4

    #@67
    .line 1361
    .local v4, "si":Landroid/content/pm/ShortcutInfo;
    iget-object v7, v3, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@69
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@6c
    move-result-object v8

    #@6d
    invoke-virtual {v7, v8, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@70
    goto :goto_0

    #@71
    .line 1365
    .end local v4    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_3
    invoke-static {v0, v5}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V

    #@74
    goto :goto_0

    #@75
    .line 1367
    .end local v0    # "depth":I
    .end local v5    # "tag":Ljava/lang/String;
    :cond_4
    return-object v3
.end method

.method private static parseIntent(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 1480
    const-string/jumbo v5, "intent-base"

    #@3
    .line 1479
    invoke-static {p0, v5}, Lcom/android/server/pm/ShortcutService;->parseIntentAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/Intent;

    #@6
    move-result-object v1

    #@7
    .line 1482
    .local v1, "intent":Landroid/content/Intent;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@a
    move-result v2

    #@b
    .line 1484
    .local v2, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@e
    move-result v4

    #@f
    .local v4, "type":I
    const/4 v5, 0x1

    #@10
    if-eq v4, v5, :cond_3

    #@12
    .line 1485
    const/4 v5, 0x3

    #@13
    if-ne v4, v5, :cond_1

    #@15
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@18
    move-result v5

    #@19
    if-le v5, v2, :cond_3

    #@1b
    .line 1486
    :cond_1
    const/4 v5, 0x2

    #@1c
    if-ne v4, v5, :cond_0

    #@1e
    .line 1489
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@21
    move-result v0

    #@22
    .line 1490
    .local v0, "depth":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    .line 1495
    .local v3, "tag":Ljava/lang/String;
    const-string/jumbo v5, "extras"

    #@29
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v5

    #@2d
    if-eqz v5, :cond_2

    #@2f
    .line 1498
    invoke-static {p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    #@32
    move-result-object v5

    #@33
    .line 1497
    invoke-static {v1, v5}, Landroid/content/pm/ShortcutInfo;->setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;

    #@36
    goto :goto_0

    #@37
    .line 1501
    :cond_2
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;

    #@3a
    move-result-object v5

    #@3b
    throw v5

    #@3c
    .line 1503
    .end local v0    # "depth":I
    .end local v3    # "tag":Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method private static parseShortcut(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/content/pm/ShortcutInfo;
    .locals 38
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 1385
    const/16 v31, 0x0

    #@2
    .line 1386
    .local v31, "intentPersistableExtrasLegacy":Landroid/os/PersistableBundle;
    new-instance v32, Ljava/util/ArrayList;

    #@4
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 1388
    .local v32, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    const/16 v21, 0x0

    #@9
    .line 1394
    .local v21, "extras":Landroid/os/PersistableBundle;
    const/16 v18, 0x0

    #@b
    .line 1396
    .local v18, "categories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string/jumbo v3, "id"

    #@e
    move-object/from16 v0, p0

    #@10
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v5

    #@14
    .line 1398
    .local v5, "id":Ljava/lang/String;
    const-string/jumbo v3, "activity"

    #@17
    .line 1397
    move-object/from16 v0, p0

    #@19
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseComponentNameAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    #@1c
    move-result-object v7

    #@1d
    .line 1399
    .local v7, "activityComponent":Landroid/content/ComponentName;
    const-string/jumbo v3, "title"

    #@20
    move-object/from16 v0, p0

    #@22
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v9

    #@26
    .line 1400
    .local v9, "title":Ljava/lang/String;
    const-string/jumbo v3, "titleid"

    #@29
    move-object/from16 v0, p0

    #@2b
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@2e
    move-result v10

    #@2f
    .line 1401
    .local v10, "titleResId":I
    const-string/jumbo v3, "titlename"

    #@32
    move-object/from16 v0, p0

    #@34
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@37
    move-result-object v11

    #@38
    .line 1402
    .local v11, "titleResName":Ljava/lang/String;
    const-string/jumbo v3, "text"

    #@3b
    move-object/from16 v0, p0

    #@3d
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@40
    move-result-object v12

    #@41
    .line 1403
    .local v12, "text":Ljava/lang/String;
    const-string/jumbo v3, "textid"

    #@44
    move-object/from16 v0, p0

    #@46
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@49
    move-result v13

    #@4a
    .line 1404
    .local v13, "textResId":I
    const-string/jumbo v3, "textname"

    #@4d
    move-object/from16 v0, p0

    #@4f
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@52
    move-result-object v14

    #@53
    .line 1405
    .local v14, "textResName":Ljava/lang/String;
    const-string/jumbo v3, "dmessage"

    #@56
    move-object/from16 v0, p0

    #@58
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@5b
    move-result-object v15

    #@5c
    .line 1407
    .local v15, "disabledMessage":Ljava/lang/String;
    const-string/jumbo v3, "dmessageid"

    #@5f
    .line 1406
    move-object/from16 v0, p0

    #@61
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@64
    move-result v16

    #@65
    .line 1409
    .local v16, "disabledMessageResId":I
    const-string/jumbo v3, "dmessagename"

    #@68
    .line 1408
    move-object/from16 v0, p0

    #@6a
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@6d
    move-result-object v17

    #@6e
    .line 1410
    .local v17, "disabledMessageResName":Ljava/lang/String;
    const-string/jumbo v3, "intent"

    #@71
    move-object/from16 v0, p0

    #@73
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseIntentAttributeNoDefault(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/Intent;

    #@76
    move-result-object v30

    #@77
    .line 1411
    .local v30, "intentLegacy":Landroid/content/Intent;
    const-string/jumbo v3, "rank"

    #@7a
    move-object/from16 v0, p0

    #@7c
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@7f
    move-result-wide v36

    #@80
    move-wide/from16 v0, v36

    #@82
    long-to-int v0, v0

    #@83
    move/from16 v20, v0

    #@85
    .line 1412
    .local v20, "rank":I
    const-string/jumbo v3, "timestamp"

    #@88
    move-object/from16 v0, p0

    #@8a
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@8d
    move-result-wide v22

    #@8e
    .line 1413
    .local v22, "lastChangedTimestamp":J
    const-string/jumbo v3, "flags"

    #@91
    move-object/from16 v0, p0

    #@93
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@96
    move-result-wide v36

    #@97
    move-wide/from16 v0, v36

    #@99
    long-to-int v0, v0

    #@9a
    move/from16 v24, v0

    #@9c
    .line 1414
    .local v24, "flags":I
    const-string/jumbo v3, "icon-res"

    #@9f
    move-object/from16 v0, p0

    #@a1
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@a4
    move-result-wide v36

    #@a5
    move-wide/from16 v0, v36

    #@a7
    long-to-int v0, v0

    #@a8
    move/from16 v25, v0

    #@aa
    .line 1415
    .local v25, "iconResId":I
    const-string/jumbo v3, "icon-resname"

    #@ad
    move-object/from16 v0, p0

    #@af
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@b2
    move-result-object v26

    #@b3
    .line 1416
    .local v26, "iconResName":Ljava/lang/String;
    const-string/jumbo v3, "bitmap-path"

    #@b6
    move-object/from16 v0, p0

    #@b8
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@bb
    move-result-object v27

    #@bc
    .line 1418
    .local v27, "bitmapPath":Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@bf
    move-result v33

    #@c0
    .line 1420
    .end local v18    # "categories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v21    # "extras":Landroid/os/PersistableBundle;
    .end local v31    # "intentPersistableExtrasLegacy":Landroid/os/PersistableBundle;
    .local v33, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@c3
    move-result v35

    #@c4
    .local v35, "type":I
    const/4 v3, 0x1

    #@c5
    move/from16 v0, v35

    #@c7
    if-eq v0, v3, :cond_6

    #@c9
    .line 1421
    const/4 v3, 0x3

    #@ca
    move/from16 v0, v35

    #@cc
    if-ne v0, v3, :cond_1

    #@ce
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@d1
    move-result v3

    #@d2
    move/from16 v0, v33

    #@d4
    if-le v3, v0, :cond_6

    #@d6
    .line 1422
    :cond_1
    const/4 v3, 0x2

    #@d7
    move/from16 v0, v35

    #@d9
    if-ne v0, v3, :cond_0

    #@db
    .line 1425
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@de
    move-result v28

    #@df
    .line 1426
    .local v28, "depth":I
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@e2
    move-result-object v34

    #@e3
    .line 1431
    .local v34, "tag":Ljava/lang/String;
    const-string/jumbo v3, "intent-extras"

    #@e6
    move-object/from16 v0, v34

    #@e8
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@eb
    move-result v3

    #@ec
    if-eqz v3, :cond_2

    #@ee
    .line 1433
    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    #@f1
    move-result-object v31

    #@f2
    .local v31, "intentPersistableExtrasLegacy":Landroid/os/PersistableBundle;
    goto :goto_0

    #@f3
    .line 1431
    .end local v31    # "intentPersistableExtrasLegacy":Landroid/os/PersistableBundle;
    :cond_2
    const-string/jumbo v3, "intent"

    #@f6
    move-object/from16 v0, v34

    #@f8
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fb
    move-result v3

    #@fc
    if-eqz v3, :cond_3

    #@fe
    .line 1436
    invoke-static/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->parseIntent(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    #@101
    move-result-object v3

    #@102
    move-object/from16 v0, v32

    #@104
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@107
    goto :goto_0

    #@108
    .line 1431
    :cond_3
    const-string/jumbo v3, "extras"

    #@10b
    move-object/from16 v0, v34

    #@10d
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@110
    move-result v3

    #@111
    if-eqz v3, :cond_4

    #@113
    .line 1439
    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    #@116
    move-result-object v21

    #@117
    .local v21, "extras":Landroid/os/PersistableBundle;
    goto :goto_0

    #@118
    .line 1431
    .end local v21    # "extras":Landroid/os/PersistableBundle;
    :cond_4
    const-string/jumbo v3, "categories"

    #@11b
    move-object/from16 v0, v34

    #@11d
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@120
    move-result v3

    #@121
    if-nez v3, :cond_0

    #@123
    const-string/jumbo v3, "string-array"

    #@126
    move-object/from16 v0, v34

    #@128
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12b
    move-result v3

    #@12c
    if-eqz v3, :cond_5

    #@12e
    .line 1445
    const-string/jumbo v3, "categories"

    #@131
    .line 1446
    const-string/jumbo v4, "name"

    #@134
    .line 1445
    move-object/from16 v0, p0

    #@136
    invoke-static {v0, v4}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@139
    move-result-object v4

    #@13a
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13d
    move-result v3

    #@13e
    if-eqz v3, :cond_0

    #@140
    .line 1448
    const-string/jumbo v3, "string-array"

    #@143
    const/4 v4, 0x0

    #@144
    .line 1447
    move-object/from16 v0, p0

    #@146
    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readThisStringArrayXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    #@149
    move-result-object v2

    #@14a
    .line 1449
    .local v2, "ar":[Ljava/lang/String;
    new-instance v18, Landroid/util/ArraySet;

    #@14c
    array-length v3, v2

    #@14d
    move-object/from16 v0, v18

    #@14f
    invoke-direct {v0, v3}, Landroid/util/ArraySet;-><init>(I)V

    #@152
    .line 1450
    .local v18, "categories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v29, 0x0

    #@154
    .local v29, "i":I
    :goto_1
    array-length v3, v2

    #@155
    move/from16 v0, v29

    #@157
    if-ge v0, v3, :cond_0

    #@159
    .line 1451
    aget-object v3, v2, v29

    #@15b
    move-object/from16 v0, v18

    #@15d
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@160
    .line 1450
    add-int/lit8 v29, v29, 0x1

    #@162
    goto :goto_1

    #@163
    .line 1456
    .end local v2    # "ar":[Ljava/lang/String;
    .end local v18    # "categories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v29    # "i":I
    :cond_5
    move/from16 v0, v28

    #@165
    move-object/from16 v1, v34

    #@167
    invoke-static {v0, v1}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;

    #@16a
    move-result-object v3

    #@16b
    throw v3

    #@16c
    .line 1459
    .end local v28    # "depth":I
    .end local v34    # "tag":Ljava/lang/String;
    :cond_6
    if-eqz v30, :cond_7

    #@16e
    .line 1461
    invoke-static/range {v30 .. v31}, Landroid/content/pm/ShortcutInfo;->setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;

    #@171
    .line 1462
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->clear()V

    #@174
    .line 1463
    move-object/from16 v0, v32

    #@176
    move-object/from16 v1, v30

    #@178
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@17b
    .line 1466
    :cond_7
    new-instance v3, Landroid/content/pm/ShortcutInfo;

    #@17d
    .line 1471
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    #@180
    move-result v4

    #@181
    new-array v4, v4, [Landroid/content/Intent;

    #@183
    move-object/from16 v0, v32

    #@185
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@188
    move-result-object v19

    #@189
    check-cast v19, [Landroid/content/Intent;

    #@18b
    .line 1467
    const/4 v8, 0x0

    #@18c
    move/from16 v4, p2

    #@18e
    move-object/from16 v6, p1

    #@190
    .line 1466
    invoke-direct/range {v3 .. v27}, Landroid/content/pm/ShortcutInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;)V

    #@193
    return-object v3
.end method

.method private publishManifestShortcuts(Ljava/util/List;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 755
    .local p1, "newManifestShortcutList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v0, 0x0

    #@1
    .line 758
    .local v0, "changed":Z
    const/4 v8, 0x0

    #@2
    .line 759
    .local v8, "toDisableList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    #@7
    move-result v10

    #@8
    add-int/lit8 v1, v10, -0x1

    #@a
    .end local v8    # "toDisableList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@c
    .line 760
    iget-object v10, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@e
    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@11
    move-result-object v7

    #@12
    check-cast v7, Landroid/content/pm/ShortcutInfo;

    #@14
    .line 762
    .local v7, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    #@17
    move-result v10

    #@18
    if-eqz v10, :cond_1

    #@1a
    .line 763
    if-nez v8, :cond_0

    #@1c
    .line 764
    new-instance v8, Landroid/util/ArraySet;

    #@1e
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    #@21
    .line 766
    :cond_0
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@24
    move-result-object v10

    #@25
    invoke-virtual {v8, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@28
    .line 759
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@2a
    goto :goto_0

    #@2b
    .line 771
    .end local v7    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_2
    if-eqz p1, :cond_8

    #@2d
    .line 772
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@30
    move-result v4

    #@31
    .line 774
    .local v4, "newListSize":I
    const/4 v1, 0x0

    #@32
    :goto_1
    if-ge v1, v4, :cond_8

    #@34
    .line 775
    const/4 v0, 0x1

    #@35
    .line 777
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@38
    move-result-object v5

    #@39
    check-cast v5, Landroid/content/pm/ShortcutInfo;

    #@3b
    .line 778
    .local v5, "newShortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    #@3e
    move-result v10

    #@3f
    if-eqz v10, :cond_4

    #@41
    const/4 v3, 0x0

    #@42
    .line 780
    .local v3, "newDisabled":Z
    :goto_2
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    .line 781
    .local v2, "id":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@48
    invoke-virtual {v10, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    move-result-object v6

    #@4c
    check-cast v6, Landroid/content/pm/ShortcutInfo;

    #@4e
    .line 783
    .local v6, "oldShortcut":Landroid/content/pm/ShortcutInfo;
    const/4 v9, 0x0

    #@4f
    .line 785
    .local v9, "wasPinned":Z
    if-eqz v6, :cond_6

    #@51
    .line 786
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->isOriginallyFromManifest()Z

    #@54
    move-result v10

    #@55
    if-nez v10, :cond_5

    #@57
    .line 787
    const-string/jumbo v10, "ShortcutService"

    #@5a
    new-instance v11, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v12, "Shortcut with ID="

    #@62
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v11

    #@66
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@69
    move-result-object v12

    #@6a
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v11

    #@6e
    .line 788
    const-string/jumbo v12, " exists but is not from AndroidManifest.xml, not updating."

    #@71
    .line 787
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v11

    #@75
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v11

    #@79
    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7c
    .line 774
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@7e
    goto :goto_1

    #@7f
    .line 778
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "newDisabled":Z
    .end local v6    # "oldShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v9    # "wasPinned":Z
    :cond_4
    const/4 v3, 0x1

    #@80
    .restart local v3    # "newDisabled":Z
    goto :goto_2

    #@81
    .line 792
    .restart local v2    # "id":Ljava/lang/String;
    .restart local v6    # "oldShortcut":Landroid/content/pm/ShortcutInfo;
    .restart local v9    # "wasPinned":Z
    :cond_5
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    #@84
    move-result v10

    #@85
    if-eqz v10, :cond_6

    #@87
    .line 793
    const/4 v9, 0x1

    #@88
    .line 794
    const/4 v10, 0x2

    #@89
    invoke-virtual {v5, v10}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    #@8c
    .line 797
    :cond_6
    if-eqz v3, :cond_7

    #@8e
    if-eqz v9, :cond_3

    #@90
    .line 806
    :cond_7
    invoke-direct {p0, v5}, Lcom/android/server/pm/ShortcutPackage;->addShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    #@93
    .line 808
    if-nez v3, :cond_3

    #@95
    if-eqz v8, :cond_3

    #@97
    .line 810
    invoke-virtual {v8, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@9a
    goto :goto_3

    #@9b
    .line 816
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "newDisabled":Z
    .end local v4    # "newListSize":I
    .end local v5    # "newShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v6    # "oldShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v9    # "wasPinned":Z
    :cond_8
    if-eqz v8, :cond_a

    #@9d
    .line 822
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    #@a0
    move-result v10

    #@a1
    add-int/lit8 v1, v10, -0x1

    #@a3
    :goto_4
    if-ltz v1, :cond_9

    #@a5
    .line 823
    const/4 v0, 0x1

    #@a6
    .line 825
    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@a9
    move-result-object v2

    #@aa
    check-cast v2, Ljava/lang/String;

    #@ac
    .line 827
    .restart local v2    # "id":Ljava/lang/String;
    const/4 v10, 0x0

    #@ad
    const/4 v11, 0x0

    #@ae
    .line 828
    const/4 v12, 0x1

    #@af
    .line 827
    invoke-virtual {p0, v2, v10, v11, v12}, Lcom/android/server/pm/ShortcutPackage;->disableWithId(Ljava/lang/String;Ljava/lang/String;IZ)V

    #@b2
    .line 822
    add-int/lit8 v1, v1, -0x1

    #@b4
    goto :goto_4

    #@b5
    .line 830
    .end local v2    # "id":Ljava/lang/String;
    :cond_9
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()V

    #@b8
    .line 832
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    #@bb
    .line 833
    return v0
.end method

.method private pushOutExcessShortcuts()Z
    .locals 9

    #@0
    .prologue
    .line 841
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    #@2
    iget-object v6, v8, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@4
    .line 842
    .local v6, "service":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {v6}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    #@7
    move-result v4

    #@8
    .line 844
    .local v4, "maxShortcuts":I
    const/4 v1, 0x0

    #@9
    .line 847
    .local v1, "changed":Z
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    #@c
    move-result-object v0

    #@d
    .line 848
    .local v0, "all":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    #@10
    move-result v8

    #@11
    add-int/lit8 v5, v8, -0x1

    #@13
    .local v5, "outer":I
    :goto_0
    if-ltz v5, :cond_3

    #@15
    .line 849
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    check-cast v3, Ljava/util/ArrayList;

    #@1b
    .line 850
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@1e
    move-result v8

    #@1f
    if-gt v8, v4, :cond_1

    #@21
    .line 848
    :cond_0
    add-int/lit8 v5, v5, -0x1

    #@23
    goto :goto_0

    #@24
    .line 854
    :cond_1
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeAndRankComparator:Ljava/util/Comparator;

    #@26
    invoke-static {v3, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@29
    .line 857
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@2c
    move-result v8

    #@2d
    add-int/lit8 v2, v8, -0x1

    #@2f
    .local v2, "inner":I
    :goto_1
    if-lt v2, v4, :cond_0

    #@31
    .line 858
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v7

    #@35
    check-cast v7, Landroid/content/pm/ShortcutInfo;

    #@37
    .line 860
    .local v7, "shortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    #@3a
    move-result v8

    #@3b
    if-eqz v8, :cond_2

    #@3d
    .line 863
    const-string/jumbo v8, "Found manifest shortcuts in excess list."

    #@40
    invoke-virtual {v6, v8}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    #@43
    .line 857
    :goto_2
    add-int/lit8 v2, v2, -0x1

    #@45
    goto :goto_1

    #@46
    .line 866
    :cond_2
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@49
    move-result-object v8

    #@4a
    invoke-virtual {p0, v8}, Lcom/android/server/pm/ShortcutPackage;->deleteDynamicWithId(Ljava/lang/String;)Z

    #@4d
    goto :goto_2

    #@4e
    .line 870
    .end local v2    # "inner":I
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v7    # "shortcut":Landroid/content/pm/ShortcutInfo;
    :cond_3
    return v1
.end method

.method private removeOrphans()V
    .locals 4

    #@0
    .prologue
    .line 257
    const/4 v1, 0x0

    #@1
    .line 259
    .local v1, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@6
    move-result v3

    #@7
    add-int/lit8 v0, v3, -0x1

    #@9
    .end local v1    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@b
    .line 260
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Landroid/content/pm/ShortcutInfo;

    #@13
    .line 262
    .local v2, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isAlive()Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 259
    :goto_1
    add-int/lit8 v0, v0, -0x1

    #@1b
    goto :goto_0

    #@1c
    .line 264
    :cond_0
    if-nez v1, :cond_1

    #@1e
    .line 265
    new-instance v1, Ljava/util/ArrayList;

    #@20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@23
    .line 267
    :cond_1
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    goto :goto_1

    #@2b
    .line 269
    .end local v2    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_2
    if-eqz v1, :cond_3

    #@2d
    .line 270
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@30
    move-result v3

    #@31
    add-int/lit8 v0, v3, -0x1

    #@33
    :goto_2
    if-ltz v0, :cond_3

    #@35
    .line 271
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@38
    move-result-object v3

    #@39
    check-cast v3, Ljava/lang/String;

    #@3b
    invoke-direct {p0, v3}, Lcom/android/server/pm/ShortcutPackage;->deleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    #@3e
    .line 270
    add-int/lit8 v0, v0, -0x1

    #@40
    goto :goto_2

    #@41
    .line 256
    :cond_3
    return-void
.end method

.method private static saveShortcut(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/ShortcutInfo;Z)V
    .locals 9
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "si"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 1263
    if-eqz p2, :cond_1

    #@4
    .line 1264
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    #@7
    move-result v6

    #@8
    if-eqz v6, :cond_0

    #@a
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    #@d
    move-result v5

    #@e
    :cond_0
    if-nez v5, :cond_1

    #@10
    .line 1265
    return-void

    #@11
    .line 1268
    :cond_1
    const-string/jumbo v5, "shortcut"

    #@14
    invoke-interface {p0, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@17
    .line 1269
    const-string/jumbo v5, "id"

    #@1a
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@1d
    move-result-object v6

    #@1e
    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@21
    .line 1271
    const-string/jumbo v5, "activity"

    #@24
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    #@27
    move-result-object v6

    #@28
    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/ComponentName;)V

    #@2b
    .line 1273
    const-string/jumbo v5, "title"

    #@2e
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getTitle()Ljava/lang/CharSequence;

    #@31
    move-result-object v6

    #@32
    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@35
    .line 1274
    const-string/jumbo v5, "titleid"

    #@38
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getTitleResId()I

    #@3b
    move-result v6

    #@3c
    int-to-long v6, v6

    #@3d
    invoke-static {p0, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@40
    .line 1275
    const-string/jumbo v5, "titlename"

    #@43
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getTitleResName()Ljava/lang/String;

    #@46
    move-result-object v6

    #@47
    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@4a
    .line 1276
    const-string/jumbo v5, "text"

    #@4d
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getText()Ljava/lang/CharSequence;

    #@50
    move-result-object v6

    #@51
    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@54
    .line 1277
    const-string/jumbo v5, "textid"

    #@57
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getTextResId()I

    #@5a
    move-result v6

    #@5b
    int-to-long v6, v6

    #@5c
    invoke-static {p0, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@5f
    .line 1278
    const-string/jumbo v5, "textname"

    #@62
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getTextResName()Ljava/lang/String;

    #@65
    move-result-object v6

    #@66
    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@69
    .line 1279
    const-string/jumbo v5, "dmessage"

    #@6c
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getDisabledMessage()Ljava/lang/CharSequence;

    #@6f
    move-result-object v6

    #@70
    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@73
    .line 1280
    const-string/jumbo v5, "dmessageid"

    #@76
    .line 1281
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getDisabledMessageResourceId()I

    #@79
    move-result v6

    #@7a
    int-to-long v6, v6

    #@7b
    .line 1280
    invoke-static {p0, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@7e
    .line 1282
    const-string/jumbo v5, "dmessagename"

    #@81
    .line 1283
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getDisabledMessageResName()Ljava/lang/String;

    #@84
    move-result-object v6

    #@85
    .line 1282
    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@88
    .line 1284
    const-string/jumbo v5, "timestamp"

    #@8b
    .line 1285
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    #@8e
    move-result-wide v6

    #@8f
    .line 1284
    invoke-static {p0, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@92
    .line 1286
    if-eqz p2, :cond_3

    #@94
    .line 1288
    const-string/jumbo v5, "flags"

    #@97
    .line 1289
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    #@9a
    move-result v6

    #@9b
    and-int/lit8 v6, v6, -0xe

    #@9d
    int-to-long v6, v6

    #@9e
    .line 1288
    invoke-static {p0, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@a1
    .line 1304
    :goto_0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    #@a4
    move-result-object v0

    #@a5
    .line 1305
    .local v0, "cat":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    #@a7
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@aa
    move-result v5

    #@ab
    if-lez v5, :cond_2

    #@ad
    .line 1306
    const-string/jumbo v5, "categories"

    #@b0
    invoke-interface {p0, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b3
    .line 1307
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@b6
    move-result v5

    #@b7
    new-array v5, v5, [Ljava/lang/String;

    #@b9
    invoke-interface {v0, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@bc
    move-result-object v5

    #@bd
    check-cast v5, [Ljava/lang/String;

    #@bf
    .line 1308
    const-string/jumbo v6, "categories"

    #@c2
    .line 1307
    invoke-static {v5, v6, p0}, Lcom/android/internal/util/XmlUtils;->writeStringArrayXml([Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    #@c5
    .line 1309
    const-string/jumbo v5, "categories"

    #@c8
    invoke-interface {p0, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@cb
    .line 1312
    :cond_2
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIntentsNoExtras()[Landroid/content/Intent;

    #@ce
    move-result-object v3

    #@cf
    .line 1313
    .local v3, "intentsNoExtras":[Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIntentPersistableExtrases()[Landroid/os/PersistableBundle;

    #@d2
    move-result-object v2

    #@d3
    .line 1314
    .local v2, "intentsExtras":[Landroid/os/PersistableBundle;
    array-length v4, v3

    #@d4
    .line 1315
    .local v4, "numIntents":I
    const/4 v1, 0x0

    #@d5
    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_4

    #@d7
    .line 1316
    const-string/jumbo v5, "intent"

    #@da
    invoke-interface {p0, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@dd
    .line 1317
    const-string/jumbo v5, "intent-base"

    #@e0
    aget-object v6, v3, v1

    #@e2
    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/Intent;)V

    #@e5
    .line 1318
    const-string/jumbo v5, "extras"

    #@e8
    aget-object v6, v2, v1

    #@ea
    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeTagExtra(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    #@ed
    .line 1319
    const-string/jumbo v5, "intent"

    #@f0
    invoke-interface {p0, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f3
    .line 1315
    add-int/lit8 v1, v1, 0x1

    #@f5
    goto :goto_1

    #@f6
    .line 1295
    .end local v0    # "cat":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "intentsExtras":[Landroid/os/PersistableBundle;
    .end local v3    # "intentsNoExtras":[Landroid/content/Intent;
    .end local v4    # "numIntents":I
    :cond_3
    const-string/jumbo v5, "rank"

    #@f9
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    #@fc
    move-result v6

    #@fd
    int-to-long v6, v6

    #@fe
    invoke-static {p0, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@101
    .line 1297
    const-string/jumbo v5, "flags"

    #@104
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    #@107
    move-result v6

    #@108
    int-to-long v6, v6

    #@109
    invoke-static {p0, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@10c
    .line 1298
    const-string/jumbo v5, "icon-res"

    #@10f
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    #@112
    move-result v6

    #@113
    int-to-long v6, v6

    #@114
    invoke-static {p0, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@117
    .line 1299
    const-string/jumbo v5, "icon-resname"

    #@11a
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIconResName()Ljava/lang/String;

    #@11d
    move-result-object v6

    #@11e
    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@121
    .line 1300
    const-string/jumbo v5, "bitmap-path"

    #@124
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    #@127
    move-result-object v6

    #@128
    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@12b
    goto/16 :goto_0

    #@12d
    .line 1322
    .restart local v0    # "cat":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    .restart local v2    # "intentsExtras":[Landroid/os/PersistableBundle;
    .restart local v3    # "intentsNoExtras":[Landroid/content/Intent;
    .restart local v4    # "numIntents":I
    :cond_4
    const-string/jumbo v5, "extras"

    #@130
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    #@133
    move-result-object v6

    #@134
    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeTagExtra(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    #@137
    .line 1324
    const-string/jumbo v5, "shortcut"

    #@13a
    invoke-interface {p0, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@13d
    .line 1262
    return-void
.end method

.method private sortShortcutsToActivities()Landroid/util/ArrayMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 902
    new-instance v0, Landroid/util/ArrayMap;

    #@2
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@5
    .line 903
    .local v0, "activitiesToShortcuts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;>;"
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@7
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@a
    move-result v5

    #@b
    add-int/lit8 v2, v5, -0x1

    #@d
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    #@f
    .line 904
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@11
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@14
    move-result-object v4

    #@15
    check-cast v4, Landroid/content/pm/ShortcutInfo;

    #@17
    .line 905
    .local v4, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_0

    #@1d
    .line 903
    :goto_1
    add-int/lit8 v2, v2, -0x1

    #@1f
    goto :goto_0

    #@20
    .line 909
    :cond_0
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    #@23
    move-result-object v1

    #@24
    .line 911
    .local v1, "activity":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object v3

    #@28
    check-cast v3, Ljava/util/ArrayList;

    #@2a
    .line 912
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    if-nez v3, :cond_1

    #@2c
    .line 913
    new-instance v3, Ljava/util/ArrayList;

    #@2e
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@31
    .line 914
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    .line 916
    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@37
    goto :goto_1

    #@38
    .line 918
    .end local v1    # "activity":Landroid/content/ComponentName;
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v4    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_2
    return-object v0
.end method

.method private verifyRanksSequential(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1589
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v0, 0x0

    #@1
    .line 1591
    .local v0, "failed":Z
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@5
    move-result v3

    #@6
    if-ge v1, v3, :cond_1

    #@8
    .line 1592
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Landroid/content/pm/ShortcutInfo;

    #@e
    .line 1593
    .local v2, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    #@11
    move-result v3

    #@12
    if-eq v3, v1, :cond_0

    #@14
    .line 1594
    const/4 v0, 0x1

    #@15
    .line 1595
    const-string/jumbo v3, "ShortcutService.verify"

    #@18
    new-instance v4, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v5, "Package "

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    const-string/jumbo v5, ": shortcut "

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    .line 1596
    const-string/jumbo v5, " rank="

    #@3e
    .line 1595
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    .line 1596
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    #@45
    move-result v5

    #@46
    .line 1595
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    .line 1596
    const-string/jumbo v5, " but expected to be "

    #@4d
    .line 1595
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    .line 1591
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@5e
    goto :goto_0

    #@5f
    .line 1599
    .end local v2    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_1
    return v0
.end method


# virtual methods
.method synthetic -com_android_server_pm_ShortcutPackage_lambda$3(Lcom/android/server/pm/ShortcutLauncher;)V
    .locals 6
    .param p1, "launcherShortcuts"    # Lcom/android/server/pm/ShortcutLauncher;

    #@0
    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    #@7
    move-result v5

    #@8
    .line 394
    invoke-virtual {p1, v4, v5}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;

    #@b
    move-result-object v2

    #@c
    .line 397
    .local v2, "pinned":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    #@e
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@11
    move-result v4

    #@12
    if-nez v4, :cond_1

    #@14
    .line 398
    :cond_0
    return-void

    #@15
    .line 400
    :cond_1
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@18
    move-result v4

    #@19
    add-int/lit8 v0, v4, -0x1

    #@1b
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    #@1d
    .line 401
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Ljava/lang/String;

    #@23
    .line 402
    .local v1, "id":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@25
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v3

    #@29
    check-cast v3, Landroid/content/pm/ShortcutInfo;

    #@2b
    .line 403
    .local v3, "si":Landroid/content/pm/ShortcutInfo;
    if-nez v3, :cond_2

    #@2d
    .line 400
    :goto_1
    add-int/lit8 v0, v0, -0x1

    #@2f
    goto :goto_0

    #@30
    .line 410
    :cond_2
    const/4 v4, 0x2

    #@31
    invoke-virtual {v3, v4}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    #@34
    goto :goto_1

    #@35
    .line 0
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_3
    return-void
.end method

.method public addOrUpdateDynamicShortcut(Landroid/content/pm/ShortcutInfo;)V
    .locals 4
    .param p1, "newShortcut"    # Landroid/content/pm/ShortcutInfo;

    #@0
    .prologue
    .line 226
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    #@3
    move-result v2

    #@4
    .line 227
    const-string/jumbo v3, "add/setDynamicShortcuts() cannot publish disabled shortcuts"

    #@7
    .line 226
    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    #@a
    .line 229
    const/4 v2, 0x1

    #@b
    invoke-virtual {p1, v2}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    #@e
    .line 231
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@10
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/content/pm/ShortcutInfo;

    #@1a
    .line 235
    .local v0, "oldShortcut":Landroid/content/pm/ShortcutInfo;
    if-nez v0, :cond_1

    #@1c
    .line 236
    const/4 v1, 0x0

    #@1d
    .line 246
    :goto_0
    if-eqz v1, :cond_0

    #@1f
    .line 247
    const/4 v2, 0x2

    #@20
    invoke-virtual {p1, v2}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    #@23
    .line 250
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->addShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    #@26
    .line 224
    return-void

    #@27
    .line 240
    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/pm/ShortcutInfo;->ensureUpdatableWith(Landroid/content/pm/ShortcutInfo;)V

    #@2a
    .line 242
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    #@2d
    move-result v1

    #@2e
    .local v1, "wasPinned":Z
    goto :goto_0
.end method

.method public adjustRanks()V
    .locals 14

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    .line 1078
    iget-object v12, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    #@3
    iget-object v8, v12, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@5
    .line 1079
    .local v8, "s":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {v8}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    #@8
    move-result-wide v4

    #@9
    .line 1082
    .local v4, "now":J
    iget-object v12, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    #@e
    move-result v12

    #@f
    add-int/lit8 v1, v12, -0x1

    #@11
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@13
    .line 1083
    iget-object v12, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@15
    invoke-virtual {v12, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@18
    move-result-object v9

    #@19
    check-cast v9, Landroid/content/pm/ShortcutInfo;

    #@1b
    .line 1084
    .local v9, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    #@1e
    move-result v12

    #@1f
    if-eqz v12, :cond_0

    #@21
    .line 1085
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->getRank()I

    #@24
    move-result v12

    #@25
    if-eqz v12, :cond_0

    #@27
    .line 1086
    invoke-virtual {v9, v4, v5}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    #@2a
    .line 1087
    invoke-virtual {v9, v13}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    #@2d
    .line 1082
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@2f
    goto :goto_0

    #@30
    .line 1097
    .end local v9    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    #@33
    move-result-object v0

    #@34
    .line 1098
    .local v0, "all":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    #@37
    move-result v12

    #@38
    add-int/lit8 v3, v12, -0x1

    #@3a
    .local v3, "outer":I
    :goto_1
    if-ltz v3, :cond_6

    #@3c
    .line 1099
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@3f
    move-result-object v2

    #@40
    check-cast v2, Ljava/util/ArrayList;

    #@42
    .line 1102
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v12, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutRankComparator:Ljava/util/Comparator;

    #@44
    invoke-static {v2, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@47
    .line 1104
    const/4 v6, 0x0

    #@48
    .line 1106
    .local v6, "rank":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@4b
    move-result v10

    #@4c
    .line 1107
    .local v10, "size":I
    const/4 v1, 0x0

    #@4d
    move v7, v6

    #@4e
    .end local v6    # "rank":I
    .local v7, "rank":I
    :goto_2
    if-ge v1, v10, :cond_5

    #@50
    .line 1108
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@53
    move-result-object v9

    #@54
    check-cast v9, Landroid/content/pm/ShortcutInfo;

    #@56
    .line 1109
    .restart local v9    # "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    #@59
    move-result v12

    #@5a
    if-eqz v12, :cond_3

    #@5c
    move v6, v7

    #@5d
    .line 1107
    .end local v7    # "rank":I
    .restart local v6    # "rank":I
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@5f
    move v7, v6

    #@60
    .end local v6    # "rank":I
    .restart local v7    # "rank":I
    goto :goto_2

    #@61
    .line 1114
    :cond_3
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    #@64
    move-result v12

    #@65
    if-nez v12, :cond_4

    #@67
    .line 1115
    const-string/jumbo v12, "Non-dynamic shortcut found."

    #@6a
    invoke-virtual {v8, v12}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    #@6d
    move v6, v7

    #@6e
    .line 1116
    .end local v7    # "rank":I
    .restart local v6    # "rank":I
    goto :goto_3

    #@6f
    .line 1118
    .end local v6    # "rank":I
    .restart local v7    # "rank":I
    :cond_4
    add-int/lit8 v6, v7, 0x1

    #@71
    .end local v7    # "rank":I
    .restart local v6    # "rank":I
    move v11, v7

    #@72
    .line 1119
    .local v11, "thisRank":I
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->getRank()I

    #@75
    move-result v12

    #@76
    if-eq v12, v7, :cond_2

    #@78
    .line 1120
    invoke-virtual {v9, v4, v5}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    #@7b
    .line 1121
    invoke-virtual {v9, v7}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    #@7e
    goto :goto_3

    #@7f
    .line 1098
    .end local v6    # "rank":I
    .end local v9    # "si":Landroid/content/pm/ShortcutInfo;
    .end local v11    # "thisRank":I
    .restart local v7    # "rank":I
    :cond_5
    add-int/lit8 v3, v3, -0x1

    #@81
    goto :goto_1

    #@82
    .line 1077
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v7    # "rank":I
    .end local v10    # "size":I
    :cond_6
    return-void
.end method

.method public clearAllImplicitRanks()V
    .locals 3

    #@0
    .prologue
    .line 1039
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v0, v2, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 1040
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/content/pm/ShortcutInfo;

    #@12
    .line 1041
    .local v1, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->clearImplicitRankAndRankChangedFlag()V

    #@15
    .line 1039
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 1038
    .end local v1    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_0
    return-void
.end method

.method public deleteAllDynamicShortcuts()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 280
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    #@3
    iget-object v5, v5, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@5
    invoke-virtual {v5}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    #@8
    move-result-wide v2

    #@9
    .line 282
    .local v2, "now":J
    const/4 v0, 0x0

    #@a
    .line 283
    .local v0, "changed":Z
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@f
    move-result v5

    #@10
    add-int/lit8 v1, v5, -0x1

    #@12
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@14
    .line 284
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@16
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@19
    move-result-object v4

    #@1a
    check-cast v4, Landroid/content/pm/ShortcutInfo;

    #@1c
    .line 285
    .local v4, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    #@1f
    move-result v5

    #@20
    if-eqz v5, :cond_0

    #@22
    .line 286
    const/4 v0, 0x1

    #@23
    .line 288
    invoke-virtual {v4, v2, v3}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    #@26
    .line 289
    const/4 v5, 0x1

    #@27
    invoke-virtual {v4, v5}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    #@2a
    .line 290
    invoke-virtual {v4, v6}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    #@2d
    .line 283
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@2f
    goto :goto_0

    #@30
    .line 293
    .end local v4    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_1
    if-eqz v0, :cond_2

    #@32
    .line 294
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()V

    #@35
    .line 279
    :cond_2
    return-void
.end method

.method public deleteDynamicWithId(Ljava/lang/String;)Z
    .locals 2
    .param p1, "shortcutId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 306
    invoke-direct {p0, p1, v1, v1}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZ)Landroid/content/pm/ShortcutInfo;

    #@4
    move-result-object v0

    #@5
    .line 308
    .local v0, "removed":Landroid/content/pm/ShortcutInfo;
    if-nez v0, :cond_0

    #@7
    const/4 v1, 0x1

    #@8
    :cond_0
    return v1
.end method

.method public disableWithId(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "shortcutId"    # Ljava/lang/String;
    .param p2, "disabledMessage"    # Ljava/lang/String;
    .param p3, "disabledMessageResId"    # I
    .param p4, "overrideImmutable"    # Z

    #@0
    .prologue
    .line 330
    const/4 v1, 0x1

    #@1
    invoke-direct {p0, p1, v1, p4}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZ)Landroid/content/pm/ShortcutInfo;

    #@4
    move-result-object v0

    #@5
    .line 333
    .local v0, "disabled":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_0

    #@7
    .line 334
    if-eqz p2, :cond_1

    #@9
    .line 335
    invoke-virtual {v0, p2}, Landroid/content/pm/ShortcutInfo;->setDisabledMessage(Ljava/lang/String;)V

    #@c
    .line 329
    :cond_0
    :goto_0
    return-void

    #@d
    .line 336
    :cond_1
    if-eqz p3, :cond_0

    #@f
    .line 337
    invoke-virtual {v0, p3}, Landroid/content/pm/ShortcutInfo;->setDisabledMessageResId(I)V

    #@12
    .line 339
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    #@14
    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@16
    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutService;->fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V

    #@19
    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1139
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3
    .line 1141
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    .line 1142
    const-string/jumbo v8, "Package: "

    #@9
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c
    .line 1143
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@f
    move-result-object v8

    #@10
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13
    .line 1144
    const-string/jumbo v8, "  UID: "

    #@16
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19
    .line 1145
    iget v8, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    #@1b
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    #@1e
    .line 1146
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@21
    .line 1148
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@24
    .line 1149
    const-string/jumbo v8, "  "

    #@27
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2a
    .line 1150
    const-string/jumbo v8, "Calls: "

    #@2d
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@30
    .line 1151
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount()I

    #@33
    move-result v8

    #@34
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    #@37
    .line 1152
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3a
    .line 1155
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d
    .line 1156
    const-string/jumbo v8, "  "

    #@40
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@43
    .line 1157
    const-string/jumbo v8, "Last known FG: "

    #@46
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@49
    .line 1158
    iget-wide v8, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    #@4b
    invoke-virtual {p1, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    #@4e
    .line 1159
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@51
    .line 1162
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54
    .line 1163
    const-string/jumbo v8, "  "

    #@57
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a
    .line 1164
    const-string/jumbo v8, "Last reset: ["

    #@5d
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60
    .line 1165
    iget-wide v8, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    #@62
    invoke-virtual {p1, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    #@65
    .line 1166
    const-string/jumbo v8, "] "

    #@68
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6b
    .line 1167
    iget-wide v8, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    #@6d
    invoke-static {v8, v9}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    #@70
    move-result-object v8

    #@71
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@74
    .line 1168
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@77
    .line 1170
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    #@7a
    move-result-object v8

    #@7b
    new-instance v9, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v9

    #@84
    const-string/jumbo v10, "  "

    #@87
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v9

    #@8b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v9

    #@8f
    invoke-virtual {v8, p1, v9}, Lcom/android/server/pm/ShortcutPackageInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@92
    .line 1171
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@95
    .line 1173
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@98
    .line 1174
    const-string/jumbo v8, "  Shortcuts:"

    #@9b
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9e
    .line 1175
    const-wide/16 v6, 0x0

    #@a0
    .line 1176
    .local v6, "totalBitmapSize":J
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@a2
    .line 1177
    .local v1, "shortcuts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    #@a5
    move-result v5

    #@a6
    .line 1178
    .local v5, "size":I
    const/4 v0, 0x0

    #@a7
    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    #@a9
    .line 1179
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@ac
    move-result-object v4

    #@ad
    check-cast v4, Landroid/content/pm/ShortcutInfo;

    #@af
    .line 1180
    .local v4, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b2
    .line 1181
    const-string/jumbo v8, "    "

    #@b5
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b8
    .line 1182
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->toInsecureString()Ljava/lang/String;

    #@bb
    move-result-object v8

    #@bc
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bf
    .line 1183
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    #@c2
    move-result-object v8

    #@c3
    if-eqz v8, :cond_0

    #@c5
    .line 1184
    new-instance v8, Ljava/io/File;

    #@c7
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    #@ca
    move-result-object v9

    #@cb
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@ce
    invoke-virtual {v8}, Ljava/io/File;->length()J

    #@d1
    move-result-wide v2

    #@d2
    .line 1185
    .local v2, "len":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d5
    .line 1186
    const-string/jumbo v8, "      "

    #@d8
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@db
    .line 1187
    const-string/jumbo v8, "bitmap size="

    #@de
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e1
    .line 1188
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    #@e4
    .line 1190
    add-long/2addr v6, v2

    #@e5
    .line 1178
    .end local v2    # "len":J
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@e7
    goto :goto_0

    #@e8
    .line 1193
    .end local v4    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@eb
    .line 1194
    const-string/jumbo v8, "  "

    #@ee
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f1
    .line 1195
    const-string/jumbo v8, "Total bitmap size: "

    #@f4
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f7
    .line 1196
    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    #@fa
    .line 1197
    const-string/jumbo v8, " ("

    #@fd
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@100
    .line 1198
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    #@102
    iget-object v8, v8, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@104
    iget-object v8, v8, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    #@106
    invoke-static {v8, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    #@109
    move-result-object v8

    #@10a
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10d
    .line 1199
    const-string/jumbo v8, ")"

    #@110
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@113
    .line 1138
    return-void
.end method

.method public dumpCheckin(Z)Lorg/json/JSONObject;
    .locals 14
    .param p1, "clear"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 1204
    invoke-super {p0, p1}, Lcom/android/server/pm/ShortcutPackageItem;->dumpCheckin(Z)Lorg/json/JSONObject;

    #@3
    move-result-object v5

    #@4
    .line 1206
    .local v5, "result":Lorg/json/JSONObject;
    const/4 v2, 0x0

    #@5
    .line 1207
    .local v2, "numDynamic":I
    const/4 v4, 0x0

    #@6
    .line 1208
    .local v4, "numPinned":I
    const/4 v3, 0x0

    #@7
    .line 1209
    .local v3, "numManifest":I
    const/4 v1, 0x0

    #@8
    .line 1210
    .local v1, "numBitmaps":I
    const-wide/16 v10, 0x0

    #@a
    .line 1212
    .local v10, "totalBitmapSize":J
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@c
    .line 1213
    .local v6, "shortcuts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@f
    move-result v8

    #@10
    .line 1214
    .local v8, "size":I
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_4

    #@13
    .line 1215
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@16
    move-result-object v7

    #@17
    check-cast v7, Landroid/content/pm/ShortcutInfo;

    #@19
    .line 1217
    .local v7, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    #@1c
    move-result v9

    #@1d
    if-eqz v9, :cond_0

    #@1f
    add-int/lit8 v2, v2, 0x1

    #@21
    .line 1218
    :cond_0
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    #@24
    move-result v9

    #@25
    if-eqz v9, :cond_1

    #@27
    add-int/lit8 v3, v3, 0x1

    #@29
    .line 1219
    :cond_1
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    #@2c
    move-result v9

    #@2d
    if-eqz v9, :cond_2

    #@2f
    add-int/lit8 v4, v4, 0x1

    #@31
    .line 1221
    :cond_2
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    #@34
    move-result-object v9

    #@35
    if-eqz v9, :cond_3

    #@37
    .line 1222
    add-int/lit8 v1, v1, 0x1

    #@39
    .line 1223
    new-instance v9, Ljava/io/File;

    #@3b
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    #@3e
    move-result-object v12

    #@3f
    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@42
    invoke-virtual {v9}, Ljava/io/File;->length()J

    #@45
    move-result-wide v12

    #@46
    add-long/2addr v10, v12

    #@47
    .line 1214
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 1227
    .end local v7    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_4
    const-string/jumbo v9, "dynamic"

    #@4d
    invoke-virtual {v5, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@50
    .line 1228
    const-string/jumbo v9, "manifest"

    #@53
    invoke-virtual {v5, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@56
    .line 1229
    const-string/jumbo v9, "pinned"

    #@59
    invoke-virtual {v5, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@5c
    .line 1230
    const-string/jumbo v9, "bitmaps"

    #@5f
    invoke-virtual {v5, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@62
    .line 1231
    const-string/jumbo v9, "bitmapBytes"

    #@65
    invoke-virtual {v5, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    #@68
    .line 1235
    return-object v5
.end method

.method public enableWithId(Ljava/lang/String;)V
    .locals 2
    .param p1, "shortcutId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 372
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/pm/ShortcutInfo;

    #@8
    .line 373
    .local v0, "shortcut":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_0

    #@a
    .line 374
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;)V

    #@d
    .line 375
    const/16 v1, 0x40

    #@f
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    #@12
    .line 371
    :cond_0
    return-void
.end method

.method public enforceShortcutCountsBeforeOperation(Ljava/util/List;I)V
    .locals 12
    .param p2, "operation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "newList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v11, 0x2

    #@1
    const/4 v10, 0x1

    #@2
    .line 947
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    #@4
    iget-object v6, v8, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@6
    .line 952
    .local v6, "service":Lcom/android/server/pm/ShortcutService;
    new-instance v0, Landroid/util/ArrayMap;

    #@8
    const/4 v8, 0x4

    #@9
    invoke-direct {v0, v8}, Landroid/util/ArrayMap;-><init>(I)V

    #@c
    .line 953
    .local v0, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@e
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    #@11
    move-result v8

    #@12
    add-int/lit8 v1, v8, -0x1

    #@14
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@16
    .line 954
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@18
    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1b
    move-result-object v7

    #@1c
    check-cast v7, Landroid/content/pm/ShortcutInfo;

    #@1e
    .line 956
    .local v7, "shortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    #@21
    move-result v8

    #@22
    if-eqz v8, :cond_1

    #@24
    .line 957
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    #@27
    move-result-object v8

    #@28
    invoke-direct {p0, v0, v8, v10}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    #@2b
    .line 953
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    #@2d
    goto :goto_0

    #@2e
    .line 958
    :cond_1
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    #@31
    move-result v8

    #@32
    if-eqz v8, :cond_0

    #@34
    if-eqz p2, :cond_0

    #@36
    .line 959
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    #@39
    move-result-object v8

    #@3a
    invoke-direct {p0, v0, v8, v10}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    #@3d
    goto :goto_1

    #@3e
    .line 963
    .end local v7    # "shortcut":Landroid/content/pm/ShortcutInfo;
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@41
    move-result v8

    #@42
    add-int/lit8 v1, v8, -0x1

    #@44
    :goto_2
    if-ltz v1, :cond_8

    #@46
    .line 964
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@49
    move-result-object v3

    #@4a
    check-cast v3, Landroid/content/pm/ShortcutInfo;

    #@4c
    .line 965
    .local v3, "newShortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    #@4f
    move-result-object v2

    #@50
    .line 966
    .local v2, "newActivity":Landroid/content/ComponentName;
    if-nez v2, :cond_4

    #@52
    .line 967
    if-eq p2, v11, :cond_3

    #@54
    .line 968
    const-string/jumbo v8, "Activity must not be null at this point"

    #@57
    invoke-virtual {v6, v8}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    #@5a
    .line 963
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, -0x1

    #@5c
    goto :goto_2

    #@5d
    .line 974
    :cond_4
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@5f
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@62
    move-result-object v9

    #@63
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@66
    move-result-object v5

    #@67
    check-cast v5, Landroid/content/pm/ShortcutInfo;

    #@69
    .line 975
    .local v5, "original":Landroid/content/pm/ShortcutInfo;
    if-nez v5, :cond_5

    #@6b
    .line 976
    if-eq p2, v11, :cond_3

    #@6d
    .line 981
    invoke-direct {p0, v0, v2, v10}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    #@70
    goto :goto_3

    #@71
    .line 984
    :cond_5
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    #@74
    move-result v8

    #@75
    if-eqz v8, :cond_6

    #@77
    if-eq p2, v11, :cond_3

    #@79
    .line 992
    :cond_6
    if-eqz p2, :cond_7

    #@7b
    .line 993
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    #@7e
    move-result-object v4

    #@7f
    .line 994
    .local v4, "oldActivity":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    #@82
    move-result v8

    #@83
    if-nez v8, :cond_7

    #@85
    .line 995
    const/4 v8, -0x1

    #@86
    invoke-direct {p0, v0, v4, v8}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    #@89
    .line 998
    .end local v4    # "oldActivity":Landroid/content/ComponentName;
    :cond_7
    invoke-direct {p0, v0, v2, v10}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    #@8c
    goto :goto_3

    #@8d
    .line 1002
    .end local v2    # "newActivity":Landroid/content/ComponentName;
    .end local v3    # "newShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v5    # "original":Landroid/content/pm/ShortcutInfo;
    :cond_8
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    #@90
    move-result v8

    #@91
    add-int/lit8 v1, v8, -0x1

    #@93
    :goto_4
    if-ltz v1, :cond_9

    #@95
    .line 1003
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@98
    move-result-object v8

    #@99
    check-cast v8, Ljava/lang/Integer;

    #@9b
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@9e
    move-result v8

    #@9f
    invoke-virtual {v6, v8}, Lcom/android/server/pm/ShortcutService;->enforceMaxActivityShortcuts(I)V

    #@a2
    .line 1002
    add-int/lit8 v1, v1, -0x1

    #@a4
    goto :goto_4

    #@a5
    .line 946
    :cond_9
    return-void
.end method

.method public ensureImmutableShortcutsNotIncluded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 193
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v1

    #@4
    add-int/lit8 v0, v1, -0x1

    #@6
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@8
    .line 194
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Landroid/content/pm/ShortcutInfo;

    #@e
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Ljava/lang/String;)V

    #@15
    .line 193
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 192
    :cond_0
    return-void
.end method

.method public ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 187
    .local p1, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v1

    #@4
    add-int/lit8 v0, v1, -0x1

    #@6
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@8
    .line 188
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Ljava/lang/String;

    #@e
    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Ljava/lang/String;)V

    #@11
    .line 187
    add-int/lit8 v0, v0, -0x1

    #@13
    goto :goto_0

    #@14
    .line 186
    :cond_0
    return-void
.end method

.method public findAll(Ljava/util/List;Ljava/util/function/Predicate;I)V
    .locals 6
    .param p3, "cloneFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/function/Predicate",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 503
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local p2, "query":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move v3, p3

    #@6
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;I)V

    #@9
    .line 502
    return-void
.end method

.method public findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;I)V
    .locals 9
    .param p3, "cloneFlag"    # I
    .param p4, "callingLauncher"    # Ljava/lang/String;
    .param p5, "launcherUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/function/Predicate",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 516
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local p2, "query":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    #@3
    move-result-object v6

    #@4
    invoke-virtual {v6}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    #@7
    move-result v6

    #@8
    if-eqz v6, :cond_0

    #@a
    .line 518
    return-void

    #@b
    .line 521
    :cond_0
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    #@d
    iget-object v4, v6, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@f
    .line 524
    .local v4, "s":Lcom/android/server/pm/ShortcutService;
    if-nez p4, :cond_2

    #@11
    const/4 v3, 0x0

    #@12
    .line 528
    :goto_0
    const/4 v1, 0x0

    #@13
    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@15
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@18
    move-result v6

    #@19
    if-ge v1, v6, :cond_8

    #@1b
    .line 529
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@1d
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@20
    move-result-object v5

    #@21
    check-cast v5, Landroid/content/pm/ShortcutInfo;

    #@23
    .line 534
    .local v5, "si":Landroid/content/pm/ShortcutInfo;
    if-eqz p4, :cond_3

    #@25
    .line 535
    if-eqz v3, :cond_4

    #@27
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@2e
    move-result v2

    #@2f
    .line 537
    :goto_2
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    #@32
    move-result v6

    #@33
    if-eqz v6, :cond_5

    #@35
    .line 538
    if-nez v2, :cond_5

    #@37
    .line 528
    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@39
    goto :goto_1

    #@3a
    .line 525
    .end local v1    # "i":I
    .end local v5    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    #@3d
    move-result v6

    #@3e
    invoke-virtual {v4, p4, v6, p5}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    #@41
    move-result-object v6

    #@42
    .line 526
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@45
    move-result-object v7

    #@46
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    #@49
    move-result v8

    #@4a
    .line 525
    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;

    #@4d
    move-result-object v3

    #@4e
    .local v3, "pinnedByCallerSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_0

    #@4f
    .line 534
    .end local v3    # "pinnedByCallerSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    .restart local v5    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_3
    const/4 v2, 0x1

    #@50
    .local v2, "isPinnedByCaller":Z
    goto :goto_2

    #@51
    .line 535
    .end local v2    # "isPinnedByCaller":Z
    :cond_4
    const/4 v2, 0x0

    #@52
    .restart local v2    # "isPinnedByCaller":Z
    goto :goto_2

    #@53
    .line 542
    .end local v2    # "isPinnedByCaller":Z
    :cond_5
    invoke-virtual {v5, p3}, Landroid/content/pm/ShortcutInfo;->clone(I)Landroid/content/pm/ShortcutInfo;

    #@56
    move-result-object v0

    #@57
    .line 546
    .local v0, "clone":Landroid/content/pm/ShortcutInfo;
    if-nez v2, :cond_6

    #@59
    .line 547
    const/4 v6, 0x2

    #@5a
    invoke-virtual {v0, v6}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    #@5d
    .line 549
    :cond_6
    if-eqz p2, :cond_7

    #@5f
    invoke-interface {p2, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    #@62
    move-result v6

    #@63
    if-eqz v6, :cond_1

    #@65
    .line 550
    :cond_7
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@68
    goto :goto_3

    #@69
    .line 515
    .end local v0    # "clone":Landroid/content/pm/ShortcutInfo;
    .end local v5    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_8
    return-void
.end method

.method public findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/pm/ShortcutInfo;

    #@8
    return-object v0
.end method

.method getAllShortcutsForTest()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1508
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@b
    return-object v0
.end method

.method public getApiCallCount()I
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 425
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    #@3
    iget-object v4, v5, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@5
    .line 431
    .local v4, "s":Lcom/android/server/pm/ShortcutService;
    iget v5, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    #@7
    invoke-virtual {v4, v5}, Lcom/android/server/pm/ShortcutService;->isUidForegroundLocked(I)Z

    #@a
    move-result v5

    #@b
    if-nez v5, :cond_0

    #@d
    .line 432
    iget-wide v6, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    #@f
    .line 433
    iget v5, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    #@11
    invoke-virtual {v4, v5}, Lcom/android/server/pm/ShortcutService;->getUidLastForegroundElapsedTimeLocked(I)J

    #@14
    move-result-wide v8

    #@15
    .line 432
    cmp-long v5, v6, v8

    #@17
    if-gez v5, :cond_1

    #@19
    .line 434
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    #@1c
    move-result-wide v6

    #@1d
    iput-wide v6, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    #@1f
    .line 435
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->resetRateLimiting()V

    #@22
    .line 442
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutService;->getLastResetTimeLocked()J

    #@25
    move-result-wide v0

    #@26
    .line 444
    .local v0, "last":J
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    #@29
    move-result-wide v2

    #@2a
    .line 445
    .local v2, "now":J
    invoke-static {v2, v3}, Lcom/android/server/pm/ShortcutService;->isClockValid(J)Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_2

    #@30
    iget-wide v6, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    #@32
    cmp-long v5, v6, v2

    #@34
    if-lez v5, :cond_2

    #@36
    .line 446
    const-string/jumbo v5, "ShortcutService"

    #@39
    const-string/jumbo v6, "Clock rewound"

    #@3c
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 448
    iput-wide v2, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    #@41
    .line 449
    iput v10, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    #@43
    .line 450
    iget v5, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    #@45
    return v5

    #@46
    .line 454
    :cond_2
    iget-wide v6, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    #@48
    cmp-long v5, v6, v0

    #@4a
    if-gez v5, :cond_3

    #@4c
    .line 459
    iput v10, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    #@4e
    .line 460
    iput-wide v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    #@50
    .line 462
    :cond_3
    iget v5, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    #@52
    return v5
.end method

.method public getOwnerUserId()I
    .locals 1

    #@0
    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getPackageResources()Landroid/content/res/Resources;
    .locals 3

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    #@2
    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@4
    .line 150
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    #@b
    move-result v2

    #@c
    .line 149
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectGetResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public getPackageUid()I
    .locals 1

    #@0
    .prologue
    .line 144
    iget v0, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    #@2
    return v0
.end method

.method public getUsedBitmapFiles()Landroid/util/ArraySet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 563
    new-instance v2, Landroid/util/ArraySet;

    #@2
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@7
    move-result v3

    #@8
    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    #@b
    .line 565
    .local v2, "usedFiles":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@10
    move-result v3

    #@11
    add-int/lit8 v0, v3, -0x1

    #@13
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@15
    .line 566
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@17
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid/content/pm/ShortcutInfo;

    #@1d
    .line 567
    .local v1, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    if-eqz v3, :cond_0

    #@23
    .line 568
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-static {v3}, Lcom/android/server/pm/ShortcutPackage;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@2e
    .line 565
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@30
    goto :goto_0

    #@31
    .line 571
    .end local v1    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_1
    return-object v2
.end method

.method public hasNonManifestShortcuts()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1129
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@6
    move-result v2

    #@7
    add-int/lit8 v0, v2, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@b
    .line 1130
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroid/content/pm/ShortcutInfo;

    #@13
    .line 1131
    .local v1, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_0

    #@19
    .line 1132
    const/4 v2, 0x1

    #@1a
    return v2

    #@1b
    .line 1129
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1135
    .end local v1    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_1
    return v3
.end method

.method protected onRestoreBlocked()V
    .locals 1

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    #@5
    .line 154
    return-void
.end method

.method protected onRestored()V
    .locals 0

    #@0
    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    #@3
    .line 160
    return-void
.end method

.method public refreshPinnedFlags()V
    .locals 3

    #@0
    .prologue
    .line 387
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 388
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/content/pm/ShortcutInfo;

    #@12
    const/4 v2, 0x2

    #@13
    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    #@16
    .line 387
    add-int/lit8 v0, v0, -0x1

    #@18
    goto :goto_0

    #@19
    .line 392
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    #@1b
    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@1d
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    #@20
    move-result v2

    #@21
    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@24
    move-result-object v1

    #@25
    .line 393
    new-instance v2, Lcom/android/server/pm/ShortcutPackage$-void_refreshPinnedFlags__LambdaImpl0;

    #@27
    invoke-direct {v2, p0}, Lcom/android/server/pm/ShortcutPackage$-void_refreshPinnedFlags__LambdaImpl0;-><init>(Lcom/android/server/pm/ShortcutPackage;)V

    #@2a
    .line 392
    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    #@2d
    .line 415
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()V

    #@30
    .line 385
    return-void
.end method

.method public rescanPackageIfNeeded(ZZ)Z
    .locals 18
    .param p1, "isNewApp"    # Z
    .param p2, "forceRescan"    # Z

    #@0
    .prologue
    .line 627
    move-object/from16 v0, p0

    #@2
    iget-object v11, v0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    #@4
    iget-object v9, v11, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@6
    .line 628
    .local v9, "s":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {v9}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    #@9
    move-result-wide v12

    #@a
    .line 632
    .local v12, "start":J
    :try_start_0
    move-object/from16 v0, p0

    #@c
    iget-object v11, v0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    #@e
    iget-object v11, v11, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@10
    .line 633
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@13
    move-result-object v14

    #@14
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    #@17
    move-result v15

    #@18
    .line 632
    invoke-virtual {v11, v14, v15}, Lcom/android/server/pm/ShortcutService;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v7

    #@1c
    .line 634
    .local v7, "pi":Landroid/content/pm/PackageInfo;
    if-nez v7, :cond_0

    #@1e
    .line 635
    const/4 v11, 0x0

    #@1f
    .line 656
    const/16 v14, 0xe

    #@21
    invoke-virtual {v9, v14, v12, v13}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@24
    .line 635
    return v11

    #@25
    .line 638
    :cond_0
    if-nez p1, :cond_1

    #@27
    if-eqz p2, :cond_2

    #@29
    .line 656
    :cond_1
    const/16 v11, 0xe

    #@2b
    invoke-virtual {v9, v11, v12, v13}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@2e
    .line 660
    const/4 v6, 0x0

    #@2f
    .line 662
    .local v6, "newManifestShortcutList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :try_start_1
    move-object/from16 v0, p0

    #@31
    iget-object v11, v0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    #@33
    iget-object v11, v11, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@35
    .line 663
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@38
    move-result-object v14

    #@39
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    #@3c
    move-result v15

    #@3d
    .line 662
    invoke-static {v11, v14, v15}, Lcom/android/server/pm/ShortcutParser;->parseShortcuts(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    #@40
    move-result-object v6

    #@41
    .line 667
    .end local v6    # "newManifestShortcutList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :goto_0
    if-nez v6, :cond_3

    #@43
    const/4 v5, 0x0

    #@44
    .line 673
    .local v5, "manifestShortcutSize":I
    :goto_1
    if-eqz p1, :cond_4

    #@46
    if-nez v5, :cond_4

    #@48
    .line 678
    const/4 v11, 0x0

    #@49
    return v11

    #@4a
    .line 649
    .end local v5    # "manifestShortcutSize":I
    :cond_2
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    #@4d
    move-result-object v11

    #@4e
    invoke-virtual {v11}, Lcom/android/server/pm/ShortcutPackageInfo;->getVersionCode()I

    #@51
    move-result v11

    #@52
    iget v14, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    #@54
    if-ne v11, v14, :cond_1

    #@56
    .line 650
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    #@59
    move-result-object v11

    #@5a
    invoke-virtual {v11}, Lcom/android/server/pm/ShortcutPackageInfo;->getLastUpdateTime()J

    #@5d
    move-result-wide v14

    #@5e
    iget-wide v0, v7, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    #@60
    move-wide/from16 v16, v0

    #@62
    cmp-long v11, v14, v16

    #@64
    if-nez v11, :cond_1

    #@66
    .line 651
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->areAllActivitiesStillEnabled()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@69
    move-result v11

    #@6a
    .line 649
    if-eqz v11, :cond_1

    #@6c
    .line 652
    const/4 v11, 0x0

    #@6d
    .line 656
    const/16 v14, 0xe

    #@6f
    invoke-virtual {v9, v14, v12, v13}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@72
    .line 652
    return v11

    #@73
    .line 655
    .end local v7    # "pi":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v11

    #@74
    .line 656
    const/16 v14, 0xe

    #@76
    invoke-virtual {v9, v14, v12, v13}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@79
    .line 655
    throw v11

    #@7a
    .line 664
    .restart local v6    # "newManifestShortcutList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v7    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    #@7b
    .line 665
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "ShortcutService"

    #@7e
    const-string/jumbo v14, "Failed to load shortcuts from AndroidManifest.xml."

    #@81
    invoke-static {v11, v14, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@84
    goto :goto_0

    #@85
    .line 668
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "newManifestShortcutList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@88
    move-result v5

    #@89
    .restart local v5    # "manifestShortcutSize":I
    goto :goto_1

    #@8a
    .line 686
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    #@8d
    move-result-object v11

    #@8e
    invoke-virtual {v11, v7}, Lcom/android/server/pm/ShortcutPackageInfo;->updateVersionInfo(Landroid/content/pm/PackageInfo;)V

    #@91
    .line 688
    const/4 v2, 0x0

    #@92
    .line 692
    .local v2, "changed":Z
    if-nez p1, :cond_8

    #@94
    .line 693
    const/4 v8, 0x0

    #@95
    .line 695
    .local v8, "publisherRes":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    #@97
    iget-object v11, v0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@99
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    #@9c
    move-result v11

    #@9d
    add-int/lit8 v4, v11, -0x1

    #@9f
    .end local v8    # "publisherRes":Landroid/content/res/Resources;
    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_8

    #@a1
    .line 696
    move-object/from16 v0, p0

    #@a3
    iget-object v11, v0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@a5
    invoke-virtual {v11, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@a8
    move-result-object v10

    #@a9
    check-cast v10, Landroid/content/pm/ShortcutInfo;

    #@ab
    .line 698
    .local v10, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v10}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    #@ae
    move-result v11

    #@af
    if-eqz v11, :cond_7

    #@b1
    .line 699
    invoke-virtual {v10}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    #@b4
    move-result-object v11

    #@b5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    #@b8
    move-result v14

    #@b9
    invoke-virtual {v9, v11, v14}, Lcom/android/server/pm/ShortcutService;->injectIsMainActivity(Landroid/content/ComponentName;I)Z

    #@bc
    move-result v11

    #@bd
    if-nez v11, :cond_6

    #@bf
    .line 700
    const-string/jumbo v11, "ShortcutService"

    #@c2
    .line 701
    const-string/jumbo v14, "%s is no longer main activity. Disabling shorcut %s."

    #@c5
    .line 700
    const/4 v15, 0x2

    #@c6
    new-array v15, v15, [Ljava/lang/Object;

    #@c8
    .line 702
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@cb
    move-result-object v16

    #@cc
    const/16 v17, 0x0

    #@ce
    aput-object v16, v15, v17

    #@d0
    invoke-virtual {v10}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@d3
    move-result-object v16

    #@d4
    const/16 v17, 0x1

    #@d6
    aput-object v16, v15, v17

    #@d8
    .line 700
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@db
    move-result-object v14

    #@dc
    invoke-static {v11, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@df
    .line 703
    invoke-virtual {v10}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@e2
    move-result-object v11

    #@e3
    move-object/from16 v0, p0

    #@e5
    invoke-direct {v0, v11}, Lcom/android/server/pm/ShortcutPackage;->disableDynamicWithId(Ljava/lang/String;)Z

    #@e8
    move-result v11

    #@e9
    if-eqz v11, :cond_6

    #@eb
    .line 695
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, -0x1

    #@ed
    goto :goto_2

    #@ee
    .line 708
    :cond_6
    const/4 v2, 0x1

    #@ef
    .line 711
    :cond_7
    invoke-virtual {v10}, Landroid/content/pm/ShortcutInfo;->hasAnyResources()Z

    #@f2
    move-result v11

    #@f3
    if-eqz v11, :cond_5

    #@f5
    .line 712
    invoke-virtual {v10}, Landroid/content/pm/ShortcutInfo;->isOriginallyFromManifest()Z

    #@f8
    move-result v11

    #@f9
    if-nez v11, :cond_b

    #@fb
    .line 713
    if-nez v8, :cond_a

    #@fd
    .line 714
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageResources()Landroid/content/res/Resources;

    #@100
    move-result-object v8

    #@101
    .line 715
    .local v8, "publisherRes":Landroid/content/res/Resources;
    if-nez v8, :cond_a

    #@103
    .line 732
    .end local v4    # "i":I
    .end local v8    # "publisherRes":Landroid/content/res/Resources;
    .end local v10    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_8
    move-object/from16 v0, p0

    #@105
    invoke-direct {v0, v6}, Lcom/android/server/pm/ShortcutPackage;->publishManifestShortcuts(Ljava/util/List;)Z

    #@108
    move-result v11

    #@109
    or-int/2addr v2, v11

    #@10a
    .line 734
    .local v2, "changed":Z
    if-eqz v6, :cond_9

    #@10c
    .line 735
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->pushOutExcessShortcuts()Z

    #@10f
    move-result v11

    #@110
    or-int/2addr v2, v11

    #@111
    .line 738
    :cond_9
    invoke-virtual {v9}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    #@114
    .line 740
    if-eqz v2, :cond_c

    #@116
    .line 742
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@119
    move-result-object v11

    #@11a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    #@11d
    move-result v14

    #@11e
    invoke-virtual {v9, v11, v14}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    #@121
    .line 747
    :goto_4
    return v2

    #@122
    .line 723
    .local v2, "changed":Z
    .restart local v4    # "i":I
    .restart local v10    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_a
    invoke-virtual {v10, v8}, Landroid/content/pm/ShortcutInfo;->lookupAndFillInResourceIds(Landroid/content/res/Resources;)V

    #@125
    .line 725
    :cond_b
    const/4 v2, 0x1

    #@126
    .line 726
    invoke-virtual {v9}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    #@129
    move-result-wide v14

    #@12a
    invoke-virtual {v10, v14, v15}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    #@12d
    goto :goto_3

    #@12e
    .line 745
    .end local v4    # "i":I
    .end local v10    # "si":Landroid/content/pm/ShortcutInfo;
    .local v2, "changed":Z
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    #@131
    move-result v11

    #@132
    invoke-virtual {v9, v11}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    #@135
    goto :goto_4
.end method

.method public resetRateLimiting()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 487
    iget v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    #@3
    if-lez v0, :cond_0

    #@5
    .line 488
    iput v1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    #@7
    .line 489
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    #@9
    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@b
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getOwnerUserId()I

    #@e
    move-result v1

    #@f
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    #@12
    .line 483
    :cond_0
    return-void
.end method

.method public resetRateLimitingForCommandLineNoSaving()V
    .locals 2

    #@0
    .prologue
    .line 494
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    #@3
    .line 495
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    #@7
    .line 493
    return-void
.end method

.method public resetThrottling()V
    .locals 1

    #@0
    .prologue
    .line 556
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    #@3
    .line 555
    return-void
.end method

.method public resolveResourceStrings()V
    .locals 8

    #@0
    .prologue
    .line 1011
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    #@2
    iget-object v3, v5, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@4
    .line 1012
    .local v3, "s":Lcom/android/server/pm/ShortcutService;
    const/4 v0, 0x0

    #@5
    .line 1014
    .local v0, "changed":Z
    const/4 v2, 0x0

    #@6
    .line 1015
    .local v2, "publisherRes":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@b
    move-result v5

    #@c
    add-int/lit8 v1, v5, -0x1

    #@e
    .end local v2    # "publisherRes":Landroid/content/res/Resources;
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@10
    .line 1016
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@12
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@15
    move-result-object v4

    #@16
    check-cast v4, Landroid/content/pm/ShortcutInfo;

    #@18
    .line 1018
    .local v4, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->hasStringResources()Z

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_3

    #@1e
    .line 1019
    const/4 v0, 0x1

    #@1f
    .line 1021
    if-nez v2, :cond_2

    #@21
    .line 1022
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageResources()Landroid/content/res/Resources;

    #@24
    move-result-object v2

    #@25
    .line 1023
    .local v2, "publisherRes":Landroid/content/res/Resources;
    if-nez v2, :cond_2

    #@27
    .line 1032
    .end local v2    # "publisherRes":Landroid/content/res/Resources;
    .end local v4    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_0
    if-eqz v0, :cond_1

    #@29
    .line 1033
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    #@30
    move-result v6

    #@31
    invoke-virtual {v3, v5, v6}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    #@34
    .line 1010
    :cond_1
    return-void

    #@35
    .line 1028
    .restart local v4    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_2
    invoke-virtual {v4, v2}, Landroid/content/pm/ShortcutInfo;->resolveResourceStrings(Landroid/content/res/Resources;)V

    #@38
    .line 1029
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    #@3b
    move-result-wide v6

    #@3c
    invoke-virtual {v4, v6, v7}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    #@3f
    .line 1015
    :cond_3
    add-int/lit8 v1, v1, -0x1

    #@41
    goto :goto_0
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 7
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1241
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@6
    move-result v1

    #@7
    .line 1243
    .local v1, "size":I
    if-nez v1, :cond_0

    #@9
    iget v2, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    #@b
    if-nez v2, :cond_0

    #@d
    .line 1244
    return-void

    #@e
    .line 1247
    :cond_0
    const-string/jumbo v2, "package"

    #@11
    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@14
    .line 1249
    const-string/jumbo v2, "name"

    #@17
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-static {p1, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@1e
    .line 1250
    const-string/jumbo v2, "call-count"

    #@21
    iget v3, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    #@23
    int-to-long v4, v3

    #@24
    invoke-static {p1, v2, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@27
    .line 1251
    const-string/jumbo v2, "last-reset"

    #@2a
    iget-wide v4, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    #@2c
    invoke-static {p1, v2, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@2f
    .line 1252
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2, p1}, Lcom/android/server/pm/ShortcutPackageInfo;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@36
    .line 1254
    const/4 v0, 0x0

    #@37
    .local v0, "j":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@39
    .line 1255
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@3b
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@3e
    move-result-object v2

    #@3f
    check-cast v2, Landroid/content/pm/ShortcutInfo;

    #@41
    invoke-static {p1, v2, p2}, Lcom/android/server/pm/ShortcutPackage;->saveShortcut(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/ShortcutInfo;Z)V

    #@44
    .line 1254
    add-int/lit8 v0, v0, 0x1

    #@46
    goto :goto_0

    #@47
    .line 1258
    :cond_1
    const-string/jumbo v2, "package"

    #@4a
    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4d
    .line 1240
    return-void
.end method

.method public tryApiCall()Z
    .locals 3

    #@0
    .prologue
    .line 473
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    #@2
    iget-object v0, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@4
    .line 475
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount()I

    #@7
    move-result v1

    #@8
    iget v2, v0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    #@a
    if-lt v1, v2, :cond_0

    #@c
    .line 476
    const/4 v1, 0x0

    #@d
    return v1

    #@e
    .line 478
    :cond_0
    iget v1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    #@10
    add-int/lit8 v1, v1, 0x1

    #@12
    iput v1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    #@14
    .line 479
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getOwnerUserId()I

    #@17
    move-result v1

    #@18
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    #@1b
    .line 480
    const/4 v1, 0x1

    #@1c
    return v1
.end method

.method public verifyStates()V
    .locals 11

    #@0
    .prologue
    .line 1513
    invoke-super {p0}, Lcom/android/server/pm/ShortcutPackageItem;->verifyStates()V

    #@3
    .line 1515
    const/4 v2, 0x0

    #@4
    .line 1518
    .local v2, "failed":Z
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    #@7
    move-result-object v0

    #@8
    .line 1521
    .local v0, "all":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    #@b
    move-result v8

    #@c
    add-int/lit8 v6, v8, -0x1

    #@e
    .local v6, "outer":I
    :goto_0
    if-ltz v6, :cond_1

    #@10
    .line 1522
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@13
    move-result-object v4

    #@14
    check-cast v4, Ljava/util/ArrayList;

    #@16
    .line 1523
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v8

    #@1a
    iget-object v9, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    #@1c
    iget-object v9, v9, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@1e
    invoke-virtual {v9}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    #@21
    move-result v9

    #@22
    if-le v8, v9, :cond_0

    #@24
    .line 1524
    const/4 v2, 0x1

    #@25
    .line 1525
    const-string/jumbo v9, "ShortcutService.verify"

    #@28
    new-instance v8, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v10, "Package "

    #@30
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v8

    #@34
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@37
    move-result-object v10

    #@38
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v8

    #@3c
    const-string/jumbo v10, ": activity "

    #@3f
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v8

    #@43
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@46
    move-result-object v10

    #@47
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v8

    #@4b
    .line 1526
    const-string/jumbo v10, " has "

    #@4e
    .line 1525
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v10

    #@52
    .line 1526
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@55
    move-result-object v8

    #@56
    check-cast v8, Ljava/util/ArrayList;

    #@58
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@5b
    move-result v8

    #@5c
    .line 1525
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v8

    #@60
    .line 1526
    const-string/jumbo v10, " shortcuts."

    #@63
    .line 1525
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v8

    #@67
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v8

    #@6b
    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6e
    .line 1530
    :cond_0
    new-instance v8, Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl0;

    #@70
    invoke-direct {v8}, Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl0;-><init>()V

    #@73
    invoke-static {v4, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@76
    .line 1533
    new-instance v1, Ljava/util/ArrayList;

    #@78
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@7b
    .line 1534
    .local v1, "dynamicList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    new-instance v8, Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl1;

    #@7d
    invoke-direct {v8}, Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl1;-><init>()V

    #@80
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    #@83
    .line 1536
    new-instance v5, Ljava/util/ArrayList;

    #@85
    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@88
    .line 1537
    .local v5, "manifestList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    new-instance v8, Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl2;

    #@8a
    invoke-direct {v8}, Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl2;-><init>()V

    #@8d
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    #@90
    .line 1539
    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->verifyRanksSequential(Ljava/util/List;)Z

    #@93
    .line 1540
    invoke-direct {p0, v5}, Lcom/android/server/pm/ShortcutPackage;->verifyRanksSequential(Ljava/util/List;)Z

    #@96
    .line 1521
    add-int/lit8 v6, v6, -0x1

    #@98
    goto/16 :goto_0

    #@9a
    .line 1544
    .end local v1    # "dynamicList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v5    # "manifestList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    :cond_1
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@9c
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    #@9f
    move-result v8

    #@a0
    add-int/lit8 v3, v8, -0x1

    #@a2
    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_c

    #@a4
    .line 1545
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@a6
    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@a9
    move-result-object v7

    #@aa
    check-cast v7, Landroid/content/pm/ShortcutInfo;

    #@ac
    .line 1546
    .local v7, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    #@af
    move-result v8

    #@b0
    if-nez v8, :cond_a

    #@b2
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    #@b5
    move-result v8

    #@b6
    if-nez v8, :cond_a

    #@b8
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    #@bb
    move-result v8

    #@bc
    :goto_2
    if-nez v8, :cond_2

    #@be
    .line 1547
    const/4 v2, 0x1

    #@bf
    .line 1548
    const-string/jumbo v8, "ShortcutService.verify"

    #@c2
    new-instance v9, Ljava/lang/StringBuilder;

    #@c4
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@c7
    const-string/jumbo v10, "Package "

    #@ca
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v9

    #@ce
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@d1
    move-result-object v10

    #@d2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v9

    #@d6
    const-string/jumbo v10, ": shortcut "

    #@d9
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v9

    #@dd
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@e0
    move-result-object v10

    #@e1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v9

    #@e5
    .line 1549
    const-string/jumbo v10, " is not manifest, dynamic or pinned."

    #@e8
    .line 1548
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v9

    #@ec
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ef
    move-result-object v9

    #@f0
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f3
    .line 1551
    :cond_2
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    #@f6
    move-result v8

    #@f7
    if-eqz v8, :cond_3

    #@f9
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    #@fc
    move-result v8

    #@fd
    if-eqz v8, :cond_3

    #@ff
    .line 1552
    const/4 v2, 0x1

    #@100
    .line 1553
    const-string/jumbo v8, "ShortcutService.verify"

    #@103
    new-instance v9, Ljava/lang/StringBuilder;

    #@105
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@108
    const-string/jumbo v10, "Package "

    #@10b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v9

    #@10f
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@112
    move-result-object v10

    #@113
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v9

    #@117
    const-string/jumbo v10, ": shortcut "

    #@11a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v9

    #@11e
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@121
    move-result-object v10

    #@122
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v9

    #@126
    .line 1554
    const-string/jumbo v10, " is both dynamic and manifest at the same time."

    #@129
    .line 1553
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v9

    #@12d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@130
    move-result-object v9

    #@131
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@134
    .line 1556
    :cond_3
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    #@137
    move-result-object v8

    #@138
    if-nez v8, :cond_4

    #@13a
    .line 1557
    const/4 v2, 0x1

    #@13b
    .line 1558
    const-string/jumbo v8, "ShortcutService.verify"

    #@13e
    new-instance v9, Ljava/lang/StringBuilder;

    #@140
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@143
    const-string/jumbo v10, "Package "

    #@146
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v9

    #@14a
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@14d
    move-result-object v10

    #@14e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v9

    #@152
    const-string/jumbo v10, ": shortcut "

    #@155
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v9

    #@159
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@15c
    move-result-object v10

    #@15d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v9

    #@161
    .line 1559
    const-string/jumbo v10, " has null activity."

    #@164
    .line 1558
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v9

    #@168
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16b
    move-result-object v9

    #@16c
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@16f
    .line 1561
    :cond_4
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    #@172
    move-result v8

    #@173
    if-nez v8, :cond_5

    #@175
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    #@178
    move-result v8

    #@179
    if-eqz v8, :cond_6

    #@17b
    :cond_5
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    #@17e
    move-result v8

    #@17f
    if-eqz v8, :cond_b

    #@181
    .line 1566
    :cond_6
    :goto_3
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    #@184
    move-result v8

    #@185
    if-eqz v8, :cond_7

    #@187
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getRank()I

    #@18a
    move-result v8

    #@18b
    if-eqz v8, :cond_7

    #@18d
    .line 1567
    const/4 v2, 0x1

    #@18e
    .line 1568
    const-string/jumbo v8, "ShortcutService.verify"

    #@191
    new-instance v9, Ljava/lang/StringBuilder;

    #@193
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@196
    const-string/jumbo v10, "Package "

    #@199
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19c
    move-result-object v9

    #@19d
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@1a0
    move-result-object v10

    #@1a1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v9

    #@1a5
    const-string/jumbo v10, ": shortcut "

    #@1a8
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ab
    move-result-object v9

    #@1ac
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@1af
    move-result-object v10

    #@1b0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b3
    move-result-object v9

    #@1b4
    .line 1569
    const-string/jumbo v10, " is floating, but has rank="

    #@1b7
    .line 1568
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ba
    move-result-object v9

    #@1bb
    .line 1569
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getRank()I

    #@1be
    move-result v10

    #@1bf
    .line 1568
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c2
    move-result-object v9

    #@1c3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c6
    move-result-object v9

    #@1c7
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1ca
    .line 1571
    :cond_7
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    #@1cd
    move-result-object v8

    #@1ce
    if-eqz v8, :cond_8

    #@1d0
    .line 1572
    const/4 v2, 0x1

    #@1d1
    .line 1573
    const-string/jumbo v8, "ShortcutService.verify"

    #@1d4
    new-instance v9, Ljava/lang/StringBuilder;

    #@1d6
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1d9
    const-string/jumbo v10, "Package "

    #@1dc
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1df
    move-result-object v9

    #@1e0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@1e3
    move-result-object v10

    #@1e4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e7
    move-result-object v9

    #@1e8
    const-string/jumbo v10, ": shortcut "

    #@1eb
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ee
    move-result-object v9

    #@1ef
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@1f2
    move-result-object v10

    #@1f3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f6
    move-result-object v9

    #@1f7
    .line 1574
    const-string/jumbo v10, " still has an icon"

    #@1fa
    .line 1573
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fd
    move-result-object v9

    #@1fe
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@201
    move-result-object v9

    #@202
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@205
    .line 1576
    :cond_8
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    #@208
    move-result v8

    #@209
    if-eqz v8, :cond_9

    #@20b
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    #@20e
    move-result v8

    #@20f
    if-eqz v8, :cond_9

    #@211
    .line 1577
    const/4 v2, 0x1

    #@212
    .line 1578
    const-string/jumbo v8, "ShortcutService.verify"

    #@215
    new-instance v9, Ljava/lang/StringBuilder;

    #@217
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@21a
    const-string/jumbo v10, "Package "

    #@21d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@220
    move-result-object v9

    #@221
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@224
    move-result-object v10

    #@225
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@228
    move-result-object v9

    #@229
    const-string/jumbo v10, ": shortcut "

    #@22c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22f
    move-result-object v9

    #@230
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@233
    move-result-object v10

    #@234
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@237
    move-result-object v9

    #@238
    .line 1579
    const-string/jumbo v10, " has both resource and bitmap icons"

    #@23b
    .line 1578
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23e
    move-result-object v9

    #@23f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@242
    move-result-object v9

    #@243
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@246
    .line 1544
    :cond_9
    add-int/lit8 v3, v3, -0x1

    #@248
    goto/16 :goto_1

    #@24a
    .line 1546
    :cond_a
    const/4 v8, 0x1

    #@24b
    goto/16 :goto_2

    #@24d
    .line 1562
    :cond_b
    const/4 v2, 0x1

    #@24e
    .line 1563
    const-string/jumbo v8, "ShortcutService.verify"

    #@251
    new-instance v9, Ljava/lang/StringBuilder;

    #@253
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@256
    const-string/jumbo v10, "Package "

    #@259
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25c
    move-result-object v9

    #@25d
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@260
    move-result-object v10

    #@261
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@264
    move-result-object v9

    #@265
    const-string/jumbo v10, ": shortcut "

    #@268
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26b
    move-result-object v9

    #@26c
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@26f
    move-result-object v10

    #@270
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@273
    move-result-object v9

    #@274
    .line 1564
    const-string/jumbo v10, " is not floating, but is disabled."

    #@277
    .line 1563
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27a
    move-result-object v9

    #@27b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27e
    move-result-object v9

    #@27f
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@282
    goto/16 :goto_3

    #@284
    .line 1583
    .end local v7    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_c
    if-eqz v2, :cond_d

    #@286
    .line 1584
    new-instance v8, Ljava/lang/IllegalStateException;

    #@288
    const-string/jumbo v9, "See logcat for errors"

    #@28b
    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@28e
    throw v8

    #@28f
    .line 1512
    :cond_d
    return-void
.end method
