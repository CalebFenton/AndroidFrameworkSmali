.class Landroid/net/util/AvoidBadWifiTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "AvoidBadWifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/util/AvoidBadWifiTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/util/AvoidBadWifiTracker;


# direct methods
.method constructor <init>(Landroid/net/util/AvoidBadWifiTracker;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/util/AvoidBadWifiTracker;

    #@0
    .prologue
    .line 75
    iput-object p1, p0, Landroid/net/util/AvoidBadWifiTracker$1;->this$0:Landroid/net/util/AvoidBadWifiTracker;

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
    .line 77
    iget-object v0, p0, Landroid/net/util/AvoidBadWifiTracker$1;->this$0:Landroid/net/util/AvoidBadWifiTracker;

    #@2
    invoke-virtual {v0}, Landroid/net/util/AvoidBadWifiTracker;->reevaluate()V

    #@5
    .line 76
    return-void
.end method
