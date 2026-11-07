.class public final Landroid/net/IpSecManager$SecurityParameterIndex;
.super Ljava/lang/Object;
.source "IpSecManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpSecManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SecurityParameterIndex"
.end annotation


# instance fields
.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mDestinationAddress:Ljava/net/InetAddress;

.field private greylist-max-o mResourceId:I

.field private final greylist-max-o mService:Landroid/net/IIpSecService;

.field private greylist-max-o mSpi:I


# direct methods
.method private constructor greylist-max-o <init>(Landroid/net/IIpSecService;Ljava/net/InetAddress;I)V
    .registers 9
    .param p1, "service"    # Landroid/net/IIpSecService;
    .param p2, "destinationAddress"    # Ljava/net/InetAddress;
    .param p3, "spi"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Landroid/net/IpSecManager$SpiUnavailableException;
        }
    .end annotation

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 194
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mSpi:I

    .line 195
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I

    .line 238
    iput-object p1, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mService:Landroid/net/IIpSecService;

    .line 239
    iput-object p2, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mDestinationAddress:Ljava/net/InetAddress;

    .line 241
    :try_start_13
    iget-object v1, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mService:Landroid/net/IIpSecService;

    .line 243
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    .line 242
    invoke-interface {v1, v2, p3, v3}, Landroid/net/IIpSecService;->allocateSecurityParameterIndex(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/net/IpSecSpiResponse;

    move-result-object v1

    .line 245
    .local v1, "result":Landroid/net/IpSecSpiResponse;
    if-eqz v1, :cond_9f

    .line 249
    iget v2, v1, Landroid/net/IpSecSpiResponse;->status:I

    .line 250
    .local v2, "status":I
    packed-switch v2, :pswitch_data_ae

    .line 259
    new-instance v0, Ljava/lang/RuntimeException;

    goto :goto_88

    .line 257
    :pswitch_2c
    new-instance v0, Landroid/net/IpSecManager$SpiUnavailableException;

    const-string v3, "Requested SPI is unavailable"

    invoke-direct {v0, v3, p3}, Landroid/net/IpSecManager$SpiUnavailableException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Landroid/net/IpSecManager$SecurityParameterIndex;
    .end local p1    # "service":Landroid/net/IIpSecService;
    .end local p2    # "destinationAddress":Ljava/net/InetAddress;
    .end local p3    # "spi":I
    throw v0

    .line 254
    .restart local p0    # "this":Landroid/net/IpSecManager$SecurityParameterIndex;
    .restart local p1    # "service":Landroid/net/IIpSecService;
    .restart local p2    # "destinationAddress":Ljava/net/InetAddress;
    .restart local p3    # "spi":I
    :pswitch_34
    new-instance v0, Landroid/net/IpSecManager$ResourceUnavailableException;

    const-string v3, "No more SPIs may be allocated by this requester."

    invoke-direct {v0, v3}, Landroid/net/IpSecManager$ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/IpSecManager$SecurityParameterIndex;
    .end local p1    # "service":Landroid/net/IIpSecService;
    .end local p2    # "destinationAddress":Ljava/net/InetAddress;
    .end local p3    # "spi":I
    throw v0

    .line 252
    .restart local p0    # "this":Landroid/net/IpSecManager$SecurityParameterIndex;
    .restart local p1    # "service":Landroid/net/IIpSecService;
    .restart local p2    # "destinationAddress":Ljava/net/InetAddress;
    .restart local p3    # "spi":I
    :pswitch_3c
    nop

    .line 262
    iget v3, v1, Landroid/net/IpSecSpiResponse;->spi:I

    iput v3, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mSpi:I

    .line 263
    iget v3, v1, Landroid/net/IpSecSpiResponse;->resourceId:I

    iput v3, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I

    .line 265
    iget v3, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mSpi:I

    if-eqz v3, :cond_6f

    .line 269
    iget v3, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_4b} :catch_a7

    if-eq v3, v0, :cond_56

    .line 275
    .end local v1    # "result":Landroid/net/IpSecSpiResponse;
    .end local v2    # "status":I
    nop

    .line 276
    iget-object v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 277
    return-void

    .line 270
    .restart local v1    # "result":Landroid/net/IpSecSpiResponse;
    .restart local v2    # "status":I
    :cond_56
    :try_start_56
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Resource ID returned by IpSecService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/IpSecManager$SecurityParameterIndex;
    .end local p1    # "service":Landroid/net/IIpSecService;
    .end local p2    # "destinationAddress":Ljava/net/InetAddress;
    .end local p3    # "spi":I
    throw v0

    .line 266
    .restart local p0    # "this":Landroid/net/IpSecManager$SecurityParameterIndex;
    .restart local p1    # "service":Landroid/net/IIpSecService;
    .restart local p2    # "destinationAddress":Ljava/net/InetAddress;
    .restart local p3    # "spi":I
    :cond_6f
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid SPI returned by IpSecService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/IpSecManager$SecurityParameterIndex;
    .end local p1    # "service":Landroid/net/IIpSecService;
    .end local p2    # "destinationAddress":Ljava/net/InetAddress;
    .end local p3    # "spi":I
    throw v0

    .line 259
    .restart local p0    # "this":Landroid/net/IpSecManager$SecurityParameterIndex;
    .restart local p1    # "service":Landroid/net/IIpSecService;
    .restart local p2    # "destinationAddress":Ljava/net/InetAddress;
    .restart local p3    # "spi":I
    :goto_88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown status returned by IpSecService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/IpSecManager$SecurityParameterIndex;
    .end local p1    # "service":Landroid/net/IIpSecService;
    .end local p2    # "destinationAddress":Ljava/net/InetAddress;
    .end local p3    # "spi":I
    throw v0

    .line 246
    .end local v2    # "status":I
    .restart local p0    # "this":Landroid/net/IpSecManager$SecurityParameterIndex;
    .restart local p1    # "service":Landroid/net/IIpSecService;
    .restart local p2    # "destinationAddress":Ljava/net/InetAddress;
    .restart local p3    # "spi":I
    :cond_9f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Received null response from IpSecService"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/IpSecManager$SecurityParameterIndex;
    .end local p1    # "service":Landroid/net/IIpSecService;
    .end local p2    # "destinationAddress":Ljava/net/InetAddress;
    .end local p3    # "spi":I
    throw v0
    :try_end_a7
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_a7} :catch_a7

    .line 273
    .end local v1    # "result":Landroid/net/IpSecSpiResponse;
    .restart local p0    # "this":Landroid/net/IpSecManager$SecurityParameterIndex;
    .restart local p1    # "service":Landroid/net/IIpSecService;
    .restart local p2    # "destinationAddress":Ljava/net/InetAddress;
    .restart local p3    # "spi":I
    :catch_a7
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    nop

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_34
        :pswitch_2c
    .end packed-switch
.end method

.method synthetic constructor blacklist <init>(Landroid/net/IIpSecService;Ljava/net/InetAddress;ILandroid/net/IpSecManager-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/net/IpSecManager$SecurityParameterIndex;-><init>(Landroid/net/IIpSecService;Ljava/net/InetAddress;I)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 6

    .line 212
    const/4 v0, -0x1

    :try_start_1
    iget-object v1, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mService:Landroid/net/IIpSecService;

    iget v2, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I

    invoke-interface {v1, v2}, Landroid/net/IIpSecService;->releaseSecurityParameterIndex(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_39
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_13
    .catchall {:try_start_1 .. :try_end_8} :catchall_11

    .line 220
    nop

    :goto_9
    iput v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I

    .line 221
    iget-object v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 222
    goto :goto_38

    .line 220
    :catchall_11
    move-exception v1

    goto :goto_3f

    .line 215
    :catch_13
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Exception;
    :try_start_14
    const-string v2, "IpSecManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to close "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_9

    .line 223
    :goto_38
    return-void

    .line 213
    :catch_39
    move-exception v1

    .line 214
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/net/IpSecManager$SecurityParameterIndex;
    throw v2
    :try_end_3f
    .catchall {:try_start_14 .. :try_end_3f} :catchall_11

    .line 220
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/net/IpSecManager$SecurityParameterIndex;
    :goto_3f
    iput v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I

    .line 221
    iget-object v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 222
    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 229
    iget-object v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 232
    :cond_9
    invoke-virtual {p0}, Landroid/net/IpSecManager$SecurityParameterIndex;->close()V

    .line 233
    return-void
.end method

.method public greylist-max-o getResourceId()I
    .registers 2

    .line 282
    iget v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I

    return v0
.end method

.method public whitelist getSpi()I
    .registers 2

    .line 199
    iget v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mSpi:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    const-string v1, "SecurityParameterIndex{spi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mSpi:I

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 290
    const-string v1, ",resourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 292
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    return-object v0
.end method
