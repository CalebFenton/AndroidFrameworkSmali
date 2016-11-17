.class public abstract Landroid/hardware/camera2/ICameraDeviceUser$Stub;
.super Landroid/os/Binder;
.source "ICameraDeviceUser.java"

# interfaces
.implements Landroid/hardware/camera2/ICameraDeviceUser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/ICameraDeviceUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.camera2.ICameraDeviceUser"

.field static final TRANSACTION_beginConfigure:I = 0x5

.field static final TRANSACTION_cancelRequest:I = 0x4

.field static final TRANSACTION_createDefaultRequest:I = 0xb

.field static final TRANSACTION_createInputStream:I = 0x9

.field static final TRANSACTION_createStream:I = 0x8

.field static final TRANSACTION_deleteStream:I = 0x7

.field static final TRANSACTION_disconnect:I = 0x1

.field static final TRANSACTION_endConfigure:I = 0x6

.field static final TRANSACTION_flush:I = 0xe

.field static final TRANSACTION_getCameraInfo:I = 0xc

.field static final TRANSACTION_getInputSurface:I = 0xa

.field static final TRANSACTION_prepare:I = 0xf

.field static final TRANSACTION_prepare2:I = 0x11

.field static final TRANSACTION_submitRequest:I = 0x2

.field static final TRANSACTION_submitRequestList:I = 0x3

.field static final TRANSACTION_tearDown:I = 0x10

.field static final TRANSACTION_waitUntilIdle:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.hardware.camera2.ICameraDeviceUser"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceUser;
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
    const-string/jumbo v1, "android.hardware.camera2.ICameraDeviceUser"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/hardware/camera2/ICameraDeviceUser;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/hardware/camera2/ICameraDeviceUser;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 17
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
    .line 247
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v16

    #@7
    return v16

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    #@b
    move-object/from16 v0, p3

    #@d
    move-object/from16 v1, v16

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 44
    const/16 v16, 0x1

    #@14
    return v16

    #@15
    .line 48
    :sswitch_1
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    #@18
    move-object/from16 v0, p2

    #@1a
    move-object/from16 v1, v16

    #@1c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f
    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->disconnect()V

    #@22
    .line 50
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@25
    .line 51
    const/16 v16, 0x1

    #@27
    return v16

    #@28
    .line 55
    :sswitch_2
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    #@2b
    move-object/from16 v0, p2

    #@2d
    move-object/from16 v1, v16

    #@2f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32
    .line 57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v16

    #@36
    if-eqz v16, :cond_0

    #@38
    .line 58
    sget-object v16, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3a
    move-object/from16 v0, v16

    #@3c
    move-object/from16 v1, p2

    #@3e
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@41
    move-result-object v3

    #@42
    check-cast v3, Landroid/hardware/camera2/CaptureRequest;

    #@44
    .line 64
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v16

    #@48
    if-eqz v16, :cond_1

    #@4a
    const/4 v8, 0x1

    #@4b
    .line 65
    .local v8, "_arg1":Z
    :goto_1
    move-object/from16 v0, p0

    #@4d
    invoke-virtual {v0, v3, v8}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->submitRequest(Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    #@50
    move-result-object v14

    #@51
    .line 66
    .local v14, "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@54
    .line 67
    if-eqz v14, :cond_2

    #@56
    .line 68
    const/16 v16, 0x1

    #@58
    move-object/from16 v0, p3

    #@5a
    move/from16 v1, v16

    #@5c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5f
    .line 69
    const/16 v16, 0x1

    #@61
    move-object/from16 v0, p3

    #@63
    move/from16 v1, v16

    #@65
    invoke-virtual {v14, v0, v1}, Landroid/hardware/camera2/utils/SubmitInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@68
    .line 74
    :goto_2
    const/16 v16, 0x1

    #@6a
    return v16

    #@6b
    .line 61
    .end local v8    # "_arg1":Z
    .end local v14    # "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    :cond_0
    const/4 v3, 0x0

    #@6c
    .local v3, "_arg0":Landroid/hardware/camera2/CaptureRequest;
    goto :goto_0

    #@6d
    .line 64
    .end local v3    # "_arg0":Landroid/hardware/camera2/CaptureRequest;
    :cond_1
    const/4 v8, 0x0

    #@6e
    goto :goto_1

    #@6f
    .line 72
    .restart local v8    # "_arg1":Z
    .restart local v14    # "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    :cond_2
    const/16 v16, 0x0

    #@71
    move-object/from16 v0, p3

    #@73
    move/from16 v1, v16

    #@75
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@78
    goto :goto_2

    #@79
    .line 78
    .end local v8    # "_arg1":Z
    .end local v14    # "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    :sswitch_3
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    #@7c
    move-object/from16 v0, p2

    #@7e
    move-object/from16 v1, v16

    #@80
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@83
    .line 80
    sget-object v16, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@85
    move-object/from16 v0, p2

    #@87
    move-object/from16 v1, v16

    #@89
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@8c
    move-result-object v6

    #@8d
    check-cast v6, [Landroid/hardware/camera2/CaptureRequest;

    #@8f
    .line 82
    .local v6, "_arg0":[Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@92
    move-result v16

    #@93
    if-eqz v16, :cond_3

    #@95
    const/4 v8, 0x1

    #@96
    .line 83
    .restart local v8    # "_arg1":Z
    :goto_3
    move-object/from16 v0, p0

    #@98
    invoke-virtual {v0, v6, v8}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    #@9b
    move-result-object v14

    #@9c
    .line 84
    .restart local v14    # "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9f
    .line 85
    if-eqz v14, :cond_4

    #@a1
    .line 86
    const/16 v16, 0x1

    #@a3
    move-object/from16 v0, p3

    #@a5
    move/from16 v1, v16

    #@a7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@aa
    .line 87
    const/16 v16, 0x1

    #@ac
    move-object/from16 v0, p3

    #@ae
    move/from16 v1, v16

    #@b0
    invoke-virtual {v14, v0, v1}, Landroid/hardware/camera2/utils/SubmitInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@b3
    .line 92
    :goto_4
    const/16 v16, 0x1

    #@b5
    return v16

    #@b6
    .line 82
    .end local v8    # "_arg1":Z
    .end local v14    # "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    :cond_3
    const/4 v8, 0x0

    #@b7
    goto :goto_3

    #@b8
    .line 90
    .restart local v8    # "_arg1":Z
    .restart local v14    # "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    :cond_4
    const/16 v16, 0x0

    #@ba
    move-object/from16 v0, p3

    #@bc
    move/from16 v1, v16

    #@be
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c1
    goto :goto_4

    #@c2
    .line 96
    .end local v6    # "_arg0":[Landroid/hardware/camera2/CaptureRequest;
    .end local v8    # "_arg1":Z
    .end local v14    # "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    :sswitch_4
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    #@c5
    move-object/from16 v0, p2

    #@c7
    move-object/from16 v1, v16

    #@c9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cc
    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cf
    move-result v2

    #@d0
    .line 99
    .local v2, "_arg0":I
    move-object/from16 v0, p0

    #@d2
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->cancelRequest(I)J

    #@d5
    move-result-wide v12

    #@d6
    .line 100
    .local v12, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d9
    .line 101
    move-object/from16 v0, p3

    #@db
    invoke-virtual {v0, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    #@de
    .line 102
    const/16 v16, 0x1

    #@e0
    return v16

    #@e1
    .line 106
    .end local v2    # "_arg0":I
    .end local v12    # "_result":J
    :sswitch_5
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    #@e4
    move-object/from16 v0, p2

    #@e6
    move-object/from16 v1, v16

    #@e8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@eb
    .line 107
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->beginConfigure()V

    #@ee
    .line 108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f1
    .line 109
    const/16 v16, 0x1

    #@f3
    return v16

    #@f4
    .line 113
    :sswitch_6
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    #@f7
    move-object/from16 v0, p2

    #@f9
    move-object/from16 v1, v16

    #@fb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fe
    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@101
    move-result v16

    #@102
    if-eqz v16, :cond_5

    #@104
    const/4 v5, 0x1

    #@105
    .line 116
    .local v5, "_arg0":Z
    :goto_5
    move-object/from16 v0, p0

    #@107
    invoke-virtual {v0, v5}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->endConfigure(Z)V

    #@10a
    .line 117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10d
    .line 118
    const/16 v16, 0x1

    #@10f
    return v16

    #@110
    .line 115
    .end local v5    # "_arg0":Z
    :cond_5
    const/4 v5, 0x0

    #@111
    goto :goto_5

    #@112
    .line 122
    :sswitch_7
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    #@115
    move-object/from16 v0, p2

    #@117
    move-object/from16 v1, v16

    #@119
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11c
    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11f
    move-result v2

    #@120
    .line 125
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@122
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->deleteStream(I)V

    #@125
    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@128
    .line 127
    const/16 v16, 0x1

    #@12a
    return v16

    #@12b
    .line 131
    .end local v2    # "_arg0":I
    :sswitch_8
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    #@12e
    move-object/from16 v0, p2

    #@130
    move-object/from16 v1, v16

    #@132
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@135
    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@138
    move-result v16

    #@139
    if-eqz v16, :cond_6

    #@13b
    .line 134
    sget-object v16, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@13d
    move-object/from16 v0, v16

    #@13f
    move-object/from16 v1, p2

    #@141
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@144
    move-result-object v4

    #@145
    check-cast v4, Landroid/hardware/camera2/params/OutputConfiguration;

    #@147
    .line 139
    :goto_6
    move-object/from16 v0, p0

    #@149
    invoke-virtual {v0, v4}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I

    #@14c
    move-result v10

    #@14d
    .line 140
    .local v10, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@150
    .line 141
    move-object/from16 v0, p3

    #@152
    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@155
    .line 142
    const/16 v16, 0x1

    #@157
    return v16

    #@158
    .line 137
    .end local v10    # "_result":I
    :cond_6
    const/4 v4, 0x0

    #@159
    .local v4, "_arg0":Landroid/hardware/camera2/params/OutputConfiguration;
    goto :goto_6

    #@15a
    .line 146
    .end local v4    # "_arg0":Landroid/hardware/camera2/params/OutputConfiguration;
    :sswitch_9
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    #@15d
    move-object/from16 v0, p2

    #@15f
    move-object/from16 v1, v16

    #@161
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@164
    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@167
    move-result v2

    #@168
    .line 150
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16b
    move-result v7

    #@16c
    .line 152
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16f
    move-result v9

    #@170
    .line 153
    .local v9, "_arg2":I
    move-object/from16 v0, p0

    #@172
    invoke-virtual {v0, v2, v7, v9}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createInputStream(III)I

    #@175
    move-result v10

    #@176
    .line 154
    .restart local v10    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@179
    .line 155
    move-object/from16 v0, p3

    #@17b
    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@17e
    .line 156
    const/16 v16, 0x1

    #@180
    return v16

    #@181
    .line 160
    .end local v2    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_result":I
    :sswitch_a
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    #@184
    move-object/from16 v0, p2

    #@186
    move-object/from16 v1, v16

    #@188
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18b
    .line 161
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getInputSurface()Landroid/view/Surface;

    #@18e
    move-result-object v15

    #@18f
    .line 162
    .local v15, "_result":Landroid/view/Surface;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@192
    .line 163
    if-eqz v15, :cond_7

    #@194
    .line 164
    const/16 v16, 0x1

    #@196
    move-object/from16 v0, p3

    #@198
    move/from16 v1, v16

    #@19a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@19d
    .line 165
    const/16 v16, 0x1

    #@19f
    move-object/from16 v0, p3

    #@1a1
    move/from16 v1, v16

    #@1a3
    invoke-virtual {v15, v0, v1}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a6
    .line 170
    :goto_7
    const/16 v16, 0x1

    #@1a8
    return v16

    #@1a9
    .line 168
    :cond_7
    const/16 v16, 0x0

    #@1ab
    move-object/from16 v0, p3

    #@1ad
    move/from16 v1, v16

    #@1af
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1b2
    goto :goto_7

    #@1b3
    .line 174
    .end local v15    # "_result":Landroid/view/Surface;
    :sswitch_b
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    #@1b6
    move-object/from16 v0, p2

    #@1b8
    move-object/from16 v1, v16

    #@1ba
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1bd
    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c0
    move-result v2

    #@1c1
    .line 177
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@1c3
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@1c6
    move-result-object v11

    #@1c7
    .line 178
    .local v11, "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ca
    .line 179
    if-eqz v11, :cond_8

    #@1cc
    .line 180
    const/16 v16, 0x1

    #@1ce
    move-object/from16 v0, p3

    #@1d0
    move/from16 v1, v16

    #@1d2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1d5
    .line 181
    const/16 v16, 0x1

    #@1d7
    move-object/from16 v0, p3

    #@1d9
    move/from16 v1, v16

    #@1db
    invoke-virtual {v11, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    #@1de
    .line 186
    :goto_8
    const/16 v16, 0x1

    #@1e0
    return v16

    #@1e1
    .line 184
    :cond_8
    const/16 v16, 0x0

    #@1e3
    move-object/from16 v0, p3

    #@1e5
    move/from16 v1, v16

    #@1e7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1ea
    goto :goto_8

    #@1eb
    .line 190
    .end local v2    # "_arg0":I
    .end local v11    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :sswitch_c
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    #@1ee
    move-object/from16 v0, p2

    #@1f0
    move-object/from16 v1, v16

    #@1f2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f5
    .line 191
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getCameraInfo()Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@1f8
    move-result-object v11

    #@1f9
    .line 192
    .restart local v11    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1fc
    .line 193
    if-eqz v11, :cond_9

    #@1fe
    .line 194
    const/16 v16, 0x1

    #@200
    move-object/from16 v0, p3

    #@202
    move/from16 v1, v16

    #@204
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@207
    .line 195
    const/16 v16, 0x1

    #@209
    move-object/from16 v0, p3

    #@20b
    move/from16 v1, v16

    #@20d
    invoke-virtual {v11, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    #@210
    .line 200
    :goto_9
    const/16 v16, 0x1

    #@212
    return v16

    #@213
    .line 198
    :cond_9
    const/16 v16, 0x0

    #@215
    move-object/from16 v0, p3

    #@217
    move/from16 v1, v16

    #@219
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@21c
    goto :goto_9

    #@21d
    .line 204
    .end local v11    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :sswitch_d
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    #@220
    move-object/from16 v0, p2

    #@222
    move-object/from16 v1, v16

    #@224
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@227
    .line 205
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->waitUntilIdle()V

    #@22a
    .line 206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@22d
    .line 207
    const/16 v16, 0x1

    #@22f
    return v16

    #@230
    .line 211
    :sswitch_e
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    #@233
    move-object/from16 v0, p2

    #@235
    move-object/from16 v1, v16

    #@237
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@23a
    .line 212
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->flush()J

    #@23d
    move-result-wide v12

    #@23e
    .line 213
    .restart local v12    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@241
    .line 214
    move-object/from16 v0, p3

    #@243
    invoke-virtual {v0, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    #@246
    .line 215
    const/16 v16, 0x1

    #@248
    return v16

    #@249
    .line 219
    .end local v12    # "_result":J
    :sswitch_f
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    #@24c
    move-object/from16 v0, p2

    #@24e
    move-object/from16 v1, v16

    #@250
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@253
    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@256
    move-result v2

    #@257
    .line 222
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@259
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->prepare(I)V

    #@25c
    .line 223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@25f
    .line 224
    const/16 v16, 0x1

    #@261
    return v16

    #@262
    .line 228
    .end local v2    # "_arg0":I
    :sswitch_10
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    #@265
    move-object/from16 v0, p2

    #@267
    move-object/from16 v1, v16

    #@269
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@26c
    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26f
    move-result v2

    #@270
    .line 231
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@272
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->tearDown(I)V

    #@275
    .line 232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@278
    .line 233
    const/16 v16, 0x1

    #@27a
    return v16

    #@27b
    .line 237
    .end local v2    # "_arg0":I
    :sswitch_11
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    #@27e
    move-object/from16 v0, p2

    #@280
    move-object/from16 v1, v16

    #@282
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@285
    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@288
    move-result v2

    #@289
    .line 241
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@28c
    move-result v7

    #@28d
    .line 242
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    #@28f
    invoke-virtual {v0, v2, v7}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->prepare2(II)V

    #@292
    .line 243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@295
    .line 244
    const/16 v16, 0x1

    #@297
    return v16

    #@298
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
