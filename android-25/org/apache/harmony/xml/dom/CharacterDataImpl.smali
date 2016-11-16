.class public abstract Lorg/apache/harmony/xml/dom/CharacterDataImpl;
.super Lorg/apache/harmony/xml/dom/LeafNodeImpl;
.source "CharacterDataImpl.java"

# interfaces
.implements Lorg/w3c/dom/CharacterData;


# instance fields
.field protected buffer:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;
    .param p2, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/LeafNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    #@3
    .line 39
    invoke-virtual {p0, p2}, Lorg/apache/harmony/xml/dom/CharacterDataImpl;->setData(Ljava/lang/String;)V

    #@6
    .line 37
    return-void
.end method


# virtual methods
.method public appendData(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/CharacterDataImpl;->buffer:Ljava/lang/StringBuffer;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5
    .line 42
    return-void
.end method

.method public appendDataTo(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "stringBuilder"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/CharacterDataImpl;->buffer:Ljava/lang/StringBuffer;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    #@5
    .line 57
    return-void
.end method

.method public deleteData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/CharacterDataImpl;->buffer:Ljava/lang/StringBuffer;

    #@2
    add-int v1, p1, p2

    #@4
    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    #@7
    .line 46
    return-void
.end method

.method public getData()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/CharacterDataImpl;->buffer:Ljava/lang/StringBuffer;

    #@2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLength()I
    .locals 1

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/CharacterDataImpl;->buffer:Ljava/lang/StringBuffer;

    #@2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/CharacterDataImpl;->getData()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public insertData(ILjava/lang/String;)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 72
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/CharacterDataImpl;->buffer:Ljava/lang/StringBuffer;

    #@2
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 70
    return-void

    #@6
    .line 73
    :catch_0
    move-exception v0

    #@7
    .line 74
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Lorg/w3c/dom/DOMException;

    #@9
    const/4 v2, 0x1

    #@a
    const/4 v3, 0x0

    #@b
    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@e
    throw v1
.end method

.method public replaceData(IILjava/lang/String;)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 81
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/CharacterDataImpl;->buffer:Ljava/lang/StringBuffer;

    #@2
    add-int v2, p1, p2

    #@4
    invoke-virtual {v1, p1, v2, p3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 79
    return-void

    #@8
    .line 82
    :catch_0
    move-exception v0

    #@9
    .line 83
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Lorg/w3c/dom/DOMException;

    #@b
    const/4 v2, 0x1

    #@c
    const/4 v3, 0x0

    #@d
    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@10
    throw v1
.end method

.method public setData(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@5
    iput-object v0, p0, Lorg/apache/harmony/xml/dom/CharacterDataImpl;->buffer:Ljava/lang/StringBuffer;

    #@7
    .line 87
    return-void
.end method

.method public substringData(II)Ljava/lang/String;
    .locals 4
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/CharacterDataImpl;->buffer:Ljava/lang/StringBuffer;

    #@2
    add-int v2, p1, p2

    #@4
    invoke-virtual {v1, p1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 94
    :catch_0
    move-exception v0

    #@a
    .line 95
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Lorg/w3c/dom/DOMException;

    #@c
    const/4 v2, 0x1

    #@d
    const/4 v3, 0x0

    #@e
    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@11
    throw v1
.end method
