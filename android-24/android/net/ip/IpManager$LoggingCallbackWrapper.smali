.class Landroid/net/ip/IpManager$LoggingCallbackWrapper;
.super Landroid/net/ip/IpManager$Callback;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoggingCallbackWrapper"
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "INVOKE "


# instance fields
.field private mCallback:Landroid/net/ip/IpManager$Callback;

.field final synthetic this$0:Landroid/net/ip/IpManager;


# direct methods
.method public constructor <init>(Landroid/net/ip/IpManager;Landroid/net/ip/IpManager$Callback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/ip/IpManager;
    .param p2, "callback"    # Landroid/net/ip/IpManager$Callback;

    #@0
    .prologue
    .line 179
    iput-object p1, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->this$0:Landroid/net/ip/IpManager;

    #@2
    invoke-direct {p0}, Landroid/net/ip/IpManager$Callback;-><init>()V

    #@5
    .line 180
    iput-object p2, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@7
    .line 179
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 184
    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->this$0:Landroid/net/ip/IpManager;

    #@2
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get9(Landroid/net/ip/IpManager;)Landroid/util/LocalLog;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "INVOKE "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@1d
    .line 183
    return-void
.end method


# virtual methods
.method public installPacketFilter([B)V
    .locals 2
    .param p1, "filter"    # [B

    #@0
    .prologue
    .line 229
    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@2
    invoke-virtual {v0, p1}, Landroid/net/ip/IpManager$Callback;->installPacketFilter([B)V

    #@5
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v1, "installPacketFilter(byte["

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    array-length v1, p1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, "])"

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    #@24
    .line 228
    return-void
.end method

.method public onLinkPropertiesChange(Landroid/net/LinkProperties;)V
    .locals 2
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@2
    invoke-virtual {v0, p1}, Landroid/net/ip/IpManager$Callback;->onLinkPropertiesChange(Landroid/net/LinkProperties;)V

    #@5
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v1, "onLinkPropertiesChange({"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    const-string/jumbo v1, "})"

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    #@23
    .line 213
    return-void
.end method

.method public onNewDhcpResults(Landroid/net/DhcpResults;)V
    .locals 2
    .param p1, "dhcpResults"    # Landroid/net/DhcpResults;

    #@0
    .prologue
    .line 199
    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@2
    invoke-virtual {v0, p1}, Landroid/net/ip/IpManager$Callback;->onNewDhcpResults(Landroid/net/DhcpResults;)V

    #@5
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v1, "onNewDhcpResults({"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    const-string/jumbo v1, "})"

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    #@23
    .line 198
    return-void
.end method

.method public onPostDhcpAction()V
    .locals 1

    #@0
    .prologue
    .line 194
    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@2
    invoke-virtual {v0}, Landroid/net/ip/IpManager$Callback;->onPostDhcpAction()V

    #@5
    .line 195
    const-string/jumbo v0, "onPostDhcpAction()"

    #@8
    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    #@b
    .line 193
    return-void
.end method

.method public onPreDhcpAction()V
    .locals 1

    #@0
    .prologue
    .line 189
    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@2
    invoke-virtual {v0}, Landroid/net/ip/IpManager$Callback;->onPreDhcpAction()V

    #@5
    .line 190
    const-string/jumbo v0, "onPreDhcpAction()"

    #@8
    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    #@b
    .line 188
    return-void
.end method

.method public onProvisioningFailure(Landroid/net/LinkProperties;)V
    .locals 2
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 209
    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@2
    invoke-virtual {v0, p1}, Landroid/net/ip/IpManager$Callback;->onProvisioningFailure(Landroid/net/LinkProperties;)V

    #@5
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v1, "onProvisioningFailure({"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    const-string/jumbo v1, "})"

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    #@23
    .line 208
    return-void
.end method

.method public onProvisioningSuccess(Landroid/net/LinkProperties;)V
    .locals 2
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 204
    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@2
    invoke-virtual {v0, p1}, Landroid/net/ip/IpManager$Callback;->onProvisioningSuccess(Landroid/net/LinkProperties;)V

    #@5
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v1, "onProvisioningSuccess({"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    const-string/jumbo v1, "})"

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    #@23
    .line 203
    return-void
.end method

.method public onQuit()V
    .locals 1

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@2
    invoke-virtual {v0}, Landroid/net/ip/IpManager$Callback;->onQuit()V

    #@5
    .line 225
    const-string/jumbo v0, "onQuit()"

    #@8
    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    #@b
    .line 223
    return-void
.end method

.method public onReachabilityLost(Ljava/lang/String;)V
    .locals 2
    .param p1, "logMsg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 219
    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@2
    invoke-virtual {v0, p1}, Landroid/net/ip/IpManager$Callback;->onReachabilityLost(Ljava/lang/String;)V

    #@5
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v1, "onReachabilityLost("

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    const-string/jumbo v1, ")"

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    #@23
    .line 218
    return-void
.end method

.method public setFallbackMulticastFilter(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 234
    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@2
    invoke-virtual {v0, p1}, Landroid/net/ip/IpManager$Callback;->setFallbackMulticastFilter(Z)V

    #@5
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v1, "setFallbackMulticastFilter("

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    const-string/jumbo v1, ")"

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    #@23
    .line 233
    return-void
.end method

.method public setNeighborDiscoveryOffload(Z)V
    .locals 2
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 239
    iget-object v0, p0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@2
    invoke-virtual {v0, p1}, Landroid/net/ip/IpManager$Callback;->setNeighborDiscoveryOffload(Z)V

    #@5
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v1, "setNeighborDiscoveryOffload("

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    const-string/jumbo v1, ")"

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    #@23
    .line 238
    return-void
.end method
