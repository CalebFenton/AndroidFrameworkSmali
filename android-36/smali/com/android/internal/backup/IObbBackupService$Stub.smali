.class public abstract Lcom/android/internal/backup/IObbBackupService$Stub;
.super Landroid/os/Binder;
.source "IObbBackupService.java"

# interfaces
.implements Lcom/android/internal/backup/IObbBackupService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/backup/IObbBackupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/backup/IObbBackupService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.backup.IObbBackupService"

.field static final greylist-max-o TRANSACTION_backupObbs:I = 0x1

.field static final greylist-max-o TRANSACTION_restoreObbFile:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    const-string v0, "com.android.internal.backup.IObbBackupService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/backup/IObbBackupService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IObbBackupService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 53
    if-nez p0, :cond_4

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_4
    const-string v0, "com.android.internal.backup.IObbBackupService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/backup/IObbBackupService;

    if-eqz v1, :cond_14

    .line 58
    move-object v1, v0

    check-cast v1, Lcom/android/internal/backup/IObbBackupService;

    return-object v1

    .line 60
    :cond_14
    new-instance v1, Lcom/android/internal/backup/IObbBackupService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/backup/IObbBackupService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 69
    packed-switch p0, :pswitch_data_c

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 77
    :pswitch_5
    const-string/jumbo v0, "restoreObbFile"

    return-object v0

    .line 73
    :pswitch_9
    const-string v0, "backupObbs"

    return-object v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 64
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 88
    invoke-static {p1}, Lcom/android/internal/backup/IObbBackupService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    move/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "com.android.internal.backup.IObbBackupService"

    .line 93
    .local v2, "descriptor":Ljava/lang/String;
    const/4 v3, 0x1

    if-lt v0, v3, :cond_11

    const v4, 0xffffff

    if-gt v0, v4, :cond_11

    .line 94
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    :cond_11
    const v4, 0x5f4e5446

    if-ne v0, v4, :cond_1c

    .line 97
    move-object/from16 v4, p3

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v3

    .line 100
    :cond_1c
    move-object/from16 v4, p3

    packed-switch v0, :pswitch_data_82

    .line 142
    move-object/from16 v9, p0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 119
    :pswitch_28
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 121
    .local v6, "_arg0":Ljava/lang/String;
    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Landroid/os/ParcelFileDescriptor;

    .line 123
    .local v7, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 125
    .local v8, "_arg2":J
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 127
    .local v10, "_arg3":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 129
    .local v11, "_arg4":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 131
    .local v12, "_arg5":J
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 133
    .local v14, "_arg6":J
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 135
    .local v16, "_arg7":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v17

    .line 136
    .local v17, "_arg8":Landroid/app/backup/IBackupManager;
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v17}, Lcom/android/internal/backup/IObbBackupService$Stub;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V

    .line 138
    move-object/from16 v9, p0

    goto :goto_81

    .line 105
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v8    # "_arg2":J
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":Ljava/lang/String;
    .end local v12    # "_arg5":J
    .end local v14    # "_arg6":J
    .end local v16    # "_arg7":I
    .end local v17    # "_arg8":Landroid/app/backup/IBackupManager;
    :pswitch_60
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "_arg0":Ljava/lang/String;
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    .line 109
    .local v6, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 111
    .local v7, "_arg2":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v8

    .line 112
    .local v8, "_arg3":Landroid/app/backup/IBackupManager;
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 113
    move-object/from16 v9, p0

    invoke-virtual {v9, v5, v6, v7, v8}, Lcom/android/internal/backup/IObbBackupService$Stub;->backupObbs(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    .line 114
    nop

    .line 145
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Landroid/app/backup/IBackupManager;
    :goto_81
    return v3

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_60
        :pswitch_28
    .end packed-switch
.end method
