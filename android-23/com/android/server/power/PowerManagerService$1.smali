.class Lcom/android/server/power/PowerManagerService$1;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDisplayState:I

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    #@0
    .prologue
    .line 2014
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 2015
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lcom/android/server/power/PowerManagerService$1;->mDisplayState:I

    #@8
    .line 2014
    return-void
.end method


# virtual methods
.method public acquireSuspendBlocker()V
    .locals 1

    #@0
    .prologue
    .line 2074
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    #@9
    .line 2073
    return-void
.end method

.method public onDisplayStateChange(I)V
    .locals 3
    .param p1, "state"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 2050
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    #@3
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get7(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    monitor-enter v1

    #@8
    .line 2051
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService$1;->mDisplayState:I

    #@a
    if-eq v0, p1, :cond_1

    #@c
    .line 2052
    iput p1, p0, Lcom/android/server/power/PowerManagerService$1;->mDisplayState:I

    #@e
    .line 2053
    if-ne p1, v2, :cond_2

    #@10
    .line 2054
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    #@12
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_0

    #@18
    .line 2055
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    #@1a
    const/4 v2, 0x0

    #@1b
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->-wrap28(Lcom/android/server/power/PowerManagerService;Z)V

    #@1e
    .line 2057
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    #@20
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get1(Lcom/android/server/power/PowerManagerService;)Z

    #@23
    move-result v0

    #@24
    if-nez v0, :cond_1

    #@26
    .line 2058
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    #@28
    const/4 v2, 0x1

    #@29
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->-wrap27(Lcom/android/server/power/PowerManagerService;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    :cond_1
    :goto_0
    monitor-exit v1

    #@2d
    .line 2046
    return-void

    #@2e
    .line 2061
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    #@30
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get1(Lcom/android/server/power/PowerManagerService;)Z

    #@33
    move-result v0

    #@34
    if-nez v0, :cond_3

    #@36
    .line 2062
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    #@38
    const/4 v2, 0x0

    #@39
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->-wrap27(Lcom/android/server/power/PowerManagerService;Z)V

    #@3c
    .line 2064
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    #@3e
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Z

    #@41
    move-result v0

    #@42
    if-nez v0, :cond_1

    #@44
    .line 2065
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    #@46
    const/4 v2, 0x1

    #@47
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->-wrap28(Lcom/android/server/power/PowerManagerService;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    goto :goto_0

    #@4b
    .line 2050
    :catchall_0
    move-exception v0

    #@4c
    monitor-exit v1

    #@4d
    throw v0
.end method

.method public onProximityNegative()V
    .locals 8

    #@0
    .prologue
    .line 2036
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get7(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v7

    #@6
    monitor-enter v7

    #@7
    .line 2037
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->-set3(Lcom/android/server/power/PowerManagerService;Z)Z

    #@d
    .line 2038
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    #@f
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get3(Lcom/android/server/power/PowerManagerService;)I

    #@12
    move-result v1

    #@13
    or-int/lit16 v1, v1, 0x200

    #@15
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->-set0(Lcom/android/server/power/PowerManagerService;I)I

    #@18
    .line 2039
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    #@1a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1d
    move-result-wide v2

    #@1e
    .line 2040
    const/4 v4, 0x0

    #@1f
    const/4 v5, 0x0

    #@20
    const/16 v6, 0x3e8

    #@22
    .line 2039
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->-wrap7(Lcom/android/server/power/PowerManagerService;JIII)Z

    #@25
    .line 2041
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    #@27
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-wrap34(Lcom/android/server/power/PowerManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    monitor-exit v7

    #@2b
    .line 2035
    return-void

    #@2c
    .line 2036
    :catchall_0
    move-exception v0

    #@2d
    monitor-exit v7

    #@2e
    throw v0
.end method

.method public onProximityPositive()V
    .locals 3

    #@0
    .prologue
    .line 2027
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get7(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 2028
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    #@9
    const/4 v2, 0x1

    #@a
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->-set3(Lcom/android/server/power/PowerManagerService;Z)Z

    #@d
    .line 2029
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    #@f
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get3(Lcom/android/server/power/PowerManagerService;)I

    #@12
    move-result v2

    #@13
    or-int/lit16 v2, v2, 0x200

    #@15
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->-set0(Lcom/android/server/power/PowerManagerService;I)I

    #@18
    .line 2030
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    #@1a
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-wrap34(Lcom/android/server/power/PowerManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    monitor-exit v1

    #@1e
    .line 2026
    return-void

    #@1f
    .line 2027
    :catchall_0
    move-exception v0

    #@20
    monitor-exit v1

    #@21
    throw v0
.end method

.method public onStateChanged()V
    .locals 3

    #@0
    .prologue
    .line 2019
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get7(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 2020
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    #@9
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get3(Lcom/android/server/power/PowerManagerService;)I

    #@c
    move-result v2

    #@d
    or-int/lit8 v2, v2, 0x8

    #@f
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->-set0(Lcom/android/server/power/PowerManagerService;I)I

    #@12
    .line 2021
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    #@14
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-wrap34(Lcom/android/server/power/PowerManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v1

    #@18
    .line 2018
    return-void

    #@19
    .line 2019
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method

.method public releaseSuspendBlocker()V
    .locals 1

    #@0
    .prologue
    .line 2079
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    #@9
    .line 2078
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 2084
    monitor-enter p0

    #@1
    .line 2085
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v1, "state="

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    iget v1, p0, Lcom/android/server/power/PowerManagerService$1;->mDisplayState:I

    #@f
    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result-object v0

    #@1b
    monitor-exit p0

    #@1c
    return-object v0

    #@1d
    .line 2084
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit p0

    #@1f
    throw v0
.end method
