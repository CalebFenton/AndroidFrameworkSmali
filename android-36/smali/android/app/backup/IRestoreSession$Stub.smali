.class public abstract Landroid/app/backup/IRestoreSession$Stub;
.super Landroid/os/Binder;
.source "IRestoreSession.java"

# interfaces
.implements Landroid/app/backup/IRestoreSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IRestoreSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IRestoreSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.backup.IRestoreSession"

.field static final greylist-max-o TRANSACTION_endRestoreSession:I = 0x5

.field static final greylist-max-o TRANSACTION_getAvailableRestoreSets:I = 0x1

.field static final greylist-max-o TRANSACTION_restoreAll:I = 0x2

.field static final greylist-max-o TRANSACTION_restorePackage:I = 0x4

.field static final blacklist TRANSACTION_restorePackages:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 115
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 116
    const-string v0, "android.app.backup.IRestoreSession"

    invoke-virtual {p0, p0, v0}, Landroid/app/backup/IRestoreSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/app/backup/IRestoreSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 124
    if-nez p0, :cond_4

    .line 125
    const/4 v0, 0x0

    return-object v0

    .line 127
    :cond_4
    const-string v0, "android.app.backup.IRestoreSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 128
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/backup/IRestoreSession;

    if-eqz v1, :cond_14

    .line 129
    move-object v1, v0

    check-cast v1, Landroid/app/backup/IRestoreSession;

    return-object v1

    .line 131
    :cond_14
    new-instance v1, Landroid/app/backup/IRestoreSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/backup/IRestoreSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 140
    packed-switch p0, :pswitch_data_18

    .line 164
    const/4 v0, 0x0

    return-object v0

    .line 160
    :pswitch_5
    const-string v0, "endRestoreSession"

    return-object v0

    .line 156
    :pswitch_8
    const-string/jumbo v0, "restorePackage"

    return-object v0

    .line 152
    :pswitch_c
    const-string/jumbo v0, "restorePackages"

    return-object v0

    .line 148
    :pswitch_10
    const-string/jumbo v0, "restoreAll"

    return-object v0

    .line 144
    :pswitch_14
    const-string v0, "getAvailableRestoreSets"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 135
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 438
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 171
    invoke-static {p1}, Landroid/app/backup/IRestoreSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    const-string v6, "android.app.backup.IRestoreSession"

    .line 176
    .local v6, "descriptor":Ljava/lang/String;
    const/4 v7, 0x1

    if-lt p1, v7, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 177
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 180
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    return v7

    .line 183
    :cond_16
    packed-switch p1, :pswitch_data_b0

    .line 249
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 243
    :pswitch_1e
    invoke-virtual {p0}, Landroid/app/backup/IRestoreSession$Stub;->endRestoreSession()V

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    goto/16 :goto_af

    .line 230
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IRestoreObserver;

    move-result-object v2

    .line 234
    .local v2, "_arg1":Landroid/app/backup/IRestoreObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IBackupManagerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v3

    .line 235
    .local v3, "_arg2":Landroid/app/backup/IBackupManagerMonitor;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/backup/IRestoreSession$Stub;->restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I

    move-result v4

    .line 237
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    goto :goto_af

    .line 214
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/app/backup/IRestoreObserver;
    .end local v3    # "_arg2":Landroid/app/backup/IBackupManagerMonitor;
    .end local v4    # "_result":I
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 216
    .local v1, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IRestoreObserver;

    move-result-object v3

    .line 218
    .local v3, "_arg1":Landroid/app/backup/IRestoreObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, "_arg2":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/backup/IBackupManagerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    .line 221
    .local v5, "_arg3":Landroid/app/backup/IBackupManagerMonitor;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/backup/IRestoreSession$Stub;->restorePackages(JLandroid/app/backup/IRestoreObserver;[Ljava/lang/String;Landroid/app/backup/IBackupManagerMonitor;)I

    move-result v8

    .line 223
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    goto :goto_af

    .line 200
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":Landroid/app/backup/IRestoreObserver;
    .end local v4    # "_arg2":[Ljava/lang/String;
    .end local v5    # "_arg3":Landroid/app/backup/IBackupManagerMonitor;
    .end local v8    # "_result":I
    :pswitch_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 202
    .restart local v1    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IRestoreObserver;

    move-result-object v3

    .line 204
    .restart local v3    # "_arg1":Landroid/app/backup/IRestoreObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/backup/IBackupManagerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v4

    .line 205
    .local v4, "_arg2":Landroid/app/backup/IBackupManagerMonitor;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/backup/IRestoreSession$Stub;->restoreAll(JLandroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I

    move-result v5

    .line 207
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    goto :goto_af

    .line 188
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":Landroid/app/backup/IRestoreObserver;
    .end local v4    # "_arg2":Landroid/app/backup/IBackupManagerMonitor;
    .end local v5    # "_result":I
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IRestoreObserver;

    move-result-object v1

    .line 190
    .local v1, "_arg0":Landroid/app/backup/IRestoreObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupManagerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2

    .line 191
    .local v2, "_arg1":Landroid/app/backup/IBackupManagerMonitor;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {p0, v1, v2}, Landroid/app/backup/IRestoreSession$Stub;->getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I

    move-result v3

    .line 193
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    nop

    .line 252
    .end local v1    # "_arg0":Landroid/app/backup/IRestoreObserver;
    .end local v2    # "_arg1":Landroid/app/backup/IBackupManagerMonitor;
    .end local v3    # "_result":I
    :goto_af
    return v7

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_91
        :pswitch_6f
        :pswitch_48
        :pswitch_26
        :pswitch_1e
    .end packed-switch
.end method
