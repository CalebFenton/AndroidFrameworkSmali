.class Lcom/android/server/hdmi/HdmiControlService$2;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field final synthetic val$listener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

.field final synthetic val$record:Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p2, "val$record"    # Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;
    .param p3, "val$listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    #@0
    .prologue
    .line 1699
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$2;->val$record:Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    #@4
    iput-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$2;->val$listener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 1702
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiControlService;->-get10(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    #@5
    move-result-object v4

    #@6
    monitor-enter v4

    #@7
    .line 1703
    :try_start_0
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@9
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiControlService;->-get7(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;

    #@c
    move-result-object v3

    #@d
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService$2;->val$record:Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    #@f
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v3

    #@13
    if-nez v3, :cond_0

    #@15
    monitor-exit v4

    #@16
    return-void

    #@17
    :cond_0
    monitor-exit v4

    #@18
    .line 1705
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@1a
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiControlService;->-get13(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;

    #@1d
    move-result-object v3

    #@1e
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v2

    #@22
    .local v2, "port$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_1

    #@28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    check-cast v1, Landroid/hardware/hdmi/HdmiPortInfo;

    #@2e
    .line 1706
    .local v1, "port":Landroid/hardware/hdmi/HdmiPortInfo;
    new-instance v0, Landroid/hardware/hdmi/HdmiHotplugEvent;

    #@30
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    #@33
    move-result v3

    #@34
    .line 1707
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@36
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiControlService;->-get3(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    #@3d
    move-result v5

    #@3e
    invoke-virtual {v4, v5}, Lcom/android/server/hdmi/HdmiCecController;->isConnected(I)Z

    #@41
    move-result v4

    #@42
    .line 1706
    invoke-direct {v0, v3, v4}, Landroid/hardware/hdmi/HdmiHotplugEvent;-><init>(IZ)V

    #@45
    .line 1708
    .local v0, "event":Landroid/hardware/hdmi/HdmiHotplugEvent;
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@47
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiControlService;->-get10(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    #@4a
    move-result-object v4

    #@4b
    monitor-enter v4

    #@4c
    .line 1709
    :try_start_1
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@4e
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService$2;->val$listener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    #@50
    invoke-static {v3, v5, v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap14(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@53
    monitor-exit v4

    #@54
    goto :goto_0

    #@55
    .line 1702
    .end local v0    # "event":Landroid/hardware/hdmi/HdmiHotplugEvent;
    .end local v1    # "port":Landroid/hardware/hdmi/HdmiPortInfo;
    .end local v2    # "port$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@56
    monitor-exit v4

    #@57
    throw v3

    #@58
    .line 1708
    .restart local v0    # "event":Landroid/hardware/hdmi/HdmiHotplugEvent;
    .restart local v1    # "port":Landroid/hardware/hdmi/HdmiPortInfo;
    .restart local v2    # "port$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v3

    #@59
    monitor-exit v4

    #@5a
    throw v3

    #@5b
    .line 1701
    .end local v0    # "event":Landroid/hardware/hdmi/HdmiHotplugEvent;
    .end local v1    # "port":Landroid/hardware/hdmi/HdmiPortInfo;
    :cond_1
    return-void
.end method
