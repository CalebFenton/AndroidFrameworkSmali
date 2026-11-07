.class public Ldalvik/system/BaseDexClassLoader;
.super Ljava/lang/ClassLoader;
.source "BaseDexClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/BaseDexClassLoader$Reporter;
    }
.end annotation


# static fields
.field private static volatile greylist-max-o reporter:Ldalvik/system/BaseDexClassLoader$Reporter;


# instance fields
.field private final greylist pathList:Ldalvik/system/DexPathList;

.field protected final blacklist sharedLibraryLoaders:[Ljava/lang/ClassLoader;

.field protected final blacklist sharedLibraryLoadersAfter:[Ljava/lang/ClassLoader;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    const/4 v0, 0x0

    sput-object v0, Ldalvik/system/BaseDexClassLoader;->reporter:Ldalvik/system/BaseDexClassLoader$Reporter;

    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 12
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "optimizedDirectory"    # Ljava/io/File;
    .param p3, "librarySearchPath"    # Ljava/lang/String;
    .param p4, "parent"    # Ljava/lang/ClassLoader;

    .line 105
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    .end local p1    # "dexPath":Ljava/lang/String;
    .end local p3    # "librarySearchPath":Ljava/lang/String;
    .end local p4    # "parent":Ljava/lang/ClassLoader;
    .local v1, "dexPath":Ljava/lang/String;
    .local v2, "librarySearchPath":Ljava/lang/String;
    .local v3, "parent":Ljava/lang/ClassLoader;
    invoke-direct/range {v0 .. v6}, Ldalvik/system/BaseDexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;Z)V

    .line 106
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;Z)V
    .registers 13
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "optimizedDirectory"    # Ljava/io/File;
    .param p3, "librarySearchPath"    # Ljava/lang/String;
    .param p4, "parent"    # Ljava/lang/ClassLoader;
    .param p5, "isTrusted"    # Z

    .line 114
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v6, p5

    .end local p1    # "dexPath":Ljava/lang/String;
    .end local p3    # "librarySearchPath":Ljava/lang/String;
    .end local p4    # "parent":Ljava/lang/ClassLoader;
    .end local p5    # "isTrusted":Z
    .local v1, "dexPath":Ljava/lang/String;
    .local v2, "librarySearchPath":Ljava/lang/String;
    .local v3, "parent":Ljava/lang/ClassLoader;
    .local v6, "isTrusted":Z
    invoke-direct/range {v0 .. v6}, Ldalvik/system/BaseDexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;Z)V

    .line 115
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;)V
    .registers 12
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "librarySearchPath"    # Ljava/lang/String;
    .param p3, "parent"    # Ljava/lang/ClassLoader;
    .param p4, "libraries"    # [Ljava/lang/ClassLoader;

    .line 122
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "dexPath":Ljava/lang/String;
    .end local p2    # "librarySearchPath":Ljava/lang/String;
    .end local p3    # "parent":Ljava/lang/ClassLoader;
    .end local p4    # "libraries":[Ljava/lang/ClassLoader;
    .local v1, "dexPath":Ljava/lang/String;
    .local v2, "librarySearchPath":Ljava/lang/String;
    .local v3, "parent":Ljava/lang/ClassLoader;
    .local v4, "libraries":[Ljava/lang/ClassLoader;
    invoke-direct/range {v0 .. v6}, Ldalvik/system/BaseDexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;Z)V

    .line 123
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;)V
    .registers 13
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "librarySearchPath"    # Ljava/lang/String;
    .param p3, "parent"    # Ljava/lang/ClassLoader;
    .param p4, "libraries"    # [Ljava/lang/ClassLoader;
    .param p5, "librariesAfter"    # [Ljava/lang/ClassLoader;

    .line 130
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "dexPath":Ljava/lang/String;
    .end local p2    # "librarySearchPath":Ljava/lang/String;
    .end local p3    # "parent":Ljava/lang/ClassLoader;
    .end local p4    # "libraries":[Ljava/lang/ClassLoader;
    .end local p5    # "librariesAfter":[Ljava/lang/ClassLoader;
    .local v1, "dexPath":Ljava/lang/String;
    .local v2, "librarySearchPath":Ljava/lang/String;
    .local v3, "parent":Ljava/lang/ClassLoader;
    .local v4, "libraries":[Ljava/lang/ClassLoader;
    .local v5, "librariesAfter":[Ljava/lang/ClassLoader;
    invoke-direct/range {v0 .. v6}, Ldalvik/system/BaseDexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;Z)V

    .line 131
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;Z)V
    .registers 15
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "librarySearchPath"    # Ljava/lang/String;
    .param p3, "parent"    # Ljava/lang/ClassLoader;
    .param p4, "sharedLibraryLoaders"    # [Ljava/lang/ClassLoader;
    .param p5, "sharedLibraryLoadersAfter"    # [Ljava/lang/ClassLoader;
    .param p6, "isTrusted"    # Z

    .line 154
    invoke-direct {p0, p3}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 157
    const/4 v0, 0x0

    if-nez p4, :cond_8

    .line 158
    move-object v1, v0

    goto :goto_f

    .line 159
    :cond_8
    array-length v1, p4

    invoke-static {p4, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/ClassLoader;

    :goto_f
    iput-object v1, p0, Ldalvik/system/BaseDexClassLoader;->sharedLibraryLoaders:[Ljava/lang/ClassLoader;

    .line 160
    new-instance v2, Ldalvik/system/DexPathList;

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v7, p6

    .end local p1    # "dexPath":Ljava/lang/String;
    .end local p2    # "librarySearchPath":Ljava/lang/String;
    .end local p6    # "isTrusted":Z
    .local v4, "dexPath":Ljava/lang/String;
    .local v5, "librarySearchPath":Ljava/lang/String;
    .local v7, "isTrusted":Z
    invoke-direct/range {v2 .. v7}, Ldalvik/system/DexPathList;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V

    iput-object v2, v3, Ldalvik/system/BaseDexClassLoader;->pathList:Ldalvik/system/DexPathList;

    .line 162
    if-nez p5, :cond_20

    .line 163
    goto :goto_28

    .line 164
    :cond_20
    array-length p1, p5

    invoke-static {p5, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [Ljava/lang/ClassLoader;

    :goto_28
    iput-object v0, v3, Ldalvik/system/BaseDexClassLoader;->sharedLibraryLoadersAfter:[Ljava/lang/ClassLoader;

    .line 166
    iget-object p1, v3, Ldalvik/system/BaseDexClassLoader;->pathList:Ldalvik/system/DexPathList;

    invoke-virtual {p1, p0}, Ldalvik/system/DexPathList;->maybeRunBackgroundVerification(Ljava/lang/ClassLoader;)V

    .line 168
    invoke-virtual {p0}, Ldalvik/system/BaseDexClassLoader;->reportClassLoaderChain()V

    .line 169
    return-void
.end method

.method public constructor blacklist <init>([Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 5
    .param p1, "dexFiles"    # [Ljava/nio/ByteBuffer;
    .param p2, "librarySearchPath"    # Ljava/lang/String;
    .param p3, "parent"    # Ljava/lang/ClassLoader;

    .line 222
    invoke-direct {p0, p3}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Ldalvik/system/BaseDexClassLoader;->sharedLibraryLoaders:[Ljava/lang/ClassLoader;

    .line 224
    iput-object v0, p0, Ldalvik/system/BaseDexClassLoader;->sharedLibraryLoadersAfter:[Ljava/lang/ClassLoader;

    .line 225
    new-instance v0, Ldalvik/system/DexPathList;

    invoke-direct {v0, p0, p2}, Ldalvik/system/DexPathList;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    iput-object v0, p0, Ldalvik/system/BaseDexClassLoader;->pathList:Ldalvik/system/DexPathList;

    .line 226
    iget-object v0, p0, Ldalvik/system/BaseDexClassLoader;->pathList:Ldalvik/system/DexPathList;

    invoke-virtual {v0, p1}, Ldalvik/system/DexPathList;->initByteBufferDexPath([Ljava/nio/ByteBuffer;)V

    .line 228
    iget-object v0, p0, Ldalvik/system/BaseDexClassLoader;->pathList:Ldalvik/system/DexPathList;

    invoke-virtual {v0, p0}, Ldalvik/system/DexPathList;->maybeRunBackgroundVerification(Ljava/lang/ClassLoader;)V

    .line 229
    return-void
.end method

.method private native blacklist computeClassLoaderContextsNative()[Ljava/lang/String;
.end method

.method public static greylist-max-o getReporter()Ldalvik/system/BaseDexClassLoader$Reporter;
    .registers 1

    .line 462
    sget-object v0, Ldalvik/system/BaseDexClassLoader;->reporter:Ldalvik/system/BaseDexClassLoader$Reporter;

    return-object v0
.end method

.method public static greylist-max-o test-api setReporter(Ldalvik/system/BaseDexClassLoader$Reporter;)V
    .registers 1
    .param p0, "newReporter"    # Ldalvik/system/BaseDexClassLoader$Reporter;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 455
    sput-object p0, Ldalvik/system/BaseDexClassLoader;->reporter:Ldalvik/system/BaseDexClassLoader$Reporter;

    .line 456
    return-void
.end method


# virtual methods
.method public greylist test-api addDexPath(Ljava/lang/String;)V
    .registers 3
    .param p1, "dexPath"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldalvik/system/BaseDexClassLoader;->addDexPath(Ljava/lang/String;Z)V

    .line 280
    return-void
.end method

.method public greylist addDexPath(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "isTrusted"    # Z

    .line 287
    iget-object v0, p0, Ldalvik/system/BaseDexClassLoader;->pathList:Ldalvik/system/DexPathList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ldalvik/system/DexPathList;->addDexPath(Ljava/lang/String;Ljava/io/File;Z)V

    .line 288
    return-void
.end method

.method public greylist-max-o test-api addNativePath(Ljava/util/Collection;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 300
    .local p1, "libPaths":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Ldalvik/system/BaseDexClassLoader;->pathList:Ldalvik/system/DexPathList;

    invoke-virtual {v0, p1}, Ldalvik/system/DexPathList;->addNativePath(Ljava/util/Collection;)V

    .line 301
    return-void
.end method

.method protected whitelist test-api findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Ldalvik/system/BaseDexClassLoader;->sharedLibraryLoaders:[Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 235
    iget-object v0, p0, Ldalvik/system/BaseDexClassLoader;->sharedLibraryLoaders:[Ljava/lang/ClassLoader;

    array-length v2, v0

    move v3, v1

    :goto_9
    if-ge v3, v2, :cond_16

    aget-object v4, v0, v3

    .line 237
    .local v4, "loader":Ljava/lang/ClassLoader;
    :try_start_d
    invoke-virtual {v4, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_11} :catch_12

    return-object v0

    .line 238
    :catch_12
    move-exception v5

    .line 235
    .end local v4    # "loader":Ljava/lang/ClassLoader;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 244
    :cond_16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v0, "suppressedExceptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v2, p0, Ldalvik/system/BaseDexClassLoader;->pathList:Ldalvik/system/DexPathList;

    invoke-virtual {v2, p1, v0}, Ldalvik/system/DexPathList;->findClass(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Class;

    move-result-object v2

    .line 246
    .local v2, "c":Ljava/lang/Class;
    if-eqz v2, :cond_24

    .line 247
    return-object v2

    .line 250
    :cond_24
    iget-object v3, p0, Ldalvik/system/BaseDexClassLoader;->sharedLibraryLoadersAfter:[Ljava/lang/ClassLoader;

    if-eqz v3, :cond_38

    .line 251
    iget-object v3, p0, Ldalvik/system/BaseDexClassLoader;->sharedLibraryLoadersAfter:[Ljava/lang/ClassLoader;

    array-length v4, v3

    :goto_2b
    if-ge v1, v4, :cond_38

    aget-object v5, v3, v1

    .line 253
    .local v5, "loader":Ljava/lang/ClassLoader;
    :try_start_2f
    invoke-virtual {v5, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_33
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2f .. :try_end_33} :catch_34

    return-object v1

    .line 254
    :catch_34
    move-exception v6

    .line 251
    .end local v5    # "loader":Ljava/lang/ClassLoader;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 258
    :cond_38
    if-nez v2, :cond_73

    .line 259
    new-instance v1, Ljava/lang/ClassNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Didn\'t find class \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" on path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ldalvik/system/BaseDexClassLoader;->pathList:Ldalvik/system/DexPathList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    .line 261
    .local v1, "cnfe":Ljava/lang/ClassNotFoundException;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_62
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    .line 262
    .local v4, "t":Ljava/lang/Throwable;
    invoke-virtual {v1, v4}, Ljava/lang/ClassNotFoundException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 263
    .end local v4    # "t":Ljava/lang/Throwable;
    goto :goto_62

    .line 264
    :cond_72
    throw v1

    .line 266
    .end local v1    # "cnfe":Ljava/lang/ClassNotFoundException;
    :cond_73
    return-object v2
.end method

.method public whitelist test-api findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 371
    iget-object v0, p0, Ldalvik/system/BaseDexClassLoader;->pathList:Ldalvik/system/DexPathList;

    invoke-virtual {v0, p1}, Ldalvik/system/DexPathList;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api findResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    .line 305
    iget-object v0, p0, Ldalvik/system/BaseDexClassLoader;->sharedLibraryLoaders:[Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 306
    iget-object v0, p0, Ldalvik/system/BaseDexClassLoader;->sharedLibraryLoaders:[Ljava/lang/ClassLoader;

    array-length v2, v0

    move v3, v1

    :goto_9
    if-ge v3, v2, :cond_17

    aget-object v4, v0, v3

    .line 307
    .local v4, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {v4, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    .line 308
    .local v5, "url":Ljava/net/URL;
    if-eqz v5, :cond_14

    .line 309
    return-object v5

    .line 306
    .end local v4    # "loader":Ljava/lang/ClassLoader;
    .end local v5    # "url":Ljava/net/URL;
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 313
    :cond_17
    iget-object v0, p0, Ldalvik/system/BaseDexClassLoader;->pathList:Ldalvik/system/DexPathList;

    invoke-virtual {v0, p1}, Ldalvik/system/DexPathList;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 314
    .local v0, "url":Ljava/net/URL;
    if-eqz v0, :cond_20

    .line 315
    return-object v0

    .line 317
    :cond_20
    iget-object v2, p0, Ldalvik/system/BaseDexClassLoader;->sharedLibraryLoadersAfter:[Ljava/lang/ClassLoader;

    if-eqz v2, :cond_35

    .line 318
    iget-object v2, p0, Ldalvik/system/BaseDexClassLoader;->sharedLibraryLoadersAfter:[Ljava/lang/ClassLoader;

    array-length v3, v2

    :goto_27
    if-ge v1, v3, :cond_35

    aget-object v4, v2, v1

    .line 319
    .restart local v4    # "loader":Ljava/lang/ClassLoader;
    invoke-virtual {v4, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    .line 320
    .local v5, "url2":Ljava/net/URL;
    if-eqz v5, :cond_32

    .line 321
    return-object v5

    .line 318
    .end local v4    # "loader":Ljava/lang/ClassLoader;
    .end local v5    # "url2":Ljava/net/URL;
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 325
    :cond_35
    const/4 v1, 0x0

    return-object v1
.end method

.method protected whitelist test-api findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 9
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

    .line 330
    iget-object v0, p0, Ldalvik/system/BaseDexClassLoader;->pathList:Ldalvik/system/DexPathList;

    invoke-virtual {v0, p1}, Ldalvik/system/DexPathList;->findResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .line 331
    .local v0, "myResources":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    iget-object v1, p0, Ldalvik/system/BaseDexClassLoader;->sharedLibraryLoaders:[Ljava/lang/ClassLoader;

    if-nez v1, :cond_f

    iget-object v1, p0, Ldalvik/system/BaseDexClassLoader;->sharedLibraryLoadersAfter:[Ljava/lang/ClassLoader;

    if-nez v1, :cond_f

    .line 332
    return-object v0

    .line 336
    :cond_f
    iget-object v1, p0, Ldalvik/system/BaseDexClassLoader;->sharedLibraryLoaders:[Ljava/lang/ClassLoader;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    iget-object v1, p0, Ldalvik/system/BaseDexClassLoader;->sharedLibraryLoaders:[Ljava/lang/ClassLoader;

    array-length v1, v1

    goto :goto_19

    :cond_18
    move v1, v2

    .line 338
    .local v1, "sharedLibraryLoadersCount":I
    :goto_19
    iget-object v3, p0, Ldalvik/system/BaseDexClassLoader;->sharedLibraryLoadersAfter:[Ljava/lang/ClassLoader;

    if-eqz v3, :cond_20

    iget-object v2, p0, Ldalvik/system/BaseDexClassLoader;->sharedLibraryLoadersAfter:[Ljava/lang/ClassLoader;

    array-length v2, v2

    .line 340
    .local v2, "sharedLibraryLoadersAfterCount":I
    :cond_20
    add-int v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljava/util/Enumeration;

    .line 347
    .local v3, "tmp":[Ljava/util/Enumeration;, "[Ljava/util/Enumeration<Ljava/net/URL;>;"
    const/4 v4, 0x0

    .line 348
    .local v4, "i":I
    :goto_27
    if-ge v4, v1, :cond_38

    .line 350
    :try_start_29
    iget-object v5, p0, Ldalvik/system/BaseDexClassLoader;->sharedLibraryLoaders:[Ljava/lang/ClassLoader;

    aget-object v5, v5, v4

    invoke-virtual {v5, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v5

    aput-object v5, v3, v4
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_33} :catch_34

    .line 353
    goto :goto_35

    .line 351
    :catch_34
    move-exception v5

    .line 348
    :goto_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 356
    :cond_38
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aput-object v0, v3, v4

    .line 359
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3d
    if-ge v4, v2, :cond_50

    .line 361
    :try_start_3f
    iget-object v6, p0, Ldalvik/system/BaseDexClassLoader;->sharedLibraryLoadersAfter:[Ljava/lang/ClassLoader;

    aget-object v6, v6, v4

    invoke-virtual {v6, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v6

    aput-object v6, v3, v5
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_49} :catch_4a

    .line 364
    goto :goto_4b

    .line 362
    :catch_4a
    move-exception v6

    .line 359
    :goto_4b
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    .line 366
    .end local v4    # "j":I
    :cond_50
    new-instance v4, Lsun/misc/CompoundEnumeration;

    invoke-direct {v4, v3}, Lsun/misc/CompoundEnumeration;-><init>([Ljava/util/Enumeration;)V

    return-object v4
.end method

.method public greylist test-api getLdLibraryPath()Ljava/lang/String;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ldalvik/system/BaseDexClassLoader;->pathList:Ldalvik/system/DexPathList;

    invoke-virtual {v1}, Ldalvik/system/DexPathList;->getNativeLibraryDirectories()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 432
    .local v2, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_26

    .line 433
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 435
    :cond_26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 436
    .end local v2    # "directory":Ljava/io/File;
    goto :goto_f

    .line 438
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected declared-synchronized whitelist test-api getPackage(Ljava/lang/String;)Ljava/lang/Package;
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 405
    if-eqz p1, :cond_2f

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 406
    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v0

    .line 408
    .local v0, "pack":Ljava/lang/Package;
    if-nez v0, :cond_24

    .line 409
    const-string v3, "Unknown"

    const-string v4, "0.0"

    const-string v5, "Unknown"

    const-string v6, "Unknown"

    const-string v7, "0.0"

    const-string v8, "Unknown"
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_28

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "name":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    :try_start_1e
    invoke-virtual/range {v1 .. v9}, Ldalvik/system/BaseDexClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object p1
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_2d

    move-object v0, p1

    goto :goto_26

    .line 408
    .end local v2    # "name":Ljava/lang/String;
    .end local p0    # "this":Ldalvik/system/BaseDexClassLoader;
    .restart local p1    # "name":Ljava/lang/String;
    :cond_24
    move-object v1, p0

    move-object v2, p1

    .line 413
    .end local p1    # "name":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    :goto_26
    monitor-exit p0

    return-object v0

    .line 404
    .end local v0    # "pack":Ljava/lang/Package;
    .end local v2    # "name":Ljava/lang/String;
    :catchall_28
    move-exception v0

    move-object v1, p0

    :goto_2a
    move-object p1, v0

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2d

    throw p1

    :catchall_2d
    move-exception v0

    goto :goto_2a

    .line 405
    .restart local p1    # "name":Ljava/lang/String;
    :cond_2f
    move-object v1, p0

    move-object v2, p1

    .line 416
    .end local p1    # "name":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist-max-o test-api reportClassLoaderChain()V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 178
    sget-object v0, Ldalvik/system/BaseDexClassLoader;->reporter:Ldalvik/system/BaseDexClassLoader$Reporter;

    if-nez v0, :cond_5

    .line 179
    return-void

    .line 182
    :cond_5
    invoke-direct {p0}, Ldalvik/system/BaseDexClassLoader;->computeClassLoaderContextsNative()[Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "classPathAndClassLoaderContexts":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_d

    .line 184
    return-void

    .line 186
    :cond_d
    new-instance v1, Ljava/util/HashMap;

    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 188
    .local v1, "dexFileMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    array-length v3, v0

    if-ge v2, v3, :cond_25

    .line 189
    aget-object v3, v0, v2

    add-int/lit8 v4, v2, 0x1

    aget-object v4, v0, v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    add-int/lit8 v2, v2, 0x2

    goto :goto_16

    .line 192
    .end local v2    # "i":I
    :cond_25
    sget-object v2, Ldalvik/system/BaseDexClassLoader;->reporter:Ldalvik/system/BaseDexClassLoader$Reporter;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ldalvik/system/BaseDexClassLoader$Reporter;->report(Ljava/util/Map;)V

    .line 193
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldalvik/system/BaseDexClassLoader;->pathList:Ldalvik/system/DexPathList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
