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
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.hdmi.IHdmiControlService"

.field static final TRANSACTION_addDeviceEventListener:I = 0x7

.field static final TRANSACTION_addHdmiMhlVendorCommandListener:I = 0x21

.field static final TRANSACTION_addHotplugEventListener:I = 0x5

.field static final TRANSACTION_addSystemAudioModeChangeListener:I = 0xf

.field static final TRANSACTION_addVendorCommandListener:I = 0x19

.field static final TRANSACTION_canChangeSystemAudioMode:I = 0xc

.field static final TRANSACTION_clearTimerRecording:I = 0x1f

.field static final TRANSACTION_deviceSelect:I = 0x8

.field static final TRANSACTION_getActiveSource:I = 0x2

.field static final TRANSACTION_getDeviceList:I = 0x17

.field static final TRANSACTION_getInputDevices:I = 0x16

.field static final TRANSACTION_getPortInfo:I = 0xb

.field static final TRANSACTION_getSupportedTypes:I = 0x1

.field static final TRANSACTION_getSystemAudioMode:I = 0xd

.field static final TRANSACTION_oneTouchPlay:I = 0x3

.field static final TRANSACTION_portSelect:I = 0x9

.field static final TRANSACTION_queryDisplayStatus:I = 0x4

.field static final TRANSACTION_removeHotplugEventListener:I = 0x6

.field static final TRANSACTION_removeSystemAudioModeChangeListener:I = 0x10

.field static final TRANSACTION_sendKeyEvent:I = 0xa

.field static final TRANSACTION_sendMhlVendorCommand:I = 0x20

.field static final TRANSACTION_sendStandby:I = 0x1a

.field static final TRANSACTION_sendVendorCommand:I = 0x18

.field static final TRANSACTION_setArcMode:I = 0x11

.field static final TRANSACTION_setHdmiRecordListener:I = 0x1b

.field static final TRANSACTION_setInputChangeListener:I = 0x15

.field static final TRANSACTION_setProhibitMode:I = 0x12

.field static final TRANSACTION_setSystemAudioMode:I = 0xe

.field static final TRANSACTION_setSystemAudioMute:I = 0x14

.field static final TRANSACTION_setSystemAudioVolume:I = 0x13

.field static final TRANSACTION_startOneTouchRecord:I = 0x1c

.field static final TRANSACTION_startTimerRecording:I = 0x1e

.field static final TRANSACTION_stopOneTouchRecord:I = 0x1d


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 22
    const-string/jumbo v0, "android.hardware.hdmi.IHdmiControlService"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 30
    if-nez p0, :cond_0

    #@3
    .line 31
    return-object v1

    #@4
    .line 33
    :cond_0
    const-string/jumbo v1, "android.hardware.hdmi.IHdmiControlService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/hardware/hdmi/IHdmiControlService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 35
    check-cast v0, Landroid/hardware/hdmi/IHdmiControlService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 37
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/hdmi/IHdmiControlService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 27
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 45
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 389
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v26

    #@7
    return v26

    #@8
    .line 49
    :sswitch_0
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@b
    move-object/from16 v0, p3

    #@d
    move-object/from16 v1, v26

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 50
    const/16 v26, 0x1

    #@14
    return v26

    #@15
    .line 54
    :sswitch_1
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@18
    move-object/from16 v0, p2

    #@1a
    move-object/from16 v1, v26

    #@1c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f
    .line 55
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getSupportedTypes()[I

    #@22
    move-result-object v25

    #@23
    .line 56
    .local v25, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@26
    .line 57
    move-object/from16 v0, p3

    #@28
    move-object/from16 v1, v25

    #@2a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@2d
    .line 58
    const/16 v26, 0x1

    #@2f
    return v26

    #@30
    .line 62
    .end local v25    # "_result":[I
    :sswitch_2
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@33
    move-object/from16 v0, p2

    #@35
    move-object/from16 v1, v26

    #@37
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a
    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@3d
    move-result-object v21

    #@3e
    .line 64
    .local v21, "_result":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@41
    .line 65
    if-eqz v21, :cond_0

    #@43
    .line 66
    const/16 v26, 0x1

    #@45
    move-object/from16 v0, p3

    #@47
    move/from16 v1, v26

    #@49
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4c
    .line 67
    const/16 v26, 0x1

    #@4e
    move-object/from16 v0, v21

    #@50
    move-object/from16 v1, p3

    #@52
    move/from16 v2, v26

    #@54
    invoke-virtual {v0, v1, v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@57
    .line 72
    :goto_0
    const/16 v26, 0x1

    #@59
    return v26

    #@5a
    .line 70
    :cond_0
    const/16 v26, 0x0

    #@5c
    move-object/from16 v0, p3

    #@5e
    move/from16 v1, v26

    #@60
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@63
    goto :goto_0

    #@64
    .line 76
    .end local v21    # "_result":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :sswitch_3
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@67
    move-object/from16 v0, p2

    #@69
    move-object/from16 v1, v26

    #@6b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6e
    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@71
    move-result-object v26

    #@72
    invoke-static/range {v26 .. v26}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlCallback;

    #@75
    move-result-object v4

    #@76
    .line 79
    .local v4, "_arg0":Landroid/hardware/hdmi/IHdmiControlCallback;
    move-object/from16 v0, p0

    #@78
    invoke-virtual {v0, v4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    #@7b
    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7e
    .line 81
    const/16 v26, 0x1

    #@80
    return v26

    #@81
    .line 85
    .end local v4    # "_arg0":Landroid/hardware/hdmi/IHdmiControlCallback;
    :sswitch_4
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@84
    move-object/from16 v0, p2

    #@86
    move-object/from16 v1, v26

    #@88
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8b
    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@8e
    move-result-object v26

    #@8f
    invoke-static/range {v26 .. v26}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlCallback;

    #@92
    move-result-object v4

    #@93
    .line 88
    .restart local v4    # "_arg0":Landroid/hardware/hdmi/IHdmiControlCallback;
    move-object/from16 v0, p0

    #@95
    invoke-virtual {v0, v4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    #@98
    .line 89
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9b
    .line 90
    const/16 v26, 0x1

    #@9d
    return v26

    #@9e
    .line 94
    .end local v4    # "_arg0":Landroid/hardware/hdmi/IHdmiControlCallback;
    :sswitch_5
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@a1
    move-object/from16 v0, p2

    #@a3
    move-object/from16 v1, v26

    #@a5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a8
    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ab
    move-result-object v26

    #@ac
    invoke-static/range {v26 .. v26}, Landroid/hardware/hdmi/IHdmiHotplugEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    #@af
    move-result-object v6

    #@b0
    .line 97
    .local v6, "_arg0":Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    move-object/from16 v0, p0

    #@b2
    invoke-virtual {v0, v6}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    #@b5
    .line 98
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b8
    .line 99
    const/16 v26, 0x1

    #@ba
    return v26

    #@bb
    .line 103
    .end local v6    # "_arg0":Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    :sswitch_6
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@be
    move-object/from16 v0, p2

    #@c0
    move-object/from16 v1, v26

    #@c2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c5
    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c8
    move-result-object v26

    #@c9
    invoke-static/range {v26 .. v26}, Landroid/hardware/hdmi/IHdmiHotplugEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    #@cc
    move-result-object v6

    #@cd
    .line 106
    .restart local v6    # "_arg0":Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    move-object/from16 v0, p0

    #@cf
    invoke-virtual {v0, v6}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    #@d2
    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d5
    .line 108
    const/16 v26, 0x1

    #@d7
    return v26

    #@d8
    .line 112
    .end local v6    # "_arg0":Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    :sswitch_7
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@db
    move-object/from16 v0, p2

    #@dd
    move-object/from16 v1, v26

    #@df
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e2
    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@e5
    move-result-object v26

    #@e6
    invoke-static/range {v26 .. v26}, Landroid/hardware/hdmi/IHdmiDeviceEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    #@e9
    move-result-object v5

    #@ea
    .line 115
    .local v5, "_arg0":Landroid/hardware/hdmi/IHdmiDeviceEventListener;
    move-object/from16 v0, p0

    #@ec
    invoke-virtual {v0, v5}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    #@ef
    .line 116
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f2
    .line 117
    const/16 v26, 0x1

    #@f4
    return v26

    #@f5
    .line 121
    .end local v5    # "_arg0":Landroid/hardware/hdmi/IHdmiDeviceEventListener;
    :sswitch_8
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@f8
    move-object/from16 v0, p2

    #@fa
    move-object/from16 v1, v26

    #@fc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ff
    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@102
    move-result v3

    #@103
    .line 125
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@106
    move-result-object v26

    #@107
    invoke-static/range {v26 .. v26}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlCallback;

    #@10a
    move-result-object v14

    #@10b
    .line 126
    .local v14, "_arg1":Landroid/hardware/hdmi/IHdmiControlCallback;
    move-object/from16 v0, p0

    #@10d
    invoke-virtual {v0, v3, v14}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    #@110
    .line 127
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@113
    .line 128
    const/16 v26, 0x1

    #@115
    return v26

    #@116
    .line 132
    .end local v3    # "_arg0":I
    .end local v14    # "_arg1":Landroid/hardware/hdmi/IHdmiControlCallback;
    :sswitch_9
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@119
    move-object/from16 v0, p2

    #@11b
    move-object/from16 v1, v26

    #@11d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@120
    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@123
    move-result v3

    #@124
    .line 136
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@127
    move-result-object v26

    #@128
    invoke-static/range {v26 .. v26}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlCallback;

    #@12b
    move-result-object v14

    #@12c
    .line 137
    .restart local v14    # "_arg1":Landroid/hardware/hdmi/IHdmiControlCallback;
    move-object/from16 v0, p0

    #@12e
    invoke-virtual {v0, v3, v14}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->portSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    #@131
    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@134
    .line 139
    const/16 v26, 0x1

    #@136
    return v26

    #@137
    .line 143
    .end local v3    # "_arg0":I
    .end local v14    # "_arg1":Landroid/hardware/hdmi/IHdmiControlCallback;
    :sswitch_a
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@13a
    move-object/from16 v0, p2

    #@13c
    move-object/from16 v1, v26

    #@13e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@141
    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@144
    move-result v3

    #@145
    .line 147
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@148
    move-result v13

    #@149
    .line 149
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14c
    move-result v26

    #@14d
    if-eqz v26, :cond_1

    #@14f
    const/16 v17, 0x1

    #@151
    .line 150
    .local v17, "_arg2":Z
    :goto_1
    move-object/from16 v0, p0

    #@153
    move/from16 v1, v17

    #@155
    invoke-virtual {v0, v3, v13, v1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->sendKeyEvent(IIZ)V

    #@158
    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@15b
    .line 152
    const/16 v26, 0x1

    #@15d
    return v26

    #@15e
    .line 149
    .end local v17    # "_arg2":Z
    :cond_1
    const/16 v17, 0x0

    #@160
    .restart local v17    # "_arg2":Z
    goto :goto_1

    #@161
    .line 156
    .end local v3    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v17    # "_arg2":Z
    :sswitch_b
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@164
    move-object/from16 v0, p2

    #@166
    move-object/from16 v1, v26

    #@168
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16b
    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getPortInfo()Ljava/util/List;

    #@16e
    move-result-object v23

    #@16f
    .line 158
    .local v23, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiPortInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@172
    .line 159
    move-object/from16 v0, p3

    #@174
    move-object/from16 v1, v23

    #@176
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@179
    .line 160
    const/16 v26, 0x1

    #@17b
    return v26

    #@17c
    .line 164
    .end local v23    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiPortInfo;>;"
    :sswitch_c
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@17f
    move-object/from16 v0, p2

    #@181
    move-object/from16 v1, v26

    #@183
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@186
    .line 165
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->canChangeSystemAudioMode()Z

    #@189
    move-result v24

    #@18a
    .line 166
    .local v24, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@18d
    .line 167
    if-eqz v24, :cond_2

    #@18f
    const/16 v26, 0x1

    #@191
    :goto_2
    move-object/from16 v0, p3

    #@193
    move/from16 v1, v26

    #@195
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@198
    .line 168
    const/16 v26, 0x1

    #@19a
    return v26

    #@19b
    .line 167
    :cond_2
    const/16 v26, 0x0

    #@19d
    goto :goto_2

    #@19e
    .line 172
    .end local v24    # "_result":Z
    :sswitch_d
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@1a1
    move-object/from16 v0, p2

    #@1a3
    move-object/from16 v1, v26

    #@1a5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a8
    .line 173
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getSystemAudioMode()Z

    #@1ab
    move-result v24

    #@1ac
    .line 174
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1af
    .line 175
    if-eqz v24, :cond_3

    #@1b1
    const/16 v26, 0x1

    #@1b3
    :goto_3
    move-object/from16 v0, p3

    #@1b5
    move/from16 v1, v26

    #@1b7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1ba
    .line 176
    const/16 v26, 0x1

    #@1bc
    return v26

    #@1bd
    .line 175
    :cond_3
    const/16 v26, 0x0

    #@1bf
    goto :goto_3

    #@1c0
    .line 180
    .end local v24    # "_result":Z
    :sswitch_e
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@1c3
    move-object/from16 v0, p2

    #@1c5
    move-object/from16 v1, v26

    #@1c7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ca
    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1cd
    move-result v26

    #@1ce
    if-eqz v26, :cond_4

    #@1d0
    const/4 v12, 0x1

    #@1d1
    .line 184
    .local v12, "_arg0":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d4
    move-result-object v26

    #@1d5
    invoke-static/range {v26 .. v26}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlCallback;

    #@1d8
    move-result-object v14

    #@1d9
    .line 185
    .restart local v14    # "_arg1":Landroid/hardware/hdmi/IHdmiControlCallback;
    move-object/from16 v0, p0

    #@1db
    invoke-virtual {v0, v12, v14}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    #@1de
    .line 186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e1
    .line 187
    const/16 v26, 0x1

    #@1e3
    return v26

    #@1e4
    .line 182
    .end local v12    # "_arg0":Z
    .end local v14    # "_arg1":Landroid/hardware/hdmi/IHdmiControlCallback;
    :cond_4
    const/4 v12, 0x0

    #@1e5
    .restart local v12    # "_arg0":Z
    goto :goto_4

    #@1e6
    .line 191
    .end local v12    # "_arg0":Z
    :sswitch_f
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@1e9
    move-object/from16 v0, p2

    #@1eb
    move-object/from16 v1, v26

    #@1ed
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f0
    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1f3
    move-result-object v26

    #@1f4
    invoke-static/range {v26 .. v26}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    #@1f7
    move-result-object v10

    #@1f8
    .line 194
    .local v10, "_arg0":Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;
    move-object/from16 v0, p0

    #@1fa
    invoke-virtual {v0, v10}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    #@1fd
    .line 195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@200
    .line 196
    const/16 v26, 0x1

    #@202
    return v26

    #@203
    .line 200
    .end local v10    # "_arg0":Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;
    :sswitch_10
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@206
    move-object/from16 v0, p2

    #@208
    move-object/from16 v1, v26

    #@20a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20d
    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@210
    move-result-object v26

    #@211
    invoke-static/range {v26 .. v26}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    #@214
    move-result-object v10

    #@215
    .line 203
    .restart local v10    # "_arg0":Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;
    move-object/from16 v0, p0

    #@217
    invoke-virtual {v0, v10}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    #@21a
    .line 204
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21d
    .line 205
    const/16 v26, 0x1

    #@21f
    return v26

    #@220
    .line 209
    .end local v10    # "_arg0":Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;
    :sswitch_11
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@223
    move-object/from16 v0, p2

    #@225
    move-object/from16 v1, v26

    #@227
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22a
    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22d
    move-result v26

    #@22e
    if-eqz v26, :cond_5

    #@230
    const/4 v12, 0x1

    #@231
    .line 212
    .restart local v12    # "_arg0":Z
    :goto_5
    move-object/from16 v0, p0

    #@233
    invoke-virtual {v0, v12}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setArcMode(Z)V

    #@236
    .line 213
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@239
    .line 214
    const/16 v26, 0x1

    #@23b
    return v26

    #@23c
    .line 211
    .end local v12    # "_arg0":Z
    :cond_5
    const/4 v12, 0x0

    #@23d
    .restart local v12    # "_arg0":Z
    goto :goto_5

    #@23e
    .line 218
    .end local v12    # "_arg0":Z
    :sswitch_12
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@241
    move-object/from16 v0, p2

    #@243
    move-object/from16 v1, v26

    #@245
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@248
    .line 220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@24b
    move-result v26

    #@24c
    if-eqz v26, :cond_6

    #@24e
    const/4 v12, 0x1

    #@24f
    .line 221
    .restart local v12    # "_arg0":Z
    :goto_6
    move-object/from16 v0, p0

    #@251
    invoke-virtual {v0, v12}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setProhibitMode(Z)V

    #@254
    .line 222
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@257
    .line 223
    const/16 v26, 0x1

    #@259
    return v26

    #@25a
    .line 220
    .end local v12    # "_arg0":Z
    :cond_6
    const/4 v12, 0x0

    #@25b
    .restart local v12    # "_arg0":Z
    goto :goto_6

    #@25c
    .line 227
    .end local v12    # "_arg0":Z
    :sswitch_13
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@25f
    move-object/from16 v0, p2

    #@261
    move-object/from16 v1, v26

    #@263
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@266
    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@269
    move-result v3

    #@26a
    .line 231
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26d
    move-result v13

    #@26e
    .line 233
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@271
    move-result v16

    #@272
    .line 234
    .local v16, "_arg2":I
    move-object/from16 v0, p0

    #@274
    move/from16 v1, v16

    #@276
    invoke-virtual {v0, v3, v13, v1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setSystemAudioVolume(III)V

    #@279
    .line 235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27c
    .line 236
    const/16 v26, 0x1

    #@27e
    return v26

    #@27f
    .line 240
    .end local v3    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v16    # "_arg2":I
    :sswitch_14
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@282
    move-object/from16 v0, p2

    #@284
    move-object/from16 v1, v26

    #@286
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@289
    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@28c
    move-result v26

    #@28d
    if-eqz v26, :cond_7

    #@28f
    const/4 v12, 0x1

    #@290
    .line 243
    .restart local v12    # "_arg0":Z
    :goto_7
    move-object/from16 v0, p0

    #@292
    invoke-virtual {v0, v12}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setSystemAudioMute(Z)V

    #@295
    .line 244
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@298
    .line 245
    const/16 v26, 0x1

    #@29a
    return v26

    #@29b
    .line 242
    .end local v12    # "_arg0":Z
    :cond_7
    const/4 v12, 0x0

    #@29c
    .restart local v12    # "_arg0":Z
    goto :goto_7

    #@29d
    .line 249
    .end local v12    # "_arg0":Z
    :sswitch_15
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@2a0
    move-object/from16 v0, p2

    #@2a2
    move-object/from16 v1, v26

    #@2a4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a7
    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2aa
    move-result-object v26

    #@2ab
    invoke-static/range {v26 .. v26}, Landroid/hardware/hdmi/IHdmiInputChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiInputChangeListener;

    #@2ae
    move-result-object v7

    #@2af
    .line 252
    .local v7, "_arg0":Landroid/hardware/hdmi/IHdmiInputChangeListener;
    move-object/from16 v0, p0

    #@2b1
    invoke-virtual {v0, v7}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V

    #@2b4
    .line 253
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b7
    .line 254
    const/16 v26, 0x1

    #@2b9
    return v26

    #@2ba
    .line 258
    .end local v7    # "_arg0":Landroid/hardware/hdmi/IHdmiInputChangeListener;
    :sswitch_16
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@2bd
    move-object/from16 v0, p2

    #@2bf
    move-object/from16 v1, v26

    #@2c1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c4
    .line 259
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getInputDevices()Ljava/util/List;

    #@2c7
    move-result-object v22

    #@2c8
    .line 260
    .local v22, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2cb
    .line 261
    move-object/from16 v0, p3

    #@2cd
    move-object/from16 v1, v22

    #@2cf
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@2d2
    .line 262
    const/16 v26, 0x1

    #@2d4
    return v26

    #@2d5
    .line 266
    .end local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    :sswitch_17
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@2d8
    move-object/from16 v0, p2

    #@2da
    move-object/from16 v1, v26

    #@2dc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2df
    .line 267
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getDeviceList()Ljava/util/List;

    #@2e2
    move-result-object v22

    #@2e3
    .line 268
    .restart local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e6
    .line 269
    move-object/from16 v0, p3

    #@2e8
    move-object/from16 v1, v22

    #@2ea
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@2ed
    .line 270
    const/16 v26, 0x1

    #@2ef
    return v26

    #@2f0
    .line 274
    .end local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    :sswitch_18
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@2f3
    move-object/from16 v0, p2

    #@2f5
    move-object/from16 v1, v26

    #@2f7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2fa
    .line 276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2fd
    move-result v3

    #@2fe
    .line 278
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@301
    move-result v13

    #@302
    .line 280
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@305
    move-result-object v18

    #@306
    .line 282
    .local v18, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@309
    move-result v26

    #@30a
    if-eqz v26, :cond_8

    #@30c
    const/16 v19, 0x1

    #@30e
    .line 283
    .local v19, "_arg3":Z
    :goto_8
    move-object/from16 v0, p0

    #@310
    move-object/from16 v1, v18

    #@312
    move/from16 v2, v19

    #@314
    invoke-virtual {v0, v3, v13, v1, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->sendVendorCommand(II[BZ)V

    #@317
    .line 284
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@31a
    .line 285
    const/16 v26, 0x1

    #@31c
    return v26

    #@31d
    .line 282
    .end local v19    # "_arg3":Z
    :cond_8
    const/16 v19, 0x0

    #@31f
    .restart local v19    # "_arg3":Z
    goto :goto_8

    #@320
    .line 289
    .end local v3    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v18    # "_arg2":[B
    .end local v19    # "_arg3":Z
    :sswitch_19
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@323
    move-object/from16 v0, p2

    #@325
    move-object/from16 v1, v26

    #@327
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32a
    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@32d
    move-result-object v26

    #@32e
    invoke-static/range {v26 .. v26}, Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    #@331
    move-result-object v11

    #@332
    .line 293
    .local v11, "_arg0":Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@335
    move-result v13

    #@336
    .line 294
    .restart local v13    # "_arg1":I
    move-object/from16 v0, p0

    #@338
    invoke-virtual {v0, v11, v13}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    #@33b
    .line 295
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@33e
    .line 296
    const/16 v26, 0x1

    #@340
    return v26

    #@341
    .line 300
    .end local v11    # "_arg0":Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    .end local v13    # "_arg1":I
    :sswitch_1a
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@344
    move-object/from16 v0, p2

    #@346
    move-object/from16 v1, v26

    #@348
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34b
    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@34e
    move-result v3

    #@34f
    .line 304
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@352
    move-result v13

    #@353
    .line 305
    .restart local v13    # "_arg1":I
    move-object/from16 v0, p0

    #@355
    invoke-virtual {v0, v3, v13}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->sendStandby(II)V

    #@358
    .line 306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@35b
    .line 307
    const/16 v26, 0x1

    #@35d
    return v26

    #@35e
    .line 311
    .end local v3    # "_arg0":I
    .end local v13    # "_arg1":I
    :sswitch_1b
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@361
    move-object/from16 v0, p2

    #@363
    move-object/from16 v1, v26

    #@365
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@368
    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@36b
    move-result-object v26

    #@36c
    invoke-static/range {v26 .. v26}, Landroid/hardware/hdmi/IHdmiRecordListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiRecordListener;

    #@36f
    move-result-object v9

    #@370
    .line 314
    .local v9, "_arg0":Landroid/hardware/hdmi/IHdmiRecordListener;
    move-object/from16 v0, p0

    #@372
    invoke-virtual {v0, v9}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V

    #@375
    .line 315
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@378
    .line 316
    const/16 v26, 0x1

    #@37a
    return v26

    #@37b
    .line 320
    .end local v9    # "_arg0":Landroid/hardware/hdmi/IHdmiRecordListener;
    :sswitch_1c
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@37e
    move-object/from16 v0, p2

    #@380
    move-object/from16 v1, v26

    #@382
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@385
    .line 322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@388
    move-result v3

    #@389
    .line 324
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@38c
    move-result-object v15

    #@38d
    .line 325
    .local v15, "_arg1":[B
    move-object/from16 v0, p0

    #@38f
    invoke-virtual {v0, v3, v15}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->startOneTouchRecord(I[B)V

    #@392
    .line 326
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@395
    .line 327
    const/16 v26, 0x1

    #@397
    return v26

    #@398
    .line 331
    .end local v3    # "_arg0":I
    .end local v15    # "_arg1":[B
    :sswitch_1d
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@39b
    move-object/from16 v0, p2

    #@39d
    move-object/from16 v1, v26

    #@39f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a2
    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3a5
    move-result v3

    #@3a6
    .line 334
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    #@3a8
    invoke-virtual {v0, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->stopOneTouchRecord(I)V

    #@3ab
    .line 335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3ae
    .line 336
    const/16 v26, 0x1

    #@3b0
    return v26

    #@3b1
    .line 340
    .end local v3    # "_arg0":I
    :sswitch_1e
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@3b4
    move-object/from16 v0, p2

    #@3b6
    move-object/from16 v1, v26

    #@3b8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3bb
    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3be
    move-result v3

    #@3bf
    .line 344
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3c2
    move-result v13

    #@3c3
    .line 346
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@3c6
    move-result-object v18

    #@3c7
    .line 347
    .restart local v18    # "_arg2":[B
    move-object/from16 v0, p0

    #@3c9
    move-object/from16 v1, v18

    #@3cb
    invoke-virtual {v0, v3, v13, v1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->startTimerRecording(II[B)V

    #@3ce
    .line 348
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3d1
    .line 349
    const/16 v26, 0x1

    #@3d3
    return v26

    #@3d4
    .line 353
    .end local v3    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v18    # "_arg2":[B
    :sswitch_1f
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@3d7
    move-object/from16 v0, p2

    #@3d9
    move-object/from16 v1, v26

    #@3db
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3de
    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3e1
    move-result v3

    #@3e2
    .line 357
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3e5
    move-result v13

    #@3e6
    .line 359
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@3e9
    move-result-object v18

    #@3ea
    .line 360
    .restart local v18    # "_arg2":[B
    move-object/from16 v0, p0

    #@3ec
    move-object/from16 v1, v18

    #@3ee
    invoke-virtual {v0, v3, v13, v1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->clearTimerRecording(II[B)V

    #@3f1
    .line 361
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3f4
    .line 362
    const/16 v26, 0x1

    #@3f6
    return v26

    #@3f7
    .line 366
    .end local v3    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v18    # "_arg2":[B
    :sswitch_20
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@3fa
    move-object/from16 v0, p2

    #@3fc
    move-object/from16 v1, v26

    #@3fe
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@401
    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@404
    move-result v3

    #@405
    .line 370
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@408
    move-result v13

    #@409
    .line 372
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@40c
    move-result v16

    #@40d
    .line 374
    .restart local v16    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@410
    move-result-object v20

    #@411
    .line 375
    .local v20, "_arg3":[B
    move-object/from16 v0, p0

    #@413
    move/from16 v1, v16

    #@415
    move-object/from16 v2, v20

    #@417
    invoke-virtual {v0, v3, v13, v1, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->sendMhlVendorCommand(III[B)V

    #@41a
    .line 376
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@41d
    .line 377
    const/16 v26, 0x1

    #@41f
    return v26

    #@420
    .line 381
    .end local v3    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v16    # "_arg2":I
    .end local v20    # "_arg3":[B
    :sswitch_21
    const-string/jumbo v26, "android.hardware.hdmi.IHdmiControlService"

    #@423
    move-object/from16 v0, p2

    #@425
    move-object/from16 v1, v26

    #@427
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42a
    .line 383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@42d
    move-result-object v26

    #@42e
    invoke-static/range {v26 .. v26}, Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    #@431
    move-result-object v8

    #@432
    .line 384
    .local v8, "_arg0":Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;
    move-object/from16 v0, p0

    #@434
    invoke-virtual {v0, v8}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V

    #@437
    .line 385
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@43a
    .line 386
    const/16 v26, 0x1

    #@43c
    return v26

    #@43d
    .line 45
    nop

    #@43e
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
