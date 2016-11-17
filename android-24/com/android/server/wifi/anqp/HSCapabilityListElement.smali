.class public Lcom/android/server/wifi/anqp/HSCapabilityListElement;
.super Lcom/android/server/wifi/anqp/ANQPElement;
.source "HSCapabilityListElement.java"


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
    .line 17
    invoke-direct {p0, p1}, Lcom/android/server/wifi/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)V

    #@3
    .line 19
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@6
    move-result v4

    #@7
    new-array v4, v4, [Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@9
    iput-object v4, p0, Lcom/android/server/wifi/anqp/HSCapabilityListElement;->mCapabilities:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@b
    .line 21
    const/4 v2, 0x0

    #@c
    .line 22
    .local v2, "index":I
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_1

    #@12
    .line 23
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    #@15
    move-result v4

    #@16
    and-int/lit16 v0, v4, 0xff

    #@18
    .line 24
    .local v0, "capID":I
    invoke-static {v0}, Lcom/android/server/wifi/anqp/Constants;->mapHS20Element(I)Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@1b
    move-result-object v1

    #@1c
    .line 25
    .local v1, "capability":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    if-nez v1, :cond_0

    #@1e
    .line 26
    new-instance v4, Ljava/net/ProtocolException;

    #@20
    new-instance v5, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v6, "Unknown capability: "

    #@28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@37
    throw v4

    #@38
    .line 28
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/anqp/HSCapabilityListElement;->mCapabilities:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@3a
    add-int/lit8 v3, v2, 0x1

    #@3c
    .end local v2    # "index":I
    .local v3, "index":I
    aput-object v1, v4, v2

    #@3e
    move v2, v3

    #@3f
    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    #@40
    .line 16
    .end local v0    # "capID":I
    .end local v1    # "capability":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    :cond_1
    return-void
.end method


# virtual methods
.method public getCapabilities()[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .locals 1

    #@0
    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/server/wifi/anqp/HSCapabilityListElement;->mCapabilities:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "HSCapabilityList{mCapabilities="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 39
    iget-object v1, p0, Lcom/android/server/wifi/anqp/HSCapabilityListElement;->mCapabilities:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@e
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 40
    const/16 v1, 0x7d

    #@18
    .line 38
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
