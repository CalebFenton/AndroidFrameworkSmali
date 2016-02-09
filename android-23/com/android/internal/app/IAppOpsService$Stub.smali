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

.field static final TRANSACTION_removeUser:I = 0x13

.field static final TRANSACTION_resetAllModes:I = 0xf

.field static final TRANSACTION_setAudioRestriction:I = 0x11

.field static final TRANSACTION_setMode:I = 0xe

.field static final TRANSACTION_setUidMode:I = 0xd

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
    .locals 21
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
    .line 296
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v2

    #@7
    return v2

    #@8
    .line 42
    :sswitch_0
    const-string/jumbo v2, "com.android.internal.app.IAppOpsService"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 43
    const/4 v2, 0x1

    #@11
    return v2

    #@12
    .line 47
    :sswitch_1
    const-string/jumbo v2, "com.android.internal.app.IAppOpsService"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v3

    #@1e
    .line 51
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v4

    #@22
    .line 53
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@25
    move-result-object v15

    #@26
    .line 54
    .local v15, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@28
    invoke-virtual {v0, v3, v4, v15}, Lcom/android/internal/app/IAppOpsService$Stub;->checkOperation(IILjava/lang/String;)I

    #@2b
    move-result v18

    #@2c
    .line 55
    .local v18, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f
    .line 56
    move-object/from16 v0, p3

    #@31
    move/from16 v1, v18

    #@33
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@36
    .line 57
    const/4 v2, 0x1

    #@37
    return v2

    #@38
    .line 61
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v18    # "_result":I
    :sswitch_2
    const-string/jumbo v2, "com.android.internal.app.IAppOpsService"

    #@3b
    move-object/from16 v0, p2

    #@3d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@40
    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@43
    move-result v3

    #@44
    .line 65
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v4

    #@48
    .line 67
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4b
    move-result-object v15

    #@4c
    .line 68
    .restart local v15    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4e
    invoke-virtual {v0, v3, v4, v15}, Lcom/android/internal/app/IAppOpsService$Stub;->noteOperation(IILjava/lang/String;)I

    #@51
    move-result v18

    #@52
    .line 69
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@55
    .line 70
    move-object/from16 v0, p3

    #@57
    move/from16 v1, v18

    #@59
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5c
    .line 71
    const/4 v2, 0x1

    #@5d
    return v2

    #@5e
    .line 75
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v18    # "_result":I
    :sswitch_3
    const-string/jumbo v2, "com.android.internal.app.IAppOpsService"

    #@61
    move-object/from16 v0, p2

    #@63
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@66
    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@69
    move-result-object v9

    #@6a
    .line 79
    .local v9, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6d
    move-result v4

    #@6e
    .line 81
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@71
    move-result v5

    #@72
    .line 83
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@75
    move-result-object v17

    #@76
    .line 84
    .local v17, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    #@78
    move-object/from16 v1, v17

    #@7a
    invoke-virtual {v0, v9, v4, v5, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    #@7d
    move-result v18

    #@7e
    .line 85
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@81
    .line 86
    move-object/from16 v0, p3

    #@83
    move/from16 v1, v18

    #@85
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@88
    .line 87
    const/4 v2, 0x1

    #@89
    return v2

    #@8a
    .line 91
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v9    # "_arg0":Landroid/os/IBinder;
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_result":I
    :sswitch_4
    const-string/jumbo v2, "com.android.internal.app.IAppOpsService"

    #@8d
    move-object/from16 v0, p2

    #@8f
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@92
    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@95
    move-result-object v9

    #@96
    .line 95
    .restart local v9    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@99
    move-result v4

    #@9a
    .line 97
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9d
    move-result v5

    #@9e
    .line 99
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a1
    move-result-object v17

    #@a2
    .line 100
    .restart local v17    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    #@a4
    move-object/from16 v1, v17

    #@a6
    invoke-virtual {v0, v9, v4, v5, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    #@a9
    .line 101
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ac
    .line 102
    const/4 v2, 0x1

    #@ad
    return v2

    #@ae
    .line 106
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v9    # "_arg0":Landroid/os/IBinder;
    .end local v17    # "_arg3":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v2, "com.android.internal.app.IAppOpsService"

    #@b1
    move-object/from16 v0, p2

    #@b3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b6
    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b9
    move-result v3

    #@ba
    .line 110
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@bd
    move-result-object v13

    #@be
    .line 112
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c1
    move-result-object v2

    #@c2
    invoke-static {v2}, Lcom/android/internal/app/IAppOpsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsCallback;

    #@c5
    move-result-object v14

    #@c6
    .line 113
    .local v14, "_arg2":Lcom/android/internal/app/IAppOpsCallback;
    move-object/from16 v0, p0

    #@c8
    invoke-virtual {v0, v3, v13, v14}, Lcom/android/internal/app/IAppOpsService$Stub;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V

    #@cb
    .line 114
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ce
    .line 115
    const/4 v2, 0x1

    #@cf
    return v2

    #@d0
    .line 119
    .end local v3    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Lcom/android/internal/app/IAppOpsCallback;
    :sswitch_6
    const-string/jumbo v2, "com.android.internal.app.IAppOpsService"

    #@d3
    move-object/from16 v0, p2

    #@d5
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d8
    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@db
    move-result-object v2

    #@dc
    invoke-static {v2}, Lcom/android/internal/app/IAppOpsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsCallback;

    #@df
    move-result-object v10

    #@e0
    .line 122
    .local v10, "_arg0":Lcom/android/internal/app/IAppOpsCallback;
    move-object/from16 v0, p0

    #@e2
    invoke-virtual {v0, v10}, Lcom/android/internal/app/IAppOpsService$Stub;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V

    #@e5
    .line 123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e8
    .line 124
    const/4 v2, 0x1

    #@e9
    return v2

    #@ea
    .line 128
    .end local v10    # "_arg0":Lcom/android/internal/app/IAppOpsCallback;
    :sswitch_7
    const-string/jumbo v2, "com.android.internal.app.IAppOpsService"

    #@ed
    move-object/from16 v0, p2

    #@ef
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f2
    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@f5
    move-result-object v9

    #@f6
    .line 131
    .restart local v9    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@f8
    invoke-virtual {v0, v9}, Lcom/android/internal/app/IAppOpsService$Stub;->getToken(Landroid/os/IBinder;)Landroid/os/IBinder;

    #@fb
    move-result-object v19

    #@fc
    .line 132
    .local v19, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ff
    .line 133
    move-object/from16 v0, p3

    #@101
    move-object/from16 v1, v19

    #@103
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@106
    .line 134
    const/4 v2, 0x1

    #@107
    return v2

    #@108
    .line 138
    .end local v9    # "_arg0":Landroid/os/IBinder;
    .end local v19    # "_result":Landroid/os/IBinder;
    :sswitch_8
    const-string/jumbo v2, "com.android.internal.app.IAppOpsService"

    #@10b
    move-object/from16 v0, p2

    #@10d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@110
    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@113
    move-result-object v11

    #@114
    .line 141
    .local v11, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@116
    invoke-virtual {v0, v11}, Lcom/android/internal/app/IAppOpsService$Stub;->permissionToOpCode(Ljava/lang/String;)I

    #@119
    move-result v18

    #@11a
    .line 142
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11d
    .line 143
    move-object/from16 v0, p3

    #@11f
    move/from16 v1, v18

    #@121
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@124
    .line 144
    const/4 v2, 0x1

    #@125
    return v2

    #@126
    .line 148
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v18    # "_result":I
    :sswitch_9
    const-string/jumbo v2, "com.android.internal.app.IAppOpsService"

    #@129
    move-object/from16 v0, p2

    #@12b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12e
    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@131
    move-result v3

    #@132
    .line 152
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@135
    move-result-object v13

    #@136
    .line 154
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@139
    move-result v5

    #@13a
    .line 156
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13d
    move-result-object v17

    #@13e
    .line 157
    .restart local v17    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    #@140
    move-object/from16 v1, v17

    #@142
    invoke-virtual {v0, v3, v13, v5, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->noteProxyOperation(ILjava/lang/String;ILjava/lang/String;)I

    #@145
    move-result v18

    #@146
    .line 158
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@149
    .line 159
    move-object/from16 v0, p3

    #@14b
    move/from16 v1, v18

    #@14d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@150
    .line 160
    const/4 v2, 0x1

    #@151
    return v2

    #@152
    .line 164
    .end local v3    # "_arg0":I
    .end local v5    # "_arg2":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_result":I
    :sswitch_a
    const-string/jumbo v2, "com.android.internal.app.IAppOpsService"

    #@155
    move-object/from16 v0, p2

    #@157
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15a
    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15d
    move-result v3

    #@15e
    .line 168
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@161
    move-result-object v13

    #@162
    .line 169
    .restart local v13    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@164
    invoke-virtual {v0, v3, v13}, Lcom/android/internal/app/IAppOpsService$Stub;->checkPackage(ILjava/lang/String;)I

    #@167
    move-result v18

    #@168
    .line 170
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16b
    .line 171
    move-object/from16 v0, p3

    #@16d
    move/from16 v1, v18

    #@16f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@172
    .line 172
    const/4 v2, 0x1

    #@173
    return v2

    #@174
    .line 176
    .end local v3    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v18    # "_result":I
    :sswitch_b
    const-string/jumbo v2, "com.android.internal.app.IAppOpsService"

    #@177
    move-object/from16 v0, p2

    #@179
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17c
    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@17f
    move-result-object v12

    #@180
    .line 179
    .local v12, "_arg0":[I
    move-object/from16 v0, p0

    #@182
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IAppOpsService$Stub;->getPackagesForOps([I)Ljava/util/List;

    #@185
    move-result-object v20

    #@186
    .line 180
    .local v20, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@189
    .line 181
    move-object/from16 v0, p3

    #@18b
    move-object/from16 v1, v20

    #@18d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@190
    .line 182
    const/4 v2, 0x1

    #@191
    return v2

    #@192
    .line 186
    .end local v12    # "_arg0":[I
    .end local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :sswitch_c
    const-string/jumbo v2, "com.android.internal.app.IAppOpsService"

    #@195
    move-object/from16 v0, p2

    #@197
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19a
    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19d
    move-result v3

    #@19e
    .line 190
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a1
    move-result-object v13

    #@1a2
    .line 192
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@1a5
    move-result-object v16

    #@1a6
    .line 193
    .local v16, "_arg2":[I
    move-object/from16 v0, p0

    #@1a8
    move-object/from16 v1, v16

    #@1aa
    invoke-virtual {v0, v3, v13, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    #@1ad
    move-result-object v20

    #@1ae
    .line 194
    .restart local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b1
    .line 195
    move-object/from16 v0, p3

    #@1b3
    move-object/from16 v1, v20

    #@1b5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@1b8
    .line 196
    const/4 v2, 0x1

    #@1b9
    return v2

    #@1ba
    .line 200
    .end local v3    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":[I
    .end local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :sswitch_d
    const-string/jumbo v2, "com.android.internal.app.IAppOpsService"

    #@1bd
    move-object/from16 v0, p2

    #@1bf
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c2
    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c5
    move-result v3

    #@1c6
    .line 204
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c9
    move-result v4

    #@1ca
    .line 206
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1cd
    move-result v5

    #@1ce
    .line 207
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    #@1d0
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/app/IAppOpsService$Stub;->setUidMode(III)V

    #@1d3
    .line 208
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d6
    .line 209
    const/4 v2, 0x1

    #@1d7
    return v2

    #@1d8
    .line 213
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    :sswitch_e
    const-string/jumbo v2, "com.android.internal.app.IAppOpsService"

    #@1db
    move-object/from16 v0, p2

    #@1dd
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e0
    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e3
    move-result v3

    #@1e4
    .line 217
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e7
    move-result v4

    #@1e8
    .line 219
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1eb
    move-result-object v15

    #@1ec
    .line 221
    .restart local v15    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ef
    move-result v6

    #@1f0
    .line 222
    .local v6, "_arg3":I
    move-object/from16 v0, p0

    #@1f2
    invoke-virtual {v0, v3, v4, v15, v6}, Lcom/android/internal/app/IAppOpsService$Stub;->setMode(IILjava/lang/String;I)V

    #@1f5
    .line 223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f8
    .line 224
    const/4 v2, 0x1

    #@1f9
    return v2

    #@1fa
    .line 228
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v6    # "_arg3":I
    .end local v15    # "_arg2":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v2, "com.android.internal.app.IAppOpsService"

    #@1fd
    move-object/from16 v0, p2

    #@1ff
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@202
    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@205
    move-result v3

    #@206
    .line 232
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@209
    move-result-object v13

    #@20a
    .line 233
    .restart local v13    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@20c
    invoke-virtual {v0, v3, v13}, Lcom/android/internal/app/IAppOpsService$Stub;->resetAllModes(ILjava/lang/String;)V

    #@20f
    .line 234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@212
    .line 235
    const/4 v2, 0x1

    #@213
    return v2

    #@214
    .line 239
    .end local v3    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v2, "com.android.internal.app.IAppOpsService"

    #@217
    move-object/from16 v0, p2

    #@219
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21c
    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21f
    move-result v3

    #@220
    .line 243
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@223
    move-result v4

    #@224
    .line 245
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@227
    move-result v5

    #@228
    .line 247
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@22b
    move-result-object v17

    #@22c
    .line 248
    .restart local v17    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    #@22e
    move-object/from16 v1, v17

    #@230
    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->checkAudioOperation(IIILjava/lang/String;)I

    #@233
    move-result v18

    #@234
    .line 249
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@237
    .line 250
    move-object/from16 v0, p3

    #@239
    move/from16 v1, v18

    #@23b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@23e
    .line 251
    const/4 v2, 0x1

    #@23f
    return v2

    #@240
    .line 255
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_result":I
    :sswitch_11
    const-string/jumbo v2, "com.android.internal.app.IAppOpsService"

    #@243
    move-object/from16 v0, p2

    #@245
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@248
    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@24b
    move-result v3

    #@24c
    .line 259
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@24f
    move-result v4

    #@250
    .line 261
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@253
    move-result v5

    #@254
    .line 263
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@257
    move-result v6

    #@258
    .line 265
    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@25b
    move-result-object v7

    #@25c
    .local v7, "_arg4":[Ljava/lang/String;
    move-object/from16 v2, p0

    #@25e
    .line 266
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/IAppOpsService$Stub;->setAudioRestriction(IIII[Ljava/lang/String;)V

    #@261
    .line 267
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@264
    .line 268
    const/4 v2, 0x1

    #@265
    return v2

    #@266
    .line 272
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":[Ljava/lang/String;
    :sswitch_12
    const-string/jumbo v2, "com.android.internal.app.IAppOpsService"

    #@269
    move-object/from16 v0, p2

    #@26b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@26e
    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@271
    move-result v2

    #@272
    if-eqz v2, :cond_0

    #@274
    .line 275
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@276
    move-object/from16 v0, p2

    #@278
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27b
    move-result-object v8

    #@27c
    check-cast v8, Landroid/os/Bundle;

    #@27e
    .line 281
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@281
    move-result v4

    #@282
    .line 282
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@284
    invoke-virtual {v0, v8, v4}, Lcom/android/internal/app/IAppOpsService$Stub;->setUserRestrictions(Landroid/os/Bundle;I)V

    #@287
    .line 283
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@28a
    .line 284
    const/4 v2, 0x1

    #@28b
    return v2

    #@28c
    .line 278
    .end local v4    # "_arg1":I
    :cond_0
    const/4 v8, 0x0

    #@28d
    .local v8, "_arg0":Landroid/os/Bundle;
    goto :goto_0

    #@28e
    .line 288
    .end local v8    # "_arg0":Landroid/os/Bundle;
    :sswitch_13
    const-string/jumbo v2, "com.android.internal.app.IAppOpsService"

    #@291
    move-object/from16 v0, p2

    #@293
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@296
    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@299
    move-result v3

    #@29a
    .line 291
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    #@29c
    invoke-virtual {v0, v3}, Lcom/android/internal/app/IAppOpsService$Stub;->removeUser(I)V

    #@29f
    .line 292
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a2
    .line 293
    const/4 v2, 0x1

    #@2a3
    return v2

    #@2a4
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
