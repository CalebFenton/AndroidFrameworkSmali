.class public Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement;
.super Lcom/android/server/wifi/anqp/ANQPElement;
.source "HSConnectionCapabilityElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;,
        Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;
    }
.end annotation


# instance fields
.field private final mStatusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "infoID"    # Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .param p2, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/wifi/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)V

    #@3
    .line 63
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement;->mStatusList:Ljava/util/List;

    #@a
    .line 64
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 65
    iget-object v0, p0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement;->mStatusList:Ljava/util/List;

    #@12
    new-instance v1, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;

    #@14
    const/4 v2, 0x0

    #@15
    invoke-direct {v1, p2, v2}, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;-><init>(Ljava/nio/ByteBuffer;Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;)V

    #@18
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1b
    goto :goto_0

    #@1c
    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public getStatusList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement;->mStatusList:Ljava/util/List;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "HSConnectionCapability{mStatusList="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 76
    iget-object v1, p0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement;->mStatusList:Ljava/util/List;

    #@e
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 77
    const/16 v1, 0x7d

    #@14
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method
