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
.method private constructor blacklist <init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "locator"    # Lorg/xml/sax/Locator;

    .line 746
    invoke-static {p1, p2}, Lorg/apache/harmony/xml/ExpatParser$ParseException;->makeMessage(Ljava/lang/String;Lorg/xml/sax/Locator;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    .line 747
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    return-void
.end method

.method private static blacklist makeMessage(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "line"    # I
    .param p2, "column"    # I

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "At line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist makeMessage(Ljava/lang/String;Lorg/xml/sax/Locator;)Ljava/lang/String;
    .registers 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .line 750
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v0

    .line 751
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v1

    .line 750
    invoke-static {p0, v0, v1}, Lorg/apache/harmony/xml/ExpatParser$ParseException;->makeMessage(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
