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

.field static final TRANSACTION_doRestore:I = 0x2

.field static final TRANSACTION_doRestoreFile:I = 0x5

.field static final TRANSACTION_doRestoreFinished:I = 0x6

.field static final TRANSACTION_fail:I = 0x7


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
    invoke-virtual {p0, p0, v0}, Landroid/app/IBackupAgent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

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
    .line 45
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 184
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 49
    :sswitch_0
    const-string/jumbo v4, "android.app.IBackupAgent"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 50
    const/4 v4, 0x1

    #@11
    return v4

    #@12
    .line 54
    :sswitch_1
    const-string/jumbo v4, "android.app.IBackupAgent"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_0

    #@20
    .line 57
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22
    move-object/from16 v0, p2

    #@24
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27
    move-result-object v5

    #@28
    check-cast v5, Landroid/os/ParcelFileDescriptor;

    #@2a
    .line 63
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_1

    #@30
    .line 64
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@32
    move-object/from16 v0, p2

    #@34
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@37
    move-result-object v6

    #@38
    check-cast v6, Landroid/os/ParcelFileDescriptor;

    #@3a
    .line 70
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v4

    #@3e
    if-eqz v4, :cond_2

    #@40
    .line 71
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@42
    move-object/from16 v0, p2

    #@44
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@47
    move-result-object v7

    #@48
    check-cast v7, Landroid/os/ParcelFileDescriptor;

    #@4a
    .line 77
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4d
    move-result v8

    #@4e
    .line 79
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@51
    move-result-object v4

    #@52
    invoke-static {v4}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    #@55
    move-result-object v9

    #@56
    .local v9, "_arg4":Landroid/app/backup/IBackupManager;
    move-object/from16 v4, p0

    #@58
    .line 80
    invoke-virtual/range {v4 .. v9}, Landroid/app/IBackupAgent$Stub;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    #@5b
    .line 81
    const/4 v4, 0x1

    #@5c
    return v4

    #@5d
    .line 60
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Landroid/app/backup/IBackupManager;
    :cond_0
    const/4 v5, 0x0

    #@5e
    .local v5, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    #@5f
    .line 67
    .end local v5    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_1
    const/4 v6, 0x0

    #@60
    .local v6, "_arg1":Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    #@61
    .line 74
    .end local v6    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :cond_2
    const/4 v7, 0x0

    #@62
    .local v7, "_arg2":Landroid/os/ParcelFileDescriptor;
    goto :goto_2

    #@63
    .line 85
    .end local v7    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :sswitch_2
    const-string/jumbo v4, "android.app.IBackupAgent"

    #@66
    move-object/from16 v0, p2

    #@68
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6b
    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6e
    move-result v4

    #@6f
    if-eqz v4, :cond_3

    #@71
    .line 88
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@73
    move-object/from16 v0, p2

    #@75
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@78
    move-result-object v5

    #@79
    check-cast v5, Landroid/os/ParcelFileDescriptor;

    #@7b
    .line 94
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7e
    move-result v12

    #@7f
    .line 96
    .local v12, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@82
    move-result v4

    #@83
    if-eqz v4, :cond_4

    #@85
    .line 97
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@87
    move-object/from16 v0, p2

    #@89
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8c
    move-result-object v7

    #@8d
    check-cast v7, Landroid/os/ParcelFileDescriptor;

    #@8f
    .line 103
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@92
    move-result v8

    #@93
    .line 105
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@96
    move-result-object v4

    #@97
    invoke-static {v4}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    #@9a
    move-result-object v9

    #@9b
    .restart local v9    # "_arg4":Landroid/app/backup/IBackupManager;
    move-object/from16 v10, p0

    #@9d
    move-object v11, v5

    #@9e
    move-object v13, v7

    #@9f
    move v14, v8

    #@a0
    move-object v15, v9

    #@a1
    .line 106
    invoke-virtual/range {v10 .. v15}, Landroid/app/IBackupAgent$Stub;->doRestore(Landroid/os/ParcelFileDescriptor;ILandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    #@a4
    .line 107
    const/4 v4, 0x1

    #@a5
    return v4

    #@a6
    .line 91
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Landroid/app/backup/IBackupManager;
    .end local v12    # "_arg1":I
    :cond_3
    const/4 v5, 0x0

    #@a7
    .restart local v5    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_3

    #@a8
    .line 100
    .end local v5    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .restart local v12    # "_arg1":I
    :cond_4
    const/4 v7, 0x0

    #@a9
    .restart local v7    # "_arg2":Landroid/os/ParcelFileDescriptor;
    goto :goto_4

    #@aa
    .line 111
    .end local v7    # "_arg2":Landroid/os/ParcelFileDescriptor;
    .end local v12    # "_arg1":I
    :sswitch_3
    const-string/jumbo v4, "android.app.IBackupAgent"

    #@ad
    move-object/from16 v0, p2

    #@af
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b2
    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b5
    move-result v4

    #@b6
    if-eqz v4, :cond_5

    #@b8
    .line 114
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ba
    move-object/from16 v0, p2

    #@bc
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@bf
    move-result-object v5

    #@c0
    check-cast v5, Landroid/os/ParcelFileDescriptor;

    #@c2
    .line 120
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c5
    move-result v12

    #@c6
    .line 122
    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c9
    move-result-object v4

    #@ca
    invoke-static {v4}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    #@cd
    move-result-object v29

    #@ce
    .line 123
    .local v29, "_arg2":Landroid/app/backup/IBackupManager;
    move-object/from16 v0, p0

    #@d0
    move-object/from16 v1, v29

    #@d2
    invoke-virtual {v0, v5, v12, v1}, Landroid/app/IBackupAgent$Stub;->doFullBackup(Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    #@d5
    .line 124
    const/4 v4, 0x1

    #@d6
    return v4

    #@d7
    .line 117
    .end local v12    # "_arg1":I
    .end local v29    # "_arg2":Landroid/app/backup/IBackupManager;
    :cond_5
    const/4 v5, 0x0

    #@d8
    .restart local v5    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_5

    #@d9
    .line 128
    .end local v5    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_4
    const-string/jumbo v4, "android.app.IBackupAgent"

    #@dc
    move-object/from16 v0, p2

    #@de
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e1
    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e4
    move-result v26

    #@e5
    .line 132
    .local v26, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@e8
    move-result-object v4

    #@e9
    invoke-static {v4}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    #@ec
    move-result-object v28

    #@ed
    .line 133
    .local v28, "_arg1":Landroid/app/backup/IBackupManager;
    move-object/from16 v0, p0

    #@ef
    move/from16 v1, v26

    #@f1
    move-object/from16 v2, v28

    #@f3
    invoke-virtual {v0, v1, v2}, Landroid/app/IBackupAgent$Stub;->doMeasureFullBackup(ILandroid/app/backup/IBackupManager;)V

    #@f6
    .line 134
    const/4 v4, 0x1

    #@f7
    return v4

    #@f8
    .line 138
    .end local v26    # "_arg0":I
    .end local v28    # "_arg1":Landroid/app/backup/IBackupManager;
    :sswitch_5
    const-string/jumbo v4, "android.app.IBackupAgent"

    #@fb
    move-object/from16 v0, p2

    #@fd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@100
    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@103
    move-result v4

    #@104
    if-eqz v4, :cond_6

    #@106
    .line 141
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@108
    move-object/from16 v0, p2

    #@10a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@10d
    move-result-object v5

    #@10e
    check-cast v5, Landroid/os/ParcelFileDescriptor;

    #@110
    .line 147
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@113
    move-result-wide v15

    #@114
    .line 149
    .local v15, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@117
    move-result v17

    #@118
    .line 151
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11b
    move-result-object v18

    #@11c
    .line 153
    .local v18, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11f
    move-result-object v19

    #@120
    .line 155
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@123
    move-result-wide v20

    #@124
    .line 157
    .local v20, "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@127
    move-result-wide v22

    #@128
    .line 159
    .local v22, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12b
    move-result v24

    #@12c
    .line 161
    .local v24, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@12f
    move-result-object v4

    #@130
    invoke-static {v4}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    #@133
    move-result-object v25

    #@134
    .local v25, "_arg8":Landroid/app/backup/IBackupManager;
    move-object/from16 v13, p0

    #@136
    move-object v14, v5

    #@137
    .line 162
    invoke-virtual/range {v13 .. v25}, Landroid/app/IBackupAgent$Stub;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V

    #@13a
    .line 163
    const/4 v4, 0x1

    #@13b
    return v4

    #@13c
    .line 144
    .end local v15    # "_arg1":J
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":J
    .end local v22    # "_arg6":J
    .end local v24    # "_arg7":I
    .end local v25    # "_arg8":Landroid/app/backup/IBackupManager;
    :cond_6
    const/4 v5, 0x0

    #@13d
    .restart local v5    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_6

    #@13e
    .line 167
    .end local v5    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_6
    const-string/jumbo v4, "android.app.IBackupAgent"

    #@141
    move-object/from16 v0, p2

    #@143
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@146
    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@149
    move-result v26

    #@14a
    .line 171
    .restart local v26    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@14d
    move-result-object v4

    #@14e
    invoke-static {v4}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    #@151
    move-result-object v28

    #@152
    .line 172
    .restart local v28    # "_arg1":Landroid/app/backup/IBackupManager;
    move-object/from16 v0, p0

    #@154
    move/from16 v1, v26

    #@156
    move-object/from16 v2, v28

    #@158
    invoke-virtual {v0, v1, v2}, Landroid/app/IBackupAgent$Stub;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V

    #@15b
    .line 173
    const/4 v4, 0x1

    #@15c
    return v4

    #@15d
    .line 177
    .end local v26    # "_arg0":I
    .end local v28    # "_arg1":Landroid/app/backup/IBackupManager;
    :sswitch_7
    const-string/jumbo v4, "android.app.IBackupAgent"

    #@160
    move-object/from16 v0, p2

    #@162
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@165
    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@168
    move-result-object v27

    #@169
    .line 180
    .local v27, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@16b
    move-object/from16 v1, v27

    #@16d
    invoke-virtual {v0, v1}, Landroid/app/IBackupAgent$Stub;->fail(Ljava/lang/String;)V

    #@170
    .line 181
    const/4 v4, 0x1

    #@171
    return v4

    #@172
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
