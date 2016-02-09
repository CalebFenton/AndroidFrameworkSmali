.class public final Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;
.super Ljava/lang/Object;
.source "DOM3SerializerImpl.java"

# interfaces
.implements Lorg/apache/xml/serializer/DOM3Serializer;


# instance fields
.field private fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

.field private fNewLine:Ljava/lang/String;

.field private fSerializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

.field private fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;


# direct methods
.method public constructor <init>(Lorg/apache/xml/serializer/SerializationHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/apache/xml/serializer/SerializationHandler;

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fSerializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@5
    .line 60
    return-void
.end method


# virtual methods
.method public getErrorHandler()Lorg/w3c/dom/DOMErrorHandler;
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@2
    return-object v0
.end method

.method public getNewLine()[C
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 93
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fNewLine:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fNewLine:Ljava/lang/String;

    #@7
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method public getNodeFilter()Lorg/w3c/dom/ls/LSSerializerFilter;
    .locals 1

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    #@2
    return-object v0
.end method

.method public serializeDOM3(Lorg/w3c/dom/Node;)V
    .locals 6
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 108
    :try_start_0
    new-instance v1, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;

    #@2
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fSerializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@4
    .line 109
    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@6
    iget-object v4, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    #@8
    iget-object v5, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fNewLine:Ljava/lang/String;

    #@a
    .line 108
    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;-><init>(Lorg/apache/xml/serializer/SerializationHandler;Lorg/w3c/dom/DOMErrorHandler;Lorg/w3c/dom/ls/LSSerializerFilter;Ljava/lang/String;)V

    #@d
    .line 111
    .local v1, "walker":Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;
    invoke-virtual {v1, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->traverse(Lorg/w3c/dom/Node;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 106
    return-void

    #@11
    .line 112
    .end local v1    # "walker":Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;
    :catch_0
    move-exception v0

    #@12
    .line 113
    .local v0, "se":Lorg/xml/sax/SAXException;
    new-instance v2, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    #@14
    invoke-direct {v2, v0}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@17
    throw v2
.end method

.method public setErrorHandler(Lorg/w3c/dom/DOMErrorHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/w3c/dom/DOMErrorHandler;

    #@0
    .prologue
    .line 125
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@2
    .line 124
    return-void
.end method

.method public setNewLine([C)V
    .locals 1
    .param p1, "newLine"    # [C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 156
    if-eqz p1, :cond_0

    #@3
    new-instance v0, Ljava/lang/String;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    #@8
    :cond_0
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fNewLine:Ljava/lang/String;

    #@a
    .line 155
    return-void
.end method

.method public setNodeFilter(Lorg/w3c/dom/ls/LSSerializerFilter;)V
    .locals 0
    .param p1, "filter"    # Lorg/w3c/dom/ls/LSSerializerFilter;

    #@0
    .prologue
    .line 137
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    #@2
    .line 136
    return-void
.end method

.method public setSerializationHandler(Lorg/apache/xml/serializer/SerializationHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/apache/xml/serializer/SerializationHandler;

    #@0
    .prologue
    .line 148
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fSerializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    .line 147
    return-void
.end method
