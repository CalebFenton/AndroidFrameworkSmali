.class public final Landroid/net/IpSecManager$IpSecTunnelInterface;
.super Ljava/lang/Object;
.source "IpSecManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpSecManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IpSecTunnelInterface"
.end annotation


# instance fields
.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private greylist-max-o mInterfaceName:Ljava/lang/String;

.field private final greylist-max-o mLocalAddress:Ljava/net/InetAddress;

.field private final greylist-max-o mOpPackageName:Ljava/lang/String;

.field private final greylist-max-o mRemoteAddress:Ljava/net/InetAddress;

.field private greylist-max-o mResourceId:I

.field private final greylist-max-o mService:Landroid/net/IIpSecService;

.field private final greylist-max-o mUnderlyingNetwork:Landroid/net/Network;


# direct methods
.method private constructor greylist-max-o <init>(Landroid/content/Context;Landroid/net/IIpSecService;Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/Network;)V
    .registers 13
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/IIpSecService;
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "remoteAddress"    # Ljava/net/InetAddress;
    .param p5, "underlyingNetwork"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 765
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 767
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mResourceId:I

    .line 865
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mOpPackageName:Ljava/lang/String;

    .line 866
    iput-object p2, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mService:Landroid/net/IIpSecService;

    .line 867
    iput-object p3, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mLocalAddress:Ljava/net/InetAddress;

    .line 868
    iput-object p4, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mRemoteAddress:Ljava/net/InetAddress;

    .line 869
    iput-object p5, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mUnderlyingNetwork:Landroid/net/Network;

    .line 872
    :try_start_1a
    iget-object v1, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mService:Landroid/net/IIpSecService;

    .line 874
    invoke-virtual {p3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 875
    invoke-virtual {p4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    iget-object v6, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mOpPackageName:Ljava/lang/String;
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2b} :catch_6e

    .line 873
    move-object v4, p5

    .end local p5    # "underlyingNetwork":Landroid/net/Network;
    .local v4, "underlyingNetwork":Landroid/net/Network;
    :try_start_2c
    invoke-interface/range {v1 .. v6}, Landroid/net/IIpSecService;->createTunnelInterface(Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;Landroid/os/IBinder;Ljava/lang/String;)Landroid/net/IpSecTunnelInterfaceResponse;

    move-result-object p5

    .line 879
    .local p5, "result":Landroid/net/IpSecTunnelInterfaceResponse;
    iget v0, p5, Landroid/net/IpSecTunnelInterfaceResponse;->status:I

    packed-switch v0, :pswitch_data_76

    .line 886
    new-instance v0, Ljava/lang/RuntimeException;

    goto :goto_52

    .line 883
    :pswitch_38
    new-instance v0, Landroid/net/IpSecManager$ResourceUnavailableException;

    const-string v1, "No more tunnel interfaces may be allocated by this requester."

    invoke-direct {v0, v1}, Landroid/net/IpSecManager$ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    .end local v4    # "underlyingNetwork":Landroid/net/Network;
    .end local p0    # "this":Landroid/net/IpSecManager$IpSecTunnelInterface;
    .end local p1    # "ctx":Landroid/content/Context;
    .end local p2    # "service":Landroid/net/IIpSecService;
    .end local p3    # "localAddress":Ljava/net/InetAddress;
    .end local p4    # "remoteAddress":Ljava/net/InetAddress;
    throw v0

    .line 881
    .restart local v4    # "underlyingNetwork":Landroid/net/Network;
    .restart local p0    # "this":Landroid/net/IpSecManager$IpSecTunnelInterface;
    .restart local p1    # "ctx":Landroid/content/Context;
    .restart local p2    # "service":Landroid/net/IIpSecService;
    .restart local p3    # "localAddress":Ljava/net/InetAddress;
    .restart local p4    # "remoteAddress":Ljava/net/InetAddress;
    :pswitch_40
    nop

    .line 889
    iget v0, p5, Landroid/net/IpSecTunnelInterfaceResponse;->resourceId:I

    iput v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mResourceId:I

    .line 890
    iget-object v0, p5, Landroid/net/IpSecTunnelInterfaceResponse;->interfaceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mInterfaceName:Ljava/lang/String;
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_49} :catch_6b

    .line 893
    .end local p5    # "result":Landroid/net/IpSecTunnelInterfaceResponse;
    nop

    .line 894
    iget-object p5, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v0, "close"

    invoke-virtual {p5, v0}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 895
    return-void

    .line 886
    .restart local p5    # "result":Landroid/net/IpSecTunnelInterfaceResponse;
    :goto_52
    :try_start_52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown status returned by IpSecService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p5, Landroid/net/IpSecTunnelInterfaceResponse;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v4    # "underlyingNetwork":Landroid/net/Network;
    .end local p0    # "this":Landroid/net/IpSecManager$IpSecTunnelInterface;
    .end local p1    # "ctx":Landroid/content/Context;
    .end local p2    # "service":Landroid/net/IIpSecService;
    .end local p3    # "localAddress":Ljava/net/InetAddress;
    .end local p4    # "remoteAddress":Ljava/net/InetAddress;
    throw v0
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_6b} :catch_6b

    .line 891
    .end local p5    # "result":Landroid/net/IpSecTunnelInterfaceResponse;
    .restart local v4    # "underlyingNetwork":Landroid/net/Network;
    .restart local p0    # "this":Landroid/net/IpSecManager$IpSecTunnelInterface;
    .restart local p1    # "ctx":Landroid/content/Context;
    .restart local p2    # "service":Landroid/net/IIpSecService;
    .restart local p3    # "localAddress":Ljava/net/InetAddress;
    .restart local p4    # "remoteAddress":Ljava/net/InetAddress;
    :catch_6b
    move-exception v0

    move-object p5, v0

    goto :goto_71

    .end local v4    # "underlyingNetwork":Landroid/net/Network;
    .local p5, "underlyingNetwork":Landroid/net/Network;
    :catch_6e
    move-exception v0

    move-object v4, p5

    move-object p5, v0

    .line 892
    .restart local v4    # "underlyingNetwork":Landroid/net/Network;
    .local p5, "e":Landroid/os/RemoteException;
    :goto_71
    invoke-virtual {p5}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_40
        :pswitch_38
    .end packed-switch
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Context;Landroid/net/IIpSecService;Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/Network;Landroid/net/IpSecManager-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/net/IpSecManager$IpSecTunnelInterface;-><init>(Landroid/content/Context;Landroid/net/IIpSecService;Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/Network;)V

    return-void
.end method


# virtual methods
.method public whitelist addAddress(Ljava/net/InetAddress;I)V
    .registers 7
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLen"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 790
    :try_start_0
    iget-object v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mService:Landroid/net/IIpSecService;

    iget v1, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mResourceId:I

    new-instance v2, Landroid/net/LinkAddress;

    invoke-direct {v2, p1, p2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iget-object v3, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mOpPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Landroid/net/IIpSecService;->addAddressToTunnelInterface(ILandroid/net/LinkAddress;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_e} :catch_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    .line 796
    nop

    .line 797
    return-void

    .line 794
    :catch_10
    move-exception v0

    .line 795
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 792
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_16
    move-exception v0

    .line 793
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/IpSecManager;->rethrowCheckedExceptionFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api close()V
    .registers 6

    .line 907
    const/4 v0, -0x1

    :try_start_1
    iget-object v1, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mService:Landroid/net/IIpSecService;

    iget v2, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mResourceId:I

    iget-object v3, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mOpPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/net/IIpSecService;->deleteTunnelInterface(ILjava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_15
    .catchall {:try_start_1 .. :try_end_a} :catchall_13

    .line 915
    nop

    :goto_b
    iput v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mResourceId:I

    .line 916
    iget-object v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 917
    goto :goto_3a

    .line 915
    :catchall_13
    move-exception v1

    goto :goto_41

    .line 910
    :catch_15
    move-exception v1

    .line 913
    .local v1, "e":Ljava/lang/Exception;
    :try_start_16
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

    .line 915
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_b

    .line 918
    :goto_3a
    return-void

    .line 908
    :catch_3b
    move-exception v1

    .line 909
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/net/IpSecManager$IpSecTunnelInterface;
    throw v2
    :try_end_41
    .catchall {:try_start_16 .. :try_end_41} :catchall_13

    .line 915
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/net/IpSecManager$IpSecTunnelInterface;
    :goto_41
    iput v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mResourceId:I

    .line 916
    iget-object v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 917
    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 923
    iget-object v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 924
    iget-object v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 926
    :cond_9
    invoke-virtual {p0}, Landroid/net/IpSecManager$IpSecTunnelInterface;->close()V

    .line 927
    return-void
.end method

.method public whitelist getInterfaceName()Ljava/lang/String;
    .registers 2

    .line 772
    iget-object v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getResourceId()I
    .registers 2

    .line 932
    iget v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mResourceId:I

    return v0
.end method

.method public whitelist removeAddress(Ljava/net/InetAddress;I)V
    .registers 7
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLen"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 813
    :try_start_0
    iget-object v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mService:Landroid/net/IIpSecService;

    iget v1, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mResourceId:I

    new-instance v2, Landroid/net/LinkAddress;

    invoke-direct {v2, p1, p2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iget-object v3, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mOpPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Landroid/net/IIpSecService;->removeAddressFromTunnelInterface(ILandroid/net/LinkAddress;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_e} :catch_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    .line 819
    nop

    .line 820
    return-void

    .line 817
    :catch_10
    move-exception v0

    .line 818
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 815
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_16
    move-exception v0

    .line 816
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/IpSecManager;->rethrowCheckedExceptionFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setUnderlyingNetwork(Landroid/net/Network;)V
    .registers 5
    .param p1, "underlyingNetwork"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 854
    :try_start_0
    iget-object v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mService:Landroid/net/IIpSecService;

    iget v1, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mResourceId:I

    iget-object v2, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mOpPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, v2}, Landroid/net/IIpSecService;->setNetworkForTunnelInterface(ILandroid/net/Network;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 858
    nop

    .line 859
    return-void

    .line 856
    :catch_b
    move-exception v0

    .line 857
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 939
    const-string v1, "IpSecTunnelInterface{ifname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mInterfaceName:Ljava/lang/String;

    .line 940
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 941
    const-string v1, ",resourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mResourceId:I

    .line 942
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 943
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 944
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 938
    return-object v0
.end method
