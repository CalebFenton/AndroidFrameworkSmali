.class Ljava/util/prefs/XmlSupport;
.super Ljava/lang/Object;
.source "XmlSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/prefs/XmlSupport$EH;,
        Ljava/util/prefs/XmlSupport$Resolver;
    }
.end annotation


# static fields
.field private static final EXTERNAL_XML_VERSION:Ljava/lang/String; = "1.0"

.field private static final MAP_XML_VERSION:Ljava/lang/String; = "1.0"

.field private static final PREFS_DTD:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?><!-- DTD for preferences --><!ELEMENT preferences (root) ><!ATTLIST preferences EXTERNAL_XML_VERSION CDATA \"0.0\"  ><!ELEMENT root (map, node*) ><!ATTLIST root          type (system|user) #REQUIRED ><!ELEMENT node (map, node*) ><!ATTLIST node          name CDATA #REQUIRED ><!ELEMENT map (entry*) ><!ATTLIST map  MAP_XML_VERSION CDATA \"0.0\"  ><!ELEMENT entry EMPTY ><!ATTLIST entry          key CDATA #REQUIRED          value CDATA #REQUIRED >"

.field private static final PREFS_DTD_URI:Ljava/lang/String; = "http://java.sun.com/dtd/preferences.dtd"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static ImportPrefs(Ljava/util/prefs/Preferences;Lorg/w3c/dom/Element;)V
    .locals 6
    .param p0, "prefsNode"    # Ljava/util/prefs/Preferences;
    .param p1, "map"    # Lorg/w3c/dom/Element;

    #@0
    .prologue
    .line 353
    invoke-static {p1}, Ljava/util/prefs/XmlSupport;->getChildElements(Lorg/w3c/dom/Element;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 354
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Element;>;"
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@8
    move-result v3

    #@9
    .local v3, "numEntries":I
    :goto_0
    if-ge v2, v3, :cond_0

    #@b
    .line 355
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lorg/w3c/dom/Element;

    #@11
    .line 356
    .local v1, "entry":Lorg/w3c/dom/Element;
    const-string/jumbo v4, "key"

    #@14
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    const-string/jumbo v5, "value"

    #@1b
    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {p0, v4, v5}, Ljava/util/prefs/Preferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    .line 354
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_0

    #@25
    .line 351
    .end local v1    # "entry":Lorg/w3c/dom/Element;
    :cond_0
    return-void
.end method

.method private static ImportSubtree(Ljava/util/prefs/Preferences;Lorg/w3c/dom/Element;)V
    .locals 9
    .param p0, "prefsNode"    # Ljava/util/prefs/Preferences;
    .param p1, "xmlNode"    # Lorg/w3c/dom/Element;

    #@0
    .prologue
    .line 314
    invoke-static {p1}, Ljava/util/prefs/XmlSupport;->getChildElements(Lorg/w3c/dom/Element;)Ljava/util/List;

    #@3
    move-result-object v5

    #@4
    .local v5, "xmlKids":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Element;>;"
    move-object v6, p0

    #@5
    .line 324
    check-cast v6, Ljava/util/prefs/AbstractPreferences;

    #@7
    iget-object v7, v6, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@9
    monitor-enter v7

    #@a
    .line 326
    :try_start_0
    move-object v0, p0

    #@b
    check-cast v0, Ljava/util/prefs/AbstractPreferences;

    #@d
    move-object v6, v0

    #@e
    invoke-virtual {v6}, Ljava/util/prefs/AbstractPreferences;->isRemoved()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result v6

    #@12
    if-eqz v6, :cond_0

    #@14
    monitor-exit v7

    #@15
    .line 327
    return-void

    #@16
    .line 331
    :cond_0
    const/4 v6, 0x0

    #@17
    :try_start_1
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Lorg/w3c/dom/Element;

    #@1d
    .line 332
    .local v1, "firstXmlKid":Lorg/w3c/dom/Element;
    invoke-static {p0, v1}, Ljava/util/prefs/XmlSupport;->ImportPrefs(Ljava/util/prefs/Preferences;Lorg/w3c/dom/Element;)V

    #@20
    .line 333
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@23
    move-result v6

    #@24
    add-int/lit8 v6, v6, -0x1

    #@26
    new-array v3, v6, [Ljava/util/prefs/Preferences;

    #@28
    .line 336
    .local v3, "prefsKids":[Ljava/util/prefs/Preferences;
    const/4 v2, 0x1

    #@29
    .local v2, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@2c
    move-result v6

    #@2d
    if-ge v2, v6, :cond_1

    #@2f
    .line 337
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@32
    move-result-object v4

    #@33
    check-cast v4, Lorg/w3c/dom/Element;

    #@35
    .line 338
    .local v4, "xmlKid":Lorg/w3c/dom/Element;
    add-int/lit8 v6, v2, -0x1

    #@37
    const-string/jumbo v8, "name"

    #@3a
    invoke-interface {v4, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@3d
    move-result-object v8

    #@3e
    invoke-virtual {p0, v8}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    #@41
    move-result-object v8

    #@42
    aput-object v8, v3, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    .line 336
    add-int/lit8 v2, v2, 0x1

    #@46
    goto :goto_0

    #@47
    .end local v4    # "xmlKid":Lorg/w3c/dom/Element;
    :cond_1
    monitor-exit v7

    #@48
    .line 342
    const/4 v2, 0x1

    #@49
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@4c
    move-result v6

    #@4d
    if-ge v2, v6, :cond_2

    #@4f
    .line 343
    add-int/lit8 v6, v2, -0x1

    #@51
    aget-object v7, v3, v6

    #@53
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@56
    move-result-object v6

    #@57
    check-cast v6, Lorg/w3c/dom/Element;

    #@59
    invoke-static {v7, v6}, Ljava/util/prefs/XmlSupport;->ImportSubtree(Ljava/util/prefs/Preferences;Lorg/w3c/dom/Element;)V

    #@5c
    .line 342
    add-int/lit8 v2, v2, 0x1

    #@5e
    goto :goto_1

    #@5f
    .line 324
    .end local v1    # "firstXmlKid":Lorg/w3c/dom/Element;
    .end local v2    # "i":I
    .end local v3    # "prefsKids":[Ljava/util/prefs/Preferences;
    :catchall_0
    move-exception v6

    #@60
    monitor-exit v7

    #@61
    throw v6

    #@62
    .line 312
    .restart local v1    # "firstXmlKid":Lorg/w3c/dom/Element;
    .restart local v2    # "i":I
    .restart local v3    # "prefsKids":[Ljava/util/prefs/Preferences;
    :cond_2
    return-void
.end method

.method private static createPrefsDoc(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 5
    .param p0, "qname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 235
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    #@b
    move-result-object v0

    #@c
    .line 237
    .local v0, "di":Lorg/w3c/dom/DOMImplementation;
    const-string/jumbo v3, "http://java.sun.com/dtd/preferences.dtd"

    #@f
    const/4 v4, 0x0

    #@10
    invoke-interface {v0, p0, v4, v3}, Lorg/w3c/dom/DOMImplementation;->createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;

    #@13
    move-result-object v1

    #@14
    .line 238
    .local v1, "dt":Lorg/w3c/dom/DocumentType;
    const/4 v3, 0x0

    #@15
    invoke-interface {v0, v3, p0, v1}, Lorg/w3c/dom/DOMImplementation;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result-object v3

    #@19
    return-object v3

    #@1a
    .line 239
    .end local v0    # "di":Lorg/w3c/dom/DOMImplementation;
    .end local v1    # "dt":Lorg/w3c/dom/DocumentType;
    :catch_0
    move-exception v2

    #@1b
    .line 240
    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v3, Ljava/lang/AssertionError;

    #@1d
    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@20
    throw v3
.end method

.method static export(Ljava/io/OutputStream;Ljava/util/prefs/Preferences;Z)V
    .locals 10
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "p"    # Ljava/util/prefs/Preferences;
    .param p2, "subTree"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    move-object v8, p1

    #@1
    .line 100
    check-cast v8, Ljava/util/prefs/AbstractPreferences;

    #@3
    invoke-virtual {v8}, Ljava/util/prefs/AbstractPreferences;->isRemoved()Z

    #@6
    move-result v8

    #@7
    if-eqz v8, :cond_0

    #@9
    .line 101
    new-instance v8, Ljava/lang/IllegalStateException;

    #@b
    const-string/jumbo v9, "Node has been removed"

    #@e
    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v8

    #@12
    .line 102
    :cond_0
    const-string/jumbo v8, "preferences"

    #@15
    invoke-static {v8}, Ljava/util/prefs/XmlSupport;->createPrefsDoc(Ljava/lang/String;)Lorg/w3c/dom/Document;

    #@18
    move-result-object v2

    #@19
    .line 103
    .local v2, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    #@1c
    move-result-object v6

    #@1d
    .line 104
    .local v6, "preferences":Lorg/w3c/dom/Element;
    const-string/jumbo v8, "EXTERNAL_XML_VERSION"

    #@20
    const-string/jumbo v9, "1.0"

    #@23
    invoke-interface {v6, v8, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    #@26
    .line 106
    const-string/jumbo v8, "root"

    #@29
    invoke-interface {v2, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    #@2c
    move-result-object v8

    #@2d
    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@30
    move-result-object v7

    #@31
    .line 105
    check-cast v7, Lorg/w3c/dom/Element;

    #@33
    .line 107
    .local v7, "xmlRoot":Lorg/w3c/dom/Element;
    const-string/jumbo v9, "type"

    #@36
    invoke-virtual {p1}, Ljava/util/prefs/Preferences;->isUserNode()Z

    #@39
    move-result v8

    #@3a
    if-eqz v8, :cond_1

    #@3c
    const-string/jumbo v8, "user"

    #@3f
    :goto_0
    invoke-interface {v7, v9, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    #@42
    .line 110
    new-instance v0, Ljava/util/ArrayList;

    #@44
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@47
    .line 112
    .local v0, "ancestors":Ljava/util/List;
    move-object v5, p1

    #@48
    .local v5, "kid":Ljava/util/prefs/Preferences;
    invoke-virtual {p1}, Ljava/util/prefs/Preferences;->parent()Ljava/util/prefs/Preferences;

    #@4b
    move-result-object v1

    #@4c
    .local v1, "dad":Ljava/util/prefs/Preferences;
    :goto_1
    if-eqz v1, :cond_2

    #@4e
    .line 114
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@51
    .line 113
    move-object v5, v1

    #@52
    invoke-virtual {v1}, Ljava/util/prefs/Preferences;->parent()Ljava/util/prefs/Preferences;

    #@55
    move-result-object v1

    #@56
    goto :goto_1

    #@57
    .line 107
    .end local v0    # "ancestors":Ljava/util/List;
    .end local v1    # "dad":Ljava/util/prefs/Preferences;
    .end local v5    # "kid":Ljava/util/prefs/Preferences;
    :cond_1
    const-string/jumbo v8, "system"

    #@5a
    goto :goto_0

    #@5b
    .line 116
    .restart local v0    # "ancestors":Ljava/util/List;
    .restart local v1    # "dad":Ljava/util/prefs/Preferences;
    .restart local v5    # "kid":Ljava/util/prefs/Preferences;
    :cond_2
    move-object v3, v7

    #@5c
    .line 117
    .local v3, "e":Lorg/w3c/dom/Element;
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5f
    move-result v8

    #@60
    add-int/lit8 v4, v8, -0x1

    #@62
    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_3

    #@64
    .line 118
    const-string/jumbo v8, "map"

    #@67
    invoke-interface {v2, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    #@6a
    move-result-object v8

    #@6b
    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@6e
    .line 119
    const-string/jumbo v8, "node"

    #@71
    invoke-interface {v2, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    #@74
    move-result-object v8

    #@75
    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@78
    move-result-object v3

    #@79
    .end local v3    # "e":Lorg/w3c/dom/Element;
    check-cast v3, Lorg/w3c/dom/Element;

    #@7b
    .line 120
    .restart local v3    # "e":Lorg/w3c/dom/Element;
    const-string/jumbo v9, "name"

    #@7e
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@81
    move-result-object v8

    #@82
    check-cast v8, Ljava/util/prefs/Preferences;

    #@84
    invoke-virtual {v8}, Ljava/util/prefs/Preferences;->name()Ljava/lang/String;

    #@87
    move-result-object v8

    #@88
    invoke-interface {v3, v9, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    #@8b
    .line 117
    add-int/lit8 v4, v4, -0x1

    #@8d
    goto :goto_2

    #@8e
    .line 122
    :cond_3
    invoke-static {v3, v2, p1, p2}, Ljava/util/prefs/XmlSupport;->putPreferencesInXml(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/util/prefs/Preferences;Z)V

    #@91
    .line 124
    invoke-static {v2, p0}, Ljava/util/prefs/XmlSupport;->writeDoc(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)V

    #@94
    .line 99
    return-void
.end method

.method static exportMap(Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 7
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 369
    const-string/jumbo v5, "map"

    #@3
    invoke-static {v5}, Ljava/util/prefs/XmlSupport;->createPrefsDoc(Ljava/lang/String;)Lorg/w3c/dom/Document;

    #@6
    move-result-object v0

    #@7
    .line 370
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    #@a
    move-result-object v4

    #@b
    .line 371
    .local v4, "xmlMap":Lorg/w3c/dom/Element;
    const-string/jumbo v5, "MAP_XML_VERSION"

    #@e
    const-string/jumbo v6, "1.0"

    #@11
    invoke-interface {v4, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 373
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@17
    move-result-object v5

    #@18
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v2

    #@1c
    .local v2, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v5

    #@20
    if-eqz v5, :cond_0

    #@22
    .line 374
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Ljava/util/Map$Entry;

    #@28
    .line 376
    .local v1, "e":Ljava/util/Map$Entry;
    const-string/jumbo v5, "entry"

    #@2b
    invoke-interface {v0, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    #@2e
    move-result-object v5

    #@2f
    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@32
    move-result-object v3

    #@33
    .line 375
    check-cast v3, Lorg/w3c/dom/Element;

    #@35
    .line 377
    .local v3, "xe":Lorg/w3c/dom/Element;
    const-string/jumbo v6, "key"

    #@38
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3b
    move-result-object v5

    #@3c
    check-cast v5, Ljava/lang/String;

    #@3e
    invoke-interface {v3, v6, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    #@41
    .line 378
    const-string/jumbo v6, "value"

    #@44
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@47
    move-result-object v5

    #@48
    check-cast v5, Ljava/lang/String;

    #@4a
    invoke-interface {v3, v6, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    #@4d
    goto :goto_0

    #@4e
    .line 381
    .end local v1    # "e":Ljava/util/Map$Entry;
    .end local v3    # "xe":Lorg/w3c/dom/Element;
    :cond_0
    invoke-static {v0, p0}, Ljava/util/prefs/XmlSupport;->writeDoc(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)V

    #@51
    .line 368
    return-void
.end method

.method private static getChildElements(Lorg/w3c/dom/Element;)Ljava/util/List;
    .locals 4
    .param p0, "node"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Element;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 296
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    #@3
    move-result-object v2

    #@4
    .line 297
    .local v2, "xmlKids":Lorg/w3c/dom/NodeList;
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    #@9
    move-result v3

    #@a
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@d
    .line 298
    .local v0, "elements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    #@11
    move-result v3

    #@12
    if-ge v1, v3, :cond_1

    #@14
    .line 299
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@17
    move-result-object v3

    #@18
    instance-of v3, v3, Lorg/w3c/dom/Element;

    #@1a
    if-eqz v3, :cond_0

    #@1c
    .line 300
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@1f
    move-result-object v3

    #@20
    check-cast v3, Lorg/w3c/dom/Element;

    #@22
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@25
    .line 298
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_0

    #@28
    .line 304
    :cond_1
    return-object v0
.end method

.method static importMap(Ljava/io/InputStream;Ljava/util/Map;)V
    .locals 11
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "m"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/InvalidPreferencesFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 401
    :try_start_0
    invoke-static {p0}, Ljava/util/prefs/XmlSupport;->loadPrefsDoc(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    #@3
    move-result-object v0

    #@4
    .line 402
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    #@7
    move-result-object v7

    #@8
    .line 404
    .local v7, "xmlMap":Lorg/w3c/dom/Element;
    const-string/jumbo v8, "MAP_XML_VERSION"

    #@b
    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v5

    #@f
    .line 405
    .local v5, "mapVersion":Ljava/lang/String;
    const-string/jumbo v8, "1.0"

    #@12
    invoke-virtual {v5, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@15
    move-result v8

    #@16
    if-lez v8, :cond_0

    #@18
    .line 406
    new-instance v8, Ljava/util/prefs/InvalidPreferencesFormatException;

    #@1a
    .line 407
    new-instance v9, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v10, "Preferences map file format version "

    #@22
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v9

    #@26
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v9

    #@2a
    .line 408
    const-string/jumbo v10, " is not supported. This java installation can read"

    #@2d
    .line 407
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v9

    #@31
    .line 409
    const-string/jumbo v10, " versions "

    #@34
    .line 407
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v9

    #@38
    .line 409
    const-string/jumbo v10, "1.0"

    #@3b
    .line 407
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v9

    #@3f
    .line 409
    const-string/jumbo v10, " or older. You may need"

    #@42
    .line 407
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v9

    #@46
    .line 410
    const-string/jumbo v10, " to install a newer version of JDK."

    #@49
    .line 407
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v9

    #@4d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v9

    #@51
    .line 406
    invoke-direct {v8, v9}, Ljava/util/prefs/InvalidPreferencesFormatException;-><init>(Ljava/lang/String;)V

    #@54
    throw v8
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    #@55
    .line 423
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "mapVersion":Ljava/lang/String;
    .end local v7    # "xmlMap":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v1

    #@56
    .line 424
    .local v1, "e":Lorg/xml/sax/SAXException;
    new-instance v8, Ljava/util/prefs/InvalidPreferencesFormatException;

    #@58
    invoke-direct {v8, v1}, Ljava/util/prefs/InvalidPreferencesFormatException;-><init>(Ljava/lang/Throwable;)V

    #@5b
    throw v8

    #@5c
    .line 412
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    .restart local v0    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "mapVersion":Ljava/lang/String;
    .restart local v7    # "xmlMap":Lorg/w3c/dom/Element;
    :cond_0
    :try_start_1
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    #@5f
    move-result-object v2

    #@60
    .line 413
    .local v2, "entries":Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    #@61
    .local v4, "i":I
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    #@64
    move-result v6

    #@65
    .local v6, "numEntries":I
    :goto_0
    if-ge v4, v6, :cond_2

    #@67
    .line 417
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@6a
    move-result-object v8

    #@6b
    instance-of v8, v8, Lorg/w3c/dom/Element;

    #@6d
    if-nez v8, :cond_1

    #@6f
    .line 413
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@71
    goto :goto_0

    #@72
    .line 420
    :cond_1
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@75
    move-result-object v3

    #@76
    check-cast v3, Lorg/w3c/dom/Element;

    #@78
    .line 421
    .local v3, "entry":Lorg/w3c/dom/Element;
    const-string/jumbo v8, "key"

    #@7b
    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@7e
    move-result-object v8

    #@7f
    const-string/jumbo v9, "value"

    #@82
    invoke-interface {v3, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@85
    move-result-object v9

    #@86
    invoke-interface {p1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    #@89
    goto :goto_1

    #@8a
    .line 398
    .end local v3    # "entry":Lorg/w3c/dom/Element;
    :cond_2
    return-void
.end method

.method static importPreferences(Ljava/io/InputStream;)V
    .locals 9
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/InvalidPreferencesFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 200
    :try_start_0
    invoke-static {p0}, Ljava/util/prefs/XmlSupport;->loadPrefsDoc(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    #@3
    move-result-object v0

    #@4
    .line 202
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    #@7
    move-result-object v6

    #@8
    const-string/jumbo v7, "EXTERNAL_XML_VERSION"

    #@b
    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v5

    #@f
    .line 203
    .local v5, "xmlVersion":Ljava/lang/String;
    const-string/jumbo v6, "1.0"

    #@12
    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@15
    move-result v6

    #@16
    if-lez v6, :cond_0

    #@18
    .line 204
    new-instance v6, Ljava/util/prefs/InvalidPreferencesFormatException;

    #@1a
    .line 205
    new-instance v7, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v8, "Exported preferences file format version "

    #@22
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v7

    #@26
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v7

    #@2a
    .line 206
    const-string/jumbo v8, " is not supported. This java installation can read"

    #@2d
    .line 205
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v7

    #@31
    .line 207
    const-string/jumbo v8, " versions "

    #@34
    .line 205
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v7

    #@38
    .line 207
    const-string/jumbo v8, "1.0"

    #@3b
    .line 205
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v7

    #@3f
    .line 207
    const-string/jumbo v8, " or older. You may need"

    #@42
    .line 205
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v7

    #@46
    .line 208
    const-string/jumbo v8, " to install a newer version of JDK."

    #@49
    .line 205
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v7

    #@4d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v7

    #@51
    .line 204
    invoke-direct {v6, v7}, Ljava/util/prefs/InvalidPreferencesFormatException;-><init>(Ljava/lang/String;)V

    #@54
    throw v6
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    #@55
    .line 225
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "xmlVersion":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@56
    .line 226
    .local v1, "e":Lorg/xml/sax/SAXException;
    new-instance v6, Ljava/util/prefs/InvalidPreferencesFormatException;

    #@58
    invoke-direct {v6, v1}, Ljava/util/prefs/InvalidPreferencesFormatException;-><init>(Ljava/lang/Throwable;)V

    #@5b
    throw v6

    #@5c
    .line 210
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    .restart local v0    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "xmlVersion":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    #@5f
    move-result-object v4

    #@60
    .line 213
    .local v4, "xmlRoot":Lorg/w3c/dom/Element;
    const-string/jumbo v6, "root"

    #@63
    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    #@66
    move-result-object v2

    #@67
    .line 214
    .local v2, "elements":Lorg/w3c/dom/NodeList;
    if-eqz v2, :cond_1

    #@69
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    #@6c
    move-result v6

    #@6d
    const/4 v7, 0x1

    #@6e
    if-eq v6, v7, :cond_2

    #@70
    .line 215
    :cond_1
    new-instance v6, Ljava/util/prefs/InvalidPreferencesFormatException;

    #@72
    const-string/jumbo v7, "invalid root node"

    #@75
    invoke-direct {v6, v7}, Ljava/util/prefs/InvalidPreferencesFormatException;-><init>(Ljava/lang/String;)V

    #@78
    throw v6

    #@79
    .line 218
    :cond_2
    const/4 v6, 0x0

    #@7a
    invoke-interface {v2, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@7d
    move-result-object v4

    #@7e
    .end local v4    # "xmlRoot":Lorg/w3c/dom/Element;
    check-cast v4, Lorg/w3c/dom/Element;

    #@80
    .line 222
    .restart local v4    # "xmlRoot":Lorg/w3c/dom/Element;
    const-string/jumbo v6, "type"

    #@83
    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@86
    move-result-object v6

    #@87
    const-string/jumbo v7, "user"

    #@8a
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8d
    move-result v6

    #@8e
    if-eqz v6, :cond_3

    #@90
    .line 223
    invoke-static {}, Ljava/util/prefs/Preferences;->userRoot()Ljava/util/prefs/Preferences;

    #@93
    move-result-object v3

    #@94
    .line 224
    .local v3, "prefsRoot":Ljava/util/prefs/Preferences;
    :goto_0
    invoke-static {v3, v4}, Ljava/util/prefs/XmlSupport;->ImportSubtree(Ljava/util/prefs/Preferences;Lorg/w3c/dom/Element;)V

    #@97
    .line 197
    return-void

    #@98
    .line 223
    .end local v3    # "prefsRoot":Ljava/util/prefs/Preferences;
    :cond_3
    invoke-static {}, Ljava/util/prefs/Preferences;->systemRoot()Ljava/util/prefs/Preferences;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    #@9b
    move-result-object v3

    #@9c
    goto :goto_0
.end method

.method private static loadPrefsDoc(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 251
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    #@4
    move-result-object v1

    #@5
    .line 252
    .local v1, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringElementContentWhitespace(Z)V

    #@8
    .line 255
    invoke-virtual {v1, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setCoalescing(Z)V

    #@b
    .line 256
    invoke-virtual {v1, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    #@e
    .line 258
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    #@11
    move-result-object v0

    #@12
    .line 259
    .local v0, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v3, Ljava/util/prefs/XmlSupport$Resolver;

    #@14
    const/4 v4, 0x0

    #@15
    invoke-direct {v3, v4}, Ljava/util/prefs/XmlSupport$Resolver;-><init>(Ljava/util/prefs/XmlSupport$Resolver;)V

    #@18
    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    #@1b
    .line 260
    new-instance v3, Ljava/util/prefs/XmlSupport$EH;

    #@1d
    const/4 v4, 0x0

    #@1e
    invoke-direct {v3, v4}, Ljava/util/prefs/XmlSupport$EH;-><init>(Ljava/util/prefs/XmlSupport$EH;)V

    #@21
    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    #@24
    .line 261
    new-instance v3, Lorg/xml/sax/InputSource;

    #@26
    invoke-direct {v3, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    #@29
    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    move-result-object v3

    #@2d
    return-object v3

    #@2e
    .line 262
    .end local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    :catch_0
    move-exception v2

    #@2f
    .line 263
    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v3, Ljava/lang/AssertionError;

    #@31
    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@34
    throw v3
.end method

.method private static putPreferencesInXml(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/util/prefs/Preferences;Z)V
    .locals 12
    .param p0, "elt"    # Lorg/w3c/dom/Element;
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .param p2, "prefs"    # Ljava/util/prefs/Preferences;
    .param p3, "subTree"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 142
    const/4 v5, 0x0

    #@1
    .line 143
    .local v5, "kidsCopy":[Ljava/util/prefs/Preferences;
    const/4 v4, 0x0

    #@2
    .local v4, "kidNames":[Ljava/lang/String;
    move-object v8, p2

    #@3
    .line 148
    check-cast v8, Ljava/util/prefs/AbstractPreferences;

    #@5
    iget-object v9, v8, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@7
    monitor-enter v9

    #@8
    .line 151
    :try_start_0
    move-object v0, p2

    #@9
    check-cast v0, Ljava/util/prefs/AbstractPreferences;

    #@b
    move-object v8, v0

    #@c
    invoke-virtual {v8}, Ljava/util/prefs/AbstractPreferences;->isRemoved()Z

    #@f
    move-result v8

    #@10
    if-eqz v8, :cond_0

    #@12
    .line 152
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    #@15
    move-result-object v8

    #@16
    invoke-interface {v8, p0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v9

    #@1a
    .line 153
    return-void

    #@1b
    .line 156
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/util/prefs/Preferences;->keys()[Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 157
    .local v3, "keys":[Ljava/lang/String;
    const-string/jumbo v8, "map"

    #@22
    invoke-interface {p1, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    #@25
    move-result-object v8

    #@26
    invoke-interface {p0, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@29
    move-result-object v6

    #@2a
    check-cast v6, Lorg/w3c/dom/Element;

    #@2c
    .line 158
    .local v6, "map":Lorg/w3c/dom/Element;
    const/4 v2, 0x0

    #@2d
    .local v2, "i":I
    :goto_0
    array-length v8, v3

    #@2e
    if-ge v2, v8, :cond_1

    #@30
    .line 160
    const-string/jumbo v8, "entry"

    #@33
    invoke-interface {p1, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    #@36
    move-result-object v8

    #@37
    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@3a
    move-result-object v1

    #@3b
    .line 159
    check-cast v1, Lorg/w3c/dom/Element;

    #@3d
    .line 161
    .local v1, "entry":Lorg/w3c/dom/Element;
    const-string/jumbo v8, "key"

    #@40
    aget-object v10, v3, v2

    #@42
    invoke-interface {v1, v8, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    #@45
    .line 163
    const-string/jumbo v8, "value"

    #@48
    aget-object v10, v3, v2

    #@4a
    const/4 v11, 0x0

    #@4b
    invoke-virtual {p2, v10, v11}, Ljava/util/prefs/Preferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4e
    move-result-object v10

    #@4f
    invoke-interface {v1, v8, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    #@52
    .line 158
    add-int/lit8 v2, v2, 0x1

    #@54
    goto :goto_0

    #@55
    .line 166
    .end local v1    # "entry":Lorg/w3c/dom/Element;
    :cond_1
    if-eqz p3, :cond_2

    #@57
    .line 168
    invoke-virtual {p2}, Ljava/util/prefs/Preferences;->childrenNames()[Ljava/lang/String;

    #@5a
    move-result-object v4

    #@5b
    .line 169
    .local v4, "kidNames":[Ljava/lang/String;
    array-length v8, v4

    #@5c
    new-array v5, v8, [Ljava/util/prefs/Preferences;

    #@5e
    .line 170
    .local v5, "kidsCopy":[Ljava/util/prefs/Preferences;
    const/4 v2, 0x0

    #@5f
    :goto_1
    array-length v8, v4

    #@60
    if-ge v2, v8, :cond_2

    #@62
    .line 171
    aget-object v8, v4, v2

    #@64
    invoke-virtual {p2, v8}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    #@67
    move-result-object v8

    #@68
    aput-object v8, v5, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6a
    .line 170
    add-int/lit8 v2, v2, 0x1

    #@6c
    goto :goto_1

    #@6d
    .end local v4    # "kidNames":[Ljava/lang/String;
    .end local v5    # "kidsCopy":[Ljava/util/prefs/Preferences;
    :cond_2
    monitor-exit v9

    #@6e
    .line 176
    if-eqz p3, :cond_3

    #@70
    .line 177
    const/4 v2, 0x0

    #@71
    :goto_2
    array-length v8, v4

    #@72
    if-ge v2, v8, :cond_3

    #@74
    .line 179
    const-string/jumbo v8, "node"

    #@77
    invoke-interface {p1, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    #@7a
    move-result-object v8

    #@7b
    invoke-interface {p0, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@7e
    move-result-object v7

    #@7f
    .line 178
    check-cast v7, Lorg/w3c/dom/Element;

    #@81
    .line 180
    .local v7, "xmlKid":Lorg/w3c/dom/Element;
    const-string/jumbo v8, "name"

    #@84
    aget-object v9, v4, v2

    #@86
    invoke-interface {v7, v8, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    #@89
    .line 181
    aget-object v8, v5, v2

    #@8b
    invoke-static {v7, p1, v8, p3}, Ljava/util/prefs/XmlSupport;->putPreferencesInXml(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/util/prefs/Preferences;Z)V

    #@8e
    .line 177
    add-int/lit8 v2, v2, 0x1

    #@90
    goto :goto_2

    #@91
    .line 148
    .end local v2    # "i":I
    .end local v3    # "keys":[Ljava/lang/String;
    .end local v6    # "map":Lorg/w3c/dom/Element;
    .end local v7    # "xmlKid":Lorg/w3c/dom/Element;
    :catchall_0
    move-exception v8

    #@92
    monitor-exit v9

    #@93
    throw v8

    #@94
    .line 140
    .restart local v2    # "i":I
    .restart local v3    # "keys":[Ljava/lang/String;
    .restart local v6    # "map":Lorg/w3c/dom/Element;
    :cond_3
    return-void
.end method

.method private static final writeDoc(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)V
    .locals 9
    .param p0, "doc"    # Lorg/w3c/dom/Document;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 274
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v3

    #@4
    .line 276
    .local v3, "tf":Ljavax/xml/transform/TransformerFactory;
    :try_start_1
    const-string/jumbo v4, "indent-number"

    #@7
    new-instance v5, Ljava/lang/Integer;

    #@9
    const/4 v6, 0x2

    #@a
    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    #@d
    invoke-virtual {v3, v4, v5}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_0

    #@10
    .line 281
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    #@13
    move-result-object v2

    #@14
    .line 282
    .local v2, "t":Ljavax/xml/transform/Transformer;
    const-string/jumbo v4, "doctype-system"

    #@17
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    #@1a
    move-result-object v5

    #@1b
    invoke-interface {v5}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v2, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    .line 283
    const-string/jumbo v4, "indent"

    #@25
    const-string/jumbo v5, "yes"

    #@28
    invoke-virtual {v2, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@2b
    .line 288
    new-instance v4, Ljavax/xml/transform/dom/DOMSource;

    #@2d
    invoke-direct {v4, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    #@30
    .line 289
    new-instance v5, Ljavax/xml/transform/stream/StreamResult;

    #@32
    new-instance v6, Ljava/io/BufferedWriter;

    #@34
    new-instance v7, Ljava/io/OutputStreamWriter;

    #@36
    const-string/jumbo v8, "UTF-8"

    #@39
    invoke-direct {v7, p1, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@3c
    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    #@3f
    invoke-direct {v5, v6}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    #@42
    .line 288
    invoke-virtual {v2, v4, v5}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_0

    #@45
    .line 271
    return-void

    #@46
    .line 290
    .end local v2    # "t":Ljavax/xml/transform/Transformer;
    .end local v3    # "tf":Ljavax/xml/transform/TransformerFactory;
    :catch_0
    move-exception v0

    #@47
    .line 291
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    new-instance v4, Ljava/lang/AssertionError;

    #@49
    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@4c
    throw v4

    #@4d
    .line 277
    .end local v0    # "e":Ljavax/xml/transform/TransformerException;
    .restart local v3    # "tf":Ljavax/xml/transform/TransformerFactory;
    :catch_1
    move-exception v1

    #@4e
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method
