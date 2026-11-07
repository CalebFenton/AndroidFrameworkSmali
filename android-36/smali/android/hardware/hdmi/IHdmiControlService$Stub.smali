.class public abstract Landroid/hardware/hdmi/IHdmiControlService$Stub;
.super Landroid/os/Binder;
.source "IHdmiControlService.java"

# interfaces
.implements Landroid/hardware/hdmi/IHdmiControlService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/IHdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/IHdmiControlService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.hdmi.IHdmiControlService"

.field static final blacklist TRANSACTION_addCecSettingChangeListener:I = 0x32

.field static final greylist-max-o TRANSACTION_addDeviceEventListener:I = 0xd

.field static final blacklist TRANSACTION_addHdmiCecVolumeControlFeatureListener:I = 0x9

.field static final blacklist TRANSACTION_addHdmiControlStatusChangeListener:I = 0x7

.field static final greylist-max-o TRANSACTION_addHdmiMhlVendorCommandListener:I = 0x2c

.field static final greylist-max-o TRANSACTION_addHotplugEventListener:I = 0xb

.field static final greylist-max-o TRANSACTION_addSystemAudioModeChangeListener:I = 0x17

.field static final greylist-max-o TRANSACTION_addVendorCommandListener:I = 0x24

.field static final blacklist TRANSACTION_askRemoteDeviceToBecomeActiveSource:I = 0x22

.field static final greylist-max-o TRANSACTION_canChangeSystemAudioMode:I = 0x13

.field static final greylist-max-o TRANSACTION_clearTimerRecording:I = 0x2a

.field static final greylist-max-o TRANSACTION_deviceSelect:I = 0xe

.field static final greylist-max-o TRANSACTION_getActiveSource:I = 0x2

.field static final blacklist TRANSACTION_getAllowedCecSettingIntValues:I = 0x36

.field static final blacklist TRANSACTION_getAllowedCecSettingStringValues:I = 0x35

.field static final blacklist TRANSACTION_getCecSettingIntValue:I = 0x39

.field static final blacklist TRANSACTION_getCecSettingStringValue:I = 0x37

.field static final greylist-max-o TRANSACTION_getDeviceList:I = 0x1f

.field static final greylist-max-o TRANSACTION_getInputDevices:I = 0x1e

.field static final blacklist TRANSACTION_getMessageHistorySize:I = 0x31

.field static final blacklist TRANSACTION_getPhysicalAddress:I = 0x15

.field static final greylist-max-o TRANSACTION_getPortInfo:I = 0x12

.field static final greylist-max-o TRANSACTION_getSupportedTypes:I = 0x1

.field static final greylist-max-o TRANSACTION_getSystemAudioMode:I = 0x14

.field static final blacklist TRANSACTION_getUserCecSettings:I = 0x34

.field static final greylist-max-o TRANSACTION_oneTouchPlay:I = 0x3

.field static final greylist-max-o TRANSACTION_portSelect:I = 0xf

.field static final blacklist TRANSACTION_powerOffRemoteDevice:I = 0x20

.field static final blacklist TRANSACTION_powerOnRemoteDevice:I = 0x21

.field static final greylist-max-o TRANSACTION_queryDisplayStatus:I = 0x6

.field static final blacklist TRANSACTION_removeCecSettingChangeListener:I = 0x33

.field static final blacklist TRANSACTION_removeHdmiCecVolumeControlFeatureListener:I = 0xa

.field static final blacklist TRANSACTION_removeHdmiControlStatusChangeListener:I = 0x8

.field static final greylist-max-o TRANSACTION_removeHotplugEventListener:I = 0xc

.field static final greylist-max-o TRANSACTION_removeSystemAudioModeChangeListener:I = 0x18

.field static final blacklist TRANSACTION_reportAudioStatus:I = 0x2e

.field static final greylist-max-o TRANSACTION_sendKeyEvent:I = 0x10

.field static final greylist-max-o TRANSACTION_sendMhlVendorCommand:I = 0x2b

.field static final greylist-max-o TRANSACTION_sendStandby:I = 0x25

.field static final greylist-max-o TRANSACTION_sendVendorCommand:I = 0x23

.field static final blacklist TRANSACTION_sendVolumeKeyEvent:I = 0x11

.field static final greylist-max-o TRANSACTION_setArcMode:I = 0x19

.field static final blacklist TRANSACTION_setCecSettingIntValue:I = 0x3a

.field static final blacklist TRANSACTION_setCecSettingStringValue:I = 0x38

.field static final greylist-max-o TRANSACTION_setHdmiRecordListener:I = 0x26

.field static final greylist-max-o TRANSACTION_setInputChangeListener:I = 0x1d

.field static final blacklist TRANSACTION_setMessageHistorySize:I = 0x30

.field static final greylist-max-o TRANSACTION_setProhibitMode:I = 0x1a

.field static final greylist-max-o TRANSACTION_setStandbyMode:I = 0x2d

.field static final greylist-max-o TRANSACTION_setSystemAudioMode:I = 0x16

.field static final blacklist TRANSACTION_setSystemAudioModeOnForAudioOnlySource:I = 0x2f

.field static final greylist-max-o TRANSACTION_setSystemAudioMute:I = 0x1c

.field static final greylist-max-o TRANSACTION_setSystemAudioVolume:I = 0x1b

.field static final blacklist TRANSACTION_shouldHandleTvPowerKey:I = 0x5

.field static final greylist-max-o TRANSACTION_startOneTouchRecord:I = 0x27

.field static final greylist-max-o TRANSACTION_startTimerRecording:I = 0x29

.field static final greylist-max-o TRANSACTION_stopOneTouchRecord:I = 0x28

.field static final blacklist TRANSACTION_toggleAndFollowTvPower:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 223
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 224
    const-string v0, "android.hardware.hdmi.IHdmiControlService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 232
    if-nez p0, :cond_4

    .line 233
    const/4 v0, 0x0

    return-object v0

    .line 235
    :cond_4
    const-string v0, "android.hardware.hdmi.IHdmiControlService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 236
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v1, :cond_14

    .line 237
    move-object v1, v0

    check-cast v1, Landroid/hardware/hdmi/IHdmiControlService;

    return-object v1

    .line 239
    :cond_14
    new-instance v1, Landroid/hardware/hdmi/IHdmiControlService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 248
    packed-switch p0, :pswitch_data_b4

    .line 484
    const/4 v0, 0x0

    return-object v0

    .line 480
    :pswitch_5
    const-string v0, "setCecSettingIntValue"

    return-object v0

    .line 476
    :pswitch_8
    const-string v0, "getCecSettingIntValue"

    return-object v0

    .line 472
    :pswitch_b
    const-string v0, "setCecSettingStringValue"

    return-object v0

    .line 468
    :pswitch_e
    const-string v0, "getCecSettingStringValue"

    return-object v0

    .line 464
    :pswitch_11
    const-string v0, "getAllowedCecSettingIntValues"

    return-object v0

    .line 460
    :pswitch_14
    const-string v0, "getAllowedCecSettingStringValues"

    return-object v0

    .line 456
    :pswitch_17
    const-string v0, "getUserCecSettings"

    return-object v0

    .line 452
    :pswitch_1a
    const-string v0, "removeCecSettingChangeListener"

    return-object v0

    .line 448
    :pswitch_1d
    const-string v0, "addCecSettingChangeListener"

    return-object v0

    .line 444
    :pswitch_20
    const-string v0, "getMessageHistorySize"

    return-object v0

    .line 440
    :pswitch_23
    const-string v0, "setMessageHistorySize"

    return-object v0

    .line 436
    :pswitch_26
    const-string v0, "setSystemAudioModeOnForAudioOnlySource"

    return-object v0

    .line 432
    :pswitch_29
    const-string v0, "reportAudioStatus"

    return-object v0

    .line 428
    :pswitch_2c
    const-string v0, "setStandbyMode"

    return-object v0

    .line 424
    :pswitch_2f
    const-string v0, "addHdmiMhlVendorCommandListener"

    return-object v0

    .line 420
    :pswitch_32
    const-string v0, "sendMhlVendorCommand"

    return-object v0

    .line 416
    :pswitch_35
    const-string v0, "clearTimerRecording"

    return-object v0

    .line 412
    :pswitch_38
    const-string v0, "startTimerRecording"

    return-object v0

    .line 408
    :pswitch_3b
    const-string v0, "stopOneTouchRecord"

    return-object v0

    .line 404
    :pswitch_3e
    const-string v0, "startOneTouchRecord"

    return-object v0

    .line 400
    :pswitch_41
    const-string v0, "setHdmiRecordListener"

    return-object v0

    .line 396
    :pswitch_44
    const-string v0, "sendStandby"

    return-object v0

    .line 392
    :pswitch_47
    const-string v0, "addVendorCommandListener"

    return-object v0

    .line 388
    :pswitch_4a
    const-string v0, "sendVendorCommand"

    return-object v0

    .line 384
    :pswitch_4d
    const-string v0, "askRemoteDeviceToBecomeActiveSource"

    return-object v0

    .line 380
    :pswitch_50
    const-string v0, "powerOnRemoteDevice"

    return-object v0

    .line 376
    :pswitch_53
    const-string v0, "powerOffRemoteDevice"

    return-object v0

    .line 372
    :pswitch_56
    const-string v0, "getDeviceList"

    return-object v0

    .line 368
    :pswitch_59
    const-string v0, "getInputDevices"

    return-object v0

    .line 364
    :pswitch_5c
    const-string v0, "setInputChangeListener"

    return-object v0

    .line 360
    :pswitch_5f
    const-string v0, "setSystemAudioMute"

    return-object v0

    .line 356
    :pswitch_62
    const-string v0, "setSystemAudioVolume"

    return-object v0

    .line 352
    :pswitch_65
    const-string v0, "setProhibitMode"

    return-object v0

    .line 348
    :pswitch_68
    const-string v0, "setArcMode"

    return-object v0

    .line 344
    :pswitch_6b
    const-string v0, "removeSystemAudioModeChangeListener"

    return-object v0

    .line 340
    :pswitch_6e
    const-string v0, "addSystemAudioModeChangeListener"

    return-object v0

    .line 336
    :pswitch_71
    const-string v0, "setSystemAudioMode"

    return-object v0

    .line 332
    :pswitch_74
    const-string v0, "getPhysicalAddress"

    return-object v0

    .line 328
    :pswitch_77
    const-string v0, "getSystemAudioMode"

    return-object v0

    .line 324
    :pswitch_7a
    const-string v0, "canChangeSystemAudioMode"

    return-object v0

    .line 320
    :pswitch_7d
    const-string v0, "getPortInfo"

    return-object v0

    .line 316
    :pswitch_80
    const-string v0, "sendVolumeKeyEvent"

    return-object v0

    .line 312
    :pswitch_83
    const-string v0, "sendKeyEvent"

    return-object v0

    .line 308
    :pswitch_86
    const-string v0, "portSelect"

    return-object v0

    .line 304
    :pswitch_89
    const-string v0, "deviceSelect"

    return-object v0

    .line 300
    :pswitch_8c
    const-string v0, "addDeviceEventListener"

    return-object v0

    .line 296
    :pswitch_8f
    const-string v0, "removeHotplugEventListener"

    return-object v0

    .line 292
    :pswitch_92
    const-string v0, "addHotplugEventListener"

    return-object v0

    .line 288
    :pswitch_95
    const-string v0, "removeHdmiCecVolumeControlFeatureListener"

    return-object v0

    .line 284
    :pswitch_98
    const-string v0, "addHdmiCecVolumeControlFeatureListener"

    return-object v0

    .line 280
    :pswitch_9b
    const-string v0, "removeHdmiControlStatusChangeListener"

    return-object v0

    .line 276
    :pswitch_9e
    const-string v0, "addHdmiControlStatusChangeListener"

    return-object v0

    .line 272
    :pswitch_a1
    const-string v0, "queryDisplayStatus"

    return-object v0

    .line 268
    :pswitch_a4
    const-string v0, "shouldHandleTvPowerKey"

    return-object v0

    .line 264
    :pswitch_a7
    const-string v0, "toggleAndFollowTvPower"

    return-object v0

    .line 260
    :pswitch_aa
    const-string v0, "oneTouchPlay"

    return-object v0

    .line 256
    :pswitch_ad
    const-string v0, "getActiveSource"

    return-object v0

    .line 252
    :pswitch_b0
    const-string v0, "getSupportedTypes"

    return-object v0

    nop

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 243
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2088
    const/16 v0, 0x39

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 491
    invoke-static {p1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 495
    const-string v0, "android.hardware.hdmi.IHdmiControlService"

    .line 496
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 497
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 500
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 501
    return v1

    .line 503
    :cond_16
    packed-switch p1, :pswitch_data_42e

    .line 1068
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1058
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1060
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1061
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1062
    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setCecSettingIntValue(Ljava/lang/String;I)V

    .line 1063
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1064
    goto/16 :goto_42d

    .line 1048
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1049
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1050
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getCecSettingIntValue(Ljava/lang/String;)I

    move-result v3

    .line 1051
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1052
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1053
    goto/16 :goto_42d

    .line 1037
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1039
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1040
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1041
    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setCecSettingStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    goto/16 :goto_42d

    .line 1027
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1028
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1029
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getCecSettingStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1030
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1031
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1032
    goto/16 :goto_42d

    .line 1017
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1018
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1019
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getAllowedCecSettingIntValues(Ljava/lang/String;)[I

    move-result-object v3

    .line 1020
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1021
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1022
    goto/16 :goto_42d

    .line 1007
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[I
    :pswitch_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1008
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1009
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getAllowedCecSettingStringValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1010
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1012
    goto/16 :goto_42d

    .line 999
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_90
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getUserCecSettings()Ljava/util/List;

    move-result-object v2

    .line 1000
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1002
    goto/16 :goto_42d

    .line 989
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 991
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/hdmi/IHdmiCecSettingChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;

    move-result-object v3

    .line 992
    .local v3, "_arg1":Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 993
    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->removeCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V

    .line 994
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 995
    goto/16 :goto_42d

    .line 978
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;
    :pswitch_b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 980
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/hdmi/IHdmiCecSettingChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;

    move-result-object v3

    .line 981
    .restart local v3    # "_arg1":Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 982
    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V

    .line 983
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    goto/16 :goto_42d

    .line 970
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;
    :pswitch_ca
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getMessageHistorySize()I

    move-result v2

    .line 971
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 972
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 973
    goto/16 :goto_42d

    .line 961
    .end local v2    # "_result":I
    :pswitch_d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 962
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 963
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setMessageHistorySize(I)Z

    move-result v3

    .line 964
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 966
    goto/16 :goto_42d

    .line 954
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_e9
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setSystemAudioModeOnForAudioOnlySource()V

    .line 955
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 956
    goto/16 :goto_42d

    .line 940
    :pswitch_f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 942
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 944
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 946
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 947
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 948
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->reportAudioStatus(IIIZ)V

    .line 949
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    goto/16 :goto_42d

    .line 931
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Z
    :pswitch_10c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 932
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 933
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setStandbyMode(Z)V

    .line 934
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 935
    goto/16 :goto_42d

    .line 922
    .end local v2    # "_arg0":Z
    :pswitch_11b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    move-result-object v2

    .line 923
    .local v2, "_arg0":Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 924
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V

    .line 925
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    goto/16 :goto_42d

    .line 907
    .end local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;
    :pswitch_12e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 909
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 911
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 913
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 914
    .local v5, "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 915
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->sendMhlVendorCommand(III[B)V

    .line 916
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    goto/16 :goto_42d

    .line 894
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":[B
    :pswitch_149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 896
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 898
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 899
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 900
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->clearTimerRecording(II[B)V

    .line 901
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    goto/16 :goto_42d

    .line 881
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[B
    :pswitch_160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 883
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 885
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 886
    .restart local v4    # "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 887
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->startTimerRecording(II[B)V

    .line 888
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 889
    goto/16 :goto_42d

    .line 872
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[B
    :pswitch_177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 873
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 874
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->stopOneTouchRecord(I)V

    .line 875
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 876
    goto/16 :goto_42d

    .line 861
    .end local v2    # "_arg0":I
    :pswitch_186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 863
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 864
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 865
    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->startOneTouchRecord(I[B)V

    .line 866
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    goto/16 :goto_42d

    .line 852
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_199
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiRecordListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object v2

    .line 853
    .local v2, "_arg0":Landroid/hardware/hdmi/IHdmiRecordListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 854
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V

    .line 855
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    goto/16 :goto_42d

    .line 841
    .end local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiRecordListener;
    :pswitch_1ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 843
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 844
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 845
    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->sendStandby(II)V

    .line 846
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    goto/16 :goto_42d

    .line 830
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    move-result-object v2

    .line 832
    .local v2, "_arg0":Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 833
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 834
    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    .line 835
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    goto/16 :goto_42d

    .line 815
    .end local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    .end local v3    # "_arg1":I
    :pswitch_1d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 817
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 819
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 821
    .restart local v4    # "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 822
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 823
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->sendVendorCommand(II[BZ)V

    .line 824
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    goto/16 :goto_42d

    .line 806
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[B
    .end local v5    # "_arg3":Z
    :pswitch_1f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 807
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 808
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->askRemoteDeviceToBecomeActiveSource(I)V

    .line 809
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    goto/16 :goto_42d

    .line 795
    .end local v2    # "_arg0":I
    :pswitch_200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 797
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 798
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 799
    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->powerOnRemoteDevice(II)V

    .line 800
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    goto/16 :goto_42d

    .line 784
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 786
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 787
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 788
    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->powerOffRemoteDevice(II)V

    .line 789
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    goto/16 :goto_42d

    .line 776
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_226
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getDeviceList()Ljava/util/List;

    move-result-object v2

    .line 777
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 779
    goto/16 :goto_42d

    .line 769
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    :pswitch_232
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getInputDevices()Ljava/util/List;

    move-result-object v2

    .line 770
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 772
    goto/16 :goto_42d

    .line 761
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    :pswitch_23e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiInputChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiInputChangeListener;

    move-result-object v2

    .line 762
    .local v2, "_arg0":Landroid/hardware/hdmi/IHdmiInputChangeListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 763
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V

    .line 764
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    goto/16 :goto_42d

    .line 752
    .end local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiInputChangeListener;
    :pswitch_251
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 753
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 754
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setSystemAudioMute(Z)V

    .line 755
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    goto/16 :goto_42d

    .line 739
    .end local v2    # "_arg0":Z
    :pswitch_260
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 741
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 743
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 744
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 745
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setSystemAudioVolume(III)V

    .line 746
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 747
    goto/16 :goto_42d

    .line 730
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_277
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 731
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 732
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setProhibitMode(Z)V

    .line 733
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    goto/16 :goto_42d

    .line 721
    .end local v2    # "_arg0":Z
    :pswitch_286
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 722
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 723
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setArcMode(Z)V

    .line 724
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    goto/16 :goto_42d

    .line 712
    .end local v2    # "_arg0":Z
    :pswitch_295
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    move-result-object v2

    .line 713
    .local v2, "_arg0":Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 714
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    .line 715
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    goto/16 :goto_42d

    .line 703
    .end local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;
    :pswitch_2a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    move-result-object v2

    .line 704
    .restart local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 705
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    .line 706
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    goto/16 :goto_42d

    .line 692
    .end local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;
    :pswitch_2bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 694
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v3

    .line 695
    .local v3, "_arg1":Landroid/hardware/hdmi/IHdmiControlCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 696
    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    goto/16 :goto_42d

    .line 684
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Landroid/hardware/hdmi/IHdmiControlCallback;
    :pswitch_2d2
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getPhysicalAddress()I

    move-result v2

    .line 685
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    goto/16 :goto_42d

    .line 677
    .end local v2    # "_result":I
    :pswitch_2de
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getSystemAudioMode()Z

    move-result v2

    .line 678
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 680
    goto/16 :goto_42d

    .line 670
    .end local v2    # "_result":Z
    :pswitch_2ea
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->canChangeSystemAudioMode()Z

    move-result v2

    .line 671
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 673
    goto/16 :goto_42d

    .line 663
    .end local v2    # "_result":Z
    :pswitch_2f6
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getPortInfo()Ljava/util/List;

    move-result-object v2

    .line 664
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiPortInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 666
    goto/16 :goto_42d

    .line 651
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiPortInfo;>;"
    :pswitch_302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 653
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 655
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 656
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 657
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->sendVolumeKeyEvent(IIZ)V

    .line 658
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    goto/16 :goto_42d

    .line 638
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 640
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 642
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 643
    .restart local v4    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 644
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->sendKeyEvent(IIZ)V

    .line 645
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    goto/16 :goto_42d

    .line 627
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_330
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 629
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v3

    .line 630
    .local v3, "_arg1":Landroid/hardware/hdmi/IHdmiControlCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 631
    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->portSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 632
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    goto/16 :goto_42d

    .line 616
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/hdmi/IHdmiControlCallback;
    :pswitch_347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 618
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v3

    .line 619
    .restart local v3    # "_arg1":Landroid/hardware/hdmi/IHdmiControlCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 620
    invoke-virtual {p0, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 621
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    goto/16 :goto_42d

    .line 607
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/hdmi/IHdmiControlCallback;
    :pswitch_35e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiDeviceEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    move-result-object v2

    .line 608
    .local v2, "_arg0":Landroid/hardware/hdmi/IHdmiDeviceEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 609
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    .line 610
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    goto/16 :goto_42d

    .line 598
    .end local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiDeviceEventListener;
    :pswitch_371
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiHotplugEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    move-result-object v2

    .line 599
    .local v2, "_arg0":Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 600
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    .line 601
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    goto/16 :goto_42d

    .line 589
    .end local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    :pswitch_384
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiHotplugEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    move-result-object v2

    .line 590
    .restart local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 591
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    .line 592
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    goto/16 :goto_42d

    .line 580
    .end local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    :pswitch_397
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;

    move-result-object v2

    .line 581
    .local v2, "_arg0":Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 582
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->removeHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V

    .line 583
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    goto/16 :goto_42d

    .line 571
    .end local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;
    :pswitch_3aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;

    move-result-object v2

    .line 572
    .restart local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 573
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V

    .line 574
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    goto/16 :goto_42d

    .line 562
    .end local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;
    :pswitch_3bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    move-result-object v2

    .line 563
    .local v2, "_arg0":Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 564
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->removeHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V

    .line 565
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    goto :goto_42d

    .line 553
    .end local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;
    :pswitch_3cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    move-result-object v2

    .line 554
    .restart local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 555
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V

    .line 556
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    goto :goto_42d

    .line 544
    .end local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;
    :pswitch_3e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v2

    .line 545
    .local v2, "_arg0":Landroid/hardware/hdmi/IHdmiControlCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 546
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 547
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    goto :goto_42d

    .line 536
    .end local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiControlCallback;
    :pswitch_3f3
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->shouldHandleTvPowerKey()Z

    move-result v2

    .line 537
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 539
    goto :goto_42d

    .line 530
    .end local v2    # "_result":Z
    :pswitch_3fe
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->toggleAndFollowTvPower()V

    .line 531
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    goto :goto_42d

    .line 522
    :pswitch_405
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v2

    .line 523
    .local v2, "_arg0":Landroid/hardware/hdmi/IHdmiControlCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 524
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 525
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    goto :goto_42d

    .line 514
    .end local v2    # "_arg0":Landroid/hardware/hdmi/IHdmiControlCallback;
    :pswitch_417
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v2

    .line 515
    .local v2, "_result":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 517
    goto :goto_42d

    .line 507
    .end local v2    # "_result":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :pswitch_422
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getSupportedTypes()[I

    move-result-object v2

    .line 508
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 510
    nop

    .line 1071
    .end local v2    # "_result":[I
    :goto_42d
    return v1

    :pswitch_data_42e
    .packed-switch 0x1
        :pswitch_422
        :pswitch_417
        :pswitch_405
        :pswitch_3fe
        :pswitch_3f3
        :pswitch_3e1
        :pswitch_3cf
        :pswitch_3bd
        :pswitch_3aa
        :pswitch_397
        :pswitch_384
        :pswitch_371
        :pswitch_35e
        :pswitch_347
        :pswitch_330
        :pswitch_319
        :pswitch_302
        :pswitch_2f6
        :pswitch_2ea
        :pswitch_2de
        :pswitch_2d2
        :pswitch_2bb
        :pswitch_2a8
        :pswitch_295
        :pswitch_286
        :pswitch_277
        :pswitch_260
        :pswitch_251
        :pswitch_23e
        :pswitch_232
        :pswitch_226
        :pswitch_213
        :pswitch_200
        :pswitch_1f1
        :pswitch_1d6
        :pswitch_1bf
        :pswitch_1ac
        :pswitch_199
        :pswitch_186
        :pswitch_177
        :pswitch_160
        :pswitch_149
        :pswitch_12e
        :pswitch_11b
        :pswitch_10c
        :pswitch_f1
        :pswitch_e9
        :pswitch_d6
        :pswitch_ca
        :pswitch_b3
        :pswitch_9c
        :pswitch_90
        :pswitch_7d
        :pswitch_6a
        :pswitch_57
        :pswitch_44
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
