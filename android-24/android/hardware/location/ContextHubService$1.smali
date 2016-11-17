.class Landroid/hardware/location/ContextHubService$1;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "ContextHubService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/ContextHubService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/location/ContextHubService;


# direct methods
.method constructor <init>(Landroid/hardware/location/ContextHubService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/location/ContextHubService;

    #@0
    .prologue
    .line 75
    iput-object p1, p0, Landroid/hardware/location/ContextHubService$1;->this$0:Landroid/hardware/location/ContextHubService;

    #@2
    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onVrStateChanged(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 78
    iget-object v2, p0, Landroid/hardware/location/ContextHubService$1;->this$0:Landroid/hardware/location/ContextHubService;

    #@2
    invoke-static {v2}, Landroid/hardware/location/ContextHubService;->-get0(Landroid/hardware/location/ContextHubService;)Ljava/util/concurrent/ConcurrentHashMap;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "app$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/hardware/location/NanoAppInstanceInfo;

    #@1a
    .line 79
    .local v0, "app":Landroid/hardware/location/NanoAppInstanceInfo;
    invoke-virtual {v0}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppId()J

    #@1d
    move-result-wide v2

    #@1e
    const-wide v4, 0x476f6f676c001000L    # 1.3057659520462446E36

    #@23
    cmp-long v2, v2, v4

    #@25
    if-nez v2, :cond_0

    #@27
    .line 80
    iget-object v2, p0, Landroid/hardware/location/ContextHubService$1;->this$0:Landroid/hardware/location/ContextHubService;

    #@29
    invoke-static {v2, v0, p1}, Landroid/hardware/location/ContextHubService;->-wrap0(Landroid/hardware/location/ContextHubService;Landroid/hardware/location/NanoAppInstanceInfo;Z)V

    #@2c
    .line 77
    .end local v0    # "app":Landroid/hardware/location/NanoAppInstanceInfo;
    :cond_1
    return-void
.end method
