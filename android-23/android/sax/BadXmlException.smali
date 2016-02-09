.class Landroid/sax/BadXmlException;
.super Lorg/xml/sax/SAXParseException;
.source "BadXmlException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "locator"    # Lorg/xml/sax/Locator;

    #@0
    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    #@3
    .line 27
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Line "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0}, Landroid/sax/BadXmlException;->getLineNumber()I

    #@f
    move-result v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, ": "

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-super {p0}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method
