.class public abstract Landroid/net/wifi/p2p/IWifiP2pListener$Stub;
.super Landroid/os/Binder;
.source "IWifiP2pListener.java"

# interfaces
.implements Landroid/net/wifi/p2p/IWifiP2pListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/IWifiP2pListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/IWifiP2pListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onDeviceConfigurationChanged:I = 0x4

.field static final blacklist TRANSACTION_onDiscoveryStateChanged:I = 0x2

.field static final blacklist TRANSACTION_onFrequencyChanged:I = 0xd

.field static final blacklist TRANSACTION_onGroupCreated:I = 0xa

.field static final blacklist TRANSACTION_onGroupCreating:I = 0x7

.field static final blacklist TRANSACTION_onGroupCreationFailed:I = 0x9

.field static final blacklist TRANSACTION_onGroupNegotiationRejectedByUser:I = 0x8

.field static final blacklist TRANSACTION_onGroupRemoved:I = 0xe

.field static final blacklist TRANSACTION_onListenStateChanged:I = 0x3

.field static final blacklist TRANSACTION_onP2pStateChanged:I = 0x1

.field static final blacklist TRANSACTION_onPeerClientDisconnected:I = 0xc

.field static final blacklist TRANSACTION_onPeerClientJoined:I = 0xb

.field static final blacklist TRANSACTION_onPeerListChanged:I = 0x5

.field static final blacklist TRANSACTION_onPersistentGroupsChanged:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 72
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 73
    const-string v0, "android.net.wifi.p2p.IWifiP2pListener"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/p2p/IWifiP2pListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/p2p/IWifiP2pListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 81
    if-nez p0, :cond_4

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_4
    const-string v0, "android.net.wifi.p2p.IWifiP2pListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 85
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/p2p/IWifiP2pListener;

    if-eqz v1, :cond_14

    .line 86
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/p2p/IWifiP2pListener;

    return-object v1

    .line 88
    :cond_14
    new-instance v1, Landroid/net/wifi/p2p/IWifiP2pListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/p2p/IWifiP2pListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 97
    packed-switch p0, :pswitch_data_30

    .line 157
    const/4 v0, 0x0

    return-object v0

    .line 153
    :pswitch_5
    const-string v0, "onGroupRemoved"

    return-object v0

    .line 149
    :pswitch_8
    const-string v0, "onFrequencyChanged"

    return-object v0

    .line 145
    :pswitch_b
    const-string v0, "onPeerClientDisconnected"

    return-object v0

    .line 141
    :pswitch_e
    const-string v0, "onPeerClientJoined"

    return-object v0

    .line 137
    :pswitch_11
    const-string v0, "onGroupCreated"

    return-object v0

    .line 133
    :pswitch_14
    const-string v0, "onGroupCreationFailed"

    return-object v0

    .line 129
    :pswitch_17
    const-string v0, "onGroupNegotiationRejectedByUser"

    return-object v0

    .line 125
    :pswitch_1a
    const-string v0, "onGroupCreating"

    return-object v0

    .line 121
    :pswitch_1d
    const-string v0, "onPersistentGroupsChanged"

    return-object v0

    .line 117
    :pswitch_20
    const-string v0, "onPeerListChanged"

    return-object v0

    .line 113
    :pswitch_23
    const-string v0, "onDeviceConfigurationChanged"

    return-object v0

    .line 109
    :pswitch_26
    const-string v0, "onListenStateChanged"

    return-object v0

    .line 105
    :pswitch_29
    const-string v0, "onDiscoveryStateChanged"

    return-object v0

    .line 101
    :pswitch_2c
    const-string v0, "onP2pStateChanged"

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
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

    .line 92
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 487
    const/16 v0, 0xd

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 164
    invoke-static {p1}, Landroid/net/wifi/p2p/IWifiP2pListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 168
    const-string v0, "android.net.wifi.p2p.IWifiP2pListener"

    .line 169
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 170
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 173
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    return v1

    .line 176
    :cond_16
    packed-switch p1, :pswitch_data_c2

    .line 280
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 275
    :pswitch_1e
    invoke-virtual {p0}, Landroid/net/wifi/p2p/IWifiP2pListener$Stub;->onGroupRemoved()V

    .line 276
    goto/16 :goto_c1

    .line 267
    :pswitch_23
    sget-object v2, Landroid/net/wifi/p2p/WifiP2pInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 269
    .local v2, "_arg0":Landroid/net/wifi/p2p/WifiP2pInfo;
    sget-object v3, Landroid/net/wifi/p2p/WifiP2pGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 270
    .local v3, "_arg1":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {p0, v2, v3}, Landroid/net/wifi/p2p/IWifiP2pListener$Stub;->onFrequencyChanged(Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 271
    goto/16 :goto_c1

    .line 258
    .end local v2    # "_arg0":Landroid/net/wifi/p2p/WifiP2pInfo;
    .end local v3    # "_arg1":Landroid/net/wifi/p2p/WifiP2pGroup;
    :pswitch_38
    sget-object v2, Landroid/net/wifi/p2p/WifiP2pInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 260
    .restart local v2    # "_arg0":Landroid/net/wifi/p2p/WifiP2pInfo;
    sget-object v3, Landroid/net/wifi/p2p/WifiP2pGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 261
    .restart local v3    # "_arg1":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {p0, v2, v3}, Landroid/net/wifi/p2p/IWifiP2pListener$Stub;->onPeerClientDisconnected(Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 262
    goto/16 :goto_c1

    .line 249
    .end local v2    # "_arg0":Landroid/net/wifi/p2p/WifiP2pInfo;
    .end local v3    # "_arg1":Landroid/net/wifi/p2p/WifiP2pGroup;
    :pswitch_4d
    sget-object v2, Landroid/net/wifi/p2p/WifiP2pInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 251
    .restart local v2    # "_arg0":Landroid/net/wifi/p2p/WifiP2pInfo;
    sget-object v3, Landroid/net/wifi/p2p/WifiP2pGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 252
    .restart local v3    # "_arg1":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {p0, v2, v3}, Landroid/net/wifi/p2p/IWifiP2pListener$Stub;->onPeerClientJoined(Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 253
    goto :goto_c1

    .line 240
    .end local v2    # "_arg0":Landroid/net/wifi/p2p/WifiP2pInfo;
    .end local v3    # "_arg1":Landroid/net/wifi/p2p/WifiP2pGroup;
    :pswitch_61
    sget-object v2, Landroid/net/wifi/p2p/WifiP2pInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 242
    .restart local v2    # "_arg0":Landroid/net/wifi/p2p/WifiP2pInfo;
    sget-object v3, Landroid/net/wifi/p2p/WifiP2pGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 243
    .restart local v3    # "_arg1":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {p0, v2, v3}, Landroid/net/wifi/p2p/IWifiP2pListener$Stub;->onGroupCreated(Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 244
    goto :goto_c1

    .line 233
    .end local v2    # "_arg0":Landroid/net/wifi/p2p/WifiP2pInfo;
    .end local v3    # "_arg1":Landroid/net/wifi/p2p/WifiP2pGroup;
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 234
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/p2p/IWifiP2pListener$Stub;->onGroupCreationFailed(I)V

    .line 235
    goto :goto_c1

    .line 227
    .end local v2    # "_arg0":I
    :pswitch_7d
    invoke-virtual {p0}, Landroid/net/wifi/p2p/IWifiP2pListener$Stub;->onGroupNegotiationRejectedByUser()V

    .line 228
    goto :goto_c1

    .line 222
    :pswitch_81
    invoke-virtual {p0}, Landroid/net/wifi/p2p/IWifiP2pListener$Stub;->onGroupCreating()V

    .line 223
    goto :goto_c1

    .line 216
    :pswitch_85
    sget-object v2, Landroid/net/wifi/p2p/WifiP2pGroupList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pGroupList;

    .line 217
    .local v2, "_arg0":Landroid/net/wifi/p2p/WifiP2pGroupList;
    invoke-virtual {p0, v2}, Landroid/net/wifi/p2p/IWifiP2pListener$Stub;->onPersistentGroupsChanged(Landroid/net/wifi/p2p/WifiP2pGroupList;)V

    .line 218
    goto :goto_c1

    .line 209
    .end local v2    # "_arg0":Landroid/net/wifi/p2p/WifiP2pGroupList;
    :pswitch_91
    sget-object v2, Landroid/net/wifi/p2p/WifiP2pDeviceList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 210
    .local v2, "_arg0":Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-virtual {p0, v2}, Landroid/net/wifi/p2p/IWifiP2pListener$Stub;->onPeerListChanged(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    .line 211
    goto :goto_c1

    .line 202
    .end local v2    # "_arg0":Landroid/net/wifi/p2p/WifiP2pDeviceList;
    :pswitch_9d
    sget-object v2, Landroid/net/wifi/p2p/WifiP2pDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 203
    .local v2, "_arg0":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {p0, v2}, Landroid/net/wifi/p2p/IWifiP2pListener$Stub;->onDeviceConfigurationChanged(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 204
    goto :goto_c1

    .line 195
    .end local v2    # "_arg0":Landroid/net/wifi/p2p/WifiP2pDevice;
    :pswitch_a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 196
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/p2p/IWifiP2pListener$Stub;->onListenStateChanged(I)V

    .line 197
    goto :goto_c1

    .line 188
    .end local v2    # "_arg0":I
    :pswitch_b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 189
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/p2p/IWifiP2pListener$Stub;->onDiscoveryStateChanged(I)V

    .line 190
    goto :goto_c1

    .line 181
    .end local v2    # "_arg0":I
    :pswitch_b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 182
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/p2p/IWifiP2pListener$Stub;->onP2pStateChanged(I)V

    .line 183
    nop

    .line 283
    .end local v2    # "_arg0":I
    :goto_c1
    return v1

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_b9
        :pswitch_b1
        :pswitch_a9
        :pswitch_9d
        :pswitch_91
        :pswitch_85
        :pswitch_81
        :pswitch_7d
        :pswitch_75
        :pswitch_61
        :pswitch_4d
        :pswitch_38
        :pswitch_23
        :pswitch_1e
    .end packed-switch
.end method
