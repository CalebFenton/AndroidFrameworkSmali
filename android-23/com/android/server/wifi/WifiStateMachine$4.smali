.class Lcom/android/server/wifi/WifiStateMachine$4;
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
    .line 1169
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$4;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1172
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$4;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    .line 1173
    sget v1, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    #@4
    const-string/jumbo v2, "pno alarm"

    #@7
    .line 1172
    const v3, 0x2009a

    #@a
    const/4 v4, 0x0

    #@b
    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@e
    .line 1174
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 1175
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$4;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@16
    const-string/jumbo v1, "PNO START ALARM sent"

    #@19
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@1c
    .line 1171
    :cond_0
    return-void
.end method
