.class public abstract Landroid/app/IBackupAgent$Stub;
.super Landroid/os/Binder;
.source "IBackupAgent.java"

# interfaces
.implements Landroid/app/IBackupAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IBackupAgent$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IBackupAgent"

.field static final TRANSACTION_doBackup:I = 0x1

.field static final TRANSACTION_doFullBackup:I = 0x3

.field static final TRANSACTION_doMeasureFullBackup:I = 0x4

.field static final TRANSACTION_doQuotaExceeded:I = 0x5

.field static final TRANSACTION_doRestore:I = 0x2

.field static final TRANSACTION_doRestoreFile:I = 0x6

.field static final TRANSACTION_doRestoreFinished:I = 0x7

.field static final TRANSACTION_fail:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 22
    const-string/jumbo v0, "android.app.IBackupAgent"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 30
    if-nez p0, :cond_0

    #@3
    .line 31
    return-object v1

    #@4
    .line 33
    :cond_0
    const-string/jumbo v1, "android.app.IBackupAgent"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/app/IBackupAgent;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 35
    check-cast v0, Landroid/app/IBackupAgent;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 37
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/IBackupAgent$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/app/IBackupAgent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 34
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
    .line 45
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 194
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v6

    #@7
    return v6

    #@8
    .line 49
    :sswitch_0
    const-string/jumbo v6, "android.app.IBackupAgent"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 50
    const/4 v6, 0x1

    #@11
    return v6

    #@12
    .line 54
    :sswitch_1
    const-string/jumbo v6, "android.app.IBackupAgent"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v6

    #@1e
    if-eqz v6, :cond_0

    #@20
    .line 57
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22
    move-object/from16 v0, p2

    #@24
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27
    move-result-object v7

    #@28
    check-cast v7, Landroid/os/ParcelFileDescriptor;

    #@2a
    .line 63
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v6

    #@2e
    if-eqz v6, :cond_1

    #@30
    .line 64
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@32
    move-object/from16 v0, p2

    #@34
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@37
    move-result-object v8

    #@38
    check-cast v8, Landroid/os/ParcelFileDescriptor;

    #@3a
    .line 70
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v6

    #@3e
    if-eqz v6, :cond_2

    #@40
    .line 71
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@42
    move-object/from16 v0, p2

    #@44
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@47
    move-result-object v9

    #@48
    check-cast v9, Landroid/os/ParcelFileDescriptor;

    #@4a
    .line 77
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4d
    move-result v10

    #@4e
    .line 79
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@51
    move-result-object v6

    #@52
    invoke-static {v6}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    #@55
    move-result-object v11

    #@56
    .local v11, "_arg4":Landroid/app/backup/IBackupManager;
    move-object/from16 v6, p0

    #@58
    .line 80
    invoke-virtual/range {v6 .. v11}, Landroid/app/IBackupAgent$Stub;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    #@5b
    .line 81
    const/4 v6, 0x1

    #@5c
    return v6

    #@5d
    .line 60
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":Landroid/app/backup/IBackupManager;
    :cond_0
    const/4 v7, 0x0

    #@5e
    .local v7, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    #@5f
    .line 67
    .end local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_1
    const/4 v8, 0x0

    #@60
    .local v8, "_arg1":Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    #@61
    .line 74
    .end local v8    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :cond_2
    const/4 v9, 0x0

    #@62
    .local v9, "_arg2":Landroid/os/ParcelFileDescriptor;
    goto :goto_2

    #@63
    .line 85
    .end local v9    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :sswitch_2
    const-string/jumbo v6, "android.app.IBackupAgent"

    #@66
    move-object/from16 v0, p2

    #@68
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6b
    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6e
    move-result v6

    #@6f
    if-eqz v6, :cond_3

    #@71
    .line 88
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@73
    move-object/from16 v0, p2

    #@75
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@78
    move-result-object v7

    #@79
    check-cast v7, Landroid/os/ParcelFileDescriptor;

    #@7b
    .line 94
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7e
    move-result v14

    #@7f
    .line 96
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@82
    move-result v6

    #@83
    if-eqz v6, :cond_4

    #@85
    .line 97
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@87
    move-object/from16 v0, p2

    #@89
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8c
    move-result-object v9

    #@8d
    check-cast v9, Landroid/os/ParcelFileDescriptor;

    #@8f
    .line 103
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@92
    move-result v10

    #@93
    .line 105
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@96
    move-result-object v6

    #@97
    invoke-static {v6}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    #@9a
    move-result-object v11

    #@9b
    .restart local v11    # "_arg4":Landroid/app/backup/IBackupManager;
    move-object/from16 v12, p0

    #@9d
    move-object v13, v7

    #@9e
    move-object v15, v9

    #@9f
    move/from16 v16, v10

    #@a1
    move-object/from16 v17, v11

    #@a3
    .line 106
    invoke-virtual/range {v12 .. v17}, Landroid/app/IBackupAgent$Stub;->doRestore(Landroid/os/ParcelFileDescriptor;ILandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    #@a6
    .line 107
    const/4 v6, 0x1

    #@a7
    return v6

    #@a8
    .line 91
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":Landroid/app/backup/IBackupManager;
    .end local v14    # "_arg1":I
    :cond_3
    const/4 v7, 0x0

    #@a9
    .restart local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_3

    #@aa
    .line 100
    .end local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .restart local v14    # "_arg1":I
    :cond_4
    const/4 v9, 0x0

    #@ab
    .restart local v9    # "_arg2":Landroid/os/ParcelFileDescriptor;
    goto :goto_4

    #@ac
    .line 111
    .end local v9    # "_arg2":Landroid/os/ParcelFileDescriptor;
    .end local v14    # "_arg1":I
    :sswitch_3
    const-string/jumbo v6, "android.app.IBackupAgent"

    #@af
    move-object/from16 v0, p2

    #@b1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b4
    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b7
    move-result v6

    #@b8
    if-eqz v6, :cond_5

    #@ba
    .line 114
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@bc
    move-object/from16 v0, p2

    #@be
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c1
    move-result-object v7

    #@c2
    check-cast v7, Landroid/os/ParcelFileDescriptor;

    #@c4
    .line 120
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c7
    move-result v14

    #@c8
    .line 122
    .restart local v14    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@cb
    move-result-object v6

    #@cc
    invoke-static {v6}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    #@cf
    move-result-object v33

    #@d0
    .line 123
    .local v33, "_arg2":Landroid/app/backup/IBackupManager;
    move-object/from16 v0, p0

    #@d2
    move-object/from16 v1, v33

    #@d4
    invoke-virtual {v0, v7, v14, v1}, Landroid/app/IBackupAgent$Stub;->doFullBackup(Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    #@d7
    .line 124
    const/4 v6, 0x1

    #@d8
    return v6

    #@d9
    .line 117
    .end local v14    # "_arg1":I
    .end local v33    # "_arg2":Landroid/app/backup/IBackupManager;
    :cond_5
    const/4 v7, 0x0

    #@da
    .restart local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_5

    #@db
    .line 128
    .end local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_4
    const-string/jumbo v6, "android.app.IBackupAgent"

    #@de
    move-object/from16 v0, p2

    #@e0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e3
    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e6
    move-result v28

    #@e7
    .line 132
    .local v28, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ea
    move-result-object v6

    #@eb
    invoke-static {v6}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    #@ee
    move-result-object v32

    #@ef
    .line 133
    .local v32, "_arg1":Landroid/app/backup/IBackupManager;
    move-object/from16 v0, p0

    #@f1
    move/from16 v1, v28

    #@f3
    move-object/from16 v2, v32

    #@f5
    invoke-virtual {v0, v1, v2}, Landroid/app/IBackupAgent$Stub;->doMeasureFullBackup(ILandroid/app/backup/IBackupManager;)V

    #@f8
    .line 134
    const/4 v6, 0x1

    #@f9
    return v6

    #@fa
    .line 138
    .end local v28    # "_arg0":I
    .end local v32    # "_arg1":Landroid/app/backup/IBackupManager;
    :sswitch_5
    const-string/jumbo v6, "android.app.IBackupAgent"

    #@fd
    move-object/from16 v0, p2

    #@ff
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@102
    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@105
    move-result-wide v30

    #@106
    .line 142
    .local v30, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@109
    move-result-wide v17

    #@10a
    .line 143
    .local v17, "_arg1":J
    move-object/from16 v0, p0

    #@10c
    move-wide/from16 v1, v30

    #@10e
    move-wide/from16 v3, v17

    #@110
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IBackupAgent$Stub;->doQuotaExceeded(JJ)V

    #@113
    .line 144
    const/4 v6, 0x1

    #@114
    return v6

    #@115
    .line 148
    .end local v17    # "_arg1":J
    .end local v30    # "_arg0":J
    :sswitch_6
    const-string/jumbo v6, "android.app.IBackupAgent"

    #@118
    move-object/from16 v0, p2

    #@11a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11d
    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@120
    move-result v6

    #@121
    if-eqz v6, :cond_6

    #@123
    .line 151
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@125
    move-object/from16 v0, p2

    #@127
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12a
    move-result-object v7

    #@12b
    check-cast v7, Landroid/os/ParcelFileDescriptor;

    #@12d
    .line 157
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@130
    move-result-wide v17

    #@131
    .line 159
    .restart local v17    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@134
    move-result v19

    #@135
    .line 161
    .local v19, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@138
    move-result-object v20

    #@139
    .line 163
    .local v20, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13c
    move-result-object v21

    #@13d
    .line 165
    .local v21, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@140
    move-result-wide v22

    #@141
    .line 167
    .local v22, "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@144
    move-result-wide v24

    #@145
    .line 169
    .local v24, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@148
    move-result v26

    #@149
    .line 171
    .local v26, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@14c
    move-result-object v6

    #@14d
    invoke-static {v6}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    #@150
    move-result-object v27

    #@151
    .local v27, "_arg8":Landroid/app/backup/IBackupManager;
    move-object/from16 v15, p0

    #@153
    move-object/from16 v16, v7

    #@155
    .line 172
    invoke-virtual/range {v15 .. v27}, Landroid/app/IBackupAgent$Stub;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V

    #@158
    .line 173
    const/4 v6, 0x1

    #@159
    return v6

    #@15a
    .line 154
    .end local v17    # "_arg1":J
    .end local v19    # "_arg2":I
    .end local v20    # "_arg3":Ljava/lang/String;
    .end local v21    # "_arg4":Ljava/lang/String;
    .end local v22    # "_arg5":J
    .end local v24    # "_arg6":J
    .end local v26    # "_arg7":I
    .end local v27    # "_arg8":Landroid/app/backup/IBackupManager;
    :cond_6
    const/4 v7, 0x0

    #@15b
    .restart local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_6

    #@15c
    .line 177
    .end local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_7
    const-string/jumbo v6, "android.app.IBackupAgent"

    #@15f
    move-object/from16 v0, p2

    #@161
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@164
    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@167
    move-result v28

    #@168
    .line 181
    .restart local v28    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@16b
    move-result-object v6

    #@16c
    invoke-static {v6}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    #@16f
    move-result-object v32

    #@170
    .line 182
    .restart local v32    # "_arg1":Landroid/app/backup/IBackupManager;
    move-object/from16 v0, p0

    #@172
    move/from16 v1, v28

    #@174
    move-object/from16 v2, v32

    #@176
    invoke-virtual {v0, v1, v2}, Landroid/app/IBackupAgent$Stub;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V

    #@179
    .line 183
    const/4 v6, 0x1

    #@17a
    return v6

    #@17b
    .line 187
    .end local v28    # "_arg0":I
    .end local v32    # "_arg1":Landroid/app/backup/IBackupManager;
    :sswitch_8
    const-string/jumbo v6, "android.app.IBackupAgent"

    #@17e
    move-object/from16 v0, p2

    #@180
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@183
    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@186
    move-result-object v29

    #@187
    .line 190
    .local v29, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@189
    move-object/from16 v1, v29

    #@18b
    invoke-virtual {v0, v1}, Landroid/app/IBackupAgent$Stub;->fail(Ljava/lang/String;)V

    #@18e
    .line 191
    const/4 v6, 0x1

    #@18f
    return v6

    #@190
    .line 45
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
