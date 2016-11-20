.class public abstract Landroid/hardware/input/IInputManager$Stub;
.super Landroid/os/Binder;
.source "IInputManager.java"

# interfaces
.implements Landroid/hardware/input/IInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IInputManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.IInputManager"

.field static final TRANSACTION_addKeyboardLayoutForInputDevice:I = 0xe

.field static final TRANSACTION_cancelVibrate:I = 0x16

.field static final TRANSACTION_getCurrentKeyboardLayoutForInputDevice:I = 0xb

.field static final TRANSACTION_getEnabledKeyboardLayoutsForInputDevice:I = 0xd

.field static final TRANSACTION_getInputDevice:I = 0x1

.field static final TRANSACTION_getInputDeviceIds:I = 0x2

.field static final TRANSACTION_getKeyboardLayout:I = 0xa

.field static final TRANSACTION_getKeyboardLayoutForInputDevice:I = 0x10

.field static final TRANSACTION_getKeyboardLayouts:I = 0x8

.field static final TRANSACTION_getKeyboardLayoutsForInputDevice:I = 0x9

.field static final TRANSACTION_getTouchCalibrationForInputDevice:I = 0x6

.field static final TRANSACTION_hasKeys:I = 0x3

.field static final TRANSACTION_injectInputEvent:I = 0x5

.field static final TRANSACTION_isInTabletMode:I = 0x13

.field static final TRANSACTION_registerInputDevicesChangedListener:I = 0x12

.field static final TRANSACTION_registerTabletModeChangedListener:I = 0x14

.field static final TRANSACTION_removeKeyboardLayoutForInputDevice:I = 0xf

.field static final TRANSACTION_setCurrentKeyboardLayoutForInputDevice:I = 0xc

.field static final TRANSACTION_setCustomPointerIcon:I = 0x18

.field static final TRANSACTION_setKeyboardLayoutForInputDevice:I = 0x11

.field static final TRANSACTION_setPointerIconType:I = 0x17

.field static final TRANSACTION_setTouchCalibrationForInputDevice:I = 0x7

.field static final TRANSACTION_tryPointerSpeed:I = 0x4

.field static final TRANSACTION_vibrate:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.hardware.input.IInputManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/hardware/input/IInputManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 24
    if-nez p0, :cond_0

    #@3
    .line 25
    return-object v1

    #@4
    .line 27
    :cond_0
    const-string/jumbo v1, "android.hardware.input.IInputManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/hardware/input/IInputManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/hardware/input/IInputManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/input/IInputManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 33
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 413
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v32

    #@7
    return v32

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v32, "android.hardware.input.IInputManager"

    #@b
    move-object/from16 v0, p3

    #@d
    move-object/from16 v1, v32

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 44
    const/16 v32, 0x1

    #@14
    return v32

    #@15
    .line 48
    :sswitch_1
    const-string/jumbo v32, "android.hardware.input.IInputManager"

    #@18
    move-object/from16 v0, p2

    #@1a
    move-object/from16 v1, v32

    #@1c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f
    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v3

    #@23
    .line 51
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    #@25
    invoke-virtual {v0, v3}, Landroid/hardware/input/IInputManager$Stub;->getInputDevice(I)Landroid/view/InputDevice;

    #@28
    move-result-object v26

    #@29
    .line 52
    .local v26, "_result":Landroid/view/InputDevice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c
    .line 53
    if-eqz v26, :cond_0

    #@2e
    .line 54
    const/16 v32, 0x1

    #@30
    move-object/from16 v0, p3

    #@32
    move/from16 v1, v32

    #@34
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 55
    const/16 v32, 0x1

    #@39
    move-object/from16 v0, v26

    #@3b
    move-object/from16 v1, p3

    #@3d
    move/from16 v2, v32

    #@3f
    invoke-virtual {v0, v1, v2}, Landroid/view/InputDevice;->writeToParcel(Landroid/os/Parcel;I)V

    #@42
    .line 60
    :goto_0
    const/16 v32, 0x1

    #@44
    return v32

    #@45
    .line 58
    :cond_0
    const/16 v32, 0x0

    #@47
    move-object/from16 v0, p3

    #@49
    move/from16 v1, v32

    #@4b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4e
    goto :goto_0

    #@4f
    .line 64
    .end local v3    # "_arg0":I
    .end local v26    # "_result":Landroid/view/InputDevice;
    :sswitch_2
    const-string/jumbo v32, "android.hardware.input.IInputManager"

    #@52
    move-object/from16 v0, p2

    #@54
    move-object/from16 v1, v32

    #@56
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@59
    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getInputDeviceIds()[I

    #@5c
    move-result-object v29

    #@5d
    .line 66
    .local v29, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@60
    .line 67
    move-object/from16 v0, p3

    #@62
    move-object/from16 v1, v29

    #@64
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@67
    .line 68
    const/16 v32, 0x1

    #@69
    return v32

    #@6a
    .line 72
    .end local v29    # "_result":[I
    :sswitch_3
    const-string/jumbo v32, "android.hardware.input.IInputManager"

    #@6d
    move-object/from16 v0, p2

    #@6f
    move-object/from16 v1, v32

    #@71
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@74
    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@77
    move-result v3

    #@78
    .line 76
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7b
    move-result v10

    #@7c
    .line 78
    .local v10, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@7f
    move-result-object v18

    #@80
    .line 80
    .local v18, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@83
    move-result v22

    #@84
    .line 81
    .local v22, "_arg3_length":I
    if-gez v22, :cond_1

    #@86
    .line 82
    const/16 v21, 0x0

    #@88
    .line 87
    :goto_1
    move-object/from16 v0, p0

    #@8a
    move-object/from16 v1, v18

    #@8c
    move-object/from16 v2, v21

    #@8e
    invoke-virtual {v0, v3, v10, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->hasKeys(II[I[Z)Z

    #@91
    move-result v28

    #@92
    .line 88
    .local v28, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@95
    .line 89
    if-eqz v28, :cond_2

    #@97
    const/16 v32, 0x1

    #@99
    :goto_2
    move-object/from16 v0, p3

    #@9b
    move/from16 v1, v32

    #@9d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a0
    .line 90
    move-object/from16 v0, p3

    #@a2
    move-object/from16 v1, v21

    #@a4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    #@a7
    .line 91
    const/16 v32, 0x1

    #@a9
    return v32

    #@aa
    .line 85
    .end local v28    # "_result":Z
    :cond_1
    move/from16 v0, v22

    #@ac
    new-array v0, v0, [Z

    #@ae
    move-object/from16 v21, v0

    #@b0
    .local v21, "_arg3":[Z
    goto :goto_1

    #@b1
    .line 89
    .end local v21    # "_arg3":[Z
    .restart local v28    # "_result":Z
    :cond_2
    const/16 v32, 0x0

    #@b3
    goto :goto_2

    #@b4
    .line 95
    .end local v3    # "_arg0":I
    .end local v10    # "_arg1":I
    .end local v18    # "_arg2":[I
    .end local v22    # "_arg3_length":I
    .end local v28    # "_result":Z
    :sswitch_4
    const-string/jumbo v32, "android.hardware.input.IInputManager"

    #@b7
    move-object/from16 v0, p2

    #@b9
    move-object/from16 v1, v32

    #@bb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@be
    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c1
    move-result v3

    #@c2
    .line 98
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    #@c4
    invoke-virtual {v0, v3}, Landroid/hardware/input/IInputManager$Stub;->tryPointerSpeed(I)V

    #@c7
    .line 99
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ca
    .line 100
    const/16 v32, 0x1

    #@cc
    return v32

    #@cd
    .line 104
    .end local v3    # "_arg0":I
    :sswitch_5
    const-string/jumbo v32, "android.hardware.input.IInputManager"

    #@d0
    move-object/from16 v0, p2

    #@d2
    move-object/from16 v1, v32

    #@d4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d7
    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@da
    move-result v32

    #@db
    if-eqz v32, :cond_3

    #@dd
    .line 107
    sget-object v32, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@df
    move-object/from16 v0, v32

    #@e1
    move-object/from16 v1, p2

    #@e3
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e6
    move-result-object v7

    #@e7
    check-cast v7, Landroid/view/InputEvent;

    #@e9
    .line 113
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ec
    move-result v10

    #@ed
    .line 114
    .restart local v10    # "_arg1":I
    move-object/from16 v0, p0

    #@ef
    invoke-virtual {v0, v7, v10}, Landroid/hardware/input/IInputManager$Stub;->injectInputEvent(Landroid/view/InputEvent;I)Z

    #@f2
    move-result v28

    #@f3
    .line 115
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f6
    .line 116
    if-eqz v28, :cond_4

    #@f8
    const/16 v32, 0x1

    #@fa
    :goto_4
    move-object/from16 v0, p3

    #@fc
    move/from16 v1, v32

    #@fe
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@101
    .line 117
    const/16 v32, 0x1

    #@103
    return v32

    #@104
    .line 110
    .end local v10    # "_arg1":I
    .end local v28    # "_result":Z
    :cond_3
    const/4 v7, 0x0

    #@105
    .local v7, "_arg0":Landroid/view/InputEvent;
    goto :goto_3

    #@106
    .line 116
    .end local v7    # "_arg0":Landroid/view/InputEvent;
    .restart local v10    # "_arg1":I
    .restart local v28    # "_result":Z
    :cond_4
    const/16 v32, 0x0

    #@108
    goto :goto_4

    #@109
    .line 121
    .end local v10    # "_arg1":I
    .end local v28    # "_result":Z
    :sswitch_6
    const-string/jumbo v32, "android.hardware.input.IInputManager"

    #@10c
    move-object/from16 v0, p2

    #@10e
    move-object/from16 v1, v32

    #@110
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@113
    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@116
    move-result-object v9

    #@117
    .line 125
    .local v9, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11a
    move-result v10

    #@11b
    .line 126
    .restart local v10    # "_arg1":I
    move-object/from16 v0, p0

    #@11d
    invoke-virtual {v0, v9, v10}, Landroid/hardware/input/IInputManager$Stub;->getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

    #@120
    move-result-object v25

    #@121
    .line 127
    .local v25, "_result":Landroid/hardware/input/TouchCalibration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@124
    .line 128
    if-eqz v25, :cond_5

    #@126
    .line 129
    const/16 v32, 0x1

    #@128
    move-object/from16 v0, p3

    #@12a
    move/from16 v1, v32

    #@12c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@12f
    .line 130
    const/16 v32, 0x1

    #@131
    move-object/from16 v0, v25

    #@133
    move-object/from16 v1, p3

    #@135
    move/from16 v2, v32

    #@137
    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/TouchCalibration;->writeToParcel(Landroid/os/Parcel;I)V

    #@13a
    .line 135
    :goto_5
    const/16 v32, 0x1

    #@13c
    return v32

    #@13d
    .line 133
    :cond_5
    const/16 v32, 0x0

    #@13f
    move-object/from16 v0, p3

    #@141
    move/from16 v1, v32

    #@143
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@146
    goto :goto_5

    #@147
    .line 139
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":I
    .end local v25    # "_result":Landroid/hardware/input/TouchCalibration;
    :sswitch_7
    const-string/jumbo v32, "android.hardware.input.IInputManager"

    #@14a
    move-object/from16 v0, p2

    #@14c
    move-object/from16 v1, v32

    #@14e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@151
    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@154
    move-result-object v9

    #@155
    .line 143
    .restart local v9    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@158
    move-result v10

    #@159
    .line 145
    .restart local v10    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15c
    move-result v32

    #@15d
    if-eqz v32, :cond_6

    #@15f
    .line 146
    sget-object v32, Landroid/hardware/input/TouchCalibration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@161
    move-object/from16 v0, v32

    #@163
    move-object/from16 v1, p2

    #@165
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@168
    move-result-object v16

    #@169
    check-cast v16, Landroid/hardware/input/TouchCalibration;

    #@16b
    .line 151
    :goto_6
    move-object/from16 v0, p0

    #@16d
    move-object/from16 v1, v16

    #@16f
    invoke-virtual {v0, v9, v10, v1}, Landroid/hardware/input/IInputManager$Stub;->setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V

    #@172
    .line 152
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@175
    .line 153
    const/16 v32, 0x1

    #@177
    return v32

    #@178
    .line 149
    :cond_6
    const/16 v16, 0x0

    #@17a
    .local v16, "_arg2":Landroid/hardware/input/TouchCalibration;
    goto :goto_6

    #@17b
    .line 157
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":I
    .end local v16    # "_arg2":Landroid/hardware/input/TouchCalibration;
    :sswitch_8
    const-string/jumbo v32, "android.hardware.input.IInputManager"

    #@17e
    move-object/from16 v0, p2

    #@180
    move-object/from16 v1, v32

    #@182
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@185
    .line 158
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;

    #@188
    move-result-object v30

    #@189
    .line 159
    .local v30, "_result":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@18c
    .line 160
    const/16 v32, 0x1

    #@18e
    move-object/from16 v0, p3

    #@190
    move-object/from16 v1, v30

    #@192
    move/from16 v2, v32

    #@194
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@197
    .line 161
    const/16 v32, 0x1

    #@199
    return v32

    #@19a
    .line 165
    .end local v30    # "_result":[Landroid/hardware/input/KeyboardLayout;
    :sswitch_9
    const-string/jumbo v32, "android.hardware.input.IInputManager"

    #@19d
    move-object/from16 v0, p2

    #@19f
    move-object/from16 v1, v32

    #@1a1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a4
    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a7
    move-result v32

    #@1a8
    if-eqz v32, :cond_7

    #@1aa
    .line 168
    sget-object v32, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1ac
    move-object/from16 v0, v32

    #@1ae
    move-object/from16 v1, p2

    #@1b0
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1b3
    move-result-object v6

    #@1b4
    check-cast v6, Landroid/hardware/input/InputDeviceIdentifier;

    #@1b6
    .line 173
    :goto_7
    move-object/from16 v0, p0

    #@1b8
    invoke-virtual {v0, v6}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;

    #@1bb
    move-result-object v30

    #@1bc
    .line 174
    .restart local v30    # "_result":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1bf
    .line 175
    const/16 v32, 0x1

    #@1c1
    move-object/from16 v0, p3

    #@1c3
    move-object/from16 v1, v30

    #@1c5
    move/from16 v2, v32

    #@1c7
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@1ca
    .line 176
    const/16 v32, 0x1

    #@1cc
    return v32

    #@1cd
    .line 171
    .end local v30    # "_result":[Landroid/hardware/input/KeyboardLayout;
    :cond_7
    const/4 v6, 0x0

    #@1ce
    .local v6, "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_7

    #@1cf
    .line 180
    .end local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_a
    const-string/jumbo v32, "android.hardware.input.IInputManager"

    #@1d2
    move-object/from16 v0, p2

    #@1d4
    move-object/from16 v1, v32

    #@1d6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d9
    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1dc
    move-result-object v9

    #@1dd
    .line 183
    .restart local v9    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1df
    invoke-virtual {v0, v9}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    #@1e2
    move-result-object v24

    #@1e3
    .line 184
    .local v24, "_result":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e6
    .line 185
    if-eqz v24, :cond_8

    #@1e8
    .line 186
    const/16 v32, 0x1

    #@1ea
    move-object/from16 v0, p3

    #@1ec
    move/from16 v1, v32

    #@1ee
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1f1
    .line 187
    const/16 v32, 0x1

    #@1f3
    move-object/from16 v0, v24

    #@1f5
    move-object/from16 v1, p3

    #@1f7
    move/from16 v2, v32

    #@1f9
    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/KeyboardLayout;->writeToParcel(Landroid/os/Parcel;I)V

    #@1fc
    .line 192
    :goto_8
    const/16 v32, 0x1

    #@1fe
    return v32

    #@1ff
    .line 190
    :cond_8
    const/16 v32, 0x0

    #@201
    move-object/from16 v0, p3

    #@203
    move/from16 v1, v32

    #@205
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@208
    goto :goto_8

    #@209
    .line 196
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v24    # "_result":Landroid/hardware/input/KeyboardLayout;
    :sswitch_b
    const-string/jumbo v32, "android.hardware.input.IInputManager"

    #@20c
    move-object/from16 v0, p2

    #@20e
    move-object/from16 v1, v32

    #@210
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@213
    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@216
    move-result v32

    #@217
    if-eqz v32, :cond_9

    #@219
    .line 199
    sget-object v32, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21b
    move-object/from16 v0, v32

    #@21d
    move-object/from16 v1, p2

    #@21f
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@222
    move-result-object v6

    #@223
    check-cast v6, Landroid/hardware/input/InputDeviceIdentifier;

    #@225
    .line 204
    :goto_9
    move-object/from16 v0, p0

    #@227
    invoke-virtual {v0, v6}, Landroid/hardware/input/IInputManager$Stub;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    #@22a
    move-result-object v27

    #@22b
    .line 205
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@22e
    .line 206
    move-object/from16 v0, p3

    #@230
    move-object/from16 v1, v27

    #@232
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@235
    .line 207
    const/16 v32, 0x1

    #@237
    return v32

    #@238
    .line 202
    .end local v27    # "_result":Ljava/lang/String;
    :cond_9
    const/4 v6, 0x0

    #@239
    .restart local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_9

    #@23a
    .line 211
    .end local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_c
    const-string/jumbo v32, "android.hardware.input.IInputManager"

    #@23d
    move-object/from16 v0, p2

    #@23f
    move-object/from16 v1, v32

    #@241
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@244
    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@247
    move-result v32

    #@248
    if-eqz v32, :cond_a

    #@24a
    .line 214
    sget-object v32, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    #@24c
    move-object/from16 v0, v32

    #@24e
    move-object/from16 v1, p2

    #@250
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@253
    move-result-object v6

    #@254
    check-cast v6, Landroid/hardware/input/InputDeviceIdentifier;

    #@256
    .line 220
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@259
    move-result-object v13

    #@25a
    .line 221
    .local v13, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@25c
    invoke-virtual {v0, v6, v13}, Landroid/hardware/input/IInputManager$Stub;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    #@25f
    .line 222
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@262
    .line 223
    const/16 v32, 0x1

    #@264
    return v32

    #@265
    .line 217
    .end local v13    # "_arg1":Ljava/lang/String;
    :cond_a
    const/4 v6, 0x0

    #@266
    .restart local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_a

    #@267
    .line 227
    .end local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_d
    const-string/jumbo v32, "android.hardware.input.IInputManager"

    #@26a
    move-object/from16 v0, p2

    #@26c
    move-object/from16 v1, v32

    #@26e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@271
    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@274
    move-result v32

    #@275
    if-eqz v32, :cond_b

    #@277
    .line 230
    sget-object v32, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    #@279
    move-object/from16 v0, v32

    #@27b
    move-object/from16 v1, p2

    #@27d
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@280
    move-result-object v6

    #@281
    check-cast v6, Landroid/hardware/input/InputDeviceIdentifier;

    #@283
    .line 235
    :goto_b
    move-object/from16 v0, p0

    #@285
    invoke-virtual {v0, v6}, Landroid/hardware/input/IInputManager$Stub;->getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    #@288
    move-result-object v31

    #@289
    .line 236
    .local v31, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@28c
    .line 237
    move-object/from16 v0, p3

    #@28e
    move-object/from16 v1, v31

    #@290
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@293
    .line 238
    const/16 v32, 0x1

    #@295
    return v32

    #@296
    .line 233
    .end local v31    # "_result":[Ljava/lang/String;
    :cond_b
    const/4 v6, 0x0

    #@297
    .restart local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_b

    #@298
    .line 242
    .end local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_e
    const-string/jumbo v32, "android.hardware.input.IInputManager"

    #@29b
    move-object/from16 v0, p2

    #@29d
    move-object/from16 v1, v32

    #@29f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a2
    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a5
    move-result v32

    #@2a6
    if-eqz v32, :cond_c

    #@2a8
    .line 245
    sget-object v32, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2aa
    move-object/from16 v0, v32

    #@2ac
    move-object/from16 v1, p2

    #@2ae
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2b1
    move-result-object v6

    #@2b2
    check-cast v6, Landroid/hardware/input/InputDeviceIdentifier;

    #@2b4
    .line 251
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2b7
    move-result-object v13

    #@2b8
    .line 252
    .restart local v13    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2ba
    invoke-virtual {v0, v6, v13}, Landroid/hardware/input/IInputManager$Stub;->addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    #@2bd
    .line 253
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c0
    .line 254
    const/16 v32, 0x1

    #@2c2
    return v32

    #@2c3
    .line 248
    .end local v13    # "_arg1":Ljava/lang/String;
    :cond_c
    const/4 v6, 0x0

    #@2c4
    .restart local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_c

    #@2c5
    .line 258
    .end local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_f
    const-string/jumbo v32, "android.hardware.input.IInputManager"

    #@2c8
    move-object/from16 v0, p2

    #@2ca
    move-object/from16 v1, v32

    #@2cc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2cf
    .line 260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d2
    move-result v32

    #@2d3
    if-eqz v32, :cond_d

    #@2d5
    .line 261
    sget-object v32, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2d7
    move-object/from16 v0, v32

    #@2d9
    move-object/from16 v1, p2

    #@2db
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2de
    move-result-object v6

    #@2df
    check-cast v6, Landroid/hardware/input/InputDeviceIdentifier;

    #@2e1
    .line 267
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2e4
    move-result-object v13

    #@2e5
    .line 268
    .restart local v13    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2e7
    invoke-virtual {v0, v6, v13}, Landroid/hardware/input/IInputManager$Stub;->removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    #@2ea
    .line 269
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ed
    .line 270
    const/16 v32, 0x1

    #@2ef
    return v32

    #@2f0
    .line 264
    .end local v13    # "_arg1":Ljava/lang/String;
    :cond_d
    const/4 v6, 0x0

    #@2f1
    .restart local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_d

    #@2f2
    .line 274
    .end local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_10
    const-string/jumbo v32, "android.hardware.input.IInputManager"

    #@2f5
    move-object/from16 v0, p2

    #@2f7
    move-object/from16 v1, v32

    #@2f9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2fc
    .line 276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ff
    move-result v32

    #@300
    if-eqz v32, :cond_e

    #@302
    .line 277
    sget-object v32, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    #@304
    move-object/from16 v0, v32

    #@306
    move-object/from16 v1, p2

    #@308
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@30b
    move-result-object v6

    #@30c
    check-cast v6, Landroid/hardware/input/InputDeviceIdentifier;

    #@30e
    .line 283
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@311
    move-result v32

    #@312
    if-eqz v32, :cond_f

    #@314
    .line 284
    sget-object v32, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@316
    move-object/from16 v0, v32

    #@318
    move-object/from16 v1, p2

    #@31a
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@31d
    move-result-object v12

    #@31e
    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    #@320
    .line 290
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@323
    move-result v32

    #@324
    if-eqz v32, :cond_10

    #@326
    .line 291
    sget-object v32, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    #@328
    move-object/from16 v0, v32

    #@32a
    move-object/from16 v1, p2

    #@32c
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@32f
    move-result-object v17

    #@330
    check-cast v17, Landroid/view/inputmethod/InputMethodSubtype;

    #@332
    .line 296
    :goto_10
    move-object/from16 v0, p0

    #@334
    move-object/from16 v1, v17

    #@336
    invoke-virtual {v0, v6, v12, v1}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayout;

    #@339
    move-result-object v24

    #@33a
    .line 297
    .restart local v24    # "_result":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@33d
    .line 298
    if-eqz v24, :cond_11

    #@33f
    .line 299
    const/16 v32, 0x1

    #@341
    move-object/from16 v0, p3

    #@343
    move/from16 v1, v32

    #@345
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@348
    .line 300
    const/16 v32, 0x1

    #@34a
    move-object/from16 v0, v24

    #@34c
    move-object/from16 v1, p3

    #@34e
    move/from16 v2, v32

    #@350
    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/KeyboardLayout;->writeToParcel(Landroid/os/Parcel;I)V

    #@353
    .line 305
    :goto_11
    const/16 v32, 0x1

    #@355
    return v32

    #@356
    .line 280
    .end local v24    # "_result":Landroid/hardware/input/KeyboardLayout;
    :cond_e
    const/4 v6, 0x0

    #@357
    .restart local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_e

    #@358
    .line 287
    .end local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :cond_f
    const/4 v12, 0x0

    #@359
    .local v12, "_arg1":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_f

    #@35a
    .line 294
    .end local v12    # "_arg1":Landroid/view/inputmethod/InputMethodInfo;
    :cond_10
    const/16 v17, 0x0

    #@35c
    .local v17, "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_10

    #@35d
    .line 303
    .end local v17    # "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    .restart local v24    # "_result":Landroid/hardware/input/KeyboardLayout;
    :cond_11
    const/16 v32, 0x0

    #@35f
    move-object/from16 v0, p3

    #@361
    move/from16 v1, v32

    #@363
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@366
    goto :goto_11

    #@367
    .line 309
    .end local v24    # "_result":Landroid/hardware/input/KeyboardLayout;
    :sswitch_11
    const-string/jumbo v32, "android.hardware.input.IInputManager"

    #@36a
    move-object/from16 v0, p2

    #@36c
    move-object/from16 v1, v32

    #@36e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@371
    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@374
    move-result v32

    #@375
    if-eqz v32, :cond_12

    #@377
    .line 312
    sget-object v32, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    #@379
    move-object/from16 v0, v32

    #@37b
    move-object/from16 v1, p2

    #@37d
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@380
    move-result-object v6

    #@381
    check-cast v6, Landroid/hardware/input/InputDeviceIdentifier;

    #@383
    .line 318
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@386
    move-result v32

    #@387
    if-eqz v32, :cond_13

    #@389
    .line 319
    sget-object v32, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@38b
    move-object/from16 v0, v32

    #@38d
    move-object/from16 v1, p2

    #@38f
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@392
    move-result-object v12

    #@393
    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    #@395
    .line 325
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@398
    move-result v32

    #@399
    if-eqz v32, :cond_14

    #@39b
    .line 326
    sget-object v32, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    #@39d
    move-object/from16 v0, v32

    #@39f
    move-object/from16 v1, p2

    #@3a1
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3a4
    move-result-object v17

    #@3a5
    check-cast v17, Landroid/view/inputmethod/InputMethodSubtype;

    #@3a7
    .line 332
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3aa
    move-result-object v20

    #@3ab
    .line 333
    .local v20, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3ad
    move-object/from16 v1, v17

    #@3af
    move-object/from16 v2, v20

    #@3b1
    invoke-virtual {v0, v6, v12, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V

    #@3b4
    .line 334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3b7
    .line 335
    const/16 v32, 0x1

    #@3b9
    return v32

    #@3ba
    .line 315
    .end local v20    # "_arg3":Ljava/lang/String;
    :cond_12
    const/4 v6, 0x0

    #@3bb
    .restart local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_12

    #@3bc
    .line 322
    .end local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :cond_13
    const/4 v12, 0x0

    #@3bd
    .restart local v12    # "_arg1":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_13

    #@3be
    .line 329
    .end local v12    # "_arg1":Landroid/view/inputmethod/InputMethodInfo;
    :cond_14
    const/16 v17, 0x0

    #@3c0
    .restart local v17    # "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_14

    #@3c1
    .line 339
    .end local v17    # "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    :sswitch_12
    const-string/jumbo v32, "android.hardware.input.IInputManager"

    #@3c4
    move-object/from16 v0, p2

    #@3c6
    move-object/from16 v1, v32

    #@3c8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3cb
    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3ce
    move-result-object v32

    #@3cf
    invoke-static/range {v32 .. v32}, Landroid/hardware/input/IInputDevicesChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputDevicesChangedListener;

    #@3d2
    move-result-object v4

    #@3d3
    .line 342
    .local v4, "_arg0":Landroid/hardware/input/IInputDevicesChangedListener;
    move-object/from16 v0, p0

    #@3d5
    invoke-virtual {v0, v4}, Landroid/hardware/input/IInputManager$Stub;->registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V

    #@3d8
    .line 343
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3db
    .line 344
    const/16 v32, 0x1

    #@3dd
    return v32

    #@3de
    .line 348
    .end local v4    # "_arg0":Landroid/hardware/input/IInputDevicesChangedListener;
    :sswitch_13
    const-string/jumbo v32, "android.hardware.input.IInputManager"

    #@3e1
    move-object/from16 v0, p2

    #@3e3
    move-object/from16 v1, v32

    #@3e5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e8
    .line 349
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->isInTabletMode()I

    #@3eb
    move-result v23

    #@3ec
    .line 350
    .local v23, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3ef
    .line 351
    move-object/from16 v0, p3

    #@3f1
    move/from16 v1, v23

    #@3f3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3f6
    .line 352
    const/16 v32, 0x1

    #@3f8
    return v32

    #@3f9
    .line 356
    .end local v23    # "_result":I
    :sswitch_14
    const-string/jumbo v32, "android.hardware.input.IInputManager"

    #@3fc
    move-object/from16 v0, p2

    #@3fe
    move-object/from16 v1, v32

    #@400
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@403
    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@406
    move-result-object v32

    #@407
    invoke-static/range {v32 .. v32}, Landroid/hardware/input/ITabletModeChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/ITabletModeChangedListener;

    #@40a
    move-result-object v5

    #@40b
    .line 359
    .local v5, "_arg0":Landroid/hardware/input/ITabletModeChangedListener;
    move-object/from16 v0, p0

    #@40d
    invoke-virtual {v0, v5}, Landroid/hardware/input/IInputManager$Stub;->registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V

    #@410
    .line 360
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@413
    .line 361
    const/16 v32, 0x1

    #@415
    return v32

    #@416
    .line 365
    .end local v5    # "_arg0":Landroid/hardware/input/ITabletModeChangedListener;
    :sswitch_15
    const-string/jumbo v32, "android.hardware.input.IInputManager"

    #@419
    move-object/from16 v0, p2

    #@41b
    move-object/from16 v1, v32

    #@41d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@420
    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@423
    move-result v3

    #@424
    .line 369
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    #@427
    move-result-object v14

    #@428
    .line 371
    .local v14, "_arg1":[J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@42b
    move-result v15

    #@42c
    .line 373
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@42f
    move-result-object v19

    #@430
    .line 374
    .local v19, "_arg3":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@432
    move-object/from16 v1, v19

    #@434
    invoke-virtual {v0, v3, v14, v15, v1}, Landroid/hardware/input/IInputManager$Stub;->vibrate(I[JILandroid/os/IBinder;)V

    #@437
    .line 375
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@43a
    .line 376
    const/16 v32, 0x1

    #@43c
    return v32

    #@43d
    .line 380
    .end local v3    # "_arg0":I
    .end local v14    # "_arg1":[J
    .end local v15    # "_arg2":I
    .end local v19    # "_arg3":Landroid/os/IBinder;
    :sswitch_16
    const-string/jumbo v32, "android.hardware.input.IInputManager"

    #@440
    move-object/from16 v0, p2

    #@442
    move-object/from16 v1, v32

    #@444
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@447
    .line 382
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@44a
    move-result v3

    #@44b
    .line 384
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@44e
    move-result-object v11

    #@44f
    .line 385
    .local v11, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@451
    invoke-virtual {v0, v3, v11}, Landroid/hardware/input/IInputManager$Stub;->cancelVibrate(ILandroid/os/IBinder;)V

    #@454
    .line 386
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@457
    .line 387
    const/16 v32, 0x1

    #@459
    return v32

    #@45a
    .line 391
    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":Landroid/os/IBinder;
    :sswitch_17
    const-string/jumbo v32, "android.hardware.input.IInputManager"

    #@45d
    move-object/from16 v0, p2

    #@45f
    move-object/from16 v1, v32

    #@461
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@464
    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@467
    move-result v3

    #@468
    .line 394
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    #@46a
    invoke-virtual {v0, v3}, Landroid/hardware/input/IInputManager$Stub;->setPointerIconType(I)V

    #@46d
    .line 395
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@470
    .line 396
    const/16 v32, 0x1

    #@472
    return v32

    #@473
    .line 400
    .end local v3    # "_arg0":I
    :sswitch_18
    const-string/jumbo v32, "android.hardware.input.IInputManager"

    #@476
    move-object/from16 v0, p2

    #@478
    move-object/from16 v1, v32

    #@47a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@47d
    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@480
    move-result v32

    #@481
    if-eqz v32, :cond_15

    #@483
    .line 403
    sget-object v32, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    #@485
    move-object/from16 v0, v32

    #@487
    move-object/from16 v1, p2

    #@489
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@48c
    move-result-object v8

    #@48d
    check-cast v8, Landroid/view/PointerIcon;

    #@48f
    .line 408
    :goto_15
    move-object/from16 v0, p0

    #@491
    invoke-virtual {v0, v8}, Landroid/hardware/input/IInputManager$Stub;->setCustomPointerIcon(Landroid/view/PointerIcon;)V

    #@494
    .line 409
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@497
    .line 410
    const/16 v32, 0x1

    #@499
    return v32

    #@49a
    .line 406
    :cond_15
    const/4 v8, 0x0

    #@49b
    .local v8, "_arg0":Landroid/view/PointerIcon;
    goto :goto_15

    #@49c
    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
