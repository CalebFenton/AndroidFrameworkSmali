.class Lcom/android/server/content/SyncManager$SyncAlarmIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncAlarmIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager;

    #@0
    .prologue
    .line 1014
    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncAlarmIntentReceiver;->this$0:Lcom/android/server/content/SyncManager;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncAlarmIntentReceiver;->this$0:Lcom/android/server/content/SyncManager;

    #@2
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-get11(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@9
    .line 1018
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncAlarmIntentReceiver;->this$0:Lcom/android/server/content/SyncManager;

    #@b
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-wrap17(Lcom/android/server/content/SyncManager;)V

    #@e
    .line 1016
    return-void
.end method
