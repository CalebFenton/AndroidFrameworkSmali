.class public Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SOAPParser.java"


# static fields
.field private static TagOnly:[Ljava/lang/String;

.field private static final sRevMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSoapAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSoapMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

.field private mRoot:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 24
    new-array v2, v7, [Ljava/lang/String;

    #@3
    sput-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->TagOnly:[Ljava/lang/String;

    #@5
    .line 26
    new-instance v2, Ljava/util/EnumMap;

    #@7
    const-class v3, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@9
    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    #@c
    .line 25
    sput-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    #@e
    .line 28
    new-instance v2, Ljava/util/HashMap;

    #@10
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@13
    .line 27
    sput-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sRevMappings:Ljava/util/Map;

    #@15
    .line 30
    new-instance v2, Ljava/util/HashMap;

    #@17
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@1a
    .line 29
    sput-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapAttributes:Ljava/util/Map;

    #@1c
    .line 33
    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    #@1e
    sget-object v3, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SPPVersion:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@20
    const-string/jumbo v4, "spp:sppVersion"

    #@23
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    .line 34
    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    #@28
    sget-object v3, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->RedirectURI:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@2a
    const-string/jumbo v4, "redirectURI"

    #@2d
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    .line 35
    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    #@32
    sget-object v3, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->RequestReason:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@34
    const-string/jumbo v4, "requestReason"

    #@37
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    .line 36
    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    #@3c
    sget-object v3, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SessionID:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@3e
    const-string/jumbo v4, "spp:sessionID"

    #@41
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    .line 37
    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    #@46
    sget-object v3, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SupportedVersions:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@48
    const-string/jumbo v4, "spp:supportedSPPVersions"

    #@4b
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4e
    .line 38
    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    #@50
    sget-object v3, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SupportedMOs:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@52
    const-string/jumbo v4, "spp:supportedMOList"

    #@55
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    .line 40
    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    #@5a
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@5d
    move-result-object v2

    #@5e
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@61
    move-result-object v1

    #@62
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@65
    move-result v2

    #@66
    if-eqz v2, :cond_0

    #@68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6b
    move-result-object v0

    #@6c
    check-cast v0, Ljava/util/Map$Entry;

    #@6e
    .line 41
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;Ljava/lang/String;>;"
    sget-object v4, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sRevMappings:Ljava/util/Map;

    #@70
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@73
    move-result-object v2

    #@74
    check-cast v2, Ljava/lang/String;

    #@76
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@79
    move-result-object v3

    #@7a
    check-cast v3, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@7c
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7f
    goto :goto_0

    #@80
    .line 45
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;Ljava/lang/String;>;"
    :cond_0
    sget-object v3, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapAttributes:Ljava/util/Map;

    #@82
    const-string/jumbo v4, "spp:sppPostDevDataResponse"

    #@85
    const/4 v2, 0x4

    #@86
    new-array v5, v2, [Ljava/lang/String;

    #@88
    .line 46
    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    #@8a
    sget-object v6, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SPPVersion:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@8c
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8f
    move-result-object v2

    #@90
    check-cast v2, Ljava/lang/String;

    #@92
    aput-object v2, v5, v7

    #@94
    .line 47
    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    #@96
    sget-object v6, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->RedirectURI:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@98
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9b
    move-result-object v2

    #@9c
    check-cast v2, Ljava/lang/String;

    #@9e
    const/4 v6, 0x1

    #@9f
    aput-object v2, v5, v6

    #@a1
    .line 48
    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    #@a3
    sget-object v6, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->RequestReason:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@a5
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a8
    move-result-object v2

    #@a9
    check-cast v2, Ljava/lang/String;

    #@ab
    const/4 v6, 0x2

    #@ac
    aput-object v2, v5, v6

    #@ae
    .line 49
    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    #@b0
    sget-object v6, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SessionID:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@b2
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b5
    move-result-object v2

    #@b6
    check-cast v2, Ljava/lang/String;

    #@b8
    const/4 v6, 0x3

    #@b9
    aput-object v2, v5, v6

    #@bb
    .line 45
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@be
    .line 51
    sget-object v3, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapAttributes:Ljava/util/Map;

    #@c0
    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    #@c2
    sget-object v4, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SupportedVersions:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@c4
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c7
    move-result-object v2

    #@c8
    check-cast v2, Ljava/lang/String;

    #@ca
    sget-object v4, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->TagOnly:[Ljava/lang/String;

    #@cc
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@cf
    .line 52
    sget-object v3, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapAttributes:Ljava/util/Map;

    #@d1
    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    #@d3
    sget-object v4, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SupportedMOs:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@d5
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d8
    move-result-object v2

    #@d9
    check-cast v2, Ljava/lang/String;

    #@db
    sget-object v4, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->TagOnly:[Ljava/lang/String;

    #@dd
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e0
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    #@3
    return-void
.end method

.method private static extractFields(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/util/Map;Ljava/util/Collection;)V
    .locals 9
    .param p0, "node"    # Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/omadm/XMLNode;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/wifi/hotspot2/omadm/MOTree;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;Ljava/lang/String;>;"
    .local p2, "mos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/omadm/MOTree;>;"
    const/4 v6, 0x0

    #@1
    .line 111
    sget-object v7, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapAttributes:Ljava/util/Map;

    #@3
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    #@6
    move-result-object v8

    #@7
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, [Ljava/lang/String;

    #@d
    .line 113
    .local v1, "attributes":[Ljava/lang/String;
    if-eqz v1, :cond_0

    #@f
    .line 114
    array-length v7, v1

    #@10
    if-nez v7, :cond_2

    #@12
    .line 115
    sget-object v6, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sRevMappings:Ljava/util/Map;

    #@14
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    #@17
    move-result-object v7

    #@18
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v4

    #@1c
    check-cast v4, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@1e
    .line 116
    .local v4, "field":Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    #@21
    move-result-object v6

    #@22
    invoke-interface {p1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    .line 130
    .end local v4    # "field":Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getMOTree()Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@28
    move-result-object v6

    #@29
    if-eqz v6, :cond_1

    #@2b
    .line 131
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getMOTree()Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@2e
    move-result-object v6

    #@2f
    invoke-interface {p2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@32
    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    #@35
    move-result-object v6

    #@36
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@39
    move-result-object v3

    #@3a
    .local v3, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@3d
    move-result v6

    #@3e
    if-eqz v6, :cond_4

    #@40
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@43
    move-result-object v2

    #@44
    check-cast v2, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@46
    .line 134
    .local v2, "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-static {v2, p1, p2}, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->extractFields(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/util/Map;Ljava/util/Collection;)V

    #@49
    goto :goto_0

    #@4a
    .line 118
    .end local v2    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .end local v3    # "child$iterator":Ljava/util/Iterator;
    :cond_2
    array-length v7, v1

    #@4b
    :goto_1
    if-ge v6, v7, :cond_0

    #@4d
    aget-object v0, v1, v6

    #@4f
    .line 119
    .local v0, "attribute":Ljava/lang/String;
    sget-object v8, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sRevMappings:Ljava/util/Map;

    #@51
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@54
    move-result-object v4

    #@55
    check-cast v4, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@57
    .line 120
    .restart local v4    # "field":Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;
    if-eqz v4, :cond_3

    #@59
    .line 121
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    #@5c
    move-result-object v5

    #@5d
    .line 123
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_3

    #@5f
    .line 124
    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@62
    .line 118
    .end local v5    # "value":Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    #@64
    goto :goto_1

    #@65
    .line 110
    .end local v0    # "attribute":Ljava/lang/String;
    .end local v4    # "field":Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;
    .restart local v3    # "child$iterator":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 139
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;

    #@2
    invoke-direct {v5}, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;-><init>()V

    #@5
    .line 140
    .local v5, "soapParser":Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;
    new-instance v6, Ljava/io/File;

    #@7
    const/4 v7, 0x0

    #@8
    aget-object v7, p0, v7

    #@a
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@d
    invoke-virtual {v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->parse(Ljava/io/File;)Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@10
    move-result-object v4

    #@11
    .line 142
    .local v4, "root":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@13
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->getRequestDetail()Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;

    #@16
    move-result-object v7

    #@17
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    #@1a
    .line 143
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1c
    const-string/jumbo v7, "Marshalled: "

    #@1f
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@22
    .line 144
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->getRequestDetail()Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;

    #@25
    move-result-object v6

    #@26
    invoke-virtual {v6}, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;->getMOs()Ljava/util/Collection;

    #@29
    move-result-object v6

    #@2a
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2d
    move-result-object v2

    #@2e
    .local v2, "mo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@31
    move-result v6

    #@32
    if-eqz v6, :cond_0

    #@34
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@37
    move-result-object v1

    #@38
    check-cast v1, Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@3a
    .line 145
    .local v1, "mo":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    #@3c
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@3f
    .line 146
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v1, v3}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->marshal(Ljava/io/OutputStream;)V

    #@42
    .line 147
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@44
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    #@47
    move-result-object v7

    #@48
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4b
    .line 148
    new-instance v6, Ljava/io/ByteArrayInputStream;

    #@4d
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@50
    move-result-object v7

    #@51
    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@54
    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@57
    move-result-object v0

    #@58
    .line 149
    .local v0, "back":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5a
    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    #@5d
    goto :goto_0

    #@5e
    .line 151
    .end local v0    # "back":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v1    # "mo":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_0
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@60
    const-string/jumbo v7, "---"

    #@63
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@66
    .line 138
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->addText([CII)V

    #@5
    .line 97
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 83
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@2
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 84
    new-instance v1, Lorg/xml/sax/SAXException;

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "End tag \'"

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    const-string/jumbo v3, "\' doesn\'t match current node: "

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    .line 85
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@27
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@32
    throw v1

    #@33
    .line 88
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@35
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .line 93
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@3a
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getParent()Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@3d
    move-result-object v1

    #@3e
    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@40
    .line 82
    return-void

    #@41
    .line 89
    :catch_0
    move-exception v0

    #@42
    .line 90
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    #@44
    const-string/jumbo v2, "Failed to close element"

    #@47
    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@4a
    throw v1
.end method

.method public getRequestDetail()Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;
    .locals 3

    #@0
    .prologue
    .line 103
    new-instance v1, Ljava/util/EnumMap;

    #@2
    const-class v2, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@4
    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    #@7
    .line 104
    .local v1, "values":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    .line 105
    .local v0, "mos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/omadm/MOTree;>;"
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@e
    invoke-static {v2, v1, v0}, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->extractFields(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/util/Map;Ljava/util/Collection;)V

    #@11
    .line 106
    new-instance v2, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;

    #@13
    invoke-direct {v2, v1, v0}, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;-><init>(Ljava/util/Map;Ljava/util/Collection;)V

    #@16
    return-object v2
.end method

.method public parse(Ljava/io/File;)Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 56
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    #@7
    move-result-object v1

    #@8
    .line 58
    .local v1, "parser":Ljavax/xml/parsers/SAXParser;
    new-instance v0, Ljava/io/BufferedInputStream;

    #@a
    new-instance v2, Ljava/io/FileInputStream;

    #@c
    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@f
    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@12
    .line 60
    .local v0, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    invoke-virtual {v1, v0, p0}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 62
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    #@18
    .line 64
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@1a
    return-object v2

    #@1b
    .line 61
    :catchall_0
    move-exception v2

    #@1c
    .line 62
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    #@1f
    .line 61
    throw v2
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@2
    .line 72
    .local v0, "parent":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@4
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@6
    invoke-direct {v1, v2, p3, p4}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;-><init>(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@9
    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@b
    .line 73
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "Added "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@1b
    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    const-string/jumbo v3, ", atts "

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@2c
    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getAttributes()Ljava/util/Map;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3b
    .line 75
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@3d
    if-nez v1, :cond_0

    #@3f
    .line 76
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@41
    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@43
    .line 69
    :goto_0
    return-void

    #@44
    .line 78
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@46
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->addChild(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;)V

    #@49
    goto :goto_0
.end method
