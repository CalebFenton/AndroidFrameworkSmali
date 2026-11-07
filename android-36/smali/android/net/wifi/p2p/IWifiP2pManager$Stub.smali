.class public abstract Landroid/net/wifi/p2p/IWifiP2pManager$Stub;
.super Landroid/os/Binder;
.source "IWifiP2pManager.java"

# interfaces
.implements Landroid/net/wifi/p2p/IWifiP2pManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/IWifiP2pManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/IWifiP2pManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.p2p.IWifiP2pManager"

.field static final greylist-max-o TRANSACTION_checkConfigureWifiDisplayPermission:I = 0x5

.field static final greylist-max-o TRANSACTION_close:I = 0x3

.field static final greylist-max-o TRANSACTION_getMessenger:I = 0x1

.field static final greylist-max-o TRANSACTION_getP2pStateMachineMessenger:I = 0x2

.field static final blacklist TRANSACTION_getSupportedFeatures:I = 0x6

.field static final blacklist TRANSACTION_registerWifiP2pListener:I = 0x7

.field static final greylist-max-o TRANSACTION_setMiracastMode:I = 0x4

.field static final blacklist TRANSACTION_unregisterWifiP2pListener:I = 0x8


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 59
    const-string v0, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static greylist-max-r asInterface(Landroid/os/IBinder;)Landroid/net/wifi/p2p/IWifiP2pManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 67
    if-nez p0, :cond_4

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_4
    const-string v0, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 71
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/p2p/IWifiP2pManager;

    if-eqz v1, :cond_14

    .line 72
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/p2p/IWifiP2pManager;

    return-object v1

    .line 74
    :cond_14
    new-instance v1, Landroid/net/wifi/p2p/IWifiP2pManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 83
    packed-switch p0, :pswitch_data_1e

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 115
    :pswitch_5
    const-string v0, "unregisterWifiP2pListener"

    return-object v0

    .line 111
    :pswitch_8
    const-string v0, "registerWifiP2pListener"

    return-object v0

    .line 107
    :pswitch_b
    const-string v0, "getSupportedFeatures"

    return-object v0

    .line 103
    :pswitch_e
    const-string v0, "checkConfigureWifiDisplayPermission"

    return-object v0

    .line 99
    :pswitch_11
    const-string v0, "setMiracastMode"

    return-object v0

    .line 95
    :pswitch_14
    const-string v0, "close"

    return-object v0

    .line 91
    :pswitch_17
    const-string v0, "getP2pStateMachineMessenger"

    return-object v0

    .line 87
    :pswitch_1a
    const-string v0, "getMessenger"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_17
        :pswitch_14
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

    .line 78
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 371
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 126
    invoke-static {p1}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    const-string v0, "android.net.wifi.p2p.IWifiP2pManager"

    .line 131
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 132
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 135
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    return v1

    .line 138
    :cond_16
    packed-switch p1, :pswitch_data_94

    .line 210
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 203
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/p2p/IWifiP2pListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/p2p/IWifiP2pListener;

    move-result-object v2

    .line 204
    .local v2, "_arg0":Landroid/net/wifi/p2p/IWifiP2pListener;
    invoke-virtual {p0, v2}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->unregisterWifiP2pListener(Landroid/net/wifi/p2p/IWifiP2pListener;)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    goto :goto_93

    .line 191
    .end local v2    # "_arg0":Landroid/net/wifi/p2p/IWifiP2pListener;
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/p2p/IWifiP2pListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/p2p/IWifiP2pListener;

    move-result-object v2

    .line 193
    .restart local v2    # "_arg0":Landroid/net/wifi/p2p/IWifiP2pListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 196
    .local v4, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->registerWifiP2pListener(Landroid/net/wifi/p2p/IWifiP2pListener;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    goto :goto_93

    .line 183
    .end local v2    # "_arg0":Landroid/net/wifi/p2p/IWifiP2pListener;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_48
    invoke-virtual {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->getSupportedFeatures()J

    move-result-wide v2

    .line 184
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 186
    goto :goto_93

    .line 177
    .end local v2    # "_result":J
    :pswitch_53
    invoke-virtual {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->checkConfigureWifiDisplayPermission()V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    goto :goto_93

    .line 170
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 171
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->setMiracastMode(I)V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    goto :goto_93

    .line 163
    .end local v2    # "_arg0":I
    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 164
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->close(Landroid/os/IBinder;)V

    .line 165
    goto :goto_93

    .line 155
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_6d
    invoke-virtual {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->getP2pStateMachineMessenger()Landroid/os/Messenger;

    move-result-object v2

    .line 156
    .local v2, "_result":Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 158
    goto :goto_93

    .line 143
    .end local v2    # "_result":Landroid/os/Messenger;
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 145
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 147
    .restart local v3    # "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 148
    .restart local v4    # "_arg2":Landroid/os/Bundle;
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->getMessenger(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Messenger;

    move-result-object v5

    .line 149
    .local v5, "_result":Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 151
    nop

    .line 213
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    .end local v5    # "_result":Landroid/os/Messenger;
    :goto_93
    return v1

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_78
        :pswitch_6d
        :pswitch_65
        :pswitch_5a
        :pswitch_53
        :pswitch_48
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
