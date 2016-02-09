.class Lcom/android/server/VibratorService$2;
.super Landroid/content/BroadcastReceiver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/VibratorService;

    #@0
    .prologue
    .line 719
    iput-object p1, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 722
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    #@7
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_4

    #@d
    .line 723
    iget-object v2, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    #@f
    invoke-static {v2}, Lcom/android/server/VibratorService;->-get2(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    #@12
    move-result-object v3

    #@13
    monitor-enter v3

    #@14
    .line 729
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    #@16
    invoke-static {v2}, Lcom/android/server/VibratorService;->-get0(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    #@19
    move-result-object v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 730
    iget-object v2, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    #@1e
    invoke-static {v2}, Lcom/android/server/VibratorService;->-get0(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Lcom/android/server/VibratorService$Vibration;->isSystemHapticFeedback()Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_2

    #@28
    .line 735
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    #@2a
    invoke-static {v2}, Lcom/android/server/VibratorService;->-get2(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v0

    #@32
    .line 736
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/VibratorService$Vibration;>;"
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v2

    #@36
    if-eqz v2, :cond_3

    #@38
    .line 737
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v1

    #@3c
    check-cast v1, Lcom/android/server/VibratorService$Vibration;

    #@3e
    .line 738
    .local v1, "vibration":Lcom/android/server/VibratorService$Vibration;
    iget-object v2, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    #@40
    invoke-static {v2}, Lcom/android/server/VibratorService;->-get0(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    #@43
    move-result-object v2

    #@44
    if-eq v1, v2, :cond_1

    #@46
    .line 739
    iget-object v2, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    #@48
    invoke-static {v2, v1}, Lcom/android/server/VibratorService;->-wrap3(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    #@4b
    .line 740
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4e
    goto :goto_1

    #@4f
    .line 723
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/VibratorService$Vibration;>;"
    .end local v1    # "vibration":Lcom/android/server/VibratorService$Vibration;
    :catchall_0
    move-exception v2

    #@50
    monitor-exit v3

    #@51
    throw v2

    #@52
    .line 731
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    #@54
    invoke-static {v2}, Lcom/android/server/VibratorService;->-wrap0(Lcom/android/server/VibratorService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    goto :goto_0

    #@58
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/VibratorService$Vibration;>;"
    :cond_3
    monitor-exit v3

    #@59
    .line 721
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/VibratorService$Vibration;>;"
    :cond_4
    return-void
.end method
