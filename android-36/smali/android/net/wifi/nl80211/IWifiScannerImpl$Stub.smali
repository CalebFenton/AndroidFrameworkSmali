.class public abstract Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;
.super Landroid/os/Binder;
.source "IWifiScannerImpl.java"

# interfaces
.implements Landroid/net/wifi/nl80211/IWifiScannerImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/IWifiScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_abortScan:I = 0xc

.field static final blacklist TRANSACTION_getMaxSsidsPerScan:I = 0x3

.field static final blacklist TRANSACTION_getPnoScanResults:I = 0x2

.field static final blacklist TRANSACTION_getScanResults:I = 0x1

.field static final blacklist TRANSACTION_scan:I = 0x4

.field static final blacklist TRANSACTION_scanRequest:I = 0x5

.field static final blacklist TRANSACTION_startPnoScan:I = 0xa

.field static final blacklist TRANSACTION_stopPnoScan:I = 0xb

.field static final blacklist TRANSACTION_subscribePnoScanEvents:I = 0x8

.field static final blacklist TRANSACTION_subscribeScanEvents:I = 0x6

.field static final blacklist TRANSACTION_unsubscribePnoScanEvents:I = 0x9

.field static final blacklist TRANSACTION_unsubscribeScanEvents:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 91
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 92
    const-string v0, "android.net.wifi.nl80211.IWifiScannerImpl"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IWifiScannerImpl;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 100
    if-nez p0, :cond_4

    .line 101
    const/4 v0, 0x0

    return-object v0

    .line 103
    :cond_4
    const-string v0, "android.net.wifi.nl80211.IWifiScannerImpl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 104
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/nl80211/IWifiScannerImpl;

    if-eqz v1, :cond_14

    .line 105
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/nl80211/IWifiScannerImpl;

    return-object v1

    .line 107
    :cond_14
    new-instance v1, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 116
    packed-switch p0, :pswitch_data_32

    .line 168
    const/4 v0, 0x0

    return-object v0

    .line 164
    :pswitch_5
    const-string v0, "abortScan"

    return-object v0

    .line 160
    :pswitch_8
    const-string/jumbo v0, "stopPnoScan"

    return-object v0

    .line 156
    :pswitch_c
    const-string/jumbo v0, "startPnoScan"

    return-object v0

    .line 152
    :pswitch_10
    const-string/jumbo v0, "unsubscribePnoScanEvents"

    return-object v0

    .line 148
    :pswitch_14
    const-string/jumbo v0, "subscribePnoScanEvents"

    return-object v0

    .line 144
    :pswitch_18
    const-string/jumbo v0, "unsubscribeScanEvents"

    return-object v0

    .line 140
    :pswitch_1c
    const-string/jumbo v0, "subscribeScanEvents"

    return-object v0

    .line 136
    :pswitch_20
    const-string/jumbo v0, "scanRequest"

    return-object v0

    .line 132
    :pswitch_24
    const-string/jumbo v0, "scan"

    return-object v0

    .line 128
    :pswitch_28
    const-string v0, "getMaxSsidsPerScan"

    return-object v0

    .line 124
    :pswitch_2b
    const-string v0, "getPnoScanResults"

    return-object v0

    .line 120
    :pswitch_2e
    const-string v0, "getScanResults"

    return-object v0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 111
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 520
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 175
    invoke-static {p1}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 179
    const-string v0, "android.net.wifi.nl80211.IWifiScannerImpl"

    .line 180
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 181
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 184
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    return v1

    .line 187
    :cond_16
    packed-switch p1, :pswitch_data_be

    .line 281
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 275
    :pswitch_1e
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->abortScan()V

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    goto/16 :goto_bd

    .line 268
    :pswitch_26
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->stopPnoScan()Z

    move-result v2

    .line 269
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 271
    goto/16 :goto_bd

    .line 259
    .end local v2    # "_result":Z
    :pswitch_32
    sget-object v2, Landroid/net/wifi/nl80211/PnoSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/nl80211/PnoSettings;

    .line 260
    .local v2, "_arg0":Landroid/net/wifi/nl80211/PnoSettings;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->startPnoScan(Landroid/net/wifi/nl80211/PnoSettings;)Z

    move-result v3

    .line 262
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 264
    goto/16 :goto_bd

    .line 253
    .end local v2    # "_arg0":Landroid/net/wifi/nl80211/PnoSettings;
    .end local v3    # "_result":Z
    :pswitch_49
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->unsubscribePnoScanEvents()V

    .line 254
    goto/16 :goto_bd

    .line 246
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/nl80211/IPnoScanEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IPnoScanEvent;

    move-result-object v2

    .line 247
    .local v2, "_arg0":Landroid/net/wifi/nl80211/IPnoScanEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->subscribePnoScanEvents(Landroid/net/wifi/nl80211/IPnoScanEvent;)V

    .line 249
    goto :goto_bd

    .line 240
    .end local v2    # "_arg0":Landroid/net/wifi/nl80211/IPnoScanEvent;
    :pswitch_5d
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->unsubscribeScanEvents()V

    .line 241
    goto :goto_bd

    .line 233
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/nl80211/IScanEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IScanEvent;

    move-result-object v2

    .line 234
    .local v2, "_arg0":Landroid/net/wifi/nl80211/IScanEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->subscribeScanEvents(Landroid/net/wifi/nl80211/IScanEvent;)V

    .line 236
    goto :goto_bd

    .line 223
    .end local v2    # "_arg0":Landroid/net/wifi/nl80211/IScanEvent;
    :pswitch_70
    sget-object v2, Landroid/net/wifi/nl80211/SingleScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/nl80211/SingleScanSettings;

    .line 224
    .local v2, "_arg0":Landroid/net/wifi/nl80211/SingleScanSettings;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->scanRequest(Landroid/net/wifi/nl80211/SingleScanSettings;)I

    move-result v3

    .line 226
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    goto :goto_bd

    .line 213
    .end local v2    # "_arg0":Landroid/net/wifi/nl80211/SingleScanSettings;
    .end local v3    # "_result":I
    :pswitch_86
    sget-object v2, Landroid/net/wifi/nl80211/SingleScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/nl80211/SingleScanSettings;

    .line 214
    .restart local v2    # "_arg0":Landroid/net/wifi/nl80211/SingleScanSettings;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->scan(Landroid/net/wifi/nl80211/SingleScanSettings;)Z

    move-result v3

    .line 216
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 218
    goto :goto_bd

    .line 205
    .end local v2    # "_arg0":Landroid/net/wifi/nl80211/SingleScanSettings;
    .end local v3    # "_result":Z
    :pswitch_9c
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->getMaxSsidsPerScan()I

    move-result v2

    .line 206
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    goto :goto_bd

    .line 198
    .end local v2    # "_result":I
    :pswitch_a7
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->getPnoScanResults()[Landroid/net/wifi/nl80211/NativeScanResult;

    move-result-object v2

    .line 199
    .local v2, "_result":[Landroid/net/wifi/nl80211/NativeScanResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 201
    goto :goto_bd

    .line 191
    .end local v2    # "_result":[Landroid/net/wifi/nl80211/NativeScanResult;
    :pswitch_b2
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->getScanResults()[Landroid/net/wifi/nl80211/NativeScanResult;

    move-result-object v2

    .line 192
    .restart local v2    # "_result":[Landroid/net/wifi/nl80211/NativeScanResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 194
    nop

    .line 284
    .end local v2    # "_result":[Landroid/net/wifi/nl80211/NativeScanResult;
    :goto_bd
    return v1

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_b2
        :pswitch_a7
        :pswitch_9c
        :pswitch_86
        :pswitch_70
        :pswitch_61
        :pswitch_5d
        :pswitch_4e
        :pswitch_49
        :pswitch_32
        :pswitch_26
        :pswitch_1e
    .end packed-switch
.end method
