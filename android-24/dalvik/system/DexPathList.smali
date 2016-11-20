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

.field private dexElements:[Ldalvik/system/DexPathList$Element;

.field private dexElementsSuppressedExceptions:[Ljava/io/IOException;

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
    .param p3, "librarySearchPath"    # Ljava/lang/String;
    .param p4, "optimizedDirectory"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 99
    if-nez p1, :cond_0

    #@7
    .line 100
    new-instance v2, Ljava/lang/NullPointerException;

    #@9
    const-string/jumbo v3, "definingContext == null"

    #@c
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2

    #@10
    .line 103
    :cond_0
    if-nez p2, :cond_1

    #@12
    .line 104
    new-instance v2, Ljava/lang/NullPointerException;

    #@14
    const-string/jumbo v3, "dexPath == null"

    #@17
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v2

    #@1b
    .line 107
    :cond_1
    if-eqz p4, :cond_4

    #@1d
    .line 108
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    #@20
    move-result v2

    #@21
    if-nez v2, :cond_2

    #@23
    .line 109
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@25
    .line 110
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
    .line 109
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v2

    #@3d
    .line 114
    :cond_2
    invoke-virtual {p4}, Ljava/io/File;->canRead()Z

    #@40
    move-result v2

    #@41
    if-eqz v2, :cond_3

    #@43
    .line 115
    invoke-virtual {p4}, Ljava/io/File;->canWrite()Z

    #@46
    move-result v2

    #@47
    .line 114
    :goto_0
    if-nez v2, :cond_4

    #@49
    .line 116
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4b
    .line 117
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
    .line 116
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@62
    throw v2

    #@63
    :cond_3
    move v2, v3

    #@64
    .line 114
    goto :goto_0

    #@65
    .line 122
    :cond_4
    iput-object p1, p0, Ldalvik/system/DexPathList;->definingContext:Ljava/lang/ClassLoader;

    #@67
    .line 124
    new-instance v1, Ljava/util/ArrayList;

    #@69
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@6c
    .line 126
    .local v1, "suppressedExceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/IOException;>;"
    invoke-static {p2}, Ldalvik/system/DexPathList;->splitDexPath(Ljava/lang/String;)Ljava/util/List;

    #@6f
    move-result-object v2

    #@70
    invoke-static {v2, p4, v1, p1}, Ldalvik/system/DexPathList;->makeDexElements(Ljava/util/List;Ljava/io/File;Ljava/util/List;Ljava/lang/ClassLoader;)[Ldalvik/system/DexPathList$Element;

    #@73
    move-result-object v2

    #@74
    iput-object v2, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    #@76
    .line 139
    invoke-static {p3, v3}, Ldalvik/system/DexPathList;->splitPaths(Ljava/lang/String;Z)Ljava/util/List;

    #@79
    move-result-object v2

    #@7a
    iput-object v2, p0, Ldalvik/system/DexPathList;->nativeLibraryDirectories:Ljava/util/List;

    #@7c
    .line 141
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
    .line 140
    iput-object v2, p0, Ldalvik/system/DexPathList;->systemNativeLibraryDirectories:Ljava/util/List;

    #@8a
    .line 142
    new-instance v0, Ljava/util/ArrayList;

    #@8c
    iget-object v2, p0, Ldalvik/system/DexPathList;->nativeLibraryDirectories:Ljava/util/List;

    #@8e
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@91
    .line 143
    .local v0, "allNativeLibraryDirectories":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v2, p0, Ldalvik/system/DexPathList;->systemNativeLibraryDirectories:Ljava/util/List;

    #@93
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@96
    .line 145
    invoke-static {v0, v1, p1}, Ldalvik/system/DexPathList;->makePathElements(Ljava/util/List;Ljava/util/List;Ljava/lang/ClassLoader;)[Ldalvik/system/DexPathList$Element;

    #@99
    move-result-object v2

    #@9a
    iput-object v2, p0, Ldalvik/system/DexPathList;->nativeLibraryPathElements:[Ldalvik/system/DexPathList$Element;

    #@9c
    .line 149
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@9f
    move-result v2

    #@a0
    if-lez v2, :cond_5

    #@a2
    .line 151
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
    .line 150
    iput-object v2, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    #@b0
    .line 97
    :goto_1
    return-void

    #@b1
    .line 153
    :cond_5
    iput-object v4, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    #@b3
    goto :goto_1
.end method

.method private static loadDexFile(Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ldalvik/system/DexFile;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "optimizedDirectory"    # Ljava/io/File;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "elements"    # [Ldalvik/system/DexPathList$Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 358
    if-nez p1, :cond_0

    #@2
    .line 359
    new-instance v1, Ldalvik/system/DexFile;

    #@4
    invoke-direct {v1, p0, p2, p3}, Ldalvik/system/DexFile;-><init>(Ljava/io/File;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)V

    #@7
    return-object v1

    #@8
    .line 361
    :cond_0
    invoke-static {p0, p1}, Ldalvik/system/DexPathList;->optimizedPathFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 362
    .local v0, "optimizedPath":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    const/4 v2, 0x0

    #@11
    invoke-static {v1, v0, v2, p2, p3}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ldalvik/system/DexFile;

    #@14
    move-result-object v1

    #@15
    return-object v1
.end method

.method private static makeDexElements(Ljava/util/List;Ljava/io/File;Ljava/util/List;Ljava/lang/ClassLoader;)[Ldalvik/system/DexPathList$Element;
    .locals 1
    .param p1, "optimizedDirectory"    # Ljava/io/File;
    .param p3, "loader"    # Ljava/lang/ClassLoader;
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
            ">;",
            "Ljava/lang/ClassLoader;",
            ")[",
            "Ldalvik/system/DexPathList$Element;"
        }
    .end annotation

    #@0
    .prologue
    .line 263
    .local p0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local p2, "suppressedExceptions":Ljava/util/List;, "Ljava/util/List<Ljava/io/IOException;>;"
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0, p3}, Ldalvik/system/DexPathList;->makeElements(Ljava/util/List;Ljava/io/File;Ljava/util/List;ZLjava/lang/ClassLoader;)[Ldalvik/system/DexPathList$Element;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private static makeElements(Ljava/util/List;Ljava/io/File;Ljava/util/List;ZLjava/lang/ClassLoader;)[Ldalvik/system/DexPathList$Element;
    .locals 18
    .param p1, "optimizedDirectory"    # Ljava/io/File;
    .param p3, "ignoreDexFiles"    # Z
    .param p4, "loader"    # Ljava/lang/ClassLoader;
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
            ">;Z",
            "Ljava/lang/ClassLoader;",
            ")[",
            "Ldalvik/system/DexPathList$Element;"
        }
    .end annotation

    #@0
    .prologue
    .line 288
    .local p0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local p2, "suppressedExceptions":Ljava/util/List;, "Ljava/util/List<Ljava/io/IOException;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    #@3
    move-result v14

    #@4
    new-array v4, v14, [Ldalvik/system/DexPathList$Element;

    #@6
    .line 289
    .local v4, "elements":[Ldalvik/system/DexPathList$Element;
    const/4 v5, 0x0

    #@7
    .line 294
    .local v5, "elementsPos":I
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v8

    #@b
    .local v8, "file$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v14

    #@f
    if-eqz v14, :cond_7

    #@11
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v7

    #@15
    check-cast v7, Ljava/io/File;

    #@17
    .line 295
    .local v7, "file":Ljava/io/File;
    const/4 v13, 0x0

    #@18
    .line 296
    .local v13, "zip":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    #@1a
    const-string/jumbo v14, ""

    #@1d
    invoke-direct {v3, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@20
    .line 297
    .local v3, "dir":Ljava/io/File;
    const/4 v2, 0x0

    #@21
    .line 298
    .local v2, "dex":Ldalvik/system/DexFile;
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@24
    move-result-object v10

    #@25
    .line 299
    .local v10, "path":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    #@28
    move-result-object v9

    #@29
    .line 301
    .local v9, "name":Ljava/lang/String;
    const-string/jumbo v14, "!/"

    #@2c
    invoke-virtual {v10, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@2f
    move-result v14

    #@30
    if-eqz v14, :cond_1

    #@32
    .line 302
    const-string/jumbo v14, "!/"

    #@35
    const/4 v15, 0x2

    #@36
    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@39
    move-result-object v11

    #@3a
    .line 303
    .local v11, "split":[Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    #@3c
    .end local v13    # "zip":Ljava/io/File;
    const/4 v14, 0x0

    #@3d
    aget-object v14, v11, v14

    #@3f
    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@42
    .line 304
    .local v13, "zip":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    #@44
    .end local v3    # "dir":Ljava/io/File;
    const/4 v14, 0x1

    #@45
    aget-object v14, v11, v14

    #@47
    invoke-direct {v3, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@4a
    .restart local v3    # "dir":Ljava/io/File;
    move v6, v5

    #@4b
    .line 340
    .end local v2    # "dex":Ldalvik/system/DexFile;
    .end local v5    # "elementsPos":I
    .end local v11    # "split":[Ljava/lang/String;
    .end local v13    # "zip":Ljava/io/File;
    .local v6, "elementsPos":I
    :goto_1
    if-nez v13, :cond_0

    #@4d
    if-eqz v2, :cond_6

    #@4f
    .line 341
    :cond_0
    add-int/lit8 v5, v6, 0x1

    #@51
    .end local v6    # "elementsPos":I
    .restart local v5    # "elementsPos":I
    new-instance v14, Ldalvik/system/DexPathList$Element;

    #@53
    const/4 v15, 0x0

    #@54
    invoke-direct {v14, v3, v15, v13, v2}, Ldalvik/system/DexPathList$Element;-><init>(Ljava/io/File;ZLjava/io/File;Ldalvik/system/DexFile;)V

    #@57
    aput-object v14, v4, v6

    #@59
    goto :goto_0

    #@5a
    .line 305
    .restart local v2    # "dex":Ldalvik/system/DexFile;
    .local v13, "zip":Ljava/io/File;
    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    #@5d
    move-result v14

    #@5e
    if-eqz v14, :cond_2

    #@60
    .line 308
    add-int/lit8 v6, v5, 0x1

    #@62
    .end local v5    # "elementsPos":I
    .restart local v6    # "elementsPos":I
    new-instance v14, Ldalvik/system/DexPathList$Element;

    #@64
    const/4 v15, 0x1

    #@65
    const/16 v16, 0x0

    #@67
    const/16 v17, 0x0

    #@69
    move-object/from16 v0, v16

    #@6b
    move-object/from16 v1, v17

    #@6d
    invoke-direct {v14, v7, v15, v0, v1}, Ldalvik/system/DexPathList$Element;-><init>(Ljava/io/File;ZLjava/io/File;Ldalvik/system/DexFile;)V

    #@70
    aput-object v14, v4, v5

    #@72
    goto :goto_1

    #@73
    .line 309
    .end local v6    # "elementsPos":I
    .restart local v5    # "elementsPos":I
    :cond_2
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    #@76
    move-result v14

    #@77
    if-eqz v14, :cond_5

    #@79
    .line 310
    if-nez p3, :cond_4

    #@7b
    const-string/jumbo v14, ".dex"

    #@7e
    invoke-virtual {v9, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@81
    move-result v14

    #@82
    if-eqz v14, :cond_4

    #@84
    .line 313
    :try_start_0
    move-object/from16 v0, p1

    #@86
    move-object/from16 v1, p4

    #@88
    invoke-static {v7, v0, v1, v4}, Ldalvik/system/DexPathList;->loadDexFile(Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ldalvik/system/DexFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@8b
    move-result-object v2

    #@8c
    .end local v2    # "dex":Ldalvik/system/DexFile;
    .end local v13    # "zip":Ljava/io/File;
    :cond_3
    :goto_2
    move v6, v5

    #@8d
    .end local v5    # "elementsPos":I
    .restart local v6    # "elementsPos":I
    goto :goto_1

    #@8e
    .line 314
    .end local v6    # "elementsPos":I
    .restart local v2    # "dex":Ldalvik/system/DexFile;
    .restart local v5    # "elementsPos":I
    .restart local v13    # "zip":Ljava/io/File;
    :catch_0
    move-exception v12

    #@8f
    .line 315
    .local v12, "suppressed":Ljava/io/IOException;
    new-instance v14, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v15, "Unable to load dex file: "

    #@97
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v14

    #@9b
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v14

    #@9f
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v14

    #@a3
    invoke-static {v14, v12}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a6
    .line 316
    move-object/from16 v0, p2

    #@a8
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@ab
    move v6, v5

    #@ac
    .end local v5    # "elementsPos":I
    .restart local v6    # "elementsPos":I
    goto :goto_1

    #@ad
    .line 319
    .end local v6    # "elementsPos":I
    .end local v12    # "suppressed":Ljava/io/IOException;
    .restart local v5    # "elementsPos":I
    :cond_4
    move-object v13, v7

    #@ae
    .line 321
    .local v13, "zip":Ljava/io/File;
    if-nez p3, :cond_3

    #@b0
    .line 323
    :try_start_1
    move-object/from16 v0, p1

    #@b2
    move-object/from16 v1, p4

    #@b4
    invoke-static {v7, v0, v1, v4}, Ldalvik/system/DexPathList;->loadDexFile(Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ldalvik/system/DexFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@b7
    move-result-object v2

    #@b8
    .local v2, "dex":Ldalvik/system/DexFile;
    goto :goto_2

    #@b9
    .line 324
    .local v2, "dex":Ldalvik/system/DexFile;
    :catch_1
    move-exception v12

    #@ba
    .line 332
    .restart local v12    # "suppressed":Ljava/io/IOException;
    move-object/from16 v0, p2

    #@bc
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@bf
    move v6, v5

    #@c0
    .end local v5    # "elementsPos":I
    .restart local v6    # "elementsPos":I
    goto :goto_1

    #@c1
    .line 337
    .end local v6    # "elementsPos":I
    .end local v12    # "suppressed":Ljava/io/IOException;
    .restart local v5    # "elementsPos":I
    .local v13, "zip":Ljava/io/File;
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    #@c3
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@c6
    const-string/jumbo v15, "ClassLoader referenced unknown path: "

    #@c9
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v14

    #@cd
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v14

    #@d1
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d4
    move-result-object v14

    #@d5
    invoke-static {v14}, Ljava/lang/System;->logW(Ljava/lang/String;)V

    #@d8
    move v6, v5

    #@d9
    .end local v5    # "elementsPos":I
    .restart local v6    # "elementsPos":I
    goto/16 :goto_1

    #@db
    .end local v2    # "dex":Ldalvik/system/DexFile;
    .end local v13    # "zip":Ljava/io/File;
    :cond_6
    move v5, v6

    #@dc
    .line 340
    .end local v6    # "elementsPos":I
    .restart local v5    # "elementsPos":I
    goto/16 :goto_0

    #@de
    .line 344
    .end local v3    # "dir":Ljava/io/File;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "path":Ljava/lang/String;
    :cond_7
    array-length v14, v4

    #@df
    if-eq v5, v14, :cond_8

    #@e1
    .line 345
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@e4
    move-result-object v4

    #@e5
    .end local v4    # "elements":[Ldalvik/system/DexPathList$Element;
    check-cast v4, [Ldalvik/system/DexPathList$Element;

    #@e7
    .line 347
    .restart local v4    # "elements":[Ldalvik/system/DexPathList$Element;
    :cond_8
    return-object v4
.end method

.method private static makePathElements(Ljava/util/List;Ljava/io/File;Ljava/util/List;)[Ldalvik/system/DexPathList$Element;
    .locals 2
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
    .line 281
    .local p0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local p2, "suppressedExceptions":Ljava/util/List;, "Ljava/util/List<Ljava/io/IOException;>;"
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, p1, p2, v0, v1}, Ldalvik/system/DexPathList;->makeElements(Ljava/util/List;Ljava/io/File;Ljava/util/List;ZLjava/lang/ClassLoader;)[Ldalvik/system/DexPathList$Element;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private static makePathElements(Ljava/util/List;Ljava/util/List;Ljava/lang/ClassLoader;)[Ldalvik/system/DexPathList$Element;
    .locals 2
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/io/IOException;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")[",
            "Ldalvik/system/DexPathList$Element;"
        }
    .end annotation

    #@0
    .prologue
    .line 272
    .local p0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local p1, "suppressedExceptions":Ljava/util/List;, "Ljava/util/List<Ljava/io/IOException;>;"
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-static {p0, v0, p1, v1, p2}, Ldalvik/system/DexPathList;->makeElements(Ljava/util/List;Ljava/io/File;Ljava/util/List;ZLjava/lang/ClassLoader;)[Ldalvik/system/DexPathList$Element;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private static optimizedPathFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p0, "path"    # Ljava/io/File;
    .param p1, "optimizedDirectory"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 384
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 385
    .local v0, "fileName":Ljava/lang/String;
    const-string/jumbo v4, ".dex"

    #@8
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@b
    move-result v4

    #@c
    if-nez v4, :cond_0

    #@e
    .line 386
    const-string/jumbo v4, "."

    #@11
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@14
    move-result v1

    #@15
    .line 387
    .local v1, "lastDot":I
    if-gez v1, :cond_1

    #@17
    .line 388
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
    .line 397
    .end local v1    # "lastDot":I
    :cond_0
    :goto_0
    new-instance v2, Ljava/io/File;

    #@2d
    invoke-direct {v2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@30
    .line 398
    .local v2, "result":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    return-object v4

    #@35
    .line 390
    .end local v2    # "result":Ljava/io/File;
    .restart local v1    # "lastDot":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@37
    add-int/lit8 v4, v1, 0x4

    #@39
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    #@3c
    .line 391
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v0, v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@3f
    .line 392
    const-string/jumbo v4, ".dex"

    #@42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 393
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
    .line 222
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
    .line 235
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 237
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    if-eqz p0, :cond_1

    #@7
    .line 238
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
    .line 239
    .local v1, "path":Ljava/lang/String;
    if-eqz p1, :cond_0

    #@15
    .line 241
    :try_start_0
    sget-object v7, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@17
    invoke-interface {v7, v1}, Llibcore/io/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    #@1a
    move-result-object v3

    #@1b
    .line 242
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
    .line 238
    .end local v3    # "sb":Landroid/system/StructStat;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@25
    goto :goto_0

    #@26
    .line 249
    :cond_0
    new-instance v7, Ljava/io/File;

    #@28
    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@2b
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2e
    goto :goto_1

    #@2f
    .line 253
    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    return-object v2

    #@30
    .line 245
    .restart local v1    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@31
    .local v0, "ignored":Landroid/system/ErrnoException;
    goto :goto_1
.end method


# virtual methods
.method public addDexPath(Ljava/lang/String;Ljava/io/File;)V
    .locals 10
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "optimizedDirectory"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 185
    new-instance v4, Ljava/util/ArrayList;

    #@3
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 186
    .local v4, "suppressedExceptionList":Ljava/util/List;, "Ljava/util/List<Ljava/io/IOException;>;"
    invoke-static {p1}, Ldalvik/system/DexPathList;->splitDexPath(Ljava/lang/String;)Ljava/util/List;

    #@9
    move-result-object v6

    #@a
    .line 187
    iget-object v7, p0, Ldalvik/system/DexPathList;->definingContext:Ljava/lang/ClassLoader;

    #@c
    .line 186
    invoke-static {v6, p2, v4, v7}, Ldalvik/system/DexPathList;->makeDexElements(Ljava/util/List;Ljava/io/File;Ljava/util/List;Ljava/lang/ClassLoader;)[Ldalvik/system/DexPathList$Element;

    #@f
    move-result-object v0

    #@10
    .line 189
    .local v0, "newElements":[Ldalvik/system/DexPathList$Element;
    if-eqz v0, :cond_0

    #@12
    array-length v6, v0

    #@13
    if-lez v6, :cond_0

    #@15
    .line 190
    iget-object v2, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    #@17
    .line 191
    .local v2, "oldElements":[Ldalvik/system/DexPathList$Element;
    array-length v6, v2

    #@18
    array-length v7, v0

    #@19
    add-int/2addr v6, v7

    #@1a
    new-array v6, v6, [Ldalvik/system/DexPathList$Element;

    #@1c
    iput-object v6, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    #@1e
    .line 193
    iget-object v6, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    #@20
    array-length v7, v2

    #@21
    .line 192
    invoke-static {v2, v9, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@24
    .line 195
    iget-object v6, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    #@26
    array-length v7, v2

    #@27
    array-length v8, v0

    #@28
    .line 194
    invoke-static {v0, v9, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2b
    .line 198
    .end local v2    # "oldElements":[Ldalvik/system/DexPathList$Element;
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@2e
    move-result v6

    #@2f
    if-lez v6, :cond_1

    #@31
    .line 200
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@34
    move-result v6

    #@35
    new-array v6, v6, [Ljava/io/IOException;

    #@37
    .line 199
    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@3a
    move-result-object v1

    #@3b
    check-cast v1, [Ljava/io/IOException;

    #@3d
    .line 201
    .local v1, "newSuppressedExceptions":[Ljava/io/IOException;
    iget-object v6, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    #@3f
    if-eqz v6, :cond_2

    #@41
    .line 202
    iget-object v3, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    #@43
    .line 203
    .local v3, "oldSuppressedExceptions":[Ljava/io/IOException;
    array-length v6, v3

    #@44
    .line 204
    array-length v7, v1

    #@45
    .line 203
    add-int v5, v6, v7

    #@47
    .line 205
    .local v5, "suppressedExceptionsLength":I
    new-array v6, v5, [Ljava/io/IOException;

    #@49
    iput-object v6, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    #@4b
    .line 206
    iget-object v6, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    #@4d
    .line 207
    array-length v7, v3

    #@4e
    .line 206
    invoke-static {v3, v9, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@51
    .line 208
    iget-object v6, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    #@53
    .line 209
    array-length v7, v3

    #@54
    array-length v8, v1

    #@55
    .line 208
    invoke-static {v1, v9, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@58
    .line 184
    .end local v1    # "newSuppressedExceptions":[Ljava/io/IOException;
    .end local v3    # "oldSuppressedExceptions":[Ljava/io/IOException;
    .end local v5    # "suppressedExceptionsLength":I
    :cond_1
    :goto_0
    return-void

    #@59
    .line 211
    .restart local v1    # "newSuppressedExceptions":[Ljava/io/IOException;
    :cond_2
    iput-object v1, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    #@5b
    goto :goto_0
.end method

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
    .line 414
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
    .line 415
    .local v2, "element":Ldalvik/system/DexPathList$Element;
    invoke-static {v2}, Ldalvik/system/DexPathList$Element;->-get0(Ldalvik/system/DexPathList$Element;)Ldalvik/system/DexFile;

    #@c
    move-result-object v1

    #@d
    .line 417
    .local v1, "dex":Ldalvik/system/DexFile;
    if-eqz v1, :cond_0

    #@f
    .line 418
    iget-object v6, p0, Ldalvik/system/DexPathList;->definingContext:Ljava/lang/ClassLoader;

    #@11
    invoke-virtual {v1, p1, v6, p2}, Ldalvik/system/DexFile;->loadClassBinaryName(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/List;)Ljava/lang/Class;

    #@14
    move-result-object v0

    #@15
    .line 419
    .local v0, "clazz":Ljava/lang/Class;
    if-eqz v0, :cond_0

    #@17
    .line 420
    return-object v0

    #@18
    .line 414
    .end local v0    # "clazz":Ljava/lang/Class;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 424
    .end local v1    # "dex":Ldalvik/system/DexFile;
    .end local v2    # "element":Ldalvik/system/DexPathList$Element;
    :cond_1
    iget-object v3, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    #@1d
    if-eqz v3, :cond_2

    #@1f
    .line 425
    iget-object v3, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    #@21
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@24
    move-result-object v3

    #@25
    invoke-interface {p2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@28
    .line 427
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
    .line 477
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 479
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
    .line 480
    .local v0, "element":Ldalvik/system/DexPathList$Element;
    invoke-virtual {v0, v1}, Ldalvik/system/DexPathList$Element;->findNativeLibrary(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    .line 482
    .local v2, "path":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@13
    .line 483
    return-object v2

    #@14
    .line 479
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@16
    goto :goto_0

    #@17
    .line 487
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
    .line 439
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
    .line 440
    .local v0, "element":Ldalvik/system/DexPathList$Element;
    invoke-virtual {v0, p1}, Ldalvik/system/DexPathList$Element;->findResource(Ljava/lang/String;)Ljava/net/URL;

    #@c
    move-result-object v1

    #@d
    .line 441
    .local v1, "url":Ljava/net/URL;
    if-eqz v1, :cond_0

    #@f
    .line 442
    return-object v1

    #@10
    .line 439
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@12
    goto :goto_0

    #@13
    .line 446
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
    .line 455
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 457
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
    .line 458
    .local v0, "element":Ldalvik/system/DexPathList$Element;
    invoke-virtual {v0, p1}, Ldalvik/system/DexPathList$Element;->findResource(Ljava/lang/String;)Ljava/net/URL;

    #@10
    move-result-object v2

    #@11
    .line 459
    .local v2, "url":Ljava/net/URL;
    if-eqz v2, :cond_0

    #@13
    .line 460
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    .line 457
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@18
    goto :goto_0

    #@19
    .line 464
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
    .line 173
    iget-object v0, p0, Ldalvik/system/DexPathList;->nativeLibraryDirectories:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 158
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v2, p0, Ldalvik/system/DexPathList;->nativeLibraryDirectories:Ljava/util/List;

    #@4
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@7
    .line 159
    .local v0, "allNativeLibraryDirectories":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v2, p0, Ldalvik/system/DexPathList;->systemNativeLibraryDirectories:Ljava/util/List;

    #@9
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@c
    .line 163
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@f
    move-result v2

    #@10
    new-array v2, v2, [Ljava/io/File;

    #@12
    .line 162
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, [Ljava/io/File;

    #@18
    .line 165
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
    .line 166
    const-string/jumbo v3, ",nativeLibraryDirectories="

    #@31
    .line 165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    .line 166
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    .line 165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    .line 166
    const-string/jumbo v3, "]"

    #@40
    .line 165
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
