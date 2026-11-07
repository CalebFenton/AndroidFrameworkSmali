.class public abstract Landroid/net/wifi/INetworkRequestMatchCallback$Stub;
.super Landroid/os/Binder;
.source "INetworkRequestMatchCallback.java"

# interfaces
.implements Landroid/net/wifi/INetworkRequestMatchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/INetworkRequestMatchCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/INetworkRequestMatchCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAbort:I = 0x2

.field static final blacklist TRANSACTION_onMatch:I = 0x3

.field static final blacklist TRANSACTION_onUserSelectionCallbackRegistration:I = 0x1

.field static final blacklist TRANSACTION_onUserSelectionConnectFailure:I = 0x5

.field static final blacklist TRANSACTION_onUserSelectionConnectSuccess:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "android.net.wifi.INetworkRequestMatchCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/INetworkRequestMatchCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/INetworkRequestMatchCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_4
    const-string v0, "android.net.wifi.INetworkRequestMatchCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/INetworkRequestMatchCallback;

    if-eqz v1, :cond_14

    .line 60
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/INetworkRequestMatchCallback;

    return-object v1

    .line 62
    :cond_14
    new-instance v1, Landroid/net/wifi/INetworkRequestMatchCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/INetworkRequestMatchCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "onUserSelectionConnectFailure"

    return-object v0

    .line 87
    :pswitch_8
    const-string v0, "onUserSelectionConnectSuccess"

    return-object v0

    .line 83
    :pswitch_b
    const-string v0, "onMatch"

    return-object v0

    .line 79
    :pswitch_e
    const-string v0, "onAbort"

    return-object v0

    .line 75
    :pswitch_11
    const-string v0, "onUserSelectionCallbackRegistration"

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

    .line 239
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 102
    invoke-static {p1}, Landroid/net/wifi/INetworkRequestMatchCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 106
    const-string v0, "android.net.wifi.INetworkRequestMatchCallback"

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
    packed-switch p1, :pswitch_data_52

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 145
    :pswitch_1e
    sget-object v2, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 146
    .local v2, "_arg0":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v2}, Landroid/net/wifi/INetworkRequestMatchCallback$Stub;->onUserSelectionConnectFailure(Landroid/net/wifi/WifiConfiguration;)V

    .line 147
    goto :goto_50

    .line 138
    .end local v2    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :pswitch_2a
    sget-object v2, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 139
    .restart local v2    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v2}, Landroid/net/wifi/INetworkRequestMatchCallback$Stub;->onUserSelectionConnectSuccess(Landroid/net/wifi/WifiConfiguration;)V

    .line 140
    goto :goto_50

    .line 131
    .end local v2    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :pswitch_36
    sget-object v2, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 132
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p0, v2}, Landroid/net/wifi/INetworkRequestMatchCallback$Stub;->onMatch(Ljava/util/List;)V

    .line 133
    goto :goto_50

    .line 125
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :pswitch_40
    invoke-virtual {p0}, Landroid/net/wifi/INetworkRequestMatchCallback$Stub;->onAbort()V

    .line 126
    goto :goto_50

    .line 119
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/INetworkRequestUserSelectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/INetworkRequestUserSelectionCallback;

    move-result-object v2

    .line 120
    .local v2, "_arg0":Landroid/net/wifi/INetworkRequestUserSelectionCallback;
    invoke-virtual {p0, v2}, Landroid/net/wifi/INetworkRequestMatchCallback$Stub;->onUserSelectionCallbackRegistration(Landroid/net/wifi/INetworkRequestUserSelectionCallback;)V

    .line 121
    nop

    .line 154
    .end local v2    # "_arg0":Landroid/net/wifi/INetworkRequestUserSelectionCallback;
    :goto_50
    return v1

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_44
        :pswitch_40
        :pswitch_36
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
