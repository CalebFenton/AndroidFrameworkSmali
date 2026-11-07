.class public abstract Landroid/net/connectivity/android/net/INetworkOfferCallback$Stub;
.super Landroid/os/Binder;
.source "INetworkOfferCallback.java"

# interfaces
.implements Landroid/net/connectivity/android/net/INetworkOfferCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/INetworkOfferCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/INetworkOfferCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onNetworkNeeded:I = 0x1

.field static final blacklist TRANSACTION_onNetworkUnneeded:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    const-string v0, "android.net.connectivity.android.net.INetworkOfferCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/connectivity/android/net/INetworkOfferCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/INetworkOfferCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 75
    if-nez p0, :cond_4

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_4
    const-string v0, "android.net.connectivity.android.net.INetworkOfferCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 79
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/connectivity/android/net/INetworkOfferCallback;

    if-eqz v1, :cond_14

    .line 80
    move-object v1, v0

    check-cast v1, Landroid/net/connectivity/android/net/INetworkOfferCallback;

    return-object v1

    .line 82
    :cond_14
    new-instance v1, Landroid/net/connectivity/android/net/INetworkOfferCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/connectivity/android/net/INetworkOfferCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 91
    packed-switch p0, :pswitch_data_c

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 99
    :pswitch_5
    const-string v0, "onNetworkUnneeded"

    return-object v0

    .line 95
    :pswitch_8
    const-string v0, "onNetworkNeeded"

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

    .line 86
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 110
    invoke-static {p1}, Landroid/net/connectivity/android/net/INetworkOfferCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 114
    const-string v0, "android.net.connectivity.android.net.INetworkOfferCallback"

    .line 115
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 116
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 119
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    return v1

    .line 122
    :cond_16
    packed-switch p1, :pswitch_data_38

    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 134
    :pswitch_1e
    sget-object v2, Landroid/net/NetworkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkRequest;

    .line 135
    .local v2, "_arg0":Landroid/net/NetworkRequest;
    invoke-virtual {p0, v2}, Landroid/net/connectivity/android/net/INetworkOfferCallback$Stub;->onNetworkUnneeded(Landroid/net/NetworkRequest;)V

    .line 136
    goto :goto_36

    .line 127
    .end local v2    # "_arg0":Landroid/net/NetworkRequest;
    :pswitch_2a
    sget-object v2, Landroid/net/NetworkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkRequest;

    .line 128
    .restart local v2    # "_arg0":Landroid/net/NetworkRequest;
    invoke-virtual {p0, v2}, Landroid/net/connectivity/android/net/INetworkOfferCallback$Stub;->onNetworkNeeded(Landroid/net/NetworkRequest;)V

    .line 129
    nop

    .line 143
    .end local v2    # "_arg0":Landroid/net/NetworkRequest;
    :goto_36
    return v1

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
