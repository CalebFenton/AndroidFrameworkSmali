.class public abstract Lcom/android/ims/internal/IImsService$Stub;
.super Landroid/os/Binder;
.source "IImsService.java"

# interfaces
.implements Lcom/android/ims/internal/IImsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsService"

.field static final TRANSACTION_addRegistrationListener:I = 0x6

.field static final TRANSACTION_close:I = 0x2

.field static final TRANSACTION_createCallProfile:I = 0x7

.field static final TRANSACTION_createCallSession:I = 0x8

.field static final TRANSACTION_getConfigInterface:I = 0xb

.field static final TRANSACTION_getEcbmInterface:I = 0xe

.field static final TRANSACTION_getMultiEndpointInterface:I = 0x10

.field static final TRANSACTION_getPendingCallSession:I = 0x9

.field static final TRANSACTION_getUtInterface:I = 0xa

.field static final TRANSACTION_isConnected:I = 0x3

.field static final TRANSACTION_isOpened:I = 0x4

.field static final TRANSACTION_open:I = 0x1

.field static final TRANSACTION_setRegistrationListener:I = 0x5

.field static final TRANSACTION_setUiTTYMode:I = 0xf

.field static final TRANSACTION_turnOffIms:I = 0xd

.field static final TRANSACTION_turnOnIms:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "com.android.ims.internal.IImsService"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 26
    if-nez p0, :cond_0

    #@3
    .line 27
    return-object v1

    #@4
    .line 29
    :cond_0
    const-string/jumbo v1, "com.android.ims.internal.IImsService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/ims/internal/IImsService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Lcom/android/ims/internal/IImsService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 22
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 254
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v21

    #@7
    return v21

    #@8
    .line 45
    :sswitch_0
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    #@b
    move-object/from16 v0, p3

    #@d
    move-object/from16 v1, v21

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 46
    const/16 v21, 0x1

    #@14
    return v21

    #@15
    .line 50
    :sswitch_1
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    #@18
    move-object/from16 v0, p2

    #@1a
    move-object/from16 v1, v21

    #@1c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f
    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v2

    #@23
    .line 54
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v3

    #@27
    .line 56
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v21

    #@2b
    if-eqz v21, :cond_0

    #@2d
    .line 57
    sget-object v21, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2f
    move-object/from16 v0, v21

    #@31
    move-object/from16 v1, p2

    #@33
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@36
    move-result-object v8

    #@37
    check-cast v8, Landroid/app/PendingIntent;

    #@39
    .line 63
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3c
    move-result-object v21

    #@3d
    invoke-static/range {v21 .. v21}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    #@40
    move-result-object v12

    #@41
    .line 64
    .local v12, "_arg3":Lcom/android/ims/internal/IImsRegistrationListener;
    move-object/from16 v0, p0

    #@43
    invoke-virtual {v0, v2, v3, v8, v12}, Lcom/android/ims/internal/IImsService$Stub;->open(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    #@46
    move-result v13

    #@47
    .line 65
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4a
    .line 66
    move-object/from16 v0, p3

    #@4c
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@4f
    .line 67
    const/16 v21, 0x1

    #@51
    return v21

    #@52
    .line 60
    .end local v12    # "_arg3":Lcom/android/ims/internal/IImsRegistrationListener;
    .end local v13    # "_result":I
    :cond_0
    const/4 v8, 0x0

    #@53
    .local v8, "_arg2":Landroid/app/PendingIntent;
    goto :goto_0

    #@54
    .line 71
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v8    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_2
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    #@57
    move-object/from16 v0, p2

    #@59
    move-object/from16 v1, v21

    #@5b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5e
    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@61
    move-result v2

    #@62
    .line 74
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@64
    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->close(I)V

    #@67
    .line 75
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6a
    .line 76
    const/16 v21, 0x1

    #@6c
    return v21

    #@6d
    .line 80
    .end local v2    # "_arg0":I
    :sswitch_3
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    #@70
    move-object/from16 v0, p2

    #@72
    move-object/from16 v1, v21

    #@74
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@77
    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7a
    move-result v2

    #@7b
    .line 84
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7e
    move-result v3

    #@7f
    .line 86
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@82
    move-result v7

    #@83
    .line 87
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    #@85
    invoke-virtual {v0, v2, v3, v7}, Lcom/android/ims/internal/IImsService$Stub;->isConnected(III)Z

    #@88
    move-result v20

    #@89
    .line 88
    .local v20, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8c
    .line 89
    if-eqz v20, :cond_1

    #@8e
    const/16 v21, 0x1

    #@90
    :goto_1
    move-object/from16 v0, p3

    #@92
    move/from16 v1, v21

    #@94
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@97
    .line 90
    const/16 v21, 0x1

    #@99
    return v21

    #@9a
    .line 89
    :cond_1
    const/16 v21, 0x0

    #@9c
    goto :goto_1

    #@9d
    .line 94
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v20    # "_result":Z
    :sswitch_4
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    #@a0
    move-object/from16 v0, p2

    #@a2
    move-object/from16 v1, v21

    #@a4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a7
    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@aa
    move-result v2

    #@ab
    .line 97
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@ad
    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->isOpened(I)Z

    #@b0
    move-result v20

    #@b1
    .line 98
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b4
    .line 99
    if-eqz v20, :cond_2

    #@b6
    const/16 v21, 0x1

    #@b8
    :goto_2
    move-object/from16 v0, p3

    #@ba
    move/from16 v1, v21

    #@bc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@bf
    .line 100
    const/16 v21, 0x1

    #@c1
    return v21

    #@c2
    .line 99
    :cond_2
    const/16 v21, 0x0

    #@c4
    goto :goto_2

    #@c5
    .line 104
    .end local v2    # "_arg0":I
    .end local v20    # "_result":Z
    :sswitch_5
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    #@c8
    move-object/from16 v0, p2

    #@ca
    move-object/from16 v1, v21

    #@cc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cf
    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d2
    move-result v2

    #@d3
    .line 108
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@d6
    move-result-object v21

    #@d7
    invoke-static/range {v21 .. v21}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    #@da
    move-result-object v5

    #@db
    .line 109
    .local v5, "_arg1":Lcom/android/ims/internal/IImsRegistrationListener;
    move-object/from16 v0, p0

    #@dd
    invoke-virtual {v0, v2, v5}, Lcom/android/ims/internal/IImsService$Stub;->setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V

    #@e0
    .line 110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e3
    .line 111
    const/16 v21, 0x1

    #@e5
    return v21

    #@e6
    .line 115
    .end local v2    # "_arg0":I
    .end local v5    # "_arg1":Lcom/android/ims/internal/IImsRegistrationListener;
    :sswitch_6
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    #@e9
    move-object/from16 v0, p2

    #@eb
    move-object/from16 v1, v21

    #@ed
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f0
    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f3
    move-result v2

    #@f4
    .line 119
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f7
    move-result v3

    #@f8
    .line 121
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@fb
    move-result-object v21

    #@fc
    invoke-static/range {v21 .. v21}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    #@ff
    move-result-object v11

    #@100
    .line 122
    .local v11, "_arg2":Lcom/android/ims/internal/IImsRegistrationListener;
    move-object/from16 v0, p0

    #@102
    invoke-virtual {v0, v2, v3, v11}, Lcom/android/ims/internal/IImsService$Stub;->addRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V

    #@105
    .line 123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@108
    .line 124
    const/16 v21, 0x1

    #@10a
    return v21

    #@10b
    .line 128
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v11    # "_arg2":Lcom/android/ims/internal/IImsRegistrationListener;
    :sswitch_7
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    #@10e
    move-object/from16 v0, p2

    #@110
    move-object/from16 v1, v21

    #@112
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@115
    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@118
    move-result v2

    #@119
    .line 132
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11c
    move-result v3

    #@11d
    .line 134
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@120
    move-result v7

    #@121
    .line 135
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@123
    invoke-virtual {v0, v2, v3, v7}, Lcom/android/ims/internal/IImsService$Stub;->createCallProfile(III)Lcom/android/ims/ImsCallProfile;

    #@126
    move-result-object v14

    #@127
    .line 136
    .local v14, "_result":Lcom/android/ims/ImsCallProfile;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12a
    .line 137
    if-eqz v14, :cond_3

    #@12c
    .line 138
    const/16 v21, 0x1

    #@12e
    move-object/from16 v0, p3

    #@130
    move/from16 v1, v21

    #@132
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@135
    .line 139
    const/16 v21, 0x1

    #@137
    move-object/from16 v0, p3

    #@139
    move/from16 v1, v21

    #@13b
    invoke-virtual {v14, v0, v1}, Lcom/android/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    #@13e
    .line 144
    :goto_3
    const/16 v21, 0x1

    #@140
    return v21

    #@141
    .line 142
    :cond_3
    const/16 v21, 0x0

    #@143
    move-object/from16 v0, p3

    #@145
    move/from16 v1, v21

    #@147
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@14a
    goto :goto_3

    #@14b
    .line 148
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v14    # "_result":Lcom/android/ims/ImsCallProfile;
    :sswitch_8
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    #@14e
    move-object/from16 v0, p2

    #@150
    move-object/from16 v1, v21

    #@152
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@155
    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@158
    move-result v2

    #@159
    .line 152
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15c
    move-result v21

    #@15d
    if-eqz v21, :cond_4

    #@15f
    .line 153
    sget-object v21, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@161
    move-object/from16 v0, v21

    #@163
    move-object/from16 v1, p2

    #@165
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@168
    move-result-object v4

    #@169
    check-cast v4, Lcom/android/ims/ImsCallProfile;

    #@16b
    .line 159
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@16e
    move-result-object v21

    #@16f
    invoke-static/range {v21 .. v21}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSessionListener;

    #@172
    move-result-object v10

    #@173
    .line 160
    .local v10, "_arg2":Lcom/android/ims/internal/IImsCallSessionListener;
    move-object/from16 v0, p0

    #@175
    invoke-virtual {v0, v2, v4, v10}, Lcom/android/ims/internal/IImsService$Stub;->createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;

    #@178
    move-result-object v15

    #@179
    .line 161
    .local v15, "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17c
    .line 162
    if-eqz v15, :cond_5

    #@17e
    invoke-interface {v15}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@181
    move-result-object v21

    #@182
    :goto_5
    move-object/from16 v0, p3

    #@184
    move-object/from16 v1, v21

    #@186
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@189
    .line 163
    const/16 v21, 0x1

    #@18b
    return v21

    #@18c
    .line 156
    .end local v10    # "_arg2":Lcom/android/ims/internal/IImsCallSessionListener;
    .end local v15    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :cond_4
    const/4 v4, 0x0

    #@18d
    .local v4, "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_4

    #@18e
    .line 162
    .end local v4    # "_arg1":Lcom/android/ims/ImsCallProfile;
    .restart local v10    # "_arg2":Lcom/android/ims/internal/IImsCallSessionListener;
    .restart local v15    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :cond_5
    const/16 v21, 0x0

    #@190
    goto :goto_5

    #@191
    .line 167
    .end local v2    # "_arg0":I
    .end local v10    # "_arg2":Lcom/android/ims/internal/IImsCallSessionListener;
    .end local v15    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :sswitch_9
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    #@194
    move-object/from16 v0, p2

    #@196
    move-object/from16 v1, v21

    #@198
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19b
    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19e
    move-result v2

    #@19f
    .line 171
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a2
    move-result-object v6

    #@1a3
    .line 172
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1a5
    invoke-virtual {v0, v2, v6}, Lcom/android/ims/internal/IImsService$Stub;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    #@1a8
    move-result-object v15

    #@1a9
    .line 173
    .restart local v15    # "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ac
    .line 174
    if-eqz v15, :cond_6

    #@1ae
    invoke-interface {v15}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@1b1
    move-result-object v21

    #@1b2
    :goto_6
    move-object/from16 v0, p3

    #@1b4
    move-object/from16 v1, v21

    #@1b6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b9
    .line 175
    const/16 v21, 0x1

    #@1bb
    return v21

    #@1bc
    .line 174
    :cond_6
    const/16 v21, 0x0

    #@1be
    goto :goto_6

    #@1bf
    .line 179
    .end local v2    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v15    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :sswitch_a
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    #@1c2
    move-object/from16 v0, p2

    #@1c4
    move-object/from16 v1, v21

    #@1c6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c9
    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1cc
    move-result v2

    #@1cd
    .line 182
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@1cf
    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->getUtInterface(I)Lcom/android/ims/internal/IImsUt;

    #@1d2
    move-result-object v19

    #@1d3
    .line 183
    .local v19, "_result":Lcom/android/ims/internal/IImsUt;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d6
    .line 184
    if-eqz v19, :cond_7

    #@1d8
    invoke-interface/range {v19 .. v19}, Lcom/android/ims/internal/IImsUt;->asBinder()Landroid/os/IBinder;

    #@1db
    move-result-object v21

    #@1dc
    :goto_7
    move-object/from16 v0, p3

    #@1de
    move-object/from16 v1, v21

    #@1e0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1e3
    .line 185
    const/16 v21, 0x1

    #@1e5
    return v21

    #@1e6
    .line 184
    :cond_7
    const/16 v21, 0x0

    #@1e8
    goto :goto_7

    #@1e9
    .line 189
    .end local v2    # "_arg0":I
    .end local v19    # "_result":Lcom/android/ims/internal/IImsUt;
    :sswitch_b
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    #@1ec
    move-object/from16 v0, p2

    #@1ee
    move-object/from16 v1, v21

    #@1f0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f3
    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f6
    move-result v2

    #@1f7
    .line 192
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@1f9
    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->getConfigInterface(I)Lcom/android/ims/internal/IImsConfig;

    #@1fc
    move-result-object v16

    #@1fd
    .line 193
    .local v16, "_result":Lcom/android/ims/internal/IImsConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@200
    .line 194
    if-eqz v16, :cond_8

    #@202
    invoke-interface/range {v16 .. v16}, Lcom/android/ims/internal/IImsConfig;->asBinder()Landroid/os/IBinder;

    #@205
    move-result-object v21

    #@206
    :goto_8
    move-object/from16 v0, p3

    #@208
    move-object/from16 v1, v21

    #@20a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@20d
    .line 195
    const/16 v21, 0x1

    #@20f
    return v21

    #@210
    .line 194
    :cond_8
    const/16 v21, 0x0

    #@212
    goto :goto_8

    #@213
    .line 199
    .end local v2    # "_arg0":I
    .end local v16    # "_result":Lcom/android/ims/internal/IImsConfig;
    :sswitch_c
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    #@216
    move-object/from16 v0, p2

    #@218
    move-object/from16 v1, v21

    #@21a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21d
    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@220
    move-result v2

    #@221
    .line 202
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@223
    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->turnOnIms(I)V

    #@226
    .line 203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@229
    .line 204
    const/16 v21, 0x1

    #@22b
    return v21

    #@22c
    .line 208
    .end local v2    # "_arg0":I
    :sswitch_d
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    #@22f
    move-object/from16 v0, p2

    #@231
    move-object/from16 v1, v21

    #@233
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@236
    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@239
    move-result v2

    #@23a
    .line 211
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@23c
    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->turnOffIms(I)V

    #@23f
    .line 212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@242
    .line 213
    const/16 v21, 0x1

    #@244
    return v21

    #@245
    .line 217
    .end local v2    # "_arg0":I
    :sswitch_e
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    #@248
    move-object/from16 v0, p2

    #@24a
    move-object/from16 v1, v21

    #@24c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24f
    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@252
    move-result v2

    #@253
    .line 220
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@255
    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->getEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;

    #@258
    move-result-object v17

    #@259
    .line 221
    .local v17, "_result":Lcom/android/ims/internal/IImsEcbm;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@25c
    .line 222
    if-eqz v17, :cond_9

    #@25e
    invoke-interface/range {v17 .. v17}, Lcom/android/ims/internal/IImsEcbm;->asBinder()Landroid/os/IBinder;

    #@261
    move-result-object v21

    #@262
    :goto_9
    move-object/from16 v0, p3

    #@264
    move-object/from16 v1, v21

    #@266
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@269
    .line 223
    const/16 v21, 0x1

    #@26b
    return v21

    #@26c
    .line 222
    :cond_9
    const/16 v21, 0x0

    #@26e
    goto :goto_9

    #@26f
    .line 227
    .end local v2    # "_arg0":I
    .end local v17    # "_result":Lcom/android/ims/internal/IImsEcbm;
    :sswitch_f
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    #@272
    move-object/from16 v0, p2

    #@274
    move-object/from16 v1, v21

    #@276
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@279
    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@27c
    move-result v2

    #@27d
    .line 231
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@280
    move-result v3

    #@281
    .line 233
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@284
    move-result v21

    #@285
    if-eqz v21, :cond_a

    #@287
    .line 234
    sget-object v21, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    #@289
    move-object/from16 v0, v21

    #@28b
    move-object/from16 v1, p2

    #@28d
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@290
    move-result-object v9

    #@291
    check-cast v9, Landroid/os/Message;

    #@293
    .line 239
    :goto_a
    move-object/from16 v0, p0

    #@295
    invoke-virtual {v0, v2, v3, v9}, Lcom/android/ims/internal/IImsService$Stub;->setUiTTYMode(IILandroid/os/Message;)V

    #@298
    .line 240
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@29b
    .line 241
    const/16 v21, 0x1

    #@29d
    return v21

    #@29e
    .line 237
    :cond_a
    const/4 v9, 0x0

    #@29f
    .local v9, "_arg2":Landroid/os/Message;
    goto :goto_a

    #@2a0
    .line 245
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v9    # "_arg2":Landroid/os/Message;
    :sswitch_10
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    #@2a3
    move-object/from16 v0, p2

    #@2a5
    move-object/from16 v1, v21

    #@2a7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2aa
    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ad
    move-result v2

    #@2ae
    .line 248
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@2b0
    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->getMultiEndpointInterface(I)Lcom/android/ims/internal/IImsMultiEndpoint;

    #@2b3
    move-result-object v18

    #@2b4
    .line 249
    .local v18, "_result":Lcom/android/ims/internal/IImsMultiEndpoint;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b7
    .line 250
    if-eqz v18, :cond_b

    #@2b9
    invoke-interface/range {v18 .. v18}, Lcom/android/ims/internal/IImsMultiEndpoint;->asBinder()Landroid/os/IBinder;

    #@2bc
    move-result-object v21

    #@2bd
    :goto_b
    move-object/from16 v0, p3

    #@2bf
    move-object/from16 v1, v21

    #@2c1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@2c4
    .line 251
    const/16 v21, 0x1

    #@2c6
    return v21

    #@2c7
    .line 250
    :cond_b
    const/16 v21, 0x0

    #@2c9
    goto :goto_b

    #@2ca
    .line 41
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
