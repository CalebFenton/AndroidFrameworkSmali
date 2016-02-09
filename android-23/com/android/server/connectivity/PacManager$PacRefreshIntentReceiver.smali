.class Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PacManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/PacManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PacRefreshIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/PacManager;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PacManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/PacManager;

    #@0
    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;->this$0:Lcom/android/server/connectivity/PacManager;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 128
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;->this$0:Lcom/android/server/connectivity/PacManager;

    #@6
    invoke-static {v1}, Lcom/android/server/connectivity/PacManager;->-get2(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Runnable;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@d
    .line 127
    return-void
.end method
