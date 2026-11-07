.class public abstract Landroid/net/wifi/IWifiConnectedNetworkScorer$Stub;
.super Landroid/os/Binder;
.source "IWifiConnectedNetworkScorer.java"

# interfaces
.implements Landroid/net/wifi/IWifiConnectedNetworkScorer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiConnectedNetworkScorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiConnectedNetworkScorer$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onNetworkSwitchAccepted:I = 0x4

.field static final blacklist TRANSACTION_onNetworkSwitchRejected:I = 0x5

.field static final blacklist TRANSACTION_onSetScoreUpdateObserver:I = 0x3

.field static final blacklist TRANSACTION_onStart:I = 0x1

.field static final blacklist TRANSACTION_onStop:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "android.net.wifi.IWifiConnectedNetworkScorer"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiConnectedNetworkScorer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiConnectedNetworkScorer;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_4
    const-string v0, "android.net.wifi.IWifiConnectedNetworkScorer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/IWifiConnectedNetworkScorer;

    if-eqz v1, :cond_14

    .line 60
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/IWifiConnectedNetworkScorer;

    return-object v1

    .line 62
    :cond_14
    new-instance v1, Landroid/net/wifi/IWifiConnectedNetworkScorer$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IWifiConnectedNetworkScorer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "onNetworkSwitchRejected"

    return-object v0

    .line 87
    :pswitch_8
    const-string v0, "onNetworkSwitchAccepted"

    return-object v0

    .line 83
    :pswitch_b
    const-string v0, "onSetScoreUpdateObserver"

    return-object v0

    .line 79
    :pswitch_e
    const-string v0, "onStop"

    return-object v0

    .line 75
    :pswitch_11
    const-string v0, "onStart"

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

    .line 254
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 102
    invoke-static {p1}, Landroid/net/wifi/IWifiConnectedNetworkScorer$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
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
    const-string v0, "android.net.wifi.IWifiConnectedNetworkScorer"

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
    packed-switch p1, :pswitch_data_60

    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 151
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 153
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 155
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/wifi/IWifiConnectedNetworkScorer$Stub;->onNetworkSwitchRejected(IILjava/lang/String;)V

    .line 157
    goto :goto_5e

    .line 140
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 142
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 144
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 145
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/wifi/IWifiConnectedNetworkScorer$Stub;->onNetworkSwitchAccepted(IILjava/lang/String;)V

    .line 146
    goto :goto_5e

    .line 133
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/IScoreUpdateObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IScoreUpdateObserver;

    move-result-object v2

    .line 134
    .local v2, "_arg0":Landroid/net/wifi/IScoreUpdateObserver;
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiConnectedNetworkScorer$Stub;->onSetScoreUpdateObserver(Landroid/net/wifi/IScoreUpdateObserver;)V

    .line 135
    goto :goto_5e

    .line 126
    .end local v2    # "_arg0":Landroid/net/wifi/IScoreUpdateObserver;
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 127
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiConnectedNetworkScorer$Stub;->onStop(I)V

    .line 128
    goto :goto_5e

    .line 119
    .end local v2    # "_arg0":I
    :pswitch_52
    sget-object v2, Landroid/net/wifi/WifiConnectedSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConnectedSessionInfo;

    .line 120
    .local v2, "_arg0":Landroid/net/wifi/WifiConnectedSessionInfo;
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiConnectedNetworkScorer$Stub;->onStart(Landroid/net/wifi/WifiConnectedSessionInfo;)V

    .line 121
    nop

    .line 164
    .end local v2    # "_arg0":Landroid/net/wifi/WifiConnectedSessionInfo;
    :goto_5e
    return v1

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_52
        :pswitch_4a
        :pswitch_3e
        :pswitch_2e
        :pswitch_1e
    .end packed-switch
.end method
