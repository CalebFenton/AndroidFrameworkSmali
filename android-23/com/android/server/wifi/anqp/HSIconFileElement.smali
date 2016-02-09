.class public Lcom/android/server/wifi/anqp/HSIconFileElement;
.super Lcom/android/server/wifi/anqp/ANQPElement;
.source "HSIconFileElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/anqp/HSIconFileElement$StatusCode;
    }
.end annotation


# instance fields
.field private final mIconData:[B

.field private final mStatusCode:Lcom/android/server/wifi/anqp/HSIconFileElement$StatusCode;

.field private final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "infoID"    # Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .param p2, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/server/wifi/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)V

    #@3
    .line 27
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@6
    move-result v2

    #@7
    const/4 v3, 0x4

    #@8
    if-ge v2, v3, :cond_0

    #@a
    .line 28
    new-instance v2, Ljava/net/ProtocolException;

    #@c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "Truncated icon file: "

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@1b
    move-result v4

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@27
    throw v2

    #@28
    .line 31
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    #@2b
    move-result v2

    #@2c
    and-int/lit16 v1, v2, 0xff

    #@2e
    .line 32
    .local v1, "statusID":I
    invoke-static {}, Lcom/android/server/wifi/anqp/HSIconFileElement$StatusCode;->values()[Lcom/android/server/wifi/anqp/HSIconFileElement$StatusCode;

    #@31
    move-result-object v2

    #@32
    array-length v2, v2

    #@33
    if-ge v1, v2, :cond_1

    #@35
    invoke-static {}, Lcom/android/server/wifi/anqp/HSIconFileElement$StatusCode;->values()[Lcom/android/server/wifi/anqp/HSIconFileElement$StatusCode;

    #@38
    move-result-object v2

    #@39
    aget-object v2, v2, v1

    #@3b
    :goto_0
    iput-object v2, p0, Lcom/android/server/wifi/anqp/HSIconFileElement;->mStatusCode:Lcom/android/server/wifi/anqp/HSIconFileElement$StatusCode;

    #@3d
    .line 33
    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@3f
    const/4 v3, 0x1

    #@40
    invoke-static {p2, v3, v2}, Lcom/android/server/wifi/anqp/Constants;->getPrefixedString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    iput-object v2, p0, Lcom/android/server/wifi/anqp/HSIconFileElement;->mType:Ljava/lang/String;

    #@46
    .line 35
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    #@49
    move-result v2

    #@4a
    const v3, 0xffff

    #@4d
    and-int v0, v2, v3

    #@4f
    .line 36
    .local v0, "dataLength":I
    new-array v2, v0, [B

    #@51
    iput-object v2, p0, Lcom/android/server/wifi/anqp/HSIconFileElement;->mIconData:[B

    #@53
    .line 37
    iget-object v2, p0, Lcom/android/server/wifi/anqp/HSIconFileElement;->mIconData:[B

    #@55
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@58
    .line 24
    return-void

    #@59
    .line 32
    .end local v0    # "dataLength":I
    :cond_1
    const/4 v2, 0x0

    #@5a
    goto :goto_0
.end method


# virtual methods
.method public getIconData()[B
    .locals 1

    #@0
    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/wifi/anqp/HSIconFileElement;->mIconData:[B

    #@2
    return-object v0
.end method

.method public getStatusCode()Lcom/android/server/wifi/anqp/HSIconFileElement$StatusCode;
    .locals 1

    #@0
    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/wifi/anqp/HSIconFileElement;->mStatusCode:Lcom/android/server/wifi/anqp/HSIconFileElement$StatusCode;

    #@2
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/wifi/anqp/HSIconFileElement;->mType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "HSIconFile{mStatusCode="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 55
    iget-object v1, p0, Lcom/android/server/wifi/anqp/HSIconFileElement;->mStatusCode:Lcom/android/server/wifi/anqp/HSIconFileElement$StatusCode;

    #@e
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 56
    const-string/jumbo v1, ", mType=\'"

    #@15
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 56
    iget-object v1, p0, Lcom/android/server/wifi/anqp/HSIconFileElement;->mType:Ljava/lang/String;

    #@1b
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 56
    const/16 v1, 0x27

    #@21
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 57
    const-string/jumbo v1, ", mIconData="

    #@28
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 57
    iget-object v1, p0, Lcom/android/server/wifi/anqp/HSIconFileElement;->mIconData:[B

    #@2e
    array-length v1, v1

    #@2f
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 57
    const-string/jumbo v1, " bytes }"

    #@36
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    return-object v0
.end method
