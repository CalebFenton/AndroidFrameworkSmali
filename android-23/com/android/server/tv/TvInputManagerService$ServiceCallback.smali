.class final Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
.super Landroid/media/tv/ITvInputServiceCallback$Stub;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceCallback"
.end annotation


# instance fields
.field private final mComponent:Landroid/content/ComponentName;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 2056
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-direct {p0}, Landroid/media/tv/ITvInputServiceCallback$Stub;-><init>()V

    #@5
    .line 2057
    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    #@7
    .line 2058
    iput p3, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mUserId:I

    #@9
    .line 2056
    return-void
.end method

.method private addTvInputLocked(Landroid/media/tv/TvInputInfo;)V
    .locals 4
    .param p1, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    #@0
    .prologue
    .line 2075
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    #@4
    iget v3, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mUserId:I

    #@6
    invoke-static {v1, v2, v3}, Lcom/android/server/tv/TvInputManagerService;->-wrap4(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@9
    move-result-object v0

    #@a
    .line 2076
    .local v0, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get4(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    #@d
    move-result-object v1

    #@e
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@11
    .line 2077
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@13
    iget v2, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mUserId:I

    #@15
    const/4 v3, 0x0

    #@16
    invoke-static {v1, v2, v3}, Lcom/android/server/tv/TvInputManagerService;->-wrap10(Lcom/android/server/tv/TvInputManagerService;I[Ljava/lang/String;)V

    #@19
    .line 2074
    return-void
.end method

.method private ensureHardwarePermission()V
    .locals 2

    #@0
    .prologue
    .line 2062
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "android.permission.TV_INPUT_HARDWARE"

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 2064
    new-instance v0, Ljava/lang/SecurityException;

    #@11
    const-string/jumbo v1, "The caller does not have hardware permission"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 2061
    :cond_0
    return-void
.end method

.method private ensureValidInput(Landroid/media/tv/TvInputInfo;)V
    .locals 2
    .param p1, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    #@0
    .prologue
    .line 2069
    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    #@8
    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 2068
    return-void

    #@13
    .line 2070
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v1, "Invalid TvInputInfo"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0
.end method


# virtual methods
.method public addHardwareTvInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    #@0
    .prologue
    .line 2082
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->ensureHardwarePermission()V

    #@3
    .line 2083
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->ensureValidInput(Landroid/media/tv/TvInputInfo;)V

    #@6
    .line 2084
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@8
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    monitor-enter v1

    #@d
    .line 2085
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@f
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-get3(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, p1, p2}, Lcom/android/server/tv/TvInputHardwareManager;->addHardwareTvInput(ILandroid/media/tv/TvInputInfo;)V

    #@16
    .line 2086
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->addTvInputLocked(Landroid/media/tv/TvInputInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v1

    #@1a
    .line 2081
    return-void

    #@1b
    .line 2084
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method

.method public addHdmiTvInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    #@0
    .prologue
    .line 2092
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->ensureHardwarePermission()V

    #@3
    .line 2093
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->ensureValidInput(Landroid/media/tv/TvInputInfo;)V

    #@6
    .line 2094
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@8
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    monitor-enter v1

    #@d
    .line 2095
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@f
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-get3(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, p1, p2}, Lcom/android/server/tv/TvInputHardwareManager;->addHdmiTvInput(ILandroid/media/tv/TvInputInfo;)V

    #@16
    .line 2096
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->addTvInputLocked(Landroid/media/tv/TvInputInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v1

    #@1a
    .line 2091
    return-void

    #@1b
    .line 2094
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method

.method public removeTvInput(Ljava/lang/String;)V
    .locals 7
    .param p1, "inputId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2102
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->ensureHardwarePermission()V

    #@3
    .line 2103
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@5
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@8
    move-result-object v4

    #@9
    monitor-enter v4

    #@a
    .line 2104
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    #@e
    iget v6, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mUserId:I

    #@10
    invoke-static {v3, v5, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap4(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    #@13
    move-result-object v2

    #@14
    .line 2105
    .local v2, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    const/4 v1, 0x0

    #@15
    .line 2106
    .local v1, "removed":Z
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get4(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    #@18
    move-result-object v3

    #@19
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v0

    #@1d
    .line 2107
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/tv/TvInputInfo;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v3

    #@21
    .line 2106
    if-eqz v3, :cond_1

    #@23
    .line 2108
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v3

    #@27
    check-cast v3, Landroid/media/tv/TvInputInfo;

    #@29
    invoke-virtual {v3}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_0

    #@33
    .line 2109
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@36
    .line 2110
    const/4 v1, 0x1

    #@37
    .line 2114
    :cond_1
    if-eqz v1, :cond_2

    #@39
    .line 2115
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@3b
    iget v5, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mUserId:I

    #@3d
    const/4 v6, 0x0

    #@3e
    invoke-static {v3, v5, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap10(Lcom/android/server/tv/TvInputManagerService;I[Ljava/lang/String;)V

    #@41
    .line 2116
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@43
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->-get3(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3, p1}, Lcom/android/server/tv/TvInputHardwareManager;->removeTvInput(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    :goto_0
    monitor-exit v4

    #@4b
    .line 2101
    return-void

    #@4c
    .line 2118
    :cond_2
    :try_start_1
    const-string/jumbo v3, "TvInputManagerService"

    #@4f
    new-instance v5, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v6, "failed to remove input "

    #@57
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v5

    #@5b
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v5

    #@5f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v5

    #@63
    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@66
    goto :goto_0

    #@67
    .line 2103
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/tv/TvInputInfo;>;"
    .end local v1    # "removed":Z
    .end local v2    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :catchall_0
    move-exception v3

    #@68
    monitor-exit v4

    #@69
    throw v3
.end method
