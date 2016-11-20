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
    .line 63
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    #@7
    .line 62
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
    .line 77
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p2, p3}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)V

    #@7
    .line 76
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
    .line 98
    invoke-direct {p0, p1, v0, v0}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)V

    #@4
    .line 97
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
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 112
    const/4 v0, 0x0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {p1, v0, v1, p2, p3}, Ldalvik/system/DexFile;->openDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    #@b
    .line 113
    iget-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    #@d
    iput-object v0, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    #@f
    .line 114
    iput-object p1, p0, Ldalvik/system/DexFile;->mFileName:Ljava/lang/String;

    #@11
    .line 111
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
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 135
    if-eqz p2, :cond_0

    #@5
    .line 137
    :try_start_0
    new-instance v2, Ljava/io/File;

    #@7
    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@a
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 138
    .local v1, "parent":Ljava/lang/String;
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@10
    invoke-interface {v2}, Llibcore/io/Os;->getuid()I

    #@13
    move-result v2

    #@14
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@16
    invoke-interface {v3, v1}, Llibcore/io/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    #@19
    move-result-object v3

    #@1a
    iget v3, v3, Landroid/system/StructStat;->st_uid:I

    #@1c
    if-eq v2, v3, :cond_0

    #@1e
    .line 139
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@20
    new-instance v3, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v4, "Optimized data directory "

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    .line 140
    const-string/jumbo v4, " is not owned by the current user. Shared storage cannot protect"

    #@33
    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    .line 141
    const-string/jumbo v4, " your application from code injection attacks."

    #@3a
    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@45
    throw v2
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    .line 143
    .end local v1    # "parent":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@47
    .line 148
    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Ldalvik/system/DexFile;->openDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ljava/lang/Object;

    #@4a
    move-result-object v2

    #@4b
    iput-object v2, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    #@4d
    .line 149
    iput-object p1, p0, Ldalvik/system/DexFile;->mFileName:Ljava/lang/String;

    #@4f
    .line 134
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
    .line 294
    .local p4, "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    const/4 v2, 0x0

    #@1
    .line 296
    .local v2, "result":Ljava/lang/Class;
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Ldalvik/system/DexFile;->defineClassNative(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Ldalvik/system/DexFile;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result-object v2

    #@5
    .line 306
    .end local v2    # "result":Ljava/lang/Class;
    :cond_0
    :goto_0
    return-object v2

    #@6
    .line 301
    .restart local v2    # "result":Ljava/lang/Class;
    :catch_0
    move-exception v0

    #@7
    .line 302
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    if-eqz p4, :cond_0

    #@9
    .line 303
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@c
    goto :goto_0

    #@d
    .line 297
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    #@e
    .line 298
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    if-eqz p4, :cond_0

    #@10
    .line 299
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

.method public static native getDexFileOutputPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
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
    .line 187
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
    .line 219
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
    .line 367
    new-instance v1, Ljava/io/File;

    #@3
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@6
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 368
    if-nez p1, :cond_0

    #@c
    .line 367
    :goto_0
    invoke-static {v1, v0, p2, p3, p4}, Ldalvik/system/DexFile;->openDexFileNative(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    return-object v0

    #@11
    .line 370
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
    .line 247
    iget-object v0, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 248
    iget-object v0, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    #@7
    invoke-static {v0}, Ldalvik/system/DexFile;->closeDexFile(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 249
    iput-object v1, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    #@f
    .line 251
    :cond_0
    iput-object v1, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    #@11
    .line 246
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
    .line 316
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
    .line 349
    :try_start_0
    iget-object v0, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    #@6
    invoke-static {v0}, Ldalvik/system/DexFile;->closeDexFile(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 352
    :cond_0
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    #@f
    .line 353
    const/4 v0, 0x0

    #@10
    iput-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 355
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@15
    .line 347
    return-void

    #@16
    .line 350
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    #@18
    const-string/jumbo v1, "Failed to close dex file in finalizer."

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@1e
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    .line 354
    :catchall_0
    move-exception v0

    #@20
    .line 355
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@23
    .line 354
    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 228
    iget-object v0, p0, Ldalvik/system/DexFile;->mFileName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method isBackedByOatFile()Z
    .locals 1

    #@0
    .prologue
    .line 380
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
    .line 277
    const/16 v1, 0x2e

    #@2
    const/16 v2, 0x2f

    #@4
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 278
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
    .line 289
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
    .line 232
    invoke-virtual {p0}, Ldalvik/system/DexFile;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
