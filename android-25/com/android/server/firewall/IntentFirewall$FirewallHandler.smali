.class final Lcom/android/server/firewall/IntentFirewall$FirewallHandler;
.super Landroid/os/Handler;
.source "IntentFirewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/IntentFirewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FirewallHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/firewall/IntentFirewall;


# direct methods
.method public constructor <init>(Lcom/android/server/firewall/IntentFirewall;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/firewall/IntentFirewall;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/server/firewall/IntentFirewall$FirewallHandler;->this$0:Lcom/android/server/firewall/IntentFirewall;

    #@2
    .line 543
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 542
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall$FirewallHandler;->this$0:Lcom/android/server/firewall/IntentFirewall;

    #@2
    invoke-static {}, Lcom/android/server/firewall/IntentFirewall;->getRulesDir()Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    invoke-static {v0, v1}, Lcom/android/server/firewall/IntentFirewall;->-wrap0(Lcom/android/server/firewall/IntentFirewall;Ljava/io/File;)V

    #@9
    .line 547
    return-void
.end method
