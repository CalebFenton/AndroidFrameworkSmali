.class public abstract Landroid/service/assist/classification/IFieldClassificationCallback$Stub;
.super Landroid/os/Binder;
.source "IFieldClassificationCallback.java"

# interfaces
.implements Landroid/service/assist/classification/IFieldClassificationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/assist/classification/IFieldClassificationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/assist/classification/IFieldClassificationCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancel:I = 0x5

.field static final blacklist TRANSACTION_isCompleted:I = 0x4

.field static final blacklist TRANSACTION_onCancellable:I = 0x1

.field static final blacklist TRANSACTION_onFailure:I = 0x3

.field static final blacklist TRANSACTION_onSuccess:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "android.service.assist.classification.IFieldClassificationCallback"

    invoke-virtual {p0, p0, v0}, Landroid/service/assist/classification/IFieldClassificationCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/assist/classification/IFieldClassificationCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_4
    const-string v0, "android.service.assist.classification.IFieldClassificationCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/assist/classification/IFieldClassificationCallback;

    if-eqz v1, :cond_14

    .line 61
    move-object v1, v0

    check-cast v1, Landroid/service/assist/classification/IFieldClassificationCallback;

    return-object v1

    .line 63
    :cond_14
    new-instance v1, Landroid/service/assist/classification/IFieldClassificationCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/assist/classification/IFieldClassificationCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 72
    packed-switch p0, :pswitch_data_18

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 92
    :pswitch_5
    const-string v0, "cancel"

    return-object v0

    .line 88
    :pswitch_8
    const-string/jumbo v0, "isCompleted"

    return-object v0

    .line 84
    :pswitch_c
    const-string/jumbo v0, "onFailure"

    return-object v0

    .line 80
    :pswitch_10
    const-string/jumbo v0, "onSuccess"

    return-object v0

    .line 76
    :pswitch_14
    const-string/jumbo v0, "onCancellable"

    return-object v0

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

    .line 67
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 260
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 103
    invoke-static {p1}, Landroid/service/assist/classification/IFieldClassificationCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 107
    const-string v0, "android.service.assist.classification.IFieldClassificationCallback"

    .line 108
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 109
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 112
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    return v1

    .line 115
    :cond_16
    packed-switch p1, :pswitch_data_5c

    .line 156
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 150
    :pswitch_1e
    invoke-virtual {p0}, Landroid/service/assist/classification/IFieldClassificationCallback$Stub;->cancel()V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    goto :goto_5b

    .line 143
    :pswitch_25
    invoke-virtual {p0}, Landroid/service/assist/classification/IFieldClassificationCallback$Stub;->isCompleted()Z

    move-result v2

    .line 144
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 146
    goto :goto_5b

    .line 137
    .end local v2    # "_result":Z
    :pswitch_30
    invoke-virtual {p0}, Landroid/service/assist/classification/IFieldClassificationCallback$Stub;->onFailure()V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    goto :goto_5b

    .line 129
    :pswitch_37
    sget-object v2, Landroid/service/assist/classification/FieldClassificationResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/assist/classification/FieldClassificationResponse;

    .line 130
    .local v2, "_arg0":Landroid/service/assist/classification/FieldClassificationResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, v2}, Landroid/service/assist/classification/IFieldClassificationCallback$Stub;->onSuccess(Landroid/service/assist/classification/FieldClassificationResponse;)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    goto :goto_5b

    .line 120
    .end local v2    # "_arg0":Landroid/service/assist/classification/FieldClassificationResponse;
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v2

    .line 121
    .local v2, "_arg0":Landroid/os/ICancellationSignal;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    invoke-virtual {p0, v2}, Landroid/service/assist/classification/IFieldClassificationCallback$Stub;->onCancellable(Landroid/os/ICancellationSignal;)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    nop

    .line 159
    .end local v2    # "_arg0":Landroid/os/ICancellationSignal;
    :goto_5b
    return v1

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_49
        :pswitch_37
        :pswitch_30
        :pswitch_25
        :pswitch_1e
    .end packed-switch
.end method
