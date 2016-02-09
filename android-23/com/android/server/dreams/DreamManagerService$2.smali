.class Lcom/android/server/dreams/DreamManagerService$2;
.super Ljava/lang/Object;
.source "DreamManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/dreams/DreamManagerService;

    #@0
    .prologue
    .line 643
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$2;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$2;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->-get5(Lcom/android/server/dreams/DreamManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 648
    :try_start_0
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$2;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@9
    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->-get3(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/ComponentName;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_0

    #@f
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$2;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@11
    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->-get2(Lcom/android/server/dreams/DreamManagerService;)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 649
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$2;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@19
    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->-get3(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/ComponentName;

    #@1c
    move-result-object v0

    #@1d
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$2;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@1f
    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->-wrap2(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/ComponentName;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_1

    #@29
    :cond_0
    :goto_0
    monitor-exit v1

    #@2a
    .line 645
    return-void

    #@2b
    .line 651
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$2;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@2d
    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->-get6(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/PowerManager;

    #@30
    move-result-object v0

    #@31
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@34
    move-result-wide v2

    #@35
    .line 652
    const-string/jumbo v4, "android.server.dreams:SYSPROP"

    #@38
    .line 651
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 647
    :catchall_0
    move-exception v0

    #@3d
    monitor-exit v1

    #@3e
    throw v0
.end method
