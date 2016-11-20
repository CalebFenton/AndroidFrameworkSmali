.class Lcom/android/server/pm/ShortcutUser;
.super Ljava/lang/Object;
.source "ShortcutUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShortcutUser$-void_attemptToRestoreIfNeededAndSave_com_android_server_pm_ShortcutService_s_java_lang_String_packageName_int_packageUserId_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutUser$-void_detectLocaleChange__LambdaImpl0;,
        Lcom/android/server/pm/ShortcutUser$-void_forPackageItem_java_lang_String_packageName_int_packageUserId_java_util_function_Consumer_callback_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutUser$-void_mergeRestoredFile_com_android_server_pm_ShortcutUser_restored_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutUser$-void_mergeRestoredFile_com_android_server_pm_ShortcutUser_restored_LambdaImpl1;,
        Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    }
.end annotation


# static fields
.field private static final ATTR_KNOWN_LOCALES:Ljava/lang/String; = "locales"

.field private static final ATTR_LAST_APP_SCAN_OS_FINGERPRINT:Ljava/lang/String; = "last-app-scan-fp"

.field private static final ATTR_LAST_APP_SCAN_TIME:Ljava/lang/String; = "last-app-scan-time2"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final KEY_LAUNCHERS:Ljava/lang/String; = "launchers"

.field private static final KEY_PACKAGES:Ljava/lang/String; = "packages"

.field private static final KEY_USER_ID:Ljava/lang/String; = "userId"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_LAUNCHER:Ljava/lang/String; = "launcher"

.field static final TAG_ROOT:Ljava/lang/String; = "user"


# instance fields
.field private mCachedLauncher:Landroid/content/ComponentName;

.field private mKnownLocales:Ljava/lang/String;

.field private mLastAppScanOsFingerprint:Ljava/lang/String;

.field private mLastAppScanTime:J

.field private mLastKnownLauncher:Landroid/content/ComponentName;

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

.field final mService:Lcom/android/server/pm/ShortcutService;

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
    .line 256
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    #@3
    move-result v0

    #@4
    if-ne v0, p0, :cond_0

    #@6
    .line 257
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    .line 256
    if-eqz v0, :cond_0

    #@10
    .line 258
    invoke-interface {p2, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@13
    .line 0
    :cond_0
    return-void
.end method

.method static synthetic -com_android_server_pm_ShortcutUser_lambda$2(Lcom/android/server/pm/ShortcutPackage;)V
    .locals 0
    .param p0, "pkg"    # Lcom/android/server/pm/ShortcutPackage;

    #@0
    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->resetRateLimiting()V

    #@3
    .line 308
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->resolveResourceStrings()V

    #@6
    .line 0
    return-void
.end method

.method static synthetic -com_android_server_pm_ShortcutUser_lambda$3(Lcom/android/server/pm/ShortcutPackageItem;)V
    .locals 0
    .param p0, "spi"    # Lcom/android/server/pm/ShortcutPackageItem;

    #@0
    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    #@3
    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/ShortcutService;I)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 113
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    #@a
    .line 115
    new-instance v0, Landroid/util/ArrayMap;

    #@c
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    #@11
    .line 134
    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@13
    .line 135
    iput p2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    #@15
    .line 133
    return-void
.end method

.method private addLauncher(Lcom/android/server/pm/ShortcutLauncher;)V
    .locals 3
    .param p1, "launcher"    # Lcom/android/server/pm/ShortcutLauncher;

    #@0
    .prologue
    .line 190
    invoke-virtual {p1, p0}, Lcom/android/server/pm/ShortcutLauncher;->replaceUser(Lcom/android/server/pm/ShortcutUser;)V

    #@3
    .line 191
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutLauncher;->getPackageUserId()I

    #@8
    move-result v1

    #@9
    .line 192
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    .line 191
    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 189
    return-void
.end method

.method private addPackage(Lcom/android/server/pm/ShortcutPackage;)V
    .locals 2
    .param p1, "p"    # Lcom/android/server/pm/ShortcutPackage;

    #@0
    .prologue
    .line 170
    invoke-virtual {p1, p0}, Lcom/android/server/pm/ShortcutPackage;->replaceUser(Lcom/android/server/pm/ShortcutUser;)V

    #@3
    .line 171
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 169
    return-void
.end method

.method private dumpDirectorySize(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/io/File;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/io/File;

    #@0
    .prologue
    .line 567
    const/4 v2, 0x0

    #@1
    .line 568
    .local v2, "numFiles":I
    const-wide/16 v4, 0x0

    #@3
    .line 569
    .local v4, "size":J
    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@6
    move-result-object v1

    #@7
    .line 570
    .local v1, "children":[Ljava/io/File;
    if-eqz v1, :cond_2

    #@9
    .line 571
    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

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
    .line 572
    .local v0, "child":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    #@16
    move-result v8

    #@17
    if-eqz v8, :cond_1

    #@19
    .line 573
    add-int/lit8 v2, v2, 0x1

    #@1b
    .line 574
    invoke-virtual {v0}, Ljava/io/File;->length()J

    #@1e
    move-result-wide v8

    #@1f
    add-long/2addr v4, v8

    #@20
    .line 571
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@22
    goto :goto_0

    #@23
    .line 575
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@26
    move-result v8

    #@27
    if-eqz v8, :cond_0

    #@29
    .line 576
    new-instance v8, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    invoke-direct {p0, p1, v8, v0}, Lcom/android/server/pm/ShortcutUser;->dumpDirectorySize(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/io/File;)V

    #@40
    goto :goto_1

    #@41
    .line 580
    .end local v0    # "child":Ljava/io/File;
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@44
    .line 581
    const-string/jumbo v3, "Path: "

    #@47
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4a
    .line 582
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@51
    .line 583
    const-string/jumbo v3, "/ has "

    #@54
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@57
    .line 584
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@5a
    .line 585
    const-string/jumbo v3, " files, size="

    #@5d
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60
    .line 586
    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@63
    .line 587
    const-string/jumbo v3, " ("

    #@66
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@69
    .line 588
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@6b
    iget-object v3, v3, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    #@6d
    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@74
    .line 589
    const-string/jumbo v3, ")"

    #@77
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7a
    .line 566
    return-void
.end method

.method private getKnownLocales()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 285
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@a
    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->injectGetLocaleTagsForUser(I)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    #@12
    .line 286
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@14
    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    #@16
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    #@19
    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    #@1b
    return-object v0
.end method

.method public static loadFromXml(Lcom/android/server/pm/ShortcutService;Lorg/xmlpull/v1/XmlPullParser;IZ)Lcom/android/server/pm/ShortcutUser;
    .locals 17
    .param p0, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .param p3, "fromBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 380
    new-instance v11, Lcom/android/server/pm/ShortcutUser;

    #@2
    move-object/from16 v0, p0

    #@4
    move/from16 v1, p2

    #@6
    invoke-direct {v11, v0, v1}, Lcom/android/server/pm/ShortcutUser;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    #@9
    .line 384
    .local v11, "ret":Lcom/android/server/pm/ShortcutUser;
    :try_start_0
    const-string/jumbo v15, "locales"

    #@c
    .line 383
    move-object/from16 v0, p1

    #@e
    invoke-static {v0, v15}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v15

    #@12
    iput-object v15, v11, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    #@14
    .line 389
    const-string/jumbo v15, "last-app-scan-time2"

    #@17
    .line 388
    move-object/from16 v0, p1

    #@19
    invoke-static {v0, v15}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@1c
    move-result-wide v8

    #@1d
    .line 390
    .local v8, "lastAppScanTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    #@20
    move-result-wide v4

    #@21
    .line 391
    .local v4, "currentTime":J
    cmp-long v15, v8, v4

    #@23
    if-gez v15, :cond_2

    #@25
    .end local v8    # "lastAppScanTime":J
    :goto_0
    iput-wide v8, v11, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    #@27
    .line 393
    const-string/jumbo v15, "last-app-scan-fp"

    #@2a
    .line 392
    move-object/from16 v0, p1

    #@2c
    invoke-static {v0, v15}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object v15

    #@30
    iput-object v15, v11, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    #@32
    .line 394
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@35
    move-result v10

    #@36
    .line 396
    .local v10, "outerDepth":I
    :cond_0
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@39
    move-result v14

    #@3a
    .local v14, "type":I
    const/4 v15, 0x1

    #@3b
    if-eq v14, v15, :cond_6

    #@3d
    .line 397
    const/4 v15, 0x3

    #@3e
    if-ne v14, v15, :cond_1

    #@40
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@43
    move-result v15

    #@44
    if-le v15, v10, :cond_6

    #@46
    .line 398
    :cond_1
    const/4 v15, 0x2

    #@47
    if-ne v14, v15, :cond_0

    #@49
    .line 401
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4c
    move-result v6

    #@4d
    .line 402
    .local v6, "depth":I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@50
    move-result-object v13

    #@51
    .line 404
    .local v13, "tag":Ljava/lang/String;
    add-int/lit8 v15, v10, 0x1

    #@53
    if-ne v6, v15, :cond_5

    #@55
    .line 405
    const-string/jumbo v15, "launcher"

    #@58
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5b
    move-result v15

    #@5c
    if-eqz v15, :cond_3

    #@5e
    .line 408
    const-string/jumbo v15, "value"

    #@61
    .line 407
    move-object/from16 v0, p1

    #@63
    invoke-static {v0, v15}, Lcom/android/server/pm/ShortcutService;->parseComponentNameAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    #@66
    move-result-object v15

    #@67
    iput-object v15, v11, Lcom/android/server/pm/ShortcutUser;->mLastKnownLauncher:Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@69
    goto :goto_1

    #@6a
    .line 429
    .end local v4    # "currentTime":J
    .end local v6    # "depth":I
    .end local v10    # "outerDepth":I
    .end local v13    # "tag":Ljava/lang/String;
    .end local v14    # "type":I
    :catch_0
    move-exception v7

    #@6b
    .line 430
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v15, Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;

    #@6d
    .line 431
    const-string/jumbo v16, "Unable to parse file"

    #@70
    .line 430
    move-object/from16 v0, v16

    #@72
    invoke-direct {v15, v0, v7}, Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@75
    throw v15

    #@76
    .line 391
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .restart local v4    # "currentTime":J
    .restart local v8    # "lastAppScanTime":J
    :cond_2
    const-wide/16 v8, 0x0

    #@78
    goto :goto_0

    #@79
    .line 405
    .end local v8    # "lastAppScanTime":J
    .restart local v6    # "depth":I
    .restart local v10    # "outerDepth":I
    .restart local v13    # "tag":Ljava/lang/String;
    .restart local v14    # "type":I
    :cond_3
    :try_start_1
    const-string/jumbo v15, "package"

    #@7c
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7f
    move-result v15

    #@80
    if-eqz v15, :cond_4

    #@82
    .line 412
    move-object/from16 v0, p0

    #@84
    move-object/from16 v1, p1

    #@86
    move/from16 v2, p3

    #@88
    invoke-static {v0, v11, v1, v2}, Lcom/android/server/pm/ShortcutPackage;->loadFromXml(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Lorg/xmlpull/v1/XmlPullParser;Z)Lcom/android/server/pm/ShortcutPackage;

    #@8b
    move-result-object v12

    #@8c
    .line 416
    .local v12, "shortcuts":Lcom/android/server/pm/ShortcutPackage;
    iget-object v15, v11, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    #@8e
    invoke-virtual {v12}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@91
    move-result-object v16

    #@92
    move-object/from16 v0, v16

    #@94
    invoke-virtual {v15, v0, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@97
    goto :goto_1

    #@98
    .line 405
    .end local v12    # "shortcuts":Lcom/android/server/pm/ShortcutPackage;
    :cond_4
    const-string/jumbo v15, "launcher-pins"

    #@9b
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9e
    move-result v15

    #@9f
    if-eqz v15, :cond_5

    #@a1
    .line 422
    move-object/from16 v0, p1

    #@a3
    move/from16 v1, p2

    #@a5
    move/from16 v2, p3

    #@a7
    invoke-static {v0, v11, v1, v2}, Lcom/android/server/pm/ShortcutLauncher;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/ShortcutUser;IZ)Lcom/android/server/pm/ShortcutLauncher;

    #@aa
    move-result-object v15

    #@ab
    .line 421
    invoke-direct {v11, v15}, Lcom/android/server/pm/ShortcutUser;->addLauncher(Lcom/android/server/pm/ShortcutLauncher;)V

    #@ae
    goto :goto_1

    #@af
    .line 427
    :cond_5
    invoke-static {v6, v13}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    #@b2
    goto :goto_1

    #@b3
    .line 433
    .end local v6    # "depth":I
    .end local v13    # "tag":Ljava/lang/String;
    :cond_6
    return-object v11
.end method

.method private saveShortcutPackageItem(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/ShortcutPackageItem;Z)V
    .locals 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "spi"    # Lcom/android/server/pm/ShortcutPackageItem;
    .param p3, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 367
    if-eqz p3, :cond_1

    #@2
    .line 368
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@4
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    #@b
    move-result v2

    #@c
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutService;->shouldBackupApp(Ljava/lang/String;I)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_0

    #@12
    .line 369
    return-void

    #@13
    .line 371
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    #@16
    move-result v0

    #@17
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getOwnerUserId()I

    #@1a
    move-result v1

    #@1b
    if-eq v0, v1, :cond_1

    #@1d
    .line 372
    return-void

    #@1e
    .line 375
    :cond_1
    invoke-virtual {p2, p1, p3}, Lcom/android/server/pm/ShortcutPackageItem;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    #@21
    .line 366
    return-void
.end method

.method private setLauncher(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "launcherComponent"    # Landroid/content/ComponentName;
    .param p2, "allowPurgeLastKnown"    # Z

    #@0
    .prologue
    .line 458
    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mCachedLauncher:Landroid/content/ComponentName;

    #@2
    .line 460
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLastKnownLauncher:Landroid/content/ComponentName;

    #@4
    invoke-static {v0, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 461
    return-void

    #@b
    .line 463
    :cond_0
    if-nez p2, :cond_1

    #@d
    if-nez p1, :cond_1

    #@f
    .line 464
    return-void

    #@10
    .line 466
    :cond_1
    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mLastKnownLauncher:Landroid/content/ComponentName;

    #@12
    .line 467
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@14
    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    #@16
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    #@19
    .line 457
    return-void
.end method


# virtual methods
.method synthetic -com_android_server_pm_ShortcutUser_lambda$4(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutLauncher;)V
    .locals 2
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "sl"    # Lcom/android/server/pm/ShortcutLauncher;

    #@0
    .prologue
    .line 499
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    #@7
    move-result v1

    #@8
    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 500
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    #@15
    move-result v1

    #@16
    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->shouldBackupApp(Ljava/lang/String;I)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 503
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutUser;->addLauncher(Lcom/android/server/pm/ShortcutLauncher;)V

    #@1f
    .line 0
    return-void

    #@20
    .line 501
    :cond_1
    return-void
.end method

.method synthetic -com_android_server_pm_ShortcutUser_lambda$5(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutPackage;)V
    .locals 4
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "sp"    # Lcom/android/server/pm/ShortcutPackage;

    #@0
    .prologue
    .line 508
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    #@7
    move-result v2

    #@8
    invoke-virtual {p1, v1, v2}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 509
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    #@15
    move-result v2

    #@16
    invoke-virtual {p1, v1, v2}, Lcom/android/server/pm/ShortcutService;->shouldBackupApp(Ljava/lang/String;I)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_2

    #@1c
    .line 513
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    #@23
    move-result-object v0

    #@24
    .line 514
    .local v0, "previous":Lcom/android/server/pm/ShortcutPackage;
    if-eqz v0, :cond_1

    #@26
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->hasNonManifestShortcuts()Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_1

    #@2c
    .line 515
    const-string/jumbo v1, "ShortcutService"

    #@2f
    new-instance v2, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v3, "Shortcuts for package "

    #@37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    const-string/jumbo v3, " are being restored."

    #@46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    .line 516
    const-string/jumbo v3, " Existing non-manifeset shortcuts will be overwritten."

    #@4d
    .line 515
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    .line 518
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutUser;->addPackage(Lcom/android/server/pm/ShortcutPackage;)V

    #@5b
    .line 0
    return-void

    #@5c
    .line 510
    .end local v0    # "previous":Lcom/android/server/pm/ShortcutPackage;
    :cond_2
    return-void
.end method

.method public attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .locals 1
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "packageUserId"    # I

    #@0
    .prologue
    .line 328
    new-instance v0, Lcom/android/server/pm/ShortcutUser$-void_attemptToRestoreIfNeededAndSave_com_android_server_pm_ShortcutService_s_java_lang_String_packageName_int_packageUserId_LambdaImpl0;

    #@2
    invoke-direct {v0}, Lcom/android/server/pm/ShortcutUser$-void_attemptToRestoreIfNeededAndSave_com_android_server_pm_ShortcutService_s_java_lang_String_packageName_int_packageUserId_LambdaImpl0;-><init>()V

    #@5
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/pm/ShortcutUser;->forPackageItem(Ljava/lang/String;ILjava/util/function/Consumer;)V

    #@8
    .line 327
    return-void
.end method

.method public clearLauncher()V
    .locals 1

    #@0
    .prologue
    .line 446
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutUser;->setLauncher(Landroid/content/ComponentName;)V

    #@4
    .line 445
    return-void
.end method

.method public detectLocaleChange()V
    .locals 3

    #@0
    .prologue
    .line 296
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@2
    iget v2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    #@4
    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutService;->injectGetLocaleTagsForUser(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 297
    .local v0, "currentLocales":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutUser;->getKnownLocales()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 298
    return-void

    #@13
    .line 304
    :cond_0
    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    #@15
    .line 306
    new-instance v1, Lcom/android/server/pm/ShortcutUser$-void_detectLocaleChange__LambdaImpl0;

    #@17
    invoke-direct {v1}, Lcom/android/server/pm/ShortcutUser$-void_detectLocaleChange__LambdaImpl0;-><init>()V

    #@1a
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    #@1d
    .line 311
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@1f
    iget v2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    #@21
    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    #@24
    .line 295
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 526
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    .line 527
    const-string/jumbo v1, "User: "

    #@6
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 528
    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    #@b
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    #@e
    .line 529
    const-string/jumbo v1, "  Known locales: "

    #@11
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    .line 530
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    #@16
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19
    .line 531
    const-string/jumbo v1, "  Last app scan: ["

    #@1c
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f
    .line 532
    iget-wide v2, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    #@21
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    #@24
    .line 533
    const-string/jumbo v1, "] "

    #@27
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2a
    .line 534
    iget-wide v2, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    #@2c
    invoke-static {v2, v3}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@33
    .line 535
    const-string/jumbo v1, "  Last app scan FP: "

    #@36
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@39
    .line 536
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    #@3b
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3e
    .line 537
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@41
    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    const-string/jumbo v2, "  "

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object p2

    #@59
    .line 541
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c
    .line 542
    const-string/jumbo v1, "Cached launcher: "

    #@5f
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@62
    .line 543
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mCachedLauncher:Landroid/content/ComponentName;

    #@64
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@67
    .line 544
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@6a
    .line 546
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6d
    .line 547
    const-string/jumbo v1, "Last known launcher: "

    #@70
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@73
    .line 548
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mLastKnownLauncher:Landroid/content/ComponentName;

    #@75
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@78
    .line 549
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@7b
    .line 551
    const/4 v0, 0x0

    #@7c
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    #@7e
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    #@81
    move-result v1

    #@82
    if-ge v0, v1, :cond_0

    #@84
    .line 552
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    #@86
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@89
    move-result-object v1

    #@8a
    check-cast v1, Lcom/android/server/pm/ShortcutLauncher;

    #@8c
    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/ShortcutLauncher;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@8f
    .line 551
    add-int/lit8 v0, v0, 0x1

    #@91
    goto :goto_0

    #@92
    .line 555
    :cond_0
    const/4 v0, 0x0

    #@93
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    #@95
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    #@98
    move-result v1

    #@99
    if-ge v0, v1, :cond_1

    #@9b
    .line 556
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    #@9d
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@a0
    move-result-object v1

    #@a1
    check-cast v1, Lcom/android/server/pm/ShortcutPackage;

    #@a3
    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/ShortcutPackage;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@a6
    .line 555
    add-int/lit8 v0, v0, 0x1

    #@a8
    goto :goto_1

    #@a9
    .line 559
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@ac
    .line 560
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@af
    .line 561
    const-string/jumbo v1, "Bitmap directories: "

    #@b2
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b5
    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    #@b7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@ba
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v1

    #@be
    const-string/jumbo v2, "  "

    #@c1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v1

    #@c5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c8
    move-result-object v1

    #@c9
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@cb
    iget v3, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    #@cd
    invoke-virtual {v2, v3}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    #@d0
    move-result-object v2

    #@d1
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/pm/ShortcutUser;->dumpDirectorySize(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/io/File;)V

    #@d4
    .line 525
    return-void
.end method

.method public dumpCheckin(Z)Lorg/json/JSONObject;
    .locals 6
    .param p1, "clear"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 593
    new-instance v3, Lorg/json/JSONObject;

    #@2
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    #@5
    .line 595
    .local v3, "result":Lorg/json/JSONObject;
    const-string/jumbo v4, "userId"

    #@8
    iget v5, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    #@a
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@d
    .line 598
    new-instance v1, Lorg/json/JSONArray;

    #@f
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    #@12
    .line 599
    .local v1, "launchers":Lorg/json/JSONArray;
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    #@15
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@18
    move-result v4

    #@19
    if-ge v0, v4, :cond_0

    #@1b
    .line 600
    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    #@1d
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@20
    move-result-object v4

    #@21
    check-cast v4, Lcom/android/server/pm/ShortcutLauncher;

    #@23
    invoke-virtual {v4, p1}, Lcom/android/server/pm/ShortcutLauncher;->dumpCheckin(Z)Lorg/json/JSONObject;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@2a
    .line 599
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 602
    :cond_0
    const-string/jumbo v4, "launchers"

    #@30
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@33
    .line 606
    new-instance v2, Lorg/json/JSONArray;

    #@35
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    #@38
    .line 607
    .local v2, "packages":Lorg/json/JSONArray;
    const/4 v0, 0x0

    #@39
    :goto_1
    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    #@3b
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@3e
    move-result v4

    #@3f
    if-ge v0, v4, :cond_1

    #@41
    .line 608
    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    #@43
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@46
    move-result-object v4

    #@47
    check-cast v4, Lcom/android/server/pm/ShortcutPackage;

    #@49
    invoke-virtual {v4, p1}, Lcom/android/server/pm/ShortcutPackage;->dumpCheckin(Z)Lorg/json/JSONObject;

    #@4c
    move-result-object v4

    #@4d
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@50
    .line 607
    add-int/lit8 v0, v0, 0x1

    #@52
    goto :goto_1

    #@53
    .line 610
    :cond_1
    const-string/jumbo v4, "packages"

    #@56
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@59
    .line 613
    return-object v3
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
    .line 242
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Lcom/android/server/pm/ShortcutLauncher;>;"
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@5
    move-result v1

    #@6
    .line 243
    .local v1, "size":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@9
    .line 244
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@12
    .line 243
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 241
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
    .line 249
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Lcom/android/server/pm/ShortcutPackageItem;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    #@3
    .line 250
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    #@6
    .line 248
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
    .line 235
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Lcom/android/server/pm/ShortcutPackage;>;"
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@5
    move-result v1

    #@6
    .line 236
    .local v1, "size":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@9
    .line 237
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@12
    .line 236
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 234
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
    .line 255
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/ShortcutPackageItem;>;"
    new-instance v0, Lcom/android/server/pm/ShortcutUser$-void_forPackageItem_java_lang_String_packageName_int_packageUserId_java_util_function_Consumer_callback_LambdaImpl0;

    #@2
    invoke-direct {v0, p2, p1, p3}, Lcom/android/server/pm/ShortcutUser$-void_forPackageItem_java_lang_String_packageName_int_packageUserId_java_util_function_Consumer_callback_LambdaImpl0;-><init>(ILjava/lang/String;Ljava/util/function/Consumer;)V

    #@5
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    #@8
    .line 254
    return-void
.end method

.method public forceClearLauncher()V
    .locals 2

    #@0
    .prologue
    .line 454
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/ShortcutUser;->setLauncher(Landroid/content/ComponentName;Z)V

    #@5
    .line 453
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
    .line 186
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
    .line 162
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method public getCachedLauncher()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mCachedLauncher:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method public getLastAppScanOsFingerprint()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLastAppScanTime()J
    .locals 2

    #@0
    .prologue
    .line 143
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    #@2
    return-wide v0
.end method

.method public getLastKnownLauncher()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLastKnownLauncher:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method public getLauncherShortcuts(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutLauncher;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "launcherUserId"    # I

    #@0
    .prologue
    .line 223
    invoke-static {p2, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    #@3
    move-result-object v0

    #@4
    .line 224
    .local v0, "key":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Lcom/android/server/pm/ShortcutLauncher;

    #@c
    .line 225
    .local v1, "ret":Lcom/android/server/pm/ShortcutLauncher;
    if-nez v1, :cond_0

    #@e
    .line 226
    new-instance v1, Lcom/android/server/pm/ShortcutLauncher;

    #@10
    .end local v1    # "ret":Lcom/android/server/pm/ShortcutLauncher;
    iget v2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    #@12
    invoke-direct {v1, p0, v2, p1, p2}, Lcom/android/server/pm/ShortcutLauncher;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;I)V

    #@15
    .line 227
    .restart local v1    # "ret":Lcom/android/server/pm/ShortcutLauncher;
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    #@17
    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 231
    :goto_0
    return-object v1

    #@1b
    .line 229
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    #@1e
    goto :goto_0
.end method

.method public getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    #@3
    move-result-object v0

    #@4
    .line 213
    .local v0, "ret":Lcom/android/server/pm/ShortcutPackage;
    if-nez v0, :cond_0

    #@6
    .line 214
    new-instance v0, Lcom/android/server/pm/ShortcutPackage;

    #@8
    .end local v0    # "ret":Lcom/android/server/pm/ShortcutPackage;
    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    #@a
    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/pm/ShortcutPackage;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V

    #@d
    .line 215
    .restart local v0    # "ret":Lcom/android/server/pm/ShortcutPackage;
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    #@f
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 217
    :cond_0
    return-object v0
.end method

.method public getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 203
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/ShortcutPackage;

    #@8
    .line 204
    .local v0, "ret":Lcom/android/server/pm/ShortcutPackage;
    if-eqz v0, :cond_0

    #@a
    .line 205
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->attemptToRestoreIfNeededAndSave()V

    #@d
    .line 207
    :cond_0
    return-object v0
.end method

.method public getUserId()I
    .locals 1

    #@0
    .prologue
    .line 139
    iget v0, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    #@2
    return v0
.end method

.method public hasPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public mergeRestoredFile(Lcom/android/server/pm/ShortcutUser;)V
    .locals 2
    .param p1, "restored"    # Lcom/android/server/pm/ShortcutUser;

    #@0
    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@2
    .line 495
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    #@7
    .line 496
    new-instance v1, Lcom/android/server/pm/ShortcutUser$-void_mergeRestoredFile_com_android_server_pm_ShortcutUser_restored_LambdaImpl0;

    #@9
    invoke-direct {v1, p0, v0}, Lcom/android/server/pm/ShortcutUser$-void_mergeRestoredFile_com_android_server_pm_ShortcutUser_restored_LambdaImpl0;-><init>(Lcom/android/server/pm/ShortcutUser;Lcom/android/server/pm/ShortcutService;)V

    #@c
    invoke-virtual {p1, v1}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    #@f
    .line 505
    new-instance v1, Lcom/android/server/pm/ShortcutUser$-void_mergeRestoredFile_com_android_server_pm_ShortcutUser_restored_LambdaImpl1;

    #@11
    invoke-direct {v1, p0, v0}, Lcom/android/server/pm/ShortcutUser$-void_mergeRestoredFile_com_android_server_pm_ShortcutUser_restored_LambdaImpl1;-><init>(Lcom/android/server/pm/ShortcutUser;Lcom/android/server/pm/ShortcutService;)V

    #@14
    invoke-virtual {p1, v1}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    #@17
    .line 521
    iget-object v1, p1, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    #@19
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    #@1c
    .line 522
    iget-object v1, p1, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    #@1e
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    #@21
    .line 480
    return-void
.end method

.method public onCalledByPublisher(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->detectLocaleChange()V

    #@3
    .line 280
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    #@7
    .line 278
    return-void
.end method

.method public removeLauncher(ILjava/lang/String;)Lcom/android/server/pm/ShortcutLauncher;
    .locals 2
    .param p1, "packageUserId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 198
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

.method public removePackage(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 175
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/ShortcutPackage;

    #@8
    .line 177
    .local v0, "removed":Lcom/android/server/pm/ShortcutPackage;
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    #@a
    iget v2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    #@c
    invoke-virtual {v1, v2, p1}, Lcom/android/server/pm/ShortcutService;->cleanupBitmapsForPackage(ILjava/lang/String;)V

    #@f
    .line 179
    return-object v0
.end method

.method public rescanPackageIfNeeded(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "forceRescan"    # Z

    #@0
    .prologue
    .line 315
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_1

    #@8
    const/4 v0, 0x0

    #@9
    .line 317
    .local v0, "isNewApp":Z
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    #@c
    move-result-object v1

    #@d
    .line 319
    .local v1, "shortcutPackage":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {v1, v0, p2}, Lcom/android/server/pm/ShortcutPackage;->rescanPackageIfNeeded(ZZ)Z

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_0

    #@13
    .line 320
    if-eqz v0, :cond_0

    #@15
    .line 321
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    #@17
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 314
    :cond_0
    return-void

    #@1b
    .line 315
    .end local v0    # "isNewApp":Z
    .end local v1    # "shortcutPackage":Lcom/android/server/pm/ShortcutPackage;
    :cond_1
    const/4 v0, 0x1

    #@1c
    .restart local v0    # "isNewApp":Z
    goto :goto_0
.end method

.method public resetThrottling()V
    .locals 2

    #@0
    .prologue
    .line 475
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
    .line 476
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
    .line 475
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 474
    :cond_0
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
    .line 335
    const-string/jumbo v2, "user"

    #@4
    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 337
    if-nez p2, :cond_0

    #@9
    .line 339
    const-string/jumbo v2, "locales"

    #@c
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    #@e
    invoke-static {p1, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@11
    .line 340
    const-string/jumbo v2, "last-app-scan-time2"

    #@14
    .line 341
    iget-wide v4, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    #@16
    .line 340
    invoke-static {p1, v2, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@19
    .line 342
    const-string/jumbo v2, "last-app-scan-fp"

    #@1c
    .line 343
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    #@1e
    .line 342
    invoke-static {p1, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@21
    .line 345
    const-string/jumbo v2, "launcher"

    #@24
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mLastKnownLauncher:Landroid/content/ComponentName;

    #@26
    invoke-static {p1, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/ComponentName;)V

    #@29
    .line 350
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    #@2b
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@2e
    move-result v1

    #@2f
    .line 351
    .local v1, "size":I
    const/4 v0, 0x0

    #@30
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@32
    .line 352
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    #@34
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@37
    move-result-object v2

    #@38
    check-cast v2, Lcom/android/server/pm/ShortcutPackageItem;

    #@3a
    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/pm/ShortcutUser;->saveShortcutPackageItem(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/ShortcutPackageItem;Z)V

    #@3d
    .line 351
    add-int/lit8 v0, v0, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 356
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    #@42
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@45
    move-result v1

    #@46
    .line 357
    const/4 v0, 0x0

    #@47
    :goto_1
    if-ge v0, v1, :cond_2

    #@49
    .line 358
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    #@4b
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@4e
    move-result-object v2

    #@4f
    check-cast v2, Lcom/android/server/pm/ShortcutPackageItem;

    #@51
    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/pm/ShortcutUser;->saveShortcutPackageItem(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/ShortcutPackageItem;Z)V

    #@54
    .line 357
    add-int/lit8 v0, v0, 0x1

    #@56
    goto :goto_1

    #@57
    .line 362
    :cond_2
    const-string/jumbo v2, "user"

    #@5a
    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5d
    .line 334
    return-void
.end method

.method public setLastAppScanOsFingerprint(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastAppScanOsFingerprint"    # Ljava/lang/String;

    #@0
    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    #@2
    .line 154
    return-void
.end method

.method public setLastAppScanTime(J)V
    .locals 1
    .param p1, "lastAppScanTime"    # J

    #@0
    .prologue
    .line 147
    iput-wide p1, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    #@2
    .line 146
    return-void
.end method

.method public setLauncher(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "launcherComponent"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 441
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/ShortcutUser;->setLauncher(Landroid/content/ComponentName;Z)V

    #@4
    .line 440
    return-void
.end method
