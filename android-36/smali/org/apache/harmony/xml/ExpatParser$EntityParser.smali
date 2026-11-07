.class Lorg/apache/harmony/xml/ExpatParser$EntityParser;
.super Lorg/apache/harmony/xml/ExpatParser;
.source "ExpatParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/ExpatParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntityParser"
.end annotation


# instance fields
.field private greylist depth:I


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;JLjava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "xmlReader"    # Lorg/apache/harmony/xml/ExpatReader;
    .param p3, "pointer"    # J
    .param p5, "publicId"    # Ljava/lang/String;
    .param p6, "systemId"    # Ljava/lang/String;

    .line 789
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    .end local p1    # "encoding":Ljava/lang/String;
    .end local p2    # "xmlReader":Lorg/apache/harmony/xml/ExpatReader;
    .end local p3    # "pointer":J
    .end local p5    # "publicId":Ljava/lang/String;
    .end local p6    # "systemId":Ljava/lang/String;
    .local v1, "encoding":Ljava/lang/String;
    .local v2, "xmlReader":Lorg/apache/harmony/xml/ExpatReader;
    .local v3, "pointer":J
    .local v5, "publicId":Ljava/lang/String;
    .local v6, "systemId":Ljava/lang/String;
    invoke-direct/range {v0 .. v7}, Lorg/apache/harmony/xml/ExpatParser;-><init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;JLjava/lang/String;Ljava/lang/String;Lorg/apache/harmony/xml/ExpatParser-IA;)V

    .line 784
    const/4 p1, 0x0

    iput p1, v0, Lorg/apache/harmony/xml/ExpatParser$EntityParser;->depth:I

    .line 790
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;JLjava/lang/String;Ljava/lang/String;Lorg/apache/harmony/xml/ExpatParser-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lorg/apache/harmony/xml/ExpatParser$EntityParser;-><init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method blacklist endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 808
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser$EntityParser;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xml/ExpatParser$EntityParser;->depth:I

    if-lez v0, :cond_b

    .line 809
    invoke-super {p0, p1, p2, p3}, Lorg/apache/harmony/xml/ExpatParser;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    :cond_b
    return-void
.end method

.method protected declared-synchronized whitelist test-api finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    monitor-enter p0

    .line 821
    monitor-exit p0

    return-void
.end method

.method blacklist startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .registers 9
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributePointer"    # J
    .param p6, "attributeCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 799
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser$EntityParser;->depth:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/harmony/xml/ExpatParser$EntityParser;->depth:I

    if-lez v0, :cond_b

    .line 800
    invoke-super/range {p0 .. p6}, Lorg/apache/harmony/xml/ExpatParser;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 803
    :cond_b
    return-void
.end method
