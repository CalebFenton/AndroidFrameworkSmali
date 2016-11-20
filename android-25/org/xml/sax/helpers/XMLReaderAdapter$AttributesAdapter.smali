.class final Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;
.super Ljava/lang/Object;
.source "XMLReaderAdapter.java"

# interfaces
.implements Lorg/xml/sax/AttributeList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xml/sax/helpers/XMLReaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AttributesAdapter"
.end annotation


# instance fields
.field private attributes:Lorg/xml/sax/Attributes;


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    #@0
    .prologue
    .line 468
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;->attributes:Lorg/xml/sax/Attributes;

    #@2
    invoke-interface {v0}, Lorg/xml/sax/Attributes;->getLength()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 480
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;->attributes:Lorg/xml/sax/Attributes;

    #@2
    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 492
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;->attributes:Lorg/xml/sax/Attributes;

    #@2
    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "qName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 516
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;->attributes:Lorg/xml/sax/Attributes;

    #@2
    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getType(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 504
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;->attributes:Lorg/xml/sax/Attributes;

    #@2
    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

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
    .line 528
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;->attributes:Lorg/xml/sax/Attributes;

    #@2
    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method setAttributes(Lorg/xml/sax/Attributes;)V
    .locals 0
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;

    #@0
    .prologue
    .line 456
    iput-object p1, p0, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;->attributes:Lorg/xml/sax/Attributes;

    #@2
    .line 454
    return-void
.end method
