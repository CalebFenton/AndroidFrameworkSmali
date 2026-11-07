.class public abstract Landroid/net/wifi/hotspot2/IProvisioningCallback$Stub;
.super Landroid/os/Binder;
.source "IProvisioningCallback.java"

# interfaces
.implements Landroid/net/wifi/hotspot2/IProvisioningCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/IProvisioningCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hotspot2/IProvisioningCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.hotspot2.IProvisioningCallback"

.field static final blacklist TRANSACTION_onProvisioningComplete:I = 0x3

.field static final greylist-max-o TRANSACTION_onProvisioningFailure:I = 0x1

.field static final greylist-max-o TRANSACTION_onProvisioningStatus:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.net.wifi.hotspot2.IProvisioningCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/hotspot2/IProvisioningCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/net/wifi/hotspot2/IProvisioningCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_4
    const-string v0, "android.net.wifi.hotspot2.IProvisioningCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/hotspot2/IProvisioningCallback;

    if-eqz v1, :cond_14

    .line 57
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/hotspot2/IProvisioningCallback;

    return-object v1

    .line 59
    :cond_14
    new-instance v1, Landroid/net/wifi/hotspot2/IProvisioningCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/hotspot2/IProvisioningCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 68
    packed-switch p0, :pswitch_data_e

    .line 84
    const/4 v0, 0x0

    return-object v0

    .line 80
    :pswitch_5
    const-string v0, "onProvisioningComplete"

    return-object v0

    .line 76
    :pswitch_8
    const-string v0, "onProvisioningStatus"

    return-object v0

    .line 72
    :pswitch_b
    const-string v0, "onProvisioningFailure"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x1
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

    .line 193
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 91
    invoke-static {p1}, Landroid/net/wifi/hotspot2/IProvisioningCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 95
    const-string v0, "android.net.wifi.hotspot2.IProvisioningCallback"

    .line 96
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 97
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 100
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v1

    .line 103
    :cond_16
    packed-switch p1, :pswitch_data_34

    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 121
    :pswitch_1e
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/IProvisioningCallback$Stub;->onProvisioningComplete()V

    .line 122
    goto :goto_32

    .line 115
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 116
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/hotspot2/IProvisioningCallback$Stub;->onProvisioningStatus(I)V

    .line 117
    goto :goto_32

    .line 108
    .end local v2    # "_arg0":I
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 109
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/hotspot2/IProvisioningCallback$Stub;->onProvisioningFailure(I)V

    .line 110
    nop

    .line 129
    .end local v2    # "_arg0":I
    :goto_32
    return v1

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_22
        :pswitch_1e
    .end packed-switch
.end method
