.class Lcom/android/server/NetworkTimeUpdateService$1;
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
    .line 230
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$1;->this$0:Lcom/android/server/NetworkTimeUpdateService;

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
    .line 234
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 235
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.NETWORK_SET_TIME"

    #@7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 236
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService$1;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    #@f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@12
    move-result-wide v2

    #@13
    invoke-static {v1, v2, v3}, Lcom/android/server/NetworkTimeUpdateService;->-set0(Lcom/android/server/NetworkTimeUpdateService;J)J

    #@16
    .line 233
    :cond_0
    :goto_0
    return-void

    #@17
    .line 237
    :cond_1
    const-string/jumbo v1, "android.intent.action.NETWORK_SET_TIMEZONE"

    #@1a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_0

    #@20
    .line 238
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService$1;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    #@22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@25
    move-result-wide v2

    #@26
    invoke-static {v1, v2, v3}, Lcom/android/server/NetworkTimeUpdateService;->-set1(Lcom/android/server/NetworkTimeUpdateService;J)J

    #@29
    goto :goto_0
.end method
