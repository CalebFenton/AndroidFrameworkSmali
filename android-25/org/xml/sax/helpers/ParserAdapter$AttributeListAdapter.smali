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
.field private qAtts:Lorg/xml/sax/AttributeList;

.field final synthetic this$0:Lorg/xml/sax/helpers/ParserAdapter;


# direct methods
.method constructor <init>(Lorg/xml/sax/helpers/ParserAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lorg/xml/sax/helpers/ParserAdapter;

    #@0
    .prologue
    .line 862
    iput-object p1, p0, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;->this$0:Lorg/xml/sax/helpers/ParserAdapter;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public getIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "qName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 978
    iget-object v2, p0, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;->this$0:Lorg/xml/sax/helpers/ParserAdapter;

    #@2
    invoke-static {v2}, Lorg/xml/sax/helpers/ParserAdapter;->-get0(Lorg/xml/sax/helpers/ParserAdapter;)Lorg/xml/sax/helpers/AttributesImpl;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    #@9
    move-result v1

    #@a
    .line 979
    .local v1, "max":I
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@d
    .line 980
    iget-object v2, p0, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;->qAtts:Lorg/xml/sax/AttributeList;

    #@f
    invoke-interface {v2, v0}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 981
    return v0

    #@1a
    .line 979
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 984
    :cond_1
    const/4 v2, -0x1

    #@1e
    return v2
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 965
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public getLength()I
    .locals 1

    #@0
    .prologue
    .line 889
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;->qAtts:Lorg/xml/sax/AttributeList;

    #@2
    invoke-interface {v0}, Lorg/xml/sax/AttributeList;->getLength()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 915
    const-string/jumbo v0, ""

    #@3
    return-object v0
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 927
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;->qAtts:Lorg/xml/sax/AttributeList;

    #@2
    invoke-interface {v0, p1}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 939
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;->qAtts:Lorg/xml/sax/AttributeList;

    #@2
    invoke-interface {v0, p1}, Lorg/xml/sax/AttributeList;->getType(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "qName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1009
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;->qAtts:Lorg/xml/sax/AttributeList;

    #@2
    invoke-interface {v0, p1}, Lorg/xml/sax/AttributeList;->getType(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 997
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 902
    const-string/jumbo v0, ""

    #@3
    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 951
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;->qAtts:Lorg/xml/sax/AttributeList;

    #@2
    invoke-interface {v0, p1}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "qName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1034
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;->qAtts:Lorg/xml/sax/AttributeList;

    #@2
    invoke-interface {v0, p1}, Lorg/xml/sax/AttributeList;->getValue(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1022
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method setAttributeList(Lorg/xml/sax/AttributeList;)V
    .locals 0
    .param p1, "qAtts"    # Lorg/xml/sax/AttributeList;

    #@0
    .prologue
    .line 877
    iput-object p1, p0, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;->qAtts:Lorg/xml/sax/AttributeList;

    #@2
    .line 875
    return-void
.end method
