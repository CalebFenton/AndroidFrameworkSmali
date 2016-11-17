.class Lcom/android/server/pm/ShortcutPackage;
.super Lcom/android/server/pm/ShortcutPackageItem;
.source "ShortcutPackage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShortcutPackage$-void_refreshPinnedFlags_com_android_server_pm_ShortcutService_s_LambdaImpl0;
    }
.end annotation


# static fields
.field private static final ATTR_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final ATTR_BITMAP_PATH:Ljava/lang/String; = "bitmap-path"

.field private static final ATTR_CALL_COUNT:Ljava/lang/String; = "call-count"

.field private static final ATTR_DYNAMIC_COUNT:Ljava/lang/String; = "dynamic-count"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_ICON_RES:Ljava/lang/String; = "icon-res"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_INTENT:Ljava/lang/String; = "intent"

.field private static final ATTR_LAST_RESET:Ljava/lang/String; = "last-reset"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_NAME_XMLUTILS:Ljava/lang/String; = "name"

.field private static final ATTR_TEXT:Ljava/lang/String; = "text"

.field private static final ATTR_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final ATTR_TITLE:Ljava/lang/String; = "title"

.field private static final ATTR_WEIGHT:Ljava/lang/String; = "weight"

.field private static final NAME_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final TAG_EXTRAS:Ljava/lang/String; = "extras"

.field private static final TAG_INTENT_EXTRAS:Ljava/lang/String; = "intent-extras"

.field static final TAG_ROOT:Ljava/lang/String; = "package"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG_STRING_ARRAY_XMLUTILS:Ljava/lang/String; = "string-array"


# instance fields
.field private mApiCallCount:I

.field private mDynamicShortcutCount:I

.field private mLastKnownForegroundElapsedTime:J

.field private mLastResetTime:J

.field private final mPackageUid:I

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
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V
    .locals 6
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p3, "packageUserId"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 111
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShortcutPackage;-><init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V

    #@9
    .line 110
    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V
    .locals 1
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p3, "packageUserId"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "spi"    # Lcom/android/server/pm/ShortcutPackageInfo;

    #@0
    .prologue
    .line 104
    if-eqz p5, :cond_0

    #@2
    .line 103
    .end local p5    # "spi":Lcom/android/server/pm/ShortcutPackageInfo;
    :goto_0
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/pm/ShortcutPackageItem;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V

    #@5
    .line 80
    new-instance v0, Landroid/util/ArrayMap;

    #@7
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@c
    .line 85
    const/4 v0, 0x0

    #@d
    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mDynamicShortcutCount:I

    #@f
    .line 106
    invoke-virtual {p1, p4, p3}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(Ljava/lang/String;I)I

    #@12
    move-result v0

    #@13
    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    #@15
    .line 102
    return-void

    #@16
    .line 104
    .restart local p5    # "spi":Lcom/android/server/pm/ShortcutPackageInfo;
    :cond_0
    invoke-static {}, Lcom/android/server/pm/ShortcutPackageInfo;->newEmpty()Lcom/android/server/pm/ShortcutPackageInfo;

    #@19
    move-result-object p5

    #@1a
    goto :goto_0
.end method

.method private deleteShortcut(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .locals 2
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/pm/ShortcutInfo;

    #@8
    .line 169
    .local v0, "shortcut":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_0

    #@a
    .line 170
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    #@d
    move-result v1

    #@e
    invoke-virtual {p1, v1, v0}, Lcom/android/server/pm/ShortcutService;->removeIcon(ILandroid/content/pm/ShortcutInfo;)V

    #@11
    .line 171
    const/4 v1, 0x3

    #@12
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    #@15
    .line 173
    :cond_0
    return-object v0
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
    .line 628
    const-string/jumbo v7, "name"

    #@3
    .line 627
    invoke-static {p2, v7}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    .line 630
    .local v2, "packageName":Ljava/lang/String;
    new-instance v3, Lcom/android/server/pm/ShortcutPackage;

    #@9
    .line 631
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    #@c
    move-result v7

    #@d
    .line 630
    invoke-direct {v3, p0, p1, v7, v2}, Lcom/android/server/pm/ShortcutPackage;-><init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V

    #@10
    .line 634
    .local v3, "ret":Lcom/android/server/pm/ShortcutPackage;
    const-string/jumbo v7, "dynamic-count"

    #@13
    invoke-static {p2, v7}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@16
    move-result v7

    #@17
    .line 633
    iput v7, v3, Lcom/android/server/pm/ShortcutPackage;->mDynamicShortcutCount:I

    #@19
    .line 636
    const-string/jumbo v7, "call-count"

    #@1c
    invoke-static {p2, v7}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@1f
    move-result v7

    #@20
    .line 635
    iput v7, v3, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    #@22
    .line 638
    const-string/jumbo v7, "last-reset"

    #@25
    invoke-static {p2, v7}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@28
    move-result-wide v8

    #@29
    .line 637
    iput-wide v8, v3, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    #@2b
    .line 640
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@2e
    move-result v1

    #@2f
    .line 642
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@32
    move-result v6

    #@33
    .local v6, "type":I
    const/4 v7, 0x1

    #@34
    if-eq v6, v7, :cond_4

    #@36
    .line 643
    const/4 v7, 0x3

    #@37
    if-ne v6, v7, :cond_1

    #@39
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3c
    move-result v7

    #@3d
    if-le v7, v1, :cond_4

    #@3f
    .line 644
    :cond_1
    const/4 v7, 0x2

    #@40
    if-ne v6, v7, :cond_0

    #@42
    .line 647
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@45
    move-result v0

    #@46
    .line 648
    .local v0, "depth":I
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@49
    move-result-object v5

    #@4a
    .line 649
    .local v5, "tag":Ljava/lang/String;
    add-int/lit8 v7, v1, 0x1

    #@4c
    if-ne v0, v7, :cond_3

    #@4e
    .line 650
    const-string/jumbo v7, "package-info"

    #@51
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v7

    #@55
    if-eqz v7, :cond_2

    #@57
    .line 652
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    #@5a
    move-result-object v7

    #@5b
    invoke-virtual {v7, p2, p3}, Lcom/android/server/pm/ShortcutPackageInfo;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;Z)V

    #@5e
    goto :goto_0

    #@5f
    .line 650
    :cond_2
    const-string/jumbo v7, "shortcut"

    #@62
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v7

    #@66
    if-eqz v7, :cond_3

    #@68
    .line 656
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    #@6b
    move-result v7

    #@6c
    .line 655
    invoke-static {p2, v2, v7}, Lcom/android/server/pm/ShortcutPackage;->parseShortcut(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/content/pm/ShortcutInfo;

    #@6f
    move-result-object v4

    #@70
    .line 659
    .local v4, "si":Landroid/content/pm/ShortcutInfo;
    iget-object v7, v3, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@72
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@75
    move-result-object v8

    #@76
    invoke-virtual {v7, v8, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@79
    goto :goto_0

    #@7a
    .line 663
    .end local v4    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_3
    invoke-static {v0, v5}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V

    #@7d
    goto :goto_0

    #@7e
    .line 665
    .end local v0    # "depth":I
    .end local v5    # "tag":Ljava/lang/String;
    :cond_4
    return-object v3
.end method

.method private onShortcutPublish(Lcom/android/server/pm/ShortcutService;)V
    .locals 3
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;

    #@0
    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackageInfo;->getVersionCode()I

    #@7
    move-result v1

    #@8
    if-gez v1, :cond_0

    #@a
    .line 133
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getOwnerUserId()I

    #@11
    move-result v2

    #@12
    invoke-virtual {p1, v1, v2}, Lcom/android/server/pm/ShortcutService;->getApplicationVersionCode(Ljava/lang/String;I)I

    #@15
    move-result v0

    #@16
    .line 138
    .local v0, "versionCode":I
    if-ltz v0, :cond_0

    #@18
    .line 139
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutPackageInfo;->setVersionCode(I)V

    #@1f
    .line 140
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getOwnerUserId()I

    #@22
    move-result v1

    #@23
    invoke-virtual {p1, v1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    #@26
    .line 129
    .end local v0    # "versionCode":I
    :cond_0
    return-void
.end method

.method private static parseShortcut(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/content/pm/ShortcutInfo;
    .locals 28
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
    .line 676
    const/4 v13, 0x0

    #@1
    .line 678
    .local v13, "intentPersistableExtras":Landroid/os/PersistableBundle;
    const/4 v15, 0x0

    #@2
    .line 683
    .local v15, "extras":Landroid/os/PersistableBundle;
    const/4 v11, 0x0

    #@3
    .line 685
    .local v11, "categories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string/jumbo v3, "id"

    #@6
    move-object/from16 v0, p0

    #@8
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v5

    #@c
    .line 687
    .local v5, "id":Ljava/lang/String;
    const-string/jumbo v3, "activity"

    #@f
    .line 686
    move-object/from16 v0, p0

    #@11
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseComponentNameAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    #@14
    move-result-object v7

    #@15
    .line 688
    .local v7, "activityComponent":Landroid/content/ComponentName;
    const-string/jumbo v3, "title"

    #@18
    move-object/from16 v0, p0

    #@1a
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v9

    #@1e
    .line 689
    .local v9, "title":Ljava/lang/String;
    const-string/jumbo v3, "text"

    #@21
    move-object/from16 v0, p0

    #@23
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v10

    #@27
    .line 690
    .local v10, "text":Ljava/lang/String;
    const-string/jumbo v3, "intent"

    #@2a
    move-object/from16 v0, p0

    #@2c
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseIntentAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/Intent;

    #@2f
    move-result-object v12

    #@30
    .line 691
    .local v12, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "weight"

    #@33
    move-object/from16 v0, p0

    #@35
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@38
    move-result-wide v26

    #@39
    move-wide/from16 v0, v26

    #@3b
    long-to-int v14, v0

    #@3c
    .line 692
    .local v14, "weight":I
    const-string/jumbo v3, "timestamp"

    #@3f
    move-object/from16 v0, p0

    #@41
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@44
    move-result-wide v16

    #@45
    .line 693
    .local v16, "lastChangedTimestamp":J
    const-string/jumbo v3, "flags"

    #@48
    move-object/from16 v0, p0

    #@4a
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@4d
    move-result-wide v26

    #@4e
    move-wide/from16 v0, v26

    #@50
    long-to-int v0, v0

    #@51
    move/from16 v18, v0

    #@53
    .line 694
    .local v18, "flags":I
    const-string/jumbo v3, "icon-res"

    #@56
    move-object/from16 v0, p0

    #@58
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@5b
    move-result-wide v26

    #@5c
    move-wide/from16 v0, v26

    #@5e
    long-to-int v0, v0

    #@5f
    move/from16 v19, v0

    #@61
    .line 695
    .local v19, "iconRes":I
    const-string/jumbo v3, "bitmap-path"

    #@64
    move-object/from16 v0, p0

    #@66
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@69
    move-result-object v20

    #@6a
    .line 697
    .local v20, "bitmapPath":Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@6d
    move-result v23

    #@6e
    .line 699
    .end local v11    # "categories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v13    # "intentPersistableExtras":Landroid/os/PersistableBundle;
    .end local v15    # "extras":Landroid/os/PersistableBundle;
    .local v23, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@71
    move-result v25

    #@72
    .local v25, "type":I
    const/4 v3, 0x1

    #@73
    move/from16 v0, v25

    #@75
    if-eq v0, v3, :cond_5

    #@77
    .line 700
    const/4 v3, 0x3

    #@78
    move/from16 v0, v25

    #@7a
    if-ne v0, v3, :cond_1

    #@7c
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@7f
    move-result v3

    #@80
    move/from16 v0, v23

    #@82
    if-le v3, v0, :cond_5

    #@84
    .line 701
    :cond_1
    const/4 v3, 0x2

    #@85
    move/from16 v0, v25

    #@87
    if-ne v0, v3, :cond_0

    #@89
    .line 704
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@8c
    move-result v21

    #@8d
    .line 705
    .local v21, "depth":I
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@90
    move-result-object v24

    #@91
    .line 710
    .local v24, "tag":Ljava/lang/String;
    const-string/jumbo v3, "intent-extras"

    #@94
    move-object/from16 v0, v24

    #@96
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@99
    move-result v3

    #@9a
    if-eqz v3, :cond_2

    #@9c
    .line 712
    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    #@9f
    move-result-object v13

    #@a0
    .local v13, "intentPersistableExtras":Landroid/os/PersistableBundle;
    goto :goto_0

    #@a1
    .line 710
    .end local v13    # "intentPersistableExtras":Landroid/os/PersistableBundle;
    :cond_2
    const-string/jumbo v3, "extras"

    #@a4
    move-object/from16 v0, v24

    #@a6
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a9
    move-result v3

    #@aa
    if-eqz v3, :cond_3

    #@ac
    .line 715
    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    #@af
    move-result-object v15

    #@b0
    .local v15, "extras":Landroid/os/PersistableBundle;
    goto :goto_0

    #@b1
    .line 710
    .end local v15    # "extras":Landroid/os/PersistableBundle;
    :cond_3
    const-string/jumbo v3, "categories"

    #@b4
    move-object/from16 v0, v24

    #@b6
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b9
    move-result v3

    #@ba
    if-nez v3, :cond_0

    #@bc
    const-string/jumbo v3, "string-array"

    #@bf
    move-object/from16 v0, v24

    #@c1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c4
    move-result v3

    #@c5
    if-eqz v3, :cond_4

    #@c7
    .line 721
    const-string/jumbo v3, "categories"

    #@ca
    .line 722
    const-string/jumbo v4, "name"

    #@cd
    .line 721
    move-object/from16 v0, p0

    #@cf
    invoke-static {v0, v4}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@d2
    move-result-object v4

    #@d3
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d6
    move-result v3

    #@d7
    if-eqz v3, :cond_0

    #@d9
    .line 724
    const-string/jumbo v3, "string-array"

    #@dc
    const/4 v4, 0x0

    #@dd
    .line 723
    move-object/from16 v0, p0

    #@df
    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readThisStringArrayXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    #@e2
    move-result-object v2

    #@e3
    .line 725
    .local v2, "ar":[Ljava/lang/String;
    new-instance v11, Landroid/util/ArraySet;

    #@e5
    array-length v3, v2

    #@e6
    invoke-direct {v11, v3}, Landroid/util/ArraySet;-><init>(I)V

    #@e9
    .line 726
    .local v11, "categories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v22, 0x0

    #@eb
    .local v22, "i":I
    :goto_1
    array-length v3, v2

    #@ec
    move/from16 v0, v22

    #@ee
    if-ge v0, v3, :cond_0

    #@f0
    .line 727
    aget-object v3, v2, v22

    #@f2
    invoke-virtual {v11, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@f5
    .line 726
    add-int/lit8 v22, v22, 0x1

    #@f7
    goto :goto_1

    #@f8
    .line 732
    .end local v2    # "ar":[Ljava/lang/String;
    .end local v11    # "categories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v22    # "i":I
    :cond_4
    move/from16 v0, v21

    #@fa
    move-object/from16 v1, v24

    #@fc
    invoke-static {v0, v1}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;

    #@ff
    move-result-object v3

    #@100
    throw v3

    #@101
    .line 735
    .end local v21    # "depth":I
    .end local v24    # "tag":Ljava/lang/String;
    :cond_5
    new-instance v3, Landroid/content/pm/ShortcutInfo;

    #@103
    .line 736
    const/4 v8, 0x0

    #@104
    move/from16 v4, p2

    #@106
    move-object/from16 v6, p1

    #@108
    .line 735
    invoke-direct/range {v3 .. v20}, Landroid/content/pm/ShortcutInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Landroid/content/Intent;Landroid/os/PersistableBundle;ILandroid/os/PersistableBundle;JIILjava/lang/String;)V

    #@10b
    return-object v3
.end method

.method private removeOrphans(Lcom/android/server/pm/ShortcutService;)V
    .locals 4
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;

    #@0
    .prologue
    .line 227
    const/4 v1, 0x0

    #@1
    .line 229
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
    if-ltz v0, :cond_3

    #@b
    .line 230
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Landroid/content/pm/ShortcutInfo;

    #@13
    .line 232
    .local v2, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    #@16
    move-result v3

    #@17
    if-nez v3, :cond_0

    #@19
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_1

    #@1f
    .line 229
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    #@21
    goto :goto_0

    #@22
    .line 234
    :cond_1
    if-nez v1, :cond_2

    #@24
    .line 235
    new-instance v1, Ljava/util/ArrayList;

    #@26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@29
    .line 237
    :cond_2
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@30
    goto :goto_1

    #@31
    .line 239
    .end local v2    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_3
    if-eqz v1, :cond_4

    #@33
    .line 240
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@36
    move-result v3

    #@37
    add-int/lit8 v0, v3, -0x1

    #@39
    :goto_2
    if-ltz v0, :cond_4

    #@3b
    .line 241
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3e
    move-result-object v3

    #@3f
    check-cast v3, Ljava/lang/String;

    #@41
    invoke-direct {p0, p1, v3}, Lcom/android/server/pm/ShortcutPackage;->deleteShortcut(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    #@44
    .line 240
    add-int/lit8 v0, v0, -0x1

    #@46
    goto :goto_2

    #@47
    .line 226
    :cond_4
    return-void
.end method

.method private static saveShortcut(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/ShortcutInfo;Z)V
    .locals 5
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
    const/4 v4, 0x0

    #@1
    .line 578
    if-eqz p2, :cond_0

    #@3
    .line 579
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 580
    return-void

    #@a
    .line 583
    :cond_0
    const-string/jumbo v1, "shortcut"

    #@d
    invoke-interface {p0, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@10
    .line 584
    const-string/jumbo v1, "id"

    #@13
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-static {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 586
    const-string/jumbo v1, "activity"

    #@1d
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivityComponent()Landroid/content/ComponentName;

    #@20
    move-result-object v2

    #@21
    invoke-static {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/ComponentName;)V

    #@24
    .line 588
    const-string/jumbo v1, "title"

    #@27
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getTitle()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-static {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@2e
    .line 589
    const-string/jumbo v1, "text"

    #@31
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getText()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-static {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@38
    .line 590
    const-string/jumbo v1, "intent"

    #@3b
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIntentNoExtras()Landroid/content/Intent;

    #@3e
    move-result-object v2

    #@3f
    invoke-static {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/Intent;)V

    #@42
    .line 591
    const-string/jumbo v1, "weight"

    #@45
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getWeight()I

    #@48
    move-result v2

    #@49
    int-to-long v2, v2

    #@4a
    invoke-static {p0, v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@4d
    .line 592
    const-string/jumbo v1, "timestamp"

    #@50
    .line 593
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    #@53
    move-result-wide v2

    #@54
    .line 592
    invoke-static {p0, v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@57
    .line 594
    if-eqz p2, :cond_2

    #@59
    .line 596
    const-string/jumbo v1, "flags"

    #@5c
    .line 597
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    #@5f
    move-result v2

    #@60
    and-int/lit8 v2, v2, -0xe

    #@62
    int-to-long v2, v2

    #@63
    .line 596
    invoke-static {p0, v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@66
    .line 607
    :goto_0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    #@69
    move-result-object v0

    #@6a
    .line 608
    .local v0, "cat":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    #@6c
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@6f
    move-result v1

    #@70
    if-lez v1, :cond_1

    #@72
    .line 609
    const-string/jumbo v1, "categories"

    #@75
    invoke-interface {p0, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@78
    .line 610
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@7b
    move-result v1

    #@7c
    new-array v1, v1, [Ljava/lang/String;

    #@7e
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@81
    move-result-object v1

    #@82
    check-cast v1, [Ljava/lang/String;

    #@84
    .line 611
    const-string/jumbo v2, "categories"

    #@87
    .line 610
    invoke-static {v1, v2, p0}, Lcom/android/internal/util/XmlUtils;->writeStringArrayXml([Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    #@8a
    .line 612
    const-string/jumbo v1, "categories"

    #@8d
    invoke-interface {p0, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@90
    .line 616
    :cond_1
    const-string/jumbo v1, "intent-extras"

    #@93
    .line 617
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIntentPersistableExtras()Landroid/os/PersistableBundle;

    #@96
    move-result-object v2

    #@97
    .line 616
    invoke-static {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->writeTagExtra(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    #@9a
    .line 618
    const-string/jumbo v1, "extras"

    #@9d
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    #@a0
    move-result-object v2

    #@a1
    invoke-static {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->writeTagExtra(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    #@a4
    .line 620
    const-string/jumbo v1, "shortcut"

    #@a7
    invoke-interface {p0, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@aa
    .line 577
    return-void

    #@ab
    .line 601
    .end local v0    # "cat":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v1, "flags"

    #@ae
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    #@b1
    move-result v2

    #@b2
    int-to-long v2, v2

    #@b3
    invoke-static {p0, v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@b6
    .line 602
    const-string/jumbo v1, "icon-res"

    #@b9
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    #@bc
    move-result v2

    #@bd
    int-to-long v2, v2

    #@be
    invoke-static {p0, v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@c1
    .line 603
    const-string/jumbo v1, "bitmap-path"

    #@c4
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    #@c7
    move-result-object v2

    #@c8
    invoke-static {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@cb
    goto :goto_0
.end method


# virtual methods
.method synthetic -com_android_server_pm_ShortcutPackage_lambda$1(Lcom/android/server/pm/ShortcutLauncher;)V
    .locals 6
    .param p1, "launcherShortcuts"    # Lcom/android/server/pm/ShortcutLauncher;

    #@0
    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    #@7
    move-result v5

    #@8
    .line 290
    invoke-virtual {p1, v4, v5}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;

    #@b
    move-result-object v2

    #@c
    .line 293
    .local v2, "pinned":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    #@e
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@11
    move-result v4

    #@12
    if-nez v4, :cond_1

    #@14
    .line 294
    :cond_0
    return-void

    #@15
    .line 296
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
    .line 297
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Ljava/lang/String;

    #@23
    .line 298
    .local v1, "id":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@25
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v3

    #@29
    check-cast v3, Landroid/content/pm/ShortcutInfo;

    #@2b
    .line 299
    .local v3, "si":Landroid/content/pm/ShortcutInfo;
    if-nez v3, :cond_2

    #@2d
    .line 296
    :goto_1
    add-int/lit8 v0, v0, -0x1

    #@2f
    goto :goto_0

    #@30
    .line 306
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

.method public addDynamicShortcut(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ShortcutInfo;)V
    .locals 5
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "newShortcut"    # Landroid/content/pm/ShortcutInfo;

    #@0
    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->onShortcutPublish(Lcom/android/server/pm/ShortcutService;)V

    #@3
    .line 192
    const/4 v3, 0x1

    #@4
    invoke-virtual {p2, v3}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    #@7
    .line 194
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@9
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroid/content/pm/ShortcutInfo;

    #@13
    .line 199
    .local v1, "oldShortcut":Landroid/content/pm/ShortcutInfo;
    if-nez v1, :cond_1

    #@15
    .line 200
    const/4 v2, 0x0

    #@16
    .line 201
    .local v2, "wasPinned":Z
    iget v3, p0, Lcom/android/server/pm/ShortcutPackage;->mDynamicShortcutCount:I

    #@18
    add-int/lit8 v0, v3, 0x1

    #@1a
    .line 212
    .end local v2    # "wasPinned":Z
    .local v0, "newDynamicCount":I
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/server/pm/ShortcutService;->enforceMaxDynamicShortcuts(I)V

    #@1d
    .line 215
    if-eqz v2, :cond_0

    #@1f
    .line 216
    const/4 v3, 0x2

    #@20
    invoke-virtual {p2, v3}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    #@23
    .line 219
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutPackage;->addShortcut(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ShortcutInfo;)V

    #@26
    .line 220
    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mDynamicShortcutCount:I

    #@28
    .line 188
    return-void

    #@29
    .line 203
    .end local v0    # "newDynamicCount":I
    :cond_1
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    #@2c
    move-result v2

    #@2d
    .line 204
    .local v2, "wasPinned":Z
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_2

    #@33
    .line 205
    iget v0, p0, Lcom/android/server/pm/ShortcutPackage;->mDynamicShortcutCount:I

    #@35
    .restart local v0    # "newDynamicCount":I
    goto :goto_0

    #@36
    .line 207
    .end local v0    # "newDynamicCount":I
    :cond_2
    iget v3, p0, Lcom/android/server/pm/ShortcutPackage;->mDynamicShortcutCount:I

    #@38
    add-int/lit8 v0, v3, 0x1

    #@3a
    .restart local v0    # "newDynamicCount":I
    goto :goto_0
.end method

.method addShortcut(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ShortcutInfo;)V
    .locals 2
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "newShortcut"    # Landroid/content/pm/ShortcutInfo;

    #@0
    .prologue
    .line 177
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/ShortcutPackage;->deleteShortcut(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    #@7
    .line 178
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    #@a
    move-result v0

    #@b
    invoke-virtual {p1, v0, p2}, Lcom/android/server/pm/ShortcutService;->saveIconAndFixUpShortcut(ILandroid/content/pm/ShortcutInfo;)V

    #@e
    .line 179
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@10
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 176
    return-void
.end method

.method public deleteAllDynamicShortcuts(Lcom/android/server/pm/ShortcutService;)V
    .locals 4
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 250
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    #@6
    move-result v1

    #@7
    add-int/lit8 v0, v1, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@b
    .line 251
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroid/content/pm/ShortcutInfo;

    #@13
    const/4 v2, 0x1

    #@14
    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    #@17
    .line 250
    add-int/lit8 v0, v0, -0x1

    #@19
    goto :goto_0

    #@1a
    .line 253
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans(Lcom/android/server/pm/ShortcutService;)V

    #@1d
    .line 254
    iput v3, p0, Lcom/android/server/pm/ShortcutPackage;->mDynamicShortcutCount:I

    #@1f
    .line 249
    return-void
.end method

.method public deleteDynamicWithId(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "shortcutId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/pm/ShortcutInfo;

    #@8
    .line 263
    .local v0, "oldShortcut":Landroid/content/pm/ShortcutInfo;
    if-nez v0, :cond_0

    #@a
    .line 264
    return-void

    #@b
    .line 266
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 267
    iget v1, p0, Lcom/android/server/pm/ShortcutPackage;->mDynamicShortcutCount:I

    #@13
    add-int/lit8 v1, v1, -0x1

    #@15
    iput v1, p0, Lcom/android/server/pm/ShortcutPackage;->mDynamicShortcutCount:I

    #@17
    .line 269
    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 270
    const/4 v1, 0x1

    #@1e
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    #@21
    .line 260
    :goto_0
    return-void

    #@22
    .line 272
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutPackage;->deleteShortcut(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    #@25
    goto :goto_0
.end method

.method public dump(Lcom/android/server/pm/ShortcutService;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 11
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 489
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@3
    .line 491
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    .line 492
    const-string/jumbo v8, "Package: "

    #@9
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c
    .line 493
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@f
    move-result-object v8

    #@10
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13
    .line 494
    const-string/jumbo v8, "  UID: "

    #@16
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19
    .line 495
    iget v8, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    #@1b
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(I)V

    #@1e
    .line 496
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@21
    .line 498
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@24
    .line 499
    const-string/jumbo v8, "  "

    #@27
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2a
    .line 500
    const-string/jumbo v8, "Calls: "

    #@2d
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@30
    .line 501
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount(Lcom/android/server/pm/ShortcutService;)I

    #@33
    move-result v8

    #@34
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(I)V

    #@37
    .line 502
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@3a
    .line 505
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d
    .line 506
    const-string/jumbo v8, "  "

    #@40
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@43
    .line 507
    const-string/jumbo v8, "Last known FG: "

    #@46
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@49
    .line 508
    iget-wide v8, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    #@4b
    invoke-virtual {p2, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    #@4e
    .line 509
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@51
    .line 512
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54
    .line 513
    const-string/jumbo v8, "  "

    #@57
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a
    .line 514
    const-string/jumbo v8, "Last reset: ["

    #@5d
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60
    .line 515
    iget-wide v8, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    #@62
    invoke-virtual {p2, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    #@65
    .line 516
    const-string/jumbo v8, "] "

    #@68
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6b
    .line 517
    iget-wide v8, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    #@6d
    invoke-static {v8, v9}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    #@70
    move-result-object v8

    #@71
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@74
    .line 518
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@77
    .line 520
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    #@7a
    move-result-object v8

    #@7b
    new-instance v9, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    invoke-virtual {v8, p1, p2, v9}, Lcom/android/server/pm/ShortcutPackageInfo;->dump(Lcom/android/server/pm/ShortcutService;Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@92
    .line 521
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@95
    .line 523
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@98
    .line 524
    const-string/jumbo v8, "  Shortcuts:"

    #@9b
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9e
    .line 525
    const-wide/16 v6, 0x0

    #@a0
    .line 526
    .local v6, "totalBitmapSize":J
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@a2
    .line 527
    .local v1, "shortcuts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    #@a5
    move-result v5

    #@a6
    .line 528
    .local v5, "size":I
    const/4 v0, 0x0

    #@a7
    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    #@a9
    .line 529
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@ac
    move-result-object v4

    #@ad
    check-cast v4, Landroid/content/pm/ShortcutInfo;

    #@af
    .line 530
    .local v4, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b2
    .line 531
    const-string/jumbo v8, "    "

    #@b5
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b8
    .line 532
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->toInsecureString()Ljava/lang/String;

    #@bb
    move-result-object v8

    #@bc
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bf
    .line 533
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    #@c2
    move-result-object v8

    #@c3
    if-eqz v8, :cond_0

    #@c5
    .line 534
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
    .line 535
    .local v2, "len":J
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d5
    .line 536
    const-string/jumbo v8, "      "

    #@d8
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@db
    .line 537
    const-string/jumbo v8, "bitmap size="

    #@de
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e1
    .line 538
    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    #@e4
    .line 540
    add-long/2addr v6, v2

    #@e5
    .line 528
    .end local v2    # "len":J
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@e7
    goto :goto_0

    #@e8
    .line 543
    .end local v4    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_1
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@eb
    .line 544
    const-string/jumbo v8, "  "

    #@ee
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f1
    .line 545
    const-string/jumbo v8, "Total bitmap size: "

    #@f4
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f7
    .line 546
    invoke-virtual {p2, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    #@fa
    .line 547
    const-string/jumbo v8, " ("

    #@fd
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@100
    .line 548
    iget-object v8, p1, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    #@102
    invoke-static {v8, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    #@105
    move-result-object v8

    #@106
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@109
    .line 549
    const-string/jumbo v8, ")"

    #@10c
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10f
    .line 488
    return-void
.end method

.method public findAll(Lcom/android/server/pm/ShortcutService;Ljava/util/List;Ljava/util/function/Predicate;I)V
    .locals 7
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p4, "cloneFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/ShortcutService;",
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
    .line 397
    .local p2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local p3, "query":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v5, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move-object v3, p3

    #@6
    move v4, p4

    #@7
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ShortcutPackage;->findAll(Lcom/android/server/pm/ShortcutService;Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;I)V

    #@a
    .line 396
    return-void
.end method

.method public findAll(Lcom/android/server/pm/ShortcutService;Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;I)V
    .locals 8
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p4, "cloneFlag"    # I
    .param p5, "callingLauncher"    # Ljava/lang/String;
    .param p6, "launcherUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/ShortcutService;",
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
    .line 410
    .local p2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local p3, "query":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    #@3
    move-result-object v5

    #@4
    invoke-virtual {v5}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    #@7
    move-result v5

    #@8
    if-eqz v5, :cond_0

    #@a
    .line 412
    return-void

    #@b
    .line 416
    :cond_0
    if-nez p5, :cond_2

    #@d
    const/4 v3, 0x0

    #@e
    .line 420
    :goto_0
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@11
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@14
    move-result v5

    #@15
    if-ge v1, v5, :cond_9

    #@17
    .line 421
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@19
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1c
    move-result-object v4

    #@1d
    check-cast v4, Landroid/content/pm/ShortcutInfo;

    #@1f
    .line 426
    .local v4, "si":Landroid/content/pm/ShortcutInfo;
    if-eqz p5, :cond_3

    #@21
    .line 427
    if-eqz v3, :cond_4

    #@23
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@2a
    move-result v2

    #@2b
    .line 428
    :goto_2
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    #@2e
    move-result v5

    #@2f
    if-nez v5, :cond_6

    #@31
    .line 429
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    #@34
    move-result v5

    #@35
    if-nez v5, :cond_5

    #@37
    .line 430
    new-instance v5, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v6, "Shortcut not pinned: package "

    #@3f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@46
    move-result-object v6

    #@47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v5

    #@4b
    .line 431
    const-string/jumbo v6, ", user="

    #@4e
    .line 430
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v5

    #@52
    .line 431
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    #@55
    move-result v6

    #@56
    .line 430
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59
    move-result-object v5

    #@5a
    .line 431
    const-string/jumbo v6, ", id="

    #@5d
    .line 430
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v5

    #@61
    .line 431
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@64
    move-result-object v6

    #@65
    .line 430
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v5

    #@6d
    invoke-virtual {p1, v5}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    #@70
    .line 420
    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@72
    goto :goto_1

    #@73
    .line 417
    .end local v1    # "i":I
    .end local v4    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    #@76
    move-result v5

    #@77
    invoke-virtual {p1, p5, v5, p6}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    #@7a
    move-result-object v5

    #@7b
    .line 418
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@7e
    move-result-object v6

    #@7f
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    #@82
    move-result v7

    #@83
    .line 417
    invoke-virtual {v5, v6, v7}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;

    #@86
    move-result-object v3

    #@87
    .local v3, "pinnedByCallerSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_0

    #@88
    .line 426
    .end local v3    # "pinnedByCallerSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    .restart local v4    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_3
    const/4 v2, 0x1

    #@89
    .local v2, "isPinnedByCaller":Z
    goto :goto_2

    #@8a
    .line 427
    .end local v2    # "isPinnedByCaller":Z
    :cond_4
    const/4 v2, 0x0

    #@8b
    .restart local v2    # "isPinnedByCaller":Z
    goto :goto_2

    #@8c
    .line 434
    .end local v2    # "isPinnedByCaller":Z
    :cond_5
    if-eqz v2, :cond_1

    #@8e
    .line 438
    :cond_6
    invoke-virtual {v4, p4}, Landroid/content/pm/ShortcutInfo;->clone(I)Landroid/content/pm/ShortcutInfo;

    #@91
    move-result-object v0

    #@92
    .line 441
    .local v0, "clone":Landroid/content/pm/ShortcutInfo;
    if-nez v2, :cond_7

    #@94
    .line 442
    const/4 v5, 0x2

    #@95
    invoke-virtual {v0, v5}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    #@98
    .line 444
    :cond_7
    if-eqz p3, :cond_8

    #@9a
    invoke-interface {p3, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    #@9d
    move-result v5

    #@9e
    if-eqz v5, :cond_1

    #@a0
    .line 445
    :cond_8
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a3
    goto :goto_3

    #@a4
    .line 409
    .end local v0    # "clone":Landroid/content/pm/ShortcutInfo;
    .end local v4    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_9
    return-void
.end method

.method public findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 163
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
    .line 744
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

.method public getApiCallCount(Lcom/android/server/pm/ShortcutService;)I
    .locals 9
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 321
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    #@3
    invoke-virtual {v4, p1}, Lcom/android/server/pm/ShortcutUser;->resetThrottlingIfNeeded(Lcom/android/server/pm/ShortcutService;)V

    #@6
    .line 327
    iget v4, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    #@8
    invoke-virtual {p1, v4}, Lcom/android/server/pm/ShortcutService;->isUidForegroundLocked(I)Z

    #@b
    move-result v4

    #@c
    if-nez v4, :cond_0

    #@e
    .line 328
    iget-wide v4, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    #@10
    .line 329
    iget v6, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    #@12
    invoke-virtual {p1, v6}, Lcom/android/server/pm/ShortcutService;->getUidLastForegroundElapsedTimeLocked(I)J

    #@15
    move-result-wide v6

    #@16
    .line 328
    cmp-long v4, v4, v6

    #@18
    if-gez v4, :cond_1

    #@1a
    .line 330
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    #@1d
    move-result-wide v4

    #@1e
    iput-wide v4, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    #@20
    .line 331
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->resetRateLimiting(Lcom/android/server/pm/ShortcutService;)V

    #@23
    .line 338
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutService;->getLastResetTimeLocked()J

    #@26
    move-result-wide v0

    #@27
    .line 340
    .local v0, "last":J
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    #@2a
    move-result-wide v2

    #@2b
    .line 341
    .local v2, "now":J
    invoke-static {v2, v3}, Lcom/android/server/pm/ShortcutService;->isClockValid(J)Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_2

    #@31
    iget-wide v4, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    #@33
    cmp-long v4, v4, v2

    #@35
    if-lez v4, :cond_2

    #@37
    .line 342
    const-string/jumbo v4, "ShortcutService"

    #@3a
    const-string/jumbo v5, "Clock rewound"

    #@3d
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 344
    iput-wide v2, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    #@42
    .line 345
    iput v8, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    #@44
    .line 346
    iget v4, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    #@46
    return v4

    #@47
    .line 350
    :cond_2
    iget-wide v4, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    #@49
    cmp-long v4, v4, v0

    #@4b
    if-gez v4, :cond_3

    #@4d
    .line 355
    iput v8, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    #@4f
    .line 356
    iput-wide v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    #@51
    .line 358
    :cond_3
    iget v4, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    #@53
    return v4
.end method

.method public getOwnerUserId()I
    .locals 1

    #@0
    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getPackageUid()I
    .locals 1

    #@0
    .prologue
    .line 121
    iget v0, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    #@2
    return v0
.end method

.method public handlePackageUpdated(Lcom/android/server/pm/ShortcutService;I)V
    .locals 6
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "newVersionCode"    # I

    #@0
    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackageInfo;->getVersionCode()I

    #@7
    move-result v3

    #@8
    if-lt v3, p2, :cond_0

    #@a
    .line 461
    return-void

    #@b
    .line 468
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, p2}, Lcom/android/server/pm/ShortcutPackageInfo;->setVersionCode(I)V

    #@12
    .line 470
    const/4 v0, 0x0

    #@13
    .line 471
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@15
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@18
    move-result v3

    #@19
    add-int/lit8 v1, v3, -0x1

    #@1b
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@1d
    .line 472
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@1f
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Landroid/content/pm/ShortcutInfo;

    #@25
    .line 474
    .local v2, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_1

    #@2b
    .line 475
    const/4 v0, 0x1

    #@2c
    .line 476
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    #@2f
    move-result-wide v4

    #@30
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    #@33
    .line 471
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@35
    goto :goto_0

    #@36
    .line 479
    .end local v2    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_2
    if-eqz v0, :cond_3

    #@38
    .line 481
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    #@3f
    move-result v4

    #@40
    invoke-virtual {p1, v3, v4}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    #@43
    .line 458
    :goto_1
    return-void

    #@44
    .line 484
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    #@47
    move-result v3

    #@48
    invoke-virtual {p1, v3}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    #@4b
    goto :goto_1
.end method

.method protected onRestoreBlocked(Lcom/android/server/pm/ShortcutService;)V
    .locals 1
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    #@5
    .line 146
    return-void
.end method

.method protected onRestored(Lcom/android/server/pm/ShortcutService;)V
    .locals 0
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;

    #@0
    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags(Lcom/android/server/pm/ShortcutService;)V

    #@3
    .line 152
    return-void
.end method

.method public refreshPinnedFlags(Lcom/android/server/pm/ShortcutService;)V
    .locals 3
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;

    #@0
    .prologue
    .line 284
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
    .line 285
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
    .line 284
    add-int/lit8 v0, v0, -0x1

    #@18
    goto :goto_0

    #@19
    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    #@1c
    move-result v1

    #@1d
    invoke-virtual {p1, v1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@20
    move-result-object v1

    #@21
    new-instance v2, Lcom/android/server/pm/ShortcutPackage$-void_refreshPinnedFlags_com_android_server_pm_ShortcutService_s_LambdaImpl0;

    #@23
    invoke-direct {v2, p0}, Lcom/android/server/pm/ShortcutPackage$-void_refreshPinnedFlags_com_android_server_pm_ShortcutService_s_LambdaImpl0;-><init>(Lcom/android/server/pm/ShortcutPackage;)V

    #@26
    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    #@29
    .line 311
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans(Lcom/android/server/pm/ShortcutService;)V

    #@2c
    .line 282
    return-void
.end method

.method public resetRateLimiting(Lcom/android/server/pm/ShortcutService;)V
    .locals 2
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 381
    iget v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    #@3
    if-lez v0, :cond_0

    #@5
    .line 382
    iput v1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    #@7
    .line 383
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getOwnerUserId()I

    #@a
    move-result v0

    #@b
    invoke-virtual {p1, v0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    #@e
    .line 377
    :cond_0
    return-void
.end method

.method public resetRateLimitingForCommandLineNoSaving()V
    .locals 2

    #@0
    .prologue
    .line 388
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    #@3
    .line 389
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    #@7
    .line 387
    return-void
.end method

.method public resetThrottling()V
    .locals 1

    #@0
    .prologue
    .line 451
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    #@3
    .line 450
    return-void
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
    .line 555
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@6
    move-result v1

    #@7
    .line 557
    .local v1, "size":I
    if-nez v1, :cond_0

    #@9
    iget v2, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    #@b
    if-nez v2, :cond_0

    #@d
    .line 558
    return-void

    #@e
    .line 561
    :cond_0
    const-string/jumbo v2, "package"

    #@11
    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@14
    .line 563
    const-string/jumbo v2, "name"

    #@17
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-static {p1, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    .line 564
    const-string/jumbo v2, "dynamic-count"

    #@21
    iget v3, p0, Lcom/android/server/pm/ShortcutPackage;->mDynamicShortcutCount:I

    #@23
    int-to-long v4, v3

    #@24
    invoke-static {p1, v2, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@27
    .line 565
    const-string/jumbo v2, "call-count"

    #@2a
    iget v3, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    #@2c
    int-to-long v4, v3

    #@2d
    invoke-static {p1, v2, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@30
    .line 566
    const-string/jumbo v2, "last-reset"

    #@33
    iget-wide v4, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    #@35
    invoke-static {p1, v2, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@38
    .line 567
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2, p1}, Lcom/android/server/pm/ShortcutPackageInfo;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@3f
    .line 569
    const/4 v0, 0x0

    #@40
    .local v0, "j":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@42
    .line 570
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    #@44
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@47
    move-result-object v2

    #@48
    check-cast v2, Landroid/content/pm/ShortcutInfo;

    #@4a
    invoke-static {p1, v2, p2}, Lcom/android/server/pm/ShortcutPackage;->saveShortcut(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/ShortcutInfo;Z)V

    #@4d
    .line 569
    add-int/lit8 v0, v0, 0x1

    #@4f
    goto :goto_0

    #@50
    .line 573
    :cond_1
    const-string/jumbo v2, "package"

    #@53
    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@56
    .line 554
    return-void
.end method

.method public tryApiCall(Lcom/android/server/pm/ShortcutService;)Z
    .locals 2
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;

    #@0
    .prologue
    .line 369
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount(Lcom/android/server/pm/ShortcutService;)I

    #@3
    move-result v0

    #@4
    iget v1, p1, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    #@6
    if-lt v0, v1, :cond_0

    #@8
    .line 370
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 372
    :cond_0
    iget v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    #@c
    add-int/lit8 v0, v0, 0x1

    #@e
    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    #@10
    .line 373
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getOwnerUserId()I

    #@13
    move-result v0

    #@14
    invoke-virtual {p1, v0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    #@17
    .line 374
    const/4 v0, 0x1

    #@18
    return v0
.end method
