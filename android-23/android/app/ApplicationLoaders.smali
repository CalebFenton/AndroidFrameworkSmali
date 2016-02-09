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
    .line 75
    new-instance v0, Landroid/app/ApplicationLoaders;

    #@2
    invoke-direct {v0}, Landroid/app/ApplicationLoaders;-><init>()V

    #@5
    .line 74
    sput-object v0, Landroid/app/ApplicationLoaders;->gApplicationLoaders:Landroid/app/ApplicationLoaders;

    #@7
    .line 23
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    #@a
    .line 23
    return-void
.end method

.method public static getDefault()Landroid/app/ApplicationLoaders;
    .locals 1

    #@0
    .prologue
    .line 27
    sget-object v0, Landroid/app/ApplicationLoaders;->gApplicationLoaders:Landroid/app/ApplicationLoaders;

    #@2
    return-object v0
.end method


# virtual methods
.method public getClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 8
    .param p1, "zip"    # Ljava/lang/String;
    .param p2, "libPath"    # Ljava/lang/String;
    .param p3, "parent"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 38
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    #@7
    move-result-object v0

    #@8
    .line 40
    .local v0, "baseParent":Ljava/lang/ClassLoader;
    iget-object v4, p0, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    #@a
    monitor-enter v4

    #@b
    .line 41
    if-nez p3, :cond_0

    #@d
    .line 42
    move-object p3, v0

    #@e
    .line 50
    :cond_0
    if-ne p3, v0, :cond_2

    #@10
    .line 51
    :try_start_0
    iget-object v3, p0, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    #@12
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 52
    .local v1, "loader":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_1

    #@1a
    monitor-exit v4

    #@1b
    .line 53
    return-object v1

    #@1c
    .line 56
    :cond_1
    const-wide/16 v6, 0x40

    #@1e
    :try_start_1
    invoke-static {v6, v7, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@21
    .line 58
    new-instance v2, Ldalvik/system/PathClassLoader;

    #@23
    invoke-direct {v2, p1, p2, p3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@26
    .line 59
    .local v2, "pathClassloader":Ldalvik/system/PathClassLoader;
    const-wide/16 v6, 0x40

    #@28
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@2b
    .line 61
    iget-object v3, p0, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    #@2d
    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    monitor-exit v4

    #@31
    .line 62
    return-object v2

    #@32
    .line 65
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    .end local v2    # "pathClassloader":Ldalvik/system/PathClassLoader;
    :cond_2
    const-wide/16 v6, 0x40

    #@34
    :try_start_2
    invoke-static {v6, v7, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@37
    .line 66
    new-instance v2, Ldalvik/system/PathClassLoader;

    #@39
    invoke-direct {v2, p1, p3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@3c
    .line 67
    .restart local v2    # "pathClassloader":Ldalvik/system/PathClassLoader;
    const-wide/16 v6, 0x40

    #@3e
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@41
    monitor-exit v4

    #@42
    .line 68
    return-object v2

    #@43
    .line 40
    .end local v2    # "pathClassloader":Ldalvik/system/PathClassLoader;
    :catchall_0
    move-exception v3

    #@44
    monitor-exit v4

    #@45
    throw v3
.end method
