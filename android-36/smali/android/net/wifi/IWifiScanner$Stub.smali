.class public abstract Landroid/net/wifi/IWifiScanner$Stub;
.super Landroid/os/Binder;
.source "IWifiScanner.java"

# interfaces
.implements Landroid/net/wifi/IWifiScanner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiScanner$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiScanner"

.field static final blacklist TRANSACTION_enableVerboseLogging:I = 0xf

.field static final greylist-max-o TRANSACTION_getAvailableChannels:I = 0x1

.field static final blacklist TRANSACTION_getCachedScanData:I = 0xc

.field static final blacklist TRANSACTION_getScanResults:I = 0x8

.field static final blacklist TRANSACTION_getSingleScanResults:I = 0xb

.field static final blacklist TRANSACTION_isScanning:I = 0x2

.field static final blacklist TRANSACTION_registerScanListener:I = 0x4

.field static final blacklist TRANSACTION_setScanningEnabled:I = 0x3

.field static final blacklist TRANSACTION_startBackgroundScan:I = 0x6

.field static final blacklist TRANSACTION_startPnoScan:I = 0xd

.field static final blacklist TRANSACTION_startScan:I = 0x9

.field static final blacklist TRANSACTION_stopBackgroundScan:I = 0x7

.field static final blacklist TRANSACTION_stopPnoScan:I = 0xe

.field static final blacklist TRANSACTION_stopScan:I = 0xa

.field static final blacklist TRANSACTION_unregisterScanListener:I = 0x5


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 77
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 78
    const-string v0, "android.net.wifi.IWifiScanner"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiScanner$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiScanner;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 86
    if-nez p0, :cond_4

    .line 87
    const/4 v0, 0x0

    return-object v0

    .line 89
    :cond_4
    const-string v0, "android.net.wifi.IWifiScanner"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 90
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/IWifiScanner;

    if-eqz v1, :cond_14

    .line 91
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/IWifiScanner;

    return-object v1

    .line 93
    :cond_14
    new-instance v1, Landroid/net/wifi/IWifiScanner$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IWifiScanner$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 102
    packed-switch p0, :pswitch_data_32

    .line 166
    const/4 v0, 0x0

    return-object v0

    .line 162
    :pswitch_5
    const-string v0, "enableVerboseLogging"

    return-object v0

    .line 158
    :pswitch_8
    const-string v0, "stopPnoScan"

    return-object v0

    .line 154
    :pswitch_b
    const-string v0, "startPnoScan"

    return-object v0

    .line 150
    :pswitch_e
    const-string v0, "getCachedScanData"

    return-object v0

    .line 146
    :pswitch_11
    const-string v0, "getSingleScanResults"

    return-object v0

    .line 142
    :pswitch_14
    const-string v0, "stopScan"

    return-object v0

    .line 138
    :pswitch_17
    const-string v0, "startScan"

    return-object v0

    .line 134
    :pswitch_1a
    const-string v0, "getScanResults"

    return-object v0

    .line 130
    :pswitch_1d
    const-string v0, "stopBackgroundScan"

    return-object v0

    .line 126
    :pswitch_20
    const-string v0, "startBackgroundScan"

    return-object v0

    .line 122
    :pswitch_23
    const-string v0, "unregisterScanListener"

    return-object v0

    .line 118
    :pswitch_26
    const-string v0, "registerScanListener"

    return-object v0

    .line 114
    :pswitch_29
    const-string v0, "setScanningEnabled"

    return-object v0

    .line 110
    :pswitch_2c
    const-string v0, "isScanning"

    return-object v0

    .line 106
    :pswitch_2f
    const-string v0, "getAvailableChannels"

    return-object v0

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2f
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

    .line 97
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 685
    const/16 v0, 0xe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 173
    invoke-static {p1}, Landroid/net/wifi/IWifiScanner$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    const-string v6, "android.net.wifi.IWifiScanner"

    .line 178
    .local v6, "descriptor":Ljava/lang/String;
    const/4 v7, 0x1

    if-lt p1, v7, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 179
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 182
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    return v7

    .line 185
    :cond_16
    packed-switch p1, :pswitch_data_19c

    .line 374
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 367
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 368
    .local v1, "_arg0":Z
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiScanner$Stub;->enableVerboseLogging(Z)V

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    goto/16 :goto_19b

    .line 355
    .end local v1    # "_arg0":Z
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IWifiScannerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiScannerListener;

    move-result-object v1

    .line 357
    .local v1, "_arg0":Landroid/net/wifi/IWifiScannerListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 359
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 360
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/IWifiScanner$Stub;->stopPnoScan(Landroid/net/wifi/IWifiScannerListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    goto/16 :goto_19b

    .line 339
    .end local v1    # "_arg0":Landroid/net/wifi/IWifiScannerListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IWifiScannerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiScannerListener;

    move-result-object v1

    .line 341
    .restart local v1    # "_arg0":Landroid/net/wifi/IWifiScannerListener;
    sget-object v2, Landroid/net/wifi/WifiScanner$ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 343
    .local v2, "_arg1":Landroid/net/wifi/WifiScanner$ScanSettings;
    sget-object v3, Landroid/net/wifi/WifiScanner$PnoSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiScanner$PnoSettings;

    .line 345
    .local v3, "_arg2":Landroid/net/wifi/WifiScanner$PnoSettings;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 347
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 348
    .local v5, "_arg4":Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/net/wifi/IWifiScanner$Stub;->startPnoScan(Landroid/net/wifi/IWifiScannerListener;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    goto/16 :goto_19b

    .line 327
    .end local v1    # "_arg0":Landroid/net/wifi/IWifiScannerListener;
    .end local v2    # "_arg1":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local v3    # "_arg2":Landroid/net/wifi/WifiScanner$PnoSettings;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/IScanDataListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IScanDataListener;

    move-result-object v3

    .line 332
    .local v3, "_arg2":Landroid/net/wifi/IScanDataListener;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/IWifiScanner$Stub;->getCachedScanData(Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/IScanDataListener;)V

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    goto/16 :goto_19b

    .line 316
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/net/wifi/IScanDataListener;
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 318
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 319
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiScanner$Stub;->getSingleScanResults(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 320
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    invoke-static {p3, v3, v7}, Landroid/net/wifi/IWifiScanner$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 322
    goto/16 :goto_19b

    .line 304
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IWifiScannerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiScannerListener;

    move-result-object v1

    .line 306
    .local v1, "_arg0":Landroid/net/wifi/IWifiScannerListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 308
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 309
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/IWifiScanner$Stub;->stopScan(Landroid/net/wifi/IWifiScannerListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    goto/16 :goto_19b

    .line 288
    .end local v1    # "_arg0":Landroid/net/wifi/IWifiScannerListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_af
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IWifiScannerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiScannerListener;

    move-result-object v1

    .line 290
    .restart local v1    # "_arg0":Landroid/net/wifi/IWifiScannerListener;
    sget-object v2, Landroid/net/wifi/WifiScanner$ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 292
    .local v2, "_arg1":Landroid/net/wifi/WifiScanner$ScanSettings;
    sget-object v3, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource;

    .line 294
    .local v3, "_arg2":Landroid/os/WorkSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 296
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 297
    .restart local v5    # "_arg4":Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/net/wifi/IWifiScanner$Stub;->startScan(Landroid/net/wifi/IWifiScannerListener;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    goto/16 :goto_19b

    .line 277
    .end local v1    # "_arg0":Landroid/net/wifi/IWifiScannerListener;
    .end local v2    # "_arg1":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local v3    # "_arg2":Landroid/os/WorkSource;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    :pswitch_d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiScanner$Stub;->getScanResults(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 281
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 283
    goto/16 :goto_19b

    .line 265
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IWifiScannerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiScannerListener;

    move-result-object v1

    .line 267
    .local v1, "_arg0":Landroid/net/wifi/IWifiScannerListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 269
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/IWifiScanner$Stub;->stopBackgroundScan(Landroid/net/wifi/IWifiScannerListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    goto/16 :goto_19b

    .line 249
    .end local v1    # "_arg0":Landroid/net/wifi/IWifiScannerListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_104
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IWifiScannerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiScannerListener;

    move-result-object v1

    .line 251
    .restart local v1    # "_arg0":Landroid/net/wifi/IWifiScannerListener;
    sget-object v2, Landroid/net/wifi/WifiScanner$ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 253
    .local v2, "_arg1":Landroid/net/wifi/WifiScanner$ScanSettings;
    sget-object v3, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource;

    .line 255
    .local v3, "_arg2":Landroid/os/WorkSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 257
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 258
    .restart local v5    # "_arg4":Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/net/wifi/IWifiScanner$Stub;->startBackgroundScan(Landroid/net/wifi/IWifiScannerListener;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    goto :goto_19b

    .line 237
    .end local v1    # "_arg0":Landroid/net/wifi/IWifiScannerListener;
    .end local v2    # "_arg1":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local v3    # "_arg2":Landroid/os/WorkSource;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    :pswitch_12c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IWifiScannerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiScannerListener;

    move-result-object v1

    .line 239
    .restart local v1    # "_arg0":Landroid/net/wifi/IWifiScannerListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/IWifiScanner$Stub;->unregisterScanListener(Landroid/net/wifi/IWifiScannerListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    goto :goto_19b

    .line 225
    .end local v1    # "_arg0":Landroid/net/wifi/IWifiScannerListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_143
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IWifiScannerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiScannerListener;

    move-result-object v1

    .line 227
    .restart local v1    # "_arg0":Landroid/net/wifi/IWifiScannerListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 229
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 230
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/IWifiScanner$Stub;->registerScanListener(Landroid/net/wifi/IWifiScannerListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    goto :goto_19b

    .line 212
    .end local v1    # "_arg0":Landroid/net/wifi/IWifiScannerListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_15a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 214
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 216
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 217
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/IWifiScanner$Stub;->setScanningEnabled(ZILjava/lang/String;)Z

    move-result v4

    .line 218
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 220
    goto :goto_19b

    .line 204
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_171
    invoke-virtual {p0}, Landroid/net/wifi/IWifiScanner$Stub;->isScanning()Z

    move-result v1

    .line 205
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 207
    goto :goto_19b

    .line 190
    .end local v1    # "_result":Z
    :pswitch_17c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 192
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 196
    .restart local v3    # "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 197
    .local v4, "_arg3":Landroid/os/Bundle;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/wifi/IWifiScanner$Stub;->getAvailableChannels(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 198
    .local v5, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v5, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 200
    nop

    .line 377
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/os/Bundle;
    .end local v5    # "_result":Landroid/os/Bundle;
    :goto_19b
    return v7

    :pswitch_data_19c
    .packed-switch 0x1
        :pswitch_17c
        :pswitch_171
        :pswitch_15a
        :pswitch_143
        :pswitch_12c
        :pswitch_104
        :pswitch_ec
        :pswitch_d8
        :pswitch_af
        :pswitch_97
        :pswitch_83
        :pswitch_6b
        :pswitch_42
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
