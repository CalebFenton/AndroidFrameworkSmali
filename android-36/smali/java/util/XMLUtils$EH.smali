.class Ljava/util/XMLUtils$EH;
.super Ljava/lang/Object;
.source "XMLUtils.java"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/XMLUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EH"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/XMLUtils-IA;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/XMLUtils$EH;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api error(Lorg/xml/sax/SAXParseException;)V
    .registers 2
    .param p1, "x"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 204
    throw p1
.end method

.method public whitelist test-api fatalError(Lorg/xml/sax/SAXParseException;)V
    .registers 2
    .param p1, "x"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 207
    throw p1
.end method

.method public whitelist test-api warning(Lorg/xml/sax/SAXParseException;)V
    .registers 2
    .param p1, "x"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 210
    throw p1
.end method
