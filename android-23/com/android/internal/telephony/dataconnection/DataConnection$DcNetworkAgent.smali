.class Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;
.super Landroid/net/NetworkAgent;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcNetworkAgent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V
    .locals 9
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p2, "l"    # Landroid/os/Looper;
    .param p3, "c"    # Landroid/content/Context;
    .param p4, "TAG"    # Ljava/lang/String;
    .param p5, "ni"    # Landroid/net/NetworkInfo;
    .param p6, "nc"    # Landroid/net/NetworkCapabilities;
    .param p7, "lp"    # Landroid/net/LinkProperties;
    .param p8, "score"    # I
    .param p9, "misc"    # Landroid/net/NetworkMisc;

    #@0
    .prologue
    .line 2056
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2
    move-object v0, p0

    #@3
    move-object v1, p2

    #@4
    move-object v2, p3

    #@5
    move-object v3, p4

    #@6
    move-object v4, p5

    #@7
    move-object v5, p6

    #@8
    move-object/from16 v6, p7

    #@a
    move/from16 v7, p8

    #@c
    move-object/from16 v8, p9

    #@e
    .line 2058
    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    #@11
    .line 2057
    return-void
.end method


# virtual methods
.method protected pollLceData()V
    .locals 3

    #@0
    .prologue
    .line 2081
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get18(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getLceStatus()I

    #@9
    move-result v0

    #@a
    const/4 v1, 0x1

    #@b
    if-ne v0, v1, :cond_0

    #@d
    .line 2082
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@f
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get18(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    #@12
    move-result-object v0

    #@13
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@15
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@17
    const v2, 0x4000e

    #@1a
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(I)Landroid/os/Message;

    #@1d
    move-result-object v1

    #@1e
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->pullLceData(Landroid/os/Message;)V

    #@21
    .line 2080
    :cond_0
    return-void
.end method

.method protected unwanted()V
    .locals 7

    #@0
    .prologue
    .line 2063
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    #@5
    move-result-object v4

    #@6
    if-eq v4, p0, :cond_0

    #@8
    .line 2064
    new-instance v4, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v5, "DcNetworkAgent: unwanted found mNetworkAgent="

    #@10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@16
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    #@19
    move-result-object v5

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    .line 2065
    const-string/jumbo v5, ", which isn\'t me.  Aborting unwanted"

    #@21
    .line 2064
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->log(Ljava/lang/String;)V

    #@2c
    .line 2066
    return-void

    #@2d
    .line 2069
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2f
    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@31
    if-nez v4, :cond_1

    #@33
    return-void

    #@34
    .line 2070
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@36
    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@38
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3b
    move-result-object v1

    #@3c
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3f
    move-result v4

    #@40
    if-eqz v4, :cond_2

    #@42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@45
    move-result-object v0

    #@46
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@48
    .line 2071
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    new-instance v4, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v5, "DcNetworkAgent: [unwanted]: disconnect apnContext="

    #@50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->log(Ljava/lang/String;)V

    #@5f
    .line 2072
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@61
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get9(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@64
    move-result-object v4

    #@65
    const v5, 0x4200f

    #@68
    invoke-virtual {v4, v5, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@6b
    move-result-object v3

    #@6c
    .line 2073
    .local v3, "msg":Landroid/os/Message;
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    #@6e
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    #@71
    move-result-object v4

    #@72
    invoke-direct {v2, v0, v4, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;-><init>(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    #@75
    .line 2074
    .local v2, "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@77
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@79
    .line 2075
    const v6, 0x40004

    #@7c
    .line 2074
    invoke-virtual {v5, v6, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@7f
    move-result-object v5

    #@80
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(Landroid/os/Message;)V

    #@83
    goto :goto_0

    #@84
    .line 2062
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v2    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_2
    return-void
.end method
