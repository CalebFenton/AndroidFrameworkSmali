.class public abstract Lcom/android/internal/app/IAppOpsService$Stub;
.super Landroid/os/Binder;
.source "IAppOpsService.java"

# interfaces
.implements Lcom/android/internal/app/IAppOpsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IAppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IAppOpsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IAppOpsService"

.field static final TRANSACTION_checkAudioOperation:I = 0x10

.field static final TRANSACTION_checkOperation:I = 0x1

.field static final TRANSACTION_checkPackage:I = 0xa

.field static final TRANSACTION_finishOperation:I = 0x4

.field static final TRANSACTION_getOpsForPackage:I = 0xc

.field static final TRANSACTION_getPackagesForOps:I = 0xb

.field static final TRANSACTION_getToken:I = 0x7

.field static final TRANSACTION_noteOperation:I = 0x2

.field static final TRANSACTION_noteProxyOperation:I = 0x9

.field static final TRANSACTION_permissionToOpCode:I = 0x8

.field static final TRANSACTION_removeUser:I = 0x14

.field static final TRANSACTION_resetAllModes:I = 0xf

.field static final TRANSACTION_setAudioRestriction:I = 0x11

.field static final TRANSACTION_setMode:I = 0xe

.field static final TRANSACTION_setUidMode:I = 0xd

.field static final TRANSACTION_setUserRestriction:I = 0x13

.field static final TRANSACTION_setUserRestrictions:I = 0x12

.field static final TRANSACTION_startOperation:I = 0x3

.field static final TRANSACTION_startWatchingMode:I = 0x5

.field static final TRANSACTION_stopWatchingMode:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 15
    const-string/jumbo v0, "com.android.internal.app.IAppOpsService"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IAppOpsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 23
    if-nez p0, :cond_0

    #@3
    .line 24
    return-object v1

    #@4
    .line 26
    :cond_0
    const-string/jumbo v1, "com.android.internal.app.IAppOpsService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/app/IAppOpsService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 28
    check-cast v0, Lcom/android/internal/app/IAppOpsService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/app/IAppOpsService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/app/IAppOpsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 29
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 315
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v3

    #@7
    return v3

    #@8
    .line 42
    :sswitch_0
    const-string/jumbo v3, "com.android.internal.app.IAppOpsService"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 43
    const/4 v3, 0x1

    #@11
    return v3

    #@12
    .line 47
    :sswitch_1
    const-string/jumbo v3, "com.android.internal.app.IAppOpsService"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v4

    #@1e
    .line 51
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v5

    #@22
    .line 53
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@25
    move-result-object v23

    #@26
    .line 54
    .local v23, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@28
    move-object/from16 v1, v23

    #@2a
    invoke-virtual {v0, v4, v5, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->checkOperation(IILjava/lang/String;)I

    #@2d
    move-result v26

    #@2e
    .line 55
    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@31
    .line 56
    move-object/from16 v0, p3

    #@33
    move/from16 v1, v26

    #@35
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    .line 57
    const/4 v3, 0x1

    #@39
    return v3

    #@3a
    .line 61
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v23    # "_arg2":Ljava/lang/String;
    .end local v26    # "_result":I
    :sswitch_2
    const-string/jumbo v3, "com.android.internal.app.IAppOpsService"

    #@3d
    move-object/from16 v0, p2

    #@3f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42
    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v4

    #@46
    .line 65
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@49
    move-result v5

    #@4a
    .line 67
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4d
    move-result-object v23

    #@4e
    .line 68
    .restart local v23    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@50
    move-object/from16 v1, v23

    #@52
    invoke-virtual {v0, v4, v5, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->noteOperation(IILjava/lang/String;)I

    #@55
    move-result v26

    #@56
    .line 69
    .restart local v26    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@59
    .line 70
    move-object/from16 v0, p3

    #@5b
    move/from16 v1, v26

    #@5d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@60
    .line 71
    const/4 v3, 0x1

    #@61
    return v3

    #@62
    .line 75
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v23    # "_arg2":Ljava/lang/String;
    .end local v26    # "_result":I
    :sswitch_3
    const-string/jumbo v3, "com.android.internal.app.IAppOpsService"

    #@65
    move-object/from16 v0, p2

    #@67
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6a
    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6d
    move-result-object v16

    #@6e
    .line 79
    .local v16, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@71
    move-result v5

    #@72
    .line 81
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@75
    move-result v6

    #@76
    .line 83
    .local v6, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@79
    move-result-object v25

    #@7a
    .line 84
    .local v25, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    #@7c
    move-object/from16 v1, v16

    #@7e
    move-object/from16 v2, v25

    #@80
    invoke-virtual {v0, v1, v5, v6, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    #@83
    move-result v26

    #@84
    .line 85
    .restart local v26    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@87
    .line 86
    move-object/from16 v0, p3

    #@89
    move/from16 v1, v26

    #@8b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@8e
    .line 87
    const/4 v3, 0x1

    #@8f
    return v3

    #@90
    .line 91
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v16    # "_arg0":Landroid/os/IBinder;
    .end local v25    # "_arg3":Ljava/lang/String;
    .end local v26    # "_result":I
    :sswitch_4
    const-string/jumbo v3, "com.android.internal.app.IAppOpsService"

    #@93
    move-object/from16 v0, p2

    #@95
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@98
    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@9b
    move-result-object v16

    #@9c
    .line 95
    .restart local v16    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9f
    move-result v5

    #@a0
    .line 97
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a3
    move-result v6

    #@a4
    .line 99
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a7
    move-result-object v25

    #@a8
    .line 100
    .restart local v25    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    #@aa
    move-object/from16 v1, v16

    #@ac
    move-object/from16 v2, v25

    #@ae
    invoke-virtual {v0, v1, v5, v6, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    #@b1
    .line 101
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b4
    .line 102
    const/4 v3, 0x1

    #@b5
    return v3

    #@b6
    .line 106
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v16    # "_arg0":Landroid/os/IBinder;
    .end local v25    # "_arg3":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v3, "com.android.internal.app.IAppOpsService"

    #@b9
    move-object/from16 v0, p2

    #@bb
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@be
    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c1
    move-result v4

    #@c2
    .line 110
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c5
    move-result-object v21

    #@c6
    .line 112
    .local v21, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c9
    move-result-object v3

    #@ca
    invoke-static {v3}, Lcom/android/internal/app/IAppOpsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsCallback;

    #@cd
    move-result-object v22

    #@ce
    .line 113
    .local v22, "_arg2":Lcom/android/internal/app/IAppOpsCallback;
    move-object/from16 v0, p0

    #@d0
    move-object/from16 v1, v21

    #@d2
    move-object/from16 v2, v22

    #@d4
    invoke-virtual {v0, v4, v1, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V

    #@d7
    .line 114
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@da
    .line 115
    const/4 v3, 0x1

    #@db
    return v3

    #@dc
    .line 119
    .end local v4    # "_arg0":I
    .end local v21    # "_arg1":Ljava/lang/String;
    .end local v22    # "_arg2":Lcom/android/internal/app/IAppOpsCallback;
    :sswitch_6
    const-string/jumbo v3, "com.android.internal.app.IAppOpsService"

    #@df
    move-object/from16 v0, p2

    #@e1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e4
    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@e7
    move-result-object v3

    #@e8
    invoke-static {v3}, Lcom/android/internal/app/IAppOpsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsCallback;

    #@eb
    move-result-object v17

    #@ec
    .line 122
    .local v17, "_arg0":Lcom/android/internal/app/IAppOpsCallback;
    move-object/from16 v0, p0

    #@ee
    move-object/from16 v1, v17

    #@f0
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V

    #@f3
    .line 123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f6
    .line 124
    const/4 v3, 0x1

    #@f7
    return v3

    #@f8
    .line 128
    .end local v17    # "_arg0":Lcom/android/internal/app/IAppOpsCallback;
    :sswitch_7
    const-string/jumbo v3, "com.android.internal.app.IAppOpsService"

    #@fb
    move-object/from16 v0, p2

    #@fd
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@100
    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@103
    move-result-object v16

    #@104
    .line 131
    .restart local v16    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@106
    move-object/from16 v1, v16

    #@108
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->getToken(Landroid/os/IBinder;)Landroid/os/IBinder;

    #@10b
    move-result-object v27

    #@10c
    .line 132
    .local v27, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10f
    .line 133
    move-object/from16 v0, p3

    #@111
    move-object/from16 v1, v27

    #@113
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@116
    .line 134
    const/4 v3, 0x1

    #@117
    return v3

    #@118
    .line 138
    .end local v16    # "_arg0":Landroid/os/IBinder;
    .end local v27    # "_result":Landroid/os/IBinder;
    :sswitch_8
    const-string/jumbo v3, "com.android.internal.app.IAppOpsService"

    #@11b
    move-object/from16 v0, p2

    #@11d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@120
    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@123
    move-result-object v18

    #@124
    .line 141
    .local v18, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@126
    move-object/from16 v1, v18

    #@128
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->permissionToOpCode(Ljava/lang/String;)I

    #@12b
    move-result v26

    #@12c
    .line 142
    .restart local v26    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12f
    .line 143
    move-object/from16 v0, p3

    #@131
    move/from16 v1, v26

    #@133
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@136
    .line 144
    const/4 v3, 0x1

    #@137
    return v3

    #@138
    .line 148
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v26    # "_result":I
    :sswitch_9
    const-string/jumbo v3, "com.android.internal.app.IAppOpsService"

    #@13b
    move-object/from16 v0, p2

    #@13d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@140
    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@143
    move-result v4

    #@144
    .line 152
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@147
    move-result-object v21

    #@148
    .line 154
    .restart local v21    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14b
    move-result v6

    #@14c
    .line 156
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14f
    move-result-object v25

    #@150
    .line 157
    .restart local v25    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    #@152
    move-object/from16 v1, v21

    #@154
    move-object/from16 v2, v25

    #@156
    invoke-virtual {v0, v4, v1, v6, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->noteProxyOperation(ILjava/lang/String;ILjava/lang/String;)I

    #@159
    move-result v26

    #@15a
    .line 158
    .restart local v26    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@15d
    .line 159
    move-object/from16 v0, p3

    #@15f
    move/from16 v1, v26

    #@161
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@164
    .line 160
    const/4 v3, 0x1

    #@165
    return v3

    #@166
    .line 164
    .end local v4    # "_arg0":I
    .end local v6    # "_arg2":I
    .end local v21    # "_arg1":Ljava/lang/String;
    .end local v25    # "_arg3":Ljava/lang/String;
    .end local v26    # "_result":I
    :sswitch_a
    const-string/jumbo v3, "com.android.internal.app.IAppOpsService"

    #@169
    move-object/from16 v0, p2

    #@16b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16e
    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@171
    move-result v4

    #@172
    .line 168
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@175
    move-result-object v21

    #@176
    .line 169
    .restart local v21    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@178
    move-object/from16 v1, v21

    #@17a
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->checkPackage(ILjava/lang/String;)I

    #@17d
    move-result v26

    #@17e
    .line 170
    .restart local v26    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@181
    .line 171
    move-object/from16 v0, p3

    #@183
    move/from16 v1, v26

    #@185
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@188
    .line 172
    const/4 v3, 0x1

    #@189
    return v3

    #@18a
    .line 176
    .end local v4    # "_arg0":I
    .end local v21    # "_arg1":Ljava/lang/String;
    .end local v26    # "_result":I
    :sswitch_b
    const-string/jumbo v3, "com.android.internal.app.IAppOpsService"

    #@18d
    move-object/from16 v0, p2

    #@18f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@192
    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@195
    move-result-object v19

    #@196
    .line 179
    .local v19, "_arg0":[I
    move-object/from16 v0, p0

    #@198
    move-object/from16 v1, v19

    #@19a
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->getPackagesForOps([I)Ljava/util/List;

    #@19d
    move-result-object v28

    #@19e
    .line 180
    .local v28, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a1
    .line 181
    move-object/from16 v0, p3

    #@1a3
    move-object/from16 v1, v28

    #@1a5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@1a8
    .line 182
    const/4 v3, 0x1

    #@1a9
    return v3

    #@1aa
    .line 186
    .end local v19    # "_arg0":[I
    .end local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :sswitch_c
    const-string/jumbo v3, "com.android.internal.app.IAppOpsService"

    #@1ad
    move-object/from16 v0, p2

    #@1af
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b2
    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b5
    move-result v4

    #@1b6
    .line 190
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b9
    move-result-object v21

    #@1ba
    .line 192
    .restart local v21    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@1bd
    move-result-object v24

    #@1be
    .line 193
    .local v24, "_arg2":[I
    move-object/from16 v0, p0

    #@1c0
    move-object/from16 v1, v21

    #@1c2
    move-object/from16 v2, v24

    #@1c4
    invoke-virtual {v0, v4, v1, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    #@1c7
    move-result-object v28

    #@1c8
    .line 194
    .restart local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1cb
    .line 195
    move-object/from16 v0, p3

    #@1cd
    move-object/from16 v1, v28

    #@1cf
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@1d2
    .line 196
    const/4 v3, 0x1

    #@1d3
    return v3

    #@1d4
    .line 200
    .end local v4    # "_arg0":I
    .end local v21    # "_arg1":Ljava/lang/String;
    .end local v24    # "_arg2":[I
    .end local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :sswitch_d
    const-string/jumbo v3, "com.android.internal.app.IAppOpsService"

    #@1d7
    move-object/from16 v0, p2

    #@1d9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1dc
    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1df
    move-result v4

    #@1e0
    .line 204
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e3
    move-result v5

    #@1e4
    .line 206
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e7
    move-result v6

    #@1e8
    .line 207
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    #@1ea
    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/app/IAppOpsService$Stub;->setUidMode(III)V

    #@1ed
    .line 208
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f0
    .line 209
    const/4 v3, 0x1

    #@1f1
    return v3

    #@1f2
    .line 213
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :sswitch_e
    const-string/jumbo v3, "com.android.internal.app.IAppOpsService"

    #@1f5
    move-object/from16 v0, p2

    #@1f7
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1fa
    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1fd
    move-result v4

    #@1fe
    .line 217
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@201
    move-result v5

    #@202
    .line 219
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@205
    move-result-object v23

    #@206
    .line 221
    .restart local v23    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@209
    move-result v7

    #@20a
    .line 222
    .local v7, "_arg3":I
    move-object/from16 v0, p0

    #@20c
    move-object/from16 v1, v23

    #@20e
    invoke-virtual {v0, v4, v5, v1, v7}, Lcom/android/internal/app/IAppOpsService$Stub;->setMode(IILjava/lang/String;I)V

    #@211
    .line 223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@214
    .line 224
    const/4 v3, 0x1

    #@215
    return v3

    #@216
    .line 228
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v7    # "_arg3":I
    .end local v23    # "_arg2":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v3, "com.android.internal.app.IAppOpsService"

    #@219
    move-object/from16 v0, p2

    #@21b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21e
    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@221
    move-result v4

    #@222
    .line 232
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@225
    move-result-object v21

    #@226
    .line 233
    .restart local v21    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@228
    move-object/from16 v1, v21

    #@22a
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->resetAllModes(ILjava/lang/String;)V

    #@22d
    .line 234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@230
    .line 235
    const/4 v3, 0x1

    #@231
    return v3

    #@232
    .line 239
    .end local v4    # "_arg0":I
    .end local v21    # "_arg1":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v3, "com.android.internal.app.IAppOpsService"

    #@235
    move-object/from16 v0, p2

    #@237
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@23a
    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@23d
    move-result v4

    #@23e
    .line 243
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@241
    move-result v5

    #@242
    .line 245
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@245
    move-result v6

    #@246
    .line 247
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@249
    move-result-object v25

    #@24a
    .line 248
    .restart local v25    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    #@24c
    move-object/from16 v1, v25

    #@24e
    invoke-virtual {v0, v4, v5, v6, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->checkAudioOperation(IIILjava/lang/String;)I

    #@251
    move-result v26

    #@252
    .line 249
    .restart local v26    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@255
    .line 250
    move-object/from16 v0, p3

    #@257
    move/from16 v1, v26

    #@259
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@25c
    .line 251
    const/4 v3, 0x1

    #@25d
    return v3

    #@25e
    .line 255
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v25    # "_arg3":Ljava/lang/String;
    .end local v26    # "_result":I
    :sswitch_11
    const-string/jumbo v3, "com.android.internal.app.IAppOpsService"

    #@261
    move-object/from16 v0, p2

    #@263
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@266
    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@269
    move-result v4

    #@26a
    .line 259
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26d
    move-result v5

    #@26e
    .line 261
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@271
    move-result v6

    #@272
    .line 263
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@275
    move-result v7

    #@276
    .line 265
    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@279
    move-result-object v8

    #@27a
    .local v8, "_arg4":[Ljava/lang/String;
    move-object/from16 v3, p0

    #@27c
    .line 266
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/app/IAppOpsService$Stub;->setAudioRestriction(IIII[Ljava/lang/String;)V

    #@27f
    .line 267
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@282
    .line 268
    const/4 v3, 0x1

    #@283
    return v3

    #@284
    .line 272
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":[Ljava/lang/String;
    :sswitch_12
    const-string/jumbo v3, "com.android.internal.app.IAppOpsService"

    #@287
    move-object/from16 v0, p2

    #@289
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28c
    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@28f
    move-result v3

    #@290
    if-eqz v3, :cond_0

    #@292
    .line 275
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@294
    move-object/from16 v0, p2

    #@296
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@299
    move-result-object v15

    #@29a
    check-cast v15, Landroid/os/Bundle;

    #@29c
    .line 281
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@29f
    move-result-object v20

    #@2a0
    .line 283
    .local v20, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a3
    move-result v6

    #@2a4
    .line 284
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    #@2a6
    move-object/from16 v1, v20

    #@2a8
    invoke-virtual {v0, v15, v1, v6}, Lcom/android/internal/app/IAppOpsService$Stub;->setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V

    #@2ab
    .line 285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ae
    .line 286
    const/4 v3, 0x1

    #@2af
    return v3

    #@2b0
    .line 278
    .end local v6    # "_arg2":I
    .end local v20    # "_arg1":Landroid/os/IBinder;
    :cond_0
    const/4 v15, 0x0

    #@2b1
    .local v15, "_arg0":Landroid/os/Bundle;
    goto :goto_0

    #@2b2
    .line 290
    .end local v15    # "_arg0":Landroid/os/Bundle;
    :sswitch_13
    const-string/jumbo v3, "com.android.internal.app.IAppOpsService"

    #@2b5
    move-object/from16 v0, p2

    #@2b7
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ba
    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2bd
    move-result v4

    #@2be
    .line 294
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2c1
    move-result v3

    #@2c2
    if-eqz v3, :cond_1

    #@2c4
    const/4 v11, 0x1

    #@2c5
    .line 296
    .local v11, "_arg1":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2c8
    move-result-object v12

    #@2c9
    .line 298
    .local v12, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2cc
    move-result v7

    #@2cd
    .line 300
    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@2d0
    move-result-object v8

    #@2d1
    .restart local v8    # "_arg4":[Ljava/lang/String;
    move-object/from16 v9, p0

    #@2d3
    move v10, v4

    #@2d4
    move v13, v7

    #@2d5
    move-object v14, v8

    #@2d6
    .line 301
    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/app/IAppOpsService$Stub;->setUserRestriction(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    #@2d9
    .line 302
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2dc
    .line 303
    const/4 v3, 0x1

    #@2dd
    return v3

    #@2de
    .line 294
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":[Ljava/lang/String;
    .end local v11    # "_arg1":Z
    .end local v12    # "_arg2":Landroid/os/IBinder;
    :cond_1
    const/4 v11, 0x0

    #@2df
    .restart local v11    # "_arg1":Z
    goto :goto_1

    #@2e0
    .line 307
    .end local v4    # "_arg0":I
    .end local v11    # "_arg1":Z
    :sswitch_14
    const-string/jumbo v3, "com.android.internal.app.IAppOpsService"

    #@2e3
    move-object/from16 v0, p2

    #@2e5
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e8
    .line 309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2eb
    move-result v4

    #@2ec
    .line 310
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@2ee
    invoke-virtual {v0, v4}, Lcom/android/internal/app/IAppOpsService$Stub;->removeUser(I)V

    #@2f1
    .line 311
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f4
    .line 312
    const/4 v3, 0x1

    #@2f5
    return v3

    #@2f6
    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
