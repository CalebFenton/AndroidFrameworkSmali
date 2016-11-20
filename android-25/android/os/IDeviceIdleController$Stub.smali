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

.field static final TRANSACTION_addPowerSaveTempWhitelistApp:I = 0xe

.field static final TRANSACTION_addPowerSaveTempWhitelistAppForMms:I = 0xf

.field static final TRANSACTION_addPowerSaveTempWhitelistAppForSms:I = 0x10

.field static final TRANSACTION_addPowerSaveWhitelistApp:I = 0x1

.field static final TRANSACTION_exitIdle:I = 0x11

.field static final TRANSACTION_getAppIdTempWhitelist:I = 0xb

.field static final TRANSACTION_getAppIdUserWhitelist:I = 0xa

.field static final TRANSACTION_getAppIdWhitelist:I = 0x9

.field static final TRANSACTION_getAppIdWhitelistExceptIdle:I = 0x8

.field static final TRANSACTION_getFullPowerWhitelist:I = 0x7

.field static final TRANSACTION_getFullPowerWhitelistExceptIdle:I = 0x6

.field static final TRANSACTION_getSystemPowerWhitelist:I = 0x4

.field static final TRANSACTION_getSystemPowerWhitelistExceptIdle:I = 0x3

.field static final TRANSACTION_getUserPowerWhitelist:I = 0x5

.field static final TRANSACTION_isPowerSaveWhitelistApp:I = 0xd

.field static final TRANSACTION_isPowerSaveWhitelistExceptIdleApp:I = 0xc

.field static final TRANSACTION_registerMaintenanceActivityListener:I = 0x12

.field static final TRANSACTION_removePowerSaveWhitelistApp:I = 0x2

.field static final TRANSACTION_unregisterMaintenanceActivityListener:I = 0x13


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
    .locals 16
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
    .line 228
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
    move-object/from16 v0, p0

    #@20
    invoke-virtual {v0, v3}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveWhitelistApp(Ljava/lang/String;)V

    #@23
    .line 52
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@26
    .line 53
    const/4 v2, 0x1

    #@27
    return v2

    #@28
    .line 57
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@2b
    move-object/from16 v0, p2

    #@2d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30
    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    .line 60
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@36
    invoke-virtual {v0, v3}, Landroid/os/IDeviceIdleController$Stub;->removePowerSaveWhitelistApp(Ljava/lang/String;)V

    #@39
    .line 61
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c
    .line 62
    const/4 v2, 0x1

    #@3d
    return v2

    #@3e
    .line 66
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@41
    move-object/from16 v0, p2

    #@43
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@46
    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getSystemPowerWhitelistExceptIdle()[Ljava/lang/String;

    #@49
    move-result-object v15

    #@4a
    .line 68
    .local v15, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4d
    .line 69
    move-object/from16 v0, p3

    #@4f
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@52
    .line 70
    const/4 v2, 0x1

    #@53
    return v2

    #@54
    .line 74
    .end local v15    # "_result":[Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@57
    move-object/from16 v0, p2

    #@59
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5c
    .line 75
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getSystemPowerWhitelist()[Ljava/lang/String;

    #@5f
    move-result-object v15

    #@60
    .line 76
    .restart local v15    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@63
    .line 77
    move-object/from16 v0, p3

    #@65
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@68
    .line 78
    const/4 v2, 0x1

    #@69
    return v2

    #@6a
    .line 82
    .end local v15    # "_result":[Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@6d
    move-object/from16 v0, p2

    #@6f
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@72
    .line 83
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getUserPowerWhitelist()[Ljava/lang/String;

    #@75
    move-result-object v15

    #@76
    .line 84
    .restart local v15    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@79
    .line 85
    move-object/from16 v0, p3

    #@7b
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@7e
    .line 86
    const/4 v2, 0x1

    #@7f
    return v2

    #@80
    .line 90
    .end local v15    # "_result":[Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@83
    move-object/from16 v0, p2

    #@85
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@88
    .line 91
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getFullPowerWhitelistExceptIdle()[Ljava/lang/String;

    #@8b
    move-result-object v15

    #@8c
    .line 92
    .restart local v15    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8f
    .line 93
    move-object/from16 v0, p3

    #@91
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@94
    .line 94
    const/4 v2, 0x1

    #@95
    return v2

    #@96
    .line 98
    .end local v15    # "_result":[Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@99
    move-object/from16 v0, p2

    #@9b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9e
    .line 99
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getFullPowerWhitelist()[Ljava/lang/String;

    #@a1
    move-result-object v15

    #@a2
    .line 100
    .restart local v15    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a5
    .line 101
    move-object/from16 v0, p3

    #@a7
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@aa
    .line 102
    const/4 v2, 0x1

    #@ab
    return v2

    #@ac
    .line 106
    .end local v15    # "_result":[Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@af
    move-object/from16 v0, p2

    #@b1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b4
    .line 107
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdWhitelistExceptIdle()[I

    #@b7
    move-result-object v14

    #@b8
    .line 108
    .local v14, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@bb
    .line 109
    move-object/from16 v0, p3

    #@bd
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeIntArray([I)V

    #@c0
    .line 110
    const/4 v2, 0x1

    #@c1
    return v2

    #@c2
    .line 114
    .end local v14    # "_result":[I
    :sswitch_9
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@c5
    move-object/from16 v0, p2

    #@c7
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ca
    .line 115
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdWhitelist()[I

    #@cd
    move-result-object v14

    #@ce
    .line 116
    .restart local v14    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d1
    .line 117
    move-object/from16 v0, p3

    #@d3
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeIntArray([I)V

    #@d6
    .line 118
    const/4 v2, 0x1

    #@d7
    return v2

    #@d8
    .line 122
    .end local v14    # "_result":[I
    :sswitch_a
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@db
    move-object/from16 v0, p2

    #@dd
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e0
    .line 123
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdUserWhitelist()[I

    #@e3
    move-result-object v14

    #@e4
    .line 124
    .restart local v14    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e7
    .line 125
    move-object/from16 v0, p3

    #@e9
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeIntArray([I)V

    #@ec
    .line 126
    const/4 v2, 0x1

    #@ed
    return v2

    #@ee
    .line 130
    .end local v14    # "_result":[I
    :sswitch_b
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@f1
    move-object/from16 v0, p2

    #@f3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f6
    .line 131
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdTempWhitelist()[I

    #@f9
    move-result-object v14

    #@fa
    .line 132
    .restart local v14    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fd
    .line 133
    move-object/from16 v0, p3

    #@ff
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeIntArray([I)V

    #@102
    .line 134
    const/4 v2, 0x1

    #@103
    return v2

    #@104
    .line 138
    .end local v14    # "_result":[I
    :sswitch_c
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@107
    move-object/from16 v0, p2

    #@109
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10c
    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10f
    move-result-object v3

    #@110
    .line 141
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@112
    invoke-virtual {v0, v3}, Landroid/os/IDeviceIdleController$Stub;->isPowerSaveWhitelistExceptIdleApp(Ljava/lang/String;)Z

    #@115
    move-result v11

    #@116
    .line 142
    .local v11, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@119
    .line 143
    if-eqz v11, :cond_0

    #@11b
    const/4 v2, 0x1

    #@11c
    :goto_0
    move-object/from16 v0, p3

    #@11e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@121
    .line 144
    const/4 v2, 0x1

    #@122
    return v2

    #@123
    .line 143
    :cond_0
    const/4 v2, 0x0

    #@124
    goto :goto_0

    #@125
    .line 148
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":Z
    :sswitch_d
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@128
    move-object/from16 v0, p2

    #@12a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12d
    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@130
    move-result-object v3

    #@131
    .line 151
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@133
    invoke-virtual {v0, v3}, Landroid/os/IDeviceIdleController$Stub;->isPowerSaveWhitelistApp(Ljava/lang/String;)Z

    #@136
    move-result v11

    #@137
    .line 152
    .restart local v11    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13a
    .line 153
    if-eqz v11, :cond_1

    #@13c
    const/4 v2, 0x1

    #@13d
    :goto_1
    move-object/from16 v0, p3

    #@13f
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@142
    .line 154
    const/4 v2, 0x1

    #@143
    return v2

    #@144
    .line 153
    :cond_1
    const/4 v2, 0x0

    #@145
    goto :goto_1

    #@146
    .line 158
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":Z
    :sswitch_e
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@149
    move-object/from16 v0, p2

    #@14b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14e
    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@151
    move-result-object v3

    #@152
    .line 162
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@155
    move-result-wide v4

    #@156
    .line 164
    .local v4, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@159
    move-result v6

    #@15a
    .line 166
    .local v6, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@15d
    move-result-object v7

    #@15e
    .local v7, "_arg3":Ljava/lang/String;
    move-object/from16 v2, p0

    #@160
    .line 167
    invoke-virtual/range {v2 .. v7}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveTempWhitelistApp(Ljava/lang/String;JILjava/lang/String;)V

    #@163
    .line 168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@166
    .line 169
    const/4 v2, 0x1

    #@167
    return v2

    #@168
    .line 173
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@16b
    move-object/from16 v0, p2

    #@16d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@170
    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@173
    move-result-object v3

    #@174
    .line 177
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@177
    move-result v9

    #@178
    .line 179
    .local v9, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@17b
    move-result-object v10

    #@17c
    .line 180
    .local v10, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@17e
    invoke-virtual {v0, v3, v9, v10}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J

    #@181
    move-result-wide v12

    #@182
    .line 181
    .local v12, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@185
    .line 182
    move-object/from16 v0, p3

    #@187
    invoke-virtual {v0, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    #@18a
    .line 183
    const/4 v2, 0x1

    #@18b
    return v2

    #@18c
    .line 187
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":I
    .end local v10    # "_arg2":Ljava/lang/String;
    .end local v12    # "_result":J
    :sswitch_10
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@18f
    move-object/from16 v0, p2

    #@191
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@194
    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@197
    move-result-object v3

    #@198
    .line 191
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19b
    move-result v9

    #@19c
    .line 193
    .restart local v9    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19f
    move-result-object v10

    #@1a0
    .line 194
    .restart local v10    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1a2
    invoke-virtual {v0, v3, v9, v10}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveTempWhitelistAppForSms(Ljava/lang/String;ILjava/lang/String;)J

    #@1a5
    move-result-wide v12

    #@1a6
    .line 195
    .restart local v12    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a9
    .line 196
    move-object/from16 v0, p3

    #@1ab
    invoke-virtual {v0, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    #@1ae
    .line 197
    const/4 v2, 0x1

    #@1af
    return v2

    #@1b0
    .line 201
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":I
    .end local v10    # "_arg2":Ljava/lang/String;
    .end local v12    # "_result":J
    :sswitch_11
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@1b3
    move-object/from16 v0, p2

    #@1b5
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b8
    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1bb
    move-result-object v3

    #@1bc
    .line 204
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1be
    invoke-virtual {v0, v3}, Landroid/os/IDeviceIdleController$Stub;->exitIdle(Ljava/lang/String;)V

    #@1c1
    .line 205
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c4
    .line 206
    const/4 v2, 0x1

    #@1c5
    return v2

    #@1c6
    .line 210
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_12
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@1c9
    move-object/from16 v0, p2

    #@1cb
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ce
    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d1
    move-result-object v2

    #@1d2
    invoke-static {v2}, Landroid/os/IMaintenanceActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IMaintenanceActivityListener;

    #@1d5
    move-result-object v8

    #@1d6
    .line 213
    .local v8, "_arg0":Landroid/os/IMaintenanceActivityListener;
    move-object/from16 v0, p0

    #@1d8
    invoke-virtual {v0, v8}, Landroid/os/IDeviceIdleController$Stub;->registerMaintenanceActivityListener(Landroid/os/IMaintenanceActivityListener;)Z

    #@1db
    move-result v11

    #@1dc
    .line 214
    .restart local v11    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1df
    .line 215
    if-eqz v11, :cond_2

    #@1e1
    const/4 v2, 0x1

    #@1e2
    :goto_2
    move-object/from16 v0, p3

    #@1e4
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e7
    .line 216
    const/4 v2, 0x1

    #@1e8
    return v2

    #@1e9
    .line 215
    :cond_2
    const/4 v2, 0x0

    #@1ea
    goto :goto_2

    #@1eb
    .line 220
    .end local v8    # "_arg0":Landroid/os/IMaintenanceActivityListener;
    .end local v11    # "_result":Z
    :sswitch_13
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    #@1ee
    move-object/from16 v0, p2

    #@1f0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f3
    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1f6
    move-result-object v2

    #@1f7
    invoke-static {v2}, Landroid/os/IMaintenanceActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IMaintenanceActivityListener;

    #@1fa
    move-result-object v8

    #@1fb
    .line 223
    .restart local v8    # "_arg0":Landroid/os/IMaintenanceActivityListener;
    move-object/from16 v0, p0

    #@1fd
    invoke-virtual {v0, v8}, Landroid/os/IDeviceIdleController$Stub;->unregisterMaintenanceActivityListener(Landroid/os/IMaintenanceActivityListener;)V

    #@200
    .line 224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@203
    .line 225
    const/4 v2, 0x1

    #@204
    return v2

    #@205
    .line 39
    nop

    #@206
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
