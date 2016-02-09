.class public Landroid/test/ClassPathPackageInfoSource;
.super Ljava/lang/Object;
.source "ClassPathPackageInfoSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/ClassPathPackageInfoSource$1;
    }
.end annotation


# static fields
.field private static final CLASS_EXTENSION:Ljava/lang/String; = ".class"

.field private static final CLASS_LOADER:Ljava/lang/ClassLoader;

.field private static apkPaths:[Ljava/lang/String;


# instance fields
.field private final cache:Landroid/test/SimpleCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/test/SimpleCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/test/ClassPathPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private classLoader:Ljava/lang/ClassLoader;

.field private final classPath:[Ljava/lang/String;

.field private final jarFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Landroid/test/ClassPathPackageInfoSource;Ljava/lang/String;)Landroid/test/ClassPathPackageInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/test/ClassPathPackageInfoSource;->createPackageInfo(Ljava/lang/String;)Landroid/test/ClassPathPackageInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 44
    const-class v0, Landroid/test/ClassPathPackageInfoSource;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v0

    #@6
    .line 43
    sput-object v0, Landroid/test/ClassPathPackageInfoSource;->CLASS_LOADER:Ljava/lang/ClassLoader;

    #@8
    .line 39
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    new-instance v0, Landroid/test/ClassPathPackageInfoSource$1;

    #@5
    invoke-direct {v0, p0}, Landroid/test/ClassPathPackageInfoSource$1;-><init>(Landroid/test/ClassPathPackageInfoSource;)V

    #@8
    .line 46
    iput-object v0, p0, Landroid/test/ClassPathPackageInfoSource;->cache:Landroid/test/SimpleCache;

    #@a
    .line 59
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/test/ClassPathPackageInfoSource;->jarFiles:Ljava/util/Map;

    #@10
    .line 63
    invoke-static {}, Landroid/test/ClassPathPackageInfoSource;->getClassPath()[Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid/test/ClassPathPackageInfoSource;->classPath:[Ljava/lang/String;

    #@16
    .line 62
    return-void
.end method

.method private createPackageInfo(Ljava/lang/String;)Landroid/test/ClassPathPackageInfo;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 76
    new-instance v4, Ljava/util/TreeSet;

    #@2
    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    #@5
    .line 77
    .local v4, "subpackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/TreeSet;

    #@7
    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    #@a
    .line 78
    .local v2, "classNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    #@d
    move-result-object v5

    #@e
    .line 79
    .local v5, "topLevelClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-direct {p0, p1, v2, v4}, Landroid/test/ClassPathPackageInfoSource;->findClasses(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    #@11
    .line 80
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .local v1, "className$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v6

    #@19
    if-eqz v6, :cond_2

    #@1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Ljava/lang/String;

    #@21
    .line 81
    .local v0, "className":Ljava/lang/String;
    const-string/jumbo v6, ".R"

    #@24
    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@27
    move-result v6

    #@28
    if-nez v6, :cond_0

    #@2a
    const-string/jumbo v6, ".Manifest"

    #@2d
    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@30
    move-result v6

    #@31
    if-nez v6, :cond_0

    #@33
    .line 89
    :try_start_0
    iget-object v6, p0, Landroid/test/ClassPathPackageInfoSource;->classLoader:Ljava/lang/ClassLoader;

    #@35
    if-eqz v6, :cond_1

    #@37
    iget-object v6, p0, Landroid/test/ClassPathPackageInfoSource;->classLoader:Ljava/lang/ClassLoader;

    #@39
    .line 88
    :goto_1
    const/4 v7, 0x0

    #@3a
    invoke-static {v0, v7, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@3d
    move-result-object v6

    #@3e
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    goto :goto_0

    #@42
    .line 90
    :catch_0
    move-exception v3

    #@43
    .line 93
    .local v3, "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "ClassPathPackageInfoSource"

    #@46
    new-instance v7, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v8, "Cannot load class. Make sure it is in your apk. Class name: \'"

    #@4e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v7

    #@52
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v7

    #@56
    .line 95
    const-string/jumbo v8, "\'. Message: "

    #@59
    .line 93
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v7

    #@5d
    .line 95
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@60
    move-result-object v8

    #@61
    .line 93
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v7

    #@65
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v7

    #@69
    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6c
    goto :goto_0

    #@6d
    .line 89
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    sget-object v6, Landroid/test/ClassPathPackageInfoSource;->CLASS_LOADER:Ljava/lang/ClassLoader;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0

    #@6f
    goto :goto_1

    #@70
    .line 98
    .end local v0    # "className":Ljava/lang/String;
    :cond_2
    new-instance v6, Landroid/test/ClassPathPackageInfo;

    #@72
    invoke-direct {v6, p0, p1, v4, v5}, Landroid/test/ClassPathPackageInfo;-><init>(Landroid/test/ClassPathPackageInfoSource;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    #@75
    return-object v6
.end method

.method private findClasses(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 109
    .local p2, "classNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "subpackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    move-object/from16 v0, p1

    #@7
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v11

    #@b
    const/16 v12, 0x2e

    #@d
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10
    move-result-object v11

    #@11
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v9

    #@15
    .line 110
    .local v9, "packagePrefix":Ljava/lang/String;
    const/16 v11, 0x2e

    #@17
    const/16 v12, 0x2f

    #@19
    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@1c
    move-result-object v10

    #@1d
    .line 112
    .local v10, "pathPrefix":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1f
    iget-object v13, v0, Landroid/test/ClassPathPackageInfoSource;->classPath:[Ljava/lang/String;

    #@21
    const/4 v11, 0x0

    #@22
    array-length v14, v13

    #@23
    move v12, v11

    #@24
    :goto_0
    if-ge v12, v14, :cond_2

    #@26
    aget-object v7, v13, v12

    #@28
    .line 113
    .local v7, "entryName":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    #@2a
    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@2d
    .line 117
    .local v5, "classPathEntry":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    #@30
    move-result v11

    #@31
    if-eqz v11, :cond_0

    #@33
    .line 119
    :try_start_0
    const-string/jumbo v11, ".apk"

    #@36
    invoke-virtual {v7, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@39
    move-result v11

    #@3a
    if-eqz v11, :cond_1

    #@3c
    .line 120
    move-object/from16 v0, p0

    #@3e
    move-object/from16 v1, p1

    #@40
    move-object/from16 v2, p2

    #@42
    move-object/from16 v3, p3

    #@44
    invoke-direct {v0, v7, v1, v2, v3}, Landroid/test/ClassPathPackageInfoSource;->findClassesInApk(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    #@47
    .line 112
    :cond_0
    add-int/lit8 v11, v12, 0x1

    #@49
    move v12, v11

    #@4a
    goto :goto_0

    #@4b
    .line 123
    :cond_1
    sget-object v15, Landroid/test/ClassPathPackageInfoSource;->apkPaths:[Ljava/lang/String;

    #@4d
    const/4 v11, 0x0

    #@4e
    array-length v0, v15

    #@4f
    move/from16 v16, v0

    #@51
    :goto_1
    move/from16 v0, v16

    #@53
    if-ge v11, v0, :cond_0

    #@55
    aget-object v4, v15, v11

    #@57
    .line 124
    .local v4, "apkPath":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    #@59
    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5c
    .line 125
    .local v8, "file":Ljava/io/File;
    move-object/from16 v0, p0

    #@5e
    move-object/from16 v1, p1

    #@60
    move-object/from16 v2, p2

    #@62
    move-object/from16 v3, p3

    #@64
    invoke-direct {v0, v8, v1, v2, v3}, Landroid/test/ClassPathPackageInfoSource;->scanForApkFiles(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@67
    .line 123
    add-int/lit8 v11, v11, 0x1

    #@69
    goto :goto_1

    #@6a
    .line 128
    .end local v4    # "apkPath":Ljava/lang/String;
    .end local v8    # "file":Ljava/io/File;
    :catch_0
    move-exception v6

    #@6b
    .line 129
    .local v6, "e":Ljava/io/IOException;
    new-instance v11, Ljava/lang/AssertionError;

    #@6d
    new-instance v12, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v13, "Can\'t read classpath entry "

    #@75
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v12

    #@79
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v12

    #@7d
    .line 130
    const-string/jumbo v13, ": "

    #@80
    .line 129
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v12

    #@84
    .line 130
    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@87
    move-result-object v13

    #@88
    .line 129
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v12

    #@8c
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v12

    #@90
    invoke-direct {v11, v12}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@93
    throw v11

    #@94
    .line 108
    .end local v5    # "classPathEntry":Ljava/io/File;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "entryName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private findClassesInApk(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 9
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 210
    .local p3, "classNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p4, "subpackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    #@1
    .line 212
    .local v2, "dexFile":Ldalvik/system/DexFile;
    :try_start_0
    new-instance v3, Ldalvik/system/DexFile;

    #@3
    invoke-direct {v3, p1}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 213
    .end local v2    # "dexFile":Ldalvik/system/DexFile;
    .local v3, "dexFile":Ldalvik/system/DexFile;
    :try_start_1
    invoke-virtual {v3}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    #@9
    move-result-object v0

    #@a
    .line 214
    .local v0, "apkClassNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@d
    move-result v7

    #@e
    if-eqz v7, :cond_5

    #@10
    .line 215
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Ljava/lang/String;

    #@16
    .line 217
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@19
    move-result v7

    #@1a
    if-eqz v7, :cond_0

    #@1c
    .line 218
    move-object v6, p2

    #@1d
    .line 219
    .local v6, "subPackageName":Ljava/lang/String;
    const/16 v7, 0x2e

    #@1f
    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    #@22
    move-result v5

    #@23
    .line 220
    .local v5, "lastPackageSeparator":I
    if-lez v5, :cond_1

    #@25
    .line 221
    const/4 v7, 0x0

    #@26
    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@29
    move-result-object v6

    #@2a
    .line 223
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@2d
    move-result v7

    #@2e
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@31
    move-result v8

    #@32
    if-le v7, v8, :cond_3

    #@34
    .line 224
    invoke-interface {p4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@37
    goto :goto_0

    #@38
    .line 230
    .end local v0    # "apkClassNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v1    # "className":Ljava/lang/String;
    .end local v5    # "lastPackageSeparator":I
    .end local v6    # "subPackageName":Ljava/lang/String;
    :catch_0
    move-exception v4

    #@39
    .local v4, "e":Ljava/io/IOException;
    move-object v2, v3

    #@3a
    .line 236
    .end local v3    # "dexFile":Ldalvik/system/DexFile;
    :goto_1
    if-eqz v2, :cond_2

    #@3c
    .line 208
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    return-void

    #@3d
    .line 225
    .restart local v0    # "apkClassNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v1    # "className":Ljava/lang/String;
    .restart local v3    # "dexFile":Ldalvik/system/DexFile;
    .restart local v5    # "lastPackageSeparator":I
    .restart local v6    # "subPackageName":Ljava/lang/String;
    :cond_3
    invoke-static {v1}, Landroid/test/ClassPathPackageInfoSource;->isToplevelClass(Ljava/lang/String;)Z

    #@40
    move-result v7

    #@41
    if-eqz v7, :cond_0

    #@43
    .line 226
    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    goto :goto_0

    #@47
    .line 235
    .end local v0    # "apkClassNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v1    # "className":Ljava/lang/String;
    .end local v5    # "lastPackageSeparator":I
    .end local v6    # "subPackageName":Ljava/lang/String;
    :catchall_0
    move-exception v7

    #@48
    move-object v2, v3

    #@49
    .line 236
    .end local v3    # "dexFile":Ldalvik/system/DexFile;
    :goto_3
    if-eqz v2, :cond_4

    #@4b
    .line 235
    :cond_4
    throw v7

    #@4c
    .line 236
    .restart local v0    # "apkClassNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v3    # "dexFile":Ldalvik/system/DexFile;
    :cond_5
    if-eqz v3, :cond_6

    #@4e
    :cond_6
    move-object v2, v3

    #@4f
    .end local v3    # "dexFile":Ldalvik/system/DexFile;
    .local v2, "dexFile":Ldalvik/system/DexFile;
    goto :goto_2

    #@50
    .line 235
    .end local v0    # "apkClassNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .local v2, "dexFile":Ldalvik/system/DexFile;
    :catchall_1
    move-exception v7

    #@51
    goto :goto_3

    #@52
    .line 230
    :catch_1
    move-exception v4

    #@53
    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method private findClassesInDirectory(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 8
    .param p1, "classDir"    # Ljava/io/File;
    .param p2, "packagePrefix"    # Ljava/lang/String;
    .param p3, "pathPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 158
    .local p4, "classNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p5, "subpackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/File;

    #@2
    invoke-direct {v0, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@5
    .line 160
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_2

    #@b
    .line 161
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@e
    move-result-object v4

    #@f
    const/4 v3, 0x0

    #@10
    array-length v5, v4

    #@11
    :goto_0
    if-ge v3, v5, :cond_2

    #@13
    aget-object v1, v4, v3

    #@15
    .line 162
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    .line 163
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v6, ".class"

    #@1c
    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@1f
    move-result v6

    #@20
    if-eqz v6, :cond_1

    #@22
    invoke-static {v2}, Landroid/test/ClassPathPackageInfoSource;->isToplevelClass(Ljava/lang/String;)Z

    #@25
    move-result v6

    #@26
    if-eqz v6, :cond_1

    #@28
    .line 164
    new-instance v6, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v6

    #@31
    invoke-static {v2}, Landroid/test/ClassPathPackageInfoSource;->getClassName(Ljava/lang/String;)Ljava/lang/String;

    #@34
    move-result-object v7

    #@35
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v6

    #@39
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v6

    #@3d
    invoke-interface {p4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@40
    .line 161
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@42
    goto :goto_0

    #@43
    .line 165
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    #@46
    move-result v6

    #@47
    if-eqz v6, :cond_0

    #@49
    .line 166
    new-instance v6, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v6

    #@52
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v6

    #@56
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v6

    #@5a
    invoke-interface {p5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5d
    goto :goto_1

    #@5e
    .line 157
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private findClassesInJar(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 10
    .param p1, "jarFile"    # Ljava/io/File;
    .param p2, "pathPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p3, "classNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p4, "subpackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v9, 0x2e

    #@2
    const/4 v8, 0x0

    #@3
    const/16 v7, 0x2f

    #@5
    .line 179
    invoke-direct {p0, p1}, Landroid/test/ClassPathPackageInfoSource;->getJarEntries(Ljava/io/File;)Ljava/util/Set;

    #@8
    move-result-object v2

    #@9
    .line 181
    .local v2, "entryNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@c
    move-result v6

    #@d
    if-nez v6, :cond_0

    #@f
    .line 182
    return-void

    #@10
    .line 184
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@13
    move-result v5

    #@14
    .line 185
    .local v5, "prefixLength":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v1

    #@18
    .local v1, "entryName$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v6

    #@1c
    if-eqz v6, :cond_3

    #@1e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Ljava/lang/String;

    #@24
    .line 186
    .local v0, "entryName":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@27
    move-result v6

    #@28
    if-eqz v6, :cond_1

    #@2a
    .line 187
    const-string/jumbo v6, ".class"

    #@2d
    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@30
    move-result v6

    #@31
    if-eqz v6, :cond_1

    #@33
    .line 190
    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->indexOf(II)I

    #@36
    move-result v3

    #@37
    .line 191
    .local v3, "index":I
    if-ltz v3, :cond_2

    #@39
    .line 192
    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3c
    move-result-object v6

    #@3d
    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    .line 193
    .local v4, "p":Ljava/lang/String;
    invoke-interface {p4, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@44
    goto :goto_0

    #@45
    .line 194
    .end local v4    # "p":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Landroid/test/ClassPathPackageInfoSource;->isToplevelClass(Ljava/lang/String;)Z

    #@48
    move-result v6

    #@49
    if-eqz v6, :cond_1

    #@4b
    .line 195
    invoke-static {v0}, Landroid/test/ClassPathPackageInfoSource;->getClassName(Ljava/lang/String;)Ljava/lang/String;

    #@4e
    move-result-object v6

    #@4f
    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@52
    move-result-object v6

    #@53
    invoke-interface {p3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@56
    goto :goto_0

    #@57
    .line 178
    .end local v0    # "entryName":Ljava/lang/String;
    .end local v3    # "index":I
    :cond_3
    return-void
.end method

.method private static getClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 295
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    const-string/jumbo v2, ".class"

    #@7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@a
    move-result v2

    #@b
    sub-int v0, v1, v2

    #@d
    .line 296
    .local v0, "classNameEnd":I
    const/4 v1, 0x0

    #@e
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    return-object v1
.end method

.method private static getClassPath()[Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 304
    const-string/jumbo v2, "java.class.path"

    #@3
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 305
    .local v0, "classPath":Ljava/lang/String;
    const-string/jumbo v2, "path.separator"

    #@a
    const-string/jumbo v3, ":"

    #@d
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 306
    .local v1, "separator":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    return-object v2
.end method

.method private getJarEntries(Ljava/io/File;)Ljava/util/Set;
    .locals 9
    .param p1, "jarFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v8, 0x2f

    #@2
    const/4 v7, 0x0

    #@3
    .line 248
    iget-object v6, p0, Landroid/test/ClassPathPackageInfoSource;->jarFiles:Ljava/util/Map;

    #@5
    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Ljava/util/Set;

    #@b
    .line 249
    .local v2, "entryNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v2, :cond_2

    #@d
    .line 250
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    #@10
    move-result-object v2

    #@11
    .line 251
    new-instance v5, Ljava/util/zip/ZipFile;

    #@13
    invoke-direct {v5, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    #@16
    .line 252
    .local v5, "zipFile":Ljava/util/zip/ZipFile;
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    #@19
    move-result-object v0

    #@1a
    .line 253
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@1d
    move-result v6

    #@1e
    if-eqz v6, :cond_1

    #@20
    .line 254
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@23
    move-result-object v6

    #@24
    check-cast v6, Ljava/util/zip/ZipEntry;

    #@26
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    .line 255
    .local v1, "entryName":Ljava/lang/String;
    const-string/jumbo v6, ".class"

    #@2d
    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@30
    move-result v6

    #@31
    if-eqz v6, :cond_0

    #@33
    .line 257
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@36
    .line 271
    invoke-virtual {v1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    #@39
    move-result v3

    #@3a
    .line 273
    .local v3, "lastIndex":I
    :goto_0
    add-int/lit8 v6, v3, 0x1

    #@3c
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    .line 274
    .local v4, "packageName":Ljava/lang/String;
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@43
    .line 275
    add-int/lit8 v6, v3, -0x1

    #@45
    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->lastIndexOf(II)I

    #@48
    move-result v3

    #@49
    .line 276
    if-lez v3, :cond_0

    #@4b
    goto :goto_0

    #@4c
    .line 279
    .end local v1    # "entryName":Ljava/lang/String;
    .end local v3    # "lastIndex":I
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Landroid/test/ClassPathPackageInfoSource;->jarFiles:Ljava/util/Map;

    #@4e
    invoke-interface {v6, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    .line 281
    .end local v0    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v5    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_2
    return-object v2
.end method

.method private static isToplevelClass(Ljava/lang/String;)Z
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 288
    const/16 v1, 0x24

    #@3
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v1

    #@7
    if-gez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method private scanForApkFiles(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 4
    .param p1, "source"    # Ljava/io/File;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 138
    .local p3, "classNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p4, "subpackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    const-string/jumbo v3, ".apk"

    #@7
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 139
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-direct {p0, v2, p2, p3, p4}, Landroid/test/ClassPathPackageInfoSource;->findClassesInApk(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    #@14
    .line 137
    :cond_0
    return-void

    #@15
    .line 141
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@18
    move-result-object v1

    #@19
    .line 142
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    #@1b
    .line 143
    const/4 v2, 0x0

    #@1c
    array-length v3, v1

    #@1d
    :goto_0
    if-ge v2, v3, :cond_0

    #@1f
    aget-object v0, v1, v2

    #@21
    .line 144
    .local v0, "file":Ljava/io/File;
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/test/ClassPathPackageInfoSource;->scanForApkFiles(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    #@24
    .line 143
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_0
.end method

.method public static setApkPaths([Ljava/lang/String;)V
    .locals 0
    .param p0, "apkPaths"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 68
    sput-object p0, Landroid/test/ClassPathPackageInfoSource;->apkPaths:[Ljava/lang/String;

    #@2
    .line 67
    return-void
.end method


# virtual methods
.method public getPackageInfo(Ljava/lang/String;)Landroid/test/ClassPathPackageInfo;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Landroid/test/ClassPathPackageInfoSource;->cache:Landroid/test/SimpleCache;

    #@2
    invoke-virtual {v0, p1}, Landroid/test/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/test/ClassPathPackageInfo;

    #@8
    return-object v0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 310
    iput-object p1, p0, Landroid/test/ClassPathPackageInfoSource;->classLoader:Ljava/lang/ClassLoader;

    #@2
    .line 309
    return-void
.end method
