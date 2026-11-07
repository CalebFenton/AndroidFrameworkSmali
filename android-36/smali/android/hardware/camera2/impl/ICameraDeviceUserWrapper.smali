.class public Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;
.super Ljava/lang/Object;
.source "ICameraDeviceUserWrapper.java"


# instance fields
.field private final greylist-max-o mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/hardware/camera2/ICameraDeviceUser;)V
    .registers 4
    .param p1, "remoteDevice"    # Landroid/hardware/camera2/ICameraDeviceUser;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-eqz p1, :cond_8

    .line 51
    iput-object p1, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    .line 52
    return-void

    .line 49
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Remote device may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist-max-o beginConfigure()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 113
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0}, Landroid/hardware/camera2/ICameraDeviceUser;->beginConfigure()V
    :try_end_5
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 118
    nop

    .line 119
    return-void

    .line 116
    :catch_7
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1

    .line 114
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o cancelRequest(I)J
    .registers 4
    .param p1, "requestId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 103
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0, p1}, Landroid/hardware/camera2/ICameraDeviceUser;->cancelRequest(I)J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 106
    :catch_7
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1

    .line 104
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .registers 4
    .param p1, "templateId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 177
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0, p1}, Landroid/hardware/camera2/ICameraDeviceUser;->createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 180
    :catch_7
    move-exception v0

    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1

    .line 178
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 179
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1
.end method

.method public blacklist createInputStream(IIIZ)I
    .registers 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I
    .param p4, "isMultiResolution"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 157
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/camera2/ICameraDeviceUser;->createInputStream(IIIZ)I

    move-result v0
    :try_end_6
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 160
    :catch_7
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1

    .line 158
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I
    .registers 4
    .param p1, "outputConfiguration"    # Landroid/hardware/camera2/params/OutputConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 146
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0, p1}, Landroid/hardware/camera2/ICameraDeviceUser;->createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I

    move-result v0
    :try_end_6
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 149
    :catch_7
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1

    .line 147
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o deleteStream(I)V
    .registers 4
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 135
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0, p1}, Landroid/hardware/camera2/ICameraDeviceUser;->deleteStream(I)V
    :try_end_5
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 140
    nop

    .line 141
    return-void

    .line 138
    :catch_7
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1

    .line 136
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o disconnect()V
    .registers 2

    .line 62
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0}, Landroid/hardware/camera2/ICameraDeviceUser;->disconnect()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 65
    goto :goto_7

    .line 63
    :catch_6
    move-exception v0

    .line 66
    :goto_7
    return-void
.end method

.method public blacklist endConfigure(ILandroid/hardware/camera2/impl/CameraMetadataNative;J)[I
    .registers 7
    .param p1, "operatingMode"    # I
    .param p2, "sessionParams"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p3, "startTimeMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 124
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    if-nez p2, :cond_a

    .line 125
    new-instance v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    goto :goto_b

    :cond_a
    move-object v1, p2

    .line 124
    :goto_b
    invoke-interface {v0, p1, v1, p3, p4}, Landroid/hardware/camera2/ICameraDeviceUser;->endConfigure(ILandroid/hardware/camera2/impl/CameraMetadataNative;J)[I

    move-result-object v0
    :try_end_f
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_f} :catch_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v0

    .line 128
    :catch_10
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1

    .line 126
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_16
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o finalizeOutputConfigurations(ILandroid/hardware/camera2/params/OutputConfiguration;)V
    .registers 5
    .param p1, "streamId"    # I
    .param p2, "deferredConfig"    # Landroid/hardware/camera2/params/OutputConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 288
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0, p1, p2}, Landroid/hardware/camera2/ICameraDeviceUser;->finalizeOutputConfigurations(ILandroid/hardware/camera2/params/OutputConfiguration;)V
    :try_end_5
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 293
    nop

    .line 294
    return-void

    .line 291
    :catch_7
    move-exception v0

    .line 292
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1

    .line 289
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 290
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o flush()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 225
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0}, Landroid/hardware/camera2/ICameraDeviceUser;->flush()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 228
    :catch_7
    move-exception v0

    .line 229
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1

    .line 226
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 227
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getCameraInfo()Landroid/hardware/camera2/impl/CameraMetadataNative;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 187
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0}, Landroid/hardware/camera2/ICameraDeviceUser;->getCameraInfo()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 190
    :catch_7
    move-exception v0

    .line 191
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1

    .line 188
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getCaptureResultMetadataQueue()Landroid/hardware/common/fmq/MQDescriptor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/common/fmq/MQDescriptor<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 331
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0}, Landroid/hardware/camera2/ICameraDeviceUser;->getCaptureResultMetadataQueue()Landroid/hardware/common/fmq/MQDescriptor;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 334
    :catch_7
    move-exception v0

    .line 335
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1

    .line 332
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 333
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getGlobalAudioRestriction()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 308
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0}, Landroid/hardware/camera2/ICameraDeviceUser;->getGlobalAudioRestriction()I

    move-result v0
    :try_end_6
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 311
    :catch_7
    move-exception v0

    .line 312
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1

    .line 309
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 310
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getInputSurface()Landroid/view/Surface;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 167
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0}, Landroid/hardware/camera2/ICameraDeviceUser;->getInputSurface()Landroid/view/Surface;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 170
    :catch_7
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1

    .line 168
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isPrimaryClient()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 321
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0}, Landroid/hardware/camera2/ICameraDeviceUser;->isPrimaryClient()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 324
    :catch_7
    move-exception v0

    .line 325
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1

    .line 322
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 323
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isSessionConfigurationSupported(Landroid/hardware/camera2/params/SessionConfiguration;)Z
    .registers 5
    .param p1, "sessionConfig"    # Landroid/hardware/camera2/params/SessionConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 208
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0, p1}, Landroid/hardware/camera2/ICameraDeviceUser;->isSessionConfigurationSupported(Landroid/hardware/camera2/params/SessionConfiguration;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 218
    :catch_7
    move-exception v0

    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1

    .line 209
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_26

    .line 213
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_21

    .line 214
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid session configuration"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    :cond_21
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1

    .line 211
    :cond_26
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Session configuration query not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o prepare(I)V
    .registers 4
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 235
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0, p1}, Landroid/hardware/camera2/ICameraDeviceUser;->prepare(I)V
    :try_end_5
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 240
    nop

    .line 241
    return-void

    .line 238
    :catch_7
    move-exception v0

    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1

    .line 236
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 237
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o prepare2(II)V
    .registers 5
    .param p1, "maxCount"    # I
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 255
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0, p1, p2}, Landroid/hardware/camera2/ICameraDeviceUser;->prepare2(II)V
    :try_end_5
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 260
    nop

    .line 261
    return-void

    .line 258
    :catch_7
    move-exception v0

    .line 259
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1

    .line 256
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 257
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setCameraAudioRestriction(I)V
    .registers 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 298
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0, p1}, Landroid/hardware/camera2/ICameraDeviceUser;->setCameraAudioRestriction(I)V
    :try_end_5
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 303
    nop

    .line 304
    return-void

    .line 301
    :catch_7
    move-exception v0

    .line 302
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1

    .line 299
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 300
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1
.end method

.method public blacklist startStreaming([I[I)Landroid/hardware/camera2/utils/SubmitInfo;
    .registers 5
    .param p1, "streamIdxArray"    # [I
    .param p2, "surfaceIdxArray"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 71
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0, p1, p2}, Landroid/hardware/camera2/ICameraDeviceUser;->startStreaming([I[I)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 74
    :catch_7
    move-exception v0

    .line 75
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1

    .line 72
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 73
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o submitRequest(Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;
    .registers 5
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "streaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 82
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0, p1, p2}, Landroid/hardware/camera2/ICameraDeviceUser;->submitRequest(Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 85
    :catch_7
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1

    .line 83
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 84
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;
    .registers 5
    .param p1, "requestList"    # [Landroid/hardware/camera2/CaptureRequest;
    .param p2, "streaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 93
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0, p1, p2}, Landroid/hardware/camera2/ICameraDeviceUser;->submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 96
    :catch_7
    move-exception v0

    .line 97
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1

    .line 94
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1
.end method

.method public blacklist switchToOffline(Landroid/hardware/camera2/ICameraDeviceCallbacks;[I)Landroid/hardware/camera2/ICameraOfflineSession;
    .registers 5
    .param p1, "cbs"    # Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .param p2, "offlineOutputIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 277
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0, p1, p2}, Landroid/hardware/camera2/ICameraDeviceUser;->switchToOffline(Landroid/hardware/camera2/ICameraDeviceCallbacks;[I)Landroid/hardware/camera2/ICameraOfflineSession;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 280
    :catch_7
    move-exception v0

    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1

    .line 278
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 279
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o tearDown(I)V
    .registers 4
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 245
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0, p1}, Landroid/hardware/camera2/ICameraDeviceUser;->tearDown(I)V
    :try_end_5
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 250
    nop

    .line 251
    return-void

    .line 248
    :catch_7
    move-exception v0

    .line 249
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1

    .line 246
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 247
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .registers 4
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I

    .line 55
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0}, Landroid/hardware/camera2/ICameraDeviceUser;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 56
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0}, Landroid/hardware/camera2/ICameraDeviceUser;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 58
    :cond_11
    return-void
.end method

.method public greylist-max-o updateOutputConfiguration(ILandroid/hardware/camera2/params/OutputConfiguration;)V
    .registers 5
    .param p1, "streamId"    # I
    .param p2, "config"    # Landroid/hardware/camera2/params/OutputConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 266
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0, p1, p2}, Landroid/hardware/camera2/ICameraDeviceUser;->updateOutputConfiguration(ILandroid/hardware/camera2/params/OutputConfiguration;)V
    :try_end_5
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 271
    nop

    .line 272
    return-void

    .line 269
    :catch_7
    move-exception v0

    .line 270
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1

    .line 267
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 268
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o waitUntilIdle()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 197
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0}, Landroid/hardware/camera2/ICameraDeviceUser;->waitUntilIdle()V
    :try_end_5
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 202
    nop

    .line 203
    return-void

    .line 200
    :catch_7
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1

    .line 198
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1
.end method
