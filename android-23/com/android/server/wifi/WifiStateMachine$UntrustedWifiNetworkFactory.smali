.class Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;
.super Landroid/net/NetworkFactory;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UntrustedWifiNetworkFactory"
.end annotation


# instance fields
.field private mUntrustedReqCount:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p2, "l"    # Landroid/os/Looper;
    .param p3, "c"    # Landroid/content/Context;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "f"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 5347
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    .line 5348
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/net/NetworkFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    #@5
    .line 5347
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 5372
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "mUntrustedReqCount "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->mUntrustedReqCount:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19
    .line 5371
    return-void
.end method

.method protected needNetworkFor(Landroid/net/NetworkRequest;I)V
    .locals 3
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 5353
    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@3
    .line 5354
    const/16 v1, 0xe

    #@5
    .line 5353
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 5355
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->mUntrustedReqCount:I

    #@d
    add-int/lit8 v0, v0, 0x1

    #@f
    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->mUntrustedReqCount:I

    #@11
    if-ne v0, v2, :cond_0

    #@13
    .line 5356
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get98(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->setAllowUntrustedConnections(Z)V

    #@1c
    .line 5352
    :cond_0
    return-void
.end method

.method protected releaseNetworkFor(Landroid/net/NetworkRequest;)V
    .locals 3
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 5363
    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@3
    .line 5364
    const/16 v1, 0xe

    #@5
    .line 5363
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 5365
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->mUntrustedReqCount:I

    #@d
    add-int/lit8 v0, v0, -0x1

    #@f
    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->mUntrustedReqCount:I

    #@11
    if-nez v0, :cond_0

    #@13
    .line 5366
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get98(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->setAllowUntrustedConnections(Z)V

    #@1c
    .line 5362
    :cond_0
    return-void
.end method
