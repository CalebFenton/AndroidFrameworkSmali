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
.field private greylist-max-o attributes:Lorg/xml/sax/Attributes;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    return-void
.end method


# virtual methods
.method public whitelist test-api getLength()I
    .registers 2

    .line 476
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;->attributes:Lorg/xml/sax/Attributes;

    invoke-interface {v0}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getName(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"    # I

    .line 488
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;->attributes:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getType(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"    # I

    .line 500
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;->attributes:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "qName"    # Ljava/lang/String;

    .line 524
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;->attributes:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getValue(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"    # I

    .line 512
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;->attributes:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "qName"    # Ljava/lang/String;

    .line 536
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;->attributes:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o setAttributes(Lorg/xml/sax/Attributes;)V
    .registers 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;

    .line 464
    iput-object p1, p0, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;->attributes:Lorg/xml/sax/Attributes;

    .line 465
    return-void
.end method
