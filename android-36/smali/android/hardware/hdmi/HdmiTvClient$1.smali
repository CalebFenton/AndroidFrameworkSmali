.class Landroid/hardware/hdmi/HdmiTvClient$1;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "HdmiTvClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/hdmi/HdmiTvClient;->getCallbackWrapper(Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;)V
    .registers 2

    .line 96
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiTvClient$1;->val$callback:Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onComplete(I)V
    .registers 3
    .param p1, "result"    # I

    .line 99
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient$1;->val$callback:Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;

    invoke-interface {v0, p1}, Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;->onComplete(I)V

    .line 100
    return-void
.end method
