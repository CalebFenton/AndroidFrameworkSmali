.class Lcom/android/server/wifi/WifiStateMachine$7;
.super Landroid/database/ContentObserver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiTrafficPoller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1210
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$7;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1213
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$7;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@6
    move-result-object v1

    #@7
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$7;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get20(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@10
    move-result-object v2

    #@11
    .line 1214
    const-string/jumbo v3, "wifi_suspend_optimizations_enabled"

    #@14
    .line 1213
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@17
    move-result v2

    #@18
    if-ne v2, v0, :cond_0

    #@1a
    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@1d
    .line 1212
    return-void

    #@1e
    .line 1213
    :cond_0
    const/4 v0, 0x0

    #@1f
    goto :goto_0
.end method
