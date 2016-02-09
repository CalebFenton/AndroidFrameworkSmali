.class public Landroid/support/v4/content/FileProvider;
.super Landroid/content/ContentProvider;
.source "FileProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/FileProvider$PathStrategy;,
        Landroid/support/v4/content/FileProvider$SimplePathStrategy;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PATH:Ljava/lang/String; = "path"

.field private static final COLUMNS:[Ljava/lang/String;

.field private static final DEVICE_ROOT:Ljava/io/File;

.field private static final META_DATA_FILE_PROVIDER_PATHS:Ljava/lang/String; = "android.support.FILE_PROVIDER_PATHS"

.field private static final TAG_CACHE_PATH:Ljava/lang/String; = "cache-path"

.field private static final TAG_EXTERNAL:Ljava/lang/String; = "external-path"

.field private static final TAG_FILES_PATH:Ljava/lang/String; = "files-path"

.field private static final TAG_ROOT_PATH:Ljava/lang/String; = "root-path"

.field private static sCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/content/FileProvider$PathStrategy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 303
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    .line 304
    const-string/jumbo v1, "_display_name"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    const-string/jumbo v1, "_size"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    .line 303
    sput-object v0, Landroid/support/v4/content/FileProvider;->COLUMNS:[Ljava/lang/String;

    #@11
    .line 317
    new-instance v0, Ljava/io/File;

    #@13
    const-string/jumbo v1, "/"

    #@16
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@19
    sput-object v0, Landroid/support/v4/content/FileProvider;->DEVICE_ROOT:Ljava/io/File;

    #@1b
    .line 320
    new-instance v0, Ljava/util/HashMap;

    #@1d
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@20
    sput-object v0, Landroid/support/v4/content/FileProvider;->sCache:Ljava/util/HashMap;

    #@22
    .line 302
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 302
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    #@3
    return-void
.end method

.method private static varargs buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "base"    # Ljava/io/File;
    .param p1, "segments"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 753
    move-object v0, p0

    #@1
    .line 754
    .local v0, "cur":Ljava/io/File;
    const/4 v3, 0x0

    #@2
    array-length v4, p1

    #@3
    move-object v1, v0

    #@4
    .end local v0    # "cur":Ljava/io/File;
    .local v1, "cur":Ljava/io/File;
    :goto_0
    if-ge v3, v4, :cond_0

    #@6
    aget-object v2, p1, v3

    #@8
    .line 755
    .local v2, "segment":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@a
    .line 756
    new-instance v0, Ljava/io/File;

    #@c
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@f
    .line 754
    .end local v1    # "cur":Ljava/io/File;
    .restart local v0    # "cur":Ljava/io/File;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@11
    move-object v1, v0

    #@12
    .end local v0    # "cur":Ljava/io/File;
    .restart local v1    # "cur":Ljava/io/File;
    goto :goto_0

    #@13
    .line 759
    .end local v2    # "segment":Ljava/lang/String;
    :cond_0
    return-object v1

    #@14
    .restart local v2    # "segment":Ljava/lang/String;
    :cond_1
    move-object v0, v1

    #@15
    .end local v1    # "cur":Ljava/io/File;
    .restart local v0    # "cur":Ljava/io/File;
    goto :goto_1
.end method

.method private static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 2
    .param p0, "original"    # [Ljava/lang/Object;
    .param p1, "newLength"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 769
    new-array v0, p1, [Ljava/lang/Object;

    #@3
    .line 770
    .local v0, "result":[Ljava/lang/Object;
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@6
    .line 771
    return-object v0
.end method

.method private static copyOf([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2
    .param p0, "original"    # [Ljava/lang/String;
    .param p1, "newLength"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 763
    new-array v0, p1, [Ljava/lang/String;

    #@3
    .line 764
    .local v0, "result":[Ljava/lang/String;
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@6
    .line 765
    return-object v0
.end method

.method private static getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$PathStrategy;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;

    #@0
    .prologue
    .line 530
    sget-object v4, Landroid/support/v4/content/FileProvider;->sCache:Ljava/util/HashMap;

    #@2
    monitor-enter v4

    #@3
    .line 531
    :try_start_0
    sget-object v3, Landroid/support/v4/content/FileProvider;->sCache:Ljava/util/HashMap;

    #@5
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Landroid/support/v4/content/FileProvider$PathStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 532
    .local v2, "strat":Landroid/support/v4/content/FileProvider$PathStrategy;
    if-nez v2, :cond_0

    #@d
    .line 534
    :try_start_1
    invoke-static {p0, p1}, Landroid/support/v4/content/FileProvider;->parsePathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$PathStrategy;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    move-result-object v2

    #@11
    .line 542
    :try_start_2
    sget-object v3, Landroid/support/v4/content/FileProvider;->sCache:Ljava/util/HashMap;

    #@13
    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@16
    :cond_0
    monitor-exit v4

    #@17
    .line 545
    return-object v2

    #@18
    .line 538
    :catch_0
    move-exception v1

    #@19
    .line 539
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@1b
    .line 540
    const-string/jumbo v5, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    #@1e
    .line 539
    invoke-direct {v3, v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@21
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@22
    .line 530
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "strat":Landroid/support/v4/content/FileProvider$PathStrategy;
    :catchall_0
    move-exception v3

    #@23
    monitor-exit v4

    #@24
    throw v3

    #@25
    .line 535
    .restart local v2    # "strat":Landroid/support/v4/content/FileProvider$PathStrategy;
    :catch_1
    move-exception v0

    #@26
    .line 536
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@28
    .line 537
    const-string/jumbo v5, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    #@2b
    .line 536
    invoke-direct {v3, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2e
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    #@0
    .prologue
    .line 376
    invoke-static {p0, p1}, Landroid/support/v4/content/FileProvider;->getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$PathStrategy;

    #@3
    move-result-object v0

    #@4
    .line 377
    .local v0, "strategy":Landroid/support/v4/content/FileProvider$PathStrategy;
    invoke-interface {v0, p2}, Landroid/support/v4/content/FileProvider$PathStrategy;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method private static modeToMode(Ljava/lang/String;)I
    .locals 4
    .param p0, "mode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 729
    const-string/jumbo v1, "r"

    #@3
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 730
    const/high16 v0, 0x10000000

    #@b
    .line 749
    .local v0, "modeBits":I
    :goto_0
    return v0

    #@c
    .line 731
    .end local v0    # "modeBits":I
    :cond_0
    const-string/jumbo v1, "w"

    #@f
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_1

    #@15
    const-string/jumbo v1, "wt"

    #@18
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_2

    #@1e
    .line 732
    :cond_1
    const/high16 v0, 0x2c000000

    #@20
    .restart local v0    # "modeBits":I
    goto :goto_0

    #@21
    .line 735
    .end local v0    # "modeBits":I
    :cond_2
    const-string/jumbo v1, "wa"

    #@24
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_3

    #@2a
    .line 736
    const/high16 v0, 0x2a000000

    #@2c
    .restart local v0    # "modeBits":I
    goto :goto_0

    #@2d
    .line 739
    .end local v0    # "modeBits":I
    :cond_3
    const-string/jumbo v1, "rw"

    #@30
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_4

    #@36
    .line 740
    const/high16 v0, 0x38000000

    #@38
    .restart local v0    # "modeBits":I
    goto :goto_0

    #@39
    .line 742
    .end local v0    # "modeBits":I
    :cond_4
    const-string/jumbo v1, "rwt"

    #@3c
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v1

    #@40
    if-eqz v1, :cond_5

    #@42
    .line 743
    const/high16 v0, 0x3c000000    # 0.0078125f

    #@44
    .restart local v0    # "modeBits":I
    goto :goto_0

    #@45
    .line 747
    .end local v0    # "modeBits":I
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@47
    new-instance v2, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v3, "Invalid mode: "

    #@4f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v1
.end method

.method private static parsePathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$PathStrategy;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    const/4 v11, 0x0

    #@2
    const/4 v10, 0x1

    #@3
    .line 556
    new-instance v4, Landroid/support/v4/content/FileProvider$SimplePathStrategy;

    #@5
    invoke-direct {v4, p1}, Landroid/support/v4/content/FileProvider$SimplePathStrategy;-><init>(Ljava/lang/String;)V

    #@8
    .line 558
    .local v4, "strat":Landroid/support/v4/content/FileProvider$SimplePathStrategy;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@b
    move-result-object v8

    #@c
    .line 559
    const/16 v9, 0x80

    #@e
    .line 558
    invoke-virtual {v8, p1, v9}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    #@11
    move-result-object v1

    #@12
    .line 561
    .local v1, "info":Landroid/content/pm/ProviderInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@15
    move-result-object v8

    #@16
    const-string/jumbo v9, "android.support.FILE_PROVIDER_PATHS"

    #@19
    .line 560
    invoke-virtual {v1, v8, v9}, Landroid/content/pm/ProviderInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@1c
    move-result-object v0

    #@1d
    .line 562
    .local v0, "in":Landroid/content/res/XmlResourceParser;
    if-nez v0, :cond_0

    #@1f
    .line 563
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@21
    .line 564
    const-string/jumbo v9, "Missing android.support.FILE_PROVIDER_PATHS meta-data"

    #@24
    .line 563
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v8

    #@28
    .line 568
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    #@2b
    move-result v7

    #@2c
    .local v7, "type":I
    if-eq v7, v10, :cond_5

    #@2e
    .line 569
    const/4 v8, 0x2

    #@2f
    if-ne v7, v8, :cond_0

    #@31
    .line 570
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@34
    move-result-object v5

    #@35
    .line 572
    .local v5, "tag":Ljava/lang/String;
    const-string/jumbo v8, "name"

    #@38
    invoke-interface {v0, v12, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    .line 573
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v8, "path"

    #@3f
    invoke-interface {v0, v12, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    .line 575
    .local v3, "path":Ljava/lang/String;
    const/4 v6, 0x0

    #@44
    .line 576
    .local v6, "target":Ljava/io/File;
    const-string/jumbo v8, "root-path"

    #@47
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v8

    #@4b
    if-eqz v8, :cond_2

    #@4d
    .line 577
    sget-object v8, Landroid/support/v4/content/FileProvider;->DEVICE_ROOT:Ljava/io/File;

    #@4f
    new-array v9, v10, [Ljava/lang/String;

    #@51
    aput-object v3, v9, v11

    #@53
    invoke-static {v8, v9}, Landroid/support/v4/content/FileProvider;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@56
    move-result-object v6

    #@57
    .line 586
    .end local v6    # "target":Ljava/io/File;
    :cond_1
    :goto_1
    if-eqz v6, :cond_0

    #@59
    .line 587
    invoke-virtual {v4, v2, v6}, Landroid/support/v4/content/FileProvider$SimplePathStrategy;->addRoot(Ljava/lang/String;Ljava/io/File;)V

    #@5c
    goto :goto_0

    #@5d
    .line 578
    .restart local v6    # "target":Ljava/io/File;
    :cond_2
    const-string/jumbo v8, "files-path"

    #@60
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v8

    #@64
    if-eqz v8, :cond_3

    #@66
    .line 579
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    #@69
    move-result-object v8

    #@6a
    new-array v9, v10, [Ljava/lang/String;

    #@6c
    aput-object v3, v9, v11

    #@6e
    invoke-static {v8, v9}, Landroid/support/v4/content/FileProvider;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@71
    move-result-object v6

    #@72
    .local v6, "target":Ljava/io/File;
    goto :goto_1

    #@73
    .line 580
    .local v6, "target":Ljava/io/File;
    :cond_3
    const-string/jumbo v8, "cache-path"

    #@76
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@79
    move-result v8

    #@7a
    if-eqz v8, :cond_4

    #@7c
    .line 581
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    #@7f
    move-result-object v8

    #@80
    new-array v9, v10, [Ljava/lang/String;

    #@82
    aput-object v3, v9, v11

    #@84
    invoke-static {v8, v9}, Landroid/support/v4/content/FileProvider;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@87
    move-result-object v6

    #@88
    .local v6, "target":Ljava/io/File;
    goto :goto_1

    #@89
    .line 582
    .local v6, "target":Ljava/io/File;
    :cond_4
    const-string/jumbo v8, "external-path"

    #@8c
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8f
    move-result v8

    #@90
    if-eqz v8, :cond_1

    #@92
    .line 583
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    #@95
    move-result-object v8

    #@96
    new-array v9, v10, [Ljava/lang/String;

    #@98
    aput-object v3, v9, v11

    #@9a
    invoke-static {v8, v9}, Landroid/support/v4/content/FileProvider;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@9d
    move-result-object v6

    #@9e
    .local v6, "target":Ljava/io/File;
    goto :goto_1

    #@9f
    .line 592
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "target":Ljava/io/File;
    :cond_5
    return-object v4
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    #@0
    .prologue
    .line 342
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    #@3
    .line 345
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 346
    new-instance v0, Ljava/lang/SecurityException;

    #@9
    const-string/jumbo v1, "Provider must not be exported"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 348
    :cond_0
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    #@12
    if-nez v0, :cond_1

    #@14
    .line 349
    new-instance v0, Ljava/lang/SecurityException;

    #@16
    const-string/jumbo v1, "Provider must grant uri permissions"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 352
    :cond_1
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    #@1f
    invoke-static {p1, v0}, Landroid/support/v4/content/FileProvider;->getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$PathStrategy;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;

    #@25
    .line 341
    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 497
    iget-object v1, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;

    #@2
    invoke-interface {v1, p1}, Landroid/support/v4/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    .line 498
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    const/4 v1, 0x1

    #@d
    :goto_0
    return v1

    #@e
    :cond_0
    const/4 v1, 0x0

    #@f
    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 451
    iget-object v4, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;

    #@2
    invoke-interface {v4, p1}, Landroid/support/v4/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    .line 453
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    #@9
    move-result-object v4

    #@a
    const/16 v5, 0x2e

    #@c
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    #@f
    move-result v2

    #@10
    .line 454
    .local v2, "lastDot":I
    if-ltz v2, :cond_0

    #@12
    .line 455
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    add-int/lit8 v5, v2, 0x1

    #@18
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 456
    .local v0, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    .line 457
    .local v3, "mime":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@26
    .line 458
    return-object v3

    #@27
    .line 462
    .end local v0    # "extension":Ljava/lang/String;
    .end local v3    # "mime":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "application/octet-stream"

    #@2a
    return-object v4
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    #@0
    .prologue
    .line 471
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "No external inserts"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public onCreate()Z
    .locals 1

    #@0
    .prologue
    .line 330
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 519
    iget-object v2, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;

    #@2
    invoke-interface {v2, p1}, Landroid/support/v4/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    .line 520
    .local v0, "file":Ljava/io/File;
    invoke-static {p2}, Landroid/support/v4/content/FileProvider;->modeToMode(Ljava/lang/String;)I

    #@9
    move-result v1

    #@a
    .line 521
    .local v1, "fileMode":I
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@d
    move-result-object v2

    #@e
    return-object v2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    #@0
    .prologue
    .line 412
    iget-object v7, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;

    #@2
    invoke-interface {v7, p1}, Landroid/support/v4/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    #@5
    move-result-object v3

    #@6
    .line 414
    .local v3, "file":Ljava/io/File;
    if-nez p2, :cond_0

    #@8
    .line 415
    sget-object p2, Landroid/support/v4/content/FileProvider;->COLUMNS:[Ljava/lang/String;

    #@a
    .line 418
    :cond_0
    array-length v7, p2

    #@b
    new-array v1, v7, [Ljava/lang/String;

    #@d
    .line 419
    .local v1, "cols":[Ljava/lang/String;
    array-length v7, p2

    #@e
    new-array v6, v7, [Ljava/lang/Object;

    #@10
    .line 420
    .local v6, "values":[Ljava/lang/Object;
    const/4 v4, 0x0

    #@11
    .line 421
    .local v4, "i":I
    const/4 v7, 0x0

    #@12
    array-length v8, p2

    #@13
    move v5, v4

    #@14
    .end local v4    # "i":I
    .local v5, "i":I
    :goto_0
    if-ge v7, v8, :cond_2

    #@16
    aget-object v0, p2, v7

    #@18
    .line 422
    .local v0, "col":Ljava/lang/String;
    const-string/jumbo v9, "_display_name"

    #@1b
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v9

    #@1f
    if-eqz v9, :cond_1

    #@21
    .line 423
    const-string/jumbo v9, "_display_name"

    #@24
    aput-object v9, v1, v5

    #@26
    .line 424
    add-int/lit8 v4, v5, 0x1

    #@28
    .end local v5    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    #@2b
    move-result-object v9

    #@2c
    aput-object v9, v6, v5

    #@2e
    .line 421
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@30
    move v5, v4

    #@31
    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_0

    #@32
    .line 425
    :cond_1
    const-string/jumbo v9, "_size"

    #@35
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v9

    #@39
    if-eqz v9, :cond_3

    #@3b
    .line 426
    const-string/jumbo v9, "_size"

    #@3e
    aput-object v9, v1, v5

    #@40
    .line 427
    add-int/lit8 v4, v5, 0x1

    #@42
    .end local v5    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v3}, Ljava/io/File;->length()J

    #@45
    move-result-wide v10

    #@46
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@49
    move-result-object v9

    #@4a
    aput-object v9, v6, v5

    #@4c
    goto :goto_1

    #@4d
    .line 431
    .end local v0    # "col":Ljava/lang/String;
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_2
    invoke-static {v1, v5}, Landroid/support/v4/content/FileProvider;->copyOf([Ljava/lang/String;I)[Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    .line 432
    invoke-static {v6, v5}, Landroid/support/v4/content/FileProvider;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@54
    move-result-object v6

    #@55
    .line 434
    new-instance v2, Landroid/database/MatrixCursor;

    #@57
    const/4 v7, 0x1

    #@58
    invoke-direct {v2, v1, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    #@5b
    .line 435
    .local v2, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {v2, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    #@5e
    .line 436
    return-object v2

    #@5f
    .end local v2    # "cursor":Landroid/database/MatrixCursor;
    .restart local v0    # "col":Ljava/lang/String;
    :cond_3
    move v4, v5

    #@60
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 480
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "No external updates"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
