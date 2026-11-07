.class public abstract Landroid/app/backup/IRestoreObserver$Stub;
.super Landroid/os/Binder;
.source "IRestoreObserver.java"

# interfaces
.implements Landroid/app/backup/IRestoreObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IRestoreObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IRestoreObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.backup.IRestoreObserver"

.field static final greylist-max-o TRANSACTION_onUpdate:I = 0x3

.field static final greylist-max-o TRANSACTION_restoreFinished:I = 0x4

.field static final greylist-max-o TRANSACTION_restoreSetsAvailable:I = 0x1

.field static final greylist-max-o TRANSACTION_restoreStarting:I = 0x2


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 74
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 75
    const-string v0, "android.app.backup.IRestoreObserver"

    invoke-virtual {p0, p0, v0}, Landroid/app/backup/IRestoreObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/app/backup/IRestoreObserver;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 83
    if-nez p0, :cond_4

    .line 84
    const/4 v0, 0x0

    return-object v0

    .line 86
    :cond_4
    const-string v0, "android.app.backup.IRestoreObserver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 87
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/backup/IRestoreObserver;

    if-eqz v1, :cond_14

    .line 88
    move-object v1, v0

    check-cast v1, Landroid/app/backup/IRestoreObserver;

    return-object v1

    .line 90
    :cond_14
    new-instance v1, Landroid/app/backup/IRestoreObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/backup/IRestoreObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 99
    packed-switch p0, :pswitch_data_16

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 115
    :pswitch_5
    const-string/jumbo v0, "restoreFinished"

    return-object v0

    .line 111
    :pswitch_9
    const-string/jumbo v0, "onUpdate"

    return-object v0

    .line 107
    :pswitch_d
    const-string/jumbo v0, "restoreStarting"

    return-object v0

    .line 103
    :pswitch_11
    const-string/jumbo v0, "restoreSetsAvailable"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 94
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 286
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 126
    invoke-static {p1}, Landroid/app/backup/IRestoreObserver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 130
    const-string v0, "android.app.backup.IRestoreObserver"

    .line 131
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 132
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 135
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    return v1

    .line 138
    :cond_16
    packed-switch p1, :pswitch_data_54

    .line 176
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 169
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 170
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, v2}, Landroid/app/backup/IRestoreObserver$Stub;->restoreFinished(I)V

    .line 172
    goto :goto_52

    .line 159
    .end local v2    # "_arg0":I
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 161
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {p0, v2, v3}, Landroid/app/backup/IRestoreObserver$Stub;->onUpdate(ILjava/lang/String;)V

    .line 164
    goto :goto_52

    .line 151
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 152
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, v2}, Landroid/app/backup/IRestoreObserver$Stub;->restoreStarting(I)V

    .line 154
    goto :goto_52

    .line 143
    .end local v2    # "_arg0":I
    :pswitch_43
    sget-object v2, Landroid/app/backup/RestoreSet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/app/backup/RestoreSet;

    .line 144
    .local v2, "_arg0":[Landroid/app/backup/RestoreSet;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v2}, Landroid/app/backup/IRestoreObserver$Stub;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V

    .line 146
    nop

    .line 179
    .end local v2    # "_arg0":[Landroid/app/backup/RestoreSet;
    :goto_52
    return v1

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_43
        :pswitch_38
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
