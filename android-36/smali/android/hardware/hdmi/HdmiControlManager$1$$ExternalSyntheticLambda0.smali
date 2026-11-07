.class public final synthetic Landroid/hardware/hdmi/HdmiControlManager$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;

.field public final synthetic blacklist f$1:Landroid/hardware/hdmi/HdmiHotplugEvent;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/hdmi/HdmiControlManager$1$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;

    iput-object p2, p0, Landroid/hardware/hdmi/HdmiControlManager$1$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/hdmi/HdmiHotplugEvent;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager$1$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;

    iget-object v1, p0, Landroid/hardware/hdmi/HdmiControlManager$1$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/hdmi/HdmiHotplugEvent;

    invoke-static {v0, v1}, Landroid/hardware/hdmi/HdmiControlManager$1;->lambda$onReceived$0(Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V

    return-void
.end method
