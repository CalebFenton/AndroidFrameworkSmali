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
    .line 59
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    #@7
    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ldalvik/system/DexFile;->guard:Ldalvik/system/CloseGuard;

    #@9
    .line 80
    const/4 v0, 0x0

    #@a
    const/4 v1, 0x0

    #@b
    invoke-static {p1, v0, v1}, Ldalvik/system/DexFile;->openDexFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    #@11
    .line 81
    iput-object p1, p0, Ldalvik/system/DexFile;->mFileName:Ljava/lang/String;

    #@13
    .line 82
    iget-object v0, p0, Ldalvik/system/DexFile;->guard:Ldalvik/system/CloseGuard;

    #@15
    const-string/jumbo v1, "close"

    #@18
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@1b
    .line 79
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "sourceName"    # Ljava/lang/String;
    .param p2, "outputName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@6
    move-result-object v2

    #@7
    iput-object v2, p0, Ldalvik/system/DexFile;->guard:Ldalvik/system/CloseGuard;

    #@9
    .line 98
    if-eqz p2, :cond_0

    #@b
    .line 100
    :try_start_0
    new-instance v2, Ljava/io/File;

    #@d
    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@10
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 101
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
    .line 102
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
    .line 103
    const-string/jumbo v4, " is not owned by the current user. Shared storage cannot protect"

    #@39
    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    .line 104
    const-string/jumbo v4, " your application from code injection attacks."

    #@40
    .line 102
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
    .line 106
    .end local v1    # "parent":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@4d
    .line 111
    :cond_0
    invoke-static {p1, p2, p3}, Ldalvik/system/DexFile;->openDexFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    #@50
    move-result-object v2

    #@51
    iput-object v2, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    #@53
    .line 112
    iput-object p1, p0, Ldalvik/system/DexFile;->mFileName:Ljava/lang/String;

    #@55
    .line 113
    iget-object v2, p0, Ldalvik/system/DexFile;->guard:Ldalvik/system/CloseGuard;

    #@57
    const-string/jumbo v3, "close"

    #@5a
    invoke-virtual {v2, v3}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@5d
    .line 97
    return-void
.end method

.method private static native closeDexFile(Ljava/lang/Object;)V
.end method

.method private static defineClass(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Class;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "cookie"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    #@0
    .prologue
    .line 224
    .local p3, "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    const/4 v2, 0x0

    #@1
    .line 226
    .local v2, "result":Ljava/lang/Class;
    :try_start_0
    invoke-static {p0, p1, p2}, Ldalvik/system/DexFile;->defineClassNative(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result-object v2

    #@5
    .line 236
    .end local v2    # "result":Ljava/lang/Class;
    :cond_0
    :goto_0
    return-object v2

    #@6
    .line 231
    .restart local v2    # "result":Ljava/lang/Class;
    :catch_0
    move-exception v0

    #@7
    .line 232
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    if-eqz p3, :cond_0

    #@9
    .line 233
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@c
    goto :goto_0

    #@d
    .line 227
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    #@e
    .line 228
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    if-eqz p3, :cond_0

    #@10
    .line 229
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@13
    goto :goto_0
.end method

.method private static native defineClassNative(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoClassDefFoundError;
        }
    .end annotation
.end method

.method private static native getClassNameList(Ljava/lang/Object;)[Ljava/lang/String;
.end method

.method public static native getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native isDexOptNeeded(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation
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
    .line 151
    new-instance v0, Ldalvik/system/DexFile;

    #@2
    invoke-direct {v0, p0, p1, p2}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@5
    return-object v0
.end method

.method private static openDexFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 2
    .param p0, "sourceName"    # Ljava/lang/String;
    .param p1, "outputName"    # Ljava/lang/String;
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
    .line 295
    new-instance v1, Ljava/io/File;

    #@3
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@6
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 296
    if-nez p1, :cond_0

    #@c
    .line 295
    :goto_0
    invoke-static {v1, v0, p2}, Ldalvik/system/DexFile;->openDexFileNative(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    return-object v0

    #@11
    .line 296
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

.method private static native openDexFileNative(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;
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
    .line 178
    iget-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 179
    iget-object v0, p0, Ldalvik/system/DexFile;->guard:Ldalvik/system/CloseGuard;

    #@7
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@a
    .line 180
    iget-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    #@c
    invoke-static {v0}, Ldalvik/system/DexFile;->closeDexFile(Ljava/lang/Object;)V

    #@f
    .line 181
    iput-object v1, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    #@11
    .line 177
    :cond_0
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
    .line 246
    new-instance v0, Ldalvik/system/DexFile$DFEnum;

    #@2
    invoke-direct {v0, p0, p0}, Ldalvik/system/DexFile$DFEnum;-><init>(Ldalvik/system/DexFile;Ldalvik/system/DexFile;)V

    #@5
    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 279
    :try_start_0
    iget-object v0, p0, Ldalvik/system/DexFile;->guard:Ldalvik/system/CloseGuard;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 280
    iget-object v0, p0, Ldalvik/system/DexFile;->guard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@9
    .line 282
    :cond_0
    invoke-virtual {p0}, Ldalvik/system/DexFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 284
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@f
    .line 277
    return-void

    #@10
    .line 283
    :catchall_0
    move-exception v0

    #@11
    .line 284
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@14
    .line 283
    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Ldalvik/system/DexFile;->mFileName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 207
    const/16 v1, 0x2e

    #@2
    const/16 v2, 0x2f

    #@4
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 208
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
    .line 219
    .local p3, "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    #@2
    invoke-static {p1, p2, v0, p3}, Ldalvik/system/DexFile;->defineClass(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 164
    invoke-virtual {p0}, Ldalvik/system/DexFile;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
