.class public final Ldalvik/system/DexFile;
.super Ljava/lang/Object;
.source "DexFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/DexFile$DFEnum;
    }
.end annotation


# static fields
.field public static final DEX2OAT_NEEDED:I = 0x1

.field public static final NO_DEXOPT_NEEDED:I = 0x0

.field public static final PATCHOAT_NEEDED:I = 0x2

.field public static final SELF_PATCHOAT_NEEDED:I = 0x3


# instance fields
.field private final guard:Ldalvik/system/CloseGuard;

.field private mCookie:Ljava/lang/Object;

.field private final mFileName:Ljava/lang/String;

.field private mInternalCookie:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Ldalvik/system/DexFile;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 1
    .param p0, "cookie"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-static {p0}, Ldalvik/system/DexFile;->getClassNameList(Ljava/lang/Object;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 64
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    #@7
    .line 63
    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "elements"    # [Ldalvik/system/DexPathList$Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 78
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p2, p3}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)V

    #@7
    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 99
    invoke-direct {p0, p1, v0, v0}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)V

    #@4
    .line 98
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "elements"    # [Ldalvik/system/DexPathList$Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ldalvik/system/DexFile;->guard:Ldalvik/system/CloseGuard;

    #@9
    .line 113
    const/4 v0, 0x0

    #@a
    const/4 v1, 0x0

    #@b
    invoke-static {p1, v0, v1, p2, p3}, Ldalvik/system/DexFile;->openDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    #@11
    .line 114
    iget-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    #@13
    iput-object v0, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    #@15
    .line 115
    iput-object p1, p0, Ldalvik/system/DexFile;->mFileName:Ljava/lang/String;

    #@17
    .line 116
    iget-object v0, p0, Ldalvik/system/DexFile;->guard:Ldalvik/system/CloseGuard;

    #@19
    const-string/jumbo v1, "close"

    #@1c
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@1f
    .line 112
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)V
    .locals 5
    .param p1, "sourceName"    # Ljava/lang/String;
    .param p2, "outputName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "loader"    # Ljava/lang/ClassLoader;
    .param p5, "elements"    # [Ldalvik/system/DexPathList$Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@6
    move-result-object v2

    #@7
    iput-object v2, p0, Ldalvik/system/DexFile;->guard:Ldalvik/system/CloseGuard;

    #@9
    .line 137
    if-eqz p2, :cond_0

    #@b
    .line 139
    :try_start_0
    new-instance v2, Ljava/io/File;

    #@d
    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@10
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 140
    .local v1, "parent":Ljava/lang/String;
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@16
    invoke-interface {v2}, Llibcore/io/Os;->getuid()I

    #@19
    move-result v2

    #@1a
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@1c
    invoke-interface {v3, v1}, Llibcore/io/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    #@1f
    move-result-object v3

    #@20
    iget v3, v3, Landroid/system/StructStat;->st_uid:I

    #@22
    if-eq v2, v3, :cond_0

    #@24
    .line 141
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@26
    new-instance v3, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v4, "Optimized data directory "

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    .line 142
    const-string/jumbo v4, " is not owned by the current user. Shared storage cannot protect"

    #@39
    .line 141
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    .line 143
    const-string/jumbo v4, " your application from code injection attacks."

    #@40
    .line 141
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v2
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@4c
    .line 145
    .end local v1    # "parent":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@4d
    .line 150
    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Ldalvik/system/DexFile;->openDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ljava/lang/Object;

    #@50
    move-result-object v2

    #@51
    iput-object v2, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    #@53
    .line 151
    iput-object p1, p0, Ldalvik/system/DexFile;->mFileName:Ljava/lang/String;

    #@55
    .line 136
    return-void
.end method

.method private static native closeDexFile(Ljava/lang/Object;)Z
.end method

.method private static defineClass(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Ldalvik/system/DexFile;Ljava/util/List;)Ljava/lang/Class;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "dexFile"    # Ldalvik/system/DexFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Object;",
            "Ldalvik/system/DexFile;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    #@0
    .prologue
    .line 297
    .local p4, "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    const/4 v2, 0x0

    #@1
    .line 299
    .local v2, "result":Ljava/lang/Class;
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Ldalvik/system/DexFile;->defineClassNative(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Ldalvik/system/DexFile;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result-object v2

    #@5
    .line 309
    .end local v2    # "result":Ljava/lang/Class;
    :cond_0
    :goto_0
    return-object v2

    #@6
    .line 304
    .restart local v2    # "result":Ljava/lang/Class;
    :catch_0
    move-exception v0

    #@7
    .line 305
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    if-eqz p4, :cond_0

    #@9
    .line 306
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@c
    goto :goto_0

    #@d
    .line 300
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    #@e
    .line 301
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    if-eqz p4, :cond_0

    #@10
    .line 302
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@13
    goto :goto_0
.end method

.method private static native defineClassNative(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Ldalvik/system/DexFile;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoClassDefFoundError;
        }
    .end annotation
.end method

.method private static native getClassNameList(Ljava/lang/Object;)[Ljava/lang/String;
.end method

.method public static native getDexFileStatus(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public static native getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native getNonProfileGuidedCompilerFilter(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native isBackedByOatFile(Ljava/lang/Object;)Z
.end method

.method public static native isDexOptNeeded(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native isProfileGuidedCompilerFilter(Ljava/lang/String;)Z
.end method

.method public static native isValidCompilerFilter(Ljava/lang/String;)Z
.end method

.method public static loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;
    .locals 1
    .param p0, "sourcePathName"    # Ljava/lang/String;
    .param p1, "outputPathName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 189
    invoke-static {p0, p1, p2, v0, v0}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ldalvik/system/DexFile;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method static loadDex(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ldalvik/system/DexFile;
    .locals 6
    .param p0, "sourcePathName"    # Ljava/lang/String;
    .param p1, "outputPathName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .param p4, "elements"    # [Ldalvik/system/DexPathList$Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 221
    new-instance v0, Ldalvik/system/DexFile;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move v3, p2

    #@5
    move-object v4, p3

    #@6
    move-object v5, p4

    #@7
    invoke-direct/range {v0 .. v5}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)V

    #@a
    return-object v0
.end method

.method private static openDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ljava/lang/Object;
    .locals 2
    .param p0, "sourceName"    # Ljava/lang/String;
    .param p1, "outputName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .param p4, "elements"    # [Ldalvik/system/DexPathList$Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 373
    new-instance v1, Ljava/io/File;

    #@3
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@6
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 374
    if-nez p1, :cond_0

    #@c
    .line 373
    :goto_0
    invoke-static {v1, v0, p2, p3, p4}, Ldalvik/system/DexFile;->openDexFileNative(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    return-object v0

    #@11
    .line 376
    :cond_0
    new-instance v0, Ljava/io/File;

    #@13
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@16
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    goto :goto_0
.end method

.method private static native openDexFileNative(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ljava/lang/Object;
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 249
    iget-object v0, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 250
    iget-object v0, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    #@7
    invoke-static {v0}, Ldalvik/system/DexFile;->closeDexFile(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 251
    iput-object v1, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    #@f
    .line 253
    :cond_0
    iget-object v0, p0, Ldalvik/system/DexFile;->guard:Ldalvik/system/CloseGuard;

    #@11
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@14
    .line 254
    iput-object v1, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    #@16
    .line 248
    :cond_1
    return-void
.end method

.method public entries()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 319
    new-instance v0, Ldalvik/system/DexFile$DFEnum;

    #@2
    invoke-direct {v0, p0, p0}, Ldalvik/system/DexFile$DFEnum;-><init>(Ldalvik/system/DexFile;Ldalvik/system/DexFile;)V

    #@5
    return-object v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 352
    :try_start_0
    iget-object v0, p0, Ldalvik/system/DexFile;->guard:Ldalvik/system/CloseGuard;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 353
    iget-object v0, p0, Ldalvik/system/DexFile;->guard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@9
    .line 355
    :cond_0
    iget-object v0, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    #@b
    if-eqz v0, :cond_1

    #@d
    iget-object v0, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    #@f
    invoke-static {v0}, Ldalvik/system/DexFile;->closeDexFile(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_2

    #@15
    .line 358
    :cond_1
    const/4 v0, 0x0

    #@16
    iput-object v0, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    #@18
    .line 359
    const/4 v0, 0x0

    #@19
    iput-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 361
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@1e
    .line 350
    return-void

    #@1f
    .line 356
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    #@21
    const-string/jumbo v1, "Failed to close dex file in finalizer."

    #@24
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@27
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    .line 360
    :catchall_0
    move-exception v0

    #@29
    .line 361
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@2c
    .line 360
    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Ldalvik/system/DexFile;->mFileName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method isBackedByOatFile()Z
    .locals 1

    #@0
    .prologue
    .line 386
    iget-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    #@2
    invoke-static {v0}, Ldalvik/system/DexFile;->isBackedByOatFile(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 280
    const/16 v1, 0x2e

    #@2
    const/16 v2, 0x2f

    #@4
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 281
    .local v0, "slashName":Ljava/lang/String;
    const/4 v1, 0x0

    #@9
    invoke-virtual {p0, v0, p2, v1}, Ldalvik/system/DexFile;->loadClassBinaryName(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/List;)Ljava/lang/Class;

    #@c
    move-result-object v1

    #@d
    return-object v1
.end method

.method public loadClassBinaryName(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/List;)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    #@0
    .prologue
    .line 292
    .local p3, "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    #@2
    invoke-static {p1, p2, v0, p0, p3}, Ldalvik/system/DexFile;->defineClass(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Ldalvik/system/DexFile;Ljava/util/List;)Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 234
    invoke-virtual {p0}, Ldalvik/system/DexFile;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
