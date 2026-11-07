.class public abstract Landroid/app/backup/IBackupObserver$Stub;
.super Landroid/os/Binder;
.source "IBackupObserver.java"

# interfaces
.implements Landroid/app/backup/IBackupObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IBackupObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IBackupObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.backup.IBackupObserver"

.field static final greylist-max-o TRANSACTION_backupFinished:I = 0x3

.field static final greylist-max-o TRANSACTION_onResult:I = 0x2

.field static final greylist-max-o TRANSACTION_onUpdate:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    const-string v0, "android.app.backup.IBackupObserver"

    invoke-virtual {p0, p0, v0}, Landroid/app/backup/IBackupObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupObserver;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 74
    if-nez p0, :cond_4

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_4
    const-string v0, "android.app.backup.IBackupObserver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 78
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/backup/IBackupObserver;

    if-eqz v1, :cond_14

    .line 79
    move-object v1, v0

    check-cast v1, Landroid/app/backup/IBackupObserver;

    return-object v1

    .line 81
    :cond_14
    new-instance v1, Landroid/app/backup/IBackupObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/backup/IBackupObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 90
    packed-switch p0, :pswitch_data_10

    .line 106
    const/4 v0, 0x0

    return-object v0

    .line 102
    :pswitch_5
    const-string v0, "backupFinished"

    return-object v0

    .line 98
    :pswitch_8
    const-string/jumbo v0, "onResult"

    return-object v0

    .line 94
    :pswitch_c
    const-string/jumbo v0, "onUpdate"

    return-object v0

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 85
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 248
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 113
    invoke-static {p1}, Landroid/app/backup/IBackupObserver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    const-string v0, "android.app.backup.IBackupObserver"

    .line 118
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 119
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 122
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    return v1

    .line 125
    :cond_16
    packed-switch p1, :pswitch_data_4c

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 150
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 151
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, v2}, Landroid/app/backup/IBackupObserver$Stub;->backupFinished(I)V

    .line 153
    goto :goto_4b

    .line 140
    .end local v2    # "_arg0":I
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 143
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, v2, v3}, Landroid/app/backup/IBackupObserver$Stub;->onResult(Ljava/lang/String;I)V

    .line 145
    goto :goto_4b

    .line 130
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 132
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/app/backup/BackupProgress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/backup/BackupProgress;

    .line 133
    .local v3, "_arg1":Landroid/app/backup/BackupProgress;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, v2, v3}, Landroid/app/backup/IBackupObserver$Stub;->onUpdate(Ljava/lang/String;Landroid/app/backup/BackupProgress;)V

    .line 135
    nop

    .line 160
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/app/backup/BackupProgress;
    :goto_4b
    return v1

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_38
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
