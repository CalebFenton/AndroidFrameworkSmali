.class public Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
.super Ljava/lang/Object;
.source "XMLNode.java"


# static fields
.field private static final CDATA_CLOSE:Ljava/lang/String; = "]]>"

.field private static final CDATA_OPEN:Ljava/lang/String; = "<![CDATA["

.field private static final XML_SPECIAL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final XML_SPECIAL_CHARS:Ljava/lang/String; = "\"\'<>&"


# instance fields
.field private final mAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/omadm/XMLNode;",
            ">;"
        }
    .end annotation
.end field

.field private mMO:Lcom/android/server/wifi/hotspot2/omadm/MOTree;

.field private final mParent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

.field private final mTag:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mTextBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 27
    new-instance v1, Ljava/util/HashSet;

    #@2
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@5
    sput-object v1, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->XML_SPECIAL:Ljava/util/Set;

    #@7
    .line 32
    const/4 v0, 0x0

    #@8
    .local v0, "n":I
    :goto_0
    const-string/jumbo v1, "\"\'<>&"

    #@b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@e
    move-result v1

    #@f
    if-ge v0, v1, :cond_0

    #@11
    .line 33
    sget-object v1, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->XML_SPECIAL:Ljava/util/Set;

    #@13
    const-string/jumbo v2, "\"\'<>&"

    #@16
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    #@19
    move-result v2

    #@1a
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@1d
    move-result-object v2

    #@1e
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@21
    .line 32
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 17
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p1, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/omadm/XMLNode;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 54
    .local p3, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    #@5
    .line 57
    new-instance v3, Ljava/util/HashMap;

    #@7
    if-nez p3, :cond_0

    #@9
    const/4 v2, 0x0

    #@a
    :goto_0
    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    #@d
    iput-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mAttributes:Ljava/util/Map;

    #@f
    .line 59
    if-eqz p3, :cond_1

    #@11
    .line 60
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@14
    move-result-object v2

    #@15
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v1

    #@19
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_1

    #@1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Ljava/util/Map$Entry;

    #@25
    .line 61
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mAttributes:Ljava/util/Map;

    #@27
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, Ljava/lang/String;

    #@2d
    new-instance v6, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;

    #@2f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@32
    move-result-object v3

    #@33
    check-cast v3, Ljava/lang/String;

    #@35
    const-string/jumbo v7, ""

    #@38
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3b
    move-result-object v4

    #@3c
    check-cast v4, Ljava/lang/String;

    #@3e
    invoke-direct {v6, v3, v7, v4}, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@41
    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    goto :goto_1

    #@45
    .line 57
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->size()I

    #@48
    move-result v2

    #@49
    goto :goto_0

    #@4a
    .line 65
    :cond_1
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mParent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@4c
    .line 66
    new-instance v2, Ljava/util/ArrayList;

    #@4e
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@51
    iput-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    #@53
    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    iput-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTextBuilder:Ljava/lang/StringBuilder;

    #@5a
    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 7
    .param p1, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    #@5
    .line 40
    new-instance v1, Ljava/util/HashMap;

    #@7
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@a
    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mAttributes:Ljava/util/Map;

    #@c
    .line 42
    invoke-interface {p3}, Lorg/xml/sax/Attributes;->getLength()I

    #@f
    move-result v1

    #@10
    if-lez v1, :cond_0

    #@12
    .line 43
    const/4 v0, 0x0

    #@13
    .local v0, "n":I
    :goto_0
    invoke-interface {p3}, Lorg/xml/sax/Attributes;->getLength()I

    #@16
    move-result v1

    #@17
    if-ge v0, v1, :cond_0

    #@19
    .line 44
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mAttributes:Ljava/util/Map;

    #@1b
    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    new-instance v3, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;

    #@21
    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    .line 45
    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    #@2c
    move-result-object v6

    #@2d
    .line 44
    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@30
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    .line 43
    add-int/lit8 v0, v0, 0x1

    #@35
    goto :goto_0

    #@36
    .line 48
    .end local v0    # "n":I
    :cond_0
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mParent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@38
    .line 49
    new-instance v1, Ljava/util/ArrayList;

    #@3a
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@3d
    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    #@3f
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTextBuilder:Ljava/lang/StringBuilder;

    #@46
    .line 37
    return-void
.end method

.method private static escapable(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 273
    const/4 v0, 0x0

    #@1
    .local v0, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v1

    #@5
    if-ge v0, v1, :cond_1

    #@7
    .line 274
    sget-object v1, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->XML_SPECIAL:Ljava/util/Set;

    #@9
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v2

    #@d
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@10
    move-result-object v2

    #@11
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 275
    const/4 v1, 0x1

    #@18
    return v1

    #@19
    .line 273
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 278
    :cond_1
    const/4 v1, 0x0

    #@1d
    return v1
.end method

.method private static escapeCdata(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 246
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->escapable(Ljava/lang/String;)Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 247
    return-object p0

    #@7
    .line 252
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    .line 253
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "<![CDATA["

    #@f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    .line 254
    const/4 v2, 0x0

    #@13
    .line 256
    .local v2, "start":I
    :goto_0
    const-string/jumbo v3, "]]>"

    #@16
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@19
    move-result v0

    #@1a
    .line 257
    .local v0, "etoken":I
    if-ltz v0, :cond_1

    #@1c
    .line 258
    add-int/lit8 v3, v0, 0x2

    #@1e
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    const-string/jumbo v4, "]]>"

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    const-string/jumbo v4, "<![CDATA["

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 259
    add-int/lit8 v2, v0, 0x2

    #@35
    goto :goto_0

    #@36
    .line 262
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@39
    move-result v3

    #@3a
    add-int/lit8 v3, v3, -0x1

    #@3c
    if-ge v2, v3, :cond_2

    #@3e
    .line 263
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 268
    :cond_2
    const-string/jumbo v3, "]]>"

    #@48
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    .line 269
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    return-object v3
.end method

.method private toString([CLjava/lang/StringBuilder;)V
    .locals 8
    .param p1, "indent"    # [C
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/16 v7, 0x20

    #@2
    .line 222
    invoke-static {p1, v7}, Ljava/util/Arrays;->fill([CC)V

    #@5
    .line 224
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    #@8
    move-result-object v5

    #@9
    const/16 v6, 0x3c

    #@b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e
    move-result-object v5

    #@f
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    #@11
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 225
    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mAttributes:Ljava/util/Map;

    #@16
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@19
    move-result-object v5

    #@1a
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v3

    #@1e
    .local v3, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v5

    #@22
    if-eqz v5, :cond_0

    #@24
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Ljava/util/Map$Entry;

    #@2a
    .line 226
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;>;"
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v6

    #@2e
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@31
    move-result-object v5

    #@32
    check-cast v5, Ljava/lang/String;

    #@34
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    const-string/jumbo v6, "=\'"

    #@3b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@42
    move-result-object v5

    #@43
    check-cast v5, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;

    #@45
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->getValue()Ljava/lang/String;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    const/16 v6, 0x27

    #@4f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@52
    goto :goto_0

    #@53
    .line 229
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;>;"
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    #@55
    if-eqz v5, :cond_1

    #@57
    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    #@59
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    #@5c
    move-result v5

    #@5d
    if-eqz v5, :cond_2

    #@5f
    .line 232
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    #@61
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    #@64
    move-result v5

    #@65
    if-eqz v5, :cond_3

    #@67
    .line 233
    const-string/jumbo v5, "/>\n"

    #@6a
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    .line 221
    :goto_1
    return-void

    #@6e
    .line 230
    :cond_2
    const/16 v5, 0x3e

    #@70
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@73
    move-result-object v5

    #@74
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    #@76
    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->escapeCdata(Ljava/lang/String;)Ljava/lang/String;

    #@79
    move-result-object v6

    #@7a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v5

    #@7e
    const-string/jumbo v6, "</"

    #@81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v5

    #@85
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    #@87
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v5

    #@8b
    const-string/jumbo v6, ">\n"

    #@8e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    goto :goto_1

    #@92
    .line 236
    :cond_3
    const-string/jumbo v5, ">\n"

    #@95
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    .line 237
    array-length v5, p1

    #@99
    add-int/lit8 v5, v5, 0x2

    #@9b
    invoke-static {p1, v5}, Ljava/util/Arrays;->copyOf([CI)[C

    #@9e
    move-result-object v4

    #@9f
    .line 238
    .local v4, "subIndent":[C
    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    #@a1
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a4
    move-result-object v1

    #@a5
    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a8
    move-result v5

    #@a9
    if-eqz v5, :cond_4

    #@ab
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ae
    move-result-object v0

    #@af
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@b1
    .line 239
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-direct {v0, v4, p2}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->toString([CLjava/lang/StringBuilder;)V

    #@b4
    goto :goto_2

    #@b5
    .line 241
    .end local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    :cond_4
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v5

    #@b9
    const-string/jumbo v6, "</"

    #@bc
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v5

    #@c0
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    #@c2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v5

    #@c6
    const-string/jumbo v6, ">\n"

    #@c9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    goto :goto_1
.end method


# virtual methods
.method public addChild(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;)V
    .locals 1
    .param p1, "child"    # Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 129
    return-void
.end method

.method public addText([CII)V
    .locals 5
    .param p1, "chs"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    const/16 v4, 0x20

    #@2
    const/4 v3, 0x0

    #@3
    .line 117
    new-instance v0, Ljava/lang/String;

    #@5
    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    #@8
    .line 118
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 119
    .local v1, "trimmed":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 120
    return-void

    #@13
    .line 122
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v2

    #@17
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v3

    #@1b
    if-eq v2, v3, :cond_1

    #@1d
    .line 123
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTextBuilder:Ljava/lang/StringBuilder;

    #@1f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@22
    .line 124
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTextBuilder:Ljava/lang/StringBuilder;

    #@24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 125
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@2a
    move-result v2

    #@2b
    add-int/lit8 v2, v2, -0x1

    #@2d
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    #@30
    move-result v2

    #@31
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@34
    move-result v3

    #@35
    add-int/lit8 v3, v3, -0x1

    #@37
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    #@3a
    move-result v3

    #@3b
    if-eq v2, v3, :cond_2

    #@3d
    .line 126
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTextBuilder:Ljava/lang/StringBuilder;

    #@3f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@42
    .line 116
    :cond_2
    return-void
.end method

.method public close()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 134
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTextBuilder:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6
    move-result-object v7

    #@7
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@a
    move-result-object v5

    #@b
    .line 135
    .local v5, "text":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@10
    move-result v7

    #@11
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    #@14
    .line 136
    .local v2, "filtered":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    #@15
    .local v3, "n":I
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@18
    move-result v7

    #@19
    if-ge v3, v7, :cond_1

    #@1b
    .line 137
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    #@1e
    move-result v0

    #@1f
    .line 138
    .local v0, "ch":C
    const/16 v7, 0x20

    #@21
    if-lt v0, v7, :cond_0

    #@23
    .line 139
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26
    .line 136
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@28
    goto :goto_0

    #@29
    .line 142
    .end local v0    # "ch":C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v7

    #@2d
    iput-object v7, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    #@2f
    .line 143
    iput-object v8, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTextBuilder:Ljava/lang/StringBuilder;

    #@31
    .line 145
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    #@33
    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->hasMgmtTreeTag(Ljava/lang/String;)Z

    #@36
    move-result v7

    #@37
    if-eqz v7, :cond_2

    #@39
    .line 147
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mAttributes:Ljava/util/Map;

    #@3b
    const-string/jumbo v9, "spp:moURN"

    #@3e
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    move-result-object v6

    #@42
    check-cast v6, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;

    #@44
    .line 148
    .local v6, "urn":Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;
    new-instance v4, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;

    #@46
    invoke-direct {v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;-><init>()V

    #@49
    .line 149
    .local v4, "omaParser":Lcom/android/server/wifi/hotspot2/omadm/OMAParser;
    iget-object v9, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    #@4b
    if-eqz v6, :cond_3

    #@4d
    invoke-virtual {v6}, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->getValue()Ljava/lang/String;

    #@50
    move-result-object v7

    #@51
    :goto_1
    invoke-virtual {v4, v9, v7}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@54
    move-result-object v7

    #@55
    iput-object v7, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mMO:Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@57
    .line 133
    .end local v4    # "omaParser":Lcom/android/server/wifi/hotspot2/omadm/OMAParser;
    .end local v6    # "urn":Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;
    :cond_2
    :goto_2
    return-void

    #@58
    .restart local v4    # "omaParser":Lcom/android/server/wifi/hotspot2/omadm/OMAParser;
    .restart local v6    # "urn":Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;
    :cond_3
    move-object v7, v8

    #@59
    .line 149
    goto :goto_1

    #@5a
    .line 151
    .end local v4    # "omaParser":Lcom/android/server/wifi/hotspot2/omadm/OMAParser;
    .end local v6    # "urn":Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;
    :catch_0
    move-exception v1

    #@5b
    .line 152
    .local v1, "e":Ljava/lang/Exception;
    iput-object v8, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mMO:Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@5d
    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 14
    .param p1, "thatObject"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v13, 0x1

    #@1
    const/4 v12, 0x0

    #@2
    .line 73
    if-ne p1, p0, :cond_0

    #@4
    .line 74
    return v13

    #@5
    .line 75
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v9

    #@9
    const-class v10, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@b
    if-eq v9, v10, :cond_1

    #@d
    .line 76
    return v12

    #@e
    :cond_1
    move-object v6, p1

    #@f
    .line 79
    check-cast v6, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@11
    .line 80
    .local v6, "that":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    #@14
    move-result-object v9

    #@15
    invoke-virtual {v6}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    #@18
    move-result-object v10

    #@19
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v9

    #@1d
    if-eqz v9, :cond_2

    #@1f
    .line 81
    iget-object v9, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mAttributes:Ljava/util/Map;

    #@21
    invoke-interface {v9}, Ljava/util/Map;->size()I

    #@24
    move-result v9

    #@25
    iget-object v10, v6, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mAttributes:Ljava/util/Map;

    #@27
    invoke-interface {v10}, Ljava/util/Map;->size()I

    #@2a
    move-result v10

    #@2b
    if-eq v9, v10, :cond_3

    #@2d
    .line 83
    :cond_2
    return v12

    #@2e
    .line 82
    :cond_3
    iget-object v9, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    #@30
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@33
    move-result v9

    #@34
    iget-object v10, v6, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    #@36
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@39
    move-result v10

    #@3a
    if-ne v9, v10, :cond_2

    #@3c
    .line 86
    iget-object v9, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mAttributes:Ljava/util/Map;

    #@3e
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@41
    move-result-object v9

    #@42
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@45
    move-result-object v4

    #@46
    .local v4, "entry$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@49
    move-result v9

    #@4a
    if-eqz v9, :cond_5

    #@4c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4f
    move-result-object v3

    #@50
    check-cast v3, Ljava/util/Map$Entry;

    #@52
    .line 87
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@55
    move-result-object v9

    #@56
    check-cast v9, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;

    #@58
    iget-object v10, v6, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mAttributes:Ljava/util/Map;

    #@5a
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@5d
    move-result-object v11

    #@5e
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@61
    move-result-object v10

    #@62
    invoke-virtual {v9, v10}, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v9

    #@66
    if-nez v9, :cond_4

    #@68
    .line 88
    return v12

    #@69
    .line 92
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;>;"
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    #@6b
    iget-object v9, v6, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    #@6d
    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@70
    .line 93
    .local v2, "cloneOfThat":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/omadm/XMLNode;>;"
    iget-object v9, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    #@72
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@75
    move-result-object v1

    #@76
    .local v1, "child$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@79
    move-result v9

    #@7a
    if-eqz v9, :cond_9

    #@7c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7f
    move-result-object v0

    #@80
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@82
    .line 94
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@85
    move-result-object v8

    #@86
    .line 95
    .local v8, "thatChildren":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/hotspot2/omadm/XMLNode;>;"
    const/4 v5, 0x0

    #@87
    .line 96
    .local v5, "found":Z
    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@8a
    move-result v9

    #@8b
    if-eqz v9, :cond_8

    #@8d
    .line 97
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@90
    move-result-object v7

    #@91
    check-cast v7, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@93
    .line 98
    .local v7, "thatChild":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v0, v7}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->equals(Ljava/lang/Object;)Z

    #@96
    move-result v9

    #@97
    if-eqz v9, :cond_7

    #@99
    .line 99
    const/4 v5, 0x1

    #@9a
    .line 100
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    #@9d
    .line 104
    .end local v7    # "thatChild":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    :cond_8
    if-nez v5, :cond_6

    #@9f
    .line 105
    return v12

    #@a0
    .line 108
    .end local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .end local v5    # "found":Z
    .end local v8    # "thatChildren":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/hotspot2/omadm/XMLNode;>;"
    :cond_9
    return v13
.end method

.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 209
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mAttributes:Ljava/util/Map;

    #@3
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;

    #@9
    .line 210
    .local v0, "nodeAttribute":Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->getValue()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    :cond_0
    return-object v1
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mAttributes:Ljava/util/Map;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/omadm/XMLNode;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getMOTree()Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .locals 1

    #@0
    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mMO:Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@2
    return-object v0
.end method

.method public getNameSpace()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    #@0
    .prologue
    .line 162
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    #@2
    const-string/jumbo v2, ":"

    #@5
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 163
    .local v0, "nsn":[Ljava/lang/String;
    array-length v1, v0

    #@a
    const/4 v2, 0x2

    #@b
    if-eq v1, v2, :cond_0

    #@d
    .line 164
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "Non-namespaced tag: \'"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    const-string/jumbo v3, "\'"

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v1

    #@30
    .line 166
    :cond_0
    const/4 v1, 0x0

    #@31
    aget-object v1, v0, v1

    #@33
    return-object v1
.end method

.method public getParent()Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .locals 1

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mParent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@2
    return-object v0
.end method

.method public getSoleChild()Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    #@0
    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 179
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Expected exactly one child to "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    #@27
    const/4 v1, 0x0

    #@28
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@2e
    return-object v0
.end method

.method public getStrippedTag()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    #@0
    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    #@2
    const-string/jumbo v2, ":"

    #@5
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 171
    .local v0, "nsn":[Ljava/lang/String;
    array-length v1, v0

    #@a
    const/4 v2, 0x2

    #@b
    if-eq v1, v2, :cond_0

    #@d
    .line 172
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "Non-namespaced tag: \'"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    const-string/jumbo v3, "\'"

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v1

    #@30
    .line 174
    :cond_0
    const/4 v1, 0x1

    #@31
    aget-object v1, v0, v1

    #@33
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    return-object v1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTextualAttributes()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 201
    new-instance v2, Ljava/util/HashMap;

    #@2
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mAttributes:Ljava/util/Map;

    #@4
    invoke-interface {v3}, Ljava/util/Map;->size()I

    #@7
    move-result v3

    #@8
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    #@b
    .line 202
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mAttributes:Ljava/util/Map;

    #@d
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@10
    move-result-object v3

    #@11
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_0

    #@1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Ljava/util/Map$Entry;

    #@21
    .line 203
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    check-cast v3, Ljava/lang/String;

    #@27
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2a
    move-result-object v4

    #@2b
    check-cast v4, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;

    #@2d
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->getValue()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    goto :goto_0

    #@35
    .line 205
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;>;"
    :cond_0
    return-object v2
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    #@2
    .line 113
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTextBuilder:Ljava/lang/StringBuilder;

    #@5
    .line 111
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 284
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@6
    new-array v1, v1, [C

    #@8
    invoke-direct {p0, v1, v0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->toString([CLjava/lang/StringBuilder;)V

    #@b
    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method
