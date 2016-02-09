.class final Ldalvik/system/DexPathList;
.super Ljava/lang/Object;
.source "DexPathList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/DexPathList$Element;
    }
.end annotation


# static fields
.field private static final DEX_SUFFIX:Ljava/lang/String; = ".dex"

.field private static final zipSeparator:Ljava/lang/String; = "!/"


# instance fields
.field private final definingContext:Ljava/lang/ClassLoader;

.field private final dexElements:[Ldalvik/system/DexPathList$Element;

.field private final dexElementsSuppressedExceptions:[Ljava/io/IOException;

.field private final nativeLibraryDirectories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final nativeLibraryPathElements:[Ldalvik/system/DexPathList$Element;

.field private final systemNativeLibraryDirectories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 5
    .param p1, "definingContext"    # Ljava/lang/ClassLoader;
    .param p2, "dexPath"    # Ljava/lang/String;
    .param p3, "libraryPath"    # Ljava/lang/String;
    .param p4, "optimizedDirectory"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 93
    if-nez p1, :cond_0

    #@7
    .line 94
    new-instance v2, Ljava/lang/NullPointerException;

    #@9
    const-string/jumbo v3, "definingContext == null"

    #@c
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2

    #@10
    .line 97
    :cond_0
    if-nez p2, :cond_1

    #@12
    .line 98
    new-instance v2, Ljava/lang/NullPointerException;

    #@14
    const-string/jumbo v3, "dexPath == null"

    #@17
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v2

    #@1b
    .line 101
    :cond_1
    if-eqz p4, :cond_4

    #@1d
    .line 102
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    #@20
    move-result v2

    #@21
    if-nez v2, :cond_2

    #@23
    .line 103
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@25
    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v4, "optimizedDirectory doesn\'t exist: "

    #@2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    .line 103
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v2

    #@3d
    .line 108
    :cond_2
    invoke-virtual {p4}, Ljava/io/File;->canRead()Z

    #@40
    move-result v2

    #@41
    if-eqz v2, :cond_3

    #@43
    .line 109
    invoke-virtual {p4}, Ljava/io/File;->canWrite()Z

    #@46
    move-result v2

    #@47
    .line 108
    :goto_0
    if-nez v2, :cond_4

    #@49
    .line 110
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4b
    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v4, "optimizedDirectory not readable/writable: "

    #@53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v3

    #@5f
    .line 110
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@62
    throw v2

    #@63
    :cond_3
    move v2, v3

    #@64
    .line 108
    goto :goto_0

    #@65
    .line 116
    :cond_4
    iput-object p1, p0, Ldalvik/system/DexPathList;->definingContext:Ljava/lang/ClassLoader;

    #@67
    .line 118
    new-instance v1, Ljava/util/ArrayList;

    #@69
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@6c
    .line 120
    .local v1, "suppressedExceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/IOException;>;"
    invoke-static {p2}, Ldalvik/system/DexPathList;->splitDexPath(Ljava/lang/String;)Ljava/util/List;

    #@6f
    move-result-object v2

    #@70
    invoke-static {v2, p4, v1}, Ldalvik/system/DexPathList;->makePathElements(Ljava/util/List;Ljava/io/File;Ljava/util/List;)[Ldalvik/system/DexPathList$Element;

    #@73
    move-result-object v2

    #@74
    iput-object v2, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    #@76
    .line 133
    invoke-static {p3, v3}, Ldalvik/system/DexPathList;->splitPaths(Ljava/lang/String;Z)Ljava/util/List;

    #@79
    move-result-object v2

    #@7a
    iput-object v2, p0, Ldalvik/system/DexPathList;->nativeLibraryDirectories:Ljava/util/List;

    #@7c
    .line 135
    const-string/jumbo v2, "java.library.path"

    #@7f
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@82
    move-result-object v2

    #@83
    const/4 v3, 0x1

    #@84
    invoke-static {v2, v3}, Ldalvik/system/DexPathList;->splitPaths(Ljava/lang/String;Z)Ljava/util/List;

    #@87
    move-result-object v2

    #@88
    .line 134
    iput-object v2, p0, Ldalvik/system/DexPathList;->systemNativeLibraryDirectories:Ljava/util/List;

    #@8a
    .line 136
    new-instance v0, Ljava/util/ArrayList;

    #@8c
    iget-object v2, p0, Ldalvik/system/DexPathList;->nativeLibraryDirectories:Ljava/util/List;

    #@8e
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@91
    .line 137
    .local v0, "allNativeLibraryDirectories":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v2, p0, Ldalvik/system/DexPathList;->systemNativeLibraryDirectories:Ljava/util/List;

    #@93
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@96
    .line 139
    invoke-static {v0, v4, v1}, Ldalvik/system/DexPathList;->makePathElements(Ljava/util/List;Ljava/io/File;Ljava/util/List;)[Ldalvik/system/DexPathList$Element;

    #@99
    move-result-object v2

    #@9a
    iput-object v2, p0, Ldalvik/system/DexPathList;->nativeLibraryPathElements:[Ldalvik/system/DexPathList$Element;

    #@9c
    .line 142
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@9f
    move-result v2

    #@a0
    if-lez v2, :cond_5

    #@a2
    .line 144
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@a5
    move-result v2

    #@a6
    new-array v2, v2, [Ljava/io/IOException;

    #@a8
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@ab
    move-result-object v2

    #@ac
    check-cast v2, [Ljava/io/IOException;

    #@ae
    .line 143
    iput-object v2, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    #@b0
    .line 91
    :goto_1
    return-void

    #@b1
    .line 146
    :cond_5
    iput-object v4, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    #@b3
    goto :goto_1
.end method

.method private static loadDexFile(Ljava/io/File;Ljava/io/File;)Ldalvik/system/DexFile;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "optimizedDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 278
    if-nez p1, :cond_0

    #@2
    .line 279
    new-instance v1, Ldalvik/system/DexFile;

    #@4
    invoke-direct {v1, p0}, Ldalvik/system/DexFile;-><init>(Ljava/io/File;)V

    #@7
    return-object v1

    #@8
    .line 281
    :cond_0
    invoke-static {p0, p1}, Ldalvik/system/DexPathList;->optimizedPathFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 282
    .local v0, "optimizedPath":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    const/4 v2, 0x0

    #@11
    invoke-static {v1, v0, v2}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    #@14
    move-result-object v1

    #@15
    return-object v1
.end method

.method private static makePathElements(Ljava/util/List;Ljava/io/File;Ljava/util/List;)[Ldalvik/system/DexPathList$Element;
    .locals 16
    .param p1, "optimizedDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/IOException;",
            ">;)[",
            "Ldalvik/system/DexPathList$Element;"
        }
    .end annotation

    #@0
    .prologue
    .line 216
    .local p0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local p2, "suppressedExceptions":Ljava/util/List;, "Ljava/util/List<Ljava/io/IOException;>;"
    new-instance v3, Ljava/util/ArrayList;

    #@2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 221
    .local v3, "elements":Ljava/util/List;, "Ljava/util/List<Ldalvik/system/DexPathList$Element;>;"
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v6

    #@9
    .local v6, "file$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v12

    #@d
    if-eqz v12, :cond_6

    #@f
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v5

    #@13
    check-cast v5, Ljava/io/File;

    #@15
    .line 222
    .local v5, "file":Ljava/io/File;
    const/4 v11, 0x0

    #@16
    .line 223
    .local v11, "zip":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    #@18
    const-string/jumbo v12, ""

    #@1b
    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1e
    .line 224
    .local v2, "dir":Ljava/io/File;
    const/4 v1, 0x0

    #@1f
    .line 225
    .local v1, "dex":Ldalvik/system/DexFile;
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@22
    move-result-object v8

    #@23
    .line 226
    .local v8, "path":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    #@26
    move-result-object v7

    #@27
    .line 228
    .local v7, "name":Ljava/lang/String;
    const-string/jumbo v12, "!/"

    #@2a
    invoke-virtual {v8, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@2d
    move-result v12

    #@2e
    if-eqz v12, :cond_2

    #@30
    .line 229
    const-string/jumbo v12, "!/"

    #@33
    const/4 v13, 0x2

    #@34
    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@37
    move-result-object v9

    #@38
    .line 230
    .local v9, "split":[Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    #@3a
    .end local v11    # "zip":Ljava/io/File;
    const/4 v12, 0x0

    #@3b
    aget-object v12, v9, v12

    #@3d
    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@40
    .line 231
    .local v11, "zip":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    #@42
    .end local v2    # "dir":Ljava/io/File;
    const/4 v12, 0x1

    #@43
    aget-object v12, v9, v12

    #@45
    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@48
    .line 264
    .end local v1    # "dex":Ldalvik/system/DexFile;
    .end local v9    # "split":[Ljava/lang/String;
    .end local v11    # "zip":Ljava/io/File;
    .restart local v2    # "dir":Ljava/io/File;
    :goto_1
    if-nez v11, :cond_1

    #@4a
    if-eqz v1, :cond_0

    #@4c
    .line 265
    :cond_1
    new-instance v12, Ldalvik/system/DexPathList$Element;

    #@4e
    const/4 v13, 0x0

    #@4f
    invoke-direct {v12, v2, v13, v11, v1}, Ldalvik/system/DexPathList$Element;-><init>(Ljava/io/File;ZLjava/io/File;Ldalvik/system/DexFile;)V

    #@52
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@55
    goto :goto_0

    #@56
    .line 232
    .restart local v1    # "dex":Ldalvik/system/DexFile;
    .local v11, "zip":Ljava/io/File;
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    #@59
    move-result v12

    #@5a
    if-eqz v12, :cond_3

    #@5c
    .line 235
    new-instance v12, Ldalvik/system/DexPathList$Element;

    #@5e
    const/4 v13, 0x1

    #@5f
    const/4 v14, 0x0

    #@60
    const/4 v15, 0x0

    #@61
    invoke-direct {v12, v5, v13, v14, v15}, Ldalvik/system/DexPathList$Element;-><init>(Ljava/io/File;ZLjava/io/File;Ldalvik/system/DexFile;)V

    #@64
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@67
    goto :goto_1

    #@68
    .line 236
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    #@6b
    move-result v12

    #@6c
    if-eqz v12, :cond_5

    #@6e
    .line 237
    const-string/jumbo v12, ".dex"

    #@71
    invoke-virtual {v7, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@74
    move-result v12

    #@75
    if-eqz v12, :cond_4

    #@77
    .line 240
    :try_start_0
    move-object/from16 v0, p1

    #@79
    invoke-static {v5, v0}, Ldalvik/system/DexPathList;->loadDexFile(Ljava/io/File;Ljava/io/File;)Ldalvik/system/DexFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@7c
    move-result-object v1

    #@7d
    .local v1, "dex":Ldalvik/system/DexFile;
    goto :goto_1

    #@7e
    .line 241
    .local v1, "dex":Ldalvik/system/DexFile;
    :catch_0
    move-exception v4

    #@7f
    .line 242
    .local v4, "ex":Ljava/io/IOException;
    new-instance v12, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v13, "Unable to load dex file: "

    #@87
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v12

    #@8b
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v12

    #@8f
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v12

    #@93
    invoke-static {v12, v4}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@96
    goto :goto_1

    #@97
    .line 245
    .end local v4    # "ex":Ljava/io/IOException;
    :cond_4
    move-object v11, v5

    #@98
    .line 248
    .local v11, "zip":Ljava/io/File;
    :try_start_1
    move-object/from16 v0, p1

    #@9a
    invoke-static {v5, v0}, Ldalvik/system/DexPathList;->loadDexFile(Ljava/io/File;Ljava/io/File;)Ldalvik/system/DexFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@9d
    move-result-object v1

    #@9e
    .local v1, "dex":Ldalvik/system/DexFile;
    goto :goto_1

    #@9f
    .line 249
    .local v1, "dex":Ldalvik/system/DexFile;
    :catch_1
    move-exception v10

    #@a0
    .line 257
    .local v10, "suppressed":Ljava/io/IOException;
    move-object/from16 v0, p2

    #@a2
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a5
    goto :goto_1

    #@a6
    .line 261
    .end local v10    # "suppressed":Ljava/io/IOException;
    .local v11, "zip":Ljava/io/File;
    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    const-string/jumbo v13, "ClassLoader referenced unknown path: "

    #@ae
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v12

    #@b2
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v12

    #@b6
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v12

    #@ba
    invoke-static {v12}, Ljava/lang/System;->logW(Ljava/lang/String;)V

    #@bd
    goto :goto_1

    #@be
    .line 269
    .end local v1    # "dex":Ldalvik/system/DexFile;
    .end local v2    # "dir":Ljava/io/File;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    .end local v11    # "zip":Ljava/io/File;
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@c1
    move-result v12

    #@c2
    new-array v12, v12, [Ldalvik/system/DexPathList$Element;

    #@c4
    invoke-interface {v3, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@c7
    move-result-object v12

    #@c8
    check-cast v12, [Ldalvik/system/DexPathList$Element;

    #@ca
    return-object v12
.end method

.method private static optimizedPathFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p0, "path"    # Ljava/io/File;
    .param p1, "optimizedDirectory"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 304
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 305
    .local v0, "fileName":Ljava/lang/String;
    const-string/jumbo v4, ".dex"

    #@8
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@b
    move-result v4

    #@c
    if-nez v4, :cond_0

    #@e
    .line 306
    const-string/jumbo v4, "."

    #@11
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@14
    move-result v1

    #@15
    .line 307
    .local v1, "lastDot":I
    if-gez v1, :cond_1

    #@17
    .line 308
    new-instance v4, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    const-string/jumbo v5, ".dex"

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    .line 317
    .end local v1    # "lastDot":I
    :cond_0
    :goto_0
    new-instance v2, Ljava/io/File;

    #@2d
    invoke-direct {v2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@30
    .line 318
    .local v2, "result":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    return-object v4

    #@35
    .line 310
    .end local v2    # "result":Ljava/io/File;
    .restart local v1    # "lastDot":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@37
    add-int/lit8 v4, v1, 0x4

    #@39
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    #@3c
    .line 311
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v0, v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@3f
    .line 312
    const-string/jumbo v4, ".dex"

    #@42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 313
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    goto :goto_0
.end method

.method private static splitDexPath(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 176
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Ldalvik/system/DexPathList;->splitPaths(Ljava/lang/String;Z)Ljava/util/List;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private static splitPaths(Ljava/lang/String;Z)Ljava/util/List;
    .locals 8
    .param p0, "searchPath"    # Ljava/lang/String;
    .param p1, "directoriesOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 189
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 191
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    if-eqz p0, :cond_1

    #@7
    .line 192
    sget-object v4, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    #@9
    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@c
    move-result-object v5

    #@d
    const/4 v4, 0x0

    #@e
    array-length v6, v5

    #@f
    :goto_0
    if-ge v4, v6, :cond_1

    #@11
    aget-object v1, v5, v4

    #@13
    .line 193
    .local v1, "path":Ljava/lang/String;
    if-eqz p1, :cond_0

    #@15
    .line 195
    :try_start_0
    sget-object v7, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@17
    invoke-interface {v7, v1}, Llibcore/io/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    #@1a
    move-result-object v3

    #@1b
    .line 196
    .local v3, "sb":Landroid/system/StructStat;
    iget v7, v3, Landroid/system/StructStat;->st_mode:I

    #@1d
    invoke-static {v7}, Landroid/system/OsConstants;->S_ISDIR(I)Z
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    move-result v7

    #@21
    if-nez v7, :cond_0

    #@23
    .line 192
    .end local v3    # "sb":Landroid/system/StructStat;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@25
    goto :goto_0

    #@26
    .line 203
    :cond_0
    new-instance v7, Ljava/io/File;

    #@28
    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@2b
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2e
    goto :goto_1

    #@2f
    .line 207
    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    return-object v2

    #@30
    .line 199
    .restart local v1    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@31
    .local v0, "ignored":Landroid/system/ErrnoException;
    goto :goto_1
.end method


# virtual methods
.method public findClass(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Class;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    const/4 v7, 0x0

    #@1
    .line 334
    iget-object v4, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    #@3
    const/4 v3, 0x0

    #@4
    array-length v5, v4

    #@5
    :goto_0
    if-ge v3, v5, :cond_1

    #@7
    aget-object v2, v4, v3

    #@9
    .line 335
    .local v2, "element":Ldalvik/system/DexPathList$Element;
    invoke-static {v2}, Ldalvik/system/DexPathList$Element;->-get0(Ldalvik/system/DexPathList$Element;)Ldalvik/system/DexFile;

    #@c
    move-result-object v1

    #@d
    .line 337
    .local v1, "dex":Ldalvik/system/DexFile;
    if-eqz v1, :cond_0

    #@f
    .line 338
    iget-object v6, p0, Ldalvik/system/DexPathList;->definingContext:Ljava/lang/ClassLoader;

    #@11
    invoke-virtual {v1, p1, v6, p2}, Ldalvik/system/DexFile;->loadClassBinaryName(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/List;)Ljava/lang/Class;

    #@14
    move-result-object v0

    #@15
    .line 339
    .local v0, "clazz":Ljava/lang/Class;
    if-eqz v0, :cond_0

    #@17
    .line 340
    return-object v0

    #@18
    .line 334
    .end local v0    # "clazz":Ljava/lang/Class;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 344
    .end local v1    # "dex":Ldalvik/system/DexFile;
    .end local v2    # "element":Ldalvik/system/DexPathList$Element;
    :cond_1
    iget-object v3, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    #@1d
    if-eqz v3, :cond_2

    #@1f
    .line 345
    iget-object v3, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    #@21
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@24
    move-result-object v3

    #@25
    invoke-interface {p2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@28
    .line 347
    :cond_2
    return-object v7
.end method

.method public findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "libraryName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 397
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 399
    .local v1, "fileName":Ljava/lang/String;
    iget-object v4, p0, Ldalvik/system/DexPathList;->nativeLibraryPathElements:[Ldalvik/system/DexPathList$Element;

    #@7
    const/4 v3, 0x0

    #@8
    array-length v5, v4

    #@9
    :goto_0
    if-ge v3, v5, :cond_1

    #@b
    aget-object v0, v4, v3

    #@d
    .line 400
    .local v0, "element":Ldalvik/system/DexPathList$Element;
    invoke-virtual {v0, v1}, Ldalvik/system/DexPathList$Element;->findNativeLibrary(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    .line 402
    .local v2, "path":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@13
    .line 403
    return-object v2

    #@14
    .line 399
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@16
    goto :goto_0

    #@17
    .line 407
    .end local v0    # "element":Ldalvik/system/DexPathList$Element;
    .end local v2    # "path":Ljava/lang/String;
    :cond_1
    return-object v6
.end method

.method public findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 359
    iget-object v3, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    #@3
    const/4 v2, 0x0

    #@4
    array-length v4, v3

    #@5
    :goto_0
    if-ge v2, v4, :cond_1

    #@7
    aget-object v0, v3, v2

    #@9
    .line 360
    .local v0, "element":Ldalvik/system/DexPathList$Element;
    invoke-virtual {v0, p1}, Ldalvik/system/DexPathList$Element;->findResource(Ljava/lang/String;)Ljava/net/URL;

    #@c
    move-result-object v1

    #@d
    .line 361
    .local v1, "url":Ljava/net/URL;
    if-eqz v1, :cond_0

    #@f
    .line 362
    return-object v1

    #@10
    .line 359
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@12
    goto :goto_0

    #@13
    .line 366
    .end local v0    # "element":Ldalvik/system/DexPathList$Element;
    .end local v1    # "url":Ljava/net/URL;
    :cond_1
    return-object v5
.end method

.method public findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 375
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 377
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    iget-object v4, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    #@7
    const/4 v3, 0x0

    #@8
    array-length v5, v4

    #@9
    :goto_0
    if-ge v3, v5, :cond_1

    #@b
    aget-object v0, v4, v3

    #@d
    .line 378
    .local v0, "element":Ldalvik/system/DexPathList$Element;
    invoke-virtual {v0, p1}, Ldalvik/system/DexPathList$Element;->findResource(Ljava/lang/String;)Ljava/net/URL;

    #@10
    move-result-object v2

    #@11
    .line 379
    .local v2, "url":Ljava/net/URL;
    if-eqz v2, :cond_0

    #@13
    .line 380
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    .line 377
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@18
    goto :goto_0

    #@19
    .line 384
    .end local v0    # "element":Ldalvik/system/DexPathList$Element;
    .end local v2    # "url":Ljava/net/URL;
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    #@1c
    move-result-object v3

    #@1d
    return-object v3
.end method

.method public getNativeLibraryDirectories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 166
    iget-object v0, p0, Ldalvik/system/DexPathList;->nativeLibraryDirectories:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 151
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v2, p0, Ldalvik/system/DexPathList;->nativeLibraryDirectories:Ljava/util/List;

    #@4
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@7
    .line 152
    .local v0, "allNativeLibraryDirectories":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v2, p0, Ldalvik/system/DexPathList;->systemNativeLibraryDirectories:Ljava/util/List;

    #@9
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@c
    .line 156
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@f
    move-result v2

    #@10
    new-array v2, v2, [Ljava/io/File;

    #@12
    .line 155
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, [Ljava/io/File;

    #@18
    .line 158
    .local v1, "nativeLibraryDirectoriesArray":[Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v3, "DexPathList["

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    iget-object v3, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    #@26
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    .line 159
    const-string/jumbo v3, ",nativeLibraryDirectories="

    #@31
    .line 158
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    .line 159
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    .line 158
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    .line 159
    const-string/jumbo v3, "]"

    #@40
    .line 158
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    return-object v2
.end method
