.class public Lorg/ksoap2/SoapFault;
.super Ljava/io/IOException;
.source "SoapFault.java"


# static fields
.field private static final serialVersionUID:J = 0xf6d39L


# instance fields
.field public detail:Lorg/ksoap2/kdom/Node;

.field public faultactor:Ljava/lang/String;

.field public faultcode:Ljava/lang/String;

.field public faultstring:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    #@3
    .line 49
    const/16 v0, 0x6e

    #@5
    iput v0, p0, Lorg/ksoap2/SoapFault;->version:I

    #@7
    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "version"    # I

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    #@3
    .line 54
    iput p1, p0, Lorg/ksoap2/SoapFault;->version:I

    #@5
    .line 52
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    const/4 v3, 0x2

    #@2
    .line 59
    const-string/jumbo v1, "http://schemas.xmlsoap.org/soap/envelope/"

    #@5
    const-string/jumbo v2, "Fault"

    #@8
    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@b
    .line 60
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@e
    move-result v1

    #@f
    if-ne v1, v3, :cond_1

    #@11
    .line 61
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 62
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v1, "detail"

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_2

    #@1e
    .line 63
    new-instance v1, Lorg/ksoap2/kdom/Node;

    #@20
    invoke-direct {v1}, Lorg/ksoap2/kdom/Node;-><init>()V

    #@23
    iput-object v1, p0, Lorg/ksoap2/SoapFault;->detail:Lorg/ksoap2/kdom/Node;

    #@25
    .line 64
    iget-object v1, p0, Lorg/ksoap2/SoapFault;->detail:Lorg/ksoap2/kdom/Node;

    #@27
    invoke-virtual {v1, p1}, Lorg/ksoap2/kdom/Node;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2a
    .line 66
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    const-string/jumbo v2, "http://schemas.xmlsoap.org/soap/envelope/"

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_0

    #@37
    .line 67
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    const-string/jumbo v2, "Fault"

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v1

    #@42
    .line 66
    if-eqz v1, :cond_0

    #@44
    .line 82
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "http://schemas.xmlsoap.org/soap/envelope/"

    #@47
    const-string/jumbo v2, "Fault"

    #@4a
    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@4d
    .line 83
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@50
    .line 58
    return-void

    #@51
    .line 71
    .restart local v0    # "name":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "faultcode"

    #@54
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v1

    #@58
    if-eqz v1, :cond_3

    #@5a
    .line 72
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    #@5d
    move-result-object v1

    #@5e
    iput-object v1, p0, Lorg/ksoap2/SoapFault;->faultcode:Ljava/lang/String;

    #@60
    .line 80
    :goto_1
    const/4 v1, 0x0

    #@61
    invoke-interface {p1, v4, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@64
    goto :goto_0

    #@65
    .line 73
    :cond_3
    const-string/jumbo v1, "faultstring"

    #@68
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v1

    #@6c
    if-eqz v1, :cond_4

    #@6e
    .line 74
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    #@71
    move-result-object v1

    #@72
    iput-object v1, p0, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    #@74
    goto :goto_1

    #@75
    .line 75
    :cond_4
    const-string/jumbo v1, "faultactor"

    #@78
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7b
    move-result v1

    #@7c
    if-eqz v1, :cond_5

    #@7e
    .line 76
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    #@81
    move-result-object v1

    #@82
    iput-object v1, p0, Lorg/ksoap2/SoapFault;->faultactor:Ljava/lang/String;

    #@84
    goto :goto_1

    #@85
    .line 78
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    #@87
    new-instance v2, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    const-string/jumbo v3, "unexpected tag:"

    #@8f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v2

    #@93
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v2

    #@97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v2

    #@9b
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@9e
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SoapFault - faultcode: \'"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lorg/ksoap2/SoapFault;->faultcode:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "\' faultstring: \'"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 113
    iget-object v1, p0, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    #@1b
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 113
    const-string/jumbo v1, "\' faultactor: \'"

    #@22
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 113
    iget-object v1, p0, Lorg/ksoap2/SoapFault;->faultactor:Ljava/lang/String;

    #@28
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 113
    const-string/jumbo v1, "\' detail: "

    #@2f
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 114
    iget-object v1, p0, Lorg/ksoap2/SoapFault;->detail:Lorg/ksoap2/kdom/Node;

    #@35
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    return-object v0
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "xw"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 88
    const-string/jumbo v0, "http://schemas.xmlsoap.org/soap/envelope/"

    #@4
    const-string/jumbo v1, "Fault"

    #@7
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a
    .line 89
    const-string/jumbo v0, "faultcode"

    #@d
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@10
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v1, ""

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    iget-object v1, p0, Lorg/ksoap2/SoapFault;->faultcode:Ljava/lang/String;

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@29
    .line 91
    const-string/jumbo v0, "faultcode"

    #@2c
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2f
    .line 92
    const-string/jumbo v0, "faultstring"

    #@32
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@35
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v1, ""

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    iget-object v1, p0, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4e
    .line 94
    const-string/jumbo v0, "faultstring"

    #@51
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@54
    .line 95
    const-string/jumbo v0, "detail"

    #@57
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5a
    .line 96
    iget-object v0, p0, Lorg/ksoap2/SoapFault;->detail:Lorg/ksoap2/kdom/Node;

    #@5c
    if-eqz v0, :cond_0

    #@5e
    .line 97
    iget-object v0, p0, Lorg/ksoap2/SoapFault;->detail:Lorg/ksoap2/kdom/Node;

    #@60
    invoke-virtual {v0, p1}, Lorg/ksoap2/kdom/Node;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    #@63
    .line 99
    :cond_0
    const-string/jumbo v0, "detail"

    #@66
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@69
    .line 100
    const-string/jumbo v0, "http://schemas.xmlsoap.org/soap/envelope/"

    #@6c
    const-string/jumbo v1, "Fault"

    #@6f
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@72
    .line 87
    return-void
.end method
