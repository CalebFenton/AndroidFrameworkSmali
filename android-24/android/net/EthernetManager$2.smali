.class Landroid/net/EthernetManager$2;
.super Landroid/net/IEthernetServiceListener$Stub;
.source "EthernetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/EthernetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/EthernetManager;


# direct methods
.method constructor <init>(Landroid/net/EthernetManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/EthernetManager;

    #@0
    .prologue
    .line 53
    iput-object p1, p0, Landroid/net/EthernetManager$2;->this$0:Landroid/net/EthernetManager;

    #@2
    invoke-direct {p0}, Landroid/net/IEthernetServiceListener$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAvailabilityChanged(Z)V
    .locals 5
    .param p1, "isAvailable"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 56
    iget-object v0, p0, Landroid/net/EthernetManager$2;->this$0:Landroid/net/EthernetManager;

    #@3
    invoke-static {v0}, Landroid/net/EthernetManager;->-get0(Landroid/net/EthernetManager;)Landroid/os/Handler;

    #@6
    move-result-object v2

    #@7
    .line 57
    if-eqz p1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    const/16 v3, 0x3e8

    #@c
    const/4 v4, 0x0

    #@d
    .line 56
    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@14
    .line 55
    return-void

    #@15
    :cond_0
    move v0, v1

    #@16
    .line 57
    goto :goto_0
.end method
