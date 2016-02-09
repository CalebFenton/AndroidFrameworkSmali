.class public Lcom/android/server/wifi/anqp/EmergencyNumberElement;
.super Lcom/android/server/wifi/anqp/ANQPElement;
.source "EmergencyNumberElement.java"


# instance fields
.field private final mNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
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
    .line 17
    invoke-direct {p0, p1}, Lcom/android/server/wifi/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)V

    #@3
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/wifi/anqp/EmergencyNumberElement;->mNumbers:Ljava/util/List;

    #@a
    .line 21
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 22
    iget-object v0, p0, Lcom/android/server/wifi/anqp/EmergencyNumberElement;->mNumbers:Ljava/util/List;

    #@12
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@14
    const/4 v2, 0x1

    #@15
    invoke-static {p2, v2, v1}, Lcom/android/server/wifi/anqp/Constants;->getPrefixedString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1c
    goto :goto_0

    #@1d
    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method public getNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/wifi/anqp/EmergencyNumberElement;->mNumbers:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "EmergencyNumber{mNumbers="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 33
    iget-object v1, p0, Lcom/android/server/wifi/anqp/EmergencyNumberElement;->mNumbers:Ljava/util/List;

    #@e
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 34
    const/16 v1, 0x7d

    #@14
    .line 32
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
