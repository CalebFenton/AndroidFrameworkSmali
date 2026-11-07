.class public abstract Landroid/service/autofill/augmented/IFillCallback$Stub;
.super Landroid/os/Binder;
.source "IFillCallback.java"

# interfaces
.implements Landroid/service/autofill/augmented/IFillCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/augmented/IFillCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/augmented/IFillCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancel:I = 0x4

.field static final blacklist TRANSACTION_isCompleted:I = 0x3

.field static final blacklist TRANSACTION_onCancellable:I = 0x1

.field static final blacklist TRANSACTION_onSuccess:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    const-string v0, "android.service.autofill.augmented.IFillCallback"

    invoke-virtual {p0, p0, v0}, Landroid/service/autofill/augmented/IFillCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/autofill/augmented/IFillCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 53
    if-nez p0, :cond_4

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_4
    const-string v0, "android.service.autofill.augmented.IFillCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/autofill/augmented/IFillCallback;

    if-eqz v1, :cond_14

    .line 58
    move-object v1, v0

    check-cast v1, Landroid/service/autofill/augmented/IFillCallback;

    return-object v1

    .line 60
    :cond_14
    new-instance v1, Landroid/service/autofill/augmented/IFillCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/autofill/augmented/IFillCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 69
    packed-switch p0, :pswitch_data_14

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 85
    :pswitch_5
    const-string v0, "cancel"

    return-object v0

    .line 81
    :pswitch_8
    const-string/jumbo v0, "isCompleted"

    return-object v0

    .line 77
    :pswitch_c
    const-string/jumbo v0, "onSuccess"

    return-object v0

    .line 73
    :pswitch_10
    const-string/jumbo v0, "onCancellable"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
        :pswitch_c
        :pswitch_8
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

    .line 238
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 96
    invoke-static {p1}, Landroid/service/autofill/augmented/IFillCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 100
    const-string v0, "android.service.autofill.augmented.IFillCallback"

    .line 101
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 102
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 105
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return v1

    .line 108
    :cond_16
    packed-switch p1, :pswitch_data_60

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 141
    :pswitch_1e
    invoke-virtual {p0}, Landroid/service/autofill/augmented/IFillCallback$Stub;->cancel()V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    goto :goto_5e

    .line 134
    :pswitch_25
    invoke-virtual {p0}, Landroid/service/autofill/augmented/IFillCallback$Stub;->isCompleted()Z

    move-result v2

    .line 135
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 137
    goto :goto_5e

    .line 122
    .end local v2    # "_result":Z
    :pswitch_30
    sget-object v2, Landroid/service/autofill/Dataset;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 124
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 126
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 127
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/autofill/augmented/IFillCallback$Stub;->onSuccess(Ljava/util/List;Landroid/os/Bundle;Z)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    goto :goto_5e

    .line 113
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_arg2":Z
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v2

    .line 114
    .local v2, "_arg0":Landroid/os/ICancellationSignal;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-virtual {p0, v2}, Landroid/service/autofill/augmented/IFillCallback$Stub;->onCancellable(Landroid/os/ICancellationSignal;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    nop

    .line 150
    .end local v2    # "_arg0":Landroid/os/ICancellationSignal;
    :goto_5e
    return v1

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_30
        :pswitch_25
        :pswitch_1e
    .end packed-switch
.end method
