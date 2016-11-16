.class public abstract Landroid/app/backup/IBackupManager$Stub;
.super Landroid/os/Binder;
.source "IBackupManager.java"

# interfaces
.implements Landroid/app/backup/IBackupManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IBackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IBackupManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.backup.IBackupManager"

.field static final TRANSACTION_acknowledgeFullBackupOrRestore:I = 0x10

.field static final TRANSACTION_agentConnected:I = 0x3

.field static final TRANSACTION_agentDisconnected:I = 0x4

.field static final TRANSACTION_backupNow:I = 0xc

.field static final TRANSACTION_beginRestoreSession:I = 0x19

.field static final TRANSACTION_clearBackupData:I = 0x2

.field static final TRANSACTION_dataChanged:I = 0x1

.field static final TRANSACTION_fullBackup:I = 0xd

.field static final TRANSACTION_fullRestore:I = 0xf

.field static final TRANSACTION_fullTransportBackup:I = 0xe

.field static final TRANSACTION_getAvailableRestoreToken:I = 0x1d

.field static final TRANSACTION_getConfigurationIntent:I = 0x15

.field static final TRANSACTION_getCurrentTransport:I = 0x11

.field static final TRANSACTION_getDataManagementIntent:I = 0x17

.field static final TRANSACTION_getDataManagementLabel:I = 0x18

.field static final TRANSACTION_getDestinationString:I = 0x16

.field static final TRANSACTION_getTransportWhitelist:I = 0x13

.field static final TRANSACTION_hasBackupPassword:I = 0xb

.field static final TRANSACTION_isAppEligibleForBackup:I = 0x1e

.field static final TRANSACTION_isBackupEnabled:I = 0x9

.field static final TRANSACTION_isBackupServiceActive:I = 0x1c

.field static final TRANSACTION_listAllTransports:I = 0x12

.field static final TRANSACTION_opComplete:I = 0x1a

.field static final TRANSACTION_requestBackup:I = 0x1f

.field static final TRANSACTION_restoreAtInstall:I = 0x5

.field static final TRANSACTION_selectBackupTransport:I = 0x14

.field static final TRANSACTION_setAutoRestore:I = 0x7

.field static final TRANSACTION_setBackupEnabled:I = 0x6

.field static final TRANSACTION_setBackupPassword:I = 0xa

.field static final TRANSACTION_setBackupProvisioned:I = 0x8

.field static final TRANSACTION_setBackupServiceActive:I = 0x1b


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 25
    const-string/jumbo v0, "android.app.backup.IBackupManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/app/backup/IBackupManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 33
    if-nez p0, :cond_0

    #@3
    .line 34
    return-object v1

    #@4
    .line 36
    :cond_0
    const-string/jumbo v1, "android.app.backup.IBackupManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 37
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/app/backup/IBackupManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 38
    check-cast v0, Landroid/app/backup/IBackupManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 40
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/backup/IBackupManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/app/backup/IBackupManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 44
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 37
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
    .line 48
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 401
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 52
    :sswitch_0
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 53
    const/4 v4, 0x1

    #@11
    return v4

    #@12
    .line 57
    :sswitch_1
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v20

    #@1e
    .line 60
    .local v20, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@20
    move-object/from16 v1, v20

    #@22
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->dataChanged(Ljava/lang/String;)V

    #@25
    .line 61
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@28
    .line 62
    const/4 v4, 0x1

    #@29
    return v4

    #@2a
    .line 66
    .end local v20    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@2d
    move-object/from16 v0, p2

    #@2f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32
    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@35
    move-result-object v20

    #@36
    .line 70
    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@39
    move-result-object v28

    #@3a
    .line 71
    .local v28, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3c
    move-object/from16 v1, v20

    #@3e
    move-object/from16 v2, v28

    #@40
    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    #@43
    .line 72
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@46
    .line 73
    const/4 v4, 0x1

    #@47
    return v4

    #@48
    .line 77
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v28    # "_arg1":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@4b
    move-object/from16 v0, p2

    #@4d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@50
    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@53
    move-result-object v20

    #@54
    .line 81
    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@57
    move-result-object v27

    #@58
    .line 82
    .local v27, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@5a
    move-object/from16 v1, v20

    #@5c
    move-object/from16 v2, v27

    #@5e
    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V

    #@61
    .line 83
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@64
    .line 84
    const/4 v4, 0x1

    #@65
    return v4

    #@66
    .line 88
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":Landroid/os/IBinder;
    :sswitch_4
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@69
    move-object/from16 v0, p2

    #@6b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6e
    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@71
    move-result-object v20

    #@72
    .line 91
    .restart local v20    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@74
    move-object/from16 v1, v20

    #@76
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->agentDisconnected(Ljava/lang/String;)V

    #@79
    .line 92
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7c
    .line 93
    const/4 v4, 0x1

    #@7d
    return v4

    #@7e
    .line 97
    .end local v20    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@81
    move-object/from16 v0, p2

    #@83
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@86
    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@89
    move-result-object v20

    #@8a
    .line 101
    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8d
    move-result v23

    #@8e
    .line 102
    .local v23, "_arg1":I
    move-object/from16 v0, p0

    #@90
    move-object/from16 v1, v20

    #@92
    move/from16 v2, v23

    #@94
    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->restoreAtInstall(Ljava/lang/String;I)V

    #@97
    .line 103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9a
    .line 104
    const/4 v4, 0x1

    #@9b
    return v4

    #@9c
    .line 108
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v23    # "_arg1":I
    :sswitch_6
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@9f
    move-object/from16 v0, p2

    #@a1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a4
    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a7
    move-result v4

    #@a8
    if-eqz v4, :cond_0

    #@aa
    const/16 v21, 0x1

    #@ac
    .line 111
    .local v21, "_arg0":Z
    :goto_0
    move-object/from16 v0, p0

    #@ae
    move/from16 v1, v21

    #@b0
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->setBackupEnabled(Z)V

    #@b3
    .line 112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b6
    .line 113
    const/4 v4, 0x1

    #@b7
    return v4

    #@b8
    .line 110
    .end local v21    # "_arg0":Z
    :cond_0
    const/16 v21, 0x0

    #@ba
    goto :goto_0

    #@bb
    .line 117
    :sswitch_7
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@be
    move-object/from16 v0, p2

    #@c0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c3
    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c6
    move-result v4

    #@c7
    if-eqz v4, :cond_1

    #@c9
    const/16 v21, 0x1

    #@cb
    .line 120
    .restart local v21    # "_arg0":Z
    :goto_1
    move-object/from16 v0, p0

    #@cd
    move/from16 v1, v21

    #@cf
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->setAutoRestore(Z)V

    #@d2
    .line 121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d5
    .line 122
    const/4 v4, 0x1

    #@d6
    return v4

    #@d7
    .line 119
    .end local v21    # "_arg0":Z
    :cond_1
    const/16 v21, 0x0

    #@d9
    goto :goto_1

    #@da
    .line 126
    :sswitch_8
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@dd
    move-object/from16 v0, p2

    #@df
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e2
    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e5
    move-result v4

    #@e6
    if-eqz v4, :cond_2

    #@e8
    const/16 v21, 0x1

    #@ea
    .line 129
    .restart local v21    # "_arg0":Z
    :goto_2
    move-object/from16 v0, p0

    #@ec
    move/from16 v1, v21

    #@ee
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->setBackupProvisioned(Z)V

    #@f1
    .line 130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f4
    .line 131
    const/4 v4, 0x1

    #@f5
    return v4

    #@f6
    .line 128
    .end local v21    # "_arg0":Z
    :cond_2
    const/16 v21, 0x0

    #@f8
    goto :goto_2

    #@f9
    .line 135
    :sswitch_9
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@fc
    move-object/from16 v0, p2

    #@fe
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@101
    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->isBackupEnabled()Z

    #@104
    move-result v35

    #@105
    .line 137
    .local v35, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@108
    .line 138
    if-eqz v35, :cond_3

    #@10a
    const/4 v4, 0x1

    #@10b
    :goto_3
    move-object/from16 v0, p3

    #@10d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@110
    .line 139
    const/4 v4, 0x1

    #@111
    return v4

    #@112
    .line 138
    :cond_3
    const/4 v4, 0x0

    #@113
    goto :goto_3

    #@114
    .line 143
    .end local v35    # "_result":Z
    :sswitch_a
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@117
    move-object/from16 v0, p2

    #@119
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11c
    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11f
    move-result-object v20

    #@120
    .line 147
    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@123
    move-result-object v28

    #@124
    .line 148
    .restart local v28    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@126
    move-object/from16 v1, v20

    #@128
    move-object/from16 v2, v28

    #@12a
    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    #@12d
    move-result v35

    #@12e
    .line 149
    .restart local v35    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@131
    .line 150
    if-eqz v35, :cond_4

    #@133
    const/4 v4, 0x1

    #@134
    :goto_4
    move-object/from16 v0, p3

    #@136
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@139
    .line 151
    const/4 v4, 0x1

    #@13a
    return v4

    #@13b
    .line 150
    :cond_4
    const/4 v4, 0x0

    #@13c
    goto :goto_4

    #@13d
    .line 155
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v35    # "_result":Z
    :sswitch_b
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@140
    move-object/from16 v0, p2

    #@142
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@145
    .line 156
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->hasBackupPassword()Z

    #@148
    move-result v35

    #@149
    .line 157
    .restart local v35    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@14c
    .line 158
    if-eqz v35, :cond_5

    #@14e
    const/4 v4, 0x1

    #@14f
    :goto_5
    move-object/from16 v0, p3

    #@151
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@154
    .line 159
    const/4 v4, 0x1

    #@155
    return v4

    #@156
    .line 158
    :cond_5
    const/4 v4, 0x0

    #@157
    goto :goto_5

    #@158
    .line 163
    .end local v35    # "_result":Z
    :sswitch_c
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@15b
    move-object/from16 v0, p2

    #@15d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@160
    .line 164
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->backupNow()V

    #@163
    .line 165
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@166
    .line 166
    const/4 v4, 0x1

    #@167
    return v4

    #@168
    .line 170
    :sswitch_d
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@16b
    move-object/from16 v0, p2

    #@16d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@170
    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@173
    move-result v4

    #@174
    if-eqz v4, :cond_6

    #@176
    .line 173
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@178
    move-object/from16 v0, p2

    #@17a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@17d
    move-result-object v5

    #@17e
    check-cast v5, Landroid/os/ParcelFileDescriptor;

    #@180
    .line 179
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@183
    move-result v4

    #@184
    if-eqz v4, :cond_7

    #@186
    const/4 v6, 0x1

    #@187
    .line 181
    .local v6, "_arg1":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18a
    move-result v4

    #@18b
    if-eqz v4, :cond_8

    #@18d
    const/4 v7, 0x1

    #@18e
    .line 183
    .local v7, "_arg2":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@191
    move-result v4

    #@192
    if-eqz v4, :cond_9

    #@194
    const/4 v8, 0x1

    #@195
    .line 185
    .local v8, "_arg3":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@198
    move-result v4

    #@199
    if-eqz v4, :cond_a

    #@19b
    const/4 v9, 0x1

    #@19c
    .line 187
    .local v9, "_arg4":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19f
    move-result v4

    #@1a0
    if-eqz v4, :cond_b

    #@1a2
    const/4 v10, 0x1

    #@1a3
    .line 189
    .local v10, "_arg5":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a6
    move-result v4

    #@1a7
    if-eqz v4, :cond_c

    #@1a9
    const/4 v11, 0x1

    #@1aa
    .line 191
    .local v11, "_arg6":Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ad
    move-result v4

    #@1ae
    if-eqz v4, :cond_d

    #@1b0
    const/4 v12, 0x1

    #@1b1
    .line 193
    .local v12, "_arg7":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@1b4
    move-result-object v13

    #@1b5
    .local v13, "_arg8":[Ljava/lang/String;
    move-object/from16 v4, p0

    #@1b7
    .line 194
    invoke-virtual/range {v4 .. v13}, Landroid/app/backup/IBackupManager$Stub;->fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZ[Ljava/lang/String;)V

    #@1ba
    .line 195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1bd
    .line 196
    const/4 v4, 0x1

    #@1be
    return v4

    #@1bf
    .line 176
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":Z
    .end local v8    # "_arg3":Z
    .end local v9    # "_arg4":Z
    .end local v10    # "_arg5":Z
    .end local v11    # "_arg6":Z
    .end local v12    # "_arg7":Z
    .end local v13    # "_arg8":[Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    #@1c0
    .local v5, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_6

    #@1c1
    .line 179
    .end local v5    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_7
    const/4 v6, 0x0

    #@1c2
    .restart local v6    # "_arg1":Z
    goto :goto_7

    #@1c3
    .line 181
    :cond_8
    const/4 v7, 0x0

    #@1c4
    .restart local v7    # "_arg2":Z
    goto :goto_8

    #@1c5
    .line 183
    :cond_9
    const/4 v8, 0x0

    #@1c6
    .restart local v8    # "_arg3":Z
    goto :goto_9

    #@1c7
    .line 185
    :cond_a
    const/4 v9, 0x0

    #@1c8
    .restart local v9    # "_arg4":Z
    goto :goto_a

    #@1c9
    .line 187
    :cond_b
    const/4 v10, 0x0

    #@1ca
    .restart local v10    # "_arg5":Z
    goto :goto_b

    #@1cb
    .line 189
    :cond_c
    const/4 v11, 0x0

    #@1cc
    .restart local v11    # "_arg6":Z
    goto :goto_c

    #@1cd
    .line 191
    :cond_d
    const/4 v12, 0x0

    #@1ce
    .restart local v12    # "_arg7":Z
    goto :goto_d

    #@1cf
    .line 200
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":Z
    .end local v8    # "_arg3":Z
    .end local v9    # "_arg4":Z
    .end local v10    # "_arg5":Z
    .end local v11    # "_arg6":Z
    .end local v12    # "_arg7":Z
    :sswitch_e
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@1d2
    move-object/from16 v0, p2

    #@1d4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d7
    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@1da
    move-result-object v22

    #@1db
    .line 203
    .local v22, "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@1dd
    move-object/from16 v1, v22

    #@1df
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->fullTransportBackup([Ljava/lang/String;)V

    #@1e2
    .line 204
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e5
    .line 205
    const/4 v4, 0x1

    #@1e6
    return v4

    #@1e7
    .line 209
    .end local v22    # "_arg0":[Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@1ea
    move-object/from16 v0, p2

    #@1ec
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ef
    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f2
    move-result v4

    #@1f3
    if-eqz v4, :cond_e

    #@1f5
    .line 212
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f7
    move-object/from16 v0, p2

    #@1f9
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1fc
    move-result-object v5

    #@1fd
    check-cast v5, Landroid/os/ParcelFileDescriptor;

    #@1ff
    .line 217
    :goto_e
    move-object/from16 v0, p0

    #@201
    invoke-virtual {v0, v5}, Landroid/app/backup/IBackupManager$Stub;->fullRestore(Landroid/os/ParcelFileDescriptor;)V

    #@204
    .line 218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@207
    .line 219
    const/4 v4, 0x1

    #@208
    return v4

    #@209
    .line 215
    :cond_e
    const/4 v5, 0x0

    #@20a
    .restart local v5    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_e

    #@20b
    .line 223
    .end local v5    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_10
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@20e
    move-object/from16 v0, p2

    #@210
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@213
    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@216
    move-result v15

    #@217
    .line 227
    .local v15, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21a
    move-result v4

    #@21b
    if-eqz v4, :cond_f

    #@21d
    const/4 v6, 0x1

    #@21e
    .line 229
    .restart local v6    # "_arg1":Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@221
    move-result-object v17

    #@222
    .line 231
    .local v17, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@225
    move-result-object v18

    #@226
    .line 233
    .local v18, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@229
    move-result-object v4

    #@22a
    invoke-static {v4}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IFullBackupRestoreObserver;

    #@22d
    move-result-object v19

    #@22e
    .local v19, "_arg4":Landroid/app/backup/IFullBackupRestoreObserver;
    move-object/from16 v14, p0

    #@230
    move/from16 v16, v6

    #@232
    .line 234
    invoke-virtual/range {v14 .. v19}, Landroid/app/backup/IBackupManager$Stub;->acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    #@235
    .line 235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@238
    .line 236
    const/4 v4, 0x1

    #@239
    return v4

    #@23a
    .line 227
    .end local v6    # "_arg1":Z
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":Landroid/app/backup/IFullBackupRestoreObserver;
    :cond_f
    const/4 v6, 0x0

    #@23b
    .restart local v6    # "_arg1":Z
    goto :goto_f

    #@23c
    .line 240
    .end local v6    # "_arg1":Z
    .end local v15    # "_arg0":I
    :sswitch_11
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@23f
    move-object/from16 v0, p2

    #@241
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@244
    .line 241
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->getCurrentTransport()Ljava/lang/String;

    #@247
    move-result-object v34

    #@248
    .line 242
    .local v34, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@24b
    .line 243
    move-object/from16 v0, p3

    #@24d
    move-object/from16 v1, v34

    #@24f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@252
    .line 244
    const/4 v4, 0x1

    #@253
    return v4

    #@254
    .line 248
    .end local v34    # "_result":Ljava/lang/String;
    :sswitch_12
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@257
    move-object/from16 v0, p2

    #@259
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@25c
    .line 249
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->listAllTransports()[Ljava/lang/String;

    #@25f
    move-result-object v36

    #@260
    .line 250
    .local v36, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@263
    .line 251
    move-object/from16 v0, p3

    #@265
    move-object/from16 v1, v36

    #@267
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@26a
    .line 252
    const/4 v4, 0x1

    #@26b
    return v4

    #@26c
    .line 256
    .end local v36    # "_result":[Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@26f
    move-object/from16 v0, p2

    #@271
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@274
    .line 257
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->getTransportWhitelist()[Ljava/lang/String;

    #@277
    move-result-object v36

    #@278
    .line 258
    .restart local v36    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27b
    .line 259
    move-object/from16 v0, p3

    #@27d
    move-object/from16 v1, v36

    #@27f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@282
    .line 260
    const/4 v4, 0x1

    #@283
    return v4

    #@284
    .line 264
    .end local v36    # "_result":[Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@287
    move-object/from16 v0, p2

    #@289
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28c
    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@28f
    move-result-object v20

    #@290
    .line 267
    .restart local v20    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@292
    move-object/from16 v1, v20

    #@294
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    #@297
    move-result-object v34

    #@298
    .line 268
    .restart local v34    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@29b
    .line 269
    move-object/from16 v0, p3

    #@29d
    move-object/from16 v1, v34

    #@29f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2a2
    .line 270
    const/4 v4, 0x1

    #@2a3
    return v4

    #@2a4
    .line 274
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v34    # "_result":Ljava/lang/String;
    :sswitch_15
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@2a7
    move-object/from16 v0, p2

    #@2a9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ac
    .line 276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2af
    move-result-object v20

    #@2b0
    .line 277
    .restart local v20    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2b2
    move-object/from16 v1, v20

    #@2b4
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    #@2b7
    move-result-object v33

    #@2b8
    .line 278
    .local v33, "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2bb
    .line 279
    if-eqz v33, :cond_10

    #@2bd
    .line 280
    const/4 v4, 0x1

    #@2be
    move-object/from16 v0, p3

    #@2c0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2c3
    .line 281
    const/4 v4, 0x1

    #@2c4
    move-object/from16 v0, v33

    #@2c6
    move-object/from16 v1, p3

    #@2c8
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@2cb
    .line 286
    :goto_10
    const/4 v4, 0x1

    #@2cc
    return v4

    #@2cd
    .line 284
    :cond_10
    const/4 v4, 0x0

    #@2ce
    move-object/from16 v0, p3

    #@2d0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2d3
    goto :goto_10

    #@2d4
    .line 290
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v33    # "_result":Landroid/content/Intent;
    :sswitch_16
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@2d7
    move-object/from16 v0, p2

    #@2d9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2dc
    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2df
    move-result-object v20

    #@2e0
    .line 293
    .restart local v20    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2e2
    move-object/from16 v1, v20

    #@2e4
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    #@2e7
    move-result-object v34

    #@2e8
    .line 294
    .restart local v34    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2eb
    .line 295
    move-object/from16 v0, p3

    #@2ed
    move-object/from16 v1, v34

    #@2ef
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2f2
    .line 296
    const/4 v4, 0x1

    #@2f3
    return v4

    #@2f4
    .line 300
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v34    # "_result":Ljava/lang/String;
    :sswitch_17
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@2f7
    move-object/from16 v0, p2

    #@2f9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2fc
    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2ff
    move-result-object v20

    #@300
    .line 303
    .restart local v20    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@302
    move-object/from16 v1, v20

    #@304
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    #@307
    move-result-object v33

    #@308
    .line 304
    .restart local v33    # "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@30b
    .line 305
    if-eqz v33, :cond_11

    #@30d
    .line 306
    const/4 v4, 0x1

    #@30e
    move-object/from16 v0, p3

    #@310
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@313
    .line 307
    const/4 v4, 0x1

    #@314
    move-object/from16 v0, v33

    #@316
    move-object/from16 v1, p3

    #@318
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@31b
    .line 312
    :goto_11
    const/4 v4, 0x1

    #@31c
    return v4

    #@31d
    .line 310
    :cond_11
    const/4 v4, 0x0

    #@31e
    move-object/from16 v0, p3

    #@320
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@323
    goto :goto_11

    #@324
    .line 316
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v33    # "_result":Landroid/content/Intent;
    :sswitch_18
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@327
    move-object/from16 v0, p2

    #@329
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32c
    .line 318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@32f
    move-result-object v20

    #@330
    .line 319
    .restart local v20    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@332
    move-object/from16 v1, v20

    #@334
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;

    #@337
    move-result-object v34

    #@338
    .line 320
    .restart local v34    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@33b
    .line 321
    move-object/from16 v0, p3

    #@33d
    move-object/from16 v1, v34

    #@33f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@342
    .line 322
    const/4 v4, 0x1

    #@343
    return v4

    #@344
    .line 326
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v34    # "_result":Ljava/lang/String;
    :sswitch_19
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@347
    move-object/from16 v0, p2

    #@349
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34c
    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@34f
    move-result-object v20

    #@350
    .line 330
    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@353
    move-result-object v28

    #@354
    .line 331
    .restart local v28    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@356
    move-object/from16 v1, v20

    #@358
    move-object/from16 v2, v28

    #@35a
    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    #@35d
    move-result-object v32

    #@35e
    .line 332
    .local v32, "_result":Landroid/app/backup/IRestoreSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@361
    .line 333
    if-eqz v32, :cond_12

    #@363
    invoke-interface/range {v32 .. v32}, Landroid/app/backup/IRestoreSession;->asBinder()Landroid/os/IBinder;

    #@366
    move-result-object v4

    #@367
    :goto_12
    move-object/from16 v0, p3

    #@369
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@36c
    .line 334
    const/4 v4, 0x1

    #@36d
    return v4

    #@36e
    .line 333
    :cond_12
    const/4 v4, 0x0

    #@36f
    goto :goto_12

    #@370
    .line 338
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v32    # "_result":Landroid/app/backup/IRestoreSession;
    :sswitch_1a
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@373
    move-object/from16 v0, p2

    #@375
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@378
    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@37b
    move-result v15

    #@37c
    .line 342
    .restart local v15    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@37f
    move-result-wide v24

    #@380
    .line 343
    .local v24, "_arg1":J
    move-object/from16 v0, p0

    #@382
    move-wide/from16 v1, v24

    #@384
    invoke-virtual {v0, v15, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->opComplete(IJ)V

    #@387
    .line 344
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@38a
    .line 345
    const/4 v4, 0x1

    #@38b
    return v4

    #@38c
    .line 349
    .end local v15    # "_arg0":I
    .end local v24    # "_arg1":J
    :sswitch_1b
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@38f
    move-object/from16 v0, p2

    #@391
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@394
    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@397
    move-result v15

    #@398
    .line 353
    .restart local v15    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@39b
    move-result v4

    #@39c
    if-eqz v4, :cond_13

    #@39e
    const/4 v6, 0x1

    #@39f
    .line 354
    .local v6, "_arg1":Z
    :goto_13
    move-object/from16 v0, p0

    #@3a1
    invoke-virtual {v0, v15, v6}, Landroid/app/backup/IBackupManager$Stub;->setBackupServiceActive(IZ)V

    #@3a4
    .line 355
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a7
    .line 356
    const/4 v4, 0x1

    #@3a8
    return v4

    #@3a9
    .line 353
    .end local v6    # "_arg1":Z
    :cond_13
    const/4 v6, 0x0

    #@3aa
    goto :goto_13

    #@3ab
    .line 360
    .end local v15    # "_arg0":I
    :sswitch_1c
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@3ae
    move-object/from16 v0, p2

    #@3b0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3b3
    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3b6
    move-result v15

    #@3b7
    .line 363
    .restart local v15    # "_arg0":I
    move-object/from16 v0, p0

    #@3b9
    invoke-virtual {v0, v15}, Landroid/app/backup/IBackupManager$Stub;->isBackupServiceActive(I)Z

    #@3bc
    move-result v35

    #@3bd
    .line 364
    .restart local v35    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c0
    .line 365
    if-eqz v35, :cond_14

    #@3c2
    const/4 v4, 0x1

    #@3c3
    :goto_14
    move-object/from16 v0, p3

    #@3c5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3c8
    .line 366
    const/4 v4, 0x1

    #@3c9
    return v4

    #@3ca
    .line 365
    :cond_14
    const/4 v4, 0x0

    #@3cb
    goto :goto_14

    #@3cc
    .line 370
    .end local v15    # "_arg0":I
    .end local v35    # "_result":Z
    :sswitch_1d
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@3cf
    move-object/from16 v0, p2

    #@3d1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3d4
    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3d7
    move-result-object v20

    #@3d8
    .line 373
    .restart local v20    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3da
    move-object/from16 v1, v20

    #@3dc
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getAvailableRestoreToken(Ljava/lang/String;)J

    #@3df
    move-result-wide v30

    #@3e0
    .line 374
    .local v30, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e3
    .line 375
    move-object/from16 v0, p3

    #@3e5
    move-wide/from16 v1, v30

    #@3e7
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@3ea
    .line 376
    const/4 v4, 0x1

    #@3eb
    return v4

    #@3ec
    .line 380
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":J
    :sswitch_1e
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@3ef
    move-object/from16 v0, p2

    #@3f1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3f4
    .line 382
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3f7
    move-result-object v20

    #@3f8
    .line 383
    .restart local v20    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3fa
    move-object/from16 v1, v20

    #@3fc
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->isAppEligibleForBackup(Ljava/lang/String;)Z

    #@3ff
    move-result v35

    #@400
    .line 384
    .restart local v35    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@403
    .line 385
    if-eqz v35, :cond_15

    #@405
    const/4 v4, 0x1

    #@406
    :goto_15
    move-object/from16 v0, p3

    #@408
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@40b
    .line 386
    const/4 v4, 0x1

    #@40c
    return v4

    #@40d
    .line 385
    :cond_15
    const/4 v4, 0x0

    #@40e
    goto :goto_15

    #@40f
    .line 390
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v35    # "_result":Z
    :sswitch_1f
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@412
    move-object/from16 v0, p2

    #@414
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@417
    .line 392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@41a
    move-result-object v22

    #@41b
    .line 394
    .restart local v22    # "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@41e
    move-result-object v4

    #@41f
    invoke-static {v4}, Landroid/app/backup/IBackupObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupObserver;

    #@422
    move-result-object v26

    #@423
    .line 395
    .local v26, "_arg1":Landroid/app/backup/IBackupObserver;
    move-object/from16 v0, p0

    #@425
    move-object/from16 v1, v22

    #@427
    move-object/from16 v2, v26

    #@429
    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)I

    #@42c
    move-result v29

    #@42d
    .line 396
    .local v29, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@430
    .line 397
    move-object/from16 v0, p3

    #@432
    move/from16 v1, v29

    #@434
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@437
    .line 398
    const/4 v4, 0x1

    #@438
    return v4

    #@439
    .line 48
    nop

    #@43a
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
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
