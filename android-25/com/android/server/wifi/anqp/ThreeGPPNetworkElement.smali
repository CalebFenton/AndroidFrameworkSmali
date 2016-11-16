.class public Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;
.super Lcom/android/server/wifi/anqp/ANQPElement;
.source "ThreeGPPNetworkElement.java"


# instance fields
.field private final mPlmns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/CellularNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserData:I


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "infoID"    # Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .param p2, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/server/wifi/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)V

    #@3
    .line 23
    new-instance v2, Ljava/util/ArrayList;

    #@5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v2, p0, Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;->mPlmns:Ljava/util/List;

    #@a
    .line 24
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    #@d
    move-result v2

    #@e
    and-int/lit16 v2, v2, 0xff

    #@10
    iput v2, p0, Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;->mUserData:I

    #@12
    .line 25
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    #@15
    move-result v2

    #@16
    and-int/lit16 v0, v2, 0xff

    #@18
    .line 26
    .local v0, "length":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@1b
    move-result v2

    #@1c
    if-le v0, v2, :cond_0

    #@1e
    .line 27
    new-instance v2, Ljava/net/ProtocolException;

    #@20
    const-string/jumbo v3, "Runt payload"

    #@23
    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@26
    throw v2

    #@27
    .line 30
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_1

    #@2d
    .line 31
    invoke-static {p2}, Lcom/android/server/wifi/anqp/CellularNetwork;->buildCellularNetwork(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/anqp/CellularNetwork;

    #@30
    move-result-object v1

    #@31
    .line 32
    .local v1, "network":Lcom/android/server/wifi/anqp/CellularNetwork;
    if-eqz v1, :cond_0

    #@33
    .line 33
    iget-object v2, p0, Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;->mPlmns:Ljava/util/List;

    #@35
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@38
    goto :goto_0

    #@39
    .line 20
    .end local v1    # "network":Lcom/android/server/wifi/anqp/CellularNetwork;
    :cond_1
    return-void
.end method


# virtual methods
.method public getPlmns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/CellularNetwork;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;->mPlmns:Ljava/util/List;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getUserData()I
    .locals 1

    #@0
    .prologue
    .line 39
    iget v0, p0, Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;->mUserData:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ThreeGPPNetwork{mUserData="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 49
    iget v1, p0, Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;->mUserData:I

    #@e
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 50
    const-string/jumbo v1, ", mPlmns="

    #@15
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 50
    iget-object v1, p0, Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;->mPlmns:Ljava/util/List;

    #@1b
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 51
    const/16 v1, 0x7d

    #@21
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    return-object v0
.end method
