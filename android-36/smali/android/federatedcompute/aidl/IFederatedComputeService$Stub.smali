.class public abstract Landroid/federatedcompute/aidl/IFederatedComputeService$Stub;
.super Landroid/os/Binder;
.source "IFederatedComputeService.java"

# interfaces
.implements Landroid/federatedcompute/aidl/IFederatedComputeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/federatedcompute/aidl/IFederatedComputeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/federatedcompute/aidl/IFederatedComputeService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancel:I = 0x2

.field static final blacklist TRANSACTION_schedule:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "android.federatedcompute.aidl.IFederatedComputeService"

    invoke-virtual {p0, p0, v0}, Landroid/federatedcompute/aidl/IFederatedComputeService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/federatedcompute/aidl/IFederatedComputeService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_4
    const-string v0, "android.federatedcompute.aidl.IFederatedComputeService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/federatedcompute/aidl/IFederatedComputeService;

    if-eqz v1, :cond_14

    .line 47
    move-object v1, v0

    check-cast v1, Landroid/federatedcompute/aidl/IFederatedComputeService;

    return-object v1

    .line 49
    :cond_14
    new-instance v1, Landroid/federatedcompute/aidl/IFederatedComputeService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/federatedcompute/aidl/IFederatedComputeService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 58
    packed-switch p0, :pswitch_data_c

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 66
    :pswitch_5
    const-string v0, "cancel"

    return-object v0

    .line 62
    :pswitch_8
    const-string v0, "schedule"

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

    .line 53
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 77
    invoke-static {p1}, Landroid/federatedcompute/aidl/IFederatedComputeService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    const-string v0, "android.federatedcompute.aidl.IFederatedComputeService"

    .line 82
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 83
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 86
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    return v1

    .line 89
    :cond_16
    packed-switch p1, :pswitch_data_5c

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 107
    :pswitch_1e
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 109
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/federatedcompute/aidl/IFederatedComputeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/federatedcompute/aidl/IFederatedComputeCallback;

    move-result-object v4

    .line 112
    .local v4, "_arg2":Landroid/federatedcompute/aidl/IFederatedComputeCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 113
    invoke-virtual {p0, v2, v3, v4}, Landroid/federatedcompute/aidl/IFederatedComputeService$Stub;->cancel(Landroid/content/ComponentName;Ljava/lang/String;Landroid/federatedcompute/aidl/IFederatedComputeCallback;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    goto :goto_5a

    .line 94
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/federatedcompute/aidl/IFederatedComputeCallback;
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/federatedcompute/common/TrainingOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/federatedcompute/common/TrainingOptions;

    .line 98
    .local v3, "_arg1":Landroid/federatedcompute/common/TrainingOptions;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/federatedcompute/aidl/IFederatedComputeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/federatedcompute/aidl/IFederatedComputeCallback;

    move-result-object v4

    .line 99
    .restart local v4    # "_arg2":Landroid/federatedcompute/aidl/IFederatedComputeCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 100
    invoke-virtual {p0, v2, v3, v4}, Landroid/federatedcompute/aidl/IFederatedComputeService$Stub;->schedule(Ljava/lang/String;Landroid/federatedcompute/common/TrainingOptions;Landroid/federatedcompute/aidl/IFederatedComputeCallback;)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    nop

    .line 122
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/federatedcompute/common/TrainingOptions;
    .end local v4    # "_arg2":Landroid/federatedcompute/aidl/IFederatedComputeCallback;
    :goto_5a
    return v1

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_1e
    .end packed-switch
.end method
