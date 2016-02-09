.class public abstract Landroid/hardware/usb/IUsbManager$Stub;
.super Landroid/os/Binder;
.source "IUsbManager.java"

# interfaces
.implements Landroid/hardware/usb/IUsbManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/IUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/IUsbManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.usb.IUsbManager"

.field static final TRANSACTION_allowUsbDebugging:I = 0x12

.field static final TRANSACTION_clearDefaults:I = 0xe

.field static final TRANSACTION_clearUsbDebuggingKeys:I = 0x14

.field static final TRANSACTION_denyUsbDebugging:I = 0x13

.field static final TRANSACTION_getCurrentAccessory:I = 0x3

.field static final TRANSACTION_getDeviceList:I = 0x1

.field static final TRANSACTION_getPortStatus:I = 0x16

.field static final TRANSACTION_getPorts:I = 0x15

.field static final TRANSACTION_grantAccessoryPermission:I = 0xc

.field static final TRANSACTION_grantDevicePermission:I = 0xb

.field static final TRANSACTION_hasAccessoryPermission:I = 0x8

.field static final TRANSACTION_hasDefaults:I = 0xd

.field static final TRANSACTION_hasDevicePermission:I = 0x7

.field static final TRANSACTION_isFunctionEnabled:I = 0xf

.field static final TRANSACTION_openAccessory:I = 0x4

.field static final TRANSACTION_openDevice:I = 0x2

.field static final TRANSACTION_requestAccessoryPermission:I = 0xa

.field static final TRANSACTION_requestDevicePermission:I = 0x9

.field static final TRANSACTION_setAccessoryPackage:I = 0x6

.field static final TRANSACTION_setCurrentFunction:I = 0x10

.field static final TRANSACTION_setDevicePackage:I = 0x5

.field static final TRANSACTION_setPortRoles:I = 0x17

.field static final TRANSACTION_setUsbDataUnlocked:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.hardware.usb.IUsbManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/hardware/usb/IUsbManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;
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
    const-string/jumbo v1, "android.hardware.usb.IUsbManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/hardware/usb/IUsbManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/hardware/usb/IUsbManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/usb/IUsbManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/hardware/usb/IUsbManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 16
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
    .line 371
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v15

    #@7
    return v15

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v15, "android.hardware.usb.IUsbManager"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 44
    const/4 v15, 0x1

    #@11
    return v15

    #@12
    .line 48
    :sswitch_1
    const-string/jumbo v15, "android.hardware.usb.IUsbManager"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 50
    new-instance v3, Landroid/os/Bundle;

    #@1c
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #@1f
    .line 51
    .local v3, "_arg0":Landroid/os/Bundle;
    move-object/from16 v0, p0

    #@21
    invoke-virtual {v0, v3}, Landroid/hardware/usb/IUsbManager$Stub;->getDeviceList(Landroid/os/Bundle;)V

    #@24
    .line 52
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27
    .line 53
    if-eqz v3, :cond_0

    #@29
    .line 54
    const/4 v15, 0x1

    #@2a
    move-object/from16 v0, p3

    #@2c
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 55
    const/4 v15, 0x1

    #@30
    move-object/from16 v0, p3

    #@32
    invoke-virtual {v3, v0, v15}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@35
    .line 60
    :goto_0
    const/4 v15, 0x1

    #@36
    return v15

    #@37
    .line 58
    :cond_0
    const/4 v15, 0x0

    #@38
    move-object/from16 v0, p3

    #@3a
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@3d
    goto :goto_0

    #@3e
    .line 64
    .end local v3    # "_arg0":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v15, "android.hardware.usb.IUsbManager"

    #@41
    move-object/from16 v0, p2

    #@43
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@46
    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@49
    move-result-object v4

    #@4a
    .line 67
    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4c
    invoke-virtual {v0, v4}, Landroid/hardware/usb/IUsbManager$Stub;->openDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    #@4f
    move-result-object v12

    #@50
    .line 68
    .local v12, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@53
    .line 69
    if-eqz v12, :cond_1

    #@55
    .line 70
    const/4 v15, 0x1

    #@56
    move-object/from16 v0, p3

    #@58
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@5b
    .line 71
    const/4 v15, 0x1

    #@5c
    move-object/from16 v0, p3

    #@5e
    invoke-virtual {v12, v0, v15}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@61
    .line 76
    :goto_1
    const/4 v15, 0x1

    #@62
    return v15

    #@63
    .line 74
    :cond_1
    const/4 v15, 0x0

    #@64
    move-object/from16 v0, p3

    #@66
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@69
    goto :goto_1

    #@6a
    .line 80
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v12    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_3
    const-string/jumbo v15, "android.hardware.usb.IUsbManager"

    #@6d
    move-object/from16 v0, p2

    #@6f
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@72
    .line 81
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/IUsbManager$Stub;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    #@75
    move-result-object v10

    #@76
    .line 82
    .local v10, "_result":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@79
    .line 83
    if-eqz v10, :cond_2

    #@7b
    .line 84
    const/4 v15, 0x1

    #@7c
    move-object/from16 v0, p3

    #@7e
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@81
    .line 85
    const/4 v15, 0x1

    #@82
    move-object/from16 v0, p3

    #@84
    invoke-virtual {v10, v0, v15}, Landroid/hardware/usb/UsbAccessory;->writeToParcel(Landroid/os/Parcel;I)V

    #@87
    .line 90
    :goto_2
    const/4 v15, 0x1

    #@88
    return v15

    #@89
    .line 88
    :cond_2
    const/4 v15, 0x0

    #@8a
    move-object/from16 v0, p3

    #@8c
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@8f
    goto :goto_2

    #@90
    .line 94
    .end local v10    # "_result":Landroid/hardware/usb/UsbAccessory;
    :sswitch_4
    const-string/jumbo v15, "android.hardware.usb.IUsbManager"

    #@93
    move-object/from16 v0, p2

    #@95
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@98
    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9b
    move-result v15

    #@9c
    if-eqz v15, :cond_3

    #@9e
    .line 97
    sget-object v15, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a0
    move-object/from16 v0, p2

    #@a2
    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a5
    move-result-object v1

    #@a6
    check-cast v1, Landroid/hardware/usb/UsbAccessory;

    #@a8
    .line 102
    :goto_3
    move-object/from16 v0, p0

    #@aa
    invoke-virtual {v0, v1}, Landroid/hardware/usb/IUsbManager$Stub;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    #@ad
    move-result-object v12

    #@ae
    .line 103
    .restart local v12    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b1
    .line 104
    if-eqz v12, :cond_4

    #@b3
    .line 105
    const/4 v15, 0x1

    #@b4
    move-object/from16 v0, p3

    #@b6
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@b9
    .line 106
    const/4 v15, 0x1

    #@ba
    move-object/from16 v0, p3

    #@bc
    invoke-virtual {v12, v0, v15}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@bf
    .line 111
    :goto_4
    const/4 v15, 0x1

    #@c0
    return v15

    #@c1
    .line 100
    .end local v12    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_3
    const/4 v1, 0x0

    #@c2
    .local v1, "_arg0":Landroid/hardware/usb/UsbAccessory;
    goto :goto_3

    #@c3
    .line 109
    .end local v1    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .restart local v12    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_4
    const/4 v15, 0x0

    #@c4
    move-object/from16 v0, p3

    #@c6
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@c9
    goto :goto_4

    #@ca
    .line 115
    .end local v12    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_5
    const-string/jumbo v15, "android.hardware.usb.IUsbManager"

    #@cd
    move-object/from16 v0, p2

    #@cf
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d2
    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d5
    move-result v15

    #@d6
    if-eqz v15, :cond_5

    #@d8
    .line 118
    sget-object v15, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@da
    move-object/from16 v0, p2

    #@dc
    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@df
    move-result-object v2

    #@e0
    check-cast v2, Landroid/hardware/usb/UsbDevice;

    #@e2
    .line 124
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e5
    move-result-object v7

    #@e6
    .line 126
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e9
    move-result v8

    #@ea
    .line 127
    .local v8, "_arg2":I
    move-object/from16 v0, p0

    #@ec
    invoke-virtual {v0, v2, v7, v8}, Landroid/hardware/usb/IUsbManager$Stub;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    #@ef
    .line 128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f2
    .line 129
    const/4 v15, 0x1

    #@f3
    return v15

    #@f4
    .line 121
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    :cond_5
    const/4 v2, 0x0

    #@f5
    .local v2, "_arg0":Landroid/hardware/usb/UsbDevice;
    goto :goto_5

    #@f6
    .line 133
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    :sswitch_6
    const-string/jumbo v15, "android.hardware.usb.IUsbManager"

    #@f9
    move-object/from16 v0, p2

    #@fb
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fe
    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@101
    move-result v15

    #@102
    if-eqz v15, :cond_6

    #@104
    .line 136
    sget-object v15, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    #@106
    move-object/from16 v0, p2

    #@108
    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@10b
    move-result-object v1

    #@10c
    check-cast v1, Landroid/hardware/usb/UsbAccessory;

    #@10e
    .line 142
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@111
    move-result-object v7

    #@112
    .line 144
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@115
    move-result v8

    #@116
    .line 145
    .restart local v8    # "_arg2":I
    move-object/from16 v0, p0

    #@118
    invoke-virtual {v0, v1, v7, v8}, Landroid/hardware/usb/IUsbManager$Stub;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V

    #@11b
    .line 146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11e
    .line 147
    const/4 v15, 0x1

    #@11f
    return v15

    #@120
    .line 139
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    :cond_6
    const/4 v1, 0x0

    #@121
    .restart local v1    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    goto :goto_6

    #@122
    .line 151
    .end local v1    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    :sswitch_7
    const-string/jumbo v15, "android.hardware.usb.IUsbManager"

    #@125
    move-object/from16 v0, p2

    #@127
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12a
    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12d
    move-result v15

    #@12e
    if-eqz v15, :cond_7

    #@130
    .line 154
    sget-object v15, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@132
    move-object/from16 v0, p2

    #@134
    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@137
    move-result-object v2

    #@138
    check-cast v2, Landroid/hardware/usb/UsbDevice;

    #@13a
    .line 159
    :goto_7
    move-object/from16 v0, p0

    #@13c
    invoke-virtual {v0, v2}, Landroid/hardware/usb/IUsbManager$Stub;->hasDevicePermission(Landroid/hardware/usb/UsbDevice;)Z

    #@13f
    move-result v13

    #@140
    .line 160
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@143
    .line 161
    if-eqz v13, :cond_8

    #@145
    const/4 v15, 0x1

    #@146
    :goto_8
    move-object/from16 v0, p3

    #@148
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@14b
    .line 162
    const/4 v15, 0x1

    #@14c
    return v15

    #@14d
    .line 157
    .end local v13    # "_result":Z
    :cond_7
    const/4 v2, 0x0

    #@14e
    .restart local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    goto :goto_7

    #@14f
    .line 161
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .restart local v13    # "_result":Z
    :cond_8
    const/4 v15, 0x0

    #@150
    goto :goto_8

    #@151
    .line 166
    .end local v13    # "_result":Z
    :sswitch_8
    const-string/jumbo v15, "android.hardware.usb.IUsbManager"

    #@154
    move-object/from16 v0, p2

    #@156
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@159
    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15c
    move-result v15

    #@15d
    if-eqz v15, :cond_9

    #@15f
    .line 169
    sget-object v15, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    #@161
    move-object/from16 v0, p2

    #@163
    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@166
    move-result-object v1

    #@167
    check-cast v1, Landroid/hardware/usb/UsbAccessory;

    #@169
    .line 174
    :goto_9
    move-object/from16 v0, p0

    #@16b
    invoke-virtual {v0, v1}, Landroid/hardware/usb/IUsbManager$Stub;->hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z

    #@16e
    move-result v13

    #@16f
    .line 175
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@172
    .line 176
    if-eqz v13, :cond_a

    #@174
    const/4 v15, 0x1

    #@175
    :goto_a
    move-object/from16 v0, p3

    #@177
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@17a
    .line 177
    const/4 v15, 0x1

    #@17b
    return v15

    #@17c
    .line 172
    .end local v13    # "_result":Z
    :cond_9
    const/4 v1, 0x0

    #@17d
    .restart local v1    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    goto :goto_9

    #@17e
    .line 176
    .end local v1    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .restart local v13    # "_result":Z
    :cond_a
    const/4 v15, 0x0

    #@17f
    goto :goto_a

    #@180
    .line 181
    .end local v13    # "_result":Z
    :sswitch_9
    const-string/jumbo v15, "android.hardware.usb.IUsbManager"

    #@183
    move-object/from16 v0, p2

    #@185
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@188
    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18b
    move-result v15

    #@18c
    if-eqz v15, :cond_b

    #@18e
    .line 184
    sget-object v15, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@190
    move-object/from16 v0, p2

    #@192
    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@195
    move-result-object v2

    #@196
    check-cast v2, Landroid/hardware/usb/UsbDevice;

    #@198
    .line 190
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19b
    move-result-object v7

    #@19c
    .line 192
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19f
    move-result v15

    #@1a0
    if-eqz v15, :cond_c

    #@1a2
    .line 193
    sget-object v15, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a4
    move-object/from16 v0, p2

    #@1a6
    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a9
    move-result-object v9

    #@1aa
    check-cast v9, Landroid/app/PendingIntent;

    #@1ac
    .line 198
    :goto_c
    move-object/from16 v0, p0

    #@1ae
    invoke-virtual {v0, v2, v7, v9}, Landroid/hardware/usb/IUsbManager$Stub;->requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V

    #@1b1
    .line 199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b4
    .line 200
    const/4 v15, 0x1

    #@1b5
    return v15

    #@1b6
    .line 187
    .end local v7    # "_arg1":Ljava/lang/String;
    :cond_b
    const/4 v2, 0x0

    #@1b7
    .restart local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    goto :goto_b

    #@1b8
    .line 196
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .restart local v7    # "_arg1":Ljava/lang/String;
    :cond_c
    const/4 v9, 0x0

    #@1b9
    .local v9, "_arg2":Landroid/app/PendingIntent;
    goto :goto_c

    #@1ba
    .line 204
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_a
    const-string/jumbo v15, "android.hardware.usb.IUsbManager"

    #@1bd
    move-object/from16 v0, p2

    #@1bf
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c2
    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c5
    move-result v15

    #@1c6
    if-eqz v15, :cond_d

    #@1c8
    .line 207
    sget-object v15, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1ca
    move-object/from16 v0, p2

    #@1cc
    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1cf
    move-result-object v1

    #@1d0
    check-cast v1, Landroid/hardware/usb/UsbAccessory;

    #@1d2
    .line 213
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d5
    move-result-object v7

    #@1d6
    .line 215
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d9
    move-result v15

    #@1da
    if-eqz v15, :cond_e

    #@1dc
    .line 216
    sget-object v15, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1de
    move-object/from16 v0, p2

    #@1e0
    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1e3
    move-result-object v9

    #@1e4
    check-cast v9, Landroid/app/PendingIntent;

    #@1e6
    .line 221
    :goto_e
    move-object/from16 v0, p0

    #@1e8
    invoke-virtual {v0, v1, v7, v9}, Landroid/hardware/usb/IUsbManager$Stub;->requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V

    #@1eb
    .line 222
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ee
    .line 223
    const/4 v15, 0x1

    #@1ef
    return v15

    #@1f0
    .line 210
    .end local v7    # "_arg1":Ljava/lang/String;
    :cond_d
    const/4 v1, 0x0

    #@1f1
    .restart local v1    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    goto :goto_d

    #@1f2
    .line 219
    .end local v1    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .restart local v7    # "_arg1":Ljava/lang/String;
    :cond_e
    const/4 v9, 0x0

    #@1f3
    .restart local v9    # "_arg2":Landroid/app/PendingIntent;
    goto :goto_e

    #@1f4
    .line 227
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_b
    const-string/jumbo v15, "android.hardware.usb.IUsbManager"

    #@1f7
    move-object/from16 v0, p2

    #@1f9
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1fc
    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ff
    move-result v15

    #@200
    if-eqz v15, :cond_f

    #@202
    .line 230
    sget-object v15, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@204
    move-object/from16 v0, p2

    #@206
    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@209
    move-result-object v2

    #@20a
    check-cast v2, Landroid/hardware/usb/UsbDevice;

    #@20c
    .line 236
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@20f
    move-result v6

    #@210
    .line 237
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    #@212
    invoke-virtual {v0, v2, v6}, Landroid/hardware/usb/IUsbManager$Stub;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    #@215
    .line 238
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@218
    .line 239
    const/4 v15, 0x1

    #@219
    return v15

    #@21a
    .line 233
    .end local v6    # "_arg1":I
    :cond_f
    const/4 v2, 0x0

    #@21b
    .restart local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    goto :goto_f

    #@21c
    .line 243
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    :sswitch_c
    const-string/jumbo v15, "android.hardware.usb.IUsbManager"

    #@21f
    move-object/from16 v0, p2

    #@221
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@224
    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@227
    move-result v15

    #@228
    if-eqz v15, :cond_10

    #@22a
    .line 246
    sget-object v15, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22c
    move-object/from16 v0, p2

    #@22e
    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@231
    move-result-object v1

    #@232
    check-cast v1, Landroid/hardware/usb/UsbAccessory;

    #@234
    .line 252
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@237
    move-result v6

    #@238
    .line 253
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@23a
    invoke-virtual {v0, v1, v6}, Landroid/hardware/usb/IUsbManager$Stub;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    #@23d
    .line 254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@240
    .line 255
    const/4 v15, 0x1

    #@241
    return v15

    #@242
    .line 249
    .end local v6    # "_arg1":I
    :cond_10
    const/4 v1, 0x0

    #@243
    .restart local v1    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    goto :goto_10

    #@244
    .line 259
    .end local v1    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    :sswitch_d
    const-string/jumbo v15, "android.hardware.usb.IUsbManager"

    #@247
    move-object/from16 v0, p2

    #@249
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24c
    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@24f
    move-result-object v4

    #@250
    .line 263
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@253
    move-result v6

    #@254
    .line 264
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@256
    invoke-virtual {v0, v4, v6}, Landroid/hardware/usb/IUsbManager$Stub;->hasDefaults(Ljava/lang/String;I)Z

    #@259
    move-result v13

    #@25a
    .line 265
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@25d
    .line 266
    if-eqz v13, :cond_11

    #@25f
    const/4 v15, 0x1

    #@260
    :goto_11
    move-object/from16 v0, p3

    #@262
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@265
    .line 267
    const/4 v15, 0x1

    #@266
    return v15

    #@267
    .line 266
    :cond_11
    const/4 v15, 0x0

    #@268
    goto :goto_11

    #@269
    .line 271
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v13    # "_result":Z
    :sswitch_e
    const-string/jumbo v15, "android.hardware.usb.IUsbManager"

    #@26c
    move-object/from16 v0, p2

    #@26e
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@271
    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@274
    move-result-object v4

    #@275
    .line 275
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@278
    move-result v6

    #@279
    .line 276
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@27b
    invoke-virtual {v0, v4, v6}, Landroid/hardware/usb/IUsbManager$Stub;->clearDefaults(Ljava/lang/String;I)V

    #@27e
    .line 277
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@281
    .line 278
    const/4 v15, 0x1

    #@282
    return v15

    #@283
    .line 282
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    :sswitch_f
    const-string/jumbo v15, "android.hardware.usb.IUsbManager"

    #@286
    move-object/from16 v0, p2

    #@288
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28b
    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@28e
    move-result-object v4

    #@28f
    .line 285
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@291
    invoke-virtual {v0, v4}, Landroid/hardware/usb/IUsbManager$Stub;->isFunctionEnabled(Ljava/lang/String;)Z

    #@294
    move-result v13

    #@295
    .line 286
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@298
    .line 287
    if-eqz v13, :cond_12

    #@29a
    const/4 v15, 0x1

    #@29b
    :goto_12
    move-object/from16 v0, p3

    #@29d
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@2a0
    .line 288
    const/4 v15, 0x1

    #@2a1
    return v15

    #@2a2
    .line 287
    :cond_12
    const/4 v15, 0x0

    #@2a3
    goto :goto_12

    #@2a4
    .line 292
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":Z
    :sswitch_10
    const-string/jumbo v15, "android.hardware.usb.IUsbManager"

    #@2a7
    move-object/from16 v0, p2

    #@2a9
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ac
    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2af
    move-result-object v4

    #@2b0
    .line 295
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2b2
    invoke-virtual {v0, v4}, Landroid/hardware/usb/IUsbManager$Stub;->setCurrentFunction(Ljava/lang/String;)V

    #@2b5
    .line 296
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b8
    .line 297
    const/4 v15, 0x1

    #@2b9
    return v15

    #@2ba
    .line 301
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_11
    const-string/jumbo v15, "android.hardware.usb.IUsbManager"

    #@2bd
    move-object/from16 v0, p2

    #@2bf
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c2
    .line 303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2c5
    move-result v15

    #@2c6
    if-eqz v15, :cond_13

    #@2c8
    const/4 v5, 0x1

    #@2c9
    .line 304
    .local v5, "_arg0":Z
    :goto_13
    move-object/from16 v0, p0

    #@2cb
    invoke-virtual {v0, v5}, Landroid/hardware/usb/IUsbManager$Stub;->setUsbDataUnlocked(Z)V

    #@2ce
    .line 305
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d1
    .line 306
    const/4 v15, 0x1

    #@2d2
    return v15

    #@2d3
    .line 303
    .end local v5    # "_arg0":Z
    :cond_13
    const/4 v5, 0x0

    #@2d4
    .restart local v5    # "_arg0":Z
    goto :goto_13

    #@2d5
    .line 310
    .end local v5    # "_arg0":Z
    :sswitch_12
    const-string/jumbo v15, "android.hardware.usb.IUsbManager"

    #@2d8
    move-object/from16 v0, p2

    #@2da
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2dd
    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2e0
    move-result v15

    #@2e1
    if-eqz v15, :cond_14

    #@2e3
    const/4 v5, 0x1

    #@2e4
    .line 314
    .restart local v5    # "_arg0":Z
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2e7
    move-result-object v7

    #@2e8
    .line 315
    .restart local v7    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2ea
    invoke-virtual {v0, v5, v7}, Landroid/hardware/usb/IUsbManager$Stub;->allowUsbDebugging(ZLjava/lang/String;)V

    #@2ed
    .line 316
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f0
    .line 317
    const/4 v15, 0x1

    #@2f1
    return v15

    #@2f2
    .line 312
    .end local v5    # "_arg0":Z
    .end local v7    # "_arg1":Ljava/lang/String;
    :cond_14
    const/4 v5, 0x0

    #@2f3
    .restart local v5    # "_arg0":Z
    goto :goto_14

    #@2f4
    .line 321
    .end local v5    # "_arg0":Z
    :sswitch_13
    const-string/jumbo v15, "android.hardware.usb.IUsbManager"

    #@2f7
    move-object/from16 v0, p2

    #@2f9
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2fc
    .line 322
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/IUsbManager$Stub;->denyUsbDebugging()V

    #@2ff
    .line 323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@302
    .line 324
    const/4 v15, 0x1

    #@303
    return v15

    #@304
    .line 328
    :sswitch_14
    const-string/jumbo v15, "android.hardware.usb.IUsbManager"

    #@307
    move-object/from16 v0, p2

    #@309
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30c
    .line 329
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/IUsbManager$Stub;->clearUsbDebuggingKeys()V

    #@30f
    .line 330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@312
    .line 331
    const/4 v15, 0x1

    #@313
    return v15

    #@314
    .line 335
    :sswitch_15
    const-string/jumbo v15, "android.hardware.usb.IUsbManager"

    #@317
    move-object/from16 v0, p2

    #@319
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@31c
    .line 336
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/IUsbManager$Stub;->getPorts()[Landroid/hardware/usb/UsbPort;

    #@31f
    move-result-object v14

    #@320
    .line 337
    .local v14, "_result":[Landroid/hardware/usb/UsbPort;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@323
    .line 338
    const/4 v15, 0x1

    #@324
    move-object/from16 v0, p3

    #@326
    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@329
    .line 339
    const/4 v15, 0x1

    #@32a
    return v15

    #@32b
    .line 343
    .end local v14    # "_result":[Landroid/hardware/usb/UsbPort;
    :sswitch_16
    const-string/jumbo v15, "android.hardware.usb.IUsbManager"

    #@32e
    move-object/from16 v0, p2

    #@330
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@333
    .line 345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@336
    move-result-object v4

    #@337
    .line 346
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@339
    invoke-virtual {v0, v4}, Landroid/hardware/usb/IUsbManager$Stub;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;

    #@33c
    move-result-object v11

    #@33d
    .line 347
    .local v11, "_result":Landroid/hardware/usb/UsbPortStatus;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@340
    .line 348
    if-eqz v11, :cond_15

    #@342
    .line 349
    const/4 v15, 0x1

    #@343
    move-object/from16 v0, p3

    #@345
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@348
    .line 350
    const/4 v15, 0x1

    #@349
    move-object/from16 v0, p3

    #@34b
    invoke-virtual {v11, v0, v15}, Landroid/hardware/usb/UsbPortStatus;->writeToParcel(Landroid/os/Parcel;I)V

    #@34e
    .line 355
    :goto_15
    const/4 v15, 0x1

    #@34f
    return v15

    #@350
    .line 353
    :cond_15
    const/4 v15, 0x0

    #@351
    move-object/from16 v0, p3

    #@353
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@356
    goto :goto_15

    #@357
    .line 359
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":Landroid/hardware/usb/UsbPortStatus;
    :sswitch_17
    const-string/jumbo v15, "android.hardware.usb.IUsbManager"

    #@35a
    move-object/from16 v0, p2

    #@35c
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@35f
    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@362
    move-result-object v4

    #@363
    .line 363
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@366
    move-result v6

    #@367
    .line 365
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@36a
    move-result v8

    #@36b
    .line 366
    .restart local v8    # "_arg2":I
    move-object/from16 v0, p0

    #@36d
    invoke-virtual {v0, v4, v6, v8}, Landroid/hardware/usb/IUsbManager$Stub;->setPortRoles(Ljava/lang/String;II)V

    #@370
    .line 367
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@373
    .line 368
    const/4 v15, 0x1

    #@374
    return v15

    #@375
    .line 39
    nop

    #@376
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
