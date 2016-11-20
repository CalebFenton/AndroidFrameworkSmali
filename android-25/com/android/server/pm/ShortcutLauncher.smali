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
    .line 76
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
    .line 75
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
    .line 69
    if-eqz p5, :cond_0

    #@2
    .line 68
    .end local p5    # "spi":Lcom/android/server/pm/ShortcutPackageInfo;
    :goto_0
    invoke-direct {p0, p1, p4, p3, p5}, Lcom/android/server/pm/ShortcutPackageItem;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V

    #@5
    .line 63
    new-instance v0, Landroid/util/ArrayMap;

    #@7
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    #@c
    .line 70
    iput p2, p0, Lcom/android/server/pm/ShortcutLauncher;->mOwnerUserId:I

    #@e
    .line 67
    return-void

    #@f
    .line 69
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
    .line 209
    const-string/jumbo v10, "package-name"

    #@3
    .line 208
    invoke-static {p0, v10}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    .line 213
    .local v2, "launcherPackageName":Ljava/lang/String;
    if-eqz p3, :cond_2

    #@9
    move v3, p2

    #@a
    .line 216
    .local v3, "launcherUserId":I
    :goto_0
    new-instance v7, Lcom/android/server/pm/ShortcutLauncher;

    #@c
    invoke-direct {v7, p1, p2, v2, v3}, Lcom/android/server/pm/ShortcutLauncher;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;I)V

    #@f
    .line 219
    .local v7, "ret":Lcom/android/server/pm/ShortcutLauncher;
    const/4 v1, 0x0

    #@10
    .line 220
    .local v1, "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@13
    move-result v4

    #@14
    .line 222
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
    .line 223
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
    .line 224
    :cond_1
    const/4 v10, 0x2

    #@25
    if-ne v9, v10, :cond_0

    #@27
    .line 227
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@2a
    move-result v0

    #@2b
    .line 228
    .local v0, "depth":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@2e
    move-result-object v8

    #@2f
    .line 229
    .local v8, "tag":Ljava/lang/String;
    add-int/lit8 v10, v4, 0x1

    #@31
    if-ne v0, v10, :cond_5

    #@33
    .line 230
    const-string/jumbo v10, "package-info"

    #@36
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v10

    #@3a
    if-eqz v10, :cond_3

    #@3c
    .line 232
    invoke-virtual {v7}, Lcom/android/server/pm/ShortcutLauncher;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    #@3f
    move-result-object v10

    #@40
    invoke-virtual {v10, p0, p3}, Lcom/android/server/pm/ShortcutPackageInfo;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;Z)V

    #@43
    goto :goto_1

    #@44
    .line 214
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
    .line 230
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
    .line 236
    const-string/jumbo v10, "package-name"

    #@58
    .line 235
    invoke-static {p0, v10}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@5b
    move-result-object v5

    #@5c
    .line 237
    .local v5, "packageName":Ljava/lang/String;
    if-eqz p3, :cond_4

    #@5e
    move v6, p2

    #@5f
    .line 240
    .local v6, "packageUserId":I
    :goto_2
    new-instance v1, Landroid/util/ArraySet;

    #@61
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@64
    .line 241
    .local v1, "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v10, v7, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    #@66
    .line 242
    invoke-static {v6, v5}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    #@69
    move-result-object v11

    #@6a
    .line 241
    invoke-virtual {v10, v11, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6d
    goto :goto_1

    #@6e
    .line 239
    .end local v1    # "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v6    # "packageUserId":I
    :cond_4
    const-string/jumbo v10, "package-user"

    #@71
    .line 238
    invoke-static {p0, v10, p2}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@74
    move-result v6

    #@75
    .restart local v6    # "packageUserId":I
    goto :goto_2

    #@76
    .line 247
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "packageUserId":I
    :cond_5
    add-int/lit8 v10, v4, 0x2

    #@78
    if-ne v0, v10, :cond_7

    #@7a
    .line 248
    const-string/jumbo v10, "pin"

    #@7d
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@80
    move-result v10

    #@81
    if-eqz v10, :cond_7

    #@83
    .line 250
    if-nez v1, :cond_6

    #@85
    .line 251
    const-string/jumbo v10, "ShortcutService"

    #@88
    const-string/jumbo v11, "pin in invalid place"

    #@8b
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@8e
    goto :goto_1

    #@8f
    .line 253
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
    .line 259
    :cond_7
    invoke-static {v0, v8}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V

    #@9e
    goto/16 :goto_1

    #@a0
    .line 261
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
    .line 152
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

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 265
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3
    .line 267
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    .line 268
    const-string/jumbo v6, "Launcher: "

    #@9
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c
    .line 269
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    #@f
    move-result-object v6

    #@10
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13
    .line 270
    const-string/jumbo v6, "  Package user: "

    #@16
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19
    .line 271
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageUserId()I

    #@1c
    move-result v6

    #@1d
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@20
    .line 272
    const-string/jumbo v6, "  Owner user: "

    #@23
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26
    .line 273
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getOwnerUserId()I

    #@29
    move-result v6

    #@2a
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    #@2d
    .line 274
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@30
    .line 276
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    #@33
    move-result-object v6

    #@34
    new-instance v7, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    invoke-virtual {v6, p1, v7}, Lcom/android/server/pm/ShortcutPackageInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@4b
    .line 277
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@4e
    .line 279
    iget-object v6, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    #@50
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@53
    move-result v5

    #@54
    .line 280
    .local v5, "size":I
    const/4 v0, 0x0

    #@55
    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    #@57
    .line 281
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@5a
    .line 283
    iget-object v6, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    #@5c
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@5f
    move-result-object v4

    #@60
    check-cast v4, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    #@62
    .line 285
    .local v4, "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@65
    .line 286
    const-string/jumbo v6, "  "

    #@68
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6b
    .line 287
    const-string/jumbo v6, "Package: "

    #@6e
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@71
    .line 288
    iget-object v6, v4, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    #@73
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@76
    .line 289
    const-string/jumbo v6, "  User: "

    #@79
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7c
    .line 290
    iget v6, v4, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    #@7e
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(I)V

    #@81
    .line 292
    iget-object v6, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    #@83
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@86
    move-result-object v2

    #@87
    check-cast v2, Landroid/util/ArraySet;

    #@89
    .line 293
    .local v2, "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@8c
    move-result v1

    #@8d
    .line 295
    .local v1, "idSize":I
    const/4 v3, 0x0

    #@8e
    .local v3, "j":I
    :goto_1
    if-ge v3, v1, :cond_0

    #@90
    .line 296
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@93
    .line 297
    const-string/jumbo v6, "    Pinned: "

    #@96
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@99
    .line 298
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@9c
    move-result-object v6

    #@9d
    check-cast v6, Ljava/lang/String;

    #@9f
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a2
    .line 299
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@a5
    .line 295
    add-int/lit8 v3, v3, 0x1

    #@a7
    goto :goto_1

    #@a8
    .line 280
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@aa
    goto :goto_0

    #@ab
    .line 264
    .end local v1    # "idSize":I
    .end local v2    # "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "j":I
    .end local v4    # "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    :cond_1
    return-void
.end method

.method public dumpCheckin(Z)Lorg/json/JSONObject;
    .locals 1
    .param p1, "clear"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 306
    invoke-super {p0, p1}, Lcom/android/server/pm/ShortcutPackageItem;->dumpCheckin(Z)Lorg/json/JSONObject;

    #@3
    move-result-object v0

    #@4
    .line 310
    .local v0, "result":Lorg/json/JSONObject;
    return-object v0
.end method

.method public ensureVersionInfo()V
    .locals 4

    #@0
    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/server/pm/ShortcutLauncher;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    #@2
    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@4
    .line 157
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageUserId()I

    #@b
    move-result v3

    #@c
    .line 156
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@f
    move-result-object v0

    #@10
    .line 158
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_0

    #@12
    .line 159
    const-string/jumbo v1, "ShortcutService"

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "Package not found: "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 160
    return-void

    #@31
    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutPackageInfo;->updateVersionInfo(Landroid/content/pm/PackageInfo;)V

    #@38
    .line 155
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
    .line 315
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
    .line 81
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
    .line 148
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

.method protected onRestoreBlocked()V
    .locals 6

    #@0
    .prologue
    .line 90
    new-instance v2, Ljava/util/ArrayList;

    #@2
    iget-object v4, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    #@7
    move-result-object v4

    #@8
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@b
    .line 91
    .local v2, "pinnedPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/ShortcutUser$PackageWithUser;>;"
    iget-object v4, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    #@10
    .line 92
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v4

    #@14
    add-int/lit8 v0, v4, -0x1

    #@16
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@18
    .line 93
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    #@1e
    .line 94
    .local v3, "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    iget-object v4, p0, Lcom/android/server/pm/ShortcutLauncher;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    #@20
    iget-object v5, v3, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    #@22
    invoke-virtual {v4, v5}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    #@25
    move-result-object v1

    #@26
    .line 95
    .local v1, "p":Lcom/android/server/pm/ShortcutPackage;
    if-eqz v1, :cond_0

    #@28
    .line 96
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    #@2b
    .line 92
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@2d
    goto :goto_0

    #@2e
    .line 88
    .end local v1    # "p":Lcom/android/server/pm/ShortcutPackage;
    .end local v3    # "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    :cond_1
    return-void
.end method

.method protected onRestored()V
    .locals 0

    #@0
    .prologue
    .line 102
    return-void
.end method

.method public pinShortcuts(ILjava/lang/String;Ljava/util/List;)V
    .locals 9
    .param p1, "packageUserId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 109
    .local p3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/pm/ShortcutLauncher;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    #@2
    invoke-virtual {v8, p2}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    #@5
    move-result-object v4

    #@6
    .line 110
    .local v4, "packageShortcuts":Lcom/android/server/pm/ShortcutPackage;
    if-nez v4, :cond_0

    #@8
    .line 111
    return-void

    #@9
    .line 114
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    #@c
    move-result-object v6

    #@d
    .line 116
    .local v6, "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    invoke-interface {p3}, Ljava/util/List;->size()I

    #@10
    move-result v2

    #@11
    .line 117
    .local v2, "idSize":I
    if-nez v2, :cond_1

    #@13
    .line 118
    iget-object v8, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    #@15
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    .line 140
    :goto_0
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    #@1b
    .line 107
    return-void

    #@1c
    .line 120
    :cond_1
    iget-object v8, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    #@1e
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v5

    #@22
    check-cast v5, Landroid/util/ArraySet;

    #@24
    .line 125
    .local v5, "prevSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v3, Landroid/util/ArraySet;

    #@26
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    #@29
    .line 127
    .local v3, "newSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@2a
    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_5

    #@2c
    .line 128
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    check-cast v1, Ljava/lang/String;

    #@32
    .line 129
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {v4, v1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    #@35
    move-result-object v7

    #@36
    .line 130
    .local v7, "si":Landroid/content/pm/ShortcutInfo;
    if-nez v7, :cond_3

    #@38
    .line 127
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 133
    :cond_3
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    #@3e
    move-result v8

    #@3f
    if-nez v8, :cond_4

    #@41
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    #@44
    move-result v8

    #@45
    if-nez v8, :cond_4

    #@47
    .line 134
    if-eqz v5, :cond_2

    #@49
    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@4c
    move-result v8

    #@4d
    .line 133
    if-eqz v8, :cond_2

    #@4f
    .line 135
    :cond_4
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@52
    goto :goto_2

    #@53
    .line 138
    .end local v1    # "id":Ljava/lang/String;
    .end local v7    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_5
    iget-object v8, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    #@55
    invoke-virtual {v8, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@58
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
    .line 171
    iget-object v6, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@6
    move-result v5

    #@7
    .line 172
    .local v5, "size":I
    if-nez v5, :cond_0

    #@9
    .line 173
    return-void

    #@a
    .line 176
    :cond_0
    const-string/jumbo v6, "launcher-pins"

    #@d
    invoke-interface {p1, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@10
    .line 177
    const-string/jumbo v6, "package-name"

    #@13
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    #@16
    move-result-object v7

    #@17
    invoke-static {p1, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@1a
    .line 178
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
    .line 179
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    #@28
    move-result-object v6

    #@29
    invoke-virtual {v6, p1}, Lcom/android/server/pm/ShortcutPackageInfo;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@2c
    .line 181
    const/4 v0, 0x0

    #@2d
    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_3

    #@2f
    .line 182
    iget-object v6, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    #@31
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@34
    move-result-object v4

    #@35
    check-cast v4, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    #@37
    .line 184
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
    .line 181
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@43
    goto :goto_0

    #@44
    .line 188
    :cond_1
    const-string/jumbo v6, "package"

    #@47
    invoke-interface {p1, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4a
    .line 189
    const-string/jumbo v6, "package-name"

    #@4d
    iget-object v7, v4, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    #@4f
    invoke-static {p1, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@52
    .line 190
    const-string/jumbo v6, "package-user"

    #@55
    iget v7, v4, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    #@57
    int-to-long v8, v7

    #@58
    invoke-static {p1, v6, v8, v9}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@5b
    .line 192
    iget-object v6, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    #@5d
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@60
    move-result-object v2

    #@61
    check-cast v2, Landroid/util/ArraySet;

    #@63
    .line 193
    .local v2, "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@66
    move-result v1

    #@67
    .line 194
    .local v1, "idSize":I
    const/4 v3, 0x0

    #@68
    .local v3, "j":I
    :goto_2
    if-ge v3, v1, :cond_2

    #@6a
    .line 195
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
    .line 194
    add-int/lit8 v3, v3, 0x1

    #@78
    goto :goto_2

    #@79
    .line 197
    :cond_2
    const-string/jumbo v6, "package"

    #@7c
    invoke-interface {p1, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7f
    goto :goto_1

    #@80
    .line 200
    .end local v1    # "idSize":I
    .end local v2    # "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "j":I
    .end local v4    # "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    :cond_3
    const-string/jumbo v6, "launcher-pins"

    #@83
    invoke-interface {p1, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@86
    .line 170
    return-void
.end method
