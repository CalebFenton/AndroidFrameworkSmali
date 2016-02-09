.class Landroid/net/dhcp/DhcpClient$1;
.super Landroid/content/BroadcastReceiver;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/dhcp/DhcpClient;->createStateMachineCommandIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;

.field final synthetic val$cmd:I


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;
    .param p2, "val$cmd"    # I

    #@0
    .prologue
    .line 255
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$1;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    iput p2, p0, Landroid/net/dhcp/DhcpClient$1;->val$cmd:I

    #@4
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 258
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$1;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    iget v1, p0, Landroid/net/dhcp/DhcpClient$1;->val$cmd:I

    #@4
    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    #@7
    .line 257
    return-void
.end method
