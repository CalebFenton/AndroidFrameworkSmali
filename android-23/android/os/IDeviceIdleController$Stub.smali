.class public abstract Landroid/os/IDeviceIdleController$Stub;
.super Landroid/os/Binder;
.source "IDeviceIdleController.java"

# interfaces
.implements Landroid/os/IDeviceIdleController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDeviceIdleController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IDeviceIdleController"

.field static final TRANSACTION_addPowerSaveTempWhitelistApp:I = 0xc

.field static final TRANSACTION_addPowerSaveTempWhitelistAppForMms:I = 0xd

.field static final TRANSACTION_addPowerSaveTempWhitelistAppForSms:I = 0xe

.field static final TRANSACTION_addPowerSaveWhitelistApp:I = 0x1

.field static final TRANSACTION_exitIdle:I = 0xf

.field static final TRANSACTION_getAppIdTempWhitelist:I = 0x9

.field static final TRANSACTION_getAppIdWhitelist:I = 0x8

.field static final TRANSACTION_getAppIdWhitelistExceptIdle:I = 0x7

.field static final TRANSACTION_getFullPowerWhitelist:I = 0x6

.field static final TRANSACTION_getFullPowerWhitelistExceptIdle:I = 0x5

.field static final TRANSACTION_getSystemPowerWhitelist:I = 0x4

.field static final TRANSACTION_getSystemPowerWhitelistExceptIdle:I = 0x3

.field static final TRANSACTION_isPowerSaveWhitelistApp:I = 0xb

.field static final TRANSACTION_isPowerSaveWhitelistExceptIdleApp:I = 0xa

.field static final TRANSACTION_removePowerSaveWhitelistApp:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.os.IDeviceIdleController"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/os/IDeviceIdleController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;
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
    const-string/jumbo v1, "android.os.IDeviceIdleController"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/os/IDeviceIdleController;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/os/IDeviceIdleController;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/IDeviceIdleController$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/os/IDeviceIdleController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 15
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
    .line 193
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v2

    #@7
    return v2

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 44
    const/4 v2, 0x1

    #@11
    return v2

    #@12
    .line 48
    :sswitch_1
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    .line 51
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveWhitelistApp(Ljava/lang/String;)V

    #@21
    .line 52
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@24
    .line 53
    const/4 v2, 0x1

    #@25
    return v2

    #@26
    .line 57
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@29
    move-object/from16 v0, p2

    #@2b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e
    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    .line 60
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/IDeviceIdleController$Stub;->removePowerSaveWhitelistApp(Ljava/lang/String;)V

    #@35
    .line 61
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@38
    .line 62
    const/4 v2, 0x1

    #@39
    return v2

    #@3a
    .line 66
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@3d
    move-object/from16 v0, p2

    #@3f
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42
    .line 67
    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getSystemPowerWhitelistExceptIdle()[Ljava/lang/String;

    #@45
    move-result-object v14

    #@46
    .line 68
    .local v14, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@49
    .line 69
    move-object/from16 v0, p3

    #@4b
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@4e
    .line 70
    const/4 v2, 0x1

    #@4f
    return v2

    #@50
    .line 74
    .end local v14    # "_result":[Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@53
    move-object/from16 v0, p2

    #@55
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@58
    .line 75
    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getSystemPowerWhitelist()[Ljava/lang/String;

    #@5b
    move-result-object v14

    #@5c
    .line 76
    .restart local v14    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5f
    .line 77
    move-object/from16 v0, p3

    #@61
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@64
    .line 78
    const/4 v2, 0x1

    #@65
    return v2

    #@66
    .line 82
    .end local v14    # "_result":[Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@69
    move-object/from16 v0, p2

    #@6b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6e
    .line 83
    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getFullPowerWhitelistExceptIdle()[Ljava/lang/String;

    #@71
    move-result-object v14

    #@72
    .line 84
    .restart local v14    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@75
    .line 85
    move-object/from16 v0, p3

    #@77
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@7a
    .line 86
    const/4 v2, 0x1

    #@7b
    return v2

    #@7c
    .line 90
    .end local v14    # "_result":[Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@7f
    move-object/from16 v0, p2

    #@81
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@84
    .line 91
    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getFullPowerWhitelist()[Ljava/lang/String;

    #@87
    move-result-object v14

    #@88
    .line 92
    .restart local v14    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8b
    .line 93
    move-object/from16 v0, p3

    #@8d
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@90
    .line 94
    const/4 v2, 0x1

    #@91
    return v2

    #@92
    .line 98
    .end local v14    # "_result":[Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@95
    move-object/from16 v0, p2

    #@97
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9a
    .line 99
    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdWhitelistExceptIdle()[I

    #@9d
    move-result-object v13

    #@9e
    .line 100
    .local v13, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a1
    .line 101
    move-object/from16 v0, p3

    #@a3
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    #@a6
    .line 102
    const/4 v2, 0x1

    #@a7
    return v2

    #@a8
    .line 106
    .end local v13    # "_result":[I
    :sswitch_8
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@ab
    move-object/from16 v0, p2

    #@ad
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b0
    .line 107
    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdWhitelist()[I

    #@b3
    move-result-object v13

    #@b4
    .line 108
    .restart local v13    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b7
    .line 109
    move-object/from16 v0, p3

    #@b9
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    #@bc
    .line 110
    const/4 v2, 0x1

    #@bd
    return v2

    #@be
    .line 114
    .end local v13    # "_result":[I
    :sswitch_9
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@c1
    move-object/from16 v0, p2

    #@c3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c6
    .line 115
    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdTempWhitelist()[I

    #@c9
    move-result-object v13

    #@ca
    .line 116
    .restart local v13    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@cd
    .line 117
    move-object/from16 v0, p3

    #@cf
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    #@d2
    .line 118
    const/4 v2, 0x1

    #@d3
    return v2

    #@d4
    .line 122
    .end local v13    # "_result":[I
    :sswitch_a
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@d7
    move-object/from16 v0, p2

    #@d9
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@dc
    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@df
    move-result-object v3

    #@e0
    .line 125
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/IDeviceIdleController$Stub;->isPowerSaveWhitelistExceptIdleApp(Ljava/lang/String;)Z

    #@e3
    move-result v12

    #@e4
    .line 126
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e7
    .line 127
    if-eqz v12, :cond_0

    #@e9
    const/4 v2, 0x1

    #@ea
    :goto_0
    move-object/from16 v0, p3

    #@ec
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@ef
    .line 128
    const/4 v2, 0x1

    #@f0
    return v2

    #@f1
    .line 127
    :cond_0
    const/4 v2, 0x0

    #@f2
    goto :goto_0

    #@f3
    .line 132
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v12    # "_result":Z
    :sswitch_b
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@f6
    move-object/from16 v0, p2

    #@f8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fb
    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@fe
    move-result-object v3

    #@ff
    .line 135
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/IDeviceIdleController$Stub;->isPowerSaveWhitelistApp(Ljava/lang/String;)Z

    #@102
    move-result v12

    #@103
    .line 136
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@106
    .line 137
    if-eqz v12, :cond_1

    #@108
    const/4 v2, 0x1

    #@109
    :goto_1
    move-object/from16 v0, p3

    #@10b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@10e
    .line 138
    const/4 v2, 0x1

    #@10f
    return v2

    #@110
    .line 137
    :cond_1
    const/4 v2, 0x0

    #@111
    goto :goto_1

    #@112
    .line 142
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v12    # "_result":Z
    :sswitch_c
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@115
    move-object/from16 v0, p2

    #@117
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11a
    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11d
    move-result-object v3

    #@11e
    .line 146
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@121
    move-result-wide v4

    #@122
    .line 148
    .local v4, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@125
    move-result v6

    #@126
    .line 150
    .local v6, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@129
    move-result-object v7

    #@12a
    .local v7, "_arg3":Ljava/lang/String;
    move-object v2, p0

    #@12b
    .line 151
    invoke-virtual/range {v2 .. v7}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveTempWhitelistApp(Ljava/lang/String;JILjava/lang/String;)V

    #@12e
    .line 152
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@131
    .line 153
    const/4 v2, 0x1

    #@132
    return v2

    #@133
    .line 157
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@136
    move-object/from16 v0, p2

    #@138
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13b
    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13e
    move-result-object v3

    #@13f
    .line 161
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@142
    move-result v8

    #@143
    .line 163
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@146
    move-result-object v9

    #@147
    .line 164
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v3, v8, v9}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J

    #@14a
    move-result-wide v10

    #@14b
    .line 165
    .local v10, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@14e
    .line 166
    move-object/from16 v0, p3

    #@150
    invoke-virtual {v0, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    #@153
    .line 167
    const/4 v2, 0x1

    #@154
    return v2

    #@155
    .line 171
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_result":J
    :sswitch_e
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@158
    move-object/from16 v0, p2

    #@15a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15d
    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@160
    move-result-object v3

    #@161
    .line 175
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@164
    move-result v8

    #@165
    .line 177
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@168
    move-result-object v9

    #@169
    .line 178
    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v3, v8, v9}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveTempWhitelistAppForSms(Ljava/lang/String;ILjava/lang/String;)J

    #@16c
    move-result-wide v10

    #@16d
    .line 179
    .restart local v10    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@170
    .line 180
    move-object/from16 v0, p3

    #@172
    invoke-virtual {v0, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    #@175
    .line 181
    const/4 v2, 0x1

    #@176
    return v2

    #@177
    .line 185
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_result":J
    :sswitch_f
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@17a
    move-object/from16 v0, p2

    #@17c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17f
    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@182
    move-result-object v3

    #@183
    .line 188
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/IDeviceIdleController$Stub;->exitIdle(Ljava/lang/String;)V

    #@186
    .line 189
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@189
    .line 190
    const/4 v2, 0x1

    #@18a
    return v2

    #@18b
    .line 39
    nop

    #@18c
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
