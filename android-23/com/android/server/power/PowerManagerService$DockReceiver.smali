.class final Lcom/android/server/power/PowerManagerService$DockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    #@0
    .prologue
    .line 2774
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$DockReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    #@3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 2777
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-get7(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 2778
    :try_start_0
    const-string/jumbo v1, "android.intent.extra.DOCK_STATE"

    #@a
    .line 2779
    const/4 v3, 0x0

    #@b
    .line 2778
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@e
    move-result v0

    #@f
    .line 2780
    .local v0, "dockState":I
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    #@11
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-get5(Lcom/android/server/power/PowerManagerService;)I

    #@14
    move-result v1

    #@15
    if-eq v1, v0, :cond_0

    #@17
    .line 2781
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    #@19
    invoke-static {v1, v0}, Lcom/android/server/power/PowerManagerService;->-set1(Lcom/android/server/power/PowerManagerService;I)I

    #@1c
    .line 2782
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    #@1e
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-get3(Lcom/android/server/power/PowerManagerService;)I

    #@21
    move-result v3

    #@22
    or-int/lit16 v3, v3, 0x400

    #@24
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->-set0(Lcom/android/server/power/PowerManagerService;I)I

    #@27
    .line 2783
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    #@29
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-wrap34(Lcom/android/server/power/PowerManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    :cond_0
    monitor-exit v2

    #@2d
    .line 2776
    return-void

    #@2e
    .line 2777
    .end local v0    # "dockState":I
    :catchall_0
    move-exception v1

    #@2f
    monitor-exit v2

    #@30
    throw v1
.end method
