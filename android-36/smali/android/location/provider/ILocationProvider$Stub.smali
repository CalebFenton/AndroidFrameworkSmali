.class public abstract Landroid/location/provider/ILocationProvider$Stub;
.super Landroid/os/Binder;
.source "ILocationProvider.java"

# interfaces
.implements Landroid/location/provider/ILocationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/provider/ILocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/provider/ILocationProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_flush:I = 0x3

.field static final blacklist TRANSACTION_sendExtraCommand:I = 0x4

.field static final blacklist TRANSACTION_setLocationProviderManager:I = 0x1

.field static final blacklist TRANSACTION_setRequest:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.location.provider.ILocationProvider"

    invoke-virtual {p0, p0, v0}, Landroid/location/provider/ILocationProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/location/provider/ILocationProvider;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_4
    const-string v0, "android.location.provider.ILocationProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/location/provider/ILocationProvider;

    if-eqz v1, :cond_14

    .line 57
    move-object v1, v0

    check-cast v1, Landroid/location/provider/ILocationProvider;

    return-object v1

    .line 59
    :cond_14
    new-instance v1, Landroid/location/provider/ILocationProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/provider/ILocationProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 68
    packed-switch p0, :pswitch_data_12

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 84
    :pswitch_5
    const-string v0, "sendExtraCommand"

    return-object v0

    .line 80
    :pswitch_8
    const-string v0, "flush"

    return-object v0

    .line 76
    :pswitch_b
    const-string v0, "setRequest"

    return-object v0

    .line 72
    :pswitch_e
    const-string v0, "setLocationProviderManager"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 63
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 218
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 95
    invoke-static {p1}, Landroid/location/provider/ILocationProvider$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 99
    const-string v0, "android.location.provider.ILocationProvider"

    .line 100
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 101
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 104
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v1

    .line 107
    :cond_16
    packed-switch p1, :pswitch_data_54

    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 133
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 136
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {p0, v2, v3}, Landroid/location/provider/ILocationProvider$Stub;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 138
    goto :goto_53

    .line 127
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_31
    invoke-virtual {p0}, Landroid/location/provider/ILocationProvider$Stub;->flush()V

    .line 128
    goto :goto_53

    .line 120
    :pswitch_35
    sget-object v2, Landroid/location/provider/ProviderRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/provider/ProviderRequest;

    .line 121
    .local v2, "_arg0":Landroid/location/provider/ProviderRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    invoke-virtual {p0, v2}, Landroid/location/provider/ILocationProvider$Stub;->setRequest(Landroid/location/provider/ProviderRequest;)V

    .line 123
    goto :goto_53

    .line 112
    .end local v2    # "_arg0":Landroid/location/provider/ProviderRequest;
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/provider/ILocationProviderManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/ILocationProviderManager;

    move-result-object v2

    .line 113
    .local v2, "_arg0":Landroid/location/provider/ILocationProviderManager;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 114
    invoke-virtual {p0, v2}, Landroid/location/provider/ILocationProvider$Stub;->setLocationProviderManager(Landroid/location/provider/ILocationProviderManager;)V

    .line 115
    nop

    .line 145
    .end local v2    # "_arg0":Landroid/location/provider/ILocationProviderManager;
    :goto_53
    return v1

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_44
        :pswitch_35
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
