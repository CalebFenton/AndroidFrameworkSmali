.class public abstract Landroid/adservices/signals/IProtectedSignalsService$Stub;
.super Landroid/os/Binder;
.source "IProtectedSignalsService.java"

# interfaces
.implements Landroid/adservices/signals/IProtectedSignalsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/signals/IProtectedSignalsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/signals/IProtectedSignalsService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_updateSignals:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string v0, "android.adservices.signals.IProtectedSignalsService"

    invoke-virtual {p0, p0, v0}, Landroid/adservices/signals/IProtectedSignalsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/adservices/signals/IProtectedSignalsService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 43
    if-nez p0, :cond_4

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_4
    const-string v0, "android.adservices.signals.IProtectedSignalsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/adservices/signals/IProtectedSignalsService;

    if-eqz v1, :cond_14

    .line 48
    move-object v1, v0

    check-cast v1, Landroid/adservices/signals/IProtectedSignalsService;

    return-object v1

    .line 50
    :cond_14
    new-instance v1, Landroid/adservices/signals/IProtectedSignalsService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/adservices/signals/IProtectedSignalsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 59
    packed-switch p0, :pswitch_data_8

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 63
    :pswitch_5
    const-string v0, "updateSignals"

    return-object v0

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 54
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 74
    invoke-static {p1}, Landroid/adservices/signals/IProtectedSignalsService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 78
    const-string v0, "android.adservices.signals.IProtectedSignalsService"

    .line 79
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 80
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 83
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    return v1

    .line 86
    :cond_16
    packed-switch p1, :pswitch_data_36

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 91
    :pswitch_1e
    sget-object v2, Landroid/adservices/signals/UpdateSignalsInput;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/signals/UpdateSignalsInput;

    .line 93
    .local v2, "_arg0":Landroid/adservices/signals/UpdateSignalsInput;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/adservices/signals/UpdateSignalsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/signals/UpdateSignalsCallback;

    move-result-object v3

    .line 94
    .local v3, "_arg1":Landroid/adservices/signals/UpdateSignalsCallback;
    invoke-virtual {p0, v2, v3}, Landroid/adservices/signals/IProtectedSignalsService$Stub;->updateSignals(Landroid/adservices/signals/UpdateSignalsInput;Landroid/adservices/signals/UpdateSignalsCallback;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    nop

    .line 103
    .end local v2    # "_arg0":Landroid/adservices/signals/UpdateSignalsInput;
    .end local v3    # "_arg1":Landroid/adservices/signals/UpdateSignalsCallback;
    return v1

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method
