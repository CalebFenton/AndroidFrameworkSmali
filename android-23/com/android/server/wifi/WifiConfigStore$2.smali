.class Lcom/android/server/wifi/WifiConfigStore$2;
.super Ljava/lang/Object;
.source "WifiConfigStore.java"

# interfaces
.implements Lcom/android/server/net/DelayedDiskWrite$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiConfigStore;->writePasspointConfigs(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiConfigStore;

.field final synthetic val$fqdn:Ljava/lang/String;

.field final synthetic val$homeSP:Lcom/android/server/wifi/hotspot2/pps/HomeSP;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConfigStore;Lcom/android/server/wifi/hotspot2/pps/HomeSP;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p2, "val$homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .param p3, "val$fqdn"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2025
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigStore$2;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    #@2
    iput-object p2, p0, Lcom/android/server/wifi/WifiConfigStore$2;->val$homeSP:Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@4
    iput-object p3, p0, Lcom/android/server/wifi/WifiConfigStore$2;->val$fqdn:Ljava/lang/String;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public onWriteCalled(Ljava/io/DataOutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2029
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore$2;->val$homeSP:Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2030
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore$2;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    #@6
    invoke-static {v1}, Lcom/android/server/wifi/WifiConfigStore;->-get2(Lcom/android/server/wifi/WifiConfigStore;)Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    #@9
    move-result-object v1

    #@a
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore$2;->val$homeSP:Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@c
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->addSP(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V

    #@f
    .line 2027
    :goto_0
    return-void

    #@10
    .line 2033
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore$2;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    #@12
    invoke-static {v1}, Lcom/android/server/wifi/WifiConfigStore;->-get2(Lcom/android/server/wifi/WifiConfigStore;)Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    #@15
    move-result-object v1

    #@16
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore$2;->val$fqdn:Ljava/lang/String;

    #@18
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->removeSP(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    goto :goto_0

    #@1c
    .line 2035
    :catch_0
    move-exception v0

    #@1d
    .line 2036
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore$2;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    #@1f
    new-instance v2, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v3, "Could not write /data/misc/wifi/PerProviderSubscription.conf : "

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@36
    goto :goto_0
.end method
