.class public final Landroid/bluetooth/le/AdvertisingSet;
.super Ljava/lang/Object;
.source "AdvertisingSet.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mAdvertise:Landroid/bluetooth/IBluetoothAdvertise;

.field private blacklist mAdvertiserId:I

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    const-class v0, Landroid/bluetooth/le/AdvertisingSet;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/le/AdvertisingSet;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/bluetooth/IBluetoothAdvertise;ILandroid/bluetooth/BluetoothAdapter;Landroid/content/AttributionSource;)V
    .registers 6
    .param p1, "advertise"    # Landroid/bluetooth/IBluetoothAdvertise;
    .param p2, "advertiserId"    # I
    .param p3, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p2, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    .line 56
    iput-object p4, p0, Landroid/bluetooth/le/AdvertisingSet;->mAttributionSource:Landroid/content/AttributionSource;

    .line 57
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothAdvertise;

    iput-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertise:Landroid/bluetooth/IBluetoothAdvertise;

    .line 58
    return-void
.end method


# virtual methods
.method public whitelist enableAdvertising(ZII)V
    .registers 10
    .param p1, "enable"    # Z
    .param p2, "duration"    # I
    .param p3, "maxExtendedAdvertisingEvents"    # I

    .line 80
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertise:Landroid/bluetooth/IBluetoothAdvertise;

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    iget-object v5, p0, Landroid/bluetooth/le/AdvertisingSet;->mAttributionSource:Landroid/content/AttributionSource;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_10

    move v2, p1

    move v3, p2

    move v4, p3

    .end local p1    # "enable":Z
    .end local p2    # "duration":I
    .end local p3    # "maxExtendedAdvertisingEvents":I
    .local v2, "enable":Z
    .local v3, "duration":I
    .local v4, "maxExtendedAdvertisingEvents":I
    :try_start_9
    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothAdvertise;->enableAdvertisingSet(IZIILandroid/content/AttributionSource;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    .line 88
    goto :goto_1c

    .line 86
    :catch_d
    move-exception v0

    move-object p1, v0

    goto :goto_15

    .end local v2    # "enable":Z
    .end local v3    # "duration":I
    .end local v4    # "maxExtendedAdvertisingEvents":I
    .restart local p1    # "enable":Z
    .restart local p2    # "duration":I
    .restart local p3    # "maxExtendedAdvertisingEvents":I
    :catch_10
    move-exception v0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object p1, v0

    .line 87
    .end local p2    # "duration":I
    .end local p3    # "maxExtendedAdvertisingEvents":I
    .restart local v2    # "enable":Z
    .restart local v3    # "duration":I
    .restart local v4    # "maxExtendedAdvertisingEvents":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_15
    sget-object p2, Landroid/bluetooth/le/AdvertisingSet;->TAG:Ljava/lang/String;

    const-string p3, "remote exception - "

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method

.method public whitelist getAdvertiserId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 244
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    return v0
.end method

.method public blacklist getOwnAddress()V
    .registers 4

    .line 227
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertise:Landroid/bluetooth/IBluetoothAdvertise;

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    iget-object v2, p0, Landroid/bluetooth/le/AdvertisingSet;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/IBluetoothAdvertise;->getOwnAddress(ILandroid/content/AttributionSource;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 230
    goto :goto_12

    .line 228
    :catch_a
    move-exception v0

    .line 229
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/bluetooth/le/AdvertisingSet;->TAG:Ljava/lang/String;

    const-string v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method blacklist setAdvertiserId(I)V
    .registers 2
    .param p1, "advertiserId"    # I

    .line 61
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    .line 62
    return-void
.end method

.method public whitelist setAdvertisingData(Landroid/bluetooth/le/AdvertiseData;)V
    .registers 5
    .param p1, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;

    .line 108
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertise:Landroid/bluetooth/IBluetoothAdvertise;

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    iget-object v2, p0, Landroid/bluetooth/le/AdvertisingSet;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, v2}, Landroid/bluetooth/IBluetoothAdvertise;->setAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;Landroid/content/AttributionSource;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 111
    goto :goto_12

    .line 109
    :catch_a
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/bluetooth/le/AdvertisingSet;->TAG:Ljava/lang/String;

    const-string v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public whitelist setAdvertisingParameters(Landroid/bluetooth/le/AdvertisingSetParameters;)V
    .registers 5
    .param p1, "parameters"    # Landroid/bluetooth/le/AdvertisingSetParameters;

    .line 152
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertise:Landroid/bluetooth/IBluetoothAdvertise;

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    iget-object v2, p0, Landroid/bluetooth/le/AdvertisingSet;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, v2}, Landroid/bluetooth/IBluetoothAdvertise;->setAdvertisingParameters(ILandroid/bluetooth/le/AdvertisingSetParameters;Landroid/content/AttributionSource;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 155
    goto :goto_12

    .line 153
    :catch_a
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/bluetooth/le/AdvertisingSet;->TAG:Ljava/lang/String;

    const-string v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public whitelist setPeriodicAdvertisingData(Landroid/bluetooth/le/AdvertiseData;)V
    .registers 5
    .param p1, "periodicData"    # Landroid/bluetooth/le/AdvertiseData;

    .line 190
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertise:Landroid/bluetooth/IBluetoothAdvertise;

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    iget-object v2, p0, Landroid/bluetooth/le/AdvertisingSet;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, v2}, Landroid/bluetooth/IBluetoothAdvertise;->setPeriodicAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;Landroid/content/AttributionSource;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 193
    goto :goto_12

    .line 191
    :catch_a
    move-exception v0

    .line 192
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/bluetooth/le/AdvertisingSet;->TAG:Ljava/lang/String;

    const-string v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public whitelist setPeriodicAdvertisingEnabled(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .line 207
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertise:Landroid/bluetooth/IBluetoothAdvertise;

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    iget-object v2, p0, Landroid/bluetooth/le/AdvertisingSet;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, v2}, Landroid/bluetooth/IBluetoothAdvertise;->setPeriodicAdvertisingEnable(IZLandroid/content/AttributionSource;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 210
    goto :goto_12

    .line 208
    :catch_a
    move-exception v0

    .line 209
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/bluetooth/le/AdvertisingSet;->TAG:Ljava/lang/String;

    const-string v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public whitelist setPeriodicAdvertisingParameters(Landroid/bluetooth/le/PeriodicAdvertisingParameters;)V
    .registers 5
    .param p1, "parameters"    # Landroid/bluetooth/le/PeriodicAdvertisingParameters;

    .line 168
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertise:Landroid/bluetooth/IBluetoothAdvertise;

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    iget-object v2, p0, Landroid/bluetooth/le/AdvertisingSet;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, v2}, Landroid/bluetooth/IBluetoothAdvertise;->setPeriodicAdvertisingParameters(ILandroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/content/AttributionSource;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 172
    goto :goto_12

    .line 170
    :catch_a
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/bluetooth/le/AdvertisingSet;->TAG:Ljava/lang/String;

    const-string v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public whitelist setScanResponseData(Landroid/bluetooth/le/AdvertiseData;)V
    .registers 5
    .param p1, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;

    .line 128
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertise:Landroid/bluetooth/IBluetoothAdvertise;

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    iget-object v2, p0, Landroid/bluetooth/le/AdvertisingSet;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, v2}, Landroid/bluetooth/IBluetoothAdvertise;->setScanResponseData(ILandroid/bluetooth/le/AdvertiseData;Landroid/content/AttributionSource;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 131
    goto :goto_12

    .line 129
    :catch_a
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/bluetooth/le/AdvertisingSet;->TAG:Ljava/lang/String;

    const-string v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method
