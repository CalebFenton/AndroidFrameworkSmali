.class public abstract Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;
.super Landroid/os/Binder;
.source "IWifiAwareEventCallback.java"

# interfaces
.implements Landroid/net/wifi/aware/IWifiAwareEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/IWifiAwareEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.aware.IWifiAwareEventCallback"

.field static final blacklist TRANSACTION_onAttachTerminate:I = 0x4

.field static final blacklist TRANSACTION_onClusterIdChanged:I = 0x5

.field static final greylist-max-o TRANSACTION_onConnectFail:I = 0x2

.field static final greylist-max-o TRANSACTION_onConnectSuccess:I = 0x1

.field static final greylist-max-o TRANSACTION_onIdentityChanged:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "android.net.wifi.aware.IWifiAwareEventCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/net/wifi/aware/IWifiAwareEventCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_4
    const-string v0, "android.net.wifi.aware.IWifiAwareEventCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/aware/IWifiAwareEventCallback;

    if-eqz v1, :cond_14

    .line 60
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/aware/IWifiAwareEventCallback;

    return-object v1

    .line 62
    :cond_14
    new-instance v1, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 71
    packed-switch p0, :pswitch_data_14

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 91
    :pswitch_5
    const-string v0, "onClusterIdChanged"

    return-object v0

    .line 87
    :pswitch_8
    const-string v0, "onAttachTerminate"

    return-object v0

    .line 83
    :pswitch_b
    const-string v0, "onIdentityChanged"

    return-object v0

    .line 79
    :pswitch_e
    const-string v0, "onConnectFail"

    return-object v0

    .line 75
    :pswitch_11
    const-string v0, "onConnectSuccess"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 66
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 244
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 102
    invoke-static {p1}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 106
    const-string v0, "android.net.wifi.aware.IWifiAwareEventCallback"

    .line 107
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 108
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 111
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    return v1

    .line 114
    :cond_16
    packed-switch p1, :pswitch_data_48

    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 145
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 147
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 148
    .local v3, "_arg1":[B
    invoke-virtual {p0, v2, v3}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;->onClusterIdChanged(I[B)V

    .line 149
    goto :goto_46

    .line 139
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_2a
    invoke-virtual {p0}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;->onAttachTerminate()V

    .line 140
    goto :goto_46

    .line 133
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 134
    .local v2, "_arg0":[B
    invoke-virtual {p0, v2}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;->onIdentityChanged([B)V

    .line 135
    goto :goto_46

    .line 126
    .end local v2    # "_arg0":[B
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 127
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;->onConnectFail(I)V

    .line 128
    goto :goto_46

    .line 119
    .end local v2    # "_arg0":I
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 120
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;->onConnectSuccess(I)V

    .line 121
    nop

    .line 156
    .end local v2    # "_arg0":I
    :goto_46
    return v1

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_36
        :pswitch_2e
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
