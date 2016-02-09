.class Landroid/net/DhcpStateMachine$1;
.super Landroid/content/BroadcastReceiver;
.source "DhcpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/DhcpStateMachine;-><init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/DhcpStateMachine;


# direct methods
.method constructor <init>(Landroid/net/DhcpStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/DhcpStateMachine;

    #@0
    .prologue
    .line 126
    iput-object p1, p0, Landroid/net/DhcpStateMachine$1;->this$0:Landroid/net/DhcpStateMachine;

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
    .line 132
    iget-object v0, p0, Landroid/net/DhcpStateMachine$1;->this$0:Landroid/net/DhcpStateMachine;

    #@2
    invoke-static {v0}, Landroid/net/DhcpStateMachine;->-get4(Landroid/net/DhcpStateMachine;)Landroid/os/PowerManager$WakeLock;

    #@5
    move-result-object v0

    #@6
    const-wide/32 v2, 0x9c40

    #@9
    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    #@c
    .line 133
    iget-object v0, p0, Landroid/net/DhcpStateMachine$1;->this$0:Landroid/net/DhcpStateMachine;

    #@e
    const v1, 0x30003

    #@11
    invoke-virtual {v0, v1}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    #@14
    .line 128
    return-void
.end method
