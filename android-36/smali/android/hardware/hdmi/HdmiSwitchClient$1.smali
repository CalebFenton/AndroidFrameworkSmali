.class Landroid/hardware/hdmi/HdmiSwitchClient$1;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "HdmiSwitchClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/hdmi/HdmiSwitchClient;->getCallbackWrapper(Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;)Landroid/hardware/hdmi/IHdmiControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$listener:Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;)V
    .registers 2

    .line 50
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiSwitchClient$1;->val$listener:Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onComplete(I)V
    .registers 3
    .param p1, "result"    # I

    .line 53
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiSwitchClient$1;->val$listener:Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;

    invoke-interface {v0, p1}, Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;->onSelect(I)V

    .line 54
    return-void
.end method
