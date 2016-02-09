.class Lcom/android/server/wifi/WifiStateMachine$6;
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
    .line 1199
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$6;->this$0:Lcom/android/server/wifi/WifiStateMachine;

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
    const/4 v3, 0x0

    #@1
    .line 1202
    const-string/jumbo v1, "DelayedStopCounter"

    #@4
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    .line 1203
    .local v0, "counter":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$6;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a
    const v2, 0x20012

    #@d
    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    #@10
    .line 1201
    return-void
.end method
