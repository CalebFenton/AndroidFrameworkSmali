.class Lcom/android/server/hdmi/DeviceDiscoveryAction$1;
.super Ljava/lang/Object;
.source "DeviceDiscoveryAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/DeviceDiscoveryAction;->start()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/DeviceDiscoveryAction;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction;

    #@0
    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$1;->this$0:Lcom/android/server/hdmi/DeviceDiscoveryAction;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onPollingFinished(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 111
    .local p1, "ackedAddress":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 112
    const-string/jumbo v0, "DeviceDiscoveryAction"

    #@9
    const-string/jumbo v1, "No device is detected."

    #@c
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 113
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$1;->this$0:Lcom/android/server/hdmi/DeviceDiscoveryAction;

    #@11
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->-wrap2(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V

    #@14
    .line 114
    return-void

    #@15
    .line 117
    :cond_0
    const-string/jumbo v0, "DeviceDiscoveryAction"

    #@18
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v2, "Device detected: "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 118
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$1;->this$0:Lcom/android/server/hdmi/DeviceDiscoveryAction;

    #@31
    invoke-static {v0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->-wrap0(Lcom/android/server/hdmi/DeviceDiscoveryAction;Ljava/util/List;)V

    #@34
    .line 119
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$1;->this$0:Lcom/android/server/hdmi/DeviceDiscoveryAction;

    #@36
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->-wrap1(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V

    #@39
    .line 110
    return-void
.end method
