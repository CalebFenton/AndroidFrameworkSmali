.class public abstract Landroid/adservices/common/IAdServicesCommonStatesCallback$Stub;
.super Landroid/os/Binder;
.source "IAdServicesCommonStatesCallback.java"

# interfaces
.implements Landroid/adservices/common/IAdServicesCommonStatesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/common/IAdServicesCommonStatesCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/common/IAdServicesCommonStatesCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onFailure:I = 0x2

.field static final blacklist TRANSACTION_onResult:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "android.adservices.common.IAdServicesCommonStatesCallback"

    invoke-virtual {p0, p0, v0}, Landroid/adservices/common/IAdServicesCommonStatesCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/adservices/common/IAdServicesCommonStatesCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_4
    const-string v0, "android.adservices.common.IAdServicesCommonStatesCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/adservices/common/IAdServicesCommonStatesCallback;

    if-eqz v1, :cond_14

    .line 50
    move-object v1, v0

    check-cast v1, Landroid/adservices/common/IAdServicesCommonStatesCallback;

    return-object v1

    .line 52
    :cond_14
    new-instance v1, Landroid/adservices/common/IAdServicesCommonStatesCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/adservices/common/IAdServicesCommonStatesCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 61
    packed-switch p0, :pswitch_data_c

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 69
    :pswitch_5
    const-string v0, "onFailure"

    return-object v0

    .line 65
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

    .line 56
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 80
    invoke-static {p1}, Landroid/adservices/common/IAdServicesCommonStatesCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 84
    const-string v0, "android.adservices.common.IAdServicesCommonStatesCallback"

    .line 85
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 86
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 89
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    return v1

    .line 92
    :cond_16
    packed-switch p1, :pswitch_data_34

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 104
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 105
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/adservices/common/IAdServicesCommonStatesCallback$Stub;->onFailure(I)V

    .line 106
    goto :goto_32

    .line 97
    .end local v2    # "_arg0":I
    :pswitch_26
    sget-object v2, Landroid/adservices/common/AdServicesCommonStatesResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/common/AdServicesCommonStatesResponse;

    .line 98
    .local v2, "_arg0":Landroid/adservices/common/AdServicesCommonStatesResponse;
    invoke-virtual {p0, v2}, Landroid/adservices/common/IAdServicesCommonStatesCallback$Stub;->onResult(Landroid/adservices/common/AdServicesCommonStatesResponse;)V

    .line 99
    nop

    .line 113
    .end local v2    # "_arg0":Landroid/adservices/common/AdServicesCommonStatesResponse;
    :goto_32
    return v1

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_26
        :pswitch_1e
    .end packed-switch
.end method
