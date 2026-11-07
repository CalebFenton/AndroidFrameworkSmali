.class public final Ldalvik/system/DexPathList;
.super Ljava/lang/Object;
.source "DexPathList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/DexPathList$NativeLibraryElement;,
        Ldalvik/system/DexPathList$Element;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEX_SUFFIX:Ljava/lang/String; = ".dex"

.field private static final greylist-max-o zipSeparator:Ljava/lang/String; = "!/"


# instance fields
.field private final greylist definingContext:Ljava/lang/ClassLoader;

.field private greylist dexElements:[Ldalvik/system/DexPathList$Element;

.field private greylist dexElementsSuppressedExceptions:[Ljava/io/IOException;

.field private final greylist nativeLibraryDirectories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field greylist nativeLibraryPathElements:[Ldalvik/system/DexPathList$NativeLibraryElement;

.field private final greylist systemNativeLibraryDirectories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 5
    .param p1, "definingContext"    # Ljava/lang/ClassLoader;
    .param p2, "librarySearchPath"    # Ljava/lang/String;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    if-eqz p1, :cond_27

    .line 111
    iput-object p1, p0, Ldalvik/system/DexPathList;->definingContext:Ljava/lang/ClassLoader;

    .line 112
    const/4 v0, 0x0

    invoke-static {p2, v0}, Ldalvik/system/DexPathList;->splitPaths(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ldalvik/system/DexPathList;->nativeLibraryDirectories:Ljava/util/List;

    .line 113
    nop

    .line 114
    const-string v0, "java.library.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldalvik/system/DexPathList;->splitPaths(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ldalvik/system/DexPathList;->systemNativeLibraryDirectories:Ljava/util/List;

    .line 115
    invoke-direct {p0}, Ldalvik/system/DexPathList;->getAllNativeLibraryDirectories()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/DexPathList;->makePathElements(Ljava/util/List;)[Ldalvik/system/DexPathList$NativeLibraryElement;

    move-result-object v0

    iput-object v0, p0, Ldalvik/system/DexPathList;->nativeLibraryPathElements:[Ldalvik/system/DexPathList$NativeLibraryElement;

    .line 116
    return-void

    .line 108
    :cond_27
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "definingContext == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor greylist <init>(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 11
    .param p1, "definingContext"    # Ljava/lang/ClassLoader;
    .param p2, "dexPath"    # Ljava/lang/String;
    .param p3, "librarySearchPath"    # Ljava/lang/String;
    .param p4, "optimizedDirectory"    # Ljava/io/File;

    .line 134
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "definingContext":Ljava/lang/ClassLoader;
    .end local p2    # "dexPath":Ljava/lang/String;
    .end local p3    # "librarySearchPath":Ljava/lang/String;
    .end local p4    # "optimizedDirectory":Ljava/io/File;
    .local v1, "definingContext":Ljava/lang/ClassLoader;
    .local v2, "dexPath":Ljava/lang/String;
    .local v3, "librarySearchPath":Ljava/lang/String;
    .local v4, "optimizedDirectory":Ljava/io/File;
    invoke-direct/range {v0 .. v5}, Ldalvik/system/DexPathList;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V

    .line 135
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V
    .registers 9
    .param p1, "definingContext"    # Ljava/lang/ClassLoader;
    .param p2, "dexPath"    # Ljava/lang/String;
    .param p3, "librarySearchPath"    # Ljava/lang/String;
    .param p4, "optimizedDirectory"    # Ljava/io/File;
    .param p5, "isTrusted"    # Z

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    if-eqz p1, :cond_a0

    .line 143
    if-eqz p2, :cond_98

    .line 147
    if-eqz p4, :cond_4e

    .line 148
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 154
    invoke-virtual {p4}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 155
    invoke-virtual {p4}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_4e

    .line 156
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "optimizedDirectory not readable/writable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "optimizedDirectory doesn\'t exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_4e
    :goto_4e
    iput-object p1, p0, Ldalvik/system/DexPathList;->definingContext:Ljava/lang/ClassLoader;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v0, "suppressedExceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/IOException;>;"
    invoke-static {p2}, Ldalvik/system/DexPathList;->splitDexPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p4, v0, p1, p5}, Ldalvik/system/DexPathList;->makeDexElements(Ljava/util/List;Ljava/io/File;Ljava/util/List;Ljava/lang/ClassLoader;Z)[Ldalvik/system/DexPathList$Element;

    move-result-object v1

    iput-object v1, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    .line 179
    const/4 v1, 0x0

    invoke-static {p3, v1}, Ldalvik/system/DexPathList;->splitPaths(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ldalvik/system/DexPathList;->nativeLibraryDirectories:Ljava/util/List;

    .line 180
    nop

    .line 181
    const-string v1, "java.library.path"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ldalvik/system/DexPathList;->splitPaths(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ldalvik/system/DexPathList;->systemNativeLibraryDirectories:Ljava/util/List;

    .line 182
    invoke-direct {p0}, Ldalvik/system/DexPathList;->getAllNativeLibraryDirectories()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ldalvik/system/DexPathList;->makePathElements(Ljava/util/List;)[Ldalvik/system/DexPathList$NativeLibraryElement;

    move-result-object v1

    iput-object v1, p0, Ldalvik/system/DexPathList;->nativeLibraryPathElements:[Ldalvik/system/DexPathList$NativeLibraryElement;

    .line 184
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_94

    .line 185
    nop

    .line 186
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/io/IOException;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/io/IOException;

    iput-object v1, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    goto :goto_97

    .line 188
    :cond_94
    const/4 v1, 0x0

    iput-object v1, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    .line 190
    :goto_97
    return-void

    .line 144
    .end local v0    # "suppressedExceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/IOException;>;"
    :cond_98
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dexPath == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_a0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "definingContext == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist concat(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[TT;[TT;)[TT;"
        }
    .end annotation

    .line 237
    .local p0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "inputA":[Ljava/lang/Object;, "[TT;"
    .local p2, "inputB":[Ljava/lang/Object;, "[TT;"
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 238
    .local v0, "output":[Ljava/lang/Object;, "[TT;"
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    array-length v1, p1

    array-length v3, p2

    invoke-static {p2, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    return-object v0
.end method

.method private blacklist getAllNativeLibraryDirectories()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ldalvik/system/DexPathList;->nativeLibraryDirectories:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 94
    .local v0, "allNativeLibraryDirectories":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v1, p0, Ldalvik/system/DexPathList;->systemNativeLibraryDirectories:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    return-object v0
.end method

.method static synthetic blacklist lambda$initByteBufferDexPath$0(Ljava/nio/ByteBuffer;)Z
    .registers 2
    .param p0, "v"    # Ljava/nio/ByteBuffer;

    .line 253
    if-nez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private static greylist loadDexFile(Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ldalvik/system/DexFile;
    .registers 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "optimizedDirectory"    # Ljava/io/File;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "elements"    # [Ldalvik/system/DexPathList$Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    if-nez p1, :cond_8

    .line 438
    new-instance v0, Ldalvik/system/DexFile;

    invoke-direct {v0, p0, p2, p3}, Ldalvik/system/DexFile;-><init>(Ljava/io/File;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)V

    return-object v0

    .line 440
    :cond_8
    invoke-static {p0, p1}, Ldalvik/system/DexPathList;->optimizedPathFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "optimizedPath":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p2, p3}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ldalvik/system/DexFile;

    move-result-object v1

    return-object v1
.end method

.method private static greylist makeDexElements(Ljava/util/List;Ljava/io/File;Ljava/util/List;Ljava/lang/ClassLoader;)[Ldalvik/system/DexPathList$Element;
    .registers 5
    .param p1, "optimizedDirectory"    # Ljava/io/File;
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/IOException;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")[",
            "Ldalvik/system/DexPathList$Element;"
        }
    .end annotation

    .line 364
    .local p0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local p2, "suppressedExceptions":Ljava/util/List;, "Ljava/util/List<Ljava/io/IOException;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Ldalvik/system/DexPathList;->makeDexElements(Ljava/util/List;Ljava/io/File;Ljava/util/List;Ljava/lang/ClassLoader;Z)[Ldalvik/system/DexPathList$Element;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o makeDexElements(Ljava/util/List;Ljava/io/File;Ljava/util/List;Ljava/lang/ClassLoader;Z)[Ldalvik/system/DexPathList$Element;
    .registers 15
    .param p1, "optimizedDirectory"    # Ljava/io/File;
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .param p4, "isTrusted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/IOException;",
            ">;",
            "Ljava/lang/ClassLoader;",
            "Z)[",
            "Ldalvik/system/DexPathList$Element;"
        }
    .end annotation

    .line 370
    .local p0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local p2, "suppressedExceptions":Ljava/util/List;, "Ljava/util/List<Ljava/io/IOException;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ldalvik/system/DexPathList$Element;

    .line 371
    .local v0, "elements":[Ldalvik/system/DexPathList$Element;
    const/4 v1, 0x0

    .line 375
    .local v1, "elementsPos":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 376
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 379
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "elementsPos":I
    .local v4, "elementsPos":I
    new-instance v5, Ldalvik/system/DexPathList$Element;

    invoke-direct {v5, v3}, Ldalvik/system/DexPathList$Element;-><init>(Ljava/io/File;)V

    aput-object v5, v0, v1

    move v1, v4

    goto/16 :goto_b0

    .line 380
    .end local v4    # "elementsPos":I
    .restart local v1    # "elementsPos":I
    :cond_29
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 381
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 383
    .local v4, "name":Ljava/lang/String;
    const/4 v5, 0x0

    .line 384
    .local v5, "dex":Ldalvik/system/DexFile;
    const-string v6, ".dex"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 387
    :try_start_3c
    invoke-static {v3, p1, p3, v0}, Ldalvik/system/DexPathList;->loadDexFile(Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ldalvik/system/DexFile;

    move-result-object v6
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_40} :catch_52

    move-object v5, v6

    .line 388
    if-eqz v5, :cond_51

    .line 389
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "elementsPos":I
    .local v6, "elementsPos":I
    :try_start_45
    new-instance v7, Ldalvik/system/DexPathList$Element;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v8}, Ldalvik/system/DexPathList$Element;-><init>(Ldalvik/system/DexFile;Ljava/io/File;)V

    aput-object v7, v0, v1
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4d} :catch_4f

    move v1, v6

    goto :goto_51

    .line 391
    :catch_4f
    move-exception v1

    goto :goto_56

    .line 394
    .end local v6    # "elementsPos":I
    .restart local v1    # "elementsPos":I
    :cond_51
    :goto_51
    goto :goto_92

    .line 391
    :catch_52
    move-exception v6

    move-object v9, v6

    move v6, v1

    move-object v1, v9

    .line 392
    .local v1, "suppressed":Ljava/io/IOException;
    .restart local v6    # "elementsPos":I
    :goto_56
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load dex file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 393
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    .end local v1    # "suppressed":Ljava/io/IOException;
    move v1, v6

    goto :goto_92

    .line 397
    .end local v6    # "elementsPos":I
    .local v1, "elementsPos":I
    :cond_71
    :try_start_71
    invoke-static {v3, p1, p3, v0}, Ldalvik/system/DexPathList;->loadDexFile(Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ldalvik/system/DexFile;

    move-result-object v6
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_75} :catch_77

    move-object v5, v6

    .line 407
    goto :goto_7b

    .line 398
    :catch_77
    move-exception v6

    .line 406
    .local v6, "suppressed":Ljava/io/IOException;
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    .end local v6    # "suppressed":Ljava/io/IOException;
    :goto_7b
    if-nez v5, :cond_88

    .line 410
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "elementsPos":I
    .local v6, "elementsPos":I
    new-instance v7, Ldalvik/system/DexPathList$Element;

    invoke-direct {v7, v3}, Ldalvik/system/DexPathList$Element;-><init>(Ljava/io/File;)V

    aput-object v7, v0, v1

    move v1, v6

    goto :goto_92

    .line 412
    .end local v6    # "elementsPos":I
    .restart local v1    # "elementsPos":I
    :cond_88
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "elementsPos":I
    .restart local v6    # "elementsPos":I
    new-instance v7, Ldalvik/system/DexPathList$Element;

    invoke-direct {v7, v5, v3}, Ldalvik/system/DexPathList$Element;-><init>(Ldalvik/system/DexFile;Ljava/io/File;)V

    aput-object v7, v0, v1

    move v1, v6

    .line 415
    .end local v6    # "elementsPos":I
    .restart local v1    # "elementsPos":I
    :goto_92
    if-eqz v5, :cond_99

    if-eqz p4, :cond_99

    .line 416
    invoke-virtual {v5}, Ldalvik/system/DexFile;->setTrusted()V

    .line 418
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "dex":Ldalvik/system/DexFile;
    :cond_99
    goto :goto_b0

    .line 419
    :cond_9a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ClassLoader referenced unknown path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->logW(Ljava/lang/String;)V

    .line 421
    .end local v3    # "file":Ljava/io/File;
    :goto_b0
    goto/16 :goto_b

    .line 422
    :cond_b2
    array-length v2, v0

    if-eq v1, v2, :cond_bc

    .line 423
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [Ldalvik/system/DexPathList$Element;

    .line 425
    :cond_bc
    return-object v0
.end method

.method public static greylist makeInMemoryDexElements([Ljava/nio/ByteBuffer;Ljava/util/List;)[Ldalvik/system/DexPathList$Element;
    .registers 11
    .param p0, "dexFiles"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/List<",
            "Ljava/io/IOException;",
            ">;)[",
            "Ldalvik/system/DexPathList$Element;"
        }
    .end annotation

    .line 339
    .local p1, "suppressedExceptions":Ljava/util/List;, "Ljava/util/List<Ljava/io/IOException;>;"
    array-length v0, p0

    new-array v0, v0, [Ldalvik/system/DexPathList$Element;

    .line 340
    .local v0, "elements":[Ldalvik/system/DexPathList$Element;
    const/4 v1, 0x0

    .line 341
    .local v1, "elementPos":I
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_7
    if-ge v4, v2, :cond_43

    aget-object v5, p0, v4

    .line 343
    .local v5, "buf":Ljava/nio/ByteBuffer;
    :try_start_b
    new-instance v6, Ldalvik/system/DexFile;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/nio/ByteBuffer;

    aput-object v5, v7, v3

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8, v8}, Ldalvik/system/DexFile;-><init>([Ljava/nio/ByteBuffer;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_16} :catch_23

    .line 345
    .local v6, "dex":Ldalvik/system/DexFile;
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "elementPos":I
    .local v7, "elementPos":I
    :try_start_18
    new-instance v8, Ldalvik/system/DexPathList$Element;

    invoke-direct {v8, v6}, Ldalvik/system/DexPathList$Element;-><init>(Ldalvik/system/DexFile;)V

    aput-object v8, v0, v1
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1f} :catch_21

    .line 349
    .end local v6    # "dex":Ldalvik/system/DexFile;
    move v1, v7

    goto :goto_40

    .line 346
    :catch_21
    move-exception v1

    goto :goto_26

    .end local v7    # "elementPos":I
    .restart local v1    # "elementPos":I
    :catch_23
    move-exception v6

    move v7, v1

    move-object v1, v6

    .line 347
    .local v1, "suppressed":Ljava/io/IOException;
    .restart local v7    # "elementPos":I
    :goto_26
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load dex file: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 348
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v7

    .line 341
    .end local v5    # "buf":Ljava/nio/ByteBuffer;
    .end local v7    # "elementPos":I
    .local v1, "elementPos":I
    :goto_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 351
    :cond_43
    array-length v2, v0

    if-eq v1, v2, :cond_4d

    .line 352
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [Ldalvik/system/DexPathList$Element;

    .line 354
    :cond_4d
    return-object v0
.end method

.method private static greylist makePathElements(Ljava/util/List;Ljava/io/File;Ljava/util/List;)[Ldalvik/system/DexPathList$Element;
    .registers 4
    .param p1, "optimizedDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/IOException;",
            ">;)[",
            "Ldalvik/system/DexPathList$Element;"
        }
    .end annotation

    .line 488
    .local p0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local p2, "suppressedExceptions":Ljava/util/List;, "Ljava/util/List<Ljava/io/IOException;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ldalvik/system/DexPathList;->makeDexElements(Ljava/util/List;Ljava/io/File;Ljava/util/List;Ljava/lang/ClassLoader;)[Ldalvik/system/DexPathList$Element;

    move-result-object v0

    return-object v0
.end method

.method private static greylist makePathElements(Ljava/util/List;)[Ldalvik/system/DexPathList$NativeLibraryElement;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)[",
            "Ldalvik/system/DexPathList$NativeLibraryElement;"
        }
    .end annotation

    .line 497
    .local p0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ldalvik/system/DexPathList$NativeLibraryElement;

    .line 498
    .local v0, "elements":[Ldalvik/system/DexPathList$NativeLibraryElement;
    const/4 v1, 0x0

    .line 499
    .local v1, "elementsPos":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 500
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 502
    .local v4, "path":Ljava/lang/String;
    const-string v5, "!/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 503
    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 504
    .local v5, "split":[Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 505
    .local v6, "zip":Ljava/io/File;
    const/4 v7, 0x1

    aget-object v7, v5, v7

    .line 506
    .local v7, "dir":Ljava/lang/String;
    add-int/lit8 v8, v1, 0x1

    .end local v1    # "elementsPos":I
    .local v8, "elementsPos":I
    new-instance v9, Ldalvik/system/DexPathList$NativeLibraryElement;

    invoke-direct {v9, v6, v7}, Ldalvik/system/DexPathList$NativeLibraryElement;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v9, v0, v1

    .line 507
    .end local v5    # "split":[Ljava/lang/String;
    .end local v6    # "zip":Ljava/io/File;
    .end local v7    # "dir":Ljava/lang/String;
    move v1, v8

    goto :goto_4e

    .end local v8    # "elementsPos":I
    .restart local v1    # "elementsPos":I
    :cond_3e
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 509
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "elementsPos":I
    .local v5, "elementsPos":I
    new-instance v6, Ldalvik/system/DexPathList$NativeLibraryElement;

    invoke-direct {v6, v3}, Ldalvik/system/DexPathList$NativeLibraryElement;-><init>(Ljava/io/File;)V

    aput-object v6, v0, v1

    move v1, v5

    .line 511
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "elementsPos":I
    .restart local v1    # "elementsPos":I
    :cond_4e
    :goto_4e
    goto :goto_b

    .line 512
    :cond_4f
    array-length v2, v0

    if-eq v1, v2, :cond_59

    .line 513
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [Ldalvik/system/DexPathList$NativeLibraryElement;

    .line 515
    :cond_59
    return-object v0
.end method

.method private static greylist-max-o optimizedPathFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .registers 7
    .param p0, "path"    # Ljava/io/File;
    .param p1, "optimizedDirectory"    # Ljava/io/File;

    .line 463
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "fileName":Ljava/lang/String;
    const-string v1, ".dex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 465
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 466
    .local v2, "lastDot":I
    if-gez v2, :cond_26

    .line 467
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    .line 469
    :cond_26
    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 470
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    .end local v2    # "lastDot":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_38
    :goto_38
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 477
    .local v1, "result":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static greylist-max-o splitDexPath(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 299
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ldalvik/system/DexPathList;->splitPaths(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static greylist splitPaths(Ljava/lang/String;Z)Ljava/util/List;
    .registers 9
    .param p0, "searchPath"    # Ljava/lang/String;
    .param p1, "directoriesOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    if-eqz p0, :cond_32

    .line 316
    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_32

    aget-object v4, v1, v3

    .line 317
    .local v4, "path":Ljava/lang/String;
    if-eqz p1, :cond_27

    .line 319
    :try_start_15
    sget-object v5, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v5, v4}, Llibcore/io/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v5

    .line 320
    .local v5, "sb":Landroid/system/StructStat;
    iget v6, v5, Landroid/system/StructStat;->st_mode:I

    invoke-static {v6}, Landroid/system/OsConstants;->S_ISDIR(I)Z

    move-result v6
    :try_end_21
    .catch Landroid/system/ErrnoException; {:try_start_15 .. :try_end_21} :catch_25

    if-nez v6, :cond_24

    .line 321
    goto :goto_2f

    .line 325
    .end local v5    # "sb":Landroid/system/StructStat;
    :cond_24
    goto :goto_27

    .line 323
    :catch_25
    move-exception v5

    .line 324
    .local v5, "ignored":Landroid/system/ErrnoException;
    goto :goto_2f

    .line 327
    .end local v5    # "ignored":Landroid/system/ErrnoException;
    :cond_27
    :goto_27
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    .end local v4    # "path":Ljava/lang/String;
    :goto_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 331
    :cond_32
    return-object v0
.end method


# virtual methods
.method public greylist addDexPath(Ljava/lang/String;Ljava/io/File;)V
    .registers 4
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "optimizedDirectory"    # Ljava/io/File;

    .line 215
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ldalvik/system/DexPathList;->addDexPath(Ljava/lang/String;Ljava/io/File;Z)V

    .line 216
    return-void
.end method

.method public greylist-max-o addDexPath(Ljava/lang/String;Ljava/io/File;Z)V
    .registers 9
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "optimizedDirectory"    # Ljava/io/File;
    .param p3, "isTrusted"    # Z

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v0, "suppressedExceptionList":Ljava/util/List;, "Ljava/util/List<Ljava/io/IOException;>;"
    invoke-static {p1}, Ldalvik/system/DexPathList;->splitDexPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Ldalvik/system/DexPathList;->definingContext:Ljava/lang/ClassLoader;

    invoke-static {v1, p2, v0, v2, p3}, Ldalvik/system/DexPathList;->makeDexElements(Ljava/util/List;Ljava/io/File;Ljava/util/List;Ljava/lang/ClassLoader;Z)[Ldalvik/system/DexPathList$Element;

    move-result-object v1

    .line 223
    .local v1, "newElements":[Ldalvik/system/DexPathList$Element;
    if-eqz v1, :cond_20

    array-length v2, v1

    if-lez v2, :cond_20

    .line 224
    const-class v2, Ldalvik/system/DexPathList$Element;

    iget-object v3, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    invoke-static {v2, v3, v1}, Ldalvik/system/DexPathList;->concat(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ldalvik/system/DexPathList$Element;

    iput-object v2, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    .line 227
    :cond_20
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_45

    .line 228
    nop

    .line 229
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/io/IOException;

    .line 228
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/io/IOException;

    .line 230
    .local v2, "newSuppExceptions":[Ljava/io/IOException;
    iget-object v3, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    if-eqz v3, :cond_42

    .line 231
    const-class v3, Ljava/io/IOException;

    iget-object v4, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    invoke-static {v3, v4, v2}, Ldalvik/system/DexPathList;->concat(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/io/IOException;

    goto :goto_43

    .line 232
    :cond_42
    move-object v3, v2

    :goto_43
    iput-object v3, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    .line 234
    .end local v2    # "newSuppExceptions":[Ljava/io/IOException;
    :cond_45
    return-void
.end method

.method public greylist addNativePath(Ljava/util/Collection;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 631
    .local p1, "libPaths":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 632
    return-void

    .line 634
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 635
    .local v0, "libFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 636
    .local v2, "path":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    .end local v2    # "path":Ljava/lang/String;
    goto :goto_14

    .line 638
    :cond_29
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ldalvik/system/DexPathList;->nativeLibraryPathElements:[Ldalvik/system/DexPathList$NativeLibraryElement;

    array-length v2, v2

    .line 639
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 640
    .local v1, "newPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldalvik/system/DexPathList$NativeLibraryElement;>;"
    iget-object v2, p0, Ldalvik/system/DexPathList;->nativeLibraryPathElements:[Ldalvik/system/DexPathList$NativeLibraryElement;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 641
    invoke-static {v0}, Ldalvik/system/DexPathList;->makePathElements(Ljava/util/List;)[Ldalvik/system/DexPathList$NativeLibraryElement;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_45
    if-ge v4, v3, :cond_55

    aget-object v5, v2, v4

    .line 642
    .local v5, "element":Ldalvik/system/DexPathList$NativeLibraryElement;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_52

    .line 643
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    .end local v5    # "element":Ldalvik/system/DexPathList$NativeLibraryElement;
    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    .line 646
    :cond_55
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ldalvik/system/DexPathList$NativeLibraryElement;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ldalvik/system/DexPathList$NativeLibraryElement;

    iput-object v2, p0, Ldalvik/system/DexPathList;->nativeLibraryPathElements:[Ldalvik/system/DexPathList$NativeLibraryElement;

    .line 647
    return-void
.end method

.method public greylist-max-o findClass(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Class;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 531
    .local p2, "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v0, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 532
    .local v3, "element":Ldalvik/system/DexPathList$Element;
    iget-object v4, p0, Ldalvik/system/DexPathList;->definingContext:Ljava/lang/ClassLoader;

    invoke-virtual {v3, p1, v4, p2}, Ldalvik/system/DexPathList$Element;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/List;)Ljava/lang/Class;

    move-result-object v4

    .line 533
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v4, :cond_11

    .line 534
    return-object v4

    .line 531
    .end local v3    # "element":Ldalvik/system/DexPathList$Element;
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 538
    :cond_14
    iget-object v0, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    if-eqz v0, :cond_21

    .line 539
    iget-object v0, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 541
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "libraryName"    # Ljava/lang/String;

    .line 591
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, "fileName":Ljava/lang/String;
    iget-object v1, p0, Ldalvik/system/DexPathList;->nativeLibraryPathElements:[Ldalvik/system/DexPathList$NativeLibraryElement;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_16

    aget-object v4, v1, v3

    .line 594
    .local v4, "element":Ldalvik/system/DexPathList$NativeLibraryElement;
    invoke-virtual {v4, v0}, Ldalvik/system/DexPathList$NativeLibraryElement;->findNativeLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 596
    .local v5, "path":Ljava/lang/String;
    if-eqz v5, :cond_13

    .line 597
    return-object v5

    .line 593
    .end local v4    # "element":Ldalvik/system/DexPathList$NativeLibraryElement;
    .end local v5    # "path":Ljava/lang/String;
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 601
    :cond_16
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist-max-o findResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .line 553
    iget-object v0, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 554
    .local v3, "element":Ldalvik/system/DexPathList$Element;
    invoke-virtual {v3, p1}, Ldalvik/system/DexPathList$Element;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 555
    .local v4, "url":Ljava/net/URL;
    if-eqz v4, :cond_f

    .line 556
    return-object v4

    .line 553
    .end local v3    # "element":Ldalvik/system/DexPathList$Element;
    .end local v4    # "url":Ljava/net/URL;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 560
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 569
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 571
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    iget-object v1, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_19

    aget-object v4, v1, v3

    .line 572
    .local v4, "element":Ldalvik/system/DexPathList$Element;
    invoke-virtual {v4, p1}, Ldalvik/system/DexPathList$Element;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    .line 573
    .local v5, "url":Ljava/net/URL;
    if-eqz v5, :cond_16

    .line 574
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    .end local v4    # "element":Ldalvik/system/DexPathList$Element;
    .end local v5    # "url":Ljava/net/URL;
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 578
    :cond_19
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method greylist-max-o getDexPaths()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v0, "dexPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_19

    aget-object v4, v1, v3

    .line 611
    .local v4, "e":Ldalvik/system/DexPathList$Element;
    invoke-static {v4}, Ldalvik/system/DexPathList$Element;->-$$Nest$mgetDexPath(Ldalvik/system/DexPathList$Element;)Ljava/lang/String;

    move-result-object v5

    .line 612
    .local v5, "dexPath":Ljava/lang/String;
    if-eqz v5, :cond_16

    .line 615
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    .end local v4    # "e":Ldalvik/system/DexPathList$Element;
    .end local v5    # "dexPath":Ljava/lang/String;
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 618
    :cond_19
    return-object v0
.end method

.method public greylist-max-o getNativeLibraryDirectories()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Ldalvik/system/DexPathList;->nativeLibraryDirectories:Ljava/util/List;

    return-object v0
.end method

.method blacklist initByteBufferDexPath([Ljava/nio/ByteBuffer;)V
    .registers 8
    .param p1, "dexFiles"    # [Ljava/nio/ByteBuffer;

    .line 250
    if-eqz p1, :cond_67

    .line 253
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ldalvik/system/DexPathList$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ldalvik/system/DexPathList$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 256
    iget-object v0, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    if-nez v0, :cond_57

    iget-object v0, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    if-nez v0, :cond_57

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v0, "suppressedExceptions":Ljava/util/List;, "Ljava/util/List<Ljava/io/IOException;>;"
    const/4 v1, 0x0

    .line 264
    .local v1, "null_elements":[Ldalvik/system/DexPathList$Element;
    const/4 v2, 0x0

    :try_start_20
    new-instance v3, Ldalvik/system/DexFile;

    iget-object v4, p0, Ldalvik/system/DexPathList;->definingContext:Ljava/lang/ClassLoader;

    invoke-direct {v3, p1, v4, v1}, Ldalvik/system/DexFile;-><init>([Ljava/nio/ByteBuffer;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)V

    .line 265
    .local v3, "dex":Ldalvik/system/DexFile;
    const/4 v4, 0x1

    new-array v4, v4, [Ldalvik/system/DexPathList$Element;

    new-instance v5, Ldalvik/system/DexPathList$Element;

    invoke-direct {v5, v3}, Ldalvik/system/DexPathList$Element;-><init>(Ldalvik/system/DexFile;)V

    aput-object v5, v4, v2

    iput-object v4, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_33} :catch_34

    .line 270
    .end local v1    # "null_elements":[Ldalvik/system/DexPathList$Element;
    .end local v3    # "dex":Ldalvik/system/DexFile;
    goto :goto_41

    .line 266
    :catch_34
    move-exception v1

    .line 267
    .local v1, "suppressed":Ljava/io/IOException;
    const-string v3, "Unable to load dex files"

    invoke-static {v3, v1}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    new-array v2, v2, [Ldalvik/system/DexPathList$Element;

    iput-object v2, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    .line 272
    .end local v1    # "suppressed":Ljava/io/IOException;
    :goto_41
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_56

    .line 273
    nop

    .line 274
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/io/IOException;

    .line 273
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/io/IOException;

    iput-object v1, p0, Ldalvik/system/DexPathList;->dexElementsSuppressedExceptions:[Ljava/io/IOException;

    .line 276
    :cond_56
    return-void

    .line 257
    .end local v0    # "suppressedExceptions":Ljava/util/List;, "Ljava/util/List<Ljava/io/IOException;>;"
    :cond_57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should only be called once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_5f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dexFiles contains a null Buffer!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_67
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dexFiles == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist maybeRunBackgroundVerification(Ljava/lang/ClassLoader;)V
    .registers 7
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 286
    iget-object v0, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_22

    aget-object v3, v0, v2

    .line 287
    .local v3, "element":Ldalvik/system/DexPathList$Element;
    invoke-static {v3}, Ldalvik/system/DexPathList$Element;->-$$Nest$fgetdexFile(Ldalvik/system/DexPathList$Element;)Ldalvik/system/DexFile;

    move-result-object v4

    if-eqz v4, :cond_1f

    invoke-static {v3}, Ldalvik/system/DexPathList$Element;->-$$Nest$fgetdexFile(Ldalvik/system/DexPathList$Element;)Ldalvik/system/DexFile;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/DexFile;->isBackedByOatFile()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 288
    invoke-static {v3}, Ldalvik/system/DexPathList$Element;->-$$Nest$fgetdexFile(Ldalvik/system/DexPathList$Element;)Ldalvik/system/DexFile;

    move-result-object v4

    invoke-virtual {v4, p1}, Ldalvik/system/DexFile;->verifyInBackground(Ljava/lang/ClassLoader;)V

    .line 286
    .end local v3    # "element":Ldalvik/system/DexPathList$Element;
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 291
    :cond_22
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DexPathList["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldalvik/system/DexPathList;->dexElements:[Ldalvik/system/DexPathList$Element;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",nativeLibraryDirectories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 195
    invoke-direct {p0}, Ldalvik/system/DexPathList;->getAllNativeLibraryDirectories()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    return-object v0
.end method
