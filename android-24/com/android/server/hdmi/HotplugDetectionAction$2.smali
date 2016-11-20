.class Lcom/android/server/hdmi/HotplugDetectionAction$2;
.super Ljava/lang/Object;
.source "HotplugDetectionAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HotplugDetectionAction;->pollAudioSystem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HotplugDetectionAction;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HotplugDetectionAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HotplugDetectionAction;

    #@0
    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/server/hdmi/HotplugDetectionAction$2;->this$0:Lcom/android/server/hdmi/HotplugDetectionAction;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onPollingFinished(Ljava/util/List;)V
    .locals 2
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
    .line 144
    .local p1, "ackedAddress":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction$2;->this$0:Lcom/android/server/hdmi/HotplugDetectionAction;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-static {v0, p1, v1}, Lcom/android/server/hdmi/HotplugDetectionAction;->-wrap0(Lcom/android/server/hdmi/HotplugDetectionAction;Ljava/util/List;Z)V

    #@6
    .line 143
    return-void
.end method
