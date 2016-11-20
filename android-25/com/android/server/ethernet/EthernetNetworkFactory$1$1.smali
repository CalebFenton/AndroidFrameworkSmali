.class Lcom/android/server/ethernet/EthernetNetworkFactory$1$1;
.super Landroid/net/ip/IpManager$WaitForProvisioningCallback;
.source "EthernetNetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ethernet/EthernetNetworkFactory$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/ethernet/EthernetNetworkFactory$1;


# direct methods
.method constructor <init>(Lcom/android/server/ethernet/EthernetNetworkFactory$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/ethernet/EthernetNetworkFactory$1;

    #@0
    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1$1;->this$1:Lcom/android/server/ethernet/EthernetNetworkFactory$1;

    #@2
    invoke-direct {p0}, Landroid/net/ip/IpManager$WaitForProvisioningCallback;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onLinkPropertiesChange(Landroid/net/LinkProperties;)V
    .locals 2
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1$1;->this$1:Lcom/android/server/ethernet/EthernetNetworkFactory$1;

    #@2
    iget-object v1, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@4
    monitor-enter v1

    #@5
    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1$1;->this$1:Lcom/android/server/ethernet/EthernetNetworkFactory$1;

    #@7
    iget-object v0, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@9
    invoke-static {v0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get8(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkAgent;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_0

    #@f
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1$1;->this$1:Lcom/android/server/ethernet/EthernetNetworkFactory$1;

    #@11
    iget-object v0, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@13
    invoke-static {v0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get10(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkInfo;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_0

    #@1d
    .line 311
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1$1;->this$1:Lcom/android/server/ethernet/EthernetNetworkFactory$1;

    #@1f
    iget-object v0, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@21
    invoke-static {v0, p1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-set2(Lcom/android/server/ethernet/EthernetNetworkFactory;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    #@24
    .line 312
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1$1;->this$1:Lcom/android/server/ethernet/EthernetNetworkFactory$1;

    #@26
    iget-object v0, v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@28
    invoke-static {v0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-get8(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkAgent;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0, p1}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    :cond_0
    monitor-exit v1

    #@30
    .line 308
    return-void

    #@31
    .line 309
    :catchall_0
    move-exception v0

    #@32
    monitor-exit v1

    #@33
    throw v0
.end method
