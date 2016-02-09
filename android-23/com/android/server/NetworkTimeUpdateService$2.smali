.class Lcom/android/server/NetworkTimeUpdateService$2;
.super Landroid/content/BroadcastReceiver;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkTimeUpdateService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkTimeUpdateService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NetworkTimeUpdateService;

    #@0
    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$2;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 248
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 249
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    #@7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 251
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService$2;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    #@f
    invoke-static {v1}, Lcom/android/server/NetworkTimeUpdateService;->-get0(Lcom/android/server/NetworkTimeUpdateService;)Landroid/os/Handler;

    #@12
    move-result-object v1

    #@13
    const/4 v2, 0x3

    #@14
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@1b
    .line 247
    :cond_0
    return-void
.end method
