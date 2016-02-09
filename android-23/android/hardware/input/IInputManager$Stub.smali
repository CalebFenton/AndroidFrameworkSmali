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

.field static final TRANSACTION_addKeyboardLayoutForInputDevice:I = 0xd

.field static final TRANSACTION_cancelVibrate:I = 0x11

.field static final TRANSACTION_getCurrentKeyboardLayoutForInputDevice:I = 0xa

.field static final TRANSACTION_getInputDevice:I = 0x1

.field static final TRANSACTION_getInputDeviceIds:I = 0x2

.field static final TRANSACTION_getKeyboardLayout:I = 0x9

.field static final TRANSACTION_getKeyboardLayouts:I = 0x8

.field static final TRANSACTION_getKeyboardLayoutsForInputDevice:I = 0xc

.field static final TRANSACTION_getTouchCalibrationForInputDevice:I = 0x6

.field static final TRANSACTION_hasKeys:I = 0x3

.field static final TRANSACTION_injectInputEvent:I = 0x5

.field static final TRANSACTION_registerInputDevicesChangedListener:I = 0xf

.field static final TRANSACTION_removeKeyboardLayoutForInputDevice:I = 0xe

.field static final TRANSACTION_setCurrentKeyboardLayoutForInputDevice:I = 0xb

.field static final TRANSACTION_setTouchCalibrationForInputDevice:I = 0x7

.field static final TRANSACTION_tryPointerSpeed:I = 0x4

.field static final TRANSACTION_vibrate:I = 0x10


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
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 293
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v26

    #@7
    return v26

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    #@b
    move-object/from16 v0, p3

    #@d
    move-object/from16 v1, v26

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 44
    const/16 v26, 0x1

    #@14
    return v26

    #@15
    .line 48
    :sswitch_1
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    #@18
    move-object/from16 v0, p2

    #@1a
    move-object/from16 v1, v26

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
    move-result-object v20

    #@29
    .line 52
    .local v20, "_result":Landroid/view/InputDevice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c
    .line 53
    if-eqz v20, :cond_0

    #@2e
    .line 54
    const/16 v26, 0x1

    #@30
    move-object/from16 v0, p3

    #@32
    move/from16 v1, v26

    #@34
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 55
    const/16 v26, 0x1

    #@39
    move-object/from16 v0, v20

    #@3b
    move-object/from16 v1, p3

    #@3d
    move/from16 v2, v26

    #@3f
    invoke-virtual {v0, v1, v2}, Landroid/view/InputDevice;->writeToParcel(Landroid/os/Parcel;I)V

    #@42
    .line 60
    :goto_0
    const/16 v26, 0x1

    #@44
    return v26

    #@45
    .line 58
    :cond_0
    const/16 v26, 0x0

    #@47
    move-object/from16 v0, p3

    #@49
    move/from16 v1, v26

    #@4b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4e
    goto :goto_0

    #@4f
    .line 64
    .end local v3    # "_arg0":I
    .end local v20    # "_result":Landroid/view/InputDevice;
    :sswitch_2
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    #@52
    move-object/from16 v0, p2

    #@54
    move-object/from16 v1, v26

    #@56
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@59
    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getInputDeviceIds()[I

    #@5c
    move-result-object v23

    #@5d
    .line 66
    .local v23, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@60
    .line 67
    move-object/from16 v0, p3

    #@62
    move-object/from16 v1, v23

    #@64
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@67
    .line 68
    const/16 v26, 0x1

    #@69
    return v26

    #@6a
    .line 72
    .end local v23    # "_result":[I
    :sswitch_3
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    #@6d
    move-object/from16 v0, p2

    #@6f
    move-object/from16 v1, v26

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
    move-result v8

    #@7c
    .line 78
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@7f
    move-result-object v14

    #@80
    .line 80
    .local v14, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@83
    move-result v17

    #@84
    .line 81
    .local v17, "_arg3_length":I
    if-gez v17, :cond_1

    #@86
    .line 82
    const/16 v16, 0x0

    #@88
    .line 87
    :goto_1
    move-object/from16 v0, p0

    #@8a
    move-object/from16 v1, v16

    #@8c
    invoke-virtual {v0, v3, v8, v14, v1}, Landroid/hardware/input/IInputManager$Stub;->hasKeys(II[I[Z)Z

    #@8f
    move-result v22

    #@90
    .line 88
    .local v22, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@93
    .line 89
    if-eqz v22, :cond_2

    #@95
    const/16 v26, 0x1

    #@97
    :goto_2
    move-object/from16 v0, p3

    #@99
    move/from16 v1, v26

    #@9b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@9e
    .line 90
    move-object/from16 v0, p3

    #@a0
    move-object/from16 v1, v16

    #@a2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    #@a5
    .line 91
    const/16 v26, 0x1

    #@a7
    return v26

    #@a8
    .line 85
    .end local v22    # "_result":Z
    :cond_1
    move/from16 v0, v17

    #@aa
    new-array v0, v0, [Z

    #@ac
    move-object/from16 v16, v0

    #@ae
    .local v16, "_arg3":[Z
    goto :goto_1

    #@af
    .line 89
    .end local v16    # "_arg3":[Z
    .restart local v22    # "_result":Z
    :cond_2
    const/16 v26, 0x0

    #@b1
    goto :goto_2

    #@b2
    .line 95
    .end local v3    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v14    # "_arg2":[I
    .end local v17    # "_arg3_length":I
    .end local v22    # "_result":Z
    :sswitch_4
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    #@b5
    move-object/from16 v0, p2

    #@b7
    move-object/from16 v1, v26

    #@b9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bc
    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bf
    move-result v3

    #@c0
    .line 98
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    #@c2
    invoke-virtual {v0, v3}, Landroid/hardware/input/IInputManager$Stub;->tryPointerSpeed(I)V

    #@c5
    .line 99
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c8
    .line 100
    const/16 v26, 0x1

    #@ca
    return v26

    #@cb
    .line 104
    .end local v3    # "_arg0":I
    :sswitch_5
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    #@ce
    move-object/from16 v0, p2

    #@d0
    move-object/from16 v1, v26

    #@d2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d5
    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d8
    move-result v26

    #@d9
    if-eqz v26, :cond_3

    #@db
    .line 107
    sget-object v26, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@dd
    move-object/from16 v0, v26

    #@df
    move-object/from16 v1, p2

    #@e1
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e4
    move-result-object v6

    #@e5
    check-cast v6, Landroid/view/InputEvent;

    #@e7
    .line 113
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ea
    move-result v8

    #@eb
    .line 114
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@ed
    invoke-virtual {v0, v6, v8}, Landroid/hardware/input/IInputManager$Stub;->injectInputEvent(Landroid/view/InputEvent;I)Z

    #@f0
    move-result v22

    #@f1
    .line 115
    .restart local v22    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f4
    .line 116
    if-eqz v22, :cond_4

    #@f6
    const/16 v26, 0x1

    #@f8
    :goto_4
    move-object/from16 v0, p3

    #@fa
    move/from16 v1, v26

    #@fc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@ff
    .line 117
    const/16 v26, 0x1

    #@101
    return v26

    #@102
    .line 110
    .end local v8    # "_arg1":I
    .end local v22    # "_result":Z
    :cond_3
    const/4 v6, 0x0

    #@103
    .local v6, "_arg0":Landroid/view/InputEvent;
    goto :goto_3

    #@104
    .line 116
    .end local v6    # "_arg0":Landroid/view/InputEvent;
    .restart local v8    # "_arg1":I
    .restart local v22    # "_result":Z
    :cond_4
    const/16 v26, 0x0

    #@106
    goto :goto_4

    #@107
    .line 121
    .end local v8    # "_arg1":I
    .end local v22    # "_result":Z
    :sswitch_6
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    #@10a
    move-object/from16 v0, p2

    #@10c
    move-object/from16 v1, v26

    #@10e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@111
    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@114
    move-result-object v7

    #@115
    .line 125
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@118
    move-result v8

    #@119
    .line 126
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@11b
    invoke-virtual {v0, v7, v8}, Landroid/hardware/input/IInputManager$Stub;->getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

    #@11e
    move-result-object v19

    #@11f
    .line 127
    .local v19, "_result":Landroid/hardware/input/TouchCalibration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@122
    .line 128
    if-eqz v19, :cond_5

    #@124
    .line 129
    const/16 v26, 0x1

    #@126
    move-object/from16 v0, p3

    #@128
    move/from16 v1, v26

    #@12a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@12d
    .line 130
    const/16 v26, 0x1

    #@12f
    move-object/from16 v0, v19

    #@131
    move-object/from16 v1, p3

    #@133
    move/from16 v2, v26

    #@135
    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/TouchCalibration;->writeToParcel(Landroid/os/Parcel;I)V

    #@138
    .line 135
    :goto_5
    const/16 v26, 0x1

    #@13a
    return v26

    #@13b
    .line 133
    :cond_5
    const/16 v26, 0x0

    #@13d
    move-object/from16 v0, p3

    #@13f
    move/from16 v1, v26

    #@141
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@144
    goto :goto_5

    #@145
    .line 139
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v19    # "_result":Landroid/hardware/input/TouchCalibration;
    :sswitch_7
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    #@148
    move-object/from16 v0, p2

    #@14a
    move-object/from16 v1, v26

    #@14c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14f
    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@152
    move-result-object v7

    #@153
    .line 143
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@156
    move-result v8

    #@157
    .line 145
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15a
    move-result v26

    #@15b
    if-eqz v26, :cond_6

    #@15d
    .line 146
    sget-object v26, Landroid/hardware/input/TouchCalibration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@15f
    move-object/from16 v0, v26

    #@161
    move-object/from16 v1, p2

    #@163
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@166
    move-result-object v13

    #@167
    check-cast v13, Landroid/hardware/input/TouchCalibration;

    #@169
    .line 151
    :goto_6
    move-object/from16 v0, p0

    #@16b
    invoke-virtual {v0, v7, v8, v13}, Landroid/hardware/input/IInputManager$Stub;->setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V

    #@16e
    .line 152
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@171
    .line 153
    const/16 v26, 0x1

    #@173
    return v26

    #@174
    .line 149
    :cond_6
    const/4 v13, 0x0

    #@175
    .local v13, "_arg2":Landroid/hardware/input/TouchCalibration;
    goto :goto_6

    #@176
    .line 157
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v13    # "_arg2":Landroid/hardware/input/TouchCalibration;
    :sswitch_8
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    #@179
    move-object/from16 v0, p2

    #@17b
    move-object/from16 v1, v26

    #@17d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@180
    .line 158
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;

    #@183
    move-result-object v24

    #@184
    .line 159
    .local v24, "_result":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@187
    .line 160
    const/16 v26, 0x1

    #@189
    move-object/from16 v0, p3

    #@18b
    move-object/from16 v1, v24

    #@18d
    move/from16 v2, v26

    #@18f
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@192
    .line 161
    const/16 v26, 0x1

    #@194
    return v26

    #@195
    .line 165
    .end local v24    # "_result":[Landroid/hardware/input/KeyboardLayout;
    :sswitch_9
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    #@198
    move-object/from16 v0, p2

    #@19a
    move-object/from16 v1, v26

    #@19c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19f
    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a2
    move-result-object v7

    #@1a3
    .line 168
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1a5
    invoke-virtual {v0, v7}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    #@1a8
    move-result-object v18

    #@1a9
    .line 169
    .local v18, "_result":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ac
    .line 170
    if-eqz v18, :cond_7

    #@1ae
    .line 171
    const/16 v26, 0x1

    #@1b0
    move-object/from16 v0, p3

    #@1b2
    move/from16 v1, v26

    #@1b4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1b7
    .line 172
    const/16 v26, 0x1

    #@1b9
    move-object/from16 v0, v18

    #@1bb
    move-object/from16 v1, p3

    #@1bd
    move/from16 v2, v26

    #@1bf
    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/KeyboardLayout;->writeToParcel(Landroid/os/Parcel;I)V

    #@1c2
    .line 177
    :goto_7
    const/16 v26, 0x1

    #@1c4
    return v26

    #@1c5
    .line 175
    :cond_7
    const/16 v26, 0x0

    #@1c7
    move-object/from16 v0, p3

    #@1c9
    move/from16 v1, v26

    #@1cb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1ce
    goto :goto_7

    #@1cf
    .line 181
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v18    # "_result":Landroid/hardware/input/KeyboardLayout;
    :sswitch_a
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    #@1d2
    move-object/from16 v0, p2

    #@1d4
    move-object/from16 v1, v26

    #@1d6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d9
    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1dc
    move-result v26

    #@1dd
    if-eqz v26, :cond_8

    #@1df
    .line 184
    sget-object v26, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e1
    move-object/from16 v0, v26

    #@1e3
    move-object/from16 v1, p2

    #@1e5
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1e8
    move-result-object v5

    #@1e9
    check-cast v5, Landroid/hardware/input/InputDeviceIdentifier;

    #@1eb
    .line 189
    :goto_8
    move-object/from16 v0, p0

    #@1ed
    invoke-virtual {v0, v5}, Landroid/hardware/input/IInputManager$Stub;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    #@1f0
    move-result-object v21

    #@1f1
    .line 190
    .local v21, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f4
    .line 191
    move-object/from16 v0, p3

    #@1f6
    move-object/from16 v1, v21

    #@1f8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1fb
    .line 192
    const/16 v26, 0x1

    #@1fd
    return v26

    #@1fe
    .line 187
    .end local v21    # "_result":Ljava/lang/String;
    :cond_8
    const/4 v5, 0x0

    #@1ff
    .local v5, "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_8

    #@200
    .line 196
    .end local v5    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_b
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    #@203
    move-object/from16 v0, p2

    #@205
    move-object/from16 v1, v26

    #@207
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20a
    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@20d
    move-result v26

    #@20e
    if-eqz v26, :cond_9

    #@210
    .line 199
    sget-object v26, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    #@212
    move-object/from16 v0, v26

    #@214
    move-object/from16 v1, p2

    #@216
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@219
    move-result-object v5

    #@21a
    check-cast v5, Landroid/hardware/input/InputDeviceIdentifier;

    #@21c
    .line 205
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@21f
    move-result-object v10

    #@220
    .line 206
    .local v10, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@222
    invoke-virtual {v0, v5, v10}, Landroid/hardware/input/IInputManager$Stub;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    #@225
    .line 207
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@228
    .line 208
    const/16 v26, 0x1

    #@22a
    return v26

    #@22b
    .line 202
    .end local v10    # "_arg1":Ljava/lang/String;
    :cond_9
    const/4 v5, 0x0

    #@22c
    .restart local v5    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_9

    #@22d
    .line 212
    .end local v5    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_c
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    #@230
    move-object/from16 v0, p2

    #@232
    move-object/from16 v1, v26

    #@234
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@237
    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@23a
    move-result v26

    #@23b
    if-eqz v26, :cond_a

    #@23d
    .line 215
    sget-object v26, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23f
    move-object/from16 v0, v26

    #@241
    move-object/from16 v1, p2

    #@243
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@246
    move-result-object v5

    #@247
    check-cast v5, Landroid/hardware/input/InputDeviceIdentifier;

    #@249
    .line 220
    :goto_a
    move-object/from16 v0, p0

    #@24b
    invoke-virtual {v0, v5}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    #@24e
    move-result-object v25

    #@24f
    .line 221
    .local v25, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@252
    .line 222
    move-object/from16 v0, p3

    #@254
    move-object/from16 v1, v25

    #@256
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@259
    .line 223
    const/16 v26, 0x1

    #@25b
    return v26

    #@25c
    .line 218
    .end local v25    # "_result":[Ljava/lang/String;
    :cond_a
    const/4 v5, 0x0

    #@25d
    .restart local v5    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_a

    #@25e
    .line 227
    .end local v5    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_d
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    #@261
    move-object/from16 v0, p2

    #@263
    move-object/from16 v1, v26

    #@265
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@268
    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26b
    move-result v26

    #@26c
    if-eqz v26, :cond_b

    #@26e
    .line 230
    sget-object v26, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    #@270
    move-object/from16 v0, v26

    #@272
    move-object/from16 v1, p2

    #@274
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@277
    move-result-object v5

    #@278
    check-cast v5, Landroid/hardware/input/InputDeviceIdentifier;

    #@27a
    .line 236
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@27d
    move-result-object v10

    #@27e
    .line 237
    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@280
    invoke-virtual {v0, v5, v10}, Landroid/hardware/input/IInputManager$Stub;->addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    #@283
    .line 238
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@286
    .line 239
    const/16 v26, 0x1

    #@288
    return v26

    #@289
    .line 233
    .end local v10    # "_arg1":Ljava/lang/String;
    :cond_b
    const/4 v5, 0x0

    #@28a
    .restart local v5    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_b

    #@28b
    .line 243
    .end local v5    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_e
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    #@28e
    move-object/from16 v0, p2

    #@290
    move-object/from16 v1, v26

    #@292
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@295
    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@298
    move-result v26

    #@299
    if-eqz v26, :cond_c

    #@29b
    .line 246
    sget-object v26, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    #@29d
    move-object/from16 v0, v26

    #@29f
    move-object/from16 v1, p2

    #@2a1
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2a4
    move-result-object v5

    #@2a5
    check-cast v5, Landroid/hardware/input/InputDeviceIdentifier;

    #@2a7
    .line 252
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2aa
    move-result-object v10

    #@2ab
    .line 253
    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2ad
    invoke-virtual {v0, v5, v10}, Landroid/hardware/input/IInputManager$Stub;->removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    #@2b0
    .line 254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b3
    .line 255
    const/16 v26, 0x1

    #@2b5
    return v26

    #@2b6
    .line 249
    .end local v10    # "_arg1":Ljava/lang/String;
    :cond_c
    const/4 v5, 0x0

    #@2b7
    .restart local v5    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_c

    #@2b8
    .line 259
    .end local v5    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_f
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    #@2bb
    move-object/from16 v0, p2

    #@2bd
    move-object/from16 v1, v26

    #@2bf
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c2
    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2c5
    move-result-object v26

    #@2c6
    invoke-static/range {v26 .. v26}, Landroid/hardware/input/IInputDevicesChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputDevicesChangedListener;

    #@2c9
    move-result-object v4

    #@2ca
    .line 262
    .local v4, "_arg0":Landroid/hardware/input/IInputDevicesChangedListener;
    move-object/from16 v0, p0

    #@2cc
    invoke-virtual {v0, v4}, Landroid/hardware/input/IInputManager$Stub;->registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V

    #@2cf
    .line 263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d2
    .line 264
    const/16 v26, 0x1

    #@2d4
    return v26

    #@2d5
    .line 268
    .end local v4    # "_arg0":Landroid/hardware/input/IInputDevicesChangedListener;
    :sswitch_10
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    #@2d8
    move-object/from16 v0, p2

    #@2da
    move-object/from16 v1, v26

    #@2dc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2df
    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2e2
    move-result v3

    #@2e3
    .line 272
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    #@2e6
    move-result-object v11

    #@2e7
    .line 274
    .local v11, "_arg1":[J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ea
    move-result v12

    #@2eb
    .line 276
    .local v12, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2ee
    move-result-object v15

    #@2ef
    .line 277
    .local v15, "_arg3":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@2f1
    invoke-virtual {v0, v3, v11, v12, v15}, Landroid/hardware/input/IInputManager$Stub;->vibrate(I[JILandroid/os/IBinder;)V

    #@2f4
    .line 278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f7
    .line 279
    const/16 v26, 0x1

    #@2f9
    return v26

    #@2fa
    .line 283
    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":[J
    .end local v12    # "_arg2":I
    .end local v15    # "_arg3":Landroid/os/IBinder;
    :sswitch_11
    const-string/jumbo v26, "android.hardware.input.IInputManager"

    #@2fd
    move-object/from16 v0, p2

    #@2ff
    move-object/from16 v1, v26

    #@301
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@304
    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@307
    move-result v3

    #@308
    .line 287
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@30b
    move-result-object v9

    #@30c
    .line 288
    .local v9, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@30e
    invoke-virtual {v0, v3, v9}, Landroid/hardware/input/IInputManager$Stub;->cancelVibrate(ILandroid/os/IBinder;)V

    #@311
    .line 289
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@314
    .line 290
    const/16 v26, 0x1

    #@316
    return v26

    #@317
    .line 39
    nop

    #@318
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
