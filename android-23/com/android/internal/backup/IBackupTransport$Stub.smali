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

.field static final TRANSACTION_abortFullRestore:I = 0x18

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

.field static final TRANSACTION_getCurrentRestoreSet:I = 0xd

.field static final TRANSACTION_getNextFullRestoreDataChunk:I = 0x17

.field static final TRANSACTION_getRestoreData:I = 0x10

.field static final TRANSACTION_initializeDevice:I = 0x8

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
    .locals 17
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
    .line 312
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v16

    #@7
    return v16

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v16, "com.android.internal.backup.IBackupTransport"

    #@b
    move-object/from16 v0, p3

    #@d
    move-object/from16 v1, v16

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 44
    const/16 v16, 0x1

    #@14
    return v16

    #@15
    .line 48
    :sswitch_1
    const-string/jumbo v16, "com.android.internal.backup.IBackupTransport"

    #@18
    move-object/from16 v0, p2

    #@1a
    move-object/from16 v1, v16

    #@1c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f
    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->name()Ljava/lang/String;

    #@22
    move-result-object v14

    #@23
    .line 50
    .local v14, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@26
    .line 51
    move-object/from16 v0, p3

    #@28
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2b
    .line 52
    const/16 v16, 0x1

    #@2d
    return v16

    #@2e
    .line 56
    .end local v14    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v16, "com.android.internal.backup.IBackupTransport"

    #@31
    move-object/from16 v0, p2

    #@33
    move-object/from16 v1, v16

    #@35
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@38
    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->configurationIntent()Landroid/content/Intent;

    #@3b
    move-result-object v13

    #@3c
    .line 58
    .local v13, "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3f
    .line 59
    if-eqz v13, :cond_0

    #@41
    .line 60
    const/16 v16, 0x1

    #@43
    move-object/from16 v0, p3

    #@45
    move/from16 v1, v16

    #@47
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4a
    .line 61
    const/16 v16, 0x1

    #@4c
    move-object/from16 v0, p3

    #@4e
    move/from16 v1, v16

    #@50
    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@53
    .line 66
    :goto_0
    const/16 v16, 0x1

    #@55
    return v16

    #@56
    .line 64
    :cond_0
    const/16 v16, 0x0

    #@58
    move-object/from16 v0, p3

    #@5a
    move/from16 v1, v16

    #@5c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5f
    goto :goto_0

    #@60
    .line 70
    .end local v13    # "_result":Landroid/content/Intent;
    :sswitch_3
    const-string/jumbo v16, "com.android.internal.backup.IBackupTransport"

    #@63
    move-object/from16 v0, p2

    #@65
    move-object/from16 v1, v16

    #@67
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6a
    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->currentDestinationString()Ljava/lang/String;

    #@6d
    move-result-object v14

    #@6e
    .line 72
    .restart local v14    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@71
    .line 73
    move-object/from16 v0, p3

    #@73
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@76
    .line 74
    const/16 v16, 0x1

    #@78
    return v16

    #@79
    .line 78
    .end local v14    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v16, "com.android.internal.backup.IBackupTransport"

    #@7c
    move-object/from16 v0, p2

    #@7e
    move-object/from16 v1, v16

    #@80
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@83
    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->dataManagementIntent()Landroid/content/Intent;

    #@86
    move-result-object v13

    #@87
    .line 80
    .restart local v13    # "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8a
    .line 81
    if-eqz v13, :cond_1

    #@8c
    .line 82
    const/16 v16, 0x1

    #@8e
    move-object/from16 v0, p3

    #@90
    move/from16 v1, v16

    #@92
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@95
    .line 83
    const/16 v16, 0x1

    #@97
    move-object/from16 v0, p3

    #@99
    move/from16 v1, v16

    #@9b
    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@9e
    .line 88
    :goto_1
    const/16 v16, 0x1

    #@a0
    return v16

    #@a1
    .line 86
    :cond_1
    const/16 v16, 0x0

    #@a3
    move-object/from16 v0, p3

    #@a5
    move/from16 v1, v16

    #@a7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@aa
    goto :goto_1

    #@ab
    .line 92
    .end local v13    # "_result":Landroid/content/Intent;
    :sswitch_5
    const-string/jumbo v16, "com.android.internal.backup.IBackupTransport"

    #@ae
    move-object/from16 v0, p2

    #@b0
    move-object/from16 v1, v16

    #@b2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b5
    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->dataManagementLabel()Ljava/lang/String;

    #@b8
    move-result-object v14

    #@b9
    .line 94
    .restart local v14    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@bc
    .line 95
    move-object/from16 v0, p3

    #@be
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c1
    .line 96
    const/16 v16, 0x1

    #@c3
    return v16

    #@c4
    .line 100
    .end local v14    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v16, "com.android.internal.backup.IBackupTransport"

    #@c7
    move-object/from16 v0, p2

    #@c9
    move-object/from16 v1, v16

    #@cb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ce
    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->transportDirName()Ljava/lang/String;

    #@d1
    move-result-object v14

    #@d2
    .line 102
    .restart local v14    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d5
    .line 103
    move-object/from16 v0, p3

    #@d7
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@da
    .line 104
    const/16 v16, 0x1

    #@dc
    return v16

    #@dd
    .line 108
    .end local v14    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v16, "com.android.internal.backup.IBackupTransport"

    #@e0
    move-object/from16 v0, p2

    #@e2
    move-object/from16 v1, v16

    #@e4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e7
    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->requestBackupTime()J

    #@ea
    move-result-wide v10

    #@eb
    .line 110
    .local v10, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ee
    .line 111
    move-object/from16 v0, p3

    #@f0
    invoke-virtual {v0, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    #@f3
    .line 112
    const/16 v16, 0x1

    #@f5
    return v16

    #@f6
    .line 116
    .end local v10    # "_result":J
    :sswitch_8
    const-string/jumbo v16, "com.android.internal.backup.IBackupTransport"

    #@f9
    move-object/from16 v0, p2

    #@fb
    move-object/from16 v1, v16

    #@fd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@100
    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->initializeDevice()I

    #@103
    move-result v9

    #@104
    .line 118
    .local v9, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@107
    .line 119
    move-object/from16 v0, p3

    #@109
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@10c
    .line 120
    const/16 v16, 0x1

    #@10e
    return v16

    #@10f
    .line 124
    .end local v9    # "_result":I
    :sswitch_9
    const-string/jumbo v16, "com.android.internal.backup.IBackupTransport"

    #@112
    move-object/from16 v0, p2

    #@114
    move-object/from16 v1, v16

    #@116
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@119
    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11c
    move-result v16

    #@11d
    if-eqz v16, :cond_2

    #@11f
    .line 127
    sget-object v16, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@121
    move-object/from16 v0, v16

    #@123
    move-object/from16 v1, p2

    #@125
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@128
    move-result-object v3

    #@129
    check-cast v3, Landroid/content/pm/PackageInfo;

    #@12b
    .line 133
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12e
    move-result v16

    #@12f
    if-eqz v16, :cond_3

    #@131
    .line 134
    sget-object v16, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@133
    move-object/from16 v0, v16

    #@135
    move-object/from16 v1, p2

    #@137
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@13a
    move-result-object v7

    #@13b
    check-cast v7, Landroid/os/ParcelFileDescriptor;

    #@13d
    .line 139
    :goto_3
    move-object/from16 v0, p0

    #@13f
    invoke-virtual {v0, v3, v7}, Lcom/android/internal/backup/IBackupTransport$Stub;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I

    #@142
    move-result v9

    #@143
    .line 140
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@146
    .line 141
    move-object/from16 v0, p3

    #@148
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@14b
    .line 142
    const/16 v16, 0x1

    #@14d
    return v16

    #@14e
    .line 130
    .end local v9    # "_result":I
    :cond_2
    const/4 v3, 0x0

    #@14f
    .local v3, "_arg0":Landroid/content/pm/PackageInfo;
    goto :goto_2

    #@150
    .line 137
    .end local v3    # "_arg0":Landroid/content/pm/PackageInfo;
    :cond_3
    const/4 v7, 0x0

    #@151
    .local v7, "_arg1":Landroid/os/ParcelFileDescriptor;
    goto :goto_3

    #@152
    .line 146
    .end local v7    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :sswitch_a
    const-string/jumbo v16, "com.android.internal.backup.IBackupTransport"

    #@155
    move-object/from16 v0, p2

    #@157
    move-object/from16 v1, v16

    #@159
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15c
    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15f
    move-result v16

    #@160
    if-eqz v16, :cond_4

    #@162
    .line 149
    sget-object v16, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@164
    move-object/from16 v0, v16

    #@166
    move-object/from16 v1, p2

    #@168
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@16b
    move-result-object v3

    #@16c
    check-cast v3, Landroid/content/pm/PackageInfo;

    #@16e
    .line 154
    :goto_4
    move-object/from16 v0, p0

    #@170
    invoke-virtual {v0, v3}, Lcom/android/internal/backup/IBackupTransport$Stub;->clearBackupData(Landroid/content/pm/PackageInfo;)I

    #@173
    move-result v9

    #@174
    .line 155
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@177
    .line 156
    move-object/from16 v0, p3

    #@179
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@17c
    .line 157
    const/16 v16, 0x1

    #@17e
    return v16

    #@17f
    .line 152
    .end local v9    # "_result":I
    :cond_4
    const/4 v3, 0x0

    #@180
    .restart local v3    # "_arg0":Landroid/content/pm/PackageInfo;
    goto :goto_4

    #@181
    .line 161
    .end local v3    # "_arg0":Landroid/content/pm/PackageInfo;
    :sswitch_b
    const-string/jumbo v16, "com.android.internal.backup.IBackupTransport"

    #@184
    move-object/from16 v0, p2

    #@186
    move-object/from16 v1, v16

    #@188
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18b
    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->finishBackup()I

    #@18e
    move-result v9

    #@18f
    .line 163
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@192
    .line 164
    move-object/from16 v0, p3

    #@194
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@197
    .line 165
    const/16 v16, 0x1

    #@199
    return v16

    #@19a
    .line 169
    .end local v9    # "_result":I
    :sswitch_c
    const-string/jumbo v16, "com.android.internal.backup.IBackupTransport"

    #@19d
    move-object/from16 v0, p2

    #@19f
    move-object/from16 v1, v16

    #@1a1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a4
    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    #@1a7
    move-result-object v15

    #@1a8
    .line 171
    .local v15, "_result":[Landroid/app/backup/RestoreSet;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ab
    .line 172
    const/16 v16, 0x1

    #@1ad
    move-object/from16 v0, p3

    #@1af
    move/from16 v1, v16

    #@1b1
    invoke-virtual {v0, v15, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@1b4
    .line 173
    const/16 v16, 0x1

    #@1b6
    return v16

    #@1b7
    .line 177
    .end local v15    # "_result":[Landroid/app/backup/RestoreSet;
    :sswitch_d
    const-string/jumbo v16, "com.android.internal.backup.IBackupTransport"

    #@1ba
    move-object/from16 v0, p2

    #@1bc
    move-object/from16 v1, v16

    #@1be
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c1
    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->getCurrentRestoreSet()J

    #@1c4
    move-result-wide v10

    #@1c5
    .line 179
    .restart local v10    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c8
    .line 180
    move-object/from16 v0, p3

    #@1ca
    invoke-virtual {v0, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    #@1cd
    .line 181
    const/16 v16, 0x1

    #@1cf
    return v16

    #@1d0
    .line 185
    .end local v10    # "_result":J
    :sswitch_e
    const-string/jumbo v16, "com.android.internal.backup.IBackupTransport"

    #@1d3
    move-object/from16 v0, p2

    #@1d5
    move-object/from16 v1, v16

    #@1d7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1da
    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@1dd
    move-result-wide v4

    #@1de
    .line 189
    .local v4, "_arg0":J
    sget-object v16, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e0
    move-object/from16 v0, p2

    #@1e2
    move-object/from16 v1, v16

    #@1e4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@1e7
    move-result-object v8

    #@1e8
    check-cast v8, [Landroid/content/pm/PackageInfo;

    #@1ea
    .line 190
    .local v8, "_arg1":[Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    #@1ec
    invoke-virtual {v0, v4, v5, v8}, Lcom/android/internal/backup/IBackupTransport$Stub;->startRestore(J[Landroid/content/pm/PackageInfo;)I

    #@1ef
    move-result v9

    #@1f0
    .line 191
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f3
    .line 192
    move-object/from16 v0, p3

    #@1f5
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@1f8
    .line 193
    const/16 v16, 0x1

    #@1fa
    return v16

    #@1fb
    .line 197
    .end local v4    # "_arg0":J
    .end local v8    # "_arg1":[Landroid/content/pm/PackageInfo;
    .end local v9    # "_result":I
    :sswitch_f
    const-string/jumbo v16, "com.android.internal.backup.IBackupTransport"

    #@1fe
    move-object/from16 v0, p2

    #@200
    move-object/from16 v1, v16

    #@202
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@205
    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->nextRestorePackage()Landroid/app/backup/RestoreDescription;

    #@208
    move-result-object v12

    #@209
    .line 199
    .local v12, "_result":Landroid/app/backup/RestoreDescription;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@20c
    .line 200
    if-eqz v12, :cond_5

    #@20e
    .line 201
    const/16 v16, 0x1

    #@210
    move-object/from16 v0, p3

    #@212
    move/from16 v1, v16

    #@214
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@217
    .line 202
    const/16 v16, 0x1

    #@219
    move-object/from16 v0, p3

    #@21b
    move/from16 v1, v16

    #@21d
    invoke-virtual {v12, v0, v1}, Landroid/app/backup/RestoreDescription;->writeToParcel(Landroid/os/Parcel;I)V

    #@220
    .line 207
    :goto_5
    const/16 v16, 0x1

    #@222
    return v16

    #@223
    .line 205
    :cond_5
    const/16 v16, 0x0

    #@225
    move-object/from16 v0, p3

    #@227
    move/from16 v1, v16

    #@229
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@22c
    goto :goto_5

    #@22d
    .line 211
    .end local v12    # "_result":Landroid/app/backup/RestoreDescription;
    :sswitch_10
    const-string/jumbo v16, "com.android.internal.backup.IBackupTransport"

    #@230
    move-object/from16 v0, p2

    #@232
    move-object/from16 v1, v16

    #@234
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@237
    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@23a
    move-result v16

    #@23b
    if-eqz v16, :cond_6

    #@23d
    .line 214
    sget-object v16, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23f
    move-object/from16 v0, v16

    #@241
    move-object/from16 v1, p2

    #@243
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@246
    move-result-object v6

    #@247
    check-cast v6, Landroid/os/ParcelFileDescriptor;

    #@249
    .line 219
    :goto_6
    move-object/from16 v0, p0

    #@24b
    invoke-virtual {v0, v6}, Lcom/android/internal/backup/IBackupTransport$Stub;->getRestoreData(Landroid/os/ParcelFileDescriptor;)I

    #@24e
    move-result v9

    #@24f
    .line 220
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@252
    .line 221
    move-object/from16 v0, p3

    #@254
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@257
    .line 222
    const/16 v16, 0x1

    #@259
    return v16

    #@25a
    .line 217
    .end local v9    # "_result":I
    :cond_6
    const/4 v6, 0x0

    #@25b
    .local v6, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_6

    #@25c
    .line 226
    .end local v6    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_11
    const-string/jumbo v16, "com.android.internal.backup.IBackupTransport"

    #@25f
    move-object/from16 v0, p2

    #@261
    move-object/from16 v1, v16

    #@263
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@266
    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->finishRestore()V

    #@269
    .line 228
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@26c
    .line 229
    const/16 v16, 0x1

    #@26e
    return v16

    #@26f
    .line 233
    :sswitch_12
    const-string/jumbo v16, "com.android.internal.backup.IBackupTransport"

    #@272
    move-object/from16 v0, p2

    #@274
    move-object/from16 v1, v16

    #@276
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@279
    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->requestFullBackupTime()J

    #@27c
    move-result-wide v10

    #@27d
    .line 235
    .restart local v10    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@280
    .line 236
    move-object/from16 v0, p3

    #@282
    invoke-virtual {v0, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    #@285
    .line 237
    const/16 v16, 0x1

    #@287
    return v16

    #@288
    .line 241
    .end local v10    # "_result":J
    :sswitch_13
    const-string/jumbo v16, "com.android.internal.backup.IBackupTransport"

    #@28b
    move-object/from16 v0, p2

    #@28d
    move-object/from16 v1, v16

    #@28f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@292
    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@295
    move-result v16

    #@296
    if-eqz v16, :cond_7

    #@298
    .line 244
    sget-object v16, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@29a
    move-object/from16 v0, v16

    #@29c
    move-object/from16 v1, p2

    #@29e
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2a1
    move-result-object v3

    #@2a2
    check-cast v3, Landroid/content/pm/PackageInfo;

    #@2a4
    .line 250
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a7
    move-result v16

    #@2a8
    if-eqz v16, :cond_8

    #@2aa
    .line 251
    sget-object v16, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2ac
    move-object/from16 v0, v16

    #@2ae
    move-object/from16 v1, p2

    #@2b0
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2b3
    move-result-object v7

    #@2b4
    check-cast v7, Landroid/os/ParcelFileDescriptor;

    #@2b6
    .line 256
    :goto_8
    move-object/from16 v0, p0

    #@2b8
    invoke-virtual {v0, v3, v7}, Lcom/android/internal/backup/IBackupTransport$Stub;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I

    #@2bb
    move-result v9

    #@2bc
    .line 257
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2bf
    .line 258
    move-object/from16 v0, p3

    #@2c1
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@2c4
    .line 259
    const/16 v16, 0x1

    #@2c6
    return v16

    #@2c7
    .line 247
    .end local v9    # "_result":I
    :cond_7
    const/4 v3, 0x0

    #@2c8
    .restart local v3    # "_arg0":Landroid/content/pm/PackageInfo;
    goto :goto_7

    #@2c9
    .line 254
    .end local v3    # "_arg0":Landroid/content/pm/PackageInfo;
    :cond_8
    const/4 v7, 0x0

    #@2ca
    .restart local v7    # "_arg1":Landroid/os/ParcelFileDescriptor;
    goto :goto_8

    #@2cb
    .line 263
    .end local v7    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :sswitch_14
    const-string/jumbo v16, "com.android.internal.backup.IBackupTransport"

    #@2ce
    move-object/from16 v0, p2

    #@2d0
    move-object/from16 v1, v16

    #@2d2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d5
    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@2d8
    move-result-wide v4

    #@2d9
    .line 266
    .restart local v4    # "_arg0":J
    move-object/from16 v0, p0

    #@2db
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/backup/IBackupTransport$Stub;->checkFullBackupSize(J)I

    #@2de
    move-result v9

    #@2df
    .line 267
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e2
    .line 268
    move-object/from16 v0, p3

    #@2e4
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@2e7
    .line 269
    const/16 v16, 0x1

    #@2e9
    return v16

    #@2ea
    .line 273
    .end local v4    # "_arg0":J
    .end local v9    # "_result":I
    :sswitch_15
    const-string/jumbo v16, "com.android.internal.backup.IBackupTransport"

    #@2ed
    move-object/from16 v0, p2

    #@2ef
    move-object/from16 v1, v16

    #@2f1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f4
    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2f7
    move-result v2

    #@2f8
    .line 276
    .local v2, "_arg0":I
    move-object/from16 v0, p0

    #@2fa
    invoke-virtual {v0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->sendBackupData(I)I

    #@2fd
    move-result v9

    #@2fe
    .line 277
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@301
    .line 278
    move-object/from16 v0, p3

    #@303
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@306
    .line 279
    const/16 v16, 0x1

    #@308
    return v16

    #@309
    .line 283
    .end local v2    # "_arg0":I
    .end local v9    # "_result":I
    :sswitch_16
    const-string/jumbo v16, "com.android.internal.backup.IBackupTransport"

    #@30c
    move-object/from16 v0, p2

    #@30e
    move-object/from16 v1, v16

    #@310
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@313
    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->cancelFullBackup()V

    #@316
    .line 285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@319
    .line 286
    const/16 v16, 0x1

    #@31b
    return v16

    #@31c
    .line 290
    :sswitch_17
    const-string/jumbo v16, "com.android.internal.backup.IBackupTransport"

    #@31f
    move-object/from16 v0, p2

    #@321
    move-object/from16 v1, v16

    #@323
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@326
    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@329
    move-result v16

    #@32a
    if-eqz v16, :cond_9

    #@32c
    .line 293
    sget-object v16, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@32e
    move-object/from16 v0, v16

    #@330
    move-object/from16 v1, p2

    #@332
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@335
    move-result-object v6

    #@336
    check-cast v6, Landroid/os/ParcelFileDescriptor;

    #@338
    .line 298
    :goto_9
    move-object/from16 v0, p0

    #@33a
    invoke-virtual {v0, v6}, Lcom/android/internal/backup/IBackupTransport$Stub;->getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I

    #@33d
    move-result v9

    #@33e
    .line 299
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@341
    .line 300
    move-object/from16 v0, p3

    #@343
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@346
    .line 301
    const/16 v16, 0x1

    #@348
    return v16

    #@349
    .line 296
    .end local v9    # "_result":I
    :cond_9
    const/4 v6, 0x0

    #@34a
    .restart local v6    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_9

    #@34b
    .line 305
    .end local v6    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_18
    const-string/jumbo v16, "com.android.internal.backup.IBackupTransport"

    #@34e
    move-object/from16 v0, p2

    #@350
    move-object/from16 v1, v16

    #@352
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@355
    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->abortFullRestore()I

    #@358
    move-result v9

    #@359
    .line 307
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@35c
    .line 308
    move-object/from16 v0, p3

    #@35e
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@361
    .line 309
    const/16 v16, 0x1

    #@363
    return v16

    #@364
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
