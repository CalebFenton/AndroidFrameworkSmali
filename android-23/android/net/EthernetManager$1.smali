.class Landroid/net/EthernetManager$1;
.super Landroid/os/Handler;
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
    .line 40
    iput-object p1, p0, Landroid/net/EthernetManager$1;->this$0:Landroid/net/EthernetManager;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 43
    iget v3, p1, Landroid/os/Message;->what:I

    #@2
    const/16 v4, 0x3e8

    #@4
    if-ne v3, v4, :cond_1

    #@6
    .line 44
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@8
    const/4 v4, 0x1

    #@9
    if-ne v3, v4, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    .line 45
    .local v0, "isAvailable":Z
    :goto_0
    iget-object v3, p0, Landroid/net/EthernetManager$1;->this$0:Landroid/net/EthernetManager;

    #@e
    invoke-static {v3}, Landroid/net/EthernetManager;->-get1(Landroid/net/EthernetManager;)Ljava/util/ArrayList;

    #@11
    move-result-object v3

    #@12
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v2

    #@16
    .local v2, "listener$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_1

    #@1c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Landroid/net/EthernetManager$Listener;

    #@22
    .line 46
    .local v1, "listener":Landroid/net/EthernetManager$Listener;
    invoke-interface {v1, v0}, Landroid/net/EthernetManager$Listener;->onAvailabilityChanged(Z)V

    #@25
    goto :goto_1

    #@26
    .line 44
    .end local v0    # "isAvailable":Z
    .end local v1    # "listener":Landroid/net/EthernetManager$Listener;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    const/4 v0, 0x0

    #@27
    .restart local v0    # "isAvailable":Z
    goto :goto_0

    #@28
    .line 42
    .end local v0    # "isAvailable":Z
    :cond_1
    return-void
.end method
