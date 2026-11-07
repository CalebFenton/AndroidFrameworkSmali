.class Ljava/util/prefs/XmlSupport$EH;
.super Ljava/lang/Object;
.source "XmlSupport.java"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/prefs/XmlSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EH"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/prefs/XmlSupport-IA;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/prefs/XmlSupport$EH;-><init>()V

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

    .line 468
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

    .line 471
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

    .line 474
    throw p1
.end method
