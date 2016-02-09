.class public Lcom/android/server/wifi/anqp/NAIRealmElement;
.super Lcom/android/server/wifi/anqp/ANQPElement;
.source "NAIRealmElement.java"


# instance fields
.field private final mRealmData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/NAIRealmData;",
            ">;"
        }
    .end annotation
.end field


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
    .line 26
    invoke-direct {p0, p1}, Lcom/android/server/wifi/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)V

    #@3
    .line 28
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@c
    move-result-object v1

    #@d
    iput-object v1, p0, Lcom/android/server/wifi/anqp/NAIRealmElement;->mRealmData:Ljava/util/List;

    #@f
    .line 30
    return-void

    #@10
    .line 33
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x2

    #@15
    if-ge v1, v2, :cond_1

    #@17
    .line 34
    new-instance v1, Ljava/net/ProtocolException;

    #@19
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v3, "Runt NAI Realm: "

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@28
    move-result v3

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@34
    throw v1

    #@35
    .line 37
    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    #@38
    move-result v1

    #@39
    const v2, 0xffff

    #@3c
    and-int v0, v1, v2

    #@3e
    .line 38
    .local v0, "count":I
    new-instance v1, Ljava/util/ArrayList;

    #@40
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@43
    iput-object v1, p0, Lcom/android/server/wifi/anqp/NAIRealmElement;->mRealmData:Ljava/util/List;

    #@45
    .line 39
    :goto_0
    if-lez v0, :cond_2

    #@47
    .line 40
    iget-object v1, p0, Lcom/android/server/wifi/anqp/NAIRealmElement;->mRealmData:Ljava/util/List;

    #@49
    new-instance v2, Lcom/android/server/wifi/anqp/NAIRealmData;

    #@4b
    invoke-direct {v2, p2}, Lcom/android/server/wifi/anqp/NAIRealmData;-><init>(Ljava/nio/ByteBuffer;)V

    #@4e
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@51
    .line 41
    add-int/lit8 v0, v0, -0x1

    #@53
    goto :goto_0

    #@54
    .line 25
    :cond_2
    return-void
.end method


# virtual methods
.method public getRealmData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/NAIRealmData;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/wifi/anqp/NAIRealmElement;->mRealmData:Ljava/util/List;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public match(Lcom/android/server/wifi/hotspot2/pps/Credential;)I
    .locals 6
    .param p1, "credential"    # Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@0
    .prologue
    .line 50
    iget-object v5, p0, Lcom/android/server/wifi/anqp/NAIRealmElement;->mRealmData:Ljava/util/List;

    #@2
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v5

    #@6
    if-eqz v5, :cond_0

    #@8
    .line 51
    const/4 v5, 0x0

    #@9
    return v5

    #@a
    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getRealm()Ljava/lang/String;

    #@d
    move-result-object v5

    #@e
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    #@11
    move-result-object v1

    #@12
    .line 54
    .local v1, "credLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, -0x1

    #@13
    .line 55
    .local v0, "best":I
    iget-object v5, p0, Lcom/android/server/wifi/anqp/NAIRealmElement;->mRealmData:Ljava/util/List;

    #@15
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v4

    #@19
    .local v4, "realmData$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_2

    #@1f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    check-cast v3, Lcom/android/server/wifi/anqp/NAIRealmData;

    #@25
    .line 56
    .local v3, "realmData":Lcom/android/server/wifi/anqp/NAIRealmData;
    invoke-virtual {v3, v1, p1}, Lcom/android/server/wifi/anqp/NAIRealmData;->match(Ljava/util/List;Lcom/android/server/wifi/hotspot2/pps/Credential;)I

    #@28
    move-result v2

    #@29
    .line 57
    .local v2, "match":I
    if-le v2, v0, :cond_1

    #@2b
    .line 58
    move v0, v2

    #@2c
    .line 59
    const/4 v5, 0x7

    #@2d
    if-ne v0, v5, :cond_1

    #@2f
    .line 60
    return v0

    #@30
    .line 64
    .end local v2    # "match":I
    .end local v3    # "realmData":Lcom/android/server/wifi/anqp/NAIRealmData;
    :cond_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 70
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "NAI Realm:\n"

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 71
    iget-object v3, p0, Lcom/android/server/wifi/anqp/NAIRealmElement;->mRealmData:Ljava/util/List;

    #@d
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "data$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lcom/android/server/wifi/anqp/NAIRealmData;

    #@1d
    .line 72
    .local v0, "data":Lcom/android/server/wifi/anqp/NAIRealmData;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    goto :goto_0

    #@21
    .line 74
    .end local v0    # "data":Lcom/android/server/wifi/anqp/NAIRealmData;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    return-object v3
.end method
