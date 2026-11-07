.class final Landroid/hardware/hdmi/HdmiControlManager$ClientHotplugEventListener;
.super Ljava/lang/Object;
.source "HdmiControlManager.java"

# interfaces
.implements Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClientHotplugEventListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/hdmi/HdmiControlManager;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/hdmi/HdmiControlManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1210
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiControlManager$ClientHotplugEventListener;->this$0:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/hdmi/HdmiControlManager;Landroid/hardware/hdmi/HdmiControlManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiControlManager$ClientHotplugEventListener;-><init>(Landroid/hardware/hdmi/HdmiControlManager;)V

    return-void
.end method


# virtual methods
.method public whitelist onReceived(Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/hardware/hdmi/HdmiHotplugEvent;

    .line 1214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1216
    .local v0, "ports":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiPortInfo;>;"
    :try_start_5
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiControlManager$ClientHotplugEventListener;->this$0:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-static {v1}, Landroid/hardware/hdmi/HdmiControlManager;->-$$Nest$fgetmService(Landroid/hardware/hdmi/HdmiControlManager;)Landroid/hardware/hdmi/IHdmiControlService;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/hdmi/IHdmiControlService;->getPortInfo()Ljava/util/List;

    move-result-object v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_66

    .line 1219
    .end local v0    # "ports":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiPortInfo;>;"
    .local v1, "ports":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiPortInfo;>;"
    nop

    .line 1220
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find port info, not updating connected status. Hotplug event:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HdmiControlManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    return-void

    .line 1226
    :cond_2f
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiPortInfo;

    .line 1227
    .local v2, "port":Landroid/hardware/hdmi/HdmiPortInfo;
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiHotplugEvent;->getPort()I

    move-result v4

    if-ne v3, v4, :cond_64

    .line 1228
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiPortInfo;->getType()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_65

    .line 1229
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager$ClientHotplugEventListener;->this$0:Landroid/hardware/hdmi/HdmiControlManager;

    .line 1230
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiHotplugEvent;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 1231
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    move-result v3

    goto :goto_60

    .line 1232
    :cond_5d
    const v3, 0xffff

    .line 1229
    :goto_60
    invoke-static {v0, v3}, Landroid/hardware/hdmi/HdmiControlManager;->-$$Nest$msetLocalPhysicalAddress(Landroid/hardware/hdmi/HdmiControlManager;I)V

    goto :goto_65

    .line 1236
    .end local v2    # "port":Landroid/hardware/hdmi/HdmiPortInfo;
    :cond_64
    goto :goto_33

    .line 1237
    :cond_65
    :goto_65
    return-void

    .line 1217
    .end local v1    # "ports":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiPortInfo;>;"
    .restart local v0    # "ports":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiPortInfo;>;"
    :catch_66
    move-exception v1

    .line 1218
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
