.class Landroid/hardware/hdmi/HdmiPlaybackClient$1;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "HdmiPlaybackClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/hdmi/HdmiPlaybackClient;->getCallbackWrapper(Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;)V
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

    .line 128
    iput-object p2, p0, Landroid/hardware/hdmi/HdmiPlaybackClient$1;->val$callback:Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onComplete(I)V
    .registers 3
    .param p1, "result"    # I

    .line 131
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiPlaybackClient$1;->val$callback:Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;

    invoke-interface {v0, p1}, Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;->onComplete(I)V

    .line 132
    return-void
.end method
