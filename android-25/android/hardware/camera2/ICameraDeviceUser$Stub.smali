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

.field static final TRANSACTION_setDeferredConfiguration:I = 0x12

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
    .locals 20
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
    .line 263
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v19

    #@7
    return v19

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    #@b
    move-object/from16 v0, p3

    #@d
    move-object/from16 v1, v19

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 44
    const/16 v19, 0x1

    #@14
    return v19

    #@15
    .line 48
    :sswitch_1
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    #@18
    move-object/from16 v0, p2

    #@1a
    move-object/from16 v1, v19

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
    const/16 v19, 0x1

    #@27
    return v19

    #@28
    .line 55
    :sswitch_2
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    #@2b
    move-object/from16 v0, p2

    #@2d
    move-object/from16 v1, v19

    #@2f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32
    .line 57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v19

    #@36
    if-eqz v19, :cond_0

    #@38
    .line 58
    sget-object v19, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3a
    move-object/from16 v0, v19

    #@3c
    move-object/from16 v1, p2

    #@3e
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@41
    move-result-object v5

    #@42
    check-cast v5, Landroid/hardware/camera2/CaptureRequest;

    #@44
    .line 64
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v19

    #@48
    if-eqz v19, :cond_1

    #@4a
    const/4 v11, 0x1

    #@4b
    .line 65
    .local v11, "_arg1":Z
    :goto_1
    move-object/from16 v0, p0

    #@4d
    invoke-virtual {v0, v5, v11}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->submitRequest(Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    #@50
    move-result-object v17

    #@51
    .line 66
    .local v17, "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@54
    .line 67
    if-eqz v17, :cond_2

    #@56
    .line 68
    const/16 v19, 0x1

    #@58
    move-object/from16 v0, p3

    #@5a
    move/from16 v1, v19

    #@5c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5f
    .line 69
    const/16 v19, 0x1

    #@61
    move-object/from16 v0, v17

    #@63
    move-object/from16 v1, p3

    #@65
    move/from16 v2, v19

    #@67
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/utils/SubmitInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@6a
    .line 74
    :goto_2
    const/16 v19, 0x1

    #@6c
    return v19

    #@6d
    .line 61
    .end local v11    # "_arg1":Z
    .end local v17    # "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    :cond_0
    const/4 v5, 0x0

    #@6e
    .local v5, "_arg0":Landroid/hardware/camera2/CaptureRequest;
    goto :goto_0

    #@6f
    .line 64
    .end local v5    # "_arg0":Landroid/hardware/camera2/CaptureRequest;
    :cond_1
    const/4 v11, 0x0

    #@70
    goto :goto_1

    #@71
    .line 72
    .restart local v11    # "_arg1":Z
    .restart local v17    # "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    :cond_2
    const/16 v19, 0x0

    #@73
    move-object/from16 v0, p3

    #@75
    move/from16 v1, v19

    #@77
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@7a
    goto :goto_2

    #@7b
    .line 78
    .end local v11    # "_arg1":Z
    .end local v17    # "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    :sswitch_3
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    #@7e
    move-object/from16 v0, p2

    #@80
    move-object/from16 v1, v19

    #@82
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@85
    .line 80
    sget-object v19, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@87
    move-object/from16 v0, p2

    #@89
    move-object/from16 v1, v19

    #@8b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@8e
    move-result-object v8

    #@8f
    check-cast v8, [Landroid/hardware/camera2/CaptureRequest;

    #@91
    .line 82
    .local v8, "_arg0":[Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@94
    move-result v19

    #@95
    if-eqz v19, :cond_3

    #@97
    const/4 v11, 0x1

    #@98
    .line 83
    .restart local v11    # "_arg1":Z
    :goto_3
    move-object/from16 v0, p0

    #@9a
    invoke-virtual {v0, v8, v11}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    #@9d
    move-result-object v17

    #@9e
    .line 84
    .restart local v17    # "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a1
    .line 85
    if-eqz v17, :cond_4

    #@a3
    .line 86
    const/16 v19, 0x1

    #@a5
    move-object/from16 v0, p3

    #@a7
    move/from16 v1, v19

    #@a9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@ac
    .line 87
    const/16 v19, 0x1

    #@ae
    move-object/from16 v0, v17

    #@b0
    move-object/from16 v1, p3

    #@b2
    move/from16 v2, v19

    #@b4
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/utils/SubmitInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@b7
    .line 92
    :goto_4
    const/16 v19, 0x1

    #@b9
    return v19

    #@ba
    .line 82
    .end local v11    # "_arg1":Z
    .end local v17    # "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    :cond_3
    const/4 v11, 0x0

    #@bb
    goto :goto_3

    #@bc
    .line 90
    .restart local v11    # "_arg1":Z
    .restart local v17    # "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    :cond_4
    const/16 v19, 0x0

    #@be
    move-object/from16 v0, p3

    #@c0
    move/from16 v1, v19

    #@c2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c5
    goto :goto_4

    #@c6
    .line 96
    .end local v8    # "_arg0":[Landroid/hardware/camera2/CaptureRequest;
    .end local v11    # "_arg1":Z
    .end local v17    # "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    :sswitch_4
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    #@c9
    move-object/from16 v0, p2

    #@cb
    move-object/from16 v1, v19

    #@cd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d0
    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d3
    move-result v4

    #@d4
    .line 99
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    #@d6
    invoke-virtual {v0, v4}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->cancelRequest(I)J

    #@d9
    move-result-wide v14

    #@da
    .line 100
    .local v14, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@dd
    .line 101
    move-object/from16 v0, p3

    #@df
    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    #@e2
    .line 102
    const/16 v19, 0x1

    #@e4
    return v19

    #@e5
    .line 106
    .end local v4    # "_arg0":I
    .end local v14    # "_result":J
    :sswitch_5
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    #@e8
    move-object/from16 v0, p2

    #@ea
    move-object/from16 v1, v19

    #@ec
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ef
    .line 107
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->beginConfigure()V

    #@f2
    .line 108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f5
    .line 109
    const/16 v19, 0x1

    #@f7
    return v19

    #@f8
    .line 113
    :sswitch_6
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    #@fb
    move-object/from16 v0, p2

    #@fd
    move-object/from16 v1, v19

    #@ff
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@102
    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@105
    move-result v19

    #@106
    if-eqz v19, :cond_5

    #@108
    const/4 v7, 0x1

    #@109
    .line 116
    .local v7, "_arg0":Z
    :goto_5
    move-object/from16 v0, p0

    #@10b
    invoke-virtual {v0, v7}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->endConfigure(Z)V

    #@10e
    .line 117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@111
    .line 118
    const/16 v19, 0x1

    #@113
    return v19

    #@114
    .line 115
    .end local v7    # "_arg0":Z
    :cond_5
    const/4 v7, 0x0

    #@115
    goto :goto_5

    #@116
    .line 122
    :sswitch_7
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    #@119
    move-object/from16 v0, p2

    #@11b
    move-object/from16 v1, v19

    #@11d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@120
    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@123
    move-result v4

    #@124
    .line 125
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@126
    invoke-virtual {v0, v4}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->deleteStream(I)V

    #@129
    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12c
    .line 127
    const/16 v19, 0x1

    #@12e
    return v19

    #@12f
    .line 131
    .end local v4    # "_arg0":I
    :sswitch_8
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    #@132
    move-object/from16 v0, p2

    #@134
    move-object/from16 v1, v19

    #@136
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@139
    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@13c
    move-result v19

    #@13d
    if-eqz v19, :cond_6

    #@13f
    .line 134
    sget-object v19, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@141
    move-object/from16 v0, v19

    #@143
    move-object/from16 v1, p2

    #@145
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@148
    move-result-object v6

    #@149
    check-cast v6, Landroid/hardware/camera2/params/OutputConfiguration;

    #@14b
    .line 139
    :goto_6
    move-object/from16 v0, p0

    #@14d
    invoke-virtual {v0, v6}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I

    #@150
    move-result v13

    #@151
    .line 140
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@154
    .line 141
    move-object/from16 v0, p3

    #@156
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@159
    .line 142
    const/16 v19, 0x1

    #@15b
    return v19

    #@15c
    .line 137
    .end local v13    # "_result":I
    :cond_6
    const/4 v6, 0x0

    #@15d
    .local v6, "_arg0":Landroid/hardware/camera2/params/OutputConfiguration;
    goto :goto_6

    #@15e
    .line 146
    .end local v6    # "_arg0":Landroid/hardware/camera2/params/OutputConfiguration;
    :sswitch_9
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    #@161
    move-object/from16 v0, p2

    #@163
    move-object/from16 v1, v19

    #@165
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@168
    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16b
    move-result v4

    #@16c
    .line 150
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16f
    move-result v9

    #@170
    .line 152
    .local v9, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@173
    move-result v12

    #@174
    .line 153
    .local v12, "_arg2":I
    move-object/from16 v0, p0

    #@176
    invoke-virtual {v0, v4, v9, v12}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createInputStream(III)I

    #@179
    move-result v13

    #@17a
    .line 154
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17d
    .line 155
    move-object/from16 v0, p3

    #@17f
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@182
    .line 156
    const/16 v19, 0x1

    #@184
    return v19

    #@185
    .line 160
    .end local v4    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v12    # "_arg2":I
    .end local v13    # "_result":I
    :sswitch_a
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    #@188
    move-object/from16 v0, p2

    #@18a
    move-object/from16 v1, v19

    #@18c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18f
    .line 161
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getInputSurface()Landroid/view/Surface;

    #@192
    move-result-object v18

    #@193
    .line 162
    .local v18, "_result":Landroid/view/Surface;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@196
    .line 163
    if-eqz v18, :cond_7

    #@198
    .line 164
    const/16 v19, 0x1

    #@19a
    move-object/from16 v0, p3

    #@19c
    move/from16 v1, v19

    #@19e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a1
    .line 165
    const/16 v19, 0x1

    #@1a3
    move-object/from16 v0, v18

    #@1a5
    move-object/from16 v1, p3

    #@1a7
    move/from16 v2, v19

    #@1a9
    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    #@1ac
    .line 170
    :goto_7
    const/16 v19, 0x1

    #@1ae
    return v19

    #@1af
    .line 168
    :cond_7
    const/16 v19, 0x0

    #@1b1
    move-object/from16 v0, p3

    #@1b3
    move/from16 v1, v19

    #@1b5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1b8
    goto :goto_7

    #@1b9
    .line 174
    .end local v18    # "_result":Landroid/view/Surface;
    :sswitch_b
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    #@1bc
    move-object/from16 v0, p2

    #@1be
    move-object/from16 v1, v19

    #@1c0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c3
    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c6
    move-result v4

    #@1c7
    .line 177
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@1c9
    invoke-virtual {v0, v4}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@1cc
    move-result-object v16

    #@1cd
    .line 178
    .local v16, "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d0
    .line 179
    if-eqz v16, :cond_8

    #@1d2
    .line 180
    const/16 v19, 0x1

    #@1d4
    move-object/from16 v0, p3

    #@1d6
    move/from16 v1, v19

    #@1d8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1db
    .line 181
    const/16 v19, 0x1

    #@1dd
    move-object/from16 v0, v16

    #@1df
    move-object/from16 v1, p3

    #@1e1
    move/from16 v2, v19

    #@1e3
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e6
    .line 186
    :goto_8
    const/16 v19, 0x1

    #@1e8
    return v19

    #@1e9
    .line 184
    :cond_8
    const/16 v19, 0x0

    #@1eb
    move-object/from16 v0, p3

    #@1ed
    move/from16 v1, v19

    #@1ef
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1f2
    goto :goto_8

    #@1f3
    .line 190
    .end local v4    # "_arg0":I
    .end local v16    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :sswitch_c
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    #@1f6
    move-object/from16 v0, p2

    #@1f8
    move-object/from16 v1, v19

    #@1fa
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1fd
    .line 191
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getCameraInfo()Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@200
    move-result-object v16

    #@201
    .line 192
    .restart local v16    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@204
    .line 193
    if-eqz v16, :cond_9

    #@206
    .line 194
    const/16 v19, 0x1

    #@208
    move-object/from16 v0, p3

    #@20a
    move/from16 v1, v19

    #@20c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@20f
    .line 195
    const/16 v19, 0x1

    #@211
    move-object/from16 v0, v16

    #@213
    move-object/from16 v1, p3

    #@215
    move/from16 v2, v19

    #@217
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    #@21a
    .line 200
    :goto_9
    const/16 v19, 0x1

    #@21c
    return v19

    #@21d
    .line 198
    :cond_9
    const/16 v19, 0x0

    #@21f
    move-object/from16 v0, p3

    #@221
    move/from16 v1, v19

    #@223
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@226
    goto :goto_9

    #@227
    .line 204
    .end local v16    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :sswitch_d
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    #@22a
    move-object/from16 v0, p2

    #@22c
    move-object/from16 v1, v19

    #@22e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@231
    .line 205
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->waitUntilIdle()V

    #@234
    .line 206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@237
    .line 207
    const/16 v19, 0x1

    #@239
    return v19

    #@23a
    .line 211
    :sswitch_e
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    #@23d
    move-object/from16 v0, p2

    #@23f
    move-object/from16 v1, v19

    #@241
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@244
    .line 212
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->flush()J

    #@247
    move-result-wide v14

    #@248
    .line 213
    .restart local v14    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@24b
    .line 214
    move-object/from16 v0, p3

    #@24d
    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    #@250
    .line 215
    const/16 v19, 0x1

    #@252
    return v19

    #@253
    .line 219
    .end local v14    # "_result":J
    :sswitch_f
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    #@256
    move-object/from16 v0, p2

    #@258
    move-object/from16 v1, v19

    #@25a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@25d
    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@260
    move-result v4

    #@261
    .line 222
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@263
    invoke-virtual {v0, v4}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->prepare(I)V

    #@266
    .line 223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@269
    .line 224
    const/16 v19, 0x1

    #@26b
    return v19

    #@26c
    .line 228
    .end local v4    # "_arg0":I
    :sswitch_10
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    #@26f
    move-object/from16 v0, p2

    #@271
    move-object/from16 v1, v19

    #@273
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@276
    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@279
    move-result v4

    #@27a
    .line 231
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@27c
    invoke-virtual {v0, v4}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->tearDown(I)V

    #@27f
    .line 232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@282
    .line 233
    const/16 v19, 0x1

    #@284
    return v19

    #@285
    .line 237
    .end local v4    # "_arg0":I
    :sswitch_11
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    #@288
    move-object/from16 v0, p2

    #@28a
    move-object/from16 v1, v19

    #@28c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28f
    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@292
    move-result v4

    #@293
    .line 241
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@296
    move-result v9

    #@297
    .line 242
    .restart local v9    # "_arg1":I
    move-object/from16 v0, p0

    #@299
    invoke-virtual {v0, v4, v9}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->prepare2(II)V

    #@29c
    .line 243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@29f
    .line 244
    const/16 v19, 0x1

    #@2a1
    return v19

    #@2a2
    .line 248
    .end local v4    # "_arg0":I
    .end local v9    # "_arg1":I
    :sswitch_12
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    #@2a5
    move-object/from16 v0, p2

    #@2a7
    move-object/from16 v1, v19

    #@2a9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ac
    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2af
    move-result v4

    #@2b0
    .line 252
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b3
    move-result v19

    #@2b4
    if-eqz v19, :cond_a

    #@2b6
    .line 253
    sget-object v19, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2b8
    move-object/from16 v0, v19

    #@2ba
    move-object/from16 v1, p2

    #@2bc
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2bf
    move-result-object v10

    #@2c0
    check-cast v10, Landroid/hardware/camera2/params/OutputConfiguration;

    #@2c2
    .line 258
    :goto_a
    move-object/from16 v0, p0

    #@2c4
    invoke-virtual {v0, v4, v10}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->setDeferredConfiguration(ILandroid/hardware/camera2/params/OutputConfiguration;)V

    #@2c7
    .line 259
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ca
    .line 260
    const/16 v19, 0x1

    #@2cc
    return v19

    #@2cd
    .line 256
    :cond_a
    const/4 v10, 0x0

    #@2ce
    .local v10, "_arg1":Landroid/hardware/camera2/params/OutputConfiguration;
    goto :goto_a

    #@2cf
    .line 39
    nop

    #@2d0
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
