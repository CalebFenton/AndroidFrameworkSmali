.class Lcom/android/server/net/LockdownVpnTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "LockdownVpnTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/LockdownVpnTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/LockdownVpnTracker;


# direct methods
.method constructor <init>(Lcom/android/server/net/LockdownVpnTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/LockdownVpnTracker;

    #@0
    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker$1;->this$0:Lcom/android/server/net/LockdownVpnTracker;

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
    .line 115
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker$1;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/server/net/LockdownVpnTracker;->reset()V

    #@5
    .line 114
    return-void
.end method
