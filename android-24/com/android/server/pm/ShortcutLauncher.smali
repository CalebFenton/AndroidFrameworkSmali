.class Lcom/android/server/pm/ShortcutLauncher;
.super Lcom/android/server/pm/ShortcutPackageItem;
.source "ShortcutLauncher.java"


# static fields
.field private static final ATTR_LAUNCHER_USER_ID:Ljava/lang/String; = "launcher-user"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "package-name"

.field private static final ATTR_PACKAGE_USER_ID:Ljava/lang/String; = "package-user"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_PIN:Ljava/lang/String; = "pin"

.field static final TAG_ROOT:Ljava/lang/String; = "launcher-pins"


# instance fields
.field private final mOwnerUserId:I

.field private final mPinnedShortcuts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/server/pm/ShortcutUser$PackageWithUser;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;I)V
    .locals 6
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "ownerUserId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "launcherUserId"    # I

    #@0
    .prologue
    .line 71
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShortcutLauncher;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;ILcom/android/server/pm/ShortcutPackageInfo;)V

    #@9
    .line 70
    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;ILcom/android/server/pm/ShortcutPackageInfo;)V
    .locals 1
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "ownerUserId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "launcherUserId"    # I
    .param p5, "spi"    # Lcom/android/server/pm/ShortcutPackageInfo;

    #@0
    .prologue
    .line 64
    if-eqz p5, :cond_0

    #@2
    .line 63
    .end local p5    # "spi":Lcom/android/server/pm/ShortcutPackageInfo;
    :goto_0
    invoke-direct {p0, p1, p4, p3, p5}, Lcom/android/server/pm/ShortcutPackageItem;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V

    #@5
    .line 58
    new-instance v0, Landroid/util/ArrayMap;

    #@7
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    #@c
    .line 65
    iput p2, p0, Lcom/android/server/pm/ShortcutLauncher;->mOwnerUserId:I

    #@e
    .line 62
    return-void

    #@f
    .line 64
    .restart local p5    # "spi":Lcom/android/server/pm/ShortcutPackageInfo;
    :cond_0
    invoke-static {}, Lcom/android/server/pm/ShortcutPackageInfo;->newEmpty()Lcom/android/server/pm/ShortcutPackageInfo;

    #@12
    move-result-object p5

    #@13
    goto :goto_0
.end method

.method public static loadFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/ShortcutUser;IZ)Lcom/android/server/pm/ShortcutLauncher;
    .locals 12
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "ownerUserId"    # I
    .param p3, "fromBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 188
    const-string/jumbo v10, "package-name"

    #@3
    .line 187
    invoke-static {p0, v10}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    .line 192
    .local v2, "launcherPackageName":Ljava/lang/String;
    if-eqz p3, :cond_2

    #@9
    move v3, p2

    #@a
    .line 195
    .local v3, "launcherUserId":I
    :goto_0
    new-instance v7, Lcom/android/server/pm/ShortcutLauncher;

    #@c
    invoke-direct {v7, p1, v3, v2, v3}, Lcom/android/server/pm/ShortcutLauncher;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;I)V

    #@f
    .line 198
    .local v7, "ret":Lcom/android/server/pm/ShortcutLauncher;
    const/4 v1, 0x0

    #@10
    .line 199
    .local v1, "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@13
    move-result v4

    #@14
    .line 201
    .end local v1    # "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v4, "outerDepth":I
    :cond_0
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@17
    move-result v9

    #@18
    .local v9, "type":I
    const/4 v10, 0x1

    #@19
    if-eq v9, v10, :cond_8

    #@1b
    .line 202
    const/4 v10, 0x3

    #@1c
    if-ne v9, v10, :cond_1

    #@1e
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@21
    move-result v10

    #@22
    if-le v10, v4, :cond_8

    #@24
    .line 203
    :cond_1
    const/4 v10, 0x2

    #@25
    if-ne v9, v10, :cond_0

    #@27
    .line 206
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@2a
    move-result v0

    #@2b
    .line 207
    .local v0, "depth":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@2e
    move-result-object v8

    #@2f
    .line 208
    .local v8, "tag":Ljava/lang/String;
    add-int/lit8 v10, v4, 0x1

    #@31
    if-ne v0, v10, :cond_5

    #@33
    .line 209
    const-string/jumbo v10, "package-info"

    #@36
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v10

    #@3a
    if-eqz v10, :cond_3

    #@3c
    .line 211
    invoke-virtual {v7}, Lcom/android/server/pm/ShortcutLauncher;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    #@3f
    move-result-object v10

    #@40
    invoke-virtual {v10, p0, p3}, Lcom/android/server/pm/ShortcutPackageInfo;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;Z)V

    #@43
    goto :goto_1

    #@44
    .line 193
    .end local v0    # "depth":I
    .end local v3    # "launcherUserId":I
    .end local v4    # "outerDepth":I
    .end local v7    # "ret":Lcom/android/server/pm/ShortcutLauncher;
    .end local v8    # "tag":Ljava/lang/String;
    .end local v9    # "type":I
    :cond_2
    const-string/jumbo v10, "launcher-user"

    #@47
    invoke-static {p0, v10, p2}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@4a
    move-result v3

    #@4b
    .restart local v3    # "launcherUserId":I
    goto :goto_0

    #@4c
    .line 209
    .restart local v0    # "depth":I
    .restart local v4    # "outerDepth":I
    .restart local v7    # "ret":Lcom/android/server/pm/ShortcutLauncher;
    .restart local v8    # "tag":Ljava/lang/String;
    .restart local v9    # "type":I
    :cond_3
    const-string/jumbo v10, "package"

    #@4f
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v10

    #@53
    if-eqz v10, :cond_5

    #@55
    .line 215
    const-string/jumbo v10, "package-name"

    #@58
    .line 214
    invoke-static {p0, v10}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@5b
    move-result-object v5

    #@5c
    .line 216
    .local v5, "packageName":Ljava/lang/String;
    if-eqz p3, :cond_4

    #@5e
    move v6, p2

    #@5f
    .line 219
    .local v6, "packageUserId":I
    :goto_2
    new-instance v1, Landroid/util/ArraySet;

    #@61
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@64
    .line 220
    .local v1, "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v10, v7, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    #@66
    .line 221
    invoke-static {v6, v5}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    #@69
    move-result-object v11

    #@6a
    .line 220
    invoke-virtual {v10, v11, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6d
    goto :goto_1

    #@6e
    .line 218
    .end local v1    # "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v6    # "packageUserId":I
    :cond_4
    const-string/jumbo v10, "package-user"

    #@71
    .line 217
    invoke-static {p0, v10, p2}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@74
    move-result v6

    #@75
    .restart local v6    # "packageUserId":I
    goto :goto_2

    #@76
    .line 226
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "packageUserId":I
    :cond_5
    add-int/lit8 v10, v4, 0x2

    #@78
    if-ne v0, v10, :cond_7

    #@7a
    .line 227
    const-string/jumbo v10, "pin"

    #@7d
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@80
    move-result v10

    #@81
    if-eqz v10, :cond_7

    #@83
    .line 229
    if-nez v1, :cond_6

    #@85
    .line 230
    const-string/jumbo v10, "ShortcutService"

    #@88
    const-string/jumbo v11, "pin in invalid place"

    #@8b
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@8e
    goto :goto_1

    #@8f
    .line 232
    :cond_6
    const-string/jumbo v10, "value"

    #@92
    invoke-static {p0, v10}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@95
    move-result-object v10

    #@96
    invoke-virtual {v1, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@99
    goto/16 :goto_1

    #@9b
    .line 238
    :cond_7
    invoke-static {v0, v8}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V

    #@9e
    goto/16 :goto_1

    #@a0
    .line 240
    .end local v0    # "depth":I
    .end local v8    # "tag":Ljava/lang/String;
    :cond_8
    return-object v7
.end method


# virtual methods
.method cleanUpPackage(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    #@2
    invoke-static {p2, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public dump(Lcom/android/server/pm/ShortcutService;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 9
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 244
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@3
    .line 246
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    .line 247
    const-string/jumbo v6, "Launcher: "

    #@9
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c
    .line 248
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    #@f
    move-result-object v6

    #@10
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13
    .line 249
    const-string/jumbo v6, "  Package user: "

    #@16
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19
    .line 250
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageUserId()I

    #@1c
    move-result v6

    #@1d
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(I)V

    #@20
    .line 251
    const-string/jumbo v6, "  Owner user: "

    #@23
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26
    .line 252
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getOwnerUserId()I

    #@29
    move-result v6

    #@2a
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(I)V

    #@2d
    .line 253
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@30
    .line 255
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    #@33
    move-result-object v6

    #@34
    new-instance v7, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v7

    #@3d
    const-string/jumbo v8, "  "

    #@40
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v7

    #@44
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v7

    #@48
    invoke-virtual {v6, p1, p2, v7}, Lcom/android/server/pm/ShortcutPackageInfo;->dump(Lcom/android/server/pm/ShortcutService;Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@4b
    .line 256
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@4e
    .line 258
    iget-object v6, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    #@50
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@53
    move-result v5

    #@54
    .line 259
    .local v5, "size":I
    const/4 v0, 0x0

    #@55
    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    #@57
    .line 260
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@5a
    .line 262
    iget-object v6, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    #@5c
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@5f
    move-result-object v4

    #@60
    check-cast v4, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    #@62
    .line 264
    .local v4, "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@65
    .line 265
    const-string/jumbo v6, "  "

    #@68
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6b
    .line 266
    const-string/jumbo v6, "Package: "

    #@6e
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@71
    .line 267
    iget-object v6, v4, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    #@73
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@76
    .line 268
    const-string/jumbo v6, "  User: "

    #@79
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7c
    .line 269
    iget v6, v4, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    #@7e
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(I)V

    #@81
    .line 271
    iget-object v6, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    #@83
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@86
    move-result-object v2

    #@87
    check-cast v2, Landroid/util/ArraySet;

    #@89
    .line 272
    .local v2, "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@8c
    move-result v1

    #@8d
    .line 274
    .local v1, "idSize":I
    const/4 v3, 0x0

    #@8e
    .local v3, "j":I
    :goto_1
    if-ge v3, v1, :cond_0

    #@90
    .line 275
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@93
    .line 276
    const-string/jumbo v6, "    Pinned: "

    #@96
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@99
    .line 277
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@9c
    move-result-object v6

    #@9d
    check-cast v6, Ljava/lang/String;

    #@9f
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a2
    .line 278
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@a5
    .line 274
    add-int/lit8 v3, v3, 0x1

    #@a7
    goto :goto_1

    #@a8
    .line 259
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@aa
    goto :goto_0

    #@ab
    .line 243
    .end local v1    # "idSize":I
    .end local v2    # "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "j":I
    .end local v4    # "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    :cond_1
    return-void
.end method

.method getAllPinnedShortcutsForTest(Ljava/lang/String;I)Landroid/util/ArraySet;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 285
    new-instance v1, Landroid/util/ArraySet;

    #@2
    iget-object v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    #@4
    invoke-static {p2, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/util/ArraySet;

    #@e
    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    #@11
    return-object v1
.end method

.method public getOwnerUserId()I
    .locals 1

    #@0
    .prologue
    .line 76
    iget v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mOwnerUserId:I

    #@2
    return v0
.end method

.method public getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    #@2
    invoke-static {p2, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/util/ArraySet;

    #@c
    return-object v0
.end method

.method protected onRestoreBlocked(Lcom/android/server/pm/ShortcutService;)V
    .locals 5
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;

    #@0
    .prologue
    .line 85
    new-instance v1, Ljava/util/ArrayList;

    #@2
    iget-object v3, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    #@7
    move-result-object v3

    #@8
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@b
    .line 86
    .local v1, "pinnedPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/ShortcutUser$PackageWithUser;>;"
    iget-object v3, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    #@10
    .line 87
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v3

    #@14
    add-int/lit8 v0, v3, -0x1

    #@16
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@18
    .line 88
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    #@1e
    .line 89
    .local v2, "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    iget-object v3, v2, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    #@20
    iget v4, v2, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    #@22
    invoke-virtual {p1, v3, v4}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3, p1}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags(Lcom/android/server/pm/ShortcutService;)V

    #@29
    .line 87
    add-int/lit8 v0, v0, -0x1

    #@2b
    goto :goto_0

    #@2c
    .line 83
    .end local v2    # "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    :cond_0
    return-void
.end method

.method protected onRestored(Lcom/android/server/pm/ShortcutService;)V
    .locals 0
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;

    #@0
    .prologue
    .line 95
    return-void
.end method

.method public pinShortcuts(Lcom/android/server/pm/ShortcutService;ILjava/lang/String;Ljava/util/List;)V
    .locals 9
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "packageUserId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/ShortcutService;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 102
    .local p4, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1, p3, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    #@3
    move-result-object v4

    #@4
    .line 104
    .local v4, "packageShortcuts":Lcom/android/server/pm/ShortcutPackage;
    invoke-static {p2, p3}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    #@7
    move-result-object v6

    #@8
    .line 106
    .local v6, "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    invoke-interface {p4}, Ljava/util/List;->size()I

    #@b
    move-result v2

    #@c
    .line 107
    .local v2, "idSize":I
    if-nez v2, :cond_0

    #@e
    .line 108
    iget-object v8, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    #@10
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 129
    :goto_0
    invoke-virtual {v4, p1}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags(Lcom/android/server/pm/ShortcutService;)V

    #@16
    .line 100
    return-void

    #@17
    .line 110
    :cond_0
    iget-object v8, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    #@19
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v5

    #@1d
    check-cast v5, Landroid/util/ArraySet;

    #@1f
    .line 115
    .local v5, "prevSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v3, Landroid/util/ArraySet;

    #@21
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    #@24
    .line 117
    .local v3, "newSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@25
    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_4

    #@27
    .line 118
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v1

    #@2b
    check-cast v1, Ljava/lang/String;

    #@2d
    .line 119
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {v4, v1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    #@30
    move-result-object v7

    #@31
    .line 120
    .local v7, "si":Landroid/content/pm/ShortcutInfo;
    if-nez v7, :cond_2

    #@33
    .line 117
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@35
    goto :goto_1

    #@36
    .line 123
    :cond_2
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    #@39
    move-result v8

    #@3a
    if-nez v8, :cond_3

    #@3c
    if-eqz v5, :cond_1

    #@3e
    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@41
    move-result v8

    #@42
    if-eqz v8, :cond_1

    #@44
    .line 124
    :cond_3
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@47
    goto :goto_2

    #@48
    .line 127
    .end local v1    # "id":Ljava/lang/String;
    .end local v7    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_4
    iget-object v8, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    #@4a
    invoke-virtual {v8, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4d
    goto :goto_0
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 11
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 150
    iget-object v6, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@6
    move-result v5

    #@7
    .line 151
    .local v5, "size":I
    if-nez v5, :cond_0

    #@9
    .line 152
    return-void

    #@a
    .line 155
    :cond_0
    const-string/jumbo v6, "launcher-pins"

    #@d
    invoke-interface {p1, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@10
    .line 156
    const-string/jumbo v6, "package-name"

    #@13
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    #@16
    move-result-object v7

    #@17
    invoke-static {p1, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 157
    const-string/jumbo v6, "launcher-user"

    #@1d
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageUserId()I

    #@20
    move-result v7

    #@21
    int-to-long v8, v7

    #@22
    invoke-static {p1, v6, v8, v9}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@25
    .line 158
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    #@28
    move-result-object v6

    #@29
    invoke-virtual {v6, p1}, Lcom/android/server/pm/ShortcutPackageInfo;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@2c
    .line 160
    const/4 v0, 0x0

    #@2d
    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_3

    #@2f
    .line 161
    iget-object v6, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    #@31
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@34
    move-result-object v4

    #@35
    check-cast v4, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    #@37
    .line 163
    .local v4, "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    if-eqz p2, :cond_1

    #@39
    iget v6, v4, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    #@3b
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getOwnerUserId()I

    #@3e
    move-result v7

    #@3f
    if-eq v6, v7, :cond_1

    #@41
    .line 160
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@43
    goto :goto_0

    #@44
    .line 167
    :cond_1
    const-string/jumbo v6, "package"

    #@47
    invoke-interface {p1, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4a
    .line 168
    const-string/jumbo v6, "package-name"

    #@4d
    iget-object v7, v4, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    #@4f
    invoke-static {p1, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@52
    .line 169
    const-string/jumbo v6, "package-user"

    #@55
    iget v7, v4, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    #@57
    int-to-long v8, v7

    #@58
    invoke-static {p1, v6, v8, v9}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@5b
    .line 171
    iget-object v6, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    #@5d
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@60
    move-result-object v2

    #@61
    check-cast v2, Landroid/util/ArraySet;

    #@63
    .line 172
    .local v2, "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@66
    move-result v1

    #@67
    .line 173
    .local v1, "idSize":I
    const/4 v3, 0x0

    #@68
    .local v3, "j":I
    :goto_2
    if-ge v3, v1, :cond_2

    #@6a
    .line 174
    const-string/jumbo v7, "pin"

    #@6d
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@70
    move-result-object v6

    #@71
    check-cast v6, Ljava/lang/String;

    #@73
    invoke-static {p1, v7, v6}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@76
    .line 173
    add-int/lit8 v3, v3, 0x1

    #@78
    goto :goto_2

    #@79
    .line 176
    :cond_2
    const-string/jumbo v6, "package"

    #@7c
    invoke-interface {p1, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7f
    goto :goto_1

    #@80
    .line 179
    .end local v1    # "idSize":I
    .end local v2    # "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "j":I
    .end local v4    # "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    :cond_3
    const-string/jumbo v6, "launcher-pins"

    #@83
    invoke-interface {p1, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@86
    .line 149
    return-void
.end method
