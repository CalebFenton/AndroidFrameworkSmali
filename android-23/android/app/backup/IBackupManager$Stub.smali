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

.field static final TRANSACTION_beginRestoreSession:I = 0x18

.field static final TRANSACTION_clearBackupData:I = 0x2

.field static final TRANSACTION_dataChanged:I = 0x1

.field static final TRANSACTION_fullBackup:I = 0xd

.field static final TRANSACTION_fullRestore:I = 0xf

.field static final TRANSACTION_fullTransportBackup:I = 0xe

.field static final TRANSACTION_getAvailableRestoreToken:I = 0x1c

.field static final TRANSACTION_getConfigurationIntent:I = 0x14

.field static final TRANSACTION_getCurrentTransport:I = 0x11

.field static final TRANSACTION_getDataManagementIntent:I = 0x16

.field static final TRANSACTION_getDataManagementLabel:I = 0x17

.field static final TRANSACTION_getDestinationString:I = 0x15

.field static final TRANSACTION_hasBackupPassword:I = 0xb

.field static final TRANSACTION_isBackupEnabled:I = 0x9

.field static final TRANSACTION_isBackupServiceActive:I = 0x1b

.field static final TRANSACTION_listAllTransports:I = 0x12

.field static final TRANSACTION_opComplete:I = 0x19

.field static final TRANSACTION_restoreAtInstall:I = 0x5

.field static final TRANSACTION_selectBackupTransport:I = 0x13

.field static final TRANSACTION_setAutoRestore:I = 0x7

.field static final TRANSACTION_setBackupEnabled:I = 0x6

.field static final TRANSACTION_setBackupPassword:I = 0xa

.field static final TRANSACTION_setBackupProvisioned:I = 0x8

.field static final TRANSACTION_setBackupServiceActive:I = 0x1a


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
    .locals 35
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
    .line 371
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
    move-result-object v27

    #@3a
    .line 71
    .local v27, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3c
    move-object/from16 v1, v20

    #@3e
    move-object/from16 v2, v27

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
    .end local v27    # "_arg1":Ljava/lang/String;
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
    move-result-object v26

    #@58
    .line 82
    .local v26, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@5a
    move-object/from16 v1, v20

    #@5c
    move-object/from16 v2, v26

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
    .end local v26    # "_arg1":Landroid/os/IBinder;
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
    .restart local v21    # "_arg0":Z
    goto :goto_0

    #@bb
    .line 117
    .end local v21    # "_arg0":Z
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
    .restart local v21    # "_arg0":Z
    goto :goto_1

    #@da
    .line 126
    .end local v21    # "_arg0":Z
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
    .restart local v21    # "_arg0":Z
    goto :goto_2

    #@f9
    .line 135
    .end local v21    # "_arg0":Z
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
    move-result v33

    #@105
    .line 137
    .local v33, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@108
    .line 138
    if-eqz v33, :cond_3

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
    .end local v33    # "_result":Z
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
    move-result-object v27

    #@124
    .line 148
    .restart local v27    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@126
    move-object/from16 v1, v20

    #@128
    move-object/from16 v2, v27

    #@12a
    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    #@12d
    move-result v33

    #@12e
    .line 149
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@131
    .line 150
    if-eqz v33, :cond_4

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
    .end local v27    # "_arg1":Ljava/lang/String;
    .end local v33    # "_result":Z
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
    move-result v33

    #@149
    .line 157
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@14c
    .line 158
    if-eqz v33, :cond_5

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
    .end local v33    # "_result":Z
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
    move-result-object v32

    #@248
    .line 242
    .local v32, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@24b
    .line 243
    move-object/from16 v0, p3

    #@24d
    move-object/from16 v1, v32

    #@24f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@252
    .line 244
    const/4 v4, 0x1

    #@253
    return v4

    #@254
    .line 248
    .end local v32    # "_result":Ljava/lang/String;
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
    move-result-object v34

    #@260
    .line 250
    .local v34, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@263
    .line 251
    move-object/from16 v0, p3

    #@265
    move-object/from16 v1, v34

    #@267
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@26a
    .line 252
    const/4 v4, 0x1

    #@26b
    return v4

    #@26c
    .line 256
    .end local v34    # "_result":[Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@26f
    move-object/from16 v0, p2

    #@271
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@274
    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@277
    move-result-object v20

    #@278
    .line 259
    .restart local v20    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@27a
    move-object/from16 v1, v20

    #@27c
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    #@27f
    move-result-object v32

    #@280
    .line 260
    .restart local v32    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@283
    .line 261
    move-object/from16 v0, p3

    #@285
    move-object/from16 v1, v32

    #@287
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@28a
    .line 262
    const/4 v4, 0x1

    #@28b
    return v4

    #@28c
    .line 266
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v32    # "_result":Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@28f
    move-object/from16 v0, p2

    #@291
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@294
    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@297
    move-result-object v20

    #@298
    .line 269
    .restart local v20    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@29a
    move-object/from16 v1, v20

    #@29c
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    #@29f
    move-result-object v31

    #@2a0
    .line 270
    .local v31, "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a3
    .line 271
    if-eqz v31, :cond_10

    #@2a5
    .line 272
    const/4 v4, 0x1

    #@2a6
    move-object/from16 v0, p3

    #@2a8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2ab
    .line 273
    const/4 v4, 0x1

    #@2ac
    move-object/from16 v0, v31

    #@2ae
    move-object/from16 v1, p3

    #@2b0
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@2b3
    .line 278
    :goto_10
    const/4 v4, 0x1

    #@2b4
    return v4

    #@2b5
    .line 276
    :cond_10
    const/4 v4, 0x0

    #@2b6
    move-object/from16 v0, p3

    #@2b8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2bb
    goto :goto_10

    #@2bc
    .line 282
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v31    # "_result":Landroid/content/Intent;
    :sswitch_15
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@2bf
    move-object/from16 v0, p2

    #@2c1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c4
    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2c7
    move-result-object v20

    #@2c8
    .line 285
    .restart local v20    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2ca
    move-object/from16 v1, v20

    #@2cc
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    #@2cf
    move-result-object v32

    #@2d0
    .line 286
    .restart local v32    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d3
    .line 287
    move-object/from16 v0, p3

    #@2d5
    move-object/from16 v1, v32

    #@2d7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2da
    .line 288
    const/4 v4, 0x1

    #@2db
    return v4

    #@2dc
    .line 292
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v32    # "_result":Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@2df
    move-object/from16 v0, p2

    #@2e1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e4
    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2e7
    move-result-object v20

    #@2e8
    .line 295
    .restart local v20    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2ea
    move-object/from16 v1, v20

    #@2ec
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    #@2ef
    move-result-object v31

    #@2f0
    .line 296
    .restart local v31    # "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f3
    .line 297
    if-eqz v31, :cond_11

    #@2f5
    .line 298
    const/4 v4, 0x1

    #@2f6
    move-object/from16 v0, p3

    #@2f8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2fb
    .line 299
    const/4 v4, 0x1

    #@2fc
    move-object/from16 v0, v31

    #@2fe
    move-object/from16 v1, p3

    #@300
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@303
    .line 304
    :goto_11
    const/4 v4, 0x1

    #@304
    return v4

    #@305
    .line 302
    :cond_11
    const/4 v4, 0x0

    #@306
    move-object/from16 v0, p3

    #@308
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@30b
    goto :goto_11

    #@30c
    .line 308
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v31    # "_result":Landroid/content/Intent;
    :sswitch_17
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@30f
    move-object/from16 v0, p2

    #@311
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@314
    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@317
    move-result-object v20

    #@318
    .line 311
    .restart local v20    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@31a
    move-object/from16 v1, v20

    #@31c
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;

    #@31f
    move-result-object v32

    #@320
    .line 312
    .restart local v32    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@323
    .line 313
    move-object/from16 v0, p3

    #@325
    move-object/from16 v1, v32

    #@327
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@32a
    .line 314
    const/4 v4, 0x1

    #@32b
    return v4

    #@32c
    .line 318
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v32    # "_result":Ljava/lang/String;
    :sswitch_18
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@32f
    move-object/from16 v0, p2

    #@331
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@334
    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@337
    move-result-object v20

    #@338
    .line 322
    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@33b
    move-result-object v27

    #@33c
    .line 323
    .restart local v27    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@33e
    move-object/from16 v1, v20

    #@340
    move-object/from16 v2, v27

    #@342
    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    #@345
    move-result-object v30

    #@346
    .line 324
    .local v30, "_result":Landroid/app/backup/IRestoreSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@349
    .line 325
    if-eqz v30, :cond_12

    #@34b
    invoke-interface/range {v30 .. v30}, Landroid/app/backup/IRestoreSession;->asBinder()Landroid/os/IBinder;

    #@34e
    move-result-object v4

    #@34f
    :goto_12
    move-object/from16 v0, p3

    #@351
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@354
    .line 326
    const/4 v4, 0x1

    #@355
    return v4

    #@356
    .line 325
    :cond_12
    const/4 v4, 0x0

    #@357
    goto :goto_12

    #@358
    .line 330
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":Ljava/lang/String;
    .end local v30    # "_result":Landroid/app/backup/IRestoreSession;
    :sswitch_19
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@35b
    move-object/from16 v0, p2

    #@35d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@360
    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@363
    move-result v15

    #@364
    .line 334
    .restart local v15    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@367
    move-result-wide v24

    #@368
    .line 335
    .local v24, "_arg1":J
    move-object/from16 v0, p0

    #@36a
    move-wide/from16 v1, v24

    #@36c
    invoke-virtual {v0, v15, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->opComplete(IJ)V

    #@36f
    .line 336
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@372
    .line 337
    const/4 v4, 0x1

    #@373
    return v4

    #@374
    .line 341
    .end local v15    # "_arg0":I
    .end local v24    # "_arg1":J
    :sswitch_1a
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@377
    move-object/from16 v0, p2

    #@379
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@37c
    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@37f
    move-result v15

    #@380
    .line 345
    .restart local v15    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@383
    move-result v4

    #@384
    if-eqz v4, :cond_13

    #@386
    const/4 v6, 0x1

    #@387
    .line 346
    .restart local v6    # "_arg1":Z
    :goto_13
    move-object/from16 v0, p0

    #@389
    invoke-virtual {v0, v15, v6}, Landroid/app/backup/IBackupManager$Stub;->setBackupServiceActive(IZ)V

    #@38c
    .line 347
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@38f
    .line 348
    const/4 v4, 0x1

    #@390
    return v4

    #@391
    .line 345
    .end local v6    # "_arg1":Z
    :cond_13
    const/4 v6, 0x0

    #@392
    .restart local v6    # "_arg1":Z
    goto :goto_13

    #@393
    .line 352
    .end local v6    # "_arg1":Z
    .end local v15    # "_arg0":I
    :sswitch_1b
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@396
    move-object/from16 v0, p2

    #@398
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@39b
    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@39e
    move-result v15

    #@39f
    .line 355
    .restart local v15    # "_arg0":I
    move-object/from16 v0, p0

    #@3a1
    invoke-virtual {v0, v15}, Landroid/app/backup/IBackupManager$Stub;->isBackupServiceActive(I)Z

    #@3a4
    move-result v33

    #@3a5
    .line 356
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a8
    .line 357
    if-eqz v33, :cond_14

    #@3aa
    const/4 v4, 0x1

    #@3ab
    :goto_14
    move-object/from16 v0, p3

    #@3ad
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3b0
    .line 358
    const/4 v4, 0x1

    #@3b1
    return v4

    #@3b2
    .line 357
    :cond_14
    const/4 v4, 0x0

    #@3b3
    goto :goto_14

    #@3b4
    .line 362
    .end local v15    # "_arg0":I
    .end local v33    # "_result":Z
    :sswitch_1c
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    #@3b7
    move-object/from16 v0, p2

    #@3b9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3bc
    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3bf
    move-result-object v20

    #@3c0
    .line 365
    .restart local v20    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3c2
    move-object/from16 v1, v20

    #@3c4
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getAvailableRestoreToken(Ljava/lang/String;)J

    #@3c7
    move-result-wide v28

    #@3c8
    .line 366
    .local v28, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3cb
    .line 367
    move-object/from16 v0, p3

    #@3cd
    move-wide/from16 v1, v28

    #@3cf
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@3d2
    .line 368
    const/4 v4, 0x1

    #@3d3
    return v4

    #@3d4
    .line 48
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
