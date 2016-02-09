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
    .locals 18
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
    .line 275
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v17

    #@7
    return v17

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v17, "android.hardware.camera2.ICameraDeviceUser"

    #@b
    move-object/from16 v0, p3

    #@d
    move-object/from16 v1, v17

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 44
    const/16 v17, 0x1

    #@14
    return v17

    #@15
    .line 48
    :sswitch_1
    const-string/jumbo v17, "android.hardware.camera2.ICameraDeviceUser"

    #@18
    move-object/from16 v0, p2

    #@1a
    move-object/from16 v1, v17

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
    const/16 v17, 0x1

    #@27
    return v17

    #@28
    .line 55
    :sswitch_2
    const-string/jumbo v17, "android.hardware.camera2.ICameraDeviceUser"

    #@2b
    move-object/from16 v0, p2

    #@2d
    move-object/from16 v1, v17

    #@2f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32
    .line 57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v17

    #@36
    if-eqz v17, :cond_0

    #@38
    .line 58
    sget-object v17, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3a
    move-object/from16 v0, v17

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
    move-result v17

    #@48
    if-eqz v17, :cond_1

    #@4a
    const/4 v13, 0x1

    #@4b
    .line 66
    .local v13, "_arg1":Z
    :goto_1
    new-instance v15, Landroid/hardware/camera2/utils/LongParcelable;

    #@4d
    invoke-direct {v15}, Landroid/hardware/camera2/utils/LongParcelable;-><init>()V

    #@50
    .line 67
    .local v15, "_arg2":Landroid/hardware/camera2/utils/LongParcelable;
    move-object/from16 v0, p0

    #@52
    invoke-virtual {v0, v3, v13, v15}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->submitRequest(Landroid/hardware/camera2/CaptureRequest;ZLandroid/hardware/camera2/utils/LongParcelable;)I

    #@55
    move-result v16

    #@56
    .line 68
    .local v16, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@59
    .line 69
    move-object/from16 v0, p3

    #@5b
    move/from16 v1, v16

    #@5d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@60
    .line 70
    if-eqz v15, :cond_2

    #@62
    .line 71
    const/16 v17, 0x1

    #@64
    move-object/from16 v0, p3

    #@66
    move/from16 v1, v17

    #@68
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6b
    .line 72
    const/16 v17, 0x1

    #@6d
    move-object/from16 v0, p3

    #@6f
    move/from16 v1, v17

    #@71
    invoke-virtual {v15, v0, v1}, Landroid/hardware/camera2/utils/LongParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    #@74
    .line 77
    :goto_2
    const/16 v17, 0x1

    #@76
    return v17

    #@77
    .line 61
    .end local v13    # "_arg1":Z
    .end local v15    # "_arg2":Landroid/hardware/camera2/utils/LongParcelable;
    .end local v16    # "_result":I
    :cond_0
    const/4 v3, 0x0

    #@78
    .local v3, "_arg0":Landroid/hardware/camera2/CaptureRequest;
    goto :goto_0

    #@79
    .line 64
    .end local v3    # "_arg0":Landroid/hardware/camera2/CaptureRequest;
    :cond_1
    const/4 v13, 0x0

    #@7a
    .restart local v13    # "_arg1":Z
    goto :goto_1

    #@7b
    .line 75
    .restart local v15    # "_arg2":Landroid/hardware/camera2/utils/LongParcelable;
    .restart local v16    # "_result":I
    :cond_2
    const/16 v17, 0x0

    #@7d
    move-object/from16 v0, p3

    #@7f
    move/from16 v1, v17

    #@81
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@84
    goto :goto_2

    #@85
    .line 81
    .end local v13    # "_arg1":Z
    .end local v15    # "_arg2":Landroid/hardware/camera2/utils/LongParcelable;
    .end local v16    # "_result":I
    :sswitch_3
    const-string/jumbo v17, "android.hardware.camera2.ICameraDeviceUser"

    #@88
    move-object/from16 v0, p2

    #@8a
    move-object/from16 v1, v17

    #@8c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8f
    .line 83
    sget-object v17, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@91
    move-object/from16 v0, p2

    #@93
    move-object/from16 v1, v17

    #@95
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@98
    move-result-object v8

    #@99
    .line 85
    .local v8, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9c
    move-result v17

    #@9d
    if-eqz v17, :cond_3

    #@9f
    const/4 v13, 0x1

    #@a0
    .line 87
    .restart local v13    # "_arg1":Z
    :goto_3
    new-instance v15, Landroid/hardware/camera2/utils/LongParcelable;

    #@a2
    invoke-direct {v15}, Landroid/hardware/camera2/utils/LongParcelable;-><init>()V

    #@a5
    .line 88
    .restart local v15    # "_arg2":Landroid/hardware/camera2/utils/LongParcelable;
    move-object/from16 v0, p0

    #@a7
    invoke-virtual {v0, v8, v13, v15}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->submitRequestList(Ljava/util/List;ZLandroid/hardware/camera2/utils/LongParcelable;)I

    #@aa
    move-result v16

    #@ab
    .line 89
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ae
    .line 90
    move-object/from16 v0, p3

    #@b0
    move/from16 v1, v16

    #@b2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@b5
    .line 91
    if-eqz v15, :cond_4

    #@b7
    .line 92
    const/16 v17, 0x1

    #@b9
    move-object/from16 v0, p3

    #@bb
    move/from16 v1, v17

    #@bd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c0
    .line 93
    const/16 v17, 0x1

    #@c2
    move-object/from16 v0, p3

    #@c4
    move/from16 v1, v17

    #@c6
    invoke-virtual {v15, v0, v1}, Landroid/hardware/camera2/utils/LongParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    #@c9
    .line 98
    :goto_4
    const/16 v17, 0x1

    #@cb
    return v17

    #@cc
    .line 85
    .end local v13    # "_arg1":Z
    .end local v15    # "_arg2":Landroid/hardware/camera2/utils/LongParcelable;
    .end local v16    # "_result":I
    :cond_3
    const/4 v13, 0x0

    #@cd
    .restart local v13    # "_arg1":Z
    goto :goto_3

    #@ce
    .line 96
    .restart local v15    # "_arg2":Landroid/hardware/camera2/utils/LongParcelable;
    .restart local v16    # "_result":I
    :cond_4
    const/16 v17, 0x0

    #@d0
    move-object/from16 v0, p3

    #@d2
    move/from16 v1, v17

    #@d4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@d7
    goto :goto_4

    #@d8
    .line 102
    .end local v8    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    .end local v13    # "_arg1":Z
    .end local v15    # "_arg2":Landroid/hardware/camera2/utils/LongParcelable;
    .end local v16    # "_result":I
    :sswitch_4
    const-string/jumbo v17, "android.hardware.camera2.ICameraDeviceUser"

    #@db
    move-object/from16 v0, p2

    #@dd
    move-object/from16 v1, v17

    #@df
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e2
    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e5
    move-result v2

    #@e6
    .line 106
    .local v2, "_arg0":I
    new-instance v12, Landroid/hardware/camera2/utils/LongParcelable;

    #@e8
    invoke-direct {v12}, Landroid/hardware/camera2/utils/LongParcelable;-><init>()V

    #@eb
    .line 107
    .local v12, "_arg1":Landroid/hardware/camera2/utils/LongParcelable;
    move-object/from16 v0, p0

    #@ed
    invoke-virtual {v0, v2, v12}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->cancelRequest(ILandroid/hardware/camera2/utils/LongParcelable;)I

    #@f0
    move-result v16

    #@f1
    .line 108
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f4
    .line 109
    move-object/from16 v0, p3

    #@f6
    move/from16 v1, v16

    #@f8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@fb
    .line 110
    if-eqz v12, :cond_5

    #@fd
    .line 111
    const/16 v17, 0x1

    #@ff
    move-object/from16 v0, p3

    #@101
    move/from16 v1, v17

    #@103
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@106
    .line 112
    const/16 v17, 0x1

    #@108
    move-object/from16 v0, p3

    #@10a
    move/from16 v1, v17

    #@10c
    invoke-virtual {v12, v0, v1}, Landroid/hardware/camera2/utils/LongParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    #@10f
    .line 117
    :goto_5
    const/16 v17, 0x1

    #@111
    return v17

    #@112
    .line 115
    :cond_5
    const/16 v17, 0x0

    #@114
    move-object/from16 v0, p3

    #@116
    move/from16 v1, v17

    #@118
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@11b
    goto :goto_5

    #@11c
    .line 121
    .end local v2    # "_arg0":I
    .end local v12    # "_arg1":Landroid/hardware/camera2/utils/LongParcelable;
    .end local v16    # "_result":I
    :sswitch_5
    const-string/jumbo v17, "android.hardware.camera2.ICameraDeviceUser"

    #@11f
    move-object/from16 v0, p2

    #@121
    move-object/from16 v1, v17

    #@123
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@126
    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->beginConfigure()I

    #@129
    move-result v16

    #@12a
    .line 123
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12d
    .line 124
    move-object/from16 v0, p3

    #@12f
    move/from16 v1, v16

    #@131
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@134
    .line 125
    const/16 v17, 0x1

    #@136
    return v17

    #@137
    .line 129
    .end local v16    # "_result":I
    :sswitch_6
    const-string/jumbo v17, "android.hardware.camera2.ICameraDeviceUser"

    #@13a
    move-object/from16 v0, p2

    #@13c
    move-object/from16 v1, v17

    #@13e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@141
    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@144
    move-result v17

    #@145
    if-eqz v17, :cond_6

    #@147
    const/4 v9, 0x1

    #@148
    .line 132
    .local v9, "_arg0":Z
    :goto_6
    move-object/from16 v0, p0

    #@14a
    invoke-virtual {v0, v9}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->endConfigure(Z)I

    #@14d
    move-result v16

    #@14e
    .line 133
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@151
    .line 134
    move-object/from16 v0, p3

    #@153
    move/from16 v1, v16

    #@155
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@158
    .line 135
    const/16 v17, 0x1

    #@15a
    return v17

    #@15b
    .line 131
    .end local v9    # "_arg0":Z
    .end local v16    # "_result":I
    :cond_6
    const/4 v9, 0x0

    #@15c
    .restart local v9    # "_arg0":Z
    goto :goto_6

    #@15d
    .line 139
    .end local v9    # "_arg0":Z
    :sswitch_7
    const-string/jumbo v17, "android.hardware.camera2.ICameraDeviceUser"

    #@160
    move-object/from16 v0, p2

    #@162
    move-object/from16 v1, v17

    #@164
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@167
    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16a
    move-result v2

    #@16b
    .line 142
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@16d
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->deleteStream(I)I

    #@170
    move-result v16

    #@171
    .line 143
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@174
    .line 144
    move-object/from16 v0, p3

    #@176
    move/from16 v1, v16

    #@178
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@17b
    .line 145
    const/16 v17, 0x1

    #@17d
    return v17

    #@17e
    .line 149
    .end local v2    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_8
    const-string/jumbo v17, "android.hardware.camera2.ICameraDeviceUser"

    #@181
    move-object/from16 v0, p2

    #@183
    move-object/from16 v1, v17

    #@185
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@188
    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18b
    move-result v17

    #@18c
    if-eqz v17, :cond_7

    #@18e
    .line 152
    sget-object v17, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@190
    move-object/from16 v0, v17

    #@192
    move-object/from16 v1, p2

    #@194
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@197
    move-result-object v5

    #@198
    check-cast v5, Landroid/hardware/camera2/params/OutputConfiguration;

    #@19a
    .line 157
    :goto_7
    move-object/from16 v0, p0

    #@19c
    invoke-virtual {v0, v5}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I

    #@19f
    move-result v16

    #@1a0
    .line 158
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a3
    .line 159
    move-object/from16 v0, p3

    #@1a5
    move/from16 v1, v16

    #@1a7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1aa
    .line 160
    const/16 v17, 0x1

    #@1ac
    return v17

    #@1ad
    .line 155
    .end local v16    # "_result":I
    :cond_7
    const/4 v5, 0x0

    #@1ae
    .local v5, "_arg0":Landroid/hardware/camera2/params/OutputConfiguration;
    goto :goto_7

    #@1af
    .line 164
    .end local v5    # "_arg0":Landroid/hardware/camera2/params/OutputConfiguration;
    :sswitch_9
    const-string/jumbo v17, "android.hardware.camera2.ICameraDeviceUser"

    #@1b2
    move-object/from16 v0, p2

    #@1b4
    move-object/from16 v1, v17

    #@1b6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b9
    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1bc
    move-result v2

    #@1bd
    .line 168
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c0
    move-result v10

    #@1c1
    .line 170
    .local v10, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c4
    move-result v14

    #@1c5
    .line 171
    .local v14, "_arg2":I
    move-object/from16 v0, p0

    #@1c7
    invoke-virtual {v0, v2, v10, v14}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createInputStream(III)I

    #@1ca
    move-result v16

    #@1cb
    .line 172
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ce
    .line 173
    move-object/from16 v0, p3

    #@1d0
    move/from16 v1, v16

    #@1d2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1d5
    .line 174
    const/16 v17, 0x1

    #@1d7
    return v17

    #@1d8
    .line 178
    .end local v2    # "_arg0":I
    .end local v10    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v16    # "_result":I
    :sswitch_a
    const-string/jumbo v17, "android.hardware.camera2.ICameraDeviceUser"

    #@1db
    move-object/from16 v0, p2

    #@1dd
    move-object/from16 v1, v17

    #@1df
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e2
    .line 180
    new-instance v7, Landroid/view/Surface;

    #@1e4
    invoke-direct {v7}, Landroid/view/Surface;-><init>()V

    #@1e7
    .line 181
    .local v7, "_arg0":Landroid/view/Surface;
    move-object/from16 v0, p0

    #@1e9
    invoke-virtual {v0, v7}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getInputSurface(Landroid/view/Surface;)I

    #@1ec
    move-result v16

    #@1ed
    .line 182
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f0
    .line 183
    move-object/from16 v0, p3

    #@1f2
    move/from16 v1, v16

    #@1f4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1f7
    .line 184
    if-eqz v7, :cond_8

    #@1f9
    .line 185
    const/16 v17, 0x1

    #@1fb
    move-object/from16 v0, p3

    #@1fd
    move/from16 v1, v17

    #@1ff
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@202
    .line 186
    const/16 v17, 0x1

    #@204
    move-object/from16 v0, p3

    #@206
    move/from16 v1, v17

    #@208
    invoke-virtual {v7, v0, v1}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    #@20b
    .line 191
    :goto_8
    const/16 v17, 0x1

    #@20d
    return v17

    #@20e
    .line 189
    :cond_8
    const/16 v17, 0x0

    #@210
    move-object/from16 v0, p3

    #@212
    move/from16 v1, v17

    #@214
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@217
    goto :goto_8

    #@218
    .line 195
    .end local v7    # "_arg0":Landroid/view/Surface;
    .end local v16    # "_result":I
    :sswitch_b
    const-string/jumbo v17, "android.hardware.camera2.ICameraDeviceUser"

    #@21b
    move-object/from16 v0, p2

    #@21d
    move-object/from16 v1, v17

    #@21f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@222
    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@225
    move-result v2

    #@226
    .line 199
    .restart local v2    # "_arg0":I
    new-instance v11, Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@228
    invoke-direct {v11}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    #@22b
    .line 200
    .local v11, "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    move-object/from16 v0, p0

    #@22d
    invoke-virtual {v0, v2, v11}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createDefaultRequest(ILandroid/hardware/camera2/impl/CameraMetadataNative;)I

    #@230
    move-result v16

    #@231
    .line 201
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@234
    .line 202
    move-object/from16 v0, p3

    #@236
    move/from16 v1, v16

    #@238
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@23b
    .line 203
    if-eqz v11, :cond_9

    #@23d
    .line 204
    const/16 v17, 0x1

    #@23f
    move-object/from16 v0, p3

    #@241
    move/from16 v1, v17

    #@243
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@246
    .line 205
    const/16 v17, 0x1

    #@248
    move-object/from16 v0, p3

    #@24a
    move/from16 v1, v17

    #@24c
    invoke-virtual {v11, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    #@24f
    .line 210
    :goto_9
    const/16 v17, 0x1

    #@251
    return v17

    #@252
    .line 208
    :cond_9
    const/16 v17, 0x0

    #@254
    move-object/from16 v0, p3

    #@256
    move/from16 v1, v17

    #@258
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@25b
    goto :goto_9

    #@25c
    .line 214
    .end local v2    # "_arg0":I
    .end local v11    # "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v16    # "_result":I
    :sswitch_c
    const-string/jumbo v17, "android.hardware.camera2.ICameraDeviceUser"

    #@25f
    move-object/from16 v0, p2

    #@261
    move-object/from16 v1, v17

    #@263
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@266
    .line 216
    new-instance v4, Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@268
    invoke-direct {v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    #@26b
    .line 217
    .local v4, "_arg0":Landroid/hardware/camera2/impl/CameraMetadataNative;
    move-object/from16 v0, p0

    #@26d
    invoke-virtual {v0, v4}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getCameraInfo(Landroid/hardware/camera2/impl/CameraMetadataNative;)I

    #@270
    move-result v16

    #@271
    .line 218
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@274
    .line 219
    move-object/from16 v0, p3

    #@276
    move/from16 v1, v16

    #@278
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@27b
    .line 220
    if-eqz v4, :cond_a

    #@27d
    .line 221
    const/16 v17, 0x1

    #@27f
    move-object/from16 v0, p3

    #@281
    move/from16 v1, v17

    #@283
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@286
    .line 222
    const/16 v17, 0x1

    #@288
    move-object/from16 v0, p3

    #@28a
    move/from16 v1, v17

    #@28c
    invoke-virtual {v4, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    #@28f
    .line 227
    :goto_a
    const/16 v17, 0x1

    #@291
    return v17

    #@292
    .line 225
    :cond_a
    const/16 v17, 0x0

    #@294
    move-object/from16 v0, p3

    #@296
    move/from16 v1, v17

    #@298
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@29b
    goto :goto_a

    #@29c
    .line 231
    .end local v4    # "_arg0":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v16    # "_result":I
    :sswitch_d
    const-string/jumbo v17, "android.hardware.camera2.ICameraDeviceUser"

    #@29f
    move-object/from16 v0, p2

    #@2a1
    move-object/from16 v1, v17

    #@2a3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a6
    .line 232
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->waitUntilIdle()I

    #@2a9
    move-result v16

    #@2aa
    .line 233
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ad
    .line 234
    move-object/from16 v0, p3

    #@2af
    move/from16 v1, v16

    #@2b1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2b4
    .line 235
    const/16 v17, 0x1

    #@2b6
    return v17

    #@2b7
    .line 239
    .end local v16    # "_result":I
    :sswitch_e
    const-string/jumbo v17, "android.hardware.camera2.ICameraDeviceUser"

    #@2ba
    move-object/from16 v0, p2

    #@2bc
    move-object/from16 v1, v17

    #@2be
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c1
    .line 241
    new-instance v6, Landroid/hardware/camera2/utils/LongParcelable;

    #@2c3
    invoke-direct {v6}, Landroid/hardware/camera2/utils/LongParcelable;-><init>()V

    #@2c6
    .line 242
    .local v6, "_arg0":Landroid/hardware/camera2/utils/LongParcelable;
    move-object/from16 v0, p0

    #@2c8
    invoke-virtual {v0, v6}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->flush(Landroid/hardware/camera2/utils/LongParcelable;)I

    #@2cb
    move-result v16

    #@2cc
    .line 243
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2cf
    .line 244
    move-object/from16 v0, p3

    #@2d1
    move/from16 v1, v16

    #@2d3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2d6
    .line 245
    if-eqz v6, :cond_b

    #@2d8
    .line 246
    const/16 v17, 0x1

    #@2da
    move-object/from16 v0, p3

    #@2dc
    move/from16 v1, v17

    #@2de
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2e1
    .line 247
    const/16 v17, 0x1

    #@2e3
    move-object/from16 v0, p3

    #@2e5
    move/from16 v1, v17

    #@2e7
    invoke-virtual {v6, v0, v1}, Landroid/hardware/camera2/utils/LongParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    #@2ea
    .line 252
    :goto_b
    const/16 v17, 0x1

    #@2ec
    return v17

    #@2ed
    .line 250
    :cond_b
    const/16 v17, 0x0

    #@2ef
    move-object/from16 v0, p3

    #@2f1
    move/from16 v1, v17

    #@2f3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2f6
    goto :goto_b

    #@2f7
    .line 256
    .end local v6    # "_arg0":Landroid/hardware/camera2/utils/LongParcelable;
    .end local v16    # "_result":I
    :sswitch_f
    const-string/jumbo v17, "android.hardware.camera2.ICameraDeviceUser"

    #@2fa
    move-object/from16 v0, p2

    #@2fc
    move-object/from16 v1, v17

    #@2fe
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@301
    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@304
    move-result v2

    #@305
    .line 259
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@307
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->prepare(I)I

    #@30a
    move-result v16

    #@30b
    .line 260
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@30e
    .line 261
    move-object/from16 v0, p3

    #@310
    move/from16 v1, v16

    #@312
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@315
    .line 262
    const/16 v17, 0x1

    #@317
    return v17

    #@318
    .line 266
    .end local v2    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_10
    const-string/jumbo v17, "android.hardware.camera2.ICameraDeviceUser"

    #@31b
    move-object/from16 v0, p2

    #@31d
    move-object/from16 v1, v17

    #@31f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@322
    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@325
    move-result v2

    #@326
    .line 269
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@328
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->tearDown(I)I

    #@32b
    move-result v16

    #@32c
    .line 270
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@32f
    .line 271
    move-object/from16 v0, p3

    #@331
    move/from16 v1, v16

    #@333
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@336
    .line 272
    const/16 v17, 0x1

    #@338
    return v17

    #@339
    .line 39
    nop

    #@33a
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
