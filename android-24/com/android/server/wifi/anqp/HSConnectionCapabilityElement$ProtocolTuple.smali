.class public Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;
.super Ljava/lang/Object;
.source "HSConnectionCapabilityElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProtocolTuple"
.end annotation


# instance fields
.field private final mPort:I

.field private final mProtocol:I

.field private final mStatus:Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 26
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@6
    move-result v1

    #@7
    const/4 v2, 0x4

    #@8
    if-ge v1, v2, :cond_0

    #@a
    .line 27
    new-instance v1, Ljava/net/ProtocolException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Runt protocol tuple: "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@1b
    move-result v3

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1

    #@28
    .line 29
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    #@2b
    move-result v1

    #@2c
    and-int/lit16 v1, v1, 0xff

    #@2e
    iput v1, p0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->mProtocol:I

    #@30
    .line 30
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    #@33
    move-result v1

    #@34
    const v2, 0xffff

    #@37
    and-int/2addr v1, v2

    #@38
    iput v1, p0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->mPort:I

    #@3a
    .line 31
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    #@3d
    move-result v1

    #@3e
    and-int/lit16 v0, v1, 0xff

    #@40
    .line 32
    .local v0, "statusNumber":I
    invoke-static {}, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;->values()[Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    #@43
    move-result-object v1

    #@44
    array-length v1, v1

    #@45
    if-ge v0, v1, :cond_1

    #@47
    .line 33
    invoke-static {}, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;->values()[Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    #@4a
    move-result-object v1

    #@4b
    aget-object v1, v1, v0

    #@4d
    .line 32
    :goto_0
    iput-object v1, p0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->mStatus:Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    #@4f
    .line 25
    return-void

    #@50
    .line 34
    :cond_1
    const/4 v1, 0x0

    #@51
    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;)V
    .locals 0
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;-><init>(Ljava/nio/ByteBuffer;)V

    #@3
    return-void
.end method


# virtual methods
.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 42
    iget v0, p0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->mPort:I

    #@2
    return v0
.end method

.method public getProtocol()I
    .locals 1

    #@0
    .prologue
    .line 38
    iget v0, p0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->mProtocol:I

    #@2
    return v0
.end method

.method public getStatus()Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;
    .locals 1

    #@0
    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->mStatus:Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ProtocolTuple{mProtocol="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 52
    iget v1, p0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->mProtocol:I

    #@e
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 53
    const-string/jumbo v1, ", mPort="

    #@15
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 53
    iget v1, p0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->mPort:I

    #@1b
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 54
    const-string/jumbo v1, ", mStatus="

    #@22
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 54
    iget-object v1, p0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->mStatus:Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    #@28
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 55
    const/16 v1, 0x7d

    #@2e
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    return-object v0
.end method
