.class public final Landroid/net/IpSecManager$UdpEncapsulationSocket;
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
    name = "UdpEncapsulationSocket"
.end annotation


# instance fields
.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mPfd:Landroid/os/ParcelFileDescriptor;

.field private final greylist-max-o mPort:I

.field private greylist-max-o mResourceId:I

.field private final greylist-max-o mService:Landroid/net/IIpSecService;


# direct methods
.method private constructor greylist-max-o <init>(Landroid/net/IIpSecService;I)V
    .registers 7
    .param p1, "service"    # Landroid/net/IIpSecService;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mResourceId:I

    .line 589
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 593
    iput-object p1, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mService:Landroid/net/IIpSecService;

    .line 595
    :try_start_e
    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mService:Landroid/net/IIpSecService;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 596
    invoke-interface {v0, p2, v1}, Landroid/net/IIpSecService;->openUdpEncapsulationSocket(ILandroid/os/IBinder;)Landroid/net/IpSecUdpEncapResponse;

    move-result-object v0

    .line 597
    .local v0, "result":Landroid/net/IpSecUdpEncapResponse;
    iget v1, v0, Landroid/net/IpSecUdpEncapResponse;->status:I

    packed-switch v1, :pswitch_data_5e

    .line 604
    new-instance v1, Ljava/lang/RuntimeException;

    goto :goto_3f

    .line 601
    :pswitch_21
    new-instance v1, Landroid/net/IpSecManager$ResourceUnavailableException;

    const-string v2, "No more Sockets may be allocated by this requester."

    invoke-direct {v1, v2}, Landroid/net/IpSecManager$ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .end local p1    # "service":Landroid/net/IIpSecService;
    .end local p2    # "port":I
    throw v1

    .line 599
    .restart local p0    # "this":Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .restart local p1    # "service":Landroid/net/IIpSecService;
    .restart local p2    # "port":I
    :pswitch_29
    nop

    .line 607
    iget v1, v0, Landroid/net/IpSecUdpEncapResponse;->resourceId:I

    iput v1, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mResourceId:I

    .line 608
    iget v1, v0, Landroid/net/IpSecUdpEncapResponse;->port:I

    iput v1, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPort:I

    .line 609
    iget-object v1, v0, Landroid/net/IpSecUdpEncapResponse;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput-object v1, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPfd:Landroid/os/ParcelFileDescriptor;
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_36} :catch_58

    .line 612
    .end local v0    # "result":Landroid/net/IpSecUdpEncapResponse;
    nop

    .line 613
    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 614
    return-void

    .line 604
    .restart local v0    # "result":Landroid/net/IpSecUdpEncapResponse;
    :goto_3f
    :try_start_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown status returned by IpSecService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/IpSecUdpEncapResponse;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .end local p1    # "service":Landroid/net/IIpSecService;
    .end local p2    # "port":I
    throw v1
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_58} :catch_58

    .line 610
    .end local v0    # "result":Landroid/net/IpSecUdpEncapResponse;
    .restart local p0    # "this":Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .restart local p1    # "service":Landroid/net/IIpSecService;
    .restart local p2    # "port":I
    :catch_58
    move-exception v0

    .line 611
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_29
        :pswitch_21
    .end packed-switch
.end method

.method synthetic constructor blacklist <init>(Landroid/net/IIpSecService;ILandroid/net/IpSecManager-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/net/IpSecManager$UdpEncapsulationSocket;-><init>(Landroid/net/IIpSecService;I)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 639
    const-string v0, "IpSecManager"

    const/4 v1, -0x1

    :try_start_3
    iget-object v2, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mService:Landroid/net/IIpSecService;

    iget v3, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mResourceId:I

    invoke-interface {v2, v3}, Landroid/net/IIpSecService;->closeUdpEncapsulationSocket(I)V

    .line 640
    iput v1, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mResourceId:I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_5b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_17
    .catchall {:try_start_3 .. :try_end_c} :catchall_15

    .line 648
    nop

    :goto_d
    iput v1, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mResourceId:I

    .line 649
    iget-object v1, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 650
    goto :goto_3a

    .line 648
    :catchall_15
    move-exception v0

    goto :goto_61

    .line 643
    :catch_17
    move-exception v2

    .line 646
    .local v2, "e":Ljava/lang/Exception;
    :try_start_18
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

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_18 .. :try_end_38} :catchall_15

    .line 648
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_d

    .line 653
    :goto_3a
    :try_start_3a
    iget-object v1, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3f} :catch_41

    .line 657
    nop

    .line 658
    return-void

    .line 654
    :catch_41
    move-exception v1

    .line 655
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to close UDP Encapsulation Socket with Port= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    throw v1

    .line 641
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5b
    move-exception v0

    .line 642
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5c
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/net/IpSecManager$UdpEncapsulationSocket;
    throw v2
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_15

    .line 648
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/net/IpSecManager$UdpEncapsulationSocket;
    :goto_61
    iput v1, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mResourceId:I

    .line 649
    iget-object v1, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 650
    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 663
    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 664
    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 666
    :cond_9
    invoke-virtual {p0}, Landroid/net/IpSecManager$UdpEncapsulationSocket;->close()V

    .line 667
    return-void
.end method

.method public whitelist getFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    .line 618
    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_6

    .line 619
    const/4 v0, 0x0

    return-object v0

    .line 621
    :cond_6
    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPort()I
    .registers 2

    .line 626
    iget v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPort:I

    return v0
.end method

.method public greylist-max-o getResourceId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 672
    iget v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mResourceId:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 678
    const-string v1, "UdpEncapsulationSocket{port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPort:I

    .line 679
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 680
    const-string v1, ",resourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mResourceId:I

    .line 681
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 682
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 683
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 677
    return-object v0
.end method
