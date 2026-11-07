.class Landroid/hardware/hdmi/HdmiPlaybackClient$2;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "HdmiPlaybackClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/hdmi/HdmiPlaybackClient;->getCallbackWrapper(Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)V
    .registers 3
    .param p1, "this$0"    # Landroid/hardware/hdmi/HdmiPlaybackClient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 140
    iput-object p2, p0, Landroid/hardware/hdmi/HdmiPlaybackClient$2;->val$callback:Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onComplete(I)V
    .registers 3
    .param p1, "status"    # I

    .line 143
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiPlaybackClient$2;->val$callback:Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;

    invoke-interface {v0, p1}, Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;->onComplete(I)V

    .line 144
    return-void
.end method
