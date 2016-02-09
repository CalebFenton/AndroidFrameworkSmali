.class public Lcom/android/server/wifi/anqp/NAIRealmData;
.super Ljava/lang/Object;
.source "NAIRealmData.java"


# instance fields
.field private final mEAPMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/eap/EAPMethod;",
            ">;"
        }
    .end annotation
.end field

.field private final mRealms:Ljava/util/List;
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
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 10
    .param p1, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 24
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@8
    move-result v6

    #@9
    const/4 v8, 0x5

    #@a
    if-ge v6, v8, :cond_0

    #@c
    .line 25
    new-instance v6, Ljava/net/ProtocolException;

    #@e
    new-instance v7, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v8, "Runt payload: "

    #@16
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v7

    #@1a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@1d
    move-result v8

    #@1e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v7

    #@22
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v7

    #@26
    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@29
    throw v6

    #@2a
    .line 28
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    #@2d
    move-result v6

    #@2e
    const v8, 0xffff

    #@31
    and-int v0, v6, v8

    #@33
    .line 29
    .local v0, "length":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@36
    move-result v6

    #@37
    if-le v0, v6, :cond_1

    #@39
    .line 30
    new-instance v6, Ljava/net/ProtocolException;

    #@3b
    new-instance v7, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v8, "Invalid data length: "

    #@43
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v7

    #@47
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v7

    #@4b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v7

    #@4f
    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@52
    throw v6

    #@53
    .line 32
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    #@56
    move-result v6

    #@57
    and-int/lit8 v6, v6, 0x1

    #@59
    if-ne v6, v9, :cond_3

    #@5b
    const/4 v5, 0x1

    #@5c
    .line 34
    .local v5, "utf8":Z
    :goto_0
    if-eqz v5, :cond_4

    #@5e
    .line 35
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@60
    .line 34
    :goto_1
    invoke-static {p1, v9, v6}, Lcom/android/server/wifi/anqp/Constants;->getPrefixedString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;

    #@63
    move-result-object v2

    #@64
    .line 37
    .local v2, "realm":Ljava/lang/String;
    const-string/jumbo v6, ";"

    #@67
    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@6a
    move-result-object v4

    #@6b
    .line 38
    .local v4, "realms":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    #@6d
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@70
    iput-object v6, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mRealms:Ljava/util/List;

    #@72
    .line 39
    array-length v8, v4

    #@73
    move v6, v7

    #@74
    :goto_2
    if-ge v6, v8, :cond_5

    #@76
    aget-object v3, v4, v6

    #@78
    .line 40
    .local v3, "realmElement":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@7b
    move-result v7

    #@7c
    if-lez v7, :cond_2

    #@7e
    .line 41
    iget-object v7, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mRealms:Ljava/util/List;

    #@80
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@83
    .line 39
    :cond_2
    add-int/lit8 v6, v6, 0x1

    #@85
    goto :goto_2

    #@86
    .line 32
    .end local v2    # "realm":Ljava/lang/String;
    .end local v3    # "realmElement":Ljava/lang/String;
    .end local v4    # "realms":[Ljava/lang/String;
    .end local v5    # "utf8":Z
    :cond_3
    const/4 v5, 0x0

    #@87
    .restart local v5    # "utf8":Z
    goto :goto_0

    #@88
    .line 36
    :cond_4
    sget-object v6, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@8a
    goto :goto_1

    #@8b
    .line 45
    .restart local v2    # "realm":Ljava/lang/String;
    .restart local v4    # "realms":[Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    #@8e
    move-result v6

    #@8f
    and-int/lit16 v1, v6, 0xff

    #@91
    .line 46
    .local v1, "methodCount":I
    new-instance v6, Ljava/util/ArrayList;

    #@93
    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@96
    iput-object v6, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mEAPMethods:Ljava/util/List;

    #@98
    .line 47
    :goto_3
    if-lez v1, :cond_6

    #@9a
    .line 48
    iget-object v6, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mEAPMethods:Ljava/util/List;

    #@9c
    new-instance v7, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@9e
    invoke-direct {v7, p1}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Ljava/nio/ByteBuffer;)V

    #@a1
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a4
    .line 49
    add-int/lit8 v1, v1, -0x1

    #@a6
    goto :goto_3

    #@a7
    .line 23
    :cond_6
    return-void
.end method


# virtual methods
.method public getEAPMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/eap/EAPMethod;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mEAPMethods:Ljava/util/List;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getRealms()Ljava/util/List;
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
    .line 54
    iget-object v0, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mRealms:Ljava/util/List;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public match(Ljava/util/List;Lcom/android/server/wifi/hotspot2/pps/Credential;)I
    .locals 9
    .param p2, "credential"    # Lcom/android/server/wifi/hotspot2/pps/Credential;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/wifi/hotspot2/pps/Credential;",
            ")I"
        }
    .end annotation

    #@0
    .prologue
    .line 62
    .local p1, "credLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, -0x1

    #@1
    .line 63
    .local v7, "realmMatch":I
    iget-object v8, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mRealms:Ljava/util/List;

    #@3
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    #@6
    move-result v8

    #@7
    if-nez v8, :cond_3

    #@9
    .line 64
    iget-object v8, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mRealms:Ljava/util/List;

    #@b
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v6

    #@f
    .local v6, "realm$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v8

    #@13
    if-eqz v8, :cond_1

    #@15
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v5

    #@19
    check-cast v5, Ljava/lang/String;

    #@1b
    .line 65
    .local v5, "realm":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    #@1e
    move-result-object v3

    #@1f
    .line 66
    .local v3, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, v3}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->arg2SubdomainOfArg1(Ljava/util/List;Ljava/util/List;)Z

    #@22
    move-result v8

    #@23
    if-eqz v8, :cond_0

    #@25
    .line 67
    const/4 v7, 0x4

    #@26
    .line 71
    .end local v3    # "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "realm":Ljava/lang/String;
    :cond_1
    const/4 v8, -0x1

    #@27
    if-eq v7, v8, :cond_2

    #@29
    iget-object v8, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mEAPMethods:Ljava/util/List;

    #@2b
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    #@2e
    move-result v8

    #@2f
    if-eqz v8, :cond_4

    #@31
    .line 72
    :cond_2
    return v7

    #@32
    .line 76
    .end local v6    # "realm$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v8, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mEAPMethods:Ljava/util/List;

    #@34
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    #@37
    move-result v8

    #@38
    if-eqz v8, :cond_4

    #@3a
    .line 77
    const/4 v8, 0x0

    #@3b
    return v8

    #@3c
    .line 80
    :cond_4
    const/4 v0, -0x1

    #@3d
    .line 81
    .local v0, "best":I
    iget-object v8, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mEAPMethods:Ljava/util/List;

    #@3f
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@42
    move-result-object v2

    #@43
    .local v2, "eapMethod$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@46
    move-result v8

    #@47
    if-eqz v8, :cond_6

    #@49
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4c
    move-result-object v1

    #@4d
    check-cast v1, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@4f
    .line 82
    .local v1, "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    invoke-virtual {v1, p2}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->match(Lcom/android/server/wifi/hotspot2/pps/Credential;)I

    #@52
    move-result v8

    #@53
    or-int v4, v8, v7

    #@55
    .line 83
    .local v4, "match":I
    if-le v4, v0, :cond_5

    #@57
    .line 84
    move v0, v4

    #@58
    .line 85
    const/4 v8, 0x7

    #@59
    if-ne v0, v8, :cond_5

    #@5b
    .line 86
    return v0

    #@5c
    .line 90
    .end local v1    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    .end local v4    # "match":I
    :cond_6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 97
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "  NAI Realm(s)"

    #@8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 98
    iget-object v5, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mRealms:Ljava/util/List;

    #@d
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v3

    #@11
    .local v3, "realm$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v5

    #@15
    if-eqz v5, :cond_0

    #@17
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, Ljava/lang/String;

    #@1d
    .line 99
    .local v2, "realm":Ljava/lang/String;
    const/16 v5, 0x20

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    goto :goto_0

    #@27
    .line 101
    .end local v2    # "realm":Ljava/lang/String;
    :cond_0
    const/16 v5, 0xa

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2c
    .line 103
    iget-object v5, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mEAPMethods:Ljava/util/List;

    #@2e
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v1

    #@32
    .local v1, "eapMethod$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v5

    #@36
    if-eqz v5, :cond_1

    #@38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v0

    #@3c
    check-cast v0, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@3e
    .line 104
    .local v0, "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    const-string/jumbo v5, "    "

    #@41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->toString()Ljava/lang/String;

    #@48
    move-result-object v6

    #@49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    goto :goto_1

    #@4d
    .line 106
    .end local v0    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v5

    #@51
    return-object v5
.end method
