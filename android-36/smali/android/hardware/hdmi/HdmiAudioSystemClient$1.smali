.class Landroid/hardware/hdmi/HdmiAudioSystemClient$1;
.super Ljava/lang/Object;
.source "HdmiAudioSystemClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/hdmi/HdmiAudioSystemClient;->sendReportAudioStatusCecCommand(ZIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/hdmi/HdmiAudioSystemClient;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/hdmi/HdmiAudioSystemClient;)V
    .registers 2
    .param p1, "this$0"    # Landroid/hardware/hdmi/HdmiAudioSystemClient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 108
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient$1;->this$0:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 8

    .line 111
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient$1;->this$0:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    invoke-static {v0}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->-$$Nest$fgetmPendingReportAudioStatus(Landroid/hardware/hdmi/HdmiAudioSystemClient;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_49

    .line 114
    const/4 v0, 0x0

    :try_start_a
    iget-object v2, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient$1;->this$0:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    iget-object v2, v2, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    iget-object v3, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient$1;->this$0:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->getDeviceType()I

    move-result v3

    iget-object v4, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient$1;->this$0:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    invoke-static {v4}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->-$$Nest$fgetmLastVolume(Landroid/hardware/hdmi/HdmiAudioSystemClient;)I

    move-result v4

    iget-object v5, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient$1;->this$0:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    invoke-static {v5}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->-$$Nest$fgetmLastMaxVolume(Landroid/hardware/hdmi/HdmiAudioSystemClient;)I

    move-result v5

    iget-object v6, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient$1;->this$0:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    invoke-static {v6}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->-$$Nest$fgetmLastIsMute(Landroid/hardware/hdmi/HdmiAudioSystemClient;)Z

    move-result v6

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/hardware/hdmi/IHdmiControlService;->reportAudioStatus(IIIZ)V

    .line 116
    iget-object v2, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient$1;->this$0:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    invoke-static {v2}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->-$$Nest$fgetmHandler(Landroid/hardware/hdmi/HdmiAudioSystemClient;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_34} :catch_37
    .catchall {:try_start_a .. :try_end_34} :catchall_35

    goto :goto_3d

    .line 120
    :catchall_35
    move-exception v1

    goto :goto_43

    .line 117
    :catch_37
    move-exception v2

    .line 118
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_38
    iget-object v3, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient$1;->this$0:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    invoke-static {v3, v1}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->-$$Nest$fputmCanSendAudioStatus(Landroid/hardware/hdmi/HdmiAudioSystemClient;Z)V
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_35

    .line 120
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3d
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient$1;->this$0:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    invoke-static {v1, v0}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->-$$Nest$fputmPendingReportAudioStatus(Landroid/hardware/hdmi/HdmiAudioSystemClient;Z)V

    .line 121
    goto :goto_4e

    .line 120
    :goto_43
    iget-object v2, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient$1;->this$0:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    invoke-static {v2, v0}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->-$$Nest$fputmPendingReportAudioStatus(Landroid/hardware/hdmi/HdmiAudioSystemClient;Z)V

    .line 121
    throw v1

    .line 123
    :cond_49
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient$1;->this$0:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    invoke-static {v0, v1}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->-$$Nest$fputmCanSendAudioStatus(Landroid/hardware/hdmi/HdmiAudioSystemClient;Z)V

    .line 125
    :goto_4e
    return-void
.end method
