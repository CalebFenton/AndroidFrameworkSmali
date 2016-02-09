.class Lcom/android/server/MountService$2;
.super Ljava/lang/Object;
.source "MountService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->decryptStorage(Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/MountService;

    #@0
    .prologue
    .line 2379
    iput-object p1, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 2382
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #@2
    invoke-static {v1}, Lcom/android/server/MountService;->-get3(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "cryptfs"

    #@9
    const/4 v3, 0x1

    #@a
    new-array v3, v3, [Ljava/lang/Object;

    #@c
    const-string/jumbo v4, "restart"

    #@f
    const/4 v5, 0x0

    #@10
    aput-object v4, v3, v5

    #@12
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 2380
    :goto_0
    return-void

    #@16
    .line 2383
    :catch_0
    move-exception v0

    #@17
    .line 2384
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v1, "MountService"

    #@1a
    const-string/jumbo v2, "problem executing in background"

    #@1d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    goto :goto_0
.end method
