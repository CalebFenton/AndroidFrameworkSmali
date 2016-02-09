.class Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;
.super Ljava/lang/Object;
.source "HdmiCecLocalDevicePlayback.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemWakeLock"
.end annotation


# instance fields
.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    #@0
    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 392
    iget-object v0, p1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@7
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPowerManager()Landroid/os/PowerManager;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, "HdmiCecLocalDevicePlayback"

    #@e
    const/4 v2, 0x1

    #@f
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@15
    .line 393
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@17
    const/4 v1, 0x0

    #@18
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@1b
    .line 391
    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 4

    #@0
    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@5
    .line 399
    const-string/jumbo v0, "active source: %b. Wake lock acquired"

    #@8
    const/4 v1, 0x1

    #@9
    new-array v1, v1, [Ljava/lang/Object;

    #@b
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    #@d
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->-get0(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)Z

    #@10
    move-result v2

    #@11
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@14
    move-result-object v2

    #@15
    const/4 v3, 0x0

    #@16
    aput-object v2, v1, v3

    #@18
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    #@1b
    .line 397
    return-void
.end method

.method public isHeld()Z
    .locals 1

    #@0
    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public release()V
    .locals 2

    #@0
    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@5
    .line 405
    const-string/jumbo v0, "Wake lock released"

    #@8
    const/4 v1, 0x0

    #@9
    new-array v1, v1, [Ljava/lang/Object;

    #@b
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    #@e
    .line 403
    return-void
.end method
