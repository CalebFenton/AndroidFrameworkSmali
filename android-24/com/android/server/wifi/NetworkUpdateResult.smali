.class Lcom/android/server/wifi/NetworkUpdateResult;
.super Ljava/lang/Object;
.source "NetworkUpdateResult.java"


# instance fields
.field ipChanged:Z

.field isNewNetwork:Z

.field netId:I

.field proxyChanged:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 25
    iput-boolean v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork:Z

    #@6
    .line 28
    iput p1, p0, Lcom/android/server/wifi/NetworkUpdateResult;->netId:I

    #@8
    .line 29
    iput-boolean v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->ipChanged:Z

    #@a
    .line 30
    iput-boolean v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->proxyChanged:Z

    #@c
    .line 27
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1
    .param p1, "ip"    # Z
    .param p2, "proxy"    # Z

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 25
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork:Z

    #@6
    .line 34
    const/4 v0, -0x1

    #@7
    iput v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->netId:I

    #@9
    .line 35
    iput-boolean p1, p0, Lcom/android/server/wifi/NetworkUpdateResult;->ipChanged:Z

    #@b
    .line 36
    iput-boolean p2, p0, Lcom/android/server/wifi/NetworkUpdateResult;->proxyChanged:Z

    #@d
    .line 33
    return-void
.end method


# virtual methods
.method public getNetworkId()I
    .locals 1

    #@0
    .prologue
    .line 44
    iget v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->netId:I

    #@2
    return v0
.end method

.method public hasIpChanged()Z
    .locals 1

    #@0
    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->ipChanged:Z

    #@2
    return v0
.end method

.method public hasProxyChanged()Z
    .locals 1

    #@0
    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->proxyChanged:Z

    #@2
    return v0
.end method

.method public isNewNetwork()Z
    .locals 1

    #@0
    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork:Z

    #@2
    return v0
.end method

.method public setIpChanged(Z)V
    .locals 0
    .param p1, "ip"    # Z

    #@0
    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/server/wifi/NetworkUpdateResult;->ipChanged:Z

    #@2
    .line 47
    return-void
.end method

.method public setIsNewNetwork(Z)V
    .locals 0
    .param p1, "isNew"    # Z

    #@0
    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork:Z

    #@2
    .line 67
    return-void
.end method

.method public setNetworkId(I)V
    .locals 0
    .param p1, "id"    # I

    #@0
    .prologue
    .line 40
    iput p1, p0, Lcom/android/server/wifi/NetworkUpdateResult;->netId:I

    #@2
    .line 39
    return-void
.end method

.method public setProxyChanged(Z)V
    .locals 0
    .param p1, "proxy"    # Z

    #@0
    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/server/wifi/NetworkUpdateResult;->proxyChanged:Z

    #@2
    .line 55
    return-void
.end method
