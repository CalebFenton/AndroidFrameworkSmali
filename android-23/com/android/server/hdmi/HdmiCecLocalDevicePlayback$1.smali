.class Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$1;
.super Ljava/lang/Object;
.source "HdmiCecLocalDevicePlayback.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    #@0
    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 0

    #@0
    .prologue
    .line 211
    return-void
.end method

.method public isHeld()Z
    .locals 1

    #@0
    .prologue
    .line 215
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public release()V
    .locals 0

    #@0
    .prologue
    .line 213
    return-void
.end method
