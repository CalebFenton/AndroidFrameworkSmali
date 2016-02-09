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

.field static final TRANSACTION_addListener:I = 0x5

.field static final TRANSACTION_connect:I = 0x3

.field static final TRANSACTION_connectDevice:I = 0x4

.field static final TRANSACTION_connectLegacy:I = 0xb

.field static final TRANSACTION_getCameraCharacteristics:I = 0x7

.field static final TRANSACTION_getCameraInfo:I = 0x2

.field static final TRANSACTION_getCameraVendorTagDescriptor:I = 0x8

.field static final TRANSACTION_getLegacyParameters:I = 0x9

.field static final TRANSACTION_getNumberOfCameras:I = 0x1

.field static final TRANSACTION_notifySystemEvent:I = 0xd

.field static final TRANSACTION_removeListener:I = 0x6

.field static final TRANSACTION_setTorchMode:I = 0xc

.field static final TRANSACTION_supportsCameraApi:I = 0xa


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
    .line 266
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
    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/ICameraService$Stub;->getNumberOfCameras()I

    #@1d
    move-result v30

    #@1e
    .line 54
    .local v30, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21
    .line 55
    move-object/from16 v0, p3

    #@23
    move/from16 v1, v30

    #@25
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 56
    const/4 v4, 0x1

    #@29
    return v4

    #@2a
    .line 60
    .end local v30    # "_result":I
    :sswitch_2
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@2d
    move-object/from16 v0, p2

    #@2f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32
    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v19

    #@36
    .line 64
    .local v19, "_arg0":I
    new-instance v23, Landroid/hardware/CameraInfo;

    #@38
    invoke-direct/range {v23 .. v23}, Landroid/hardware/CameraInfo;-><init>()V

    #@3b
    .line 65
    .local v23, "_arg1":Landroid/hardware/CameraInfo;
    move-object/from16 v0, p0

    #@3d
    move/from16 v1, v19

    #@3f
    move-object/from16 v2, v23

    #@41
    invoke-virtual {v0, v1, v2}, Landroid/hardware/ICameraService$Stub;->getCameraInfo(ILandroid/hardware/CameraInfo;)I

    #@44
    move-result v30

    #@45
    .line 66
    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@48
    .line 67
    move-object/from16 v0, p3

    #@4a
    move/from16 v1, v30

    #@4c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4f
    .line 68
    if-eqz v23, :cond_0

    #@51
    .line 69
    const/4 v4, 0x1

    #@52
    move-object/from16 v0, p3

    #@54
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@57
    .line 70
    const/4 v4, 0x1

    #@58
    move-object/from16 v0, v23

    #@5a
    move-object/from16 v1, p3

    #@5c
    invoke-virtual {v0, v1, v4}, Landroid/hardware/CameraInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@5f
    .line 75
    :goto_0
    const/4 v4, 0x1

    #@60
    return v4

    #@61
    .line 73
    :cond_0
    const/4 v4, 0x0

    #@62
    move-object/from16 v0, p3

    #@64
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@67
    goto :goto_0

    #@68
    .line 79
    .end local v19    # "_arg0":I
    .end local v23    # "_arg1":Landroid/hardware/CameraInfo;
    .end local v30    # "_result":I
    :sswitch_3
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@6b
    move-object/from16 v0, p2

    #@6d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@70
    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@73
    move-result-object v4

    #@74
    invoke-static {v4}, Landroid/hardware/ICameraClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraClient;

    #@77
    move-result-object v5

    #@78
    .line 83
    .local v5, "_arg0":Landroid/hardware/ICameraClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7b
    move-result v6

    #@7c
    .line 85
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7f
    move-result-object v7

    #@80
    .line 87
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@83
    move-result v8

    #@84
    .line 89
    .local v8, "_arg3":I
    new-instance v9, Landroid/hardware/camera2/utils/BinderHolder;

    #@86
    invoke-direct {v9}, Landroid/hardware/camera2/utils/BinderHolder;-><init>()V

    #@89
    .local v9, "_arg4":Landroid/hardware/camera2/utils/BinderHolder;
    move-object/from16 v4, p0

    #@8b
    .line 90
    invoke-virtual/range {v4 .. v9}, Landroid/hardware/ICameraService$Stub;->connect(Landroid/hardware/ICameraClient;ILjava/lang/String;ILandroid/hardware/camera2/utils/BinderHolder;)I

    #@8e
    move-result v30

    #@8f
    .line 91
    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@92
    .line 92
    move-object/from16 v0, p3

    #@94
    move/from16 v1, v30

    #@96
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@99
    .line 93
    if-eqz v9, :cond_1

    #@9b
    .line 94
    const/4 v4, 0x1

    #@9c
    move-object/from16 v0, p3

    #@9e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@a1
    .line 95
    const/4 v4, 0x1

    #@a2
    move-object/from16 v0, p3

    #@a4
    invoke-virtual {v9, v0, v4}, Landroid/hardware/camera2/utils/BinderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    #@a7
    .line 100
    :goto_1
    const/4 v4, 0x1

    #@a8
    return v4

    #@a9
    .line 98
    :cond_1
    const/4 v4, 0x0

    #@aa
    move-object/from16 v0, p3

    #@ac
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@af
    goto :goto_1

    #@b0
    .line 104
    .end local v5    # "_arg0":Landroid/hardware/ICameraClient;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Landroid/hardware/camera2/utils/BinderHolder;
    .end local v30    # "_result":I
    :sswitch_4
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@b3
    move-object/from16 v0, p2

    #@b5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b8
    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@bb
    move-result-object v4

    #@bc
    invoke-static {v4}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    #@bf
    move-result-object v11

    #@c0
    .line 108
    .local v11, "_arg0":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c3
    move-result v6

    #@c4
    .line 110
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c7
    move-result-object v7

    #@c8
    .line 112
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cb
    move-result v8

    #@cc
    .line 114
    .restart local v8    # "_arg3":I
    new-instance v9, Landroid/hardware/camera2/utils/BinderHolder;

    #@ce
    invoke-direct {v9}, Landroid/hardware/camera2/utils/BinderHolder;-><init>()V

    #@d1
    .restart local v9    # "_arg4":Landroid/hardware/camera2/utils/BinderHolder;
    move-object/from16 v10, p0

    #@d3
    move v12, v6

    #@d4
    move-object v13, v7

    #@d5
    move v14, v8

    #@d6
    move-object v15, v9

    #@d7
    .line 115
    invoke-virtual/range {v10 .. v15}, Landroid/hardware/ICameraService$Stub;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;ILjava/lang/String;ILandroid/hardware/camera2/utils/BinderHolder;)I

    #@da
    move-result v30

    #@db
    .line 116
    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@de
    .line 117
    move-object/from16 v0, p3

    #@e0
    move/from16 v1, v30

    #@e2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@e5
    .line 118
    if-eqz v9, :cond_2

    #@e7
    .line 119
    const/4 v4, 0x1

    #@e8
    move-object/from16 v0, p3

    #@ea
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@ed
    .line 120
    const/4 v4, 0x1

    #@ee
    move-object/from16 v0, p3

    #@f0
    invoke-virtual {v9, v0, v4}, Landroid/hardware/camera2/utils/BinderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    #@f3
    .line 125
    :goto_2
    const/4 v4, 0x1

    #@f4
    return v4

    #@f5
    .line 123
    :cond_2
    const/4 v4, 0x0

    #@f6
    move-object/from16 v0, p3

    #@f8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@fb
    goto :goto_2

    #@fc
    .line 129
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Landroid/hardware/camera2/utils/BinderHolder;
    .end local v11    # "_arg0":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local v30    # "_result":I
    :sswitch_5
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@ff
    move-object/from16 v0, p2

    #@101
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@104
    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@107
    move-result-object v4

    #@108
    invoke-static {v4}, Landroid/hardware/ICameraServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraServiceListener;

    #@10b
    move-result-object v20

    #@10c
    .line 132
    .local v20, "_arg0":Landroid/hardware/ICameraServiceListener;
    move-object/from16 v0, p0

    #@10e
    move-object/from16 v1, v20

    #@110
    invoke-virtual {v0, v1}, Landroid/hardware/ICameraService$Stub;->addListener(Landroid/hardware/ICameraServiceListener;)I

    #@113
    move-result v30

    #@114
    .line 133
    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@117
    .line 134
    move-object/from16 v0, p3

    #@119
    move/from16 v1, v30

    #@11b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@11e
    .line 135
    const/4 v4, 0x1

    #@11f
    return v4

    #@120
    .line 139
    .end local v20    # "_arg0":Landroid/hardware/ICameraServiceListener;
    .end local v30    # "_result":I
    :sswitch_6
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@123
    move-object/from16 v0, p2

    #@125
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@128
    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@12b
    move-result-object v4

    #@12c
    invoke-static {v4}, Landroid/hardware/ICameraServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraServiceListener;

    #@12f
    move-result-object v20

    #@130
    .line 142
    .restart local v20    # "_arg0":Landroid/hardware/ICameraServiceListener;
    move-object/from16 v0, p0

    #@132
    move-object/from16 v1, v20

    #@134
    invoke-virtual {v0, v1}, Landroid/hardware/ICameraService$Stub;->removeListener(Landroid/hardware/ICameraServiceListener;)I

    #@137
    move-result v30

    #@138
    .line 143
    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13b
    .line 144
    move-object/from16 v0, p3

    #@13d
    move/from16 v1, v30

    #@13f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@142
    .line 145
    const/4 v4, 0x1

    #@143
    return v4

    #@144
    .line 149
    .end local v20    # "_arg0":Landroid/hardware/ICameraServiceListener;
    .end local v30    # "_result":I
    :sswitch_7
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@147
    move-object/from16 v0, p2

    #@149
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14c
    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14f
    move-result v19

    #@150
    .line 153
    .restart local v19    # "_arg0":I
    new-instance v24, Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@152
    invoke-direct/range {v24 .. v24}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    #@155
    .line 154
    .local v24, "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    move-object/from16 v0, p0

    #@157
    move/from16 v1, v19

    #@159
    move-object/from16 v2, v24

    #@15b
    invoke-virtual {v0, v1, v2}, Landroid/hardware/ICameraService$Stub;->getCameraCharacteristics(ILandroid/hardware/camera2/impl/CameraMetadataNative;)I

    #@15e
    move-result v30

    #@15f
    .line 155
    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@162
    .line 156
    move-object/from16 v0, p3

    #@164
    move/from16 v1, v30

    #@166
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@169
    .line 157
    if-eqz v24, :cond_3

    #@16b
    .line 158
    const/4 v4, 0x1

    #@16c
    move-object/from16 v0, p3

    #@16e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@171
    .line 159
    const/4 v4, 0x1

    #@172
    move-object/from16 v0, v24

    #@174
    move-object/from16 v1, p3

    #@176
    invoke-virtual {v0, v1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    #@179
    .line 164
    :goto_3
    const/4 v4, 0x1

    #@17a
    return v4

    #@17b
    .line 162
    :cond_3
    const/4 v4, 0x0

    #@17c
    move-object/from16 v0, p3

    #@17e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@181
    goto :goto_3

    #@182
    .line 168
    .end local v19    # "_arg0":I
    .end local v24    # "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v30    # "_result":I
    :sswitch_8
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@185
    move-object/from16 v0, p2

    #@187
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18a
    .line 170
    new-instance v21, Landroid/hardware/camera2/utils/BinderHolder;

    #@18c
    invoke-direct/range {v21 .. v21}, Landroid/hardware/camera2/utils/BinderHolder;-><init>()V

    #@18f
    .line 171
    .local v21, "_arg0":Landroid/hardware/camera2/utils/BinderHolder;
    move-object/from16 v0, p0

    #@191
    move-object/from16 v1, v21

    #@193
    invoke-virtual {v0, v1}, Landroid/hardware/ICameraService$Stub;->getCameraVendorTagDescriptor(Landroid/hardware/camera2/utils/BinderHolder;)I

    #@196
    move-result v30

    #@197
    .line 172
    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@19a
    .line 173
    move-object/from16 v0, p3

    #@19c
    move/from16 v1, v30

    #@19e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a1
    .line 174
    if-eqz v21, :cond_4

    #@1a3
    .line 175
    const/4 v4, 0x1

    #@1a4
    move-object/from16 v0, p3

    #@1a6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a9
    .line 176
    const/4 v4, 0x1

    #@1aa
    move-object/from16 v0, v21

    #@1ac
    move-object/from16 v1, p3

    #@1ae
    invoke-virtual {v0, v1, v4}, Landroid/hardware/camera2/utils/BinderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b1
    .line 181
    :goto_4
    const/4 v4, 0x1

    #@1b2
    return v4

    #@1b3
    .line 179
    :cond_4
    const/4 v4, 0x0

    #@1b4
    move-object/from16 v0, p3

    #@1b6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1b9
    goto :goto_4

    #@1ba
    .line 185
    .end local v21    # "_arg0":Landroid/hardware/camera2/utils/BinderHolder;
    .end local v30    # "_result":I
    :sswitch_9
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@1bd
    move-object/from16 v0, p2

    #@1bf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c2
    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c5
    move-result v19

    #@1c6
    .line 189
    .restart local v19    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c9
    move-result v28

    #@1ca
    .line 190
    .local v28, "_arg1_length":I
    if-gez v28, :cond_5

    #@1cc
    .line 191
    const/16 v27, 0x0

    #@1ce
    .line 196
    :goto_5
    move-object/from16 v0, p0

    #@1d0
    move/from16 v1, v19

    #@1d2
    move-object/from16 v2, v27

    #@1d4
    invoke-virtual {v0, v1, v2}, Landroid/hardware/ICameraService$Stub;->getLegacyParameters(I[Ljava/lang/String;)I

    #@1d7
    move-result v30

    #@1d8
    .line 197
    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1db
    .line 198
    move-object/from16 v0, p3

    #@1dd
    move/from16 v1, v30

    #@1df
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1e2
    .line 199
    move-object/from16 v0, p3

    #@1e4
    move-object/from16 v1, v27

    #@1e6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@1e9
    .line 200
    const/4 v4, 0x1

    #@1ea
    return v4

    #@1eb
    .line 194
    .end local v30    # "_result":I
    :cond_5
    move/from16 v0, v28

    #@1ed
    new-array v0, v0, [Ljava/lang/String;

    #@1ef
    move-object/from16 v27, v0

    #@1f1
    .local v27, "_arg1":[Ljava/lang/String;
    goto :goto_5

    #@1f2
    .line 204
    .end local v19    # "_arg0":I
    .end local v27    # "_arg1":[Ljava/lang/String;
    .end local v28    # "_arg1_length":I
    :sswitch_a
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@1f5
    move-object/from16 v0, p2

    #@1f7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1fa
    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1fd
    move-result v19

    #@1fe
    .line 208
    .restart local v19    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@201
    move-result v6

    #@202
    .line 209
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@204
    move/from16 v1, v19

    #@206
    invoke-virtual {v0, v1, v6}, Landroid/hardware/ICameraService$Stub;->supportsCameraApi(II)I

    #@209
    move-result v30

    #@20a
    .line 210
    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@20d
    .line 211
    move-object/from16 v0, p3

    #@20f
    move/from16 v1, v30

    #@211
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@214
    .line 212
    const/4 v4, 0x1

    #@215
    return v4

    #@216
    .line 216
    .end local v6    # "_arg1":I
    .end local v19    # "_arg0":I
    .end local v30    # "_result":I
    :sswitch_b
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@219
    move-object/from16 v0, p2

    #@21b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21e
    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@221
    move-result-object v4

    #@222
    invoke-static {v4}, Landroid/hardware/ICameraClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraClient;

    #@225
    move-result-object v5

    #@226
    .line 220
    .restart local v5    # "_arg0":Landroid/hardware/ICameraClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@229
    move-result v6

    #@22a
    .line 222
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22d
    move-result v15

    #@22e
    .line 224
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@231
    move-result-object v16

    #@232
    .line 226
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@235
    move-result v17

    #@236
    .line 228
    .local v17, "_arg4":I
    new-instance v18, Landroid/hardware/camera2/utils/BinderHolder;

    #@238
    invoke-direct/range {v18 .. v18}, Landroid/hardware/camera2/utils/BinderHolder;-><init>()V

    #@23b
    .local v18, "_arg5":Landroid/hardware/camera2/utils/BinderHolder;
    move-object/from16 v12, p0

    #@23d
    move-object v13, v5

    #@23e
    move v14, v6

    #@23f
    .line 229
    invoke-virtual/range {v12 .. v18}, Landroid/hardware/ICameraService$Stub;->connectLegacy(Landroid/hardware/ICameraClient;IILjava/lang/String;ILandroid/hardware/camera2/utils/BinderHolder;)I

    #@242
    move-result v30

    #@243
    .line 230
    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@246
    .line 231
    move-object/from16 v0, p3

    #@248
    move/from16 v1, v30

    #@24a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@24d
    .line 232
    if-eqz v18, :cond_6

    #@24f
    .line 233
    const/4 v4, 0x1

    #@250
    move-object/from16 v0, p3

    #@252
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@255
    .line 234
    const/4 v4, 0x1

    #@256
    move-object/from16 v0, v18

    #@258
    move-object/from16 v1, p3

    #@25a
    invoke-virtual {v0, v1, v4}, Landroid/hardware/camera2/utils/BinderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    #@25d
    .line 239
    :goto_6
    const/4 v4, 0x1

    #@25e
    return v4

    #@25f
    .line 237
    :cond_6
    const/4 v4, 0x0

    #@260
    move-object/from16 v0, p3

    #@262
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@265
    goto :goto_6

    #@266
    .line 243
    .end local v5    # "_arg0":Landroid/hardware/ICameraClient;
    .end local v6    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Landroid/hardware/camera2/utils/BinderHolder;
    .end local v30    # "_result":I
    :sswitch_c
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@269
    move-object/from16 v0, p2

    #@26b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@26e
    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@271
    move-result-object v22

    #@272
    .line 247
    .local v22, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@275
    move-result v4

    #@276
    if-eqz v4, :cond_7

    #@278
    const/16 v25, 0x1

    #@27a
    .line 249
    .local v25, "_arg1":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@27d
    move-result-object v29

    #@27e
    .line 250
    .local v29, "_arg2":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@280
    move-object/from16 v1, v22

    #@282
    move/from16 v2, v25

    #@284
    move-object/from16 v3, v29

    #@286
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/ICameraService$Stub;->setTorchMode(Ljava/lang/String;ZLandroid/os/IBinder;)I

    #@289
    move-result v30

    #@28a
    .line 251
    .restart local v30    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@28d
    .line 252
    move-object/from16 v0, p3

    #@28f
    move/from16 v1, v30

    #@291
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@294
    .line 253
    const/4 v4, 0x1

    #@295
    return v4

    #@296
    .line 247
    .end local v25    # "_arg1":Z
    .end local v29    # "_arg2":Landroid/os/IBinder;
    .end local v30    # "_result":I
    :cond_7
    const/16 v25, 0x0

    #@298
    .restart local v25    # "_arg1":Z
    goto :goto_7

    #@299
    .line 257
    .end local v22    # "_arg0":Ljava/lang/String;
    .end local v25    # "_arg1":Z
    :sswitch_d
    const-string/jumbo v4, "android.hardware.ICameraService"

    #@29c
    move-object/from16 v0, p2

    #@29e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a1
    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a4
    move-result v19

    #@2a5
    .line 261
    .restart local v19    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@2a8
    move-result-object v26

    #@2a9
    .line 262
    .local v26, "_arg1":[I
    move-object/from16 v0, p0

    #@2ab
    move/from16 v1, v19

    #@2ad
    move-object/from16 v2, v26

    #@2af
    invoke-virtual {v0, v1, v2}, Landroid/hardware/ICameraService$Stub;->notifySystemEvent(I[I)V

    #@2b2
    .line 263
    const/4 v4, 0x1

    #@2b3
    return v4

    #@2b4
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
