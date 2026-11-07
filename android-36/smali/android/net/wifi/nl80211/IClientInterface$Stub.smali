.class public abstract Landroid/net/wifi/nl80211/IClientInterface$Stub;
.super Landroid/os/Binder;
.source "IClientInterface.java"

# interfaces
.implements Landroid/net/wifi/nl80211/IClientInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/IClientInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/IClientInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_SendMgmtFrame:I = 0x6

.field static final blacklist TRANSACTION_getInterfaceName:I = 0x4

.field static final blacklist TRANSACTION_getMacAddress:I = 0x3

.field static final blacklist TRANSACTION_getPacketCounters:I = 0x1

.field static final blacklist TRANSACTION_getWifiScannerImpl:I = 0x5

.field static final blacklist TRANSACTION_signalPoll:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 82
    const-string v0, "android.net.wifi.nl80211.IClientInterface"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/nl80211/IClientInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IClientInterface;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 90
    if-nez p0, :cond_4

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 93
    :cond_4
    const-string v0, "android.net.wifi.nl80211.IClientInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 94
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/nl80211/IClientInterface;

    if-eqz v1, :cond_14

    .line 95
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/nl80211/IClientInterface;

    return-object v1

    .line 97
    :cond_14
    new-instance v1, Landroid/net/wifi/nl80211/IClientInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/nl80211/IClientInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 106
    packed-switch p0, :pswitch_data_1a

    .line 134
    const/4 v0, 0x0

    return-object v0

    .line 130
    :pswitch_5
    const-string v0, "SendMgmtFrame"

    return-object v0

    .line 126
    :pswitch_8
    const-string/jumbo v0, "getWifiScannerImpl"

    return-object v0

    .line 122
    :pswitch_c
    const-string v0, "getInterfaceName"

    return-object v0

    .line 118
    :pswitch_f
    const-string v0, "getMacAddress"

    return-object v0

    .line 114
    :pswitch_12
    const-string/jumbo v0, "signalPoll"

    return-object v0

    .line 110
    :pswitch_16
    const-string v0, "getPacketCounters"

    return-object v0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_16
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 101
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 360
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 141
    invoke-static {p1}, Landroid/net/wifi/nl80211/IClientInterface$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 145
    const-string v0, "android.net.wifi.nl80211.IClientInterface"

    .line 146
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 147
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 150
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    return v1

    .line 153
    :cond_16
    packed-switch p1, :pswitch_data_6e

    .line 204
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 193
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 195
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/nl80211/ISendMgmtFrameEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/ISendMgmtFrameEvent;

    move-result-object v3

    .line 197
    .local v3, "_arg1":Landroid/net/wifi/nl80211/ISendMgmtFrameEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 198
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/wifi/nl80211/IClientInterface$Stub;->SendMgmtFrame([BLandroid/net/wifi/nl80211/ISendMgmtFrameEvent;I)V

    .line 200
    goto :goto_6c

    .line 185
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":Landroid/net/wifi/nl80211/ISendMgmtFrameEvent;
    .end local v4    # "_arg2":I
    :pswitch_35
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IClientInterface$Stub;->getWifiScannerImpl()Landroid/net/wifi/nl80211/IWifiScannerImpl;

    move-result-object v2

    .line 186
    .local v2, "_result":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 188
    goto :goto_6c

    .line 178
    .end local v2    # "_result":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    :pswitch_40
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IClientInterface$Stub;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    goto :goto_6c

    .line 171
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_4b
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IClientInterface$Stub;->getMacAddress()[B

    move-result-object v2

    .line 172
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 174
    goto :goto_6c

    .line 164
    .end local v2    # "_result":[B
    :pswitch_56
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IClientInterface$Stub;->signalPoll()[I

    move-result-object v2

    .line 165
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 167
    goto :goto_6c

    .line 157
    .end local v2    # "_result":[I
    :pswitch_61
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IClientInterface$Stub;->getPacketCounters()[I

    move-result-object v2

    .line 158
    .restart local v2    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 160
    nop

    .line 207
    .end local v2    # "_result":[I
    :goto_6c
    return v1

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_61
        :pswitch_56
        :pswitch_4b
        :pswitch_40
        :pswitch_35
        :pswitch_1e
    .end packed-switch
.end method
