.class public Landroid/sax/Element;
.super Ljava/lang/Object;
.source "Element.java"


# instance fields
.field children:Landroid/sax/Children;

.field final depth:I

.field endElementListener:Landroid/sax/EndElementListener;

.field endTextElementListener:Landroid/sax/EndTextElementListener;

.field final localName:Ljava/lang/String;

.field final parent:Landroid/sax/Element;

.field requiredChilden:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sax/Element;",
            ">;"
        }
    .end annotation
.end field

.field startElementListener:Landroid/sax/StartElementListener;

.field final uri:Ljava/lang/String;

.field visited:Z


# direct methods
.method constructor <init>(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "parent"    # Landroid/sax/Element;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "depth"    # I

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    iput-object p1, p0, Landroid/sax/Element;->parent:Landroid/sax/Element;

    #@5
    .line 48
    iput-object p2, p0, Landroid/sax/Element;->uri:Ljava/lang/String;

    #@7
    .line 49
    iput-object p3, p0, Landroid/sax/Element;->localName:Ljava/lang/String;

    #@9
    .line 50
    iput p4, p0, Landroid/sax/Element;->depth:I

    #@b
    .line 46
    return-void
.end method

.method static toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "\'"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    const-string/jumbo v1, ""

    #@f
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .end local p1    # "localName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string/jumbo v1, "\'"

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    return-object v0

    #@25
    .restart local p1    # "localName":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    const-string/jumbo v2, ":"

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object p1

    #@3d
    goto :goto_0
.end method


# virtual methods
.method checkRequiredChildren(Lorg/xml/sax/Locator;)V
    .locals 6
    .param p1, "locator"    # Lorg/xml/sax/Locator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 189
    iget-object v2, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    #@2
    .line 190
    .local v2, "requiredChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sax/Element;>;"
    if-eqz v2, :cond_1

    #@4
    .line 191
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v3

    #@8
    add-int/lit8 v1, v3, -0x1

    #@a
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@c
    .line 192
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/sax/Element;

    #@12
    .line 193
    .local v0, "child":Landroid/sax/Element;
    iget-boolean v3, v0, Landroid/sax/Element;->visited:Z

    #@14
    if-nez v3, :cond_0

    #@16
    .line 194
    new-instance v3, Landroid/sax/BadXmlException;

    #@18
    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v5, "Element named "

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    const-string/jumbo v5, " is missing required"

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    .line 196
    const-string/jumbo v5, " child element named "

    #@32
    .line 195
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    .line 197
    const-string/jumbo v5, "."

    #@3d
    .line 195
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    .line 194
    invoke-direct {v3, v4, p1}, Landroid/sax/BadXmlException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    #@48
    throw v3

    #@49
    .line 191
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@4b
    goto :goto_0

    #@4c
    .line 188
    .end local v0    # "child":Landroid/sax/Element;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public getChild(Ljava/lang/String;)Landroid/sax/Element;
    .locals 1
    .param p1, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 58
    const-string/jumbo v0, ""

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Landroid/sax/Element;->endTextElementListener:Landroid/sax/EndTextElementListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "This element already has an end text element listener. It cannot have children."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 70
    :cond_0
    iget-object v0, p0, Landroid/sax/Element;->children:Landroid/sax/Children;

    #@f
    if-nez v0, :cond_1

    #@11
    .line 71
    new-instance v0, Landroid/sax/Children;

    #@13
    invoke-direct {v0}, Landroid/sax/Children;-><init>()V

    #@16
    iput-object v0, p0, Landroid/sax/Element;->children:Landroid/sax/Children;

    #@18
    .line 74
    :cond_1
    iget-object v0, p0, Landroid/sax/Element;->children:Landroid/sax/Children;

    #@1a
    invoke-virtual {v0, p0, p1, p2}, Landroid/sax/Children;->getOrCreate(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method

.method public requireChild(Ljava/lang/String;)Landroid/sax/Element;
    .locals 1
    .param p1, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 84
    const-string/jumbo v0, ""

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/sax/Element;->requireChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public requireChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 93
    invoke-virtual {p0, p1, p2}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    #@3
    move-result-object v0

    #@4
    .line 95
    .local v0, "child":Landroid/sax/Element;
    iget-object v1, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    #@6
    if-nez v1, :cond_1

    #@8
    .line 96
    new-instance v1, Ljava/util/ArrayList;

    #@a
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v1, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    #@f
    .line 97
    iget-object v1, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@14
    .line 104
    :cond_0
    :goto_0
    return-object v0

    #@15
    .line 99
    :cond_1
    iget-object v1, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    if-nez v1, :cond_0

    #@1d
    .line 100
    iget-object v1, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@22
    goto :goto_0
.end method

.method resetRequiredChildren()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 177
    iget-object v1, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    #@3
    .line 178
    .local v1, "requiredChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sax/Element;>;"
    if-eqz v1, :cond_0

    #@5
    .line 179
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v2

    #@9
    add-int/lit8 v0, v2, -0x1

    #@b
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@d
    .line 180
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Landroid/sax/Element;

    #@13
    iput-boolean v3, v2, Landroid/sax/Element;->visited:Z

    #@15
    .line 179
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 176
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setElementListener(Landroid/sax/ElementListener;)V
    .locals 0
    .param p1, "elementListener"    # Landroid/sax/ElementListener;

    #@0
    .prologue
    .line 111
    invoke-virtual {p0, p1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    #@3
    .line 112
    invoke-virtual {p0, p1}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    #@6
    .line 110
    return-void
.end method

.method public setEndElementListener(Landroid/sax/EndElementListener;)V
    .locals 2
    .param p1, "endElementListener"    # Landroid/sax/EndElementListener;

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Landroid/sax/Element;->endElementListener:Landroid/sax/EndElementListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 141
    const-string/jumbo v1, "End element listener has already been set."

    #@9
    .line 140
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 143
    :cond_0
    iput-object p1, p0, Landroid/sax/Element;->endElementListener:Landroid/sax/EndElementListener;

    #@f
    .line 138
    return-void
.end method

.method public setEndTextElementListener(Landroid/sax/EndTextElementListener;)V
    .locals 2
    .param p1, "endTextElementListener"    # Landroid/sax/EndTextElementListener;

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Landroid/sax/Element;->endTextElementListener:Landroid/sax/EndTextElementListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 153
    const-string/jumbo v1, "End text element listener has already been set."

    #@9
    .line 152
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 156
    :cond_0
    iget-object v0, p0, Landroid/sax/Element;->children:Landroid/sax/Children;

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 157
    new-instance v0, Ljava/lang/IllegalStateException;

    #@13
    const-string/jumbo v1, "This element already has children. It cannot have an end text element listener."

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 161
    :cond_1
    iput-object p1, p0, Landroid/sax/Element;->endTextElementListener:Landroid/sax/EndTextElementListener;

    #@1c
    .line 150
    return-void
.end method

.method public setStartElementListener(Landroid/sax/StartElementListener;)V
    .locals 2
    .param p1, "startElementListener"    # Landroid/sax/StartElementListener;

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Landroid/sax/Element;->startElementListener:Landroid/sax/StartElementListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 129
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 130
    const-string/jumbo v1, "Start element listener has already been set."

    #@9
    .line 129
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 132
    :cond_0
    iput-object p1, p0, Landroid/sax/Element;->startElementListener:Landroid/sax/StartElementListener;

    #@f
    .line 127
    return-void
.end method

.method public setTextElementListener(Landroid/sax/TextElementListener;)V
    .locals 0
    .param p1, "elementListener"    # Landroid/sax/TextElementListener;

    #@0
    .prologue
    .line 119
    invoke-virtual {p0, p1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    #@3
    .line 120
    invoke-virtual {p0, p1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    #@6
    .line 118
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 166
    iget-object v0, p0, Landroid/sax/Element;->uri:Ljava/lang/String;

    #@2
    iget-object v1, p0, Landroid/sax/Element;->localName:Ljava/lang/String;

    #@4
    invoke-static {v0, v1}, Landroid/sax/Element;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
