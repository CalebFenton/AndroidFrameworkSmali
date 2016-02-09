.class public Lcom/android/server/wifi/anqp/CapabilityListElement;
.super Lcom/android/server/wifi/anqp/ANQPElement;
.source "CapabilityListElement.java"


# instance fields
.field private final mCapabilities:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "infoID"    # Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .param p2, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/server/wifi/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)V

    #@3
    .line 16
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@6
    move-result v4

    #@7
    and-int/lit8 v4, v4, 0x1

    #@9
    const/4 v5, 0x1

    #@a
    if-ne v4, v5, :cond_0

    #@c
    .line 17
    new-instance v4, Ljava/net/ProtocolException;

    #@e
    const-string/jumbo v5, "Odd length"

    #@11
    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@14
    throw v4

    #@15
    .line 18
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@18
    move-result v4

    #@19
    div-int/lit8 v4, v4, 0x2

    #@1b
    new-array v4, v4, [Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@1d
    iput-object v4, p0, Lcom/android/server/wifi/anqp/CapabilityListElement;->mCapabilities:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@1f
    .line 20
    const/4 v2, 0x0

    #@20
    .line 21
    .local v2, "index":I
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_2

    #@26
    .line 22
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    #@29
    move-result v4

    #@2a
    const v5, 0xffff

    #@2d
    and-int v0, v4, v5

    #@2f
    .line 23
    .local v0, "capID":I
    invoke-static {v0}, Lcom/android/server/wifi/anqp/Constants;->mapANQPElement(I)Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@32
    move-result-object v1

    #@33
    .line 24
    .local v1, "capability":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    if-nez v1, :cond_1

    #@35
    .line 25
    new-instance v4, Ljava/net/ProtocolException;

    #@37
    new-instance v5, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v6, "Unknown capability: "

    #@3f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v5

    #@4b
    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v4

    #@4f
    .line 26
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/anqp/CapabilityListElement;->mCapabilities:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@51
    add-int/lit8 v3, v2, 0x1

    #@53
    .end local v2    # "index":I
    .local v3, "index":I
    aput-object v1, v4, v2

    #@55
    move v2, v3

    #@56
    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    #@57
    .line 14
    .end local v0    # "capID":I
    .end local v1    # "capability":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    :cond_2
    return-void
.end method


# virtual methods
.method public getCapabilities()[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .locals 1

    #@0
    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/wifi/anqp/CapabilityListElement;->mCapabilities:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "CapabilityList{mCapabilities="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 37
    iget-object v1, p0, Lcom/android/server/wifi/anqp/CapabilityListElement;->mCapabilities:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@e
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 38
    const/16 v1, 0x7d

    #@18
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method
