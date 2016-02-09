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

.field static final TRANSACTION_close:I = 0x2

.field static final TRANSACTION_createCallProfile:I = 0x6

.field static final TRANSACTION_createCallSession:I = 0x7

.field static final TRANSACTION_getConfigInterface:I = 0xa

.field static final TRANSACTION_getEcbmInterface:I = 0xd

.field static final TRANSACTION_getPendingCallSession:I = 0x8

.field static final TRANSACTION_getUtInterface:I = 0x9

.field static final TRANSACTION_isConnected:I = 0x3

.field static final TRANSACTION_isOpened:I = 0x4

.field static final TRANSACTION_open:I = 0x1

.field static final TRANSACTION_setRegistrationListener:I = 0x5

.field static final TRANSACTION_setUiTTYMode:I = 0xe

.field static final TRANSACTION_turnOffIms:I = 0xc

.field static final TRANSACTION_turnOnIms:I = 0xb


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
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 231
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v19

    #@7
    return v19

    #@8
    .line 45
    :sswitch_0
    const-string/jumbo v19, "com.android.ims.internal.IImsService"

    #@b
    move-object/from16 v0, p3

    #@d
    move-object/from16 v1, v19

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 46
    const/16 v19, 0x1

    #@14
    return v19

    #@15
    .line 50
    :sswitch_1
    const-string/jumbo v19, "com.android.ims.internal.IImsService"

    #@18
    move-object/from16 v0, p2

    #@1a
    move-object/from16 v1, v19

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
    move-result v19

    #@2b
    if-eqz v19, :cond_0

    #@2d
    .line 57
    sget-object v19, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2f
    move-object/from16 v0, v19

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
    move-result-object v19

    #@3d
    invoke-static/range {v19 .. v19}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    #@40
    move-result-object v11

    #@41
    .line 64
    .local v11, "_arg3":Lcom/android/ims/internal/IImsRegistrationListener;
    move-object/from16 v0, p0

    #@43
    invoke-virtual {v0, v2, v3, v8, v11}, Lcom/android/ims/internal/IImsService$Stub;->open(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    #@46
    move-result v12

    #@47
    .line 65
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4a
    .line 66
    move-object/from16 v0, p3

    #@4c
    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    #@4f
    .line 67
    const/16 v19, 0x1

    #@51
    return v19

    #@52
    .line 60
    .end local v11    # "_arg3":Lcom/android/ims/internal/IImsRegistrationListener;
    .end local v12    # "_result":I
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
    const-string/jumbo v19, "com.android.ims.internal.IImsService"

    #@57
    move-object/from16 v0, p2

    #@59
    move-object/from16 v1, v19

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
    const/16 v19, 0x1

    #@6c
    return v19

    #@6d
    .line 80
    .end local v2    # "_arg0":I
    :sswitch_3
    const-string/jumbo v19, "com.android.ims.internal.IImsService"

    #@70
    move-object/from16 v0, p2

    #@72
    move-object/from16 v1, v19

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
    move-result v18

    #@89
    .line 88
    .local v18, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8c
    .line 89
    if-eqz v18, :cond_1

    #@8e
    const/16 v19, 0x1

    #@90
    :goto_1
    move-object/from16 v0, p3

    #@92
    move/from16 v1, v19

    #@94
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@97
    .line 90
    const/16 v19, 0x1

    #@99
    return v19

    #@9a
    .line 89
    :cond_1
    const/16 v19, 0x0

    #@9c
    goto :goto_1

    #@9d
    .line 94
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v18    # "_result":Z
    :sswitch_4
    const-string/jumbo v19, "com.android.ims.internal.IImsService"

    #@a0
    move-object/from16 v0, p2

    #@a2
    move-object/from16 v1, v19

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
    move-result v18

    #@b1
    .line 98
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b4
    .line 99
    if-eqz v18, :cond_2

    #@b6
    const/16 v19, 0x1

    #@b8
    :goto_2
    move-object/from16 v0, p3

    #@ba
    move/from16 v1, v19

    #@bc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@bf
    .line 100
    const/16 v19, 0x1

    #@c1
    return v19

    #@c2
    .line 99
    :cond_2
    const/16 v19, 0x0

    #@c4
    goto :goto_2

    #@c5
    .line 104
    .end local v2    # "_arg0":I
    .end local v18    # "_result":Z
    :sswitch_5
    const-string/jumbo v19, "com.android.ims.internal.IImsService"

    #@c8
    move-object/from16 v0, p2

    #@ca
    move-object/from16 v1, v19

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
    move-result-object v19

    #@d7
    invoke-static/range {v19 .. v19}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

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
    const/16 v19, 0x1

    #@e5
    return v19

    #@e6
    .line 115
    .end local v2    # "_arg0":I
    .end local v5    # "_arg1":Lcom/android/ims/internal/IImsRegistrationListener;
    :sswitch_6
    const-string/jumbo v19, "com.android.ims.internal.IImsService"

    #@e9
    move-object/from16 v0, p2

    #@eb
    move-object/from16 v1, v19

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
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@fb
    move-result v7

    #@fc
    .line 122
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@fe
    invoke-virtual {v0, v2, v3, v7}, Lcom/android/ims/internal/IImsService$Stub;->createCallProfile(III)Lcom/android/ims/ImsCallProfile;

    #@101
    move-result-object v13

    #@102
    .line 123
    .local v13, "_result":Lcom/android/ims/ImsCallProfile;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@105
    .line 124
    if-eqz v13, :cond_3

    #@107
    .line 125
    const/16 v19, 0x1

    #@109
    move-object/from16 v0, p3

    #@10b
    move/from16 v1, v19

    #@10d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@110
    .line 126
    const/16 v19, 0x1

    #@112
    move-object/from16 v0, p3

    #@114
    move/from16 v1, v19

    #@116
    invoke-virtual {v13, v0, v1}, Lcom/android/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    #@119
    .line 131
    :goto_3
    const/16 v19, 0x1

    #@11b
    return v19

    #@11c
    .line 129
    :cond_3
    const/16 v19, 0x0

    #@11e
    move-object/from16 v0, p3

    #@120
    move/from16 v1, v19

    #@122
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@125
    goto :goto_3

    #@126
    .line 135
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v13    # "_result":Lcom/android/ims/ImsCallProfile;
    :sswitch_7
    const-string/jumbo v19, "com.android.ims.internal.IImsService"

    #@129
    move-object/from16 v0, p2

    #@12b
    move-object/from16 v1, v19

    #@12d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@130
    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@133
    move-result v2

    #@134
    .line 139
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@137
    move-result v19

    #@138
    if-eqz v19, :cond_4

    #@13a
    .line 140
    sget-object v19, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@13c
    move-object/from16 v0, v19

    #@13e
    move-object/from16 v1, p2

    #@140
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@143
    move-result-object v4

    #@144
    check-cast v4, Lcom/android/ims/ImsCallProfile;

    #@146
    .line 146
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@149
    move-result-object v19

    #@14a
    invoke-static/range {v19 .. v19}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSessionListener;

    #@14d
    move-result-object v10

    #@14e
    .line 147
    .local v10, "_arg2":Lcom/android/ims/internal/IImsCallSessionListener;
    move-object/from16 v0, p0

    #@150
    invoke-virtual {v0, v2, v4, v10}, Lcom/android/ims/internal/IImsService$Stub;->createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;

    #@153
    move-result-object v14

    #@154
    .line 148
    .local v14, "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@157
    .line 149
    if-eqz v14, :cond_5

    #@159
    invoke-interface {v14}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@15c
    move-result-object v19

    #@15d
    :goto_5
    move-object/from16 v0, p3

    #@15f
    move-object/from16 v1, v19

    #@161
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@164
    .line 150
    const/16 v19, 0x1

    #@166
    return v19

    #@167
    .line 143
    .end local v10    # "_arg2":Lcom/android/ims/internal/IImsCallSessionListener;
    .end local v14    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :cond_4
    const/4 v4, 0x0

    #@168
    .local v4, "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_4

    #@169
    .line 149
    .end local v4    # "_arg1":Lcom/android/ims/ImsCallProfile;
    .restart local v10    # "_arg2":Lcom/android/ims/internal/IImsCallSessionListener;
    .restart local v14    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :cond_5
    const/16 v19, 0x0

    #@16b
    goto :goto_5

    #@16c
    .line 154
    .end local v2    # "_arg0":I
    .end local v10    # "_arg2":Lcom/android/ims/internal/IImsCallSessionListener;
    .end local v14    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :sswitch_8
    const-string/jumbo v19, "com.android.ims.internal.IImsService"

    #@16f
    move-object/from16 v0, p2

    #@171
    move-object/from16 v1, v19

    #@173
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@176
    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@179
    move-result v2

    #@17a
    .line 158
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@17d
    move-result-object v6

    #@17e
    .line 159
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@180
    invoke-virtual {v0, v2, v6}, Lcom/android/ims/internal/IImsService$Stub;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    #@183
    move-result-object v14

    #@184
    .line 160
    .restart local v14    # "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@187
    .line 161
    if-eqz v14, :cond_6

    #@189
    invoke-interface {v14}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@18c
    move-result-object v19

    #@18d
    :goto_6
    move-object/from16 v0, p3

    #@18f
    move-object/from16 v1, v19

    #@191
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@194
    .line 162
    const/16 v19, 0x1

    #@196
    return v19

    #@197
    .line 161
    :cond_6
    const/16 v19, 0x0

    #@199
    goto :goto_6

    #@19a
    .line 166
    .end local v2    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v14    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :sswitch_9
    const-string/jumbo v19, "com.android.ims.internal.IImsService"

    #@19d
    move-object/from16 v0, p2

    #@19f
    move-object/from16 v1, v19

    #@1a1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a4
    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a7
    move-result v2

    #@1a8
    .line 169
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@1aa
    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->getUtInterface(I)Lcom/android/ims/internal/IImsUt;

    #@1ad
    move-result-object v17

    #@1ae
    .line 170
    .local v17, "_result":Lcom/android/ims/internal/IImsUt;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b1
    .line 171
    if-eqz v17, :cond_7

    #@1b3
    invoke-interface/range {v17 .. v17}, Lcom/android/ims/internal/IImsUt;->asBinder()Landroid/os/IBinder;

    #@1b6
    move-result-object v19

    #@1b7
    :goto_7
    move-object/from16 v0, p3

    #@1b9
    move-object/from16 v1, v19

    #@1bb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1be
    .line 172
    const/16 v19, 0x1

    #@1c0
    return v19

    #@1c1
    .line 171
    :cond_7
    const/16 v19, 0x0

    #@1c3
    goto :goto_7

    #@1c4
    .line 176
    .end local v2    # "_arg0":I
    .end local v17    # "_result":Lcom/android/ims/internal/IImsUt;
    :sswitch_a
    const-string/jumbo v19, "com.android.ims.internal.IImsService"

    #@1c7
    move-object/from16 v0, p2

    #@1c9
    move-object/from16 v1, v19

    #@1cb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ce
    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d1
    move-result v2

    #@1d2
    .line 179
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@1d4
    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->getConfigInterface(I)Lcom/android/ims/internal/IImsConfig;

    #@1d7
    move-result-object v15

    #@1d8
    .line 180
    .local v15, "_result":Lcom/android/ims/internal/IImsConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1db
    .line 181
    if-eqz v15, :cond_8

    #@1dd
    invoke-interface {v15}, Lcom/android/ims/internal/IImsConfig;->asBinder()Landroid/os/IBinder;

    #@1e0
    move-result-object v19

    #@1e1
    :goto_8
    move-object/from16 v0, p3

    #@1e3
    move-object/from16 v1, v19

    #@1e5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1e8
    .line 182
    const/16 v19, 0x1

    #@1ea
    return v19

    #@1eb
    .line 181
    :cond_8
    const/16 v19, 0x0

    #@1ed
    goto :goto_8

    #@1ee
    .line 186
    .end local v2    # "_arg0":I
    .end local v15    # "_result":Lcom/android/ims/internal/IImsConfig;
    :sswitch_b
    const-string/jumbo v19, "com.android.ims.internal.IImsService"

    #@1f1
    move-object/from16 v0, p2

    #@1f3
    move-object/from16 v1, v19

    #@1f5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f8
    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1fb
    move-result v2

    #@1fc
    .line 189
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@1fe
    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->turnOnIms(I)V

    #@201
    .line 190
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@204
    .line 191
    const/16 v19, 0x1

    #@206
    return v19

    #@207
    .line 195
    .end local v2    # "_arg0":I
    :sswitch_c
    const-string/jumbo v19, "com.android.ims.internal.IImsService"

    #@20a
    move-object/from16 v0, p2

    #@20c
    move-object/from16 v1, v19

    #@20e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@211
    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@214
    move-result v2

    #@215
    .line 198
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@217
    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->turnOffIms(I)V

    #@21a
    .line 199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21d
    .line 200
    const/16 v19, 0x1

    #@21f
    return v19

    #@220
    .line 204
    .end local v2    # "_arg0":I
    :sswitch_d
    const-string/jumbo v19, "com.android.ims.internal.IImsService"

    #@223
    move-object/from16 v0, p2

    #@225
    move-object/from16 v1, v19

    #@227
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22a
    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22d
    move-result v2

    #@22e
    .line 207
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@230
    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->getEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;

    #@233
    move-result-object v16

    #@234
    .line 208
    .local v16, "_result":Lcom/android/ims/internal/IImsEcbm;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@237
    .line 209
    if-eqz v16, :cond_9

    #@239
    invoke-interface/range {v16 .. v16}, Lcom/android/ims/internal/IImsEcbm;->asBinder()Landroid/os/IBinder;

    #@23c
    move-result-object v19

    #@23d
    :goto_9
    move-object/from16 v0, p3

    #@23f
    move-object/from16 v1, v19

    #@241
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@244
    .line 210
    const/16 v19, 0x1

    #@246
    return v19

    #@247
    .line 209
    :cond_9
    const/16 v19, 0x0

    #@249
    goto :goto_9

    #@24a
    .line 214
    .end local v2    # "_arg0":I
    .end local v16    # "_result":Lcom/android/ims/internal/IImsEcbm;
    :sswitch_e
    const-string/jumbo v19, "com.android.ims.internal.IImsService"

    #@24d
    move-object/from16 v0, p2

    #@24f
    move-object/from16 v1, v19

    #@251
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@254
    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@257
    move-result v2

    #@258
    .line 218
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25b
    move-result v3

    #@25c
    .line 220
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25f
    move-result v19

    #@260
    if-eqz v19, :cond_a

    #@262
    .line 221
    sget-object v19, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    #@264
    move-object/from16 v0, v19

    #@266
    move-object/from16 v1, p2

    #@268
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26b
    move-result-object v9

    #@26c
    check-cast v9, Landroid/os/Message;

    #@26e
    .line 226
    :goto_a
    move-object/from16 v0, p0

    #@270
    invoke-virtual {v0, v2, v3, v9}, Lcom/android/ims/internal/IImsService$Stub;->setUiTTYMode(IILandroid/os/Message;)V

    #@273
    .line 227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@276
    .line 228
    const/16 v19, 0x1

    #@278
    return v19

    #@279
    .line 224
    :cond_a
    const/4 v9, 0x0

    #@27a
    .local v9, "_arg2":Landroid/os/Message;
    goto :goto_a

    #@27b
    .line 41
    nop

    #@27c
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
