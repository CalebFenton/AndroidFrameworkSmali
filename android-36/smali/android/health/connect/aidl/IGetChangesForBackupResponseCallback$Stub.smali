.class public abstract Landroid/health/connect/aidl/IGetChangesForBackupResponseCallback$Stub;
.super Landroid/os/Binder;
.source "IGetChangesForBackupResponseCallback.java"

# interfaces
.implements Landroid/health/connect/aidl/IGetChangesForBackupResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/aidl/IGetChangesForBackupResponseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/aidl/IGetChangesForBackupResponseCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onError:I = 0x2

.field static final blacklist TRANSACTION_onResult:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string v0, "android.health.connect.aidl.IGetChangesForBackupResponseCallback"

    invoke-virtual {p0, p0, v0}, Landroid/health/connect/aidl/IGetChangesForBackupResponseCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IGetChangesForBackupResponseCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 47
    if-nez p0, :cond_4

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_4
    const-string v0, "android.health.connect.aidl.IGetChangesForBackupResponseCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 51
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/health/connect/aidl/IGetChangesForBackupResponseCallback;

    if-eqz v1, :cond_14

    .line 52
    move-object v1, v0

    check-cast v1, Landroid/health/connect/aidl/IGetChangesForBackupResponseCallback;

    return-object v1

    .line 54
    :cond_14
    new-instance v1, Landroid/health/connect/aidl/IGetChangesForBackupResponseCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/health/connect/aidl/IGetChangesForBackupResponseCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 63
    packed-switch p0, :pswitch_data_c

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 71
    :pswitch_5
    const-string v0, "onError"

    return-object v0

    .line 67
    :pswitch_8
    const-string v0, "onResult"

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 58
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 82
    invoke-static {p1}, Landroid/health/connect/aidl/IGetChangesForBackupResponseCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    const-string v0, "android.health.connect.aidl.IGetChangesForBackupResponseCallback"

    .line 87
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 88
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 91
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    return v1

    .line 94
    :cond_16
    packed-switch p1, :pswitch_data_3e

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 107
    :pswitch_1e
    sget-object v2, Landroid/health/connect/aidl/HealthConnectExceptionParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/health/connect/aidl/HealthConnectExceptionParcel;

    .line 108
    .local v2, "_arg0":Landroid/health/connect/aidl/HealthConnectExceptionParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 109
    invoke-virtual {p0, v2}, Landroid/health/connect/aidl/IGetChangesForBackupResponseCallback$Stub;->onError(Landroid/health/connect/aidl/HealthConnectExceptionParcel;)V

    .line 110
    goto :goto_3c

    .line 99
    .end local v2    # "_arg0":Landroid/health/connect/aidl/HealthConnectExceptionParcel;
    :pswitch_2d
    sget-object v2, Landroid/health/connect/backuprestore/GetChangesForBackupResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/health/connect/backuprestore/GetChangesForBackupResponse;

    .line 100
    .local v2, "_arg0":Landroid/health/connect/backuprestore/GetChangesForBackupResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 101
    invoke-virtual {p0, v2}, Landroid/health/connect/aidl/IGetChangesForBackupResponseCallback$Stub;->onResult(Landroid/health/connect/backuprestore/GetChangesForBackupResponse;)V

    .line 102
    nop

    .line 117
    .end local v2    # "_arg0":Landroid/health/connect/backuprestore/GetChangesForBackupResponse;
    :goto_3c
    return v1

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
