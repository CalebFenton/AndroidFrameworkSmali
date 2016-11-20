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
.field private depth:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;JLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "xmlReader"    # Lorg/apache/harmony/xml/ExpatReader;
    .param p3, "pointer"    # J
    .param p5, "publicId"    # Ljava/lang/String;
    .param p6, "systemId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 770
    const/4 v8, 0x0

    #@1
    move-object v1, p0

    #@2
    move-object v2, p1

    #@3
    move-object v3, p2

    #@4
    move-wide v4, p3

    #@5
    move-object v6, p5

    #@6
    move-object v7, p6

    #@7
    invoke-direct/range {v1 .. v8}, Lorg/apache/harmony/xml/ExpatParser;-><init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;JLjava/lang/String;Ljava/lang/String;Lorg/apache/harmony/xml/ExpatParser;)V

    #@a
    .line 766
    const/4 v0, 0x0

    #@b
    iput v0, p0, Lorg/apache/harmony/xml/ExpatParser$EntityParser;->depth:I

    #@d
    .line 769
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;JLjava/lang/String;Ljava/lang/String;Lorg/apache/harmony/xml/ExpatParser$EntityParser;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "xmlReader"    # Lorg/apache/harmony/xml/ExpatReader;
    .param p3, "pointer"    # J
    .param p5, "publicId"    # Ljava/lang/String;
    .param p6, "systemId"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct/range {p0 .. p6}, Lorg/apache/harmony/xml/ExpatParser$EntityParser;-><init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;JLjava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method


# virtual methods
.method endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
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
    .line 789
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser$EntityParser;->depth:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iput v0, p0, Lorg/apache/harmony/xml/ExpatParser$EntityParser;->depth:I

    #@6
    if-lez v0, :cond_0

    #@8
    .line 790
    invoke-super {p0, p1, p2, p3}, Lorg/apache/harmony/xml/ExpatParser;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 788
    :cond_0
    return-void
.end method

.method protected declared-synchronized finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    monitor-exit p0

    #@2
    .line 796
    return-void
.end method

.method startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 2
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

    #@0
    .prologue
    .line 780
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser$EntityParser;->depth:I

    #@2
    add-int/lit8 v1, v0, 0x1

    #@4
    iput v1, p0, Lorg/apache/harmony/xml/ExpatParser$EntityParser;->depth:I

    #@6
    if-lez v0, :cond_0

    #@8
    .line 781
    invoke-super/range {p0 .. p6}, Lorg/apache/harmony/xml/ExpatParser;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    #@b
    .line 775
    :cond_0
    return-void
.end method
