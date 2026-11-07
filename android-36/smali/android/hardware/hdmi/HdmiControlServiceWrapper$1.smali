.class Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;
.super Landroid/hardware/hdmi/IHdmiControlService$Stub;
.source "HdmiControlServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiControlServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/hdmi/HdmiControlServiceWrapper;)V
    .registers 2
    .param p1, "this$0"    # Landroid/hardware/hdmi/HdmiControlServiceWrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 52
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;

    .line 310
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->addCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V

    .line 311
    return-void
.end method

.method public blacklist addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    .line 107
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    .line 108
    return-void
.end method

.method public blacklist addHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;

    .line 288
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->addHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V

    .line 289
    return-void
.end method

.method public blacklist addHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    .line 86
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->addHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V

    .line 87
    return-void
.end method

.method public blacklist addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    .line 267
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V

    .line 268
    return-void
.end method

.method public blacklist addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .line 97
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    .line 98
    return-void
.end method

.method public blacklist addSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    .line 157
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->addSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    .line 158
    return-void
.end method

.method public blacklist addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V
    .registers 4
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    .param p2, "vendorId"    # I

    .line 225
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    .line 226
    return-void
.end method

.method public blacklist askRemoteDeviceToBecomeActiveSource(I)V
    .registers 3
    .param p1, "physicalAddress"    # I

    .line 213
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->askRemoteDeviceToBecomeActiveSource(I)V

    .line 214
    return-void
.end method

.method public blacklist canChangeSystemAudioMode()Z
    .registers 2

    .line 137
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->canChangeSystemAudioMode()Z

    move-result v0

    return v0
.end method

.method public blacklist clearTimerRecording(II[B)V
    .registers 5
    .param p1, "recorderAddress"    # I
    .param p2, "sourceType"    # I
    .param p3, "recordSource"    # [B

    .line 256
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->clearTimerRecording(II[B)V

    .line 258
    return-void
.end method

.method public blacklist deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 4
    .param p1, "deviceId"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 112
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 113
    return-void
.end method

.method public blacklist getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 2

    .line 61
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAllowedCecSettingIntValues(Ljava/lang/String;)[I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 331
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->getAllowedCecSettingIntValues(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAllowedCecSettingStringValues(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->getAllowedCecSettingStringValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCecSettingIntValue(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 346
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->getCecSettingIntValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getCecSettingStringValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 336
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->getCecSettingStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDeviceList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->getDeviceList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInputDevices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->getInputDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMessageHistorySize()I
    .registers 2

    .line 299
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->getMessageHistorySize()I

    move-result v0

    return v0
.end method

.method public blacklist getPhysicalAddress()I
    .registers 2

    .line 147
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->getPhysicalAddress()I

    move-result v0

    return v0
.end method

.method public blacklist getPortInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->getPortInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSupportedTypes()[I
    .registers 2

    .line 56
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->getSupportedTypes()[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSystemAudioMode()Z
    .registers 2

    .line 142
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->getSystemAudioMode()Z

    move-result v0

    return v0
.end method

.method public blacklist getUserCecSettings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->getUserCecSettings()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 66
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 67
    return-void
.end method

.method public blacklist portSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 4
    .param p1, "portId"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 117
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->portSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 118
    return-void
.end method

.method public blacklist powerOffRemoteDevice(II)V
    .registers 4
    .param p1, "logicalAddress"    # I
    .param p2, "powerStatus"    # I

    .line 203
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->powerOffRemoteDevice(II)V

    .line 204
    return-void
.end method

.method public blacklist powerOnRemoteDevice(II)V
    .registers 4
    .param p1, "logicalAddress"    # I
    .param p2, "powerStatus"    # I

    .line 208
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->powerOnRemoteDevice(II)V

    .line 209
    return-void
.end method

.method public blacklist queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 81
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 82
    return-void
.end method

.method public blacklist removeCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;

    .line 316
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->removeCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V

    .line 317
    return-void
.end method

.method public blacklist removeHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;

    .line 294
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->removeHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V

    .line 295
    return-void
.end method

.method public blacklist removeHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    .line 92
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->removeHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V

    .line 93
    return-void
.end method

.method public blacklist removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .line 102
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    .line 103
    return-void
.end method

.method public blacklist removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    .line 163
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    .line 164
    return-void
.end method

.method public blacklist reportAudioStatus(IIIZ)V
    .registers 6
    .param p1, "deviceType"    # I
    .param p2, "volume"    # I
    .param p3, "maxVolume"    # I
    .param p4, "isMute"    # Z

    .line 277
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->reportAudioStatus(IIIZ)V

    .line 278
    return-void
.end method

.method public blacklist sendKeyEvent(IIZ)V
    .registers 5
    .param p1, "deviceType"    # I
    .param p2, "keyCode"    # I
    .param p3, "isPressed"    # Z

    .line 122
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->sendKeyEvent(IIZ)V

    .line 123
    return-void
.end method

.method public blacklist sendMhlVendorCommand(III[B)V
    .registers 6
    .param p1, "portId"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "data"    # [B

    .line 262
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->sendMhlVendorCommand(III[B)V

    .line 263
    return-void
.end method

.method public blacklist sendStandby(II)V
    .registers 4
    .param p1, "deviceType"    # I
    .param p2, "deviceId"    # I

    .line 230
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->sendStandby(II)V

    .line 231
    return-void
.end method

.method public blacklist sendVendorCommand(II[BZ)V
    .registers 6
    .param p1, "deviceType"    # I
    .param p2, "targetAddress"    # I
    .param p3, "params"    # [B
    .param p4, "hasVendorId"    # Z

    .line 219
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->sendVendorCommand(II[BZ)V

    .line 221
    return-void
.end method

.method public blacklist sendVolumeKeyEvent(IIZ)V
    .registers 5
    .param p1, "deviceType"    # I
    .param p2, "keyCode"    # I
    .param p3, "isPressed"    # Z

    .line 127
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->sendVolumeKeyEvent(IIZ)V

    .line 128
    return-void
.end method

.method public blacklist setArcMode(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 168
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setArcMode(Z)V

    .line 169
    return-void
.end method

.method public blacklist setCecSettingIntValue(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 351
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setCecSettingIntValue(Ljava/lang/String;I)V

    .line 352
    return-void
.end method

.method public blacklist setCecSettingStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 341
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setCecSettingStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public blacklist setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V
    .registers 3
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiRecordListener;

    .line 235
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V

    .line 236
    return-void
.end method

.method public blacklist setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiInputChangeListener;

    .line 188
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V

    .line 189
    return-void
.end method

.method public blacklist setMessageHistorySize(I)Z
    .registers 3
    .param p1, "newSize"    # I

    .line 304
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setMessageHistorySize(I)Z

    move-result v0

    return v0
.end method

.method public blacklist setProhibitMode(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 173
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setProhibitMode(Z)V

    .line 174
    return-void
.end method

.method public blacklist setStandbyMode(Z)V
    .registers 3
    .param p1, "isStandbyModeOn"    # Z

    .line 272
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setStandbyMode(Z)V

    .line 273
    return-void
.end method

.method public blacklist setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 152
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 153
    return-void
.end method

.method public blacklist setSystemAudioModeOnForAudioOnlySource()V
    .registers 2

    .line 282
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setSystemAudioModeOnForAudioOnlySource()V

    .line 283
    return-void
.end method

.method public blacklist setSystemAudioMute(Z)V
    .registers 3
    .param p1, "mute"    # Z

    .line 183
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setSystemAudioMute(Z)V

    .line 184
    return-void
.end method

.method public blacklist setSystemAudioVolume(III)V
    .registers 5
    .param p1, "oldIndex"    # I
    .param p2, "newIndex"    # I
    .param p3, "maxIndex"    # I

    .line 178
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setSystemAudioVolume(III)V

    .line 179
    return-void
.end method

.method public blacklist shouldHandleTvPowerKey()Z
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->shouldHandleTvPowerKey()Z

    move-result v0

    return v0
.end method

.method public blacklist startOneTouchRecord(I[B)V
    .registers 4
    .param p1, "recorderAddress"    # I
    .param p2, "recordSource"    # [B

    .line 240
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->startOneTouchRecord(I[B)V

    .line 241
    return-void
.end method

.method public blacklist startTimerRecording(II[B)V
    .registers 5
    .param p1, "recorderAddress"    # I
    .param p2, "sourceType"    # I
    .param p3, "recordSource"    # [B

    .line 250
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->startTimerRecording(II[B)V

    .line 252
    return-void
.end method

.method public blacklist stopOneTouchRecord(I)V
    .registers 3
    .param p1, "recorderAddress"    # I

    .line 245
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->stopOneTouchRecord(I)V

    .line 246
    return-void
.end method

.method public blacklist toggleAndFollowTvPower()V
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->toggleAndFollowTvPower()V

    .line 72
    return-void
.end method
