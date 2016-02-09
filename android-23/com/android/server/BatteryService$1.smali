.class Lcom/android/server/BatteryService$1;
.super Landroid/os/UEventObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BatteryService;

    #@0
    .prologue
    .line 702
    iput-object p1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #@2
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    #@0
    .prologue
    .line 705
    const-string/jumbo v1, "1"

    #@3
    const-string/jumbo v2, "SWITCH_STATE"

    #@6
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    const/4 v0, 0x1

    #@11
    .line 706
    .local v0, "invalidCharger":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #@13
    invoke-static {v1}, Lcom/android/server/BatteryService;->-get4(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    monitor-enter v2

    #@18
    .line 707
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #@1a
    invoke-static {v1}, Lcom/android/server/BatteryService;->-get3(Lcom/android/server/BatteryService;)I

    #@1d
    move-result v1

    #@1e
    if-eq v1, v0, :cond_0

    #@20
    .line 708
    iget-object v1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #@22
    invoke-static {v1, v0}, Lcom/android/server/BatteryService;->-set0(Lcom/android/server/BatteryService;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    :cond_0
    monitor-exit v2

    #@26
    .line 704
    return-void

    #@27
    .line 705
    .end local v0    # "invalidCharger":I
    :cond_1
    const/4 v0, 0x0

    #@28
    .restart local v0    # "invalidCharger":I
    goto :goto_0

    #@29
    .line 706
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit v2

    #@2b
    throw v1
.end method
