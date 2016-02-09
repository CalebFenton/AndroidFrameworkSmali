.class final Lcom/android/server/BatteryService$LocalService;
.super Landroid/os/BatteryManagerInternal;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method private constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BatteryService;

    #@0
    .prologue
    .line 797
    iput-object p1, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    #@2
    invoke-direct {p0}, Landroid/os/BatteryManagerInternal;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$LocalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BatteryService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$LocalService;-><init>(Lcom/android/server/BatteryService;)V

    #@3
    return-void
.end method


# virtual methods
.method public getBatteryLevel()I
    .locals 2

    #@0
    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    #@2
    invoke-static {v0}, Lcom/android/server/BatteryService;->-get4(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 815
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    #@9
    invoke-static {v0}, Lcom/android/server/BatteryService;->-get1(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    #@c
    move-result-object v0

    #@d
    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v1

    #@10
    return v0

    #@11
    .line 814
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method public getBatteryLevelLow()Z
    .locals 2

    #@0
    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    #@2
    invoke-static {v0}, Lcom/android/server/BatteryService;->-get4(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 822
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    #@9
    invoke-static {v0}, Lcom/android/server/BatteryService;->-get0(Lcom/android/server/BatteryService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    monitor-exit v1

    #@e
    return v0

    #@f
    .line 821
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public getInvalidCharger()I
    .locals 2

    #@0
    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    #@2
    invoke-static {v0}, Lcom/android/server/BatteryService;->-get4(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 829
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    #@9
    invoke-static {v0}, Lcom/android/server/BatteryService;->-get3(Lcom/android/server/BatteryService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    monitor-exit v1

    #@e
    return v0

    #@f
    .line 828
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public getPlugType()I
    .locals 2

    #@0
    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    #@2
    invoke-static {v0}, Lcom/android/server/BatteryService;->-get4(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 808
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    #@9
    invoke-static {v0}, Lcom/android/server/BatteryService;->-get6(Lcom/android/server/BatteryService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    monitor-exit v1

    #@e
    return v0

    #@f
    .line 807
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public isPowered(I)Z
    .locals 2
    .param p1, "plugTypeSet"    # I

    #@0
    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    #@2
    invoke-static {v0}, Lcom/android/server/BatteryService;->-get4(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 801
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    #@9
    invoke-static {v0, p1}, Lcom/android/server/BatteryService;->-wrap0(Lcom/android/server/BatteryService;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    monitor-exit v1

    #@e
    return v0

    #@f
    .line 800
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method
