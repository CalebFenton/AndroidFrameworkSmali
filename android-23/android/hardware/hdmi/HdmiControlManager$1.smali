.class Landroid/hardware/hdmi/HdmiControlManager$1;
.super Landroid/hardware/hdmi/IHdmiHotplugEventListener$Stub;
.source "HdmiControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/hdmi/HdmiControlManager;->getHotplugEventListenerWrapper(Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/hdmi/HdmiControlManager;

.field final synthetic val$listener:Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;


# direct methods
.method constructor <init>(Landroid/hardware/hdmi/HdmiControlManager;Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/hdmi/HdmiControlManager;
    .param p2, "val$listener"    # Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;

    #@0
    .prologue
    .line 433
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiControlManager$1;->this$0:Landroid/hardware/hdmi/HdmiControlManager;

    #@2
    iput-object p2, p0, Landroid/hardware/hdmi/HdmiControlManager$1;->val$listener:Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;

    #@4
    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiHotplugEventListener$Stub;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onReceived(Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/hardware/hdmi/HdmiHotplugEvent;

    #@0
    .prologue
    .line 436
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager$1;->val$listener:Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;

    #@2
    invoke-interface {v0, p1}, Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;->onReceived(Landroid/hardware/hdmi/HdmiHotplugEvent;)V

    #@5
    .line 435
    return-void
.end method
