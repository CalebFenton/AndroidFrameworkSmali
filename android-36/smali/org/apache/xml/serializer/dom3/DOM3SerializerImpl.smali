.class public final Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;
.super Ljava/lang/Object;
.source "DOM3SerializerImpl.java"

# interfaces
.implements Lorg/apache/xml/serializer/DOM3Serializer;


# instance fields
.field private greylist fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

.field private greylist fNewLine:Ljava/lang/String;

.field private greylist fSerializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

.field private greylist fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/serializer/SerializationHandler;)V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fSerializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    return-void
.end method


# virtual methods
.method public greylist getErrorHandler()Lorg/w3c/dom/DOMErrorHandler;
    .registers 1

    .line 74
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    return-object p0
.end method

.method public greylist getNewLine()[C
    .registers 1

    .line 93
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fNewLine:Ljava/lang/String;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getNodeFilter()Lorg/w3c/dom/ls/LSSerializerFilter;
    .registers 1

    .line 86
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    return-object p0
.end method

.method public greylist serializeDOM3(Lorg/w3c/dom/Node;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    :try_start_0
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fSerializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fNewLine:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;-><init>(Lorg/apache/xml/serializer/SerializationHandler;Lorg/w3c/dom/DOMErrorHandler;Lorg/w3c/dom/ls/LSSerializerFilter;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->traverse(Lorg/w3c/dom/Node;)V
    :try_end_10
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    .line 113
    new-instance p1, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public greylist setErrorHandler(Lorg/w3c/dom/DOMErrorHandler;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    return-void
.end method

.method public greylist setNewLine([C)V
    .registers 3

    if-eqz p1, :cond_8

    .line 156
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fNewLine:Ljava/lang/String;

    return-void
.end method

.method public greylist setNodeFilter(Lorg/w3c/dom/ls/LSSerializerFilter;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    return-void
.end method

.method public greylist setSerializationHandler(Lorg/apache/xml/serializer/SerializationHandler;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fSerializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    return-void
.end method
