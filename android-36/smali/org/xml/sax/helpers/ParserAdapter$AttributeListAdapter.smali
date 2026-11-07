.class final Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;
.super Ljava/lang/Object;
.source "ParserAdapter.java"

# interfaces
.implements Lorg/xml/sax/Attributes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xml/sax/helpers/ParserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AttributeListAdapter"
.end annotation


# instance fields
.field private greylist-max-o qAtts:Lorg/xml/sax/AttributeList;

.field final synthetic blacklist this$0:Lorg/xml/sax/helpers/ParserAdapter;


# direct methods
.method constructor greylist <init>(Lorg/xml/sax/helpers/ParserAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lorg/xml/sax/helpers/ParserAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 887
    iput-object p1, p0, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;->this$0:Lorg/xml/sax/helpers/ParserAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 888
    return-void
.end method


# virtual methods
.method public whitelist test-api getIndex(Ljava/lang/String;)I
    .registers 5
    .param p1, "qName"    # Ljava/lang/String;

    .line 1002
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;->this$0:Lorg/xml/sax/helpers/ParserAdapter;

    invoke-static {v0}, Lorg/xml/sax/helpers/ParserAdapter;->-$$Nest$fgetatts(Lorg/xml/sax/helpers/ParserAdapter;)Lorg/xml/sax/helpers/AttributesImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result v0

    .line 1003
    .local v0, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_1d

    .line 1004
    iget-object v2, p0, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;->qAtts:Lorg/xml/sax/AttributeList;

    invoke-interface {v2, v1}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1005
    return v1

    .line 1003
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1008
    .end local v1    # "i":I
    :cond_1d
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist test-api getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 989
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api getLength()I
    .registers 2

    .line 913
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;->qAtts:Lorg/xml/sax/AttributeList;

    invoke-interface {v0}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getLocalName(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"    # I

    .line 939
    const-string v0, ""

    return-object v0
.end method

.method public whitelist test-api getQName(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"    # I

    .line 951
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;->qAtts:Lorg/xml/sax/AttributeList;

    invoke-interface {v0, p1}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getType(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"    # I

    .line 963
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;->qAtts:Lorg/xml/sax/AttributeList;

    invoke-interface {v0, p1}, Lorg/xml/sax/AttributeList;->getType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "qName"    # Ljava/lang/String;

    .line 1033
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;->qAtts:Lorg/xml/sax/AttributeList;

    invoke-interface {v0, p1}, Lorg/xml/sax/AttributeList;->getType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 1021
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getURI(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"    # I

    .line 926
    const-string v0, ""

    return-object v0
.end method

.method public whitelist test-api getValue(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"    # I

    .line 975
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;->qAtts:Lorg/xml/sax/AttributeList;

    invoke-interface {v0, p1}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "qName"    # Ljava/lang/String;

    .line 1058
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;->qAtts:Lorg/xml/sax/AttributeList;

    invoke-interface {v0, p1}, Lorg/xml/sax/AttributeList;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 1046
    const/4 v0, 0x0

    return-object v0
.end method

.method greylist-max-o setAttributeList(Lorg/xml/sax/AttributeList;)V
    .registers 2
    .param p1, "qAtts"    # Lorg/xml/sax/AttributeList;

    .line 901
    iput-object p1, p0, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;->qAtts:Lorg/xml/sax/AttributeList;

    .line 902
    return-void
.end method
