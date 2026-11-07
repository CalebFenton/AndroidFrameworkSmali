.class Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOnDevicePersonalizationManagingService.java"

# interfaces
.implements Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 228
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 231
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist execute(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/adservices/ondevicepersonalization/CallerMetadata;Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback;)V
    .registers 12
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/content/ComponentName;
    .param p3, "wrappedParams"    # Landroid/os/Bundle;
    .param p4, "metadata"    # Landroid/adservices/ondevicepersonalization/CallerMetadata;
    .param p5, "options"    # Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;
    .param p6, "callback"    # Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    invoke-virtual {p0}, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 257
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 259
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.adservices.ondevicepersonalization.aidl.IOnDevicePersonalizationManagingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 262
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 263
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 264
    invoke-virtual {v0, p5, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 265
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 266
    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 267
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 270
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 272
    nop

    .line 273
    return-void

    .line 270
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 272
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 235
    const-string v0, "android.adservices.ondevicepersonalization.aidl.IOnDevicePersonalizationManagingService"

    return-object v0
.end method

.method public blacklist getVersion()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    invoke-virtual {p0}, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 240
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 243
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.adservices.ondevicepersonalization.aidl.IOnDevicePersonalizationManagingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 244
    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 245
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 246
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 249
    .end local v2    # "_status":Z
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 251
    nop

    .line 252
    return-object v3

    .line 249
    .end local v3    # "_result":Ljava/lang/String;
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 251
    throw v2
.end method

.method public blacklist isFeatureEnabled(Ljava/lang/String;Landroid/adservices/ondevicepersonalization/CallerMetadata;Landroid/adservices/ondevicepersonalization/aidl/IIsFeatureEnabledCallback;)V
    .registers 9
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "metadata"    # Landroid/adservices/ondevicepersonalization/CallerMetadata;
    .param p3, "callback"    # Landroid/adservices/ondevicepersonalization/aidl/IIsFeatureEnabledCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    invoke-virtual {p0}, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 317
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 319
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.adservices.ondevicepersonalization.aidl.IOnDevicePersonalizationManagingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 322
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 323
    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 324
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 327
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 329
    nop

    .line 330
    return-void

    .line 327
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 329
    throw v2
.end method

.method public blacklist logApiCallStats(Ljava/lang/String;IJJJI)V
    .registers 15
    .param p1, "sdkPackageName"    # Ljava/lang/String;
    .param p2, "apiName"    # I
    .param p3, "latencyMillis"    # J
    .param p5, "rpcCallLatencyMillis"    # J
    .param p7, "rpcReturnLatencyMillis"    # J
    .param p9, "responseCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 333
    invoke-virtual {p0}, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 334
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 336
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.adservices.ondevicepersonalization.aidl.IOnDevicePersonalizationManagingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 340
    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 341
    invoke-virtual {v0, p7, p8}, Landroid/os/Parcel;->writeLong(J)V

    .line 342
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 344
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 347
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 349
    nop

    .line 350
    return-void

    .line 347
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 349
    throw v2
.end method

.method public blacklist registerMeasurementEvent(ILandroid/os/Bundle;Landroid/adservices/ondevicepersonalization/CallerMetadata;Landroid/adservices/ondevicepersonalization/aidl/IRegisterMeasurementEventCallback;)V
    .registers 10
    .param p1, "measurementEventType"    # I
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "metadata"    # Landroid/adservices/ondevicepersonalization/CallerMetadata;
    .param p4, "callback"    # Landroid/adservices/ondevicepersonalization/aidl/IRegisterMeasurementEventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 298
    invoke-virtual {p0}, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 299
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 301
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.adservices.ondevicepersonalization.aidl.IOnDevicePersonalizationManagingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 304
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 305
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 306
    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 307
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 310
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 312
    nop

    .line 313
    return-void

    .line 310
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 312
    throw v2
.end method

.method public blacklist requestSurfacePackage(Ljava/lang/String;Landroid/os/IBinder;IIILandroid/adservices/ondevicepersonalization/CallerMetadata;Landroid/adservices/ondevicepersonalization/aidl/IRequestSurfacePackageCallback;)V
    .registers 13
    .param p1, "slotResultToken"    # Ljava/lang/String;
    .param p2, "hostToken"    # Landroid/os/IBinder;
    .param p3, "displayId"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "metadata"    # Landroid/adservices/ondevicepersonalization/CallerMetadata;
    .param p7, "callback"    # Landroid/adservices/ondevicepersonalization/aidl/IRequestSurfacePackageCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 276
    invoke-virtual {p0}, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 277
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 279
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.adservices.ondevicepersonalization.aidl.IOnDevicePersonalizationManagingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 282
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    const/4 v2, 0x0

    invoke-virtual {v0, p6, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 286
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 287
    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 288
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_39

    .line 291
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 293
    nop

    .line 294
    return-void

    .line 291
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 293
    throw v2
.end method
