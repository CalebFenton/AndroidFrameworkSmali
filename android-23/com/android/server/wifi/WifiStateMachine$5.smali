.class Lcom/android/server/wifi/WifiStateMachine$5;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 1185
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$5;->this$0:Lcom/android/server/wifi/WifiStateMachine;

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
    const v3, 0x2005f

    #@3
    .line 1188
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 1190
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 1191
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$5;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12
    const/4 v2, 0x1

    #@13
    invoke-virtual {v1, v3, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    #@16
    .line 1187
    :cond_0
    :goto_0
    return-void

    #@17
    .line 1192
    :cond_1
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_0

    #@20
    .line 1193
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$5;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@22
    const/4 v2, 0x0

    #@23
    invoke-virtual {v1, v3, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    #@26
    goto :goto_0
.end method
