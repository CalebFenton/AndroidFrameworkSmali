.class public abstract Landroid/os/IPowerManager$Stub;
.super Landroid/os/Binder;
.source "IPowerManager.java"

# interfaces
.implements Landroid/os/IPowerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPowerManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IPowerManager"

.field static final TRANSACTION_acquireWakeLock:I = 0x1

.field static final TRANSACTION_acquireWakeLockWithUid:I = 0x2

.field static final TRANSACTION_boostScreenBrightness:I = 0x16

.field static final TRANSACTION_crash:I = 0x14

.field static final TRANSACTION_goToSleep:I = 0xa

.field static final TRANSACTION_isDeviceIdleMode:I = 0xf

.field static final TRANSACTION_isInteractive:I = 0xc

.field static final TRANSACTION_isLightDeviceIdleMode:I = 0x10

.field static final TRANSACTION_isPowerSaveMode:I = 0xd

.field static final TRANSACTION_isScreenBrightnessBoosted:I = 0x17

.field static final TRANSACTION_isWakeLockLevelSupported:I = 0x7

.field static final TRANSACTION_nap:I = 0xb

.field static final TRANSACTION_powerHint:I = 0x5

.field static final TRANSACTION_reboot:I = 0x11

.field static final TRANSACTION_rebootSafeMode:I = 0x12

.field static final TRANSACTION_releaseWakeLock:I = 0x3

.field static final TRANSACTION_setAttentionLight:I = 0x1a

.field static final TRANSACTION_setPowerSaveMode:I = 0xe

.field static final TRANSACTION_setStayOnSetting:I = 0x15

.field static final TRANSACTION_setTemporaryScreenAutoBrightnessAdjustmentSettingOverride:I = 0x19

.field static final TRANSACTION_setTemporaryScreenBrightnessSettingOverride:I = 0x18

.field static final TRANSACTION_shutdown:I = 0x13

.field static final TRANSACTION_updateWakeLockUids:I = 0x4

.field static final TRANSACTION_updateWakeLockWorkSource:I = 0x6

.field static final TRANSACTION_userActivity:I = 0x8

.field static final TRANSACTION_wakeUp:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.os.IPowerManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/os/IPowerManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;
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
    const-string/jumbo v1, "android.os.IPowerManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/os/IPowerManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/os/IPowerManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/IPowerManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/os/IPowerManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 30
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
    .line 339
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v4, "android.os.IPowerManager"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 44
    const/4 v4, 0x1

    #@11
    return v4

    #@12
    .line 48
    :sswitch_1
    const-string/jumbo v4, "android.os.IPowerManager"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v5

    #@1e
    .line 52
    .local v5, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v6

    #@22
    .line 54
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@25
    move-result-object v7

    #@26
    .line 56
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@29
    move-result-object v8

    #@2a
    .line 58
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_0

    #@30
    .line 59
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@32
    move-object/from16 v0, p2

    #@34
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@37
    move-result-object v9

    #@38
    check-cast v9, Landroid/os/WorkSource;

    #@3a
    .line 65
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3d
    move-result-object v10

    #@3e
    .local v10, "_arg5":Ljava/lang/String;
    move-object/from16 v4, p0

    #@40
    .line 66
    invoke-virtual/range {v4 .. v10}, Landroid/os/IPowerManager$Stub;->acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V

    #@43
    .line 67
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@46
    .line 68
    const/4 v4, 0x1

    #@47
    return v4

    #@48
    .line 62
    .end local v10    # "_arg5":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x0

    #@49
    .local v9, "_arg4":Landroid/os/WorkSource;
    goto :goto_0

    #@4a
    .line 72
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Landroid/os/WorkSource;
    :sswitch_2
    const-string/jumbo v4, "android.os.IPowerManager"

    #@4d
    move-object/from16 v0, p2

    #@4f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@52
    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@55
    move-result-object v5

    #@56
    .line 76
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@59
    move-result v6

    #@5a
    .line 78
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5d
    move-result-object v7

    #@5e
    .line 80
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@61
    move-result-object v8

    #@62
    .line 82
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@65
    move-result v16

    #@66
    .local v16, "_arg4":I
    move-object/from16 v11, p0

    #@68
    move-object v12, v5

    #@69
    move v13, v6

    #@6a
    move-object v14, v7

    #@6b
    move-object v15, v8

    #@6c
    .line 83
    invoke-virtual/range {v11 .. v16}, Landroid/os/IPowerManager$Stub;->acquireWakeLockWithUid(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    #@6f
    .line 84
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@72
    .line 85
    const/4 v4, 0x1

    #@73
    return v4

    #@74
    .line 89
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :sswitch_3
    const-string/jumbo v4, "android.os.IPowerManager"

    #@77
    move-object/from16 v0, p2

    #@79
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7c
    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@7f
    move-result-object v5

    #@80
    .line 93
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@83
    move-result v6

    #@84
    .line 94
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@86
    invoke-virtual {v0, v5, v6}, Landroid/os/IPowerManager$Stub;->releaseWakeLock(Landroid/os/IBinder;I)V

    #@89
    .line 95
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8c
    .line 96
    const/4 v4, 0x1

    #@8d
    return v4

    #@8e
    .line 100
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":I
    :sswitch_4
    const-string/jumbo v4, "android.os.IPowerManager"

    #@91
    move-object/from16 v0, p2

    #@93
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@96
    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@99
    move-result-object v5

    #@9a
    .line 104
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@9d
    move-result-object v26

    #@9e
    .line 105
    .local v26, "_arg1":[I
    move-object/from16 v0, p0

    #@a0
    move-object/from16 v1, v26

    #@a2
    invoke-virtual {v0, v5, v1}, Landroid/os/IPowerManager$Stub;->updateWakeLockUids(Landroid/os/IBinder;[I)V

    #@a5
    .line 106
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a8
    .line 107
    const/4 v4, 0x1

    #@a9
    return v4

    #@aa
    .line 111
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v26    # "_arg1":[I
    :sswitch_5
    const-string/jumbo v4, "android.os.IPowerManager"

    #@ad
    move-object/from16 v0, p2

    #@af
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b2
    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b5
    move-result v18

    #@b6
    .line 115
    .local v18, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b9
    move-result v6

    #@ba
    .line 116
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@bc
    move/from16 v1, v18

    #@be
    invoke-virtual {v0, v1, v6}, Landroid/os/IPowerManager$Stub;->powerHint(II)V

    #@c1
    .line 117
    const/4 v4, 0x1

    #@c2
    return v4

    #@c3
    .line 121
    .end local v6    # "_arg1":I
    .end local v18    # "_arg0":I
    :sswitch_6
    const-string/jumbo v4, "android.os.IPowerManager"

    #@c6
    move-object/from16 v0, p2

    #@c8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cb
    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ce
    move-result-object v5

    #@cf
    .line 125
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d2
    move-result v4

    #@d3
    if-eqz v4, :cond_1

    #@d5
    .line 126
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d7
    move-object/from16 v0, p2

    #@d9
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@dc
    move-result-object v23

    #@dd
    check-cast v23, Landroid/os/WorkSource;

    #@df
    .line 132
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e2
    move-result-object v7

    #@e3
    .line 133
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@e5
    move-object/from16 v1, v23

    #@e7
    invoke-virtual {v0, v5, v1, v7}, Landroid/os/IPowerManager$Stub;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V

    #@ea
    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ed
    .line 135
    const/4 v4, 0x1

    #@ee
    return v4

    #@ef
    .line 129
    .end local v7    # "_arg2":Ljava/lang/String;
    :cond_1
    const/16 v23, 0x0

    #@f1
    .local v23, "_arg1":Landroid/os/WorkSource;
    goto :goto_1

    #@f2
    .line 139
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v23    # "_arg1":Landroid/os/WorkSource;
    :sswitch_7
    const-string/jumbo v4, "android.os.IPowerManager"

    #@f5
    move-object/from16 v0, p2

    #@f7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fa
    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@fd
    move-result v18

    #@fe
    .line 142
    .restart local v18    # "_arg0":I
    move-object/from16 v0, p0

    #@100
    move/from16 v1, v18

    #@102
    invoke-virtual {v0, v1}, Landroid/os/IPowerManager$Stub;->isWakeLockLevelSupported(I)Z

    #@105
    move-result v29

    #@106
    .line 143
    .local v29, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@109
    .line 144
    if-eqz v29, :cond_2

    #@10b
    const/4 v4, 0x1

    #@10c
    :goto_2
    move-object/from16 v0, p3

    #@10e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@111
    .line 145
    const/4 v4, 0x1

    #@112
    return v4

    #@113
    .line 144
    :cond_2
    const/4 v4, 0x0

    #@114
    goto :goto_2

    #@115
    .line 149
    .end local v18    # "_arg0":I
    .end local v29    # "_result":Z
    :sswitch_8
    const-string/jumbo v4, "android.os.IPowerManager"

    #@118
    move-object/from16 v0, p2

    #@11a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11d
    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@120
    move-result-wide v20

    #@121
    .line 153
    .local v20, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@124
    move-result v6

    #@125
    .line 155
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@128
    move-result v27

    #@129
    .line 156
    .local v27, "_arg2":I
    move-object/from16 v0, p0

    #@12b
    move-wide/from16 v1, v20

    #@12d
    move/from16 v3, v27

    #@12f
    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/os/IPowerManager$Stub;->userActivity(JII)V

    #@132
    .line 157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@135
    .line 158
    const/4 v4, 0x1

    #@136
    return v4

    #@137
    .line 162
    .end local v6    # "_arg1":I
    .end local v20    # "_arg0":J
    .end local v27    # "_arg2":I
    :sswitch_9
    const-string/jumbo v4, "android.os.IPowerManager"

    #@13a
    move-object/from16 v0, p2

    #@13c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13f
    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@142
    move-result-wide v20

    #@143
    .line 166
    .restart local v20    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@146
    move-result-object v24

    #@147
    .line 168
    .local v24, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14a
    move-result-object v7

    #@14b
    .line 169
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@14d
    move-wide/from16 v1, v20

    #@14f
    move-object/from16 v3, v24

    #@151
    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/os/IPowerManager$Stub;->wakeUp(JLjava/lang/String;Ljava/lang/String;)V

    #@154
    .line 170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@157
    .line 171
    const/4 v4, 0x1

    #@158
    return v4

    #@159
    .line 175
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v20    # "_arg0":J
    .end local v24    # "_arg1":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v4, "android.os.IPowerManager"

    #@15c
    move-object/from16 v0, p2

    #@15e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@161
    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@164
    move-result-wide v20

    #@165
    .line 179
    .restart local v20    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@168
    move-result v6

    #@169
    .line 181
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16c
    move-result v27

    #@16d
    .line 182
    .restart local v27    # "_arg2":I
    move-object/from16 v0, p0

    #@16f
    move-wide/from16 v1, v20

    #@171
    move/from16 v3, v27

    #@173
    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/os/IPowerManager$Stub;->goToSleep(JII)V

    #@176
    .line 183
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@179
    .line 184
    const/4 v4, 0x1

    #@17a
    return v4

    #@17b
    .line 188
    .end local v6    # "_arg1":I
    .end local v20    # "_arg0":J
    .end local v27    # "_arg2":I
    :sswitch_b
    const-string/jumbo v4, "android.os.IPowerManager"

    #@17e
    move-object/from16 v0, p2

    #@180
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@183
    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@186
    move-result-wide v20

    #@187
    .line 191
    .restart local v20    # "_arg0":J
    move-object/from16 v0, p0

    #@189
    move-wide/from16 v1, v20

    #@18b
    invoke-virtual {v0, v1, v2}, Landroid/os/IPowerManager$Stub;->nap(J)V

    #@18e
    .line 192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@191
    .line 193
    const/4 v4, 0x1

    #@192
    return v4

    #@193
    .line 197
    .end local v20    # "_arg0":J
    :sswitch_c
    const-string/jumbo v4, "android.os.IPowerManager"

    #@196
    move-object/from16 v0, p2

    #@198
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19b
    .line 198
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isInteractive()Z

    #@19e
    move-result v29

    #@19f
    .line 199
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a2
    .line 200
    if-eqz v29, :cond_3

    #@1a4
    const/4 v4, 0x1

    #@1a5
    :goto_3
    move-object/from16 v0, p3

    #@1a7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1aa
    .line 201
    const/4 v4, 0x1

    #@1ab
    return v4

    #@1ac
    .line 200
    :cond_3
    const/4 v4, 0x0

    #@1ad
    goto :goto_3

    #@1ae
    .line 205
    .end local v29    # "_result":Z
    :sswitch_d
    const-string/jumbo v4, "android.os.IPowerManager"

    #@1b1
    move-object/from16 v0, p2

    #@1b3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b6
    .line 206
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isPowerSaveMode()Z

    #@1b9
    move-result v29

    #@1ba
    .line 207
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1bd
    .line 208
    if-eqz v29, :cond_4

    #@1bf
    const/4 v4, 0x1

    #@1c0
    :goto_4
    move-object/from16 v0, p3

    #@1c2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1c5
    .line 209
    const/4 v4, 0x1

    #@1c6
    return v4

    #@1c7
    .line 208
    :cond_4
    const/4 v4, 0x0

    #@1c8
    goto :goto_4

    #@1c9
    .line 213
    .end local v29    # "_result":Z
    :sswitch_e
    const-string/jumbo v4, "android.os.IPowerManager"

    #@1cc
    move-object/from16 v0, p2

    #@1ce
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d1
    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d4
    move-result v4

    #@1d5
    if-eqz v4, :cond_5

    #@1d7
    const/16 v22, 0x1

    #@1d9
    .line 216
    .local v22, "_arg0":Z
    :goto_5
    move-object/from16 v0, p0

    #@1db
    move/from16 v1, v22

    #@1dd
    invoke-virtual {v0, v1}, Landroid/os/IPowerManager$Stub;->setPowerSaveMode(Z)Z

    #@1e0
    move-result v29

    #@1e1
    .line 217
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e4
    .line 218
    if-eqz v29, :cond_6

    #@1e6
    const/4 v4, 0x1

    #@1e7
    :goto_6
    move-object/from16 v0, p3

    #@1e9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1ec
    .line 219
    const/4 v4, 0x1

    #@1ed
    return v4

    #@1ee
    .line 215
    .end local v22    # "_arg0":Z
    .end local v29    # "_result":Z
    :cond_5
    const/16 v22, 0x0

    #@1f0
    goto :goto_5

    #@1f1
    .line 218
    .restart local v22    # "_arg0":Z
    .restart local v29    # "_result":Z
    :cond_6
    const/4 v4, 0x0

    #@1f2
    goto :goto_6

    #@1f3
    .line 223
    .end local v22    # "_arg0":Z
    .end local v29    # "_result":Z
    :sswitch_f
    const-string/jumbo v4, "android.os.IPowerManager"

    #@1f6
    move-object/from16 v0, p2

    #@1f8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1fb
    .line 224
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isDeviceIdleMode()Z

    #@1fe
    move-result v29

    #@1ff
    .line 225
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@202
    .line 226
    if-eqz v29, :cond_7

    #@204
    const/4 v4, 0x1

    #@205
    :goto_7
    move-object/from16 v0, p3

    #@207
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@20a
    .line 227
    const/4 v4, 0x1

    #@20b
    return v4

    #@20c
    .line 226
    :cond_7
    const/4 v4, 0x0

    #@20d
    goto :goto_7

    #@20e
    .line 231
    .end local v29    # "_result":Z
    :sswitch_10
    const-string/jumbo v4, "android.os.IPowerManager"

    #@211
    move-object/from16 v0, p2

    #@213
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@216
    .line 232
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isLightDeviceIdleMode()Z

    #@219
    move-result v29

    #@21a
    .line 233
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21d
    .line 234
    if-eqz v29, :cond_8

    #@21f
    const/4 v4, 0x1

    #@220
    :goto_8
    move-object/from16 v0, p3

    #@222
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@225
    .line 235
    const/4 v4, 0x1

    #@226
    return v4

    #@227
    .line 234
    :cond_8
    const/4 v4, 0x0

    #@228
    goto :goto_8

    #@229
    .line 239
    .end local v29    # "_result":Z
    :sswitch_11
    const-string/jumbo v4, "android.os.IPowerManager"

    #@22c
    move-object/from16 v0, p2

    #@22e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@231
    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@234
    move-result v4

    #@235
    if-eqz v4, :cond_9

    #@237
    const/16 v22, 0x1

    #@239
    .line 243
    .local v22, "_arg0":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@23c
    move-result-object v24

    #@23d
    .line 245
    .restart local v24    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@240
    move-result v4

    #@241
    if-eqz v4, :cond_a

    #@243
    const/16 v28, 0x1

    #@245
    .line 246
    .local v28, "_arg2":Z
    :goto_a
    move-object/from16 v0, p0

    #@247
    move/from16 v1, v22

    #@249
    move-object/from16 v2, v24

    #@24b
    move/from16 v3, v28

    #@24d
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/IPowerManager$Stub;->reboot(ZLjava/lang/String;Z)V

    #@250
    .line 247
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@253
    .line 248
    const/4 v4, 0x1

    #@254
    return v4

    #@255
    .line 241
    .end local v22    # "_arg0":Z
    .end local v24    # "_arg1":Ljava/lang/String;
    .end local v28    # "_arg2":Z
    :cond_9
    const/16 v22, 0x0

    #@257
    .restart local v22    # "_arg0":Z
    goto :goto_9

    #@258
    .line 245
    .restart local v24    # "_arg1":Ljava/lang/String;
    :cond_a
    const/16 v28, 0x0

    #@25a
    goto :goto_a

    #@25b
    .line 252
    .end local v22    # "_arg0":Z
    .end local v24    # "_arg1":Ljava/lang/String;
    :sswitch_12
    const-string/jumbo v4, "android.os.IPowerManager"

    #@25e
    move-object/from16 v0, p2

    #@260
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@263
    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@266
    move-result v4

    #@267
    if-eqz v4, :cond_b

    #@269
    const/16 v22, 0x1

    #@26b
    .line 256
    .restart local v22    # "_arg0":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26e
    move-result v4

    #@26f
    if-eqz v4, :cond_c

    #@271
    const/16 v25, 0x1

    #@273
    .line 257
    .local v25, "_arg1":Z
    :goto_c
    move-object/from16 v0, p0

    #@275
    move/from16 v1, v22

    #@277
    move/from16 v2, v25

    #@279
    invoke-virtual {v0, v1, v2}, Landroid/os/IPowerManager$Stub;->rebootSafeMode(ZZ)V

    #@27c
    .line 258
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27f
    .line 259
    const/4 v4, 0x1

    #@280
    return v4

    #@281
    .line 254
    .end local v22    # "_arg0":Z
    .end local v25    # "_arg1":Z
    :cond_b
    const/16 v22, 0x0

    #@283
    .restart local v22    # "_arg0":Z
    goto :goto_b

    #@284
    .line 256
    :cond_c
    const/16 v25, 0x0

    #@286
    goto :goto_c

    #@287
    .line 263
    .end local v22    # "_arg0":Z
    :sswitch_13
    const-string/jumbo v4, "android.os.IPowerManager"

    #@28a
    move-object/from16 v0, p2

    #@28c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28f
    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@292
    move-result v4

    #@293
    if-eqz v4, :cond_d

    #@295
    const/16 v22, 0x1

    #@297
    .line 267
    .restart local v22    # "_arg0":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@29a
    move-result-object v24

    #@29b
    .line 269
    .restart local v24    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@29e
    move-result v4

    #@29f
    if-eqz v4, :cond_e

    #@2a1
    const/16 v28, 0x1

    #@2a3
    .line 270
    .restart local v28    # "_arg2":Z
    :goto_e
    move-object/from16 v0, p0

    #@2a5
    move/from16 v1, v22

    #@2a7
    move-object/from16 v2, v24

    #@2a9
    move/from16 v3, v28

    #@2ab
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/IPowerManager$Stub;->shutdown(ZLjava/lang/String;Z)V

    #@2ae
    .line 271
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b1
    .line 272
    const/4 v4, 0x1

    #@2b2
    return v4

    #@2b3
    .line 265
    .end local v22    # "_arg0":Z
    .end local v24    # "_arg1":Ljava/lang/String;
    .end local v28    # "_arg2":Z
    :cond_d
    const/16 v22, 0x0

    #@2b5
    .restart local v22    # "_arg0":Z
    goto :goto_d

    #@2b6
    .line 269
    .restart local v24    # "_arg1":Ljava/lang/String;
    :cond_e
    const/16 v28, 0x0

    #@2b8
    goto :goto_e

    #@2b9
    .line 276
    .end local v22    # "_arg0":Z
    .end local v24    # "_arg1":Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v4, "android.os.IPowerManager"

    #@2bc
    move-object/from16 v0, p2

    #@2be
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c1
    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2c4
    move-result-object v19

    #@2c5
    .line 279
    .local v19, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2c7
    move-object/from16 v1, v19

    #@2c9
    invoke-virtual {v0, v1}, Landroid/os/IPowerManager$Stub;->crash(Ljava/lang/String;)V

    #@2cc
    .line 280
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2cf
    .line 281
    const/4 v4, 0x1

    #@2d0
    return v4

    #@2d1
    .line 285
    .end local v19    # "_arg0":Ljava/lang/String;
    :sswitch_15
    const-string/jumbo v4, "android.os.IPowerManager"

    #@2d4
    move-object/from16 v0, p2

    #@2d6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d9
    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2dc
    move-result v18

    #@2dd
    .line 288
    .restart local v18    # "_arg0":I
    move-object/from16 v0, p0

    #@2df
    move/from16 v1, v18

    #@2e1
    invoke-virtual {v0, v1}, Landroid/os/IPowerManager$Stub;->setStayOnSetting(I)V

    #@2e4
    .line 289
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e7
    .line 290
    const/4 v4, 0x1

    #@2e8
    return v4

    #@2e9
    .line 294
    .end local v18    # "_arg0":I
    :sswitch_16
    const-string/jumbo v4, "android.os.IPowerManager"

    #@2ec
    move-object/from16 v0, p2

    #@2ee
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f1
    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@2f4
    move-result-wide v20

    #@2f5
    .line 297
    .restart local v20    # "_arg0":J
    move-object/from16 v0, p0

    #@2f7
    move-wide/from16 v1, v20

    #@2f9
    invoke-virtual {v0, v1, v2}, Landroid/os/IPowerManager$Stub;->boostScreenBrightness(J)V

    #@2fc
    .line 298
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ff
    .line 299
    const/4 v4, 0x1

    #@300
    return v4

    #@301
    .line 303
    .end local v20    # "_arg0":J
    :sswitch_17
    const-string/jumbo v4, "android.os.IPowerManager"

    #@304
    move-object/from16 v0, p2

    #@306
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@309
    .line 304
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isScreenBrightnessBoosted()Z

    #@30c
    move-result v29

    #@30d
    .line 305
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@310
    .line 306
    if-eqz v29, :cond_f

    #@312
    const/4 v4, 0x1

    #@313
    :goto_f
    move-object/from16 v0, p3

    #@315
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@318
    .line 307
    const/4 v4, 0x1

    #@319
    return v4

    #@31a
    .line 306
    :cond_f
    const/4 v4, 0x0

    #@31b
    goto :goto_f

    #@31c
    .line 311
    .end local v29    # "_result":Z
    :sswitch_18
    const-string/jumbo v4, "android.os.IPowerManager"

    #@31f
    move-object/from16 v0, p2

    #@321
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@324
    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@327
    move-result v18

    #@328
    .line 314
    .restart local v18    # "_arg0":I
    move-object/from16 v0, p0

    #@32a
    move/from16 v1, v18

    #@32c
    invoke-virtual {v0, v1}, Landroid/os/IPowerManager$Stub;->setTemporaryScreenBrightnessSettingOverride(I)V

    #@32f
    .line 315
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@332
    .line 316
    const/4 v4, 0x1

    #@333
    return v4

    #@334
    .line 320
    .end local v18    # "_arg0":I
    :sswitch_19
    const-string/jumbo v4, "android.os.IPowerManager"

    #@337
    move-object/from16 v0, p2

    #@339
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@33c
    .line 322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@33f
    move-result v17

    #@340
    .line 323
    .local v17, "_arg0":F
    move-object/from16 v0, p0

    #@342
    move/from16 v1, v17

    #@344
    invoke-virtual {v0, v1}, Landroid/os/IPowerManager$Stub;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    #@347
    .line 324
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@34a
    .line 325
    const/4 v4, 0x1

    #@34b
    return v4

    #@34c
    .line 329
    .end local v17    # "_arg0":F
    :sswitch_1a
    const-string/jumbo v4, "android.os.IPowerManager"

    #@34f
    move-object/from16 v0, p2

    #@351
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@354
    .line 331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@357
    move-result v4

    #@358
    if-eqz v4, :cond_10

    #@35a
    const/16 v22, 0x1

    #@35c
    .line 333
    .restart local v22    # "_arg0":Z
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@35f
    move-result v6

    #@360
    .line 334
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@362
    move/from16 v1, v22

    #@364
    invoke-virtual {v0, v1, v6}, Landroid/os/IPowerManager$Stub;->setAttentionLight(ZI)V

    #@367
    .line 335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@36a
    .line 336
    const/4 v4, 0x1

    #@36b
    return v4

    #@36c
    .line 331
    .end local v6    # "_arg1":I
    .end local v22    # "_arg0":Z
    :cond_10
    const/16 v22, 0x0

    #@36e
    .restart local v22    # "_arg0":Z
    goto :goto_10

    #@36f
    .line 39
    nop

    #@370
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
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
