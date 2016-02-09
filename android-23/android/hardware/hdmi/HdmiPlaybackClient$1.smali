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
.field final synthetic this$0:Landroid/hardware/hdmi/HdmiPlaybackClient;

.field final synthetic val$callback:Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;


# direct methods
.method constructor <init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/hdmi/HdmiPlaybackClient;
    .param p2, "val$callback"    # Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;

    #@0
    .prologue
    .line 121
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiPlaybackClient$1;->this$0:Landroid/hardware/hdmi/HdmiPlaybackClient;

    #@2
    iput-object p2, p0, Landroid/hardware/hdmi/HdmiPlaybackClient$1;->val$callback:Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;

    #@4
    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 1
    .param p1, "result"    # I

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiPlaybackClient$1;->val$callback:Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;

    #@2
    invoke-interface {v0, p1}, Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;->onComplete(I)V

    #@5
    .line 123
    return-void
.end method
