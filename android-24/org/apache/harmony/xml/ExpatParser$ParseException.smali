.class Lorg/apache/harmony/xml/ExpatParser$ParseException;
.super Lorg/xml/sax/SAXParseException;
.source "ExpatParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/ExpatParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseException"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "locator"    # Lorg/xml/sax/Locator;

    #@0
    .prologue
    .line 728
    invoke-static {p1, p2}, Lorg/apache/harmony/xml/ExpatParser$ParseException;->makeMessage(Ljava/lang/String;Lorg/xml/sax/Locator;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    #@7
    .line 727
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$ParseException;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "locator"    # Lorg/xml/sax/Locator;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    #@3
    return-void
.end method

.method private static makeMessage(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "line"    # I
    .param p2, "column"    # I

    #@0
    .prologue
    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "At line "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, ", column "

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 739
    const-string/jumbo v1, ": "

    #@1e
    .line 738
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method

.method private static makeMessage(Ljava/lang/String;Lorg/xml/sax/Locator;)Ljava/lang/String;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    #@0
    .prologue
    .line 732
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getLineNumber()I

    #@3
    move-result v0

    #@4
    .line 733
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getColumnNumber()I

    #@7
    move-result v1

    #@8
    .line 732
    invoke-static {p0, v0, v1}, Lorg/apache/harmony/xml/ExpatParser$ParseException;->makeMessage(Ljava/lang/String;II)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method
