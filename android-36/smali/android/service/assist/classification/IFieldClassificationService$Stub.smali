.class public abstract Landroid/service/assist/classification/IFieldClassificationService$Stub;
.super Landroid/os/Binder;
.source "IFieldClassificationService.java"

# interfaces
.implements Landroid/service/assist/classification/IFieldClassificationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/assist/classification/IFieldClassificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/assist/classification/IFieldClassificationService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onConnected:I = 0x1

.field static final blacklist TRANSACTION_onDisconnected:I = 0x2

.field static final blacklist TRANSACTION_onFieldClassificationRequest:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "android.service.assist.classification.IFieldClassificationService"

    invoke-virtual {p0, p0, v0}, Landroid/service/assist/classification/IFieldClassificationService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/assist/classification/IFieldClassificationService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 49
    if-nez p0, :cond_4

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_4
    const-string v0, "android.service.assist.classification.IFieldClassificationService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/assist/classification/IFieldClassificationService;

    if-eqz v1, :cond_14

    .line 54
    move-object v1, v0

    check-cast v1, Landroid/service/assist/classification/IFieldClassificationService;

    return-object v1

    .line 56
    :cond_14
    new-instance v1, Landroid/service/assist/classification/IFieldClassificationService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/assist/classification/IFieldClassificationService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 65
    packed-switch p0, :pswitch_data_12

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 77
    :pswitch_5
    const-string/jumbo v0, "onFieldClassificationRequest"

    return-object v0

    .line 73
    :pswitch_9
    const-string/jumbo v0, "onDisconnected"

    return-object v0

    .line 69
    :pswitch_d
    const-string/jumbo v0, "onConnected"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 60
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 193
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 88
    invoke-static {p1}, Landroid/service/assist/classification/IFieldClassificationService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 92
    const-string v0, "android.service.assist.classification.IFieldClassificationService"

    .line 93
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 94
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 97
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v1

    .line 100
    :cond_16
    packed-switch p1, :pswitch_data_4a

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 120
    :pswitch_1e
    sget-object v2, Landroid/service/assist/classification/FieldClassificationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/assist/classification/FieldClassificationRequest;

    .line 122
    .local v2, "_arg0":Landroid/service/assist/classification/FieldClassificationRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/assist/classification/IFieldClassificationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/assist/classification/IFieldClassificationCallback;

    move-result-object v3

    .line 123
    .local v3, "_arg1":Landroid/service/assist/classification/IFieldClassificationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, v2, v3}, Landroid/service/assist/classification/IFieldClassificationService$Stub;->onFieldClassificationRequest(Landroid/service/assist/classification/FieldClassificationRequest;Landroid/service/assist/classification/IFieldClassificationCallback;)V

    .line 125
    goto :goto_48

    .line 114
    .end local v2    # "_arg0":Landroid/service/assist/classification/FieldClassificationRequest;
    .end local v3    # "_arg1":Landroid/service/assist/classification/IFieldClassificationCallback;
    :pswitch_35
    invoke-virtual {p0}, Landroid/service/assist/classification/IFieldClassificationService$Stub;->onDisconnected()V

    .line 115
    goto :goto_48

    .line 105
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 107
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 108
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 109
    invoke-virtual {p0, v2, v3}, Landroid/service/assist/classification/IFieldClassificationService$Stub;->onConnected(ZZ)V

    .line 110
    nop

    .line 132
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :goto_48
    return v1

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_39
        :pswitch_35
        :pswitch_1e
    .end packed-switch
.end method
