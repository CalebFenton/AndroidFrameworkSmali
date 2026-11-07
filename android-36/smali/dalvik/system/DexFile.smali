.class public final Ldalvik/system/DexFile;
.super Ljava/lang/Object;
.source "DexFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/DexFile$DFEnum;,
        Ldalvik/system/DexFile$OptimizationInfo;
    }
.end annotation


# static fields
.field public static final greylist-max-o DEX2OAT_FOR_BOOT_IMAGE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o test-api DEX2OAT_FOR_FILTER:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o DEX2OAT_FROM_SCRATCH:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist ENFORCE_READ_ONLY_JAVA_DCL:J = 0xd0ba026L

.field public static final greylist-max-o test-api NO_DEXOPT_NEEDED:I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private greylist mCookie:Ljava/lang/Object;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private final greylist mFileName:Ljava/lang/String;

.field private greylist mInternalCookie:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCookie(Ldalvik/system/DexFile;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetClassNameList(Ljava/lang/Object;)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Ldalvik/system/DexFile;->getClassNameList(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/io/File;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "elements"    # [Ldalvik/system/DexPathList$Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)V

    .line 102
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)V

    .line 114
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)V
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "elements"    # [Ldalvik/system/DexPathList$Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2, p3}, Ldalvik/system/DexFile;->openDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    iput-object v0, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    .line 130
    iput-object p1, p0, Ldalvik/system/DexFile;->mFileName:Ljava/lang/String;

    .line 132
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)V
    .registers 10
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

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    if-eqz p2, :cond_3f

    .line 160
    :try_start_5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "parent":Ljava/lang/String;
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v1}, Llibcore/io/Os;->getuid()I

    move-result v1

    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2, v0}, Llibcore/io/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v2

    iget v2, v2, Landroid/system/StructStat;->st_uid:I

    if-ne v1, v2, :cond_1f

    .line 168
    .end local v0    # "parent":Ljava/lang/String;
    goto :goto_3f

    .line 162
    .restart local v0    # "parent":Ljava/lang/String;
    :cond_1f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Optimized data directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not owned by the current user. Shared storage cannot protect your application from code injection attacks."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ldalvik/system/DexFile;
    .end local p1    # "sourceName":Ljava/lang/String;
    .end local p2    # "outputName":Ljava/lang/String;
    .end local p3    # "flags":I
    .end local p4    # "loader":Ljava/lang/ClassLoader;
    .end local p5    # "elements":[Ldalvik/system/DexPathList$Element;
    throw v1
    :try_end_3e
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_3e} :catch_3e

    .line 166
    .end local v0    # "parent":Ljava/lang/String;
    .restart local p0    # "this":Ldalvik/system/DexFile;
    .restart local p1    # "sourceName":Ljava/lang/String;
    .restart local p2    # "outputName":Ljava/lang/String;
    .restart local p3    # "flags":I
    .restart local p4    # "loader":Ljava/lang/ClassLoader;
    .restart local p5    # "elements":[Ldalvik/system/DexPathList$Element;
    :catch_3e
    move-exception v0

    .line 171
    :cond_3f
    :goto_3f
    invoke-static {p1, p2, p3, p4, p5}, Ldalvik/system/DexFile;->openDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    iput-object v0, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    .line 173
    iput-object p1, p0, Ldalvik/system/DexFile;->mFileName:Ljava/lang/String;

    .line 175
    return-void
.end method

.method constructor blacklist <init>([Ljava/nio/ByteBuffer;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)V
    .registers 5
    .param p1, "bufs"    # [Ljava/nio/ByteBuffer;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "elements"    # [Ldalvik/system/DexPathList$Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    invoke-static {p1, p2, p3}, Ldalvik/system/DexFile;->openInMemoryDexFiles([Ljava/nio/ByteBuffer;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    iput-object v0, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Ldalvik/system/DexFile;->mFileName:Ljava/lang/String;

    .line 139
    return-void
.end method

.method private static native greylist-max-o closeDexFile(Ljava/lang/Object;)Z
.end method

.method private static greylist-max-o defineClass(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Ldalvik/system/DexFile;Ljava/util/List;)Ljava/lang/Class;
    .registers 7
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
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    .line 326
    .local p4, "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    const/4 v0, 0x0

    .line 328
    .local v0, "result":Ljava/lang/Class;
    :try_start_1
    invoke-static {p0, p1, p2, p3}, Ldalvik/system/DexFile;->defineClassNative(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Ldalvik/system/DexFile;)Ljava/lang/Class;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_5} :catch_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_5} :catch_7

    move-object v0, v1

    .line 337
    :cond_6
    :goto_6
    goto :goto_15

    .line 333
    :catch_7
    move-exception v1

    .line 334
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    if-eqz p4, :cond_15

    .line 335
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 329
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_e
    move-exception v1

    .line 330
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    if-eqz p4, :cond_6

    .line 331
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 338
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :cond_15
    :goto_15
    return-object v0
.end method

.method private static native greylist-max-o defineClassNative(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Ldalvik/system/DexFile;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoClassDefFoundError;
        }
    .end annotation
.end method

.method private static native greylist getClassNameList(Ljava/lang/Object;)[Ljava/lang/String;
.end method

.method public static greylist-max-o test-api getDexFileOptimizationInfo(Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/DexFile$OptimizationInfo;
    .registers 7
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "instructionSet"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 675
    invoke-static {p0, p1}, Ldalvik/system/DexFile;->getDexFileOptimizationStatus(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 676
    .local v0, "status":[Ljava/lang/String;
    new-instance v1, Ldalvik/system/DexFile$OptimizationInfo;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Ldalvik/system/DexFile$OptimizationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ldalvik/system/DexFile-IA;)V

    return-object v1
.end method

.method private static native greylist-max-o getDexFileOptimizationStatus(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public static native greylist-max-o test-api getDexFileOutputPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public static native greylist-max-o test-api getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static greylist-max-o getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I
    .registers 11
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "instructionSet"    # Ljava/lang/String;
    .param p2, "compilerFilter"    # Ljava/lang/String;
    .param p3, "newProfile"    # Z
    .param p4, "downgrade"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 553
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .end local p0    # "fileName":Ljava/lang/String;
    .end local p1    # "instructionSet":Ljava/lang/String;
    .end local p2    # "compilerFilter":Ljava/lang/String;
    .end local p3    # "newProfile":Z
    .end local p4    # "downgrade":Z
    .local v0, "fileName":Ljava/lang/String;
    .local v1, "instructionSet":Ljava/lang/String;
    .local v2, "compilerFilter":Ljava/lang/String;
    .local v4, "newProfile":Z
    .local v5, "downgrade":Z
    invoke-static/range {v0 .. v5}, Ldalvik/system/DexFile;->getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result p0

    return p0
.end method

.method public static native greylist-max-o getNonProfileGuidedCompilerFilter(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native greylist-max-o test-api getSafeModeCompilerFilter(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method private static native greylist-max-o getStaticSizeOfDexFile(Ljava/lang/Object;)J
.end method

.method private static native greylist-max-o isBackedByOatFile(Ljava/lang/Object;)Z
.end method

.method public static native whitelist test-api isDexOptNeeded(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native blacklist test-api isOptimizedCompilerFilter(Ljava/lang/String;)Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public static native greylist-max-o test-api isProfileGuidedCompilerFilter(Ljava/lang/String;)Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public static native blacklist isReadOnlyJavaDclEnforced()Z
.end method

.method public static native greylist-max-o test-api isValidCompilerFilter(Ljava/lang/String;)Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public static native blacklist test-api isVerifiedCompilerFilter(Ljava/lang/String;)Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public static whitelist test-api loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;
    .registers 4
    .param p0, "sourcePathName"    # Ljava/lang/String;
    .param p1, "outputPathName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 198
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ldalvik/system/DexFile;

    move-result-object v0

    return-object v0
.end method

.method static greylist loadDex(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ldalvik/system/DexFile;
    .registers 11
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

    .line 231
    new-instance v0, Ldalvik/system/DexFile;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p0    # "sourcePathName":Ljava/lang/String;
    .end local p1    # "outputPathName":Ljava/lang/String;
    .end local p2    # "flags":I
    .end local p3    # "loader":Ljava/lang/ClassLoader;
    .end local p4    # "elements":[Ldalvik/system/DexPathList$Element;
    .local v1, "sourcePathName":Ljava/lang/String;
    .local v2, "outputPathName":Ljava/lang/String;
    .local v3, "flags":I
    .local v4, "loader":Ljava/lang/ClassLoader;
    .local v5, "elements":[Ldalvik/system/DexPathList$Element;
    invoke-direct/range {v0 .. v5}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)V

    return-object v0
.end method

.method private static greylist openDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ljava/lang/Object;
    .registers 7
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

    .line 406
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 407
    if-nez p1, :cond_d

    .line 408
    const/4 v1, 0x0

    goto :goto_16

    .line 409
    :cond_d
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 406
    :goto_16
    invoke-static {v0, v1, p2, p3, p4}, Ldalvik/system/DexFile;->openDexFileNative(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static native greylist openDexFileNative(Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ljava/lang/Object;
.end method

.method private static blacklist openInMemoryDexFiles([Ljava/nio/ByteBuffer;Ljava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ljava/lang/Object;
    .registers 10
    .param p0, "bufs"    # [Ljava/nio/ByteBuffer;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "elements"    # [Ldalvik/system/DexPathList$Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    array-length v0, p0

    new-array v2, v0, [[B

    .line 421
    .local v2, "arrays":[[B
    array-length v0, p0

    new-array v3, v0, [I

    .line 422
    .local v3, "starts":[I
    array-length v0, p0

    new-array v4, v0, [I

    .line 423
    .local v4, "ends":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v1, p0

    if-ge v0, v1, :cond_32

    .line 424
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1d

    :cond_17
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    :goto_1d
    aput-object v1, v2, v0

    .line 425
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    aput v1, v3, v0

    .line 426
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    aput v1, v4, v0

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 428
    .end local v0    # "i":I
    :cond_32
    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    .end local p0    # "bufs":[Ljava/nio/ByteBuffer;
    .end local p1    # "loader":Ljava/lang/ClassLoader;
    .end local p2    # "elements":[Ldalvik/system/DexPathList$Element;
    .local v1, "bufs":[Ljava/nio/ByteBuffer;
    .local v5, "loader":Ljava/lang/ClassLoader;
    .local v6, "elements":[Ldalvik/system/DexPathList$Element;
    invoke-static/range {v1 .. v6}, Ldalvik/system/DexFile;->openInMemoryDexFilesNative([Ljava/nio/ByteBuffer;[[B[I[ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static native blacklist openInMemoryDexFilesNative([Ljava/nio/ByteBuffer;[[B[I[ILjava/lang/ClassLoader;[Ldalvik/system/DexPathList$Element;)Ljava/lang/Object;
.end method

.method private static native greylist-max-o setTrusted(Ljava/lang/Object;)V
.end method

.method private static native blacklist verifyInBackgroundNative(Ljava/lang/Object;Ljava/lang/ClassLoader;)V
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 273
    iget-object v0, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    if-eqz v0, :cond_11

    .line 274
    iget-object v0, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    invoke-static {v0}, Ldalvik/system/DexFile;->closeDexFile(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 275
    iput-object v1, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    .line 277
    :cond_f
    iput-object v1, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    .line 279
    :cond_11
    return-void
.end method

.method public whitelist test-api entries()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 353
    new-instance v0, Ldalvik/system/DexFile$DFEnum;

    invoke-direct {v0, p0}, Ldalvik/system/DexFile$DFEnum;-><init>(Ldalvik/system/DexFile;)V

    return-object v0
.end method

.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 387
    :try_start_0
    iget-object v0, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    if-eqz v0, :cond_15

    iget-object v0, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    invoke-static {v0}, Ldalvik/system/DexFile;->closeDexFile(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_15

    .line 388
    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Failed to close dex file in finalizer."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p0    # "this":Ldalvik/system/DexFile;
    throw v0

    .line 390
    .restart local p0    # "this":Ldalvik/system/DexFile;
    :cond_15
    :goto_15
    const/4 v0, 0x0

    iput-object v0, p0, Ldalvik/system/DexFile;->mInternalCookie:Ljava/lang/Object;

    .line 391
    iput-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1f

    .line 393
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 394
    nop

    .line 395
    return-void

    .line 393
    :catchall_1f
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 394
    throw v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 245
    iget-object v0, p0, Ldalvik/system/DexFile;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getStaticSizeOfDexFile()J
    .registers 3

    .line 796
    iget-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    invoke-static {v0}, Ldalvik/system/DexFile;->getStaticSizeOfDexFile(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method greylist isBackedByOatFile()Z
    .registers 2

    .line 451
    iget-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    invoke-static {v0}, Ldalvik/system/DexFile;->isBackedByOatFile(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 308
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "slashName":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Ldalvik/system/DexFile;->loadClassBinaryName(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/List;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method public greylist loadClassBinaryName(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/List;)Ljava/lang/Class;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    .line 321
    .local p3, "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    invoke-static {p1, p2, v0, p0, p3}, Ldalvik/system/DexFile;->defineClass(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Ldalvik/system/DexFile;Ljava/util/List;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o setTrusted()V
    .registers 2

    .line 458
    iget-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    invoke-static {v0}, Ldalvik/system/DexFile;->setTrusted(Ljava/lang/Object;)V

    .line 459
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 249
    iget-object v0, p0, Ldalvik/system/DexFile;->mFileName:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 250
    invoke-virtual {p0}, Ldalvik/system/DexFile;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 252
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InMemoryDexFile[cookie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    check-cast v1, [J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist verifyInBackground(Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 441
    iget-object v0, p0, Ldalvik/system/DexFile;->mCookie:Ljava/lang/Object;

    invoke-static {v0, p1}, Ldalvik/system/DexFile;->verifyInBackgroundNative(Ljava/lang/Object;Ljava/lang/ClassLoader;)V

    .line 442
    return-void
.end method
