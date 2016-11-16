.class Lcom/android/server/hdmi/DeviceSelectAction$1;
.super Ljava/lang/Object;
.source "DeviceSelectAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/DeviceSelectAction;->queryDevicePowerStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/DeviceSelectAction;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/DeviceSelectAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/DeviceSelectAction;

    #@0
    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/server/hdmi/DeviceSelectAction$1;->this$0:Lcom/android/server/hdmi/DeviceSelectAction;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .locals 2
    .param p1, "error"    # I

    #@0
    .prologue
    .line 98
    if-eqz p1, :cond_0

    #@2
    .line 99
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectAction$1;->this$0:Lcom/android/server/hdmi/DeviceSelectAction;

    #@4
    const/4 v1, 0x7

    #@5
    invoke-static {v0, v1}, Lcom/android/server/hdmi/DeviceSelectAction;->-wrap0(Lcom/android/server/hdmi/DeviceSelectAction;I)V

    #@8
    .line 100
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectAction$1;->this$0:Lcom/android/server/hdmi/DeviceSelectAction;

    #@a
    invoke-virtual {v0}, Lcom/android/server/hdmi/DeviceSelectAction;->finish()V

    #@d
    .line 101
    return-void

    #@e
    .line 97
    :cond_0
    return-void
.end method
