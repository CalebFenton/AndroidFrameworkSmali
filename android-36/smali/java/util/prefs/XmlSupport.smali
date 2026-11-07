.class Ljava/util/prefs/XmlSupport;
.super Ljava/lang/Object;
.source "XmlSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/prefs/XmlSupport$Resolver;,
        Ljava/util/prefs/XmlSupport$EH;,
        Ljava/util/prefs/XmlSupport$NodeListAdapter;
    }
.end annotation


# static fields
.field private static final blacklist EXTERNAL_XML_VERSION:Ljava/lang/String; = "1.0"

.field private static final blacklist MAP_XML_VERSION:Ljava/lang/String; = "1.0"

.field private static final blacklist PREFS_DTD:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?><!-- DTD for preferences --><!ELEMENT preferences (root) ><!ATTLIST preferences EXTERNAL_XML_VERSION CDATA \"0.0\"  ><!ELEMENT root (map, node*) ><!ATTLIST root          type (system|user) #REQUIRED ><!ELEMENT node (map, node*) ><!ATTLIST node          name CDATA #REQUIRED ><!ELEMENT map (entry*) ><!ATTLIST map  MAP_XML_VERSION CDATA \"0.0\"  ><!ELEMENT entry EMPTY ><!ATTLIST entry          key CDATA #REQUIRED          value CDATA #REQUIRED >"

.field private static final blacklist PREFS_DTD_URI:Ljava/lang/String; = "http://java.sun.com/dtd/preferences.dtd"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist ImportPrefs(Ljava/util/prefs/Preferences;Lorg/w3c/dom/Element;)V
    .registers 8
    .param p0, "prefsNode"    # Ljava/util/prefs/Preferences;
    .param p1, "map"    # Lorg/w3c/dom/Element;

    .line 372
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 374
    .local v0, "entries":Lorg/w3c/dom/NodeList;
    invoke-static {v0}, Ljava/util/prefs/XmlSupport;->elementNodesOf(Lorg/w3c/dom/NodeList;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 375
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .local v2, "numEntries":I
    :goto_d
    if-ge v1, v2, :cond_27

    .line 376
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 377
    .local v3, "entry":Lorg/w3c/dom/Element;
    const-string v4, "key"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 378
    const-string v5, "value"

    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 377
    invoke-virtual {p0, v4, v5}, Ljava/util/prefs/Preferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .end local v3    # "entry":Lorg/w3c/dom/Element;
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 380
    .end local v1    # "i":I
    .end local v2    # "numEntries":I
    :cond_27
    return-void
.end method

.method private static blacklist ImportSubtree(Ljava/util/prefs/Preferences;Lorg/w3c/dom/Element;)V
    .registers 11
    .param p0, "prefsNode"    # Ljava/util/prefs/Preferences;
    .param p1, "xmlNode"    # Lorg/w3c/dom/Element;

    .line 333
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 335
    .local v0, "xmlKids":Lorg/w3c/dom/NodeList;
    invoke-static {v0}, Ljava/util/prefs/XmlSupport;->elementNodesOf(Lorg/w3c/dom/NodeList;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 336
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .line 345
    .local v1, "numXmlKids":I
    move-object v2, p0

    check-cast v2, Ljava/util/prefs/AbstractPreferences;

    iget-object v2, v2, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 347
    :try_start_12
    move-object v3, p0

    check-cast v3, Ljava/util/prefs/AbstractPreferences;

    invoke-virtual {v3}, Ljava/util/prefs/AbstractPreferences;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 348
    monitor-exit v2

    return-void

    .line 351
    :cond_1d
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 352
    .local v3, "firstXmlKid":Lorg/w3c/dom/Element;
    invoke-static {p0, v3}, Ljava/util/prefs/XmlSupport;->ImportPrefs(Ljava/util/prefs/Preferences;Lorg/w3c/dom/Element;)V

    .line 353
    add-int/lit8 v4, v1, -0x1

    new-array v4, v4, [Ljava/util/prefs/Preferences;

    .line 356
    .local v4, "prefsKids":[Ljava/util/prefs/Preferences;
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_2c
    if-ge v5, v1, :cond_45

    .line 357
    invoke-interface {v0, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 358
    .local v6, "xmlKid":Lorg/w3c/dom/Element;
    add-int/lit8 v7, v5, -0x1

    const-string v8, "name"

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    move-result-object v8

    aput-object v8, v4, v7

    .line 356
    .end local v6    # "xmlKid":Lorg/w3c/dom/Element;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 360
    .end local v3    # "firstXmlKid":Lorg/w3c/dom/Element;
    .end local v5    # "i":I
    :cond_45
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_12 .. :try_end_46} :catchall_5a

    .line 362
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_47
    if-ge v2, v1, :cond_59

    .line 363
    add-int/lit8 v3, v2, -0x1

    aget-object v3, v4, v3

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-static {v3, v5}, Ljava/util/prefs/XmlSupport;->ImportSubtree(Ljava/util/prefs/Preferences;Lorg/w3c/dom/Element;)V

    .line 362
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 364
    .end local v2    # "i":I
    :cond_59
    return-void

    .line 360
    .end local v4    # "prefsKids":[Ljava/util/prefs/Preferences;
    :catchall_5a
    move-exception v3

    :try_start_5b
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v3
.end method

.method private static blacklist createPrefsDoc(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .registers 4
    .param p0, "qname"    # Ljava/lang/String;

    .line 239
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v0

    .line 241
    .local v0, "di":Lorg/w3c/dom/DOMImplementation;
    const-string v1, "http://java.sun.com/dtd/preferences.dtd"

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2, v1}, Lorg/w3c/dom/DOMImplementation;->createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;

    move-result-object v1

    .line 242
    .local v1, "dt":Lorg/w3c/dom/DocumentType;
    invoke-interface {v0, v2, p0, v1}, Lorg/w3c/dom/DOMImplementation;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object v2
    :try_end_17
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_17} :catch_18

    return-object v2

    .line 243
    .end local v0    # "di":Lorg/w3c/dom/DOMImplementation;
    .end local v1    # "dt":Lorg/w3c/dom/DocumentType;
    :catch_18
    move-exception v0

    .line 244
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static blacklist elementNodesOf(Lorg/w3c/dom/NodeList;)Lorg/w3c/dom/NodeList;
    .registers 5
    .param p0, "xmlKids"    # Lorg/w3c/dom/NodeList;

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 317
    .local v0, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Element;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 318
    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 319
    .local v2, "node":Lorg/w3c/dom/Node;
    instance-of v3, v2, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_1e

    .line 320
    move-object v3, v2

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    .end local v2    # "node":Lorg/w3c/dom/Node;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 323
    .end local v1    # "i":I
    :cond_21
    new-instance v1, Ljava/util/prefs/XmlSupport$NodeListAdapter;

    invoke-direct {v1, v0}, Ljava/util/prefs/XmlSupport$NodeListAdapter;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method static blacklist export(Ljava/io/OutputStream;Ljava/util/prefs/Preferences;Z)V
    .registers 11
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "p"    # Ljava/util/prefs/Preferences;
    .param p2, "subTree"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 100
    move-object v0, p1

    check-cast v0, Ljava/util/prefs/AbstractPreferences;

    invoke-virtual {v0}, Ljava/util/prefs/AbstractPreferences;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_84

    .line 102
    const-string v0, "preferences"

    invoke-static {v0}, Ljava/util/prefs/XmlSupport;->createPrefsDoc(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 103
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    .line 104
    .local v1, "preferences":Lorg/w3c/dom/Element;
    const-string v2, "EXTERNAL_XML_VERSION"

    const-string v3, "1.0"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    nop

    .line 106
    const-string v2, "root"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 107
    .local v2, "xmlRoot":Lorg/w3c/dom/Element;
    invoke-virtual {p1}, Ljava/util/prefs/Preferences;->isUserNode()Z

    move-result v3

    if-eqz v3, :cond_30

    const-string v3, "user"

    goto :goto_32

    :cond_30
    const-string v3, "system"

    :goto_32
    const-string v4, "type"

    invoke-interface {v2, v4, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v3, "ancestors":Ljava/util/List;, "Ljava/util/List<Ljava/util/prefs/Preferences;>;"
    move-object v4, p1

    .local v4, "kid":Ljava/util/prefs/Preferences;
    invoke-virtual {v4}, Ljava/util/prefs/Preferences;->parent()Ljava/util/prefs/Preferences;

    move-result-object v5

    .local v5, "dad":Ljava/util/prefs/Preferences;
    :goto_41
    if-eqz v5, :cond_4c

    .line 114
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    move-object v4, v5

    invoke-virtual {v4}, Ljava/util/prefs/Preferences;->parent()Ljava/util/prefs/Preferences;

    move-result-object v5

    goto :goto_41

    .line 116
    .end local v4    # "kid":Ljava/util/prefs/Preferences;
    .end local v5    # "dad":Ljava/util/prefs/Preferences;
    :cond_4c
    move-object v4, v2

    .line 117
    .local v4, "e":Lorg/w3c/dom/Element;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_53
    if-ltz v5, :cond_7d

    .line 118
    const-string v6, "map"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 119
    const-string v6, "node"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lorg/w3c/dom/Element;

    .line 120
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/prefs/Preferences;

    invoke-virtual {v6}, Ljava/util/prefs/Preferences;->name()Ljava/lang/String;

    move-result-object v6

    const-string v7, "name"

    invoke-interface {v4, v7, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    add-int/lit8 v5, v5, -0x1

    goto :goto_53

    .line 122
    .end local v5    # "i":I
    :cond_7d
    invoke-static {v4, v0, p1, p2}, Ljava/util/prefs/XmlSupport;->putPreferencesInXml(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/util/prefs/Preferences;Z)V

    .line 124
    invoke-static {v0, p0}, Ljava/util/prefs/XmlSupport;->writeDoc(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)V

    .line 125
    return-void

    .line 101
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v1    # "preferences":Lorg/w3c/dom/Element;
    .end local v2    # "xmlRoot":Lorg/w3c/dom/Element;
    .end local v3    # "ancestors":Ljava/util/List;, "Ljava/util/List<Ljava/util/prefs/Preferences;>;"
    .end local v4    # "e":Lorg/w3c/dom/Element;
    :cond_84
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Node has been removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist exportMap(Ljava/io/OutputStream;Ljava/util/Map;)V
    .registers 9
    .param p0, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "map"

    invoke-static {v0}, Ljava/util/prefs/XmlSupport;->createPrefsDoc(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 392
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    .line 393
    .local v1, "xmlMap":Lorg/w3c/dom/Element;
    const-string v2, "MAP_XML_VERSION"

    const-string v3, "1.0"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 396
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 397
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 398
    const-string v4, "entry"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 399
    .local v4, "xe":Lorg/w3c/dom/Element;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "key"

    invoke-interface {v4, v6, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "value"

    invoke-interface {v4, v6, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "xe":Lorg/w3c/dom/Element;
    goto :goto_19

    .line 403
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_49
    invoke-static {v0, p0}, Ljava/util/prefs/XmlSupport;->writeDoc(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)V

    .line 404
    return-void
.end method

.method static blacklist importMap(Ljava/io/InputStream;Ljava/util/Map;)V
    .registers 11
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/InvalidPreferencesFormatException;
        }
    .end annotation

    .line 423
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "1.0"

    :try_start_2
    invoke-static {p0}, Ljava/util/prefs/XmlSupport;->loadPrefsDoc(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 424
    .local v1, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    .line 426
    .local v2, "xmlMap":Lorg/w3c/dom/Element;
    const-string v3, "MAP_XML_VERSION"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 427
    .local v3, "mapVersion":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_44

    .line 434
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 435
    .local v0, "entries":Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .local v5, "numEntries":I
    :goto_1f
    if-ge v4, v5, :cond_42

    .line 440
    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    instance-of v6, v6, Lorg/w3c/dom/Element;

    if-nez v6, :cond_2a

    .line 441
    goto :goto_3f

    .line 444
    :cond_2a
    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 445
    .local v6, "entry":Lorg/w3c/dom/Element;
    const-string v7, "key"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "value"

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    .end local v6    # "entry":Lorg/w3c/dom/Element;
    :goto_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 449
    .end local v0    # "entries":Lorg/w3c/dom/NodeList;
    .end local v1    # "doc":Lorg/w3c/dom/Document;
    .end local v2    # "xmlMap":Lorg/w3c/dom/Element;
    .end local v3    # "mapVersion":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "numEntries":I
    :cond_42
    nop

    .line 450
    return-void

    .line 428
    .restart local v1    # "doc":Lorg/w3c/dom/Document;
    .restart local v2    # "xmlMap":Lorg/w3c/dom/Element;
    .restart local v3    # "mapVersion":Ljava/lang/String;
    :cond_44
    new-instance v4, Ljava/util/prefs/InvalidPreferencesFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Preferences map file format version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not supported. This java installation can read versions "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " or older. You may need to install a newer version of JDK."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/prefs/InvalidPreferencesFormatException;-><init>(Ljava/lang/String;)V

    .end local p0    # "is":Ljava/io/InputStream;
    .end local p1    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    throw v4
    :try_end_6d
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_6d} :catch_6d

    .line 447
    .end local v1    # "doc":Lorg/w3c/dom/Document;
    .end local v2    # "xmlMap":Lorg/w3c/dom/Element;
    .end local v3    # "mapVersion":Ljava/lang/String;
    .restart local p0    # "is":Ljava/io/InputStream;
    .restart local p1    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_6d
    move-exception v0

    .line 448
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Ljava/util/prefs/InvalidPreferencesFormatException;

    invoke-direct {v1, v0}, Ljava/util/prefs/InvalidPreferencesFormatException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static blacklist importPreferences(Ljava/io/InputStream;)V
    .registers 7
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/InvalidPreferencesFormatException;
        }
    .end annotation

    .line 200
    const-string v0, "1.0"

    :try_start_2
    invoke-static {p0}, Ljava/util/prefs/XmlSupport;->loadPrefsDoc(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 201
    .local v1, "doc":Lorg/w3c/dom/Document;
    nop

    .line 202
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    const-string v3, "EXTERNAL_XML_VERSION"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "xmlVersion":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_55

    .line 216
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 218
    .local v0, "xmlRoot":Lorg/w3c/dom/Element;
    const-string v3, "root"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 219
    .local v3, "elements":Lorg/w3c/dom/NodeList;
    if-eqz v3, :cond_4d

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4d

    .line 223
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 226
    .end local v0    # "xmlRoot":Lorg/w3c/dom/Element;
    .local v4, "xmlRoot":Lorg/w3c/dom/Element;
    const-string v0, "type"

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "user"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 227
    invoke-static {}, Ljava/util/prefs/Preferences;->userRoot()Ljava/util/prefs/Preferences;

    move-result-object v0

    goto :goto_48

    :cond_44
    invoke-static {}, Ljava/util/prefs/Preferences;->systemRoot()Ljava/util/prefs/Preferences;

    move-result-object v0

    .line 228
    .local v0, "prefsRoot":Ljava/util/prefs/Preferences;
    :goto_48
    invoke-static {v0, v4}, Ljava/util/prefs/XmlSupport;->ImportSubtree(Ljava/util/prefs/Preferences;Lorg/w3c/dom/Element;)V

    .line 231
    .end local v0    # "prefsRoot":Ljava/util/prefs/Preferences;
    .end local v1    # "doc":Lorg/w3c/dom/Document;
    .end local v2    # "xmlVersion":Ljava/lang/String;
    .end local v3    # "elements":Lorg/w3c/dom/NodeList;
    .end local v4    # "xmlRoot":Lorg/w3c/dom/Element;
    nop

    .line 232
    return-void

    .line 220
    .local v0, "xmlRoot":Lorg/w3c/dom/Element;
    .restart local v1    # "doc":Lorg/w3c/dom/Document;
    .restart local v2    # "xmlVersion":Ljava/lang/String;
    .restart local v3    # "elements":Lorg/w3c/dom/NodeList;
    :cond_4d
    new-instance v4, Ljava/util/prefs/InvalidPreferencesFormatException;

    const-string v5, "invalid root node"

    invoke-direct {v4, v5}, Ljava/util/prefs/InvalidPreferencesFormatException;-><init>(Ljava/lang/String;)V

    .end local p0    # "is":Ljava/io/InputStream;
    throw v4

    .line 204
    .end local v0    # "xmlRoot":Lorg/w3c/dom/Element;
    .end local v3    # "elements":Lorg/w3c/dom/NodeList;
    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_55
    new-instance v3, Ljava/util/prefs/InvalidPreferencesFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exported preferences file format version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not supported. This java installation can read versions "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " or older. You may need to install a newer version of JDK."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/prefs/InvalidPreferencesFormatException;-><init>(Ljava/lang/String;)V

    .end local p0    # "is":Ljava/io/InputStream;
    throw v3
    :try_end_7e
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_7e} :catch_7e

    .line 229
    .end local v1    # "doc":Lorg/w3c/dom/Document;
    .end local v2    # "xmlVersion":Ljava/lang/String;
    .restart local p0    # "is":Ljava/io/InputStream;
    :catch_7e
    move-exception v0

    .line 230
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Ljava/util/prefs/InvalidPreferencesFormatException;

    invoke-direct {v1, v0}, Ljava/util/prefs/InvalidPreferencesFormatException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist loadPrefsDoc(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    .registers 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 256
    .local v0, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringElementContentWhitespace(Z)V

    .line 259
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setCoalescing(Z)V

    .line 260
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    .line 262
    :try_start_e
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 263
    .local v1, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/util/prefs/XmlSupport$Resolver;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/prefs/XmlSupport$Resolver;-><init>(Ljava/util/prefs/XmlSupport-IA;)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 264
    new-instance v2, Ljava/util/prefs/XmlSupport$EH;

    invoke-direct {v2, v3}, Ljava/util/prefs/XmlSupport$EH;-><init>(Ljava/util/prefs/XmlSupport-IA;)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 265
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v2
    :try_end_2c
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_e .. :try_end_2c} :catch_2d

    return-object v2

    .line 266
    .end local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    :catch_2d
    move-exception v1

    .line 267
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method private static blacklist putPreferencesInXml(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/util/prefs/Preferences;Z)V
    .registers 14
    .param p0, "elt"    # Lorg/w3c/dom/Element;
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .param p2, "prefs"    # Ljava/util/prefs/Preferences;
    .param p3, "subTree"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "kidsCopy":[Ljava/util/prefs/Preferences;
    const/4 v1, 0x0

    .line 148
    .local v1, "kidNames":[Ljava/lang/String;
    move-object v2, p2

    check-cast v2, Ljava/util/prefs/AbstractPreferences;

    iget-object v2, v2, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 151
    :try_start_8
    move-object v3, p2

    check-cast v3, Ljava/util/prefs/AbstractPreferences;

    invoke-virtual {v3}, Ljava/util/prefs/AbstractPreferences;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 152
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3, p0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 153
    monitor-exit v2

    return-void

    .line 156
    :cond_1a
    invoke-virtual {p2}, Ljava/util/prefs/Preferences;->keys()[Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "keys":[Ljava/lang/String;
    const-string v4, "map"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-interface {p0, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 158
    .local v4, "map":Lorg/w3c/dom/Element;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2b
    array-length v6, v3

    if-ge v5, v6, :cond_50

    .line 159
    const-string v6, "entry"

    .line 160
    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 161
    .local v6, "entry":Lorg/w3c/dom/Element;
    const-string v7, "key"

    aget-object v8, v3, v5

    invoke-interface {v6, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v7, "value"

    aget-object v8, v3, v5

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Ljava/util/prefs/Preferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .end local v6    # "entry":Lorg/w3c/dom/Element;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 166
    .end local v5    # "i":I
    :cond_50
    if-eqz p3, :cond_6a

    .line 168
    invoke-virtual {p2}, Ljava/util/prefs/Preferences;->childrenNames()[Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 169
    array-length v5, v1

    new-array v5, v5, [Ljava/util/prefs/Preferences;

    move-object v0, v5

    .line 170
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_5c
    array-length v6, v1

    if-ge v5, v6, :cond_6a

    .line 171
    aget-object v6, v1, v5

    invoke-virtual {p2, v6}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    move-result-object v6

    aput-object v6, v0, v5

    .line 170
    add-int/lit8 v5, v5, 0x1

    goto :goto_5c

    .line 174
    .end local v3    # "keys":[Ljava/lang/String;
    .end local v4    # "map":Lorg/w3c/dom/Element;
    .end local v5    # "i":I
    :cond_6a
    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_8 .. :try_end_6b} :catchall_8d

    .line 176
    if-eqz p3, :cond_8c

    .line 177
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6e
    array-length v3, v1

    if-ge v2, v3, :cond_8c

    .line 178
    const-string v3, "node"

    .line 179
    invoke-interface {p1, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {p0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 180
    .local v3, "xmlKid":Lorg/w3c/dom/Element;
    const-string v4, "name"

    aget-object v5, v1, v2

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    aget-object v4, v0, v2

    invoke-static {v3, p1, v4, p3}, Ljava/util/prefs/XmlSupport;->putPreferencesInXml(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/util/prefs/Preferences;Z)V

    .line 177
    .end local v3    # "xmlKid":Lorg/w3c/dom/Element;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    .line 184
    .end local v2    # "i":I
    :cond_8c
    return-void

    .line 174
    :catchall_8d
    move-exception v3

    :try_start_8e
    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw v3
.end method

.method private static final blacklist writeDoc(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)V
    .registers 9
    .param p0, "doc"    # Lorg/w3c/dom/Document;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0
    :try_end_4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_4} :catch_44

    .line 280
    .local v0, "tf":Ljavax/xml/transform/TransformerFactory;
    :try_start_4
    const-string v1, "indent-number"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_f} :catch_10
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_f} :catch_44

    .line 284
    goto :goto_11

    .line 281
    :catch_10
    move-exception v1

    .line 285
    :goto_11
    :try_start_11
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    .line 286
    .local v1, "t":Ljavax/xml/transform/Transformer;
    const-string v2, "doctype-system"

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v2, "indent"

    const-string v3, "yes"

    invoke-virtual {v1, v2, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    const-string v6, "UTF-8"

    invoke-direct {v5, p1, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v3, v4}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v2, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_42
    .catch Ljavax/xml/transform/TransformerException; {:try_start_11 .. :try_end_42} :catch_44

    .line 295
    .end local v0    # "tf":Ljavax/xml/transform/TransformerFactory;
    .end local v1    # "t":Ljavax/xml/transform/Transformer;
    nop

    .line 296
    return-void

    .line 293
    :catch_44
    move-exception v0

    .line 294
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
