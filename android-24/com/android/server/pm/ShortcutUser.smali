.class Lcom/android/server/pm/ShortcutUser;
.super Ljava/lang/Object;
.source "ShortcutUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShortcutUser$-void_attemptToRestoreIfNeededAndSave_com_android_server_pm_ShortcutService_s_java_lang_String_packageName_int_packageUserId_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutUser$-void_forPackageItem_java_lang_String_packageName_int_packageUserId_java_util_function_Consumer_callback_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutUser$-void_resetThrottlingIfNeeded_com_android_server_pm_ShortcutService_s_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    }
.end annotation


# static fields
.field private static final ATTR_KNOWN_LOCALE_CHANGE_SEQUENCE_NUMBER:Ljava/lang/String; = "locale-seq-no"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_LAUNCHER:Ljava/lang/String; = "launcher"

.field static final TAG_ROOT:Ljava/lang/String; = "user"


# instance fields
.field private mKnownLocaleChangeSequenceNumber:J

.field private mLauncherComponent:Landroid/content/ComponentName;

.field private final mLaunchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/server/pm/ShortcutUser$PackageWithUser;",
            "Lcom/android/server/pm/ShortcutLauncher;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/ShortcutPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackagesFromUid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/ShortcutPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method static synthetic -com_android_server_pm_ShortcutUser_lambda$1(ILjava/lang/String;Ljava/util/function/Consumer;Lcom/android/server/pm/ShortcutPackageItem;)V
    .locals 1
    .param p0, "packageUserId"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/util/function/Consumer;
    .param p3, "spi"    # Lcom/android/server/pm/ShortcutPackageItem;

    #@0
    .prologue
    .line 190
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    #@3
    move-result v0

    #@4
    if-ne v0, p0, :cond_0

    #@6
    .line 191
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    .line 190
    if-eqz v0, :cond_0

    #@10
    .line 192
    invoke-interface {p2, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@13
    .line 0
    :cond_0
    return-void
.end method

.method static synthetic -com_android_server_pm_ShortcutUser_lambda$2(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutPackage;)V
    .locals 0
    .param p0, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "p"    # Lcom/android/server/pm/ShortcutPackage;

    #@0
    .prologue
    .line 209
    invoke-virtual {p1, p0}, Lcom/android/server/pm/ShortcutPackage;->resetRateLimiting(Lcom/android/server/pm/ShortcutService;)V

    #@3
    .line 0
    return-void
.end method

.method static synthetic -com_android_server_pm_ShortcutUser_lambda$3(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutPackageItem;)V
    .locals 0
    .param p0, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "spi"    # Lcom/android/server/pm/ShortcutPackageItem;

    #@0
    .prologue
    .line 229
    invoke-virtual {p1, p0}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;)V

    #@3
    .line 0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 93
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    #@a
    .line 95
    new-instance v0, Landroid/util/SparseArray;

    #@c
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackagesFromUid:Landroid/util/SparseArray;

    #@11
    .line 97
    new-instance v0, Landroid/util/ArrayMap;

    #@13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    #@18
    .line 105
    iput p1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    #@1a
    .line 104
    return-void
.end method

.method private dumpDirectorySize(Lcom/android/server/pm/ShortcutService;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/io/File;)V
    .locals 10
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/io/File;

    #@0
    .prologue
    .line 367
    const/4 v2, 0x0

    #@1
    .line 368
    .local v2, "numFiles":I
    const-wide/16 v4, 0x0

    #@3
    .line 369
    .local v4, "size":J
    invoke-virtual {p4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@6
    move-result-object v1

    #@7
    .line 370
    .local v1, "children":[Ljava/io/File;
    if-eqz v1, :cond_2

    #@9
    .line 371
    invoke-virtual {p4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@c
    move-result-object v6

    #@d
    const/4 v3, 0x0

    #@e
    array-length v7, v6

    #@f
    :goto_0
    if-ge v3, v7, :cond_2

    #@11
    aget-object v0, v6, v3

    #@13
    .line 372
    .local v0, "child":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    #@16
    move-result v8

    #@17
    if-eqz v8, :cond_1

    #@19
    .line 373
    add-int/lit8 v2, v2, 0x1

    #@1b
    .line 374
    invoke-virtual {v0}, Ljava/io/File;->length()J

    #@1e
    move-result-wide v8

    #@1f
    add-long/2addr v4, v8

    #@20
    .line 371
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@22
    goto :goto_0

    #@23
    .line 375
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@26
    move-result v8

    #@27
    if-eqz v8, :cond_0

    #@29
    .line 376
    new-instance v8, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v8

    #@32
    const-string/jumbo v9, "  "

    #@35
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v8

    #@39
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v8

    #@3d
    invoke-direct {p0, p1, p2, v8, v0}, Lcom/android/server/pm/ShortcutUser;->dumpDirectorySize(Lcom/android/server/pm/ShortcutService;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/io/File;)V

    #@40
    goto :goto_1

    #@41
    .line 380
    .end local v0    # "child":Ljava/io/File;
    :cond_2
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@44
    .line 381
    const-string/jumbo v3, "Path: "

    #@47
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4a
    .line 382
    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@51
    .line 383
    const-string/jumbo v3, "/ has "

    #@54
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@57
    .line 384
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    #@5a
    .line 385
    const-string/jumbo v3, " files, size="

    #@5d
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60
    .line 386
    invoke-virtual {p2, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@63
    .line 387
    const-string/jumbo v3, " ("

    #@66
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@69
    .line 388
    iget-object v3, p1, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    #@6b
    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    #@6e
    move-result-object v3

    #@6f
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@72
    .line 389
    const-string/jumbo v3, ")"

    #@75
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@78
    .line 366
    return-void
.end method

.method public static loadFromXml(Lcom/android/server/pm/ShortcutService;Lorg/xmlpull/v1/XmlPullParser;IZ)Lcom/android/server/pm/ShortcutUser;
    .locals 8
    .param p0, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .param p3, "fromBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 275
    new-instance v2, Lcom/android/server/pm/ShortcutUser;

    #@2
    invoke-direct {v2, p2}, Lcom/android/server/pm/ShortcutUser;-><init>(I)V

    #@5
    .line 278
    .local v2, "ret":Lcom/android/server/pm/ShortcutUser;
    const-string/jumbo v6, "locale-seq-no"

    #@8
    .line 277
    invoke-static {p1, v6}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@b
    move-result-wide v6

    #@c
    iput-wide v6, v2, Lcom/android/server/pm/ShortcutUser;->mKnownLocaleChangeSequenceNumber:J

    #@e
    .line 280
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@11
    move-result v1

    #@12
    .line 282
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@15
    move-result v5

    #@16
    .local v5, "type":I
    const/4 v6, 0x1

    #@17
    if-eq v5, v6, :cond_5

    #@19
    .line 283
    const/4 v6, 0x3

    #@1a
    if-ne v5, v6, :cond_1

    #@1c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@1f
    move-result v6

    #@20
    if-le v6, v1, :cond_5

    #@22
    .line 284
    :cond_1
    const/4 v6, 0x2

    #@23
    if-ne v5, v6, :cond_0

    #@25
    .line 287
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@28
    move-result v0

    #@29
    .line 288
    .local v0, "depth":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    .line 290
    .local v4, "tag":Ljava/lang/String;
    add-int/lit8 v6, v1, 0x1

    #@2f
    if-ne v0, v6, :cond_4

    #@31
    .line 291
    const-string/jumbo v6, "launcher"

    #@34
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v6

    #@38
    if-eqz v6, :cond_2

    #@3a
    .line 294
    const-string/jumbo v6, "value"

    #@3d
    .line 293
    invoke-static {p1, v6}, Lcom/android/server/pm/ShortcutService;->parseComponentNameAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    #@40
    move-result-object v6

    #@41
    iput-object v6, v2, Lcom/android/server/pm/ShortcutUser;->mLauncherComponent:Landroid/content/ComponentName;

    #@43
    goto :goto_0

    #@44
    .line 291
    :cond_2
    const-string/jumbo v6, "package"

    #@47
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v6

    #@4b
    if-eqz v6, :cond_3

    #@4d
    .line 298
    invoke-static {p0, v2, p1, p3}, Lcom/android/server/pm/ShortcutPackage;->loadFromXml(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Lorg/xmlpull/v1/XmlPullParser;Z)Lcom/android/server/pm/ShortcutPackage;

    #@50
    move-result-object v3

    #@51
    .line 302
    .local v3, "shortcuts":Lcom/android/server/pm/ShortcutPackage;
    iget-object v6, v2, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    #@53
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@56
    move-result-object v7

    #@57
    invoke-virtual {v6, v7, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5a
    goto :goto_0

    #@5b
    .line 291
    .end local v3    # "shortcuts":Lcom/android/server/pm/ShortcutPackage;
    :cond_3
    const-string/jumbo v6, "launcher-pins"

    #@5e
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v6

    #@62
    if-eqz v6, :cond_4

    #@64
    .line 308
    invoke-static {p1, v2, p2, p3}, Lcom/android/server/pm/ShortcutLauncher;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/ShortcutUser;IZ)Lcom/android/server/pm/ShortcutLauncher;

    #@67
    move-result-object v6

    #@68
    .line 307
    invoke-virtual {v2, v6}, Lcom/android/server/pm/ShortcutUser;->addLauncher(Lcom/android/server/pm/ShortcutLauncher;)V

    #@6b
    goto :goto_0

    #@6c
    .line 313
    :cond_4
    invoke-static {v0, v4}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V

    #@6f
    goto :goto_0

    #@70
    .line 315
    .end local v0    # "depth":I
    .end local v4    # "tag":Ljava/lang/String;
    :cond_5
    return-object v2
.end method

.method private saveShortcutPackageItem(Lcom/android/server/pm/ShortcutService;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/ShortcutPackageItem;Z)V
    .locals 2
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p3, "spi"    # Lcom/android/server/pm/ShortcutPackageItem;
    .param p4, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 262
    if-eqz p4, :cond_1

    #@2
    .line 263
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    #@9
    move-result v1

    #@a
    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->shouldBackupApp(Ljava/lang/String;I)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_0

    #@10
    .line 264
    return-void

    #@11
    .line 266
    :cond_0
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    #@14
    move-result v0

    #@15
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutPackageItem;->getOwnerUserId()I

    #@18
    move-result v1

    #@19
    if-eq v0, v1, :cond_1

    #@1b
    .line 267
    return-void

    #@1c
    .line 270
    :cond_1
    invoke-virtual {p3, p2, p4}, Lcom/android/server/pm/ShortcutPackageItem;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    #@1f
    .line 261
    return-void
.end method


# virtual methods
.method public addLauncher(Lcom/android/server/pm/ShortcutLauncher;)V
    .locals 3
    .param p1, "launcher"    # Lcom/android/server/pm/ShortcutLauncher;

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutLauncher;->getPackageUserId()I

    #@5
    move-result v1

    #@6
    .line 136
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    .line 135
    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 134
    return-void
.end method

.method public attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .locals 1
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "packageUserId"    # I

    #@0
    .prologue
    .line 228
    new-instance v0, Lcom/android/server/pm/ShortcutUser$-void_attemptToRestoreIfNeededAndSave_com_android_server_pm_ShortcutService_s_java_lang_String_packageName_int_packageUserId_LambdaImpl0;

    #@2
    invoke-direct {v0, p1}, Lcom/android/server/pm/ShortcutUser$-void_attemptToRestoreIfNeededAndSave_com_android_server_pm_ShortcutService_s_java_lang_String_packageName_int_packageUserId_LambdaImpl0;-><init>(Lcom/android/server/pm/ShortcutService;)V

    #@5
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/pm/ShortcutUser;->forPackageItem(Ljava/lang/String;ILjava/util/function/Consumer;)V

    #@8
    .line 227
    return-void
.end method

.method public dump(Lcom/android/server/pm/ShortcutService;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 337
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    .line 338
    const-string/jumbo v1, "User: "

    #@6
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 339
    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    #@b
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    #@e
    .line 340
    const-string/jumbo v1, "  Known locale seq#: "

    #@11
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    .line 341
    iget-wide v2, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocaleChangeSequenceNumber:J

    #@16
    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    #@19
    .line 342
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@1c
    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    const-string/jumbo v2, "  "

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object p3

    #@34
    .line 346
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@37
    .line 347
    const-string/jumbo v1, "Default launcher: "

    #@3a
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d
    .line 348
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mLauncherComponent:Landroid/content/ComponentName;

    #@3f
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@42
    .line 349
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@45
    .line 351
    const/4 v0, 0x0

    #@46
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    #@48
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    #@4b
    move-result v1

    #@4c
    if-ge v0, v1, :cond_0

    #@4e
    .line 352
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    #@50
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@53
    move-result-object v1

    #@54
    check-cast v1, Lcom/android/server/pm/ShortcutLauncher;

    #@56
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/pm/ShortcutLauncher;->dump(Lcom/android/server/pm/ShortcutService;Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@59
    .line 351
    add-int/lit8 v0, v0, 0x1

    #@5b
    goto :goto_0

    #@5c
    .line 355
    :cond_0
    const/4 v0, 0x0

    #@5d
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    #@5f
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    #@62
    move-result v1

    #@63
    if-ge v0, v1, :cond_1

    #@65
    .line 356
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    #@67
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@6a
    move-result-object v1

    #@6b
    check-cast v1, Lcom/android/server/pm/ShortcutPackage;

    #@6d
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/pm/ShortcutPackage;->dump(Lcom/android/server/pm/ShortcutService;Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@70
    .line 355
    add-int/lit8 v0, v0, 0x1

    #@72
    goto :goto_1

    #@73
    .line 359
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@76
    .line 360
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@79
    .line 361
    const-string/jumbo v1, "Bitmap directories: "

    #@7c
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7f
    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v1

    #@88
    const-string/jumbo v2, "  "

    #@8b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v1

    #@8f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v1

    #@93
    iget v2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    #@95
    invoke-virtual {p1, v2}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    #@98
    move-result-object v2

    #@99
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/server/pm/ShortcutUser;->dumpDirectorySize(Lcom/android/server/pm/ShortcutService;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/io/File;)V

    #@9c
    .line 336
    return-void
.end method

.method public forAllLaunchers(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Lcom/android/server/pm/ShortcutLauncher;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 176
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Lcom/android/server/pm/ShortcutLauncher;>;"
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@5
    move-result v1

    #@6
    .line 177
    .local v1, "size":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@9
    .line 178
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@12
    .line 177
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 175
    :cond_0
    return-void
.end method

.method public forAllPackageItems(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Lcom/android/server/pm/ShortcutPackageItem;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 183
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Lcom/android/server/pm/ShortcutPackageItem;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    #@3
    .line 184
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    #@6
    .line 182
    return-void
.end method

.method public forAllPackages(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Lcom/android/server/pm/ShortcutPackage;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 169
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Lcom/android/server/pm/ShortcutPackage;>;"
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@5
    move-result v1

    #@6
    .line 170
    .local v1, "size":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@9
    .line 171
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@12
    .line 170
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 168
    :cond_0
    return-void
.end method

.method public forPackageItem(Ljava/lang/String;ILjava/util/function/Consumer;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer",
            "<",
            "Lcom/android/server/pm/ShortcutPackageItem;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 189
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/ShortcutPackageItem;>;"
    new-instance v0, Lcom/android/server/pm/ShortcutUser$-void_forPackageItem_java_lang_String_packageName_int_packageUserId_java_util_function_Consumer_callback_LambdaImpl0;

    #@2
    invoke-direct {v0, p2, p1, p3}, Lcom/android/server/pm/ShortcutUser$-void_forPackageItem_java_lang_String_packageName_int_packageUserId_java_util_function_Consumer_callback_LambdaImpl0;-><init>(ILjava/lang/String;Ljava/util/function/Consumer;)V

    #@5
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    #@8
    .line 188
    return-void
.end method

.method getAllLaunchersForTest()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/server/pm/ShortcutUser$PackageWithUser;",
            "Lcom/android/server/pm/ShortcutLauncher;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method getAllPackagesForTest()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/ShortcutPackage;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method public getLauncherComponent()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLauncherComponent:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method public getLauncherShortcuts(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)Lcom/android/server/pm/ShortcutLauncher;
    .locals 3
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "launcherUserId"    # I

    #@0
    .prologue
    .line 157
    invoke-static {p3, p2}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    #@3
    move-result-object v0

    #@4
    .line 158
    .local v0, "key":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Lcom/android/server/pm/ShortcutLauncher;

    #@c
    .line 159
    .local v1, "ret":Lcom/android/server/pm/ShortcutLauncher;
    if-nez v1, :cond_0

    #@e
    .line 160
    new-instance v1, Lcom/android/server/pm/ShortcutLauncher;

    #@10
    .end local v1    # "ret":Lcom/android/server/pm/ShortcutLauncher;
    iget v2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    #@12
    invoke-direct {v1, p0, v2, p2, p3}, Lcom/android/server/pm/ShortcutLauncher;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;I)V

    #@15
    .line 161
    .restart local v1    # "ret":Lcom/android/server/pm/ShortcutLauncher;
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    #@17
    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 165
    :goto_0
    return-object v1

    #@1b
    .line 163
    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;)V

    #@1e
    goto :goto_0
.end method

.method public getPackageShortcuts(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;
    .locals 2
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 145
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/ShortcutPackage;

    #@8
    .line 146
    .local v0, "ret":Lcom/android/server/pm/ShortcutPackage;
    if-nez v0, :cond_0

    #@a
    .line 147
    new-instance v0, Lcom/android/server/pm/ShortcutPackage;

    #@c
    .end local v0    # "ret":Lcom/android/server/pm/ShortcutPackage;
    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    #@e
    invoke-direct {v0, p1, p0, v1, p2}, Lcom/android/server/pm/ShortcutPackage;-><init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V

    #@11
    .line 148
    .restart local v0    # "ret":Lcom/android/server/pm/ShortcutPackage;
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    #@13
    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 152
    :goto_0
    return-object v0

    #@17
    .line 150
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutPackage;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;)V

    #@1a
    goto :goto_0
.end method

.method public getUserId()I
    .locals 1

    #@0
    .prologue
    .line 109
    iget v0, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    #@2
    return v0
.end method

.method public handlePackageUpdated(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .locals 1
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "newVersionCode"    # I

    #@0
    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 221
    return-void

    #@9
    .line 223
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1, p3}, Lcom/android/server/pm/ShortcutPackage;->handlePackageUpdated(Lcom/android/server/pm/ShortcutService;I)V

    #@10
    .line 219
    return-void
.end method

.method public removeLauncher(ILjava/lang/String;)Lcom/android/server/pm/ShortcutLauncher;
    .locals 2
    .param p1, "packageUserId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    #@2
    invoke-static {p1, p2}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/pm/ShortcutLauncher;

    #@c
    return-object v0
.end method

.method public removePackage(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;
    .locals 2
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/ShortcutPackage;

    #@8
    .line 122
    .local v0, "removed":Lcom/android/server/pm/ShortcutPackage;
    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    #@a
    invoke-virtual {p1, v1, p2}, Lcom/android/server/pm/ShortcutService;->cleanupBitmapsForPackage(ILjava/lang/String;)V

    #@d
    .line 124
    return-object v0
.end method

.method public resetThrottling()V
    .locals 2

    #@0
    .prologue
    .line 331
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

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
    .line 332
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/pm/ShortcutPackage;

    #@12
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackage;->resetThrottling()V

    #@15
    .line 331
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 330
    :cond_0
    return-void
.end method

.method public resetThrottlingIfNeeded(Lcom/android/server/pm/ShortcutService;)V
    .locals 4
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;

    #@0
    .prologue
    .line 201
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutService;->getLocaleChangeSequenceNumber()J

    #@3
    move-result-wide v0

    #@4
    .line 202
    .local v0, "currentNo":J
    iget-wide v2, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocaleChangeSequenceNumber:J

    #@6
    cmp-long v2, v2, v0

    #@8
    if-gez v2, :cond_0

    #@a
    .line 207
    iput-wide v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocaleChangeSequenceNumber:J

    #@c
    .line 209
    new-instance v2, Lcom/android/server/pm/ShortcutUser$-void_resetThrottlingIfNeeded_com_android_server_pm_ShortcutService_s_LambdaImpl0;

    #@e
    invoke-direct {v2, p1}, Lcom/android/server/pm/ShortcutUser$-void_resetThrottlingIfNeeded_com_android_server_pm_ShortcutService_s_LambdaImpl0;-><init>(Lcom/android/server/pm/ShortcutService;)V

    #@11
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    #@14
    .line 211
    iget v2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    #@16
    invoke-virtual {p1, v2}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    #@19
    .line 200
    :cond_0
    return-void
.end method

.method public saveToXml(Lcom/android/server/pm/ShortcutService;Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 7
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p3, "forBackup"    # Z
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
    .line 235
    const-string/jumbo v2, "user"

    #@4
    invoke-interface {p2, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 237
    const-string/jumbo v2, "locale-seq-no"

    #@a
    .line 238
    iget-wide v4, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocaleChangeSequenceNumber:J

    #@c
    .line 237
    invoke-static {p2, v2, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@f
    .line 240
    const-string/jumbo v2, "launcher"

    #@12
    .line 241
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mLauncherComponent:Landroid/content/ComponentName;

    #@14
    .line 240
    invoke-static {p2, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/ComponentName;)V

    #@17
    .line 245
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    #@19
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@1c
    move-result v1

    #@1d
    .line 246
    .local v1, "size":I
    const/4 v0, 0x0

    #@1e
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@20
    .line 247
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    #@22
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Lcom/android/server/pm/ShortcutPackageItem;

    #@28
    invoke-direct {p0, p1, p2, v2, p3}, Lcom/android/server/pm/ShortcutUser;->saveShortcutPackageItem(Lcom/android/server/pm/ShortcutService;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/ShortcutPackageItem;Z)V

    #@2b
    .line 246
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 251
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    #@30
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@33
    move-result v1

    #@34
    .line 252
    const/4 v0, 0x0

    #@35
    :goto_1
    if-ge v0, v1, :cond_1

    #@37
    .line 253
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    #@39
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@3c
    move-result-object v2

    #@3d
    check-cast v2, Lcom/android/server/pm/ShortcutPackageItem;

    #@3f
    invoke-direct {p0, p1, p2, v2, p3}, Lcom/android/server/pm/ShortcutUser;->saveShortcutPackageItem(Lcom/android/server/pm/ShortcutService;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/ShortcutPackageItem;Z)V

    #@42
    .line 252
    add-int/lit8 v0, v0, 0x1

    #@44
    goto :goto_1

    #@45
    .line 257
    :cond_1
    const-string/jumbo v2, "user"

    #@48
    invoke-interface {p2, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4b
    .line 234
    return-void
.end method

.method public setLauncherComponent(Lcom/android/server/pm/ShortcutService;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "launcherComponent"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLauncherComponent:Landroid/content/ComponentName;

    #@2
    invoke-static {v0, p2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 324
    return-void

    #@9
    .line 326
    :cond_0
    iput-object p2, p0, Lcom/android/server/pm/ShortcutUser;->mLauncherComponent:Landroid/content/ComponentName;

    #@b
    .line 327
    iget v0, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    #@d
    invoke-virtual {p1, v0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    #@10
    .line 322
    return-void
.end method
