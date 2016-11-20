.class Landroid/view/ThreadedRenderer$ProcessInitializer;
.super Ljava/lang/Object;
.source "ThreadedRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ThreadedRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessInitializer"
.end annotation


# static fields
.field static sInstance:Landroid/view/ThreadedRenderer$ProcessInitializer;

.field private static sProcToken:Landroid/os/IBinder;


# instance fields
.field private mInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 901
    new-instance v0, Landroid/view/ThreadedRenderer$ProcessInitializer;

    #@2
    invoke-direct {v0}, Landroid/view/ThreadedRenderer$ProcessInitializer;-><init>()V

    #@5
    sput-object v0, Landroid/view/ThreadedRenderer$ProcessInitializer;->sInstance:Landroid/view/ThreadedRenderer$ProcessInitializer;

    #@7
    .line 900
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 904
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mInitialized:Z

    #@6
    .line 906
    return-void
.end method

.method private static initAssetAtlas(Landroid/content/Context;J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "renderProxy"    # J

    #@0
    .prologue
    .line 943
    const-string/jumbo v5, "assetatlas"

    #@3
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v1

    #@7
    .line 944
    .local v1, "binder":Landroid/os/IBinder;
    if-nez v1, :cond_0

    #@9
    return-void

    #@a
    .line 946
    :cond_0
    invoke-static {v1}, Landroid/view/IAssetAtlas$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IAssetAtlas;

    #@d
    move-result-object v0

    #@e
    .line 948
    .local v0, "atlas":Landroid/view/IAssetAtlas;
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPpid()I

    #@11
    move-result v5

    #@12
    invoke-interface {v0, v5}, Landroid/view/IAssetAtlas;->isCompatible(I)Z

    #@15
    move-result v5

    #@16
    if-eqz v5, :cond_2

    #@18
    .line 949
    invoke-interface {v0}, Landroid/view/IAssetAtlas;->getBuffer()Landroid/view/GraphicBuffer;

    #@1b
    move-result-object v2

    #@1c
    .line 950
    .local v2, "buffer":Landroid/view/GraphicBuffer;
    if-eqz v2, :cond_2

    #@1e
    .line 951
    invoke-interface {v0}, Landroid/view/IAssetAtlas;->getMap()[J

    #@21
    move-result-object v4

    #@22
    .line 952
    .local v4, "map":[J
    if-eqz v4, :cond_1

    #@24
    .line 953
    invoke-static {p1, p2, v2, v4}, Landroid/view/ThreadedRenderer;->-wrap1(JLandroid/view/GraphicBuffer;[J)V

    #@27
    .line 958
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@2e
    move-result-object v6

    #@2f
    if-eq v5, v6, :cond_2

    #@31
    .line 959
    invoke-virtual {v2}, Landroid/view/GraphicBuffer;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    .line 942
    .end local v2    # "buffer":Landroid/view/GraphicBuffer;
    .end local v4    # "map":[J
    :cond_2
    :goto_0
    return-void

    #@35
    .line 963
    :catch_0
    move-exception v3

    #@36
    .line 964
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "ThreadedRenderer"

    #@39
    const-string/jumbo v6, "Could not acquire atlas"

    #@3c
    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3f
    goto :goto_0
.end method

.method private static initGraphicsStats(Landroid/content/Context;J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "renderProxy"    # J

    #@0
    .prologue
    .line 927
    :try_start_0
    const-string/jumbo v5, "graphicsstats"

    #@3
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 928
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    #@9
    return-void

    #@a
    .line 929
    :cond_0
    invoke-static {v0}, Landroid/view/IGraphicsStats$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IGraphicsStats;

    #@d
    move-result-object v1

    #@e
    .line 931
    .local v1, "graphicsStatsService":Landroid/view/IGraphicsStats;
    new-instance v5, Landroid/os/Binder;

    #@10
    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    #@13
    sput-object v5, Landroid/view/ThreadedRenderer$ProcessInitializer;->sProcToken:Landroid/os/IBinder;

    #@15
    .line 932
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@18
    move-result-object v5

    #@19
    iget-object v3, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@1b
    .line 934
    .local v3, "pkg":Ljava/lang/String;
    sget-object v5, Landroid/view/ThreadedRenderer$ProcessInitializer;->sProcToken:Landroid/os/IBinder;

    #@1d
    .line 933
    invoke-interface {v1, v3, v5}, Landroid/view/IGraphicsStats;->requestBufferForProcess(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/ParcelFileDescriptor;

    #@20
    move-result-object v2

    #@21
    .line 935
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    #@24
    move-result v5

    #@25
    invoke-static {p1, p2, v5}, Landroid/view/ThreadedRenderer;->-wrap2(JI)V

    #@28
    .line 936
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 925
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "graphicsStatsService":Landroid/view/IGraphicsStats;
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "pkg":Ljava/lang/String;
    :goto_0
    return-void

    #@2c
    .line 937
    :catch_0
    move-exception v4

    #@2d
    .line 938
    .local v4, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "ThreadedRenderer"

    #@30
    const-string/jumbo v6, "Could not acquire gfx stats buffer"

    #@33
    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@36
    goto :goto_0
.end method

.method private static initSched(Landroid/content/Context;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "renderProxy"    # J

    #@0
    .prologue
    .line 918
    :try_start_0
    invoke-static {p1, p2}, Landroid/view/ThreadedRenderer;->-wrap0(J)I

    #@3
    move-result v1

    #@4
    .line 919
    .local v1, "tid":I
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->setRenderThread(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 916
    .end local v1    # "tid":I
    :goto_0
    return-void

    #@c
    .line 920
    :catch_0
    move-exception v0

    #@d
    .line 921
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "ThreadedRenderer"

    #@10
    const-string/jumbo v3, "Failed to set scheduler for RenderThread"

    #@13
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    goto :goto_0
.end method


# virtual methods
.method declared-synchronized init(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "renderProxy"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 909
    :try_start_0
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v0, :cond_0

    #@5
    monitor-exit p0

    #@6
    return-void

    #@7
    .line 910
    :cond_0
    const/4 v0, 0x1

    #@8
    :try_start_1
    iput-boolean v0, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mInitialized:Z

    #@a
    .line 911
    invoke-static {p1, p2, p3}, Landroid/view/ThreadedRenderer$ProcessInitializer;->initSched(Landroid/content/Context;J)V

    #@d
    .line 912
    invoke-static {p1, p2, p3}, Landroid/view/ThreadedRenderer$ProcessInitializer;->initGraphicsStats(Landroid/content/Context;J)V

    #@10
    .line 913
    invoke-static {p1, p2, p3}, Landroid/view/ThreadedRenderer$ProcessInitializer;->initAssetAtlas(Landroid/content/Context;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    monitor-exit p0

    #@14
    .line 908
    return-void

    #@15
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method
