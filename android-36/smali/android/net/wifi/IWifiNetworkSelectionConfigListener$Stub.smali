.class public abstract Landroid/net/wifi/IWifiNetworkSelectionConfigListener$Stub;
.super Landroid/os/Binder;
.source "IWifiNetworkSelectionConfigListener.java"

# interfaces
.implements Landroid/net/wifi/IWifiNetworkSelectionConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiNetworkSelectionConfigListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiNetworkSelectionConfigListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onResult:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string v0, "android.net.wifi.IWifiNetworkSelectionConfigListener"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiNetworkSelectionConfigListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiNetworkSelectionConfigListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 43
    if-nez p0, :cond_4

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_4
    const-string v0, "android.net.wifi.IWifiNetworkSelectionConfigListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/IWifiNetworkSelectionConfigListener;

    if-eqz v1, :cond_14

    .line 48
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/IWifiNetworkSelectionConfigListener;

    return-object v1

    .line 50
    :cond_14
    new-instance v1, Landroid/net/wifi/IWifiNetworkSelectionConfigListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IWifiNetworkSelectionConfigListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "onResult"

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

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 74
    invoke-static {p1}, Landroid/net/wifi/IWifiNetworkSelectionConfigListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 78
    const-string v0, "android.net.wifi.IWifiNetworkSelectionConfigListener"

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
    packed-switch p1, :pswitch_data_2c

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 91
    :pswitch_1e
    sget-object v2, Landroid/net/wifi/WifiNetworkSelectionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiNetworkSelectionConfig;

    .line 92
    .local v2, "_arg0":Landroid/net/wifi/WifiNetworkSelectionConfig;
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiNetworkSelectionConfigListener$Stub;->onResult(Landroid/net/wifi/WifiNetworkSelectionConfig;)V

    .line 93
    nop

    .line 100
    .end local v2    # "_arg0":Landroid/net/wifi/WifiNetworkSelectionConfig;
    return v1

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method
