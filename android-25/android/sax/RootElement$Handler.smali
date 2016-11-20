.class Landroid/sax/RootElement$Handler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "RootElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sax/RootElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Handler"
.end annotation


# instance fields
.field bodyBuilder:Ljava/lang/StringBuilder;

.field current:Landroid/sax/Element;

.field depth:I

.field locator:Lorg/xml/sax/Locator;

.field final synthetic this$0:Landroid/sax/RootElement;


# direct methods
.method constructor <init>(Landroid/sax/RootElement;)V
    .locals 2
    .param p1, "this$0"    # Landroid/sax/RootElement;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 97
    iput-object p1, p0, Landroid/sax/RootElement$Handler;->this$0:Landroid/sax/RootElement;

    #@3
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    #@6
    .line 100
    const/4 v0, -0x1

    #@7
    iput v0, p0, Landroid/sax/RootElement$Handler;->depth:I

    #@9
    .line 101
    iput-object v1, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    #@b
    .line 102
    iput-object v1, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    #@d
    .line 97
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "buffer"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 173
    iget-object v0, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    #@6
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@9
    .line 171
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
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
    const/4 v4, 0x0

    #@1
    .line 180
    iget-object v1, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    #@3
    .line 183
    .local v1, "current":Landroid/sax/Element;
    iget v2, p0, Landroid/sax/RootElement$Handler;->depth:I

    #@5
    iget v3, v1, Landroid/sax/Element;->depth:I

    #@7
    if-ne v2, v3, :cond_2

    #@9
    .line 184
    iget-object v2, p0, Landroid/sax/RootElement$Handler;->locator:Lorg/xml/sax/Locator;

    #@b
    invoke-virtual {v1, v2}, Landroid/sax/Element;->checkRequiredChildren(Lorg/xml/sax/Locator;)V

    #@e
    .line 187
    iget-object v2, v1, Landroid/sax/Element;->endElementListener:Landroid/sax/EndElementListener;

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 188
    iget-object v2, v1, Landroid/sax/Element;->endElementListener:Landroid/sax/EndElementListener;

    #@14
    invoke-interface {v2}, Landroid/sax/EndElementListener;->end()V

    #@17
    .line 192
    :cond_0
    iget-object v2, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 193
    iget-object v2, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    .line 194
    .local v0, "body":Ljava/lang/String;
    iput-object v4, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    #@23
    .line 197
    iget-object v2, v1, Landroid/sax/Element;->endTextElementListener:Landroid/sax/EndTextElementListener;

    #@25
    invoke-interface {v2, v0}, Landroid/sax/EndTextElementListener;->end(Ljava/lang/String;)V

    #@28
    .line 201
    .end local v0    # "body":Ljava/lang/String;
    :cond_1
    iget-object v2, v1, Landroid/sax/Element;->parent:Landroid/sax/Element;

    #@2a
    iput-object v2, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    #@2c
    .line 204
    :cond_2
    iget v2, p0, Landroid/sax/RootElement$Handler;->depth:I

    #@2e
    add-int/lit8 v2, v2, -0x1

    #@30
    iput v2, p0, Landroid/sax/RootElement$Handler;->depth:I

    #@32
    .line 179
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    #@0
    .prologue
    .line 106
    iput-object p1, p0, Landroid/sax/RootElement$Handler;->locator:Lorg/xml/sax/Locator;

    #@2
    .line 105
    return-void
.end method

.method start(Landroid/sax/Element;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "e"    # Landroid/sax/Element;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;

    #@0
    .prologue
    .line 155
    iput-object p1, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    #@2
    .line 157
    iget-object v0, p1, Landroid/sax/Element;->startElementListener:Landroid/sax/StartElementListener;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 158
    iget-object v0, p1, Landroid/sax/Element;->startElementListener:Landroid/sax/StartElementListener;

    #@8
    invoke-interface {v0, p2}, Landroid/sax/StartElementListener;->start(Lorg/xml/sax/Attributes;)V

    #@b
    .line 161
    :cond_0
    iget-object v0, p1, Landroid/sax/Element;->endTextElementListener:Landroid/sax/EndTextElementListener;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    iput-object v0, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    #@16
    .line 165
    :cond_1
    invoke-virtual {p1}, Landroid/sax/Element;->resetRequiredChildren()V

    #@19
    .line 166
    const/4 v0, 0x1

    #@1a
    iput-boolean v0, p1, Landroid/sax/Element;->visited:Z

    #@1c
    .line 153
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 112
    iget v3, p0, Landroid/sax/RootElement$Handler;->depth:I

    #@2
    add-int/lit8 v2, v3, 0x1

    #@4
    iput v2, p0, Landroid/sax/RootElement$Handler;->depth:I

    #@6
    .line 114
    .local v2, "depth":I
    if-nez v2, :cond_0

    #@8
    .line 116
    invoke-virtual {p0, p1, p2, p4}, Landroid/sax/RootElement$Handler;->startRoot(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@b
    .line 117
    return-void

    #@c
    .line 121
    :cond_0
    iget-object v3, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    #@e
    if-eqz v3, :cond_1

    #@10
    .line 122
    new-instance v3, Landroid/sax/BadXmlException;

    #@12
    new-instance v4, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v5, "Encountered mixed content within text element named "

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    .line 123
    iget-object v5, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    #@20
    .line 122
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    .line 123
    const-string/jumbo v5, "."

    #@27
    .line 122
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    .line 124
    iget-object v5, p0, Landroid/sax/RootElement$Handler;->locator:Lorg/xml/sax/Locator;

    #@31
    .line 122
    invoke-direct {v3, v4, v5}, Landroid/sax/BadXmlException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    #@34
    throw v3

    #@35
    .line 128
    :cond_1
    iget-object v3, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    #@37
    iget v3, v3, Landroid/sax/Element;->depth:I

    #@39
    add-int/lit8 v3, v3, 0x1

    #@3b
    if-ne v2, v3, :cond_2

    #@3d
    .line 130
    iget-object v3, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    #@3f
    iget-object v1, v3, Landroid/sax/Element;->children:Landroid/sax/Children;

    #@41
    .line 131
    .local v1, "children":Landroid/sax/Children;
    if-eqz v1, :cond_2

    #@43
    .line 132
    invoke-virtual {v1, p1, p2}, Landroid/sax/Children;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    #@46
    move-result-object v0

    #@47
    .line 133
    .local v0, "child":Landroid/sax/Element;
    if-eqz v0, :cond_2

    #@49
    .line 134
    invoke-virtual {p0, v0, p4}, Landroid/sax/RootElement$Handler;->start(Landroid/sax/Element;Lorg/xml/sax/Attributes;)V

    #@4c
    .line 111
    .end local v0    # "child":Landroid/sax/Element;
    .end local v1    # "children":Landroid/sax/Children;
    :cond_2
    return-void
.end method

.method startRoot(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Landroid/sax/RootElement$Handler;->this$0:Landroid/sax/RootElement;

    #@2
    .line 143
    .local v0, "root":Landroid/sax/Element;
    iget-object v1, v0, Landroid/sax/Element;->uri:Ljava/lang/String;

    #@4
    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 144
    iget-object v1, v0, Landroid/sax/Element;->localName:Ljava/lang/String;

    #@c
    invoke-virtual {v1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 145
    :cond_0
    new-instance v1, Landroid/sax/BadXmlException;

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "Root element name does not match. Expected: "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    .line 146
    const-string/jumbo v3, ", Got: "

    #@27
    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    .line 147
    invoke-static {p1, p2}, Landroid/sax/Element;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    .line 147
    iget-object v3, p0, Landroid/sax/RootElement$Handler;->locator:Lorg/xml/sax/Locator;

    #@39
    .line 145
    invoke-direct {v1, v2, v3}, Landroid/sax/BadXmlException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    #@3c
    throw v1

    #@3d
    .line 150
    :cond_1
    invoke-virtual {p0, v0, p3}, Landroid/sax/RootElement$Handler;->start(Landroid/sax/Element;Lorg/xml/sax/Attributes;)V

    #@40
    .line 141
    return-void
.end method
