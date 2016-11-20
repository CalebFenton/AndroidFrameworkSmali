.class public abstract Landroid/hardware/ICameraService$Stub;
.super Landroid/os/Binder;
.source "ICameraService.java"

# interfaces
.implements Landroid/hardware/ICameraService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ICameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ICameraService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.ICameraService"

.field static final TRANSACTION_addListener:I = 0x6

.field static final TRANSACTION_connect:I = 0x3

.field static final TRANSACTION_connectDevice:I = 0x4

.field static final TRANSACTION_connectLegacy:I = 0x5

.field static final TRANSACTION_getCameraCharacteristics:I = 0x8

.field static final TRANSACTION_getCameraInfo:I = 0x2

.field static final TRANSACTION_getCameraVendorTagDescriptor:I = 0x9

.field static final TRANSACTION_getLegacyParameters:I = 0xa

.field static final TRANSACTION_getNumberOfCameras:I = 0x1

.field static final TRANSACTION_notifySystemEvent:I = 0xd

.field static final TRANSACTION_removeListener:I = 0x7

.field static final TRANSACTION_setTorchMode:I = 0xc

.field static final TRANSACTION_supportsCameraApi:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.hardware.ICameraService"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/hardware/ICameraService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 28
    if-nez p0, :cond_0

    #@3
    .line 29
    return-object v1

    #@4
    .line 31
    :cond_0
    const-string/jumbo v1, "android.hardware.ICameraService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/hardware/ICameraService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/hardware/ICameraService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/ICameraService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/hardware/ICameraService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 31
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 222
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    const/4 v4, 0x1

    #@11
    return v4

    #@12
    .line 52
    :sswitch_1
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v16

    #@1e
    .line 55
    .local v16, "_arg0":I
    move-object/from16 v0, p0

    #@20
    move/from16 v1, v16

    #@22
    invoke-virtual {v0, v1}, Landroid/hardware/ICameraService$Stub;->getNumberOfCameras(I)I

    #@25
    move-result v23

    #@26
    .line 56
    .local v23, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@29
    .line 57
    move-object/from16 v0, p3

    #@2b
    move/from16 v1, v23

    #@2d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 58
    const/4 v4, 0x1

    #@31
    return v4

    #@32
    .line 62
    .end local v16    # "_arg0":I
    .end local v23    # "_result":I
    :sswitch_2
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@35
    move-object/from16 v0, p2

    #@37
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a
    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v16

    #@3e
    .line 65
    .restart local v16    # "_arg0":I
    move-object/from16 v0, p0

    #@40
    move/from16 v1, v16

    #@42
    invoke-virtual {v0, v1}, Landroid/hardware/ICameraService$Stub;->getCameraInfo(I)Landroid/hardware/CameraInfo;

    #@45
    move-result-object v24

    #@46
    .line 66
    .local v24, "_result":Landroid/hardware/CameraInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@49
    .line 67
    if-eqz v24, :cond_0

    #@4b
    .line 68
    const/4 v4, 0x1

    #@4c
    move-object/from16 v0, p3

    #@4e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@51
    .line 69
    const/4 v4, 0x1

    #@52
    move-object/from16 v0, v24

    #@54
    move-object/from16 v1, p3

    #@56
    invoke-virtual {v0, v1, v4}, Landroid/hardware/CameraInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@59
    .line 74
    :goto_0
    const/4 v4, 0x1

    #@5a
    return v4

    #@5b
    .line 72
    :cond_0
    const/4 v4, 0x0

    #@5c
    move-object/from16 v0, p3

    #@5e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@61
    goto :goto_0

    #@62
    .line 78
    .end local v16    # "_arg0":I
    .end local v24    # "_result":Landroid/hardware/CameraInfo;
    :sswitch_3
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@65
    move-object/from16 v0, p2

    #@67
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6a
    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6d
    move-result-object v4

    #@6e
    invoke-static {v4}, Landroid/hardware/ICameraClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraClient;

    #@71
    move-result-object v5

    #@72
    .line 82
    .local v5, "_arg0":Landroid/hardware/ICameraClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@75
    move-result v6

    #@76
    .line 84
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@79
    move-result-object v7

    #@7a
    .line 86
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7d
    move-result v8

    #@7e
    .line 88
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@81
    move-result v9

    #@82
    .local v9, "_arg4":I
    move-object/from16 v4, p0

    #@84
    .line 89
    invoke-virtual/range {v4 .. v9}, Landroid/hardware/ICameraService$Stub;->connect(Landroid/hardware/ICameraClient;ILjava/lang/String;II)Landroid/hardware/ICamera;

    #@87
    move-result-object v25

    #@88
    .line 90
    .local v25, "_result":Landroid/hardware/ICamera;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8b
    .line 91
    if-eqz v25, :cond_1

    #@8d
    invoke-interface/range {v25 .. v25}, Landroid/hardware/ICamera;->asBinder()Landroid/os/IBinder;

    #@90
    move-result-object v4

    #@91
    :goto_1
    move-object/from16 v0, p3

    #@93
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@96
    .line 92
    const/4 v4, 0x1

    #@97
    return v4

    #@98
    .line 91
    :cond_1
    const/4 v4, 0x0

    #@99
    goto :goto_1

    #@9a
    .line 96
    .end local v5    # "_arg0":Landroid/hardware/ICameraClient;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v25    # "_result":Landroid/hardware/ICamera;
    :sswitch_4
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@9d
    move-object/from16 v0, p2

    #@9f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a2
    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@a5
    move-result-object v4

    #@a6
    invoke-static {v4}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    #@a9
    move-result-object v18

    #@aa
    .line 100
    .local v18, "_arg0":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ad
    move-result v6

    #@ae
    .line 102
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b1
    move-result-object v7

    #@b2
    .line 104
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b5
    move-result v8

    #@b6
    .line 105
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@b8
    move-object/from16 v1, v18

    #@ba
    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/hardware/ICameraService$Stub;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;ILjava/lang/String;I)Landroid/hardware/camera2/ICameraDeviceUser;

    #@bd
    move-result-object v26

    #@be
    .line 106
    .local v26, "_result":Landroid/hardware/camera2/ICameraDeviceUser;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c1
    .line 107
    if-eqz v26, :cond_2

    #@c3
    invoke-interface/range {v26 .. v26}, Landroid/hardware/camera2/ICameraDeviceUser;->asBinder()Landroid/os/IBinder;

    #@c6
    move-result-object v4

    #@c7
    :goto_2
    move-object/from16 v0, p3

    #@c9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@cc
    .line 108
    const/4 v4, 0x1

    #@cd
    return v4

    #@ce
    .line 107
    :cond_2
    const/4 v4, 0x0

    #@cf
    goto :goto_2

    #@d0
    .line 112
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v18    # "_arg0":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local v26    # "_result":Landroid/hardware/camera2/ICameraDeviceUser;
    :sswitch_5
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@d3
    move-object/from16 v0, p2

    #@d5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d8
    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@db
    move-result-object v4

    #@dc
    invoke-static {v4}, Landroid/hardware/ICameraClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraClient;

    #@df
    move-result-object v5

    #@e0
    .line 116
    .restart local v5    # "_arg0":Landroid/hardware/ICameraClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e3
    move-result v6

    #@e4
    .line 118
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e7
    move-result v13

    #@e8
    .line 120
    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@eb
    move-result-object v14

    #@ec
    .line 122
    .local v14, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ef
    move-result v9

    #@f0
    .restart local v9    # "_arg4":I
    move-object/from16 v10, p0

    #@f2
    move-object v11, v5

    #@f3
    move v12, v6

    #@f4
    move v15, v9

    #@f5
    .line 123
    invoke-virtual/range {v10 .. v15}, Landroid/hardware/ICameraService$Stub;->connectLegacy(Landroid/hardware/ICameraClient;IILjava/lang/String;I)Landroid/hardware/ICamera;

    #@f8
    move-result-object v25

    #@f9
    .line 124
    .restart local v25    # "_result":Landroid/hardware/ICamera;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fc
    .line 125
    if-eqz v25, :cond_3

    #@fe
    invoke-interface/range {v25 .. v25}, Landroid/hardware/ICamera;->asBinder()Landroid/os/IBinder;

    #@101
    move-result-object v4

    #@102
    :goto_3
    move-object/from16 v0, p3

    #@104
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@107
    .line 126
    const/4 v4, 0x1

    #@108
    return v4

    #@109
    .line 125
    :cond_3
    const/4 v4, 0x0

    #@10a
    goto :goto_3

    #@10b
    .line 130
    .end local v5    # "_arg0":Landroid/hardware/ICameraClient;
    .end local v6    # "_arg1":I
    .end local v9    # "_arg4":I
    .end local v13    # "_arg2":I
    .end local v14    # "_arg3":Ljava/lang/String;
    .end local v25    # "_result":Landroid/hardware/ICamera;
    :sswitch_6
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@10e
    move-object/from16 v0, p2

    #@110
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@113
    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@116
    move-result-object v4

    #@117
    invoke-static {v4}, Landroid/hardware/ICameraServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraServiceListener;

    #@11a
    move-result-object v17

    #@11b
    .line 133
    .local v17, "_arg0":Landroid/hardware/ICameraServiceListener;
    move-object/from16 v0, p0

    #@11d
    move-object/from16 v1, v17

    #@11f
    invoke-virtual {v0, v1}, Landroid/hardware/ICameraService$Stub;->addListener(Landroid/hardware/ICameraServiceListener;)V

    #@122
    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@125
    .line 135
    const/4 v4, 0x1

    #@126
    return v4

    #@127
    .line 139
    .end local v17    # "_arg0":Landroid/hardware/ICameraServiceListener;
    :sswitch_7
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@12a
    move-object/from16 v0, p2

    #@12c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12f
    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@132
    move-result-object v4

    #@133
    invoke-static {v4}, Landroid/hardware/ICameraServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraServiceListener;

    #@136
    move-result-object v17

    #@137
    .line 142
    .restart local v17    # "_arg0":Landroid/hardware/ICameraServiceListener;
    move-object/from16 v0, p0

    #@139
    move-object/from16 v1, v17

    #@13b
    invoke-virtual {v0, v1}, Landroid/hardware/ICameraService$Stub;->removeListener(Landroid/hardware/ICameraServiceListener;)V

    #@13e
    .line 143
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@141
    .line 144
    const/4 v4, 0x1

    #@142
    return v4

    #@143
    .line 148
    .end local v17    # "_arg0":Landroid/hardware/ICameraServiceListener;
    :sswitch_8
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@146
    move-object/from16 v0, p2

    #@148
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14b
    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14e
    move-result v16

    #@14f
    .line 151
    .restart local v16    # "_arg0":I
    move-object/from16 v0, p0

    #@151
    move/from16 v1, v16

    #@153
    invoke-virtual {v0, v1}, Landroid/hardware/ICameraService$Stub;->getCameraCharacteristics(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@156
    move-result-object v27

    #@157
    .line 152
    .local v27, "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@15a
    .line 153
    if-eqz v27, :cond_4

    #@15c
    .line 154
    const/4 v4, 0x1

    #@15d
    move-object/from16 v0, p3

    #@15f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@162
    .line 155
    const/4 v4, 0x1

    #@163
    move-object/from16 v0, v27

    #@165
    move-object/from16 v1, p3

    #@167
    invoke-virtual {v0, v1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    #@16a
    .line 160
    :goto_4
    const/4 v4, 0x1

    #@16b
    return v4

    #@16c
    .line 158
    :cond_4
    const/4 v4, 0x0

    #@16d
    move-object/from16 v0, p3

    #@16f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@172
    goto :goto_4

    #@173
    .line 164
    .end local v16    # "_arg0":I
    .end local v27    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :sswitch_9
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@176
    move-object/from16 v0, p2

    #@178
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17b
    .line 165
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/ICameraService$Stub;->getCameraVendorTagDescriptor()Landroid/hardware/camera2/params/VendorTagDescriptor;

    #@17e
    move-result-object v28

    #@17f
    .line 166
    .local v28, "_result":Landroid/hardware/camera2/params/VendorTagDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@182
    .line 167
    if-eqz v28, :cond_5

    #@184
    .line 168
    const/4 v4, 0x1

    #@185
    move-object/from16 v0, p3

    #@187
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@18a
    .line 169
    const/4 v4, 0x1

    #@18b
    move-object/from16 v0, v28

    #@18d
    move-object/from16 v1, p3

    #@18f
    invoke-virtual {v0, v1, v4}, Landroid/hardware/camera2/params/VendorTagDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@192
    .line 174
    :goto_5
    const/4 v4, 0x1

    #@193
    return v4

    #@194
    .line 172
    :cond_5
    const/4 v4, 0x0

    #@195
    move-object/from16 v0, p3

    #@197
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@19a
    goto :goto_5

    #@19b
    .line 178
    .end local v28    # "_result":Landroid/hardware/camera2/params/VendorTagDescriptor;
    :sswitch_a
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@19e
    move-object/from16 v0, p2

    #@1a0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a3
    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a6
    move-result v16

    #@1a7
    .line 181
    .restart local v16    # "_arg0":I
    move-object/from16 v0, p0

    #@1a9
    move/from16 v1, v16

    #@1ab
    invoke-virtual {v0, v1}, Landroid/hardware/ICameraService$Stub;->getLegacyParameters(I)Ljava/lang/String;

    #@1ae
    move-result-object v29

    #@1af
    .line 182
    .local v29, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b2
    .line 183
    move-object/from16 v0, p3

    #@1b4
    move-object/from16 v1, v29

    #@1b6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b9
    .line 184
    const/4 v4, 0x1

    #@1ba
    return v4

    #@1bb
    .line 188
    .end local v16    # "_arg0":I
    .end local v29    # "_result":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@1be
    move-object/from16 v0, p2

    #@1c0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c3
    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c6
    move-result v16

    #@1c7
    .line 192
    .restart local v16    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ca
    move-result v6

    #@1cb
    .line 193
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@1cd
    move/from16 v1, v16

    #@1cf
    invoke-virtual {v0, v1, v6}, Landroid/hardware/ICameraService$Stub;->supportsCameraApi(II)Z

    #@1d2
    move-result v30

    #@1d3
    .line 194
    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d6
    .line 195
    if-eqz v30, :cond_6

    #@1d8
    const/4 v4, 0x1

    #@1d9
    :goto_6
    move-object/from16 v0, p3

    #@1db
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1de
    .line 196
    const/4 v4, 0x1

    #@1df
    return v4

    #@1e0
    .line 195
    :cond_6
    const/4 v4, 0x0

    #@1e1
    goto :goto_6

    #@1e2
    .line 200
    .end local v6    # "_arg1":I
    .end local v16    # "_arg0":I
    .end local v30    # "_result":Z
    :sswitch_c
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@1e5
    move-object/from16 v0, p2

    #@1e7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ea
    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ed
    move-result-object v19

    #@1ee
    .line 204
    .local v19, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f1
    move-result v4

    #@1f2
    if-eqz v4, :cond_7

    #@1f4
    const/16 v20, 0x1

    #@1f6
    .line 206
    .local v20, "_arg1":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1f9
    move-result-object v22

    #@1fa
    .line 207
    .local v22, "_arg2":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@1fc
    move-object/from16 v1, v19

    #@1fe
    move/from16 v2, v20

    #@200
    move-object/from16 v3, v22

    #@202
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/ICameraService$Stub;->setTorchMode(Ljava/lang/String;ZLandroid/os/IBinder;)V

    #@205
    .line 208
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@208
    .line 209
    const/4 v4, 0x1

    #@209
    return v4

    #@20a
    .line 204
    .end local v20    # "_arg1":Z
    .end local v22    # "_arg2":Landroid/os/IBinder;
    :cond_7
    const/16 v20, 0x0

    #@20c
    .restart local v20    # "_arg1":Z
    goto :goto_7

    #@20d
    .line 213
    .end local v19    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg1":Z
    :sswitch_d
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@210
    move-object/from16 v0, p2

    #@212
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@215
    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@218
    move-result v16

    #@219
    .line 217
    .restart local v16    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@21c
    move-result-object v21

    #@21d
    .line 218
    .local v21, "_arg1":[I
    move-object/from16 v0, p0

    #@21f
    move/from16 v1, v16

    #@221
    move-object/from16 v2, v21

    #@223
    invoke-virtual {v0, v1, v2}, Landroid/hardware/ICameraService$Stub;->notifySystemEvent(I[I)V

    #@226
    .line 219
    const/4 v4, 0x1

    #@227
    return v4

    #@228
    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
