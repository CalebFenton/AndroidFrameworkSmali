.class public Lcom/android/server/wifi/anqp/HSOsuProvidersElement;
.super Lcom/android/server/wifi/anqp/ANQPElement;
.source "HSOsuProvidersElement.java"


# instance fields
.field private final mProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/OSUProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mSSID:Ljava/lang/String;


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
    .line 21
    invoke-direct {p0, p1}, Lcom/android/server/wifi/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)V

    #@3
    .line 23
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@5
    const/4 v2, 0x1

    #@6
    invoke-static {p2, v2, v1}, Lcom/android/server/wifi/anqp/Constants;->getPrefixedString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    iput-object v1, p0, Lcom/android/server/wifi/anqp/HSOsuProvidersElement;->mSSID:Ljava/lang/String;

    #@c
    .line 24
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    #@f
    move-result v1

    #@10
    and-int/lit16 v0, v1, 0xff

    #@12
    .line 26
    .local v0, "providerCount":I
    new-instance v1, Ljava/util/ArrayList;

    #@14
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@17
    iput-object v1, p0, Lcom/android/server/wifi/anqp/HSOsuProvidersElement;->mProviders:Ljava/util/List;

    #@19
    .line 28
    :goto_0
    if-lez v0, :cond_0

    #@1b
    .line 29
    iget-object v1, p0, Lcom/android/server/wifi/anqp/HSOsuProvidersElement;->mProviders:Ljava/util/List;

    #@1d
    new-instance v2, Lcom/android/server/wifi/anqp/OSUProvider;

    #@1f
    invoke-direct {v2, p2}, Lcom/android/server/wifi/anqp/OSUProvider;-><init>(Ljava/nio/ByteBuffer;)V

    #@22
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@25
    .line 30
    add-int/lit8 v0, v0, -0x1

    #@27
    goto :goto_0

    #@28
    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public getProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/OSUProvider;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/wifi/anqp/HSOsuProvidersElement;->mProviders:Ljava/util/List;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/wifi/anqp/HSOsuProvidersElement;->mSSID:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "HSOsuProviders{mSSID=\'"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 45
    iget-object v1, p0, Lcom/android/server/wifi/anqp/HSOsuProvidersElement;->mSSID:Ljava/lang/String;

    #@e
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 45
    const/16 v1, 0x27

    #@14
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 46
    const-string/jumbo v1, ", mProviders="

    #@1b
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 46
    iget-object v1, p0, Lcom/android/server/wifi/anqp/HSOsuProvidersElement;->mProviders:Ljava/util/List;

    #@21
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 47
    const/16 v1, 0x7d

    #@27
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    return-object v0
.end method
