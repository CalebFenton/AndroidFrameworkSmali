.class public abstract Lcom/android/internal/backup/IBackupTransport$Stub;
.super Landroid/os/Binder;
.source "IBackupTransport.java"

# interfaces
.implements Lcom/android/internal/backup/IBackupTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/backup/IBackupTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.backup.IBackupTransport"

.field static final TRANSACTION_abortFullRestore:I = 0x1a

.field static final TRANSACTION_cancelFullBackup:I = 0x16

.field static final TRANSACTION_checkFullBackupSize:I = 0x14

.field static final TRANSACTION_clearBackupData:I = 0xa

.field static final TRANSACTION_configurationIntent:I = 0x2

.field static final TRANSACTION_currentDestinationString:I = 0x3

.field static final TRANSACTION_dataManagementIntent:I = 0x4

.field static final TRANSACTION_dataManagementLabel:I = 0x5

.field static final TRANSACTION_finishBackup:I = 0xb

.field static final TRANSACTION_finishRestore:I = 0x11

.field static final TRANSACTION_getAvailableRestoreSets:I = 0xc

.field static final TRANSACTION_getBackupQuota:I = 0x18

.field static final TRANSACTION_getCurrentRestoreSet:I = 0xd

.field static final TRANSACTION_getNextFullRestoreDataChunk:I = 0x19

.field static final TRANSACTION_getRestoreData:I = 0x10

.field static final TRANSACTION_initializeDevice:I = 0x8

.field static final TRANSACTION_isAppEligibleForBackup:I = 0x17

.field static final TRANSACTION_name:I = 0x1

.field static final TRANSACTION_nextRestorePackage:I = 0xf

.field static final TRANSACTION_performBackup:I = 0x9

.field static final TRANSACTION_performFullBackup:I = 0x13

.field static final TRANSACTION_requestBackupTime:I = 0x7

.field static final TRANSACTION_requestFullBackupTime:I = 0x12

.field static final TRANSACTION_sendBackupData:I = 0x15

.field static final TRANSACTION_startRestore:I = 0xe

.field static final TRANSACTION_transportDirName:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "com.android.internal.backup.IBackupTransport"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/backup/IBackupTransport$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IBackupTransport;
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
    const-string/jumbo v1, "com.android.internal.backup.IBackupTransport"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/backup/IBackupTransport;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Lcom/android/internal/backup/IBackupTransport;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 23
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
    .line 345
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v22

    #@7
    return v22

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    #@b
    move-object/from16 v0, p3

    #@d
    move-object/from16 v1, v22

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 44
    const/16 v22, 0x1

    #@14
    return v22

    #@15
    .line 48
    :sswitch_1
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    #@18
    move-object/from16 v0, p2

    #@1a
    move-object/from16 v1, v22

    #@1c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f
    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->name()Ljava/lang/String;

    #@22
    move-result-object v19

    #@23
    .line 50
    .local v19, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@26
    .line 51
    move-object/from16 v0, p3

    #@28
    move-object/from16 v1, v19

    #@2a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2d
    .line 52
    const/16 v22, 0x1

    #@2f
    return v22

    #@30
    .line 56
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    #@33
    move-object/from16 v0, p2

    #@35
    move-object/from16 v1, v22

    #@37
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a
    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->configurationIntent()Landroid/content/Intent;

    #@3d
    move-result-object v18

    #@3e
    .line 58
    .local v18, "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@41
    .line 59
    if-eqz v18, :cond_0

    #@43
    .line 60
    const/16 v22, 0x1

    #@45
    move-object/from16 v0, p3

    #@47
    move/from16 v1, v22

    #@49
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4c
    .line 61
    const/16 v22, 0x1

    #@4e
    move-object/from16 v0, v18

    #@50
    move-object/from16 v1, p3

    #@52
    move/from16 v2, v22

    #@54
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@57
    .line 66
    :goto_0
    const/16 v22, 0x1

    #@59
    return v22

    #@5a
    .line 64
    :cond_0
    const/16 v22, 0x0

    #@5c
    move-object/from16 v0, p3

    #@5e
    move/from16 v1, v22

    #@60
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@63
    goto :goto_0

    #@64
    .line 70
    .end local v18    # "_result":Landroid/content/Intent;
    :sswitch_3
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    #@67
    move-object/from16 v0, p2

    #@69
    move-object/from16 v1, v22

    #@6b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6e
    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->currentDestinationString()Ljava/lang/String;

    #@71
    move-result-object v19

    #@72
    .line 72
    .restart local v19    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@75
    .line 73
    move-object/from16 v0, p3

    #@77
    move-object/from16 v1, v19

    #@79
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7c
    .line 74
    const/16 v22, 0x1

    #@7e
    return v22

    #@7f
    .line 78
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    #@82
    move-object/from16 v0, p2

    #@84
    move-object/from16 v1, v22

    #@86
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@89
    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->dataManagementIntent()Landroid/content/Intent;

    #@8c
    move-result-object v18

    #@8d
    .line 80
    .restart local v18    # "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@90
    .line 81
    if-eqz v18, :cond_1

    #@92
    .line 82
    const/16 v22, 0x1

    #@94
    move-object/from16 v0, p3

    #@96
    move/from16 v1, v22

    #@98
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@9b
    .line 83
    const/16 v22, 0x1

    #@9d
    move-object/from16 v0, v18

    #@9f
    move-object/from16 v1, p3

    #@a1
    move/from16 v2, v22

    #@a3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@a6
    .line 88
    :goto_1
    const/16 v22, 0x1

    #@a8
    return v22

    #@a9
    .line 86
    :cond_1
    const/16 v22, 0x0

    #@ab
    move-object/from16 v0, p3

    #@ad
    move/from16 v1, v22

    #@af
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@b2
    goto :goto_1

    #@b3
    .line 92
    .end local v18    # "_result":Landroid/content/Intent;
    :sswitch_5
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    #@b6
    move-object/from16 v0, p2

    #@b8
    move-object/from16 v1, v22

    #@ba
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bd
    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->dataManagementLabel()Ljava/lang/String;

    #@c0
    move-result-object v19

    #@c1
    .line 94
    .restart local v19    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c4
    .line 95
    move-object/from16 v0, p3

    #@c6
    move-object/from16 v1, v19

    #@c8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@cb
    .line 96
    const/16 v22, 0x1

    #@cd
    return v22

    #@ce
    .line 100
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    #@d1
    move-object/from16 v0, p2

    #@d3
    move-object/from16 v1, v22

    #@d5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d8
    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->transportDirName()Ljava/lang/String;

    #@db
    move-result-object v19

    #@dc
    .line 102
    .restart local v19    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@df
    .line 103
    move-object/from16 v0, p3

    #@e1
    move-object/from16 v1, v19

    #@e3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e6
    .line 104
    const/16 v22, 0x1

    #@e8
    return v22

    #@e9
    .line 108
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    #@ec
    move-object/from16 v0, p2

    #@ee
    move-object/from16 v1, v22

    #@f0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f3
    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->requestBackupTime()J

    #@f6
    move-result-wide v16

    #@f7
    .line 110
    .local v16, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fa
    .line 111
    move-object/from16 v0, p3

    #@fc
    move-wide/from16 v1, v16

    #@fe
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@101
    .line 112
    const/16 v22, 0x1

    #@103
    return v22

    #@104
    .line 116
    .end local v16    # "_result":J
    :sswitch_8
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    #@107
    move-object/from16 v0, p2

    #@109
    move-object/from16 v1, v22

    #@10b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10e
    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->initializeDevice()I

    #@111
    move-result v14

    #@112
    .line 118
    .local v14, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@115
    .line 119
    move-object/from16 v0, p3

    #@117
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@11a
    .line 120
    const/16 v22, 0x1

    #@11c
    return v22

    #@11d
    .line 124
    .end local v14    # "_result":I
    :sswitch_9
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    #@120
    move-object/from16 v0, p2

    #@122
    move-object/from16 v1, v22

    #@124
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@127
    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12a
    move-result v22

    #@12b
    if-eqz v22, :cond_2

    #@12d
    .line 127
    sget-object v22, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@12f
    move-object/from16 v0, v22

    #@131
    move-object/from16 v1, p2

    #@133
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@136
    move-result-object v5

    #@137
    check-cast v5, Landroid/content/pm/PackageInfo;

    #@139
    .line 133
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@13c
    move-result v22

    #@13d
    if-eqz v22, :cond_3

    #@13f
    .line 134
    sget-object v22, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@141
    move-object/from16 v0, v22

    #@143
    move-object/from16 v1, p2

    #@145
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@148
    move-result-object v10

    #@149
    check-cast v10, Landroid/os/ParcelFileDescriptor;

    #@14b
    .line 140
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14e
    move-result v13

    #@14f
    .line 141
    .local v13, "_arg2":I
    move-object/from16 v0, p0

    #@151
    invoke-virtual {v0, v5, v10, v13}, Lcom/android/internal/backup/IBackupTransport$Stub;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    #@154
    move-result v14

    #@155
    .line 142
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@158
    .line 143
    move-object/from16 v0, p3

    #@15a
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@15d
    .line 144
    const/16 v22, 0x1

    #@15f
    return v22

    #@160
    .line 130
    .end local v13    # "_arg2":I
    .end local v14    # "_result":I
    :cond_2
    const/4 v5, 0x0

    #@161
    .local v5, "_arg0":Landroid/content/pm/PackageInfo;
    goto :goto_2

    #@162
    .line 137
    .end local v5    # "_arg0":Landroid/content/pm/PackageInfo;
    :cond_3
    const/4 v10, 0x0

    #@163
    .local v10, "_arg1":Landroid/os/ParcelFileDescriptor;
    goto :goto_3

    #@164
    .line 148
    .end local v10    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :sswitch_a
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    #@167
    move-object/from16 v0, p2

    #@169
    move-object/from16 v1, v22

    #@16b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16e
    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@171
    move-result v22

    #@172
    if-eqz v22, :cond_4

    #@174
    .line 151
    sget-object v22, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@176
    move-object/from16 v0, v22

    #@178
    move-object/from16 v1, p2

    #@17a
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@17d
    move-result-object v5

    #@17e
    check-cast v5, Landroid/content/pm/PackageInfo;

    #@180
    .line 156
    :goto_4
    move-object/from16 v0, p0

    #@182
    invoke-virtual {v0, v5}, Lcom/android/internal/backup/IBackupTransport$Stub;->clearBackupData(Landroid/content/pm/PackageInfo;)I

    #@185
    move-result v14

    #@186
    .line 157
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@189
    .line 158
    move-object/from16 v0, p3

    #@18b
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@18e
    .line 159
    const/16 v22, 0x1

    #@190
    return v22

    #@191
    .line 154
    .end local v14    # "_result":I
    :cond_4
    const/4 v5, 0x0

    #@192
    .restart local v5    # "_arg0":Landroid/content/pm/PackageInfo;
    goto :goto_4

    #@193
    .line 163
    .end local v5    # "_arg0":Landroid/content/pm/PackageInfo;
    :sswitch_b
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    #@196
    move-object/from16 v0, p2

    #@198
    move-object/from16 v1, v22

    #@19a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19d
    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->finishBackup()I

    #@1a0
    move-result v14

    #@1a1
    .line 165
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a4
    .line 166
    move-object/from16 v0, p3

    #@1a6
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@1a9
    .line 167
    const/16 v22, 0x1

    #@1ab
    return v22

    #@1ac
    .line 171
    .end local v14    # "_result":I
    :sswitch_c
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    #@1af
    move-object/from16 v0, p2

    #@1b1
    move-object/from16 v1, v22

    #@1b3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b6
    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    #@1b9
    move-result-object v21

    #@1ba
    .line 173
    .local v21, "_result":[Landroid/app/backup/RestoreSet;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1bd
    .line 174
    const/16 v22, 0x1

    #@1bf
    move-object/from16 v0, p3

    #@1c1
    move-object/from16 v1, v21

    #@1c3
    move/from16 v2, v22

    #@1c5
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@1c8
    .line 175
    const/16 v22, 0x1

    #@1ca
    return v22

    #@1cb
    .line 179
    .end local v21    # "_result":[Landroid/app/backup/RestoreSet;
    :sswitch_d
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    #@1ce
    move-object/from16 v0, p2

    #@1d0
    move-object/from16 v1, v22

    #@1d2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d5
    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->getCurrentRestoreSet()J

    #@1d8
    move-result-wide v16

    #@1d9
    .line 181
    .restart local v16    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1dc
    .line 182
    move-object/from16 v0, p3

    #@1de
    move-wide/from16 v1, v16

    #@1e0
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@1e3
    .line 183
    const/16 v22, 0x1

    #@1e5
    return v22

    #@1e6
    .line 187
    .end local v16    # "_result":J
    :sswitch_e
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    #@1e9
    move-object/from16 v0, p2

    #@1eb
    move-object/from16 v1, v22

    #@1ed
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f0
    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@1f3
    move-result-wide v6

    #@1f4
    .line 191
    .local v6, "_arg0":J
    sget-object v22, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f6
    move-object/from16 v0, p2

    #@1f8
    move-object/from16 v1, v22

    #@1fa
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@1fd
    move-result-object v12

    #@1fe
    check-cast v12, [Landroid/content/pm/PackageInfo;

    #@200
    .line 192
    .local v12, "_arg1":[Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    #@202
    invoke-virtual {v0, v6, v7, v12}, Lcom/android/internal/backup/IBackupTransport$Stub;->startRestore(J[Landroid/content/pm/PackageInfo;)I

    #@205
    move-result v14

    #@206
    .line 193
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@209
    .line 194
    move-object/from16 v0, p3

    #@20b
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@20e
    .line 195
    const/16 v22, 0x1

    #@210
    return v22

    #@211
    .line 199
    .end local v6    # "_arg0":J
    .end local v12    # "_arg1":[Landroid/content/pm/PackageInfo;
    .end local v14    # "_result":I
    :sswitch_f
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    #@214
    move-object/from16 v0, p2

    #@216
    move-object/from16 v1, v22

    #@218
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21b
    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->nextRestorePackage()Landroid/app/backup/RestoreDescription;

    #@21e
    move-result-object v15

    #@21f
    .line 201
    .local v15, "_result":Landroid/app/backup/RestoreDescription;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@222
    .line 202
    if-eqz v15, :cond_5

    #@224
    .line 203
    const/16 v22, 0x1

    #@226
    move-object/from16 v0, p3

    #@228
    move/from16 v1, v22

    #@22a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@22d
    .line 204
    const/16 v22, 0x1

    #@22f
    move-object/from16 v0, p3

    #@231
    move/from16 v1, v22

    #@233
    invoke-virtual {v15, v0, v1}, Landroid/app/backup/RestoreDescription;->writeToParcel(Landroid/os/Parcel;I)V

    #@236
    .line 209
    :goto_5
    const/16 v22, 0x1

    #@238
    return v22

    #@239
    .line 207
    :cond_5
    const/16 v22, 0x0

    #@23b
    move-object/from16 v0, p3

    #@23d
    move/from16 v1, v22

    #@23f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@242
    goto :goto_5

    #@243
    .line 213
    .end local v15    # "_result":Landroid/app/backup/RestoreDescription;
    :sswitch_10
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    #@246
    move-object/from16 v0, p2

    #@248
    move-object/from16 v1, v22

    #@24a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24d
    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@250
    move-result v22

    #@251
    if-eqz v22, :cond_6

    #@253
    .line 216
    sget-object v22, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@255
    move-object/from16 v0, v22

    #@257
    move-object/from16 v1, p2

    #@259
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@25c
    move-result-object v8

    #@25d
    check-cast v8, Landroid/os/ParcelFileDescriptor;

    #@25f
    .line 221
    :goto_6
    move-object/from16 v0, p0

    #@261
    invoke-virtual {v0, v8}, Lcom/android/internal/backup/IBackupTransport$Stub;->getRestoreData(Landroid/os/ParcelFileDescriptor;)I

    #@264
    move-result v14

    #@265
    .line 222
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@268
    .line 223
    move-object/from16 v0, p3

    #@26a
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@26d
    .line 224
    const/16 v22, 0x1

    #@26f
    return v22

    #@270
    .line 219
    .end local v14    # "_result":I
    :cond_6
    const/4 v8, 0x0

    #@271
    .local v8, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_6

    #@272
    .line 228
    .end local v8    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_11
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    #@275
    move-object/from16 v0, p2

    #@277
    move-object/from16 v1, v22

    #@279
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@27c
    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->finishRestore()V

    #@27f
    .line 230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@282
    .line 231
    const/16 v22, 0x1

    #@284
    return v22

    #@285
    .line 235
    :sswitch_12
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    #@288
    move-object/from16 v0, p2

    #@28a
    move-object/from16 v1, v22

    #@28c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28f
    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->requestFullBackupTime()J

    #@292
    move-result-wide v16

    #@293
    .line 237
    .restart local v16    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@296
    .line 238
    move-object/from16 v0, p3

    #@298
    move-wide/from16 v1, v16

    #@29a
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@29d
    .line 239
    const/16 v22, 0x1

    #@29f
    return v22

    #@2a0
    .line 243
    .end local v16    # "_result":J
    :sswitch_13
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    #@2a3
    move-object/from16 v0, p2

    #@2a5
    move-object/from16 v1, v22

    #@2a7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2aa
    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ad
    move-result v22

    #@2ae
    if-eqz v22, :cond_7

    #@2b0
    .line 246
    sget-object v22, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2b2
    move-object/from16 v0, v22

    #@2b4
    move-object/from16 v1, p2

    #@2b6
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2b9
    move-result-object v5

    #@2ba
    check-cast v5, Landroid/content/pm/PackageInfo;

    #@2bc
    .line 252
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2bf
    move-result v22

    #@2c0
    if-eqz v22, :cond_8

    #@2c2
    .line 253
    sget-object v22, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2c4
    move-object/from16 v0, v22

    #@2c6
    move-object/from16 v1, p2

    #@2c8
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2cb
    move-result-object v10

    #@2cc
    check-cast v10, Landroid/os/ParcelFileDescriptor;

    #@2ce
    .line 259
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d1
    move-result v13

    #@2d2
    .line 260
    .restart local v13    # "_arg2":I
    move-object/from16 v0, p0

    #@2d4
    invoke-virtual {v0, v5, v10, v13}, Lcom/android/internal/backup/IBackupTransport$Stub;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    #@2d7
    move-result v14

    #@2d8
    .line 261
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2db
    .line 262
    move-object/from16 v0, p3

    #@2dd
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@2e0
    .line 263
    const/16 v22, 0x1

    #@2e2
    return v22

    #@2e3
    .line 249
    .end local v13    # "_arg2":I
    .end local v14    # "_result":I
    :cond_7
    const/4 v5, 0x0

    #@2e4
    .restart local v5    # "_arg0":Landroid/content/pm/PackageInfo;
    goto :goto_7

    #@2e5
    .line 256
    .end local v5    # "_arg0":Landroid/content/pm/PackageInfo;
    :cond_8
    const/4 v10, 0x0

    #@2e6
    .restart local v10    # "_arg1":Landroid/os/ParcelFileDescriptor;
    goto :goto_8

    #@2e7
    .line 267
    .end local v10    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :sswitch_14
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    #@2ea
    move-object/from16 v0, p2

    #@2ec
    move-object/from16 v1, v22

    #@2ee
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f1
    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@2f4
    move-result-wide v6

    #@2f5
    .line 270
    .restart local v6    # "_arg0":J
    move-object/from16 v0, p0

    #@2f7
    invoke-virtual {v0, v6, v7}, Lcom/android/internal/backup/IBackupTransport$Stub;->checkFullBackupSize(J)I

    #@2fa
    move-result v14

    #@2fb
    .line 271
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2fe
    .line 272
    move-object/from16 v0, p3

    #@300
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@303
    .line 273
    const/16 v22, 0x1

    #@305
    return v22

    #@306
    .line 277
    .end local v6    # "_arg0":J
    .end local v14    # "_result":I
    :sswitch_15
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    #@309
    move-object/from16 v0, p2

    #@30b
    move-object/from16 v1, v22

    #@30d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@310
    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@313
    move-result v4

    #@314
    .line 280
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    #@316
    invoke-virtual {v0, v4}, Lcom/android/internal/backup/IBackupTransport$Stub;->sendBackupData(I)I

    #@319
    move-result v14

    #@31a
    .line 281
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@31d
    .line 282
    move-object/from16 v0, p3

    #@31f
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@322
    .line 283
    const/16 v22, 0x1

    #@324
    return v22

    #@325
    .line 287
    .end local v4    # "_arg0":I
    .end local v14    # "_result":I
    :sswitch_16
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    #@328
    move-object/from16 v0, p2

    #@32a
    move-object/from16 v1, v22

    #@32c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32f
    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->cancelFullBackup()V

    #@332
    .line 289
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@335
    .line 290
    const/16 v22, 0x1

    #@337
    return v22

    #@338
    .line 294
    :sswitch_17
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    #@33b
    move-object/from16 v0, p2

    #@33d
    move-object/from16 v1, v22

    #@33f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@342
    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@345
    move-result v22

    #@346
    if-eqz v22, :cond_9

    #@348
    .line 297
    sget-object v22, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@34a
    move-object/from16 v0, v22

    #@34c
    move-object/from16 v1, p2

    #@34e
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@351
    move-result-object v5

    #@352
    check-cast v5, Landroid/content/pm/PackageInfo;

    #@354
    .line 303
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@357
    move-result v22

    #@358
    if-eqz v22, :cond_a

    #@35a
    const/4 v11, 0x1

    #@35b
    .line 304
    .local v11, "_arg1":Z
    :goto_a
    move-object/from16 v0, p0

    #@35d
    invoke-virtual {v0, v5, v11}, Lcom/android/internal/backup/IBackupTransport$Stub;->isAppEligibleForBackup(Landroid/content/pm/PackageInfo;Z)Z

    #@360
    move-result v20

    #@361
    .line 305
    .local v20, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@364
    .line 306
    if-eqz v20, :cond_b

    #@366
    const/16 v22, 0x1

    #@368
    :goto_b
    move-object/from16 v0, p3

    #@36a
    move/from16 v1, v22

    #@36c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@36f
    .line 307
    const/16 v22, 0x1

    #@371
    return v22

    #@372
    .line 300
    .end local v11    # "_arg1":Z
    .end local v20    # "_result":Z
    :cond_9
    const/4 v5, 0x0

    #@373
    .restart local v5    # "_arg0":Landroid/content/pm/PackageInfo;
    goto :goto_9

    #@374
    .line 303
    .end local v5    # "_arg0":Landroid/content/pm/PackageInfo;
    :cond_a
    const/4 v11, 0x0

    #@375
    goto :goto_a

    #@376
    .line 306
    .restart local v11    # "_arg1":Z
    .restart local v20    # "_result":Z
    :cond_b
    const/16 v22, 0x0

    #@378
    goto :goto_b

    #@379
    .line 311
    .end local v11    # "_arg1":Z
    .end local v20    # "_result":Z
    :sswitch_18
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    #@37c
    move-object/from16 v0, p2

    #@37e
    move-object/from16 v1, v22

    #@380
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@383
    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@386
    move-result-object v9

    #@387
    .line 315
    .local v9, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@38a
    move-result v22

    #@38b
    if-eqz v22, :cond_c

    #@38d
    const/4 v11, 0x1

    #@38e
    .line 316
    .restart local v11    # "_arg1":Z
    :goto_c
    move-object/from16 v0, p0

    #@390
    invoke-virtual {v0, v9, v11}, Lcom/android/internal/backup/IBackupTransport$Stub;->getBackupQuota(Ljava/lang/String;Z)J

    #@393
    move-result-wide v16

    #@394
    .line 317
    .restart local v16    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@397
    .line 318
    move-object/from16 v0, p3

    #@399
    move-wide/from16 v1, v16

    #@39b
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@39e
    .line 319
    const/16 v22, 0x1

    #@3a0
    return v22

    #@3a1
    .line 315
    .end local v11    # "_arg1":Z
    .end local v16    # "_result":J
    :cond_c
    const/4 v11, 0x0

    #@3a2
    goto :goto_c

    #@3a3
    .line 323
    .end local v9    # "_arg0":Ljava/lang/String;
    :sswitch_19
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    #@3a6
    move-object/from16 v0, p2

    #@3a8
    move-object/from16 v1, v22

    #@3aa
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3ad
    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3b0
    move-result v22

    #@3b1
    if-eqz v22, :cond_d

    #@3b3
    .line 326
    sget-object v22, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3b5
    move-object/from16 v0, v22

    #@3b7
    move-object/from16 v1, p2

    #@3b9
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3bc
    move-result-object v8

    #@3bd
    check-cast v8, Landroid/os/ParcelFileDescriptor;

    #@3bf
    .line 331
    :goto_d
    move-object/from16 v0, p0

    #@3c1
    invoke-virtual {v0, v8}, Lcom/android/internal/backup/IBackupTransport$Stub;->getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I

    #@3c4
    move-result v14

    #@3c5
    .line 332
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c8
    .line 333
    move-object/from16 v0, p3

    #@3ca
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@3cd
    .line 334
    const/16 v22, 0x1

    #@3cf
    return v22

    #@3d0
    .line 329
    .end local v14    # "_result":I
    :cond_d
    const/4 v8, 0x0

    #@3d1
    .restart local v8    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_d

    #@3d2
    .line 338
    .end local v8    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_1a
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    #@3d5
    move-object/from16 v0, p2

    #@3d7
    move-object/from16 v1, v22

    #@3d9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3dc
    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->abortFullRestore()I

    #@3df
    move-result v14

    #@3e0
    .line 340
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e3
    .line 341
    move-object/from16 v0, p3

    #@3e5
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@3e8
    .line 342
    const/16 v22, 0x1

    #@3ea
    return v22

    #@3eb
    .line 39
    nop

    #@3ec
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
