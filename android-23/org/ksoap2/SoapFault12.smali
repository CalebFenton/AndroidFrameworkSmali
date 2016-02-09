.class public Lorg/ksoap2/SoapFault12;
.super Lorg/ksoap2/SoapFault;
.source "SoapFault12.java"


# static fields
.field private static final serialVersionUID:J = 0xf7121L


# instance fields
.field public Code:Lorg/ksoap2/kdom/Node;

.field public Detail:Lorg/ksoap2/kdom/Node;

.field public Node:Lorg/ksoap2/kdom/Node;

.field public Reason:Lorg/ksoap2/kdom/Node;

.field public Role:Lorg/ksoap2/kdom/Node;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Lorg/ksoap2/SoapFault;-><init>()V

    #@3
    .line 51
    const/16 v0, 0x78

    #@5
    iput v0, p0, Lorg/ksoap2/SoapFault12;->version:I

    #@7
    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "version"    # I

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Lorg/ksoap2/SoapFault;-><init>()V

    #@3
    .line 56
    iput p1, p0, Lorg/ksoap2/SoapFault12;->version:I

    #@5
    .line 54
    return-void
.end method

.method private parseSelf(Lorg/xmlpull/v1/XmlPullParser;)V
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
    .line 71
    const-string/jumbo v1, "http://www.w3.org/2003/05/soap-envelope"

    #@5
    const-string/jumbo v2, "Fault"

    #@8
    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@b
    .line 73
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@e
    move-result v1

    #@f
    if-ne v1, v3, :cond_5

    #@11
    .line 74
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 75
    .local v0, "name":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@18
    .line 76
    const-string/jumbo v1, "Code"

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_0

    #@21
    .line 77
    new-instance v1, Lorg/ksoap2/kdom/Node;

    #@23
    invoke-direct {v1}, Lorg/ksoap2/kdom/Node;-><init>()V

    #@26
    iput-object v1, p0, Lorg/ksoap2/SoapFault12;->Code:Lorg/ksoap2/kdom/Node;

    #@28
    .line 78
    iget-object v1, p0, Lorg/ksoap2/SoapFault12;->Code:Lorg/ksoap2/kdom/Node;

    #@2a
    invoke-virtual {v1, p1}, Lorg/ksoap2/kdom/Node;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2d
    .line 95
    :goto_1
    const-string/jumbo v1, "http://www.w3.org/2003/05/soap-envelope"

    #@30
    invoke-interface {p1, v4, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@33
    goto :goto_0

    #@34
    .line 79
    :cond_0
    const-string/jumbo v1, "Reason"

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v1

    #@3b
    if-eqz v1, :cond_1

    #@3d
    .line 80
    new-instance v1, Lorg/ksoap2/kdom/Node;

    #@3f
    invoke-direct {v1}, Lorg/ksoap2/kdom/Node;-><init>()V

    #@42
    iput-object v1, p0, Lorg/ksoap2/SoapFault12;->Reason:Lorg/ksoap2/kdom/Node;

    #@44
    .line 81
    iget-object v1, p0, Lorg/ksoap2/SoapFault12;->Reason:Lorg/ksoap2/kdom/Node;

    #@46
    invoke-virtual {v1, p1}, Lorg/ksoap2/kdom/Node;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    #@49
    goto :goto_1

    #@4a
    .line 82
    :cond_1
    const-string/jumbo v1, "Node"

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v1

    #@51
    if-eqz v1, :cond_2

    #@53
    .line 83
    new-instance v1, Lorg/ksoap2/kdom/Node;

    #@55
    invoke-direct {v1}, Lorg/ksoap2/kdom/Node;-><init>()V

    #@58
    iput-object v1, p0, Lorg/ksoap2/SoapFault12;->Node:Lorg/ksoap2/kdom/Node;

    #@5a
    .line 84
    iget-object v1, p0, Lorg/ksoap2/SoapFault12;->Node:Lorg/ksoap2/kdom/Node;

    #@5c
    invoke-virtual {v1, p1}, Lorg/ksoap2/kdom/Node;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    #@5f
    goto :goto_1

    #@60
    .line 85
    :cond_2
    const-string/jumbo v1, "Role"

    #@63
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@66
    move-result v1

    #@67
    if-eqz v1, :cond_3

    #@69
    .line 86
    new-instance v1, Lorg/ksoap2/kdom/Node;

    #@6b
    invoke-direct {v1}, Lorg/ksoap2/kdom/Node;-><init>()V

    #@6e
    iput-object v1, p0, Lorg/ksoap2/SoapFault12;->Role:Lorg/ksoap2/kdom/Node;

    #@70
    .line 87
    iget-object v1, p0, Lorg/ksoap2/SoapFault12;->Role:Lorg/ksoap2/kdom/Node;

    #@72
    invoke-virtual {v1, p1}, Lorg/ksoap2/kdom/Node;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    #@75
    goto :goto_1

    #@76
    .line 88
    :cond_3
    const-string/jumbo v1, "Detail"

    #@79
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7c
    move-result v1

    #@7d
    if-eqz v1, :cond_4

    #@7f
    .line 89
    new-instance v1, Lorg/ksoap2/kdom/Node;

    #@81
    invoke-direct {v1}, Lorg/ksoap2/kdom/Node;-><init>()V

    #@84
    iput-object v1, p0, Lorg/ksoap2/SoapFault12;->Detail:Lorg/ksoap2/kdom/Node;

    #@86
    .line 90
    iget-object v1, p0, Lorg/ksoap2/SoapFault12;->Detail:Lorg/ksoap2/kdom/Node;

    #@88
    invoke-virtual {v1, p1}, Lorg/ksoap2/kdom/Node;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    #@8b
    goto :goto_1

    #@8c
    .line 92
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    #@8e
    new-instance v2, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    const-string/jumbo v3, "unexpected tag:"

    #@96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v2

    #@9a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v2

    #@9e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v2

    #@a2
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@a5
    throw v1

    #@a6
    .line 97
    .end local v0    # "name":Ljava/lang/String;
    :cond_5
    const-string/jumbo v1, "http://www.w3.org/2003/05/soap-envelope"

    #@a9
    const-string/jumbo v2, "Fault"

    #@ac
    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@af
    .line 98
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@b2
    .line 70
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 138
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Reason:Lorg/ksoap2/kdom/Node;

    #@2
    const-string/jumbo v1, "http://www.w3.org/2003/05/soap-envelope"

    #@5
    const-string/jumbo v2, "Text"

    #@8
    invoke-virtual {v0, v1, v2}, Lorg/ksoap2/kdom/Node;->getElement(Ljava/lang/String;Ljava/lang/String;)Lorg/ksoap2/kdom/Element;

    #@b
    move-result-object v0

    #@c
    const/4 v1, 0x0

    #@d
    invoke-virtual {v0, v1}, Lorg/ksoap2/kdom/Element;->getText(I)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 62
    invoke-direct {p0, p1}, Lorg/ksoap2/SoapFault12;->parseSelf(Lorg/xmlpull/v1/XmlPullParser;)V

    #@4
    .line 64
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Code:Lorg/ksoap2/kdom/Node;

    #@6
    const-string/jumbo v1, "http://www.w3.org/2003/05/soap-envelope"

    #@9
    const-string/jumbo v2, "Value"

    #@c
    invoke-virtual {v0, v1, v2}, Lorg/ksoap2/kdom/Node;->getElement(Ljava/lang/String;Ljava/lang/String;)Lorg/ksoap2/kdom/Element;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, v3}, Lorg/ksoap2/kdom/Element;->getText(I)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lorg/ksoap2/SoapFault12;->faultcode:Ljava/lang/String;

    #@16
    .line 65
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Reason:Lorg/ksoap2/kdom/Node;

    #@18
    const-string/jumbo v1, "http://www.w3.org/2003/05/soap-envelope"

    #@1b
    const-string/jumbo v2, "Text"

    #@1e
    invoke-virtual {v0, v1, v2}, Lorg/ksoap2/kdom/Node;->getElement(Ljava/lang/String;Ljava/lang/String;)Lorg/ksoap2/kdom/Element;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, v3}, Lorg/ksoap2/kdom/Element;->getText(I)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    iput-object v0, p0, Lorg/ksoap2/SoapFault12;->faultstring:Ljava/lang/String;

    #@28
    .line 66
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Detail:Lorg/ksoap2/kdom/Node;

    #@2a
    iput-object v0, p0, Lorg/ksoap2/SoapFault12;->detail:Lorg/ksoap2/kdom/Node;

    #@2c
    .line 67
    const/4 v0, 0x0

    #@2d
    iput-object v0, p0, Lorg/ksoap2/SoapFault12;->faultactor:Ljava/lang/String;

    #@2f
    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 143
    iget-object v2, p0, Lorg/ksoap2/SoapFault12;->Reason:Lorg/ksoap2/kdom/Node;

    #@3
    const-string/jumbo v3, "http://www.w3.org/2003/05/soap-envelope"

    #@6
    const-string/jumbo v4, "Text"

    #@9
    invoke-virtual {v2, v3, v4}, Lorg/ksoap2/kdom/Node;->getElement(Ljava/lang/String;Ljava/lang/String;)Lorg/ksoap2/kdom/Element;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2, v5}, Lorg/ksoap2/kdom/Element;->getText(I)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 144
    .local v1, "reason":Ljava/lang/String;
    iget-object v2, p0, Lorg/ksoap2/SoapFault12;->Code:Lorg/ksoap2/kdom/Node;

    #@13
    const-string/jumbo v3, "http://www.w3.org/2003/05/soap-envelope"

    #@16
    const-string/jumbo v4, "Value"

    #@19
    invoke-virtual {v2, v3, v4}, Lorg/ksoap2/kdom/Node;->getElement(Ljava/lang/String;Ljava/lang/String;)Lorg/ksoap2/kdom/Element;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, v5}, Lorg/ksoap2/kdom/Element;->getText(I)Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    .line 145
    .local v0, "code":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v3, "Code: "

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    const-string/jumbo v3, ", Reason: "

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    return-object v2
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .param p1, "xw"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 105
    const-string/jumbo v0, "http://www.w3.org/2003/05/soap-envelope"

    #@3
    const-string/jumbo v1, "Fault"

    #@6
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@9
    .line 108
    const-string/jumbo v0, "http://www.w3.org/2003/05/soap-envelope"

    #@c
    const-string/jumbo v1, "Code"

    #@f
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@12
    .line 109
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Code:Lorg/ksoap2/kdom/Node;

    #@14
    invoke-virtual {v0, p1}, Lorg/ksoap2/kdom/Node;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    #@17
    .line 110
    const-string/jumbo v0, "http://www.w3.org/2003/05/soap-envelope"

    #@1a
    const-string/jumbo v1, "Code"

    #@1d
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@20
    .line 111
    const-string/jumbo v0, "http://www.w3.org/2003/05/soap-envelope"

    #@23
    const-string/jumbo v1, "Reason"

    #@26
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@29
    .line 112
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Reason:Lorg/ksoap2/kdom/Node;

    #@2b
    invoke-virtual {v0, p1}, Lorg/ksoap2/kdom/Node;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    #@2e
    .line 113
    const-string/jumbo v0, "http://www.w3.org/2003/05/soap-envelope"

    #@31
    const-string/jumbo v1, "Reason"

    #@34
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@37
    .line 115
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Node:Lorg/ksoap2/kdom/Node;

    #@39
    if-eqz v0, :cond_0

    #@3b
    .line 116
    const-string/jumbo v0, "http://www.w3.org/2003/05/soap-envelope"

    #@3e
    const-string/jumbo v1, "Node"

    #@41
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@44
    .line 117
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Node:Lorg/ksoap2/kdom/Node;

    #@46
    invoke-virtual {v0, p1}, Lorg/ksoap2/kdom/Node;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    #@49
    .line 118
    const-string/jumbo v0, "http://www.w3.org/2003/05/soap-envelope"

    #@4c
    const-string/jumbo v1, "Node"

    #@4f
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@52
    .line 120
    :cond_0
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Role:Lorg/ksoap2/kdom/Node;

    #@54
    if-eqz v0, :cond_1

    #@56
    .line 121
    const-string/jumbo v0, "http://www.w3.org/2003/05/soap-envelope"

    #@59
    const-string/jumbo v1, "Role"

    #@5c
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5f
    .line 122
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Role:Lorg/ksoap2/kdom/Node;

    #@61
    invoke-virtual {v0, p1}, Lorg/ksoap2/kdom/Node;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    #@64
    .line 123
    const-string/jumbo v0, "http://www.w3.org/2003/05/soap-envelope"

    #@67
    const-string/jumbo v1, "Role"

    #@6a
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@6d
    .line 126
    :cond_1
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Detail:Lorg/ksoap2/kdom/Node;

    #@6f
    if-eqz v0, :cond_2

    #@71
    .line 127
    const-string/jumbo v0, "http://www.w3.org/2003/05/soap-envelope"

    #@74
    const-string/jumbo v1, "Detail"

    #@77
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7a
    .line 128
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Detail:Lorg/ksoap2/kdom/Node;

    #@7c
    invoke-virtual {v0, p1}, Lorg/ksoap2/kdom/Node;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    #@7f
    .line 129
    const-string/jumbo v0, "http://www.w3.org/2003/05/soap-envelope"

    #@82
    const-string/jumbo v1, "Detail"

    #@85
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@88
    .line 131
    :cond_2
    const-string/jumbo v0, "http://www.w3.org/2003/05/soap-envelope"

    #@8b
    const-string/jumbo v1, "Fault"

    #@8e
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@91
    .line 103
    return-void
.end method
