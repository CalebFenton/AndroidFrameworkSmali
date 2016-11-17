.class Landroid/app/ApplicationLoaders;
.super Ljava/lang/Object;
.source "ApplicationLoaders.java"


# static fields
.field private static final gApplicationLoaders:Landroid/app/ApplicationLoaders;


# instance fields
.field private final mLoaders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 99
    new-instance v0, Landroid/app/ApplicationLoaders;

    #@2
    invoke-direct {v0}, Landroid/app/ApplicationLoaders;-><init>()V

    #@5
    sput-object v0, Landroid/app/ApplicationLoaders;->gApplicationLoaders:Landroid/app/ApplicationLoaders;

    #@7
    .line 24
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 97
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    #@a
    .line 24
    return-void
.end method

.method public static getDefault()Landroid/app/ApplicationLoaders;
    .locals 1

    #@0
    .prologue
    .line 26
    sget-object v0, Landroid/app/ApplicationLoaders;->gApplicationLoaders:Landroid/app/ApplicationLoaders;

    #@2
    return-object v0
.end method

.method private static native setupVulkanLayerPath(Ljava/lang/ClassLoader;Ljava/lang/String;)V
.end method


# virtual methods
.method addPath(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 3
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "dexPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 90
    instance-of v1, p1, Ldalvik/system/PathClassLoader;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 91
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v2, "class loader is not a PathClassLoader"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    :cond_0
    move-object v0, p1

    #@e
    .line 93
    check-cast v0, Ldalvik/system/PathClassLoader;

    #@10
    .line 94
    .local v0, "baseDexClassLoader":Ldalvik/system/PathClassLoader;
    invoke-virtual {v0, p2}, Ldalvik/system/PathClassLoader;->addDexPath(Ljava/lang/String;)V

    #@13
    .line 89
    return-void
.end method

.method public getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 12
    .param p1, "zip"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I
    .param p3, "isBundled"    # Z
    .param p4, "librarySearchPath"    # Ljava/lang/String;
    .param p5, "libraryPermittedPath"    # Ljava/lang/String;
    .param p6, "parent"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 38
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    #@7
    move-result-object v8

    #@8
    .line 40
    .local v8, "baseParent":Ljava/lang/ClassLoader;
    iget-object v11, p0, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    #@a
    monitor-enter v11

    #@b
    .line 41
    if-nez p6, :cond_0

    #@d
    .line 42
    move-object/from16 p6, v8

    #@f
    .line 50
    :cond_0
    move-object/from16 v0, p6

    #@11
    if-ne v0, v8, :cond_2

    #@13
    .line 51
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    #@15
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v9

    #@19
    check-cast v9, Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 52
    .local v9, "loader":Ljava/lang/ClassLoader;
    if-eqz v9, :cond_1

    #@1d
    monitor-exit v11

    #@1e
    .line 53
    return-object v9

    #@1f
    .line 56
    :cond_1
    const-wide/16 v2, 0x40

    #@21
    :try_start_1
    invoke-static {v2, v3, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@24
    move-object v2, p1

    #@25
    move-object/from16 v3, p4

    #@27
    move-object/from16 v4, p5

    #@29
    move-object/from16 v5, p6

    #@2b
    move v6, p2

    #@2c
    move v7, p3

    #@2d
    .line 58
    invoke-static/range {v2 .. v7}, Lcom/android/internal/os/PathClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;IZ)Ldalvik/system/PathClassLoader;

    #@30
    move-result-object v10

    #@31
    .line 66
    .local v10, "pathClassloader":Ldalvik/system/PathClassLoader;
    const-wide/16 v2, 0x40

    #@33
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@36
    .line 68
    const-string/jumbo v2, "setupVulkanLayerPath"

    #@39
    const-wide/16 v4, 0x40

    #@3b
    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@3e
    .line 69
    move-object/from16 v0, p4

    #@40
    invoke-static {v10, v0}, Landroid/app/ApplicationLoaders;->setupVulkanLayerPath(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    #@43
    .line 70
    const-wide/16 v2, 0x40

    #@45
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@48
    .line 72
    iget-object v2, p0, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    #@4a
    invoke-virtual {v2, p1, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    monitor-exit v11

    #@4e
    .line 73
    return-object v10

    #@4f
    .line 76
    .end local v9    # "loader":Ljava/lang/ClassLoader;
    .end local v10    # "pathClassloader":Ldalvik/system/PathClassLoader;
    :cond_2
    const-wide/16 v2, 0x40

    #@51
    :try_start_2
    invoke-static {v2, v3, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@54
    .line 77
    new-instance v10, Ldalvik/system/PathClassLoader;

    #@56
    move-object/from16 v0, p6

    #@58
    invoke-direct {v10, p1, v0}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@5b
    .line 78
    .restart local v10    # "pathClassloader":Ldalvik/system/PathClassLoader;
    const-wide/16 v2, 0x40

    #@5d
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@60
    monitor-exit v11

    #@61
    .line 79
    return-object v10

    #@62
    .line 40
    .end local v10    # "pathClassloader":Ldalvik/system/PathClassLoader;
    :catchall_0
    move-exception v2

    #@63
    monitor-exit v11

    #@64
    throw v2
.end method
