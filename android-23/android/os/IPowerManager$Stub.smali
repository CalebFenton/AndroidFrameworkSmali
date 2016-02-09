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

.field static final TRANSACTION_boostScreenBrightness:I = 0x14

.field static final TRANSACTION_crash:I = 0x12

.field static final TRANSACTION_goToSleep:I = 0xa

.field static final TRANSACTION_isDeviceIdleMode:I = 0xf

.field static final TRANSACTION_isInteractive:I = 0xc

.field static final TRANSACTION_isPowerSaveMode:I = 0xd

.field static final TRANSACTION_isScreenBrightnessBoosted:I = 0x15

.field static final TRANSACTION_isWakeLockLevelSupported:I = 0x7

.field static final TRANSACTION_nap:I = 0xb

.field static final TRANSACTION_powerHint:I = 0x5

.field static final TRANSACTION_reboot:I = 0x10

.field static final TRANSACTION_releaseWakeLock:I = 0x3

.field static final TRANSACTION_setAttentionLight:I = 0x18

.field static final TRANSACTION_setPowerSaveMode:I = 0xe

.field static final TRANSACTION_setStayOnSetting:I = 0x13

.field static final TRANSACTION_setTemporaryScreenAutoBrightnessAdjustmentSettingOverride:I = 0x17

.field static final TRANSACTION_setTemporaryScreenBrightnessSettingOverride:I = 0x16

.field static final TRANSACTION_shutdown:I = 0x11

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
    .line 318
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
    .restart local v22    # "_arg0":Z
    goto :goto_5

    #@1f1
    .line 218
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
    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@219
    move-result v4

    #@21a
    if-eqz v4, :cond_8

    #@21c
    const/16 v22, 0x1

    #@21e
    .line 235
    .restart local v22    # "_arg0":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@221
    move-result-object v24

    #@222
    .line 237
    .restart local v24    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@225
    move-result v4

    #@226
    if-eqz v4, :cond_9

    #@228
    const/16 v28, 0x1

    #@22a
    .line 238
    .local v28, "_arg2":Z
    :goto_9
    move-object/from16 v0, p0

    #@22c
    move/from16 v1, v22

    #@22e
    move-object/from16 v2, v24

    #@230
    move/from16 v3, v28

    #@232
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/IPowerManager$Stub;->reboot(ZLjava/lang/String;Z)V

    #@235
    .line 239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@238
    .line 240
    const/4 v4, 0x1

    #@239
    return v4

    #@23a
    .line 233
    .end local v22    # "_arg0":Z
    .end local v24    # "_arg1":Ljava/lang/String;
    .end local v28    # "_arg2":Z
    :cond_8
    const/16 v22, 0x0

    #@23c
    .restart local v22    # "_arg0":Z
    goto :goto_8

    #@23d
    .line 237
    .restart local v24    # "_arg1":Ljava/lang/String;
    :cond_9
    const/16 v28, 0x0

    #@23f
    .restart local v28    # "_arg2":Z
    goto :goto_9

    #@240
    .line 244
    .end local v22    # "_arg0":Z
    .end local v24    # "_arg1":Ljava/lang/String;
    .end local v28    # "_arg2":Z
    :sswitch_11
    const-string/jumbo v4, "android.os.IPowerManager"

    #@243
    move-object/from16 v0, p2

    #@245
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@248
    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@24b
    move-result v4

    #@24c
    if-eqz v4, :cond_a

    #@24e
    const/16 v22, 0x1

    #@250
    .line 248
    .restart local v22    # "_arg0":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@253
    move-result v4

    #@254
    if-eqz v4, :cond_b

    #@256
    const/16 v25, 0x1

    #@258
    .line 249
    .local v25, "_arg1":Z
    :goto_b
    move-object/from16 v0, p0

    #@25a
    move/from16 v1, v22

    #@25c
    move/from16 v2, v25

    #@25e
    invoke-virtual {v0, v1, v2}, Landroid/os/IPowerManager$Stub;->shutdown(ZZ)V

    #@261
    .line 250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@264
    .line 251
    const/4 v4, 0x1

    #@265
    return v4

    #@266
    .line 246
    .end local v22    # "_arg0":Z
    .end local v25    # "_arg1":Z
    :cond_a
    const/16 v22, 0x0

    #@268
    .restart local v22    # "_arg0":Z
    goto :goto_a

    #@269
    .line 248
    :cond_b
    const/16 v25, 0x0

    #@26b
    .restart local v25    # "_arg1":Z
    goto :goto_b

    #@26c
    .line 255
    .end local v22    # "_arg0":Z
    .end local v25    # "_arg1":Z
    :sswitch_12
    const-string/jumbo v4, "android.os.IPowerManager"

    #@26f
    move-object/from16 v0, p2

    #@271
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@274
    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@277
    move-result-object v19

    #@278
    .line 258
    .local v19, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@27a
    move-object/from16 v1, v19

    #@27c
    invoke-virtual {v0, v1}, Landroid/os/IPowerManager$Stub;->crash(Ljava/lang/String;)V

    #@27f
    .line 259
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@282
    .line 260
    const/4 v4, 0x1

    #@283
    return v4

    #@284
    .line 264
    .end local v19    # "_arg0":Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v4, "android.os.IPowerManager"

    #@287
    move-object/from16 v0, p2

    #@289
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28c
    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@28f
    move-result v18

    #@290
    .line 267
    .restart local v18    # "_arg0":I
    move-object/from16 v0, p0

    #@292
    move/from16 v1, v18

    #@294
    invoke-virtual {v0, v1}, Landroid/os/IPowerManager$Stub;->setStayOnSetting(I)V

    #@297
    .line 268
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@29a
    .line 269
    const/4 v4, 0x1

    #@29b
    return v4

    #@29c
    .line 273
    .end local v18    # "_arg0":I
    :sswitch_14
    const-string/jumbo v4, "android.os.IPowerManager"

    #@29f
    move-object/from16 v0, p2

    #@2a1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a4
    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@2a7
    move-result-wide v20

    #@2a8
    .line 276
    .restart local v20    # "_arg0":J
    move-object/from16 v0, p0

    #@2aa
    move-wide/from16 v1, v20

    #@2ac
    invoke-virtual {v0, v1, v2}, Landroid/os/IPowerManager$Stub;->boostScreenBrightness(J)V

    #@2af
    .line 277
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b2
    .line 278
    const/4 v4, 0x1

    #@2b3
    return v4

    #@2b4
    .line 282
    .end local v20    # "_arg0":J
    :sswitch_15
    const-string/jumbo v4, "android.os.IPowerManager"

    #@2b7
    move-object/from16 v0, p2

    #@2b9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2bc
    .line 283
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isScreenBrightnessBoosted()Z

    #@2bf
    move-result v29

    #@2c0
    .line 284
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c3
    .line 285
    if-eqz v29, :cond_c

    #@2c5
    const/4 v4, 0x1

    #@2c6
    :goto_c
    move-object/from16 v0, p3

    #@2c8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2cb
    .line 286
    const/4 v4, 0x1

    #@2cc
    return v4

    #@2cd
    .line 285
    :cond_c
    const/4 v4, 0x0

    #@2ce
    goto :goto_c

    #@2cf
    .line 290
    .end local v29    # "_result":Z
    :sswitch_16
    const-string/jumbo v4, "android.os.IPowerManager"

    #@2d2
    move-object/from16 v0, p2

    #@2d4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d7
    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2da
    move-result v18

    #@2db
    .line 293
    .restart local v18    # "_arg0":I
    move-object/from16 v0, p0

    #@2dd
    move/from16 v1, v18

    #@2df
    invoke-virtual {v0, v1}, Landroid/os/IPowerManager$Stub;->setTemporaryScreenBrightnessSettingOverride(I)V

    #@2e2
    .line 294
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e5
    .line 295
    const/4 v4, 0x1

    #@2e6
    return v4

    #@2e7
    .line 299
    .end local v18    # "_arg0":I
    :sswitch_17
    const-string/jumbo v4, "android.os.IPowerManager"

    #@2ea
    move-object/from16 v0, p2

    #@2ec
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ef
    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@2f2
    move-result v17

    #@2f3
    .line 302
    .local v17, "_arg0":F
    move-object/from16 v0, p0

    #@2f5
    move/from16 v1, v17

    #@2f7
    invoke-virtual {v0, v1}, Landroid/os/IPowerManager$Stub;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    #@2fa
    .line 303
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2fd
    .line 304
    const/4 v4, 0x1

    #@2fe
    return v4

    #@2ff
    .line 308
    .end local v17    # "_arg0":F
    :sswitch_18
    const-string/jumbo v4, "android.os.IPowerManager"

    #@302
    move-object/from16 v0, p2

    #@304
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@307
    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@30a
    move-result v4

    #@30b
    if-eqz v4, :cond_d

    #@30d
    const/16 v22, 0x1

    #@30f
    .line 312
    .restart local v22    # "_arg0":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@312
    move-result v6

    #@313
    .line 313
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@315
    move/from16 v1, v22

    #@317
    invoke-virtual {v0, v1, v6}, Landroid/os/IPowerManager$Stub;->setAttentionLight(ZI)V

    #@31a
    .line 314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@31d
    .line 315
    const/4 v4, 0x1

    #@31e
    return v4

    #@31f
    .line 310
    .end local v6    # "_arg1":I
    .end local v22    # "_arg0":Z
    :cond_d
    const/16 v22, 0x0

    #@321
    .restart local v22    # "_arg0":Z
    goto :goto_d

    #@322
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
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
