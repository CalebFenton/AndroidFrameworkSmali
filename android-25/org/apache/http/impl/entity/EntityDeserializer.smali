.class public Lorg/apache/http/impl/entity/EntityDeserializer;
.super Ljava/lang/Object;
.source "EntityDeserializer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final lenStrategy:Lorg/apache/http/entity/ContentLengthStrategy;


# direct methods
.method public constructor <init>(Lorg/apache/http/entity/ContentLengthStrategy;)V
    .locals 2
    .param p1, "lenStrategy"    # Lorg/apache/http/entity/ContentLengthStrategy;

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    if-nez p1, :cond_0

    #@5
    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Content length strategy may not be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 74
    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/entity/EntityDeserializer;->lenStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

    #@10
    .line 69
    return-void
.end method


# virtual methods
.method public deserialize(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/HttpMessage;)Lorg/apache/http/HttpEntity;
    .locals 2
    .param p1, "inbuffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "message"    # Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 111
    if-nez p1, :cond_0

    #@2
    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Session input buffer may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 114
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "HTTP message may not be null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 117
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/entity/EntityDeserializer;->doDeserialize(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/HttpMessage;)Lorg/apache/http/entity/BasicHttpEntity;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method protected doDeserialize(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/HttpMessage;)Lorg/apache/http/entity/BasicHttpEntity;
    .locals 11
    .param p1, "inbuffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "message"    # Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const-wide/16 v8, -0x1

    #@3
    .line 80
    new-instance v2, Lorg/apache/http/entity/BasicHttpEntity;

    #@5
    invoke-direct {v2}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    #@8
    .line 82
    .local v2, "entity":Lorg/apache/http/entity/BasicHttpEntity;
    iget-object v3, p0, Lorg/apache/http/impl/entity/EntityDeserializer;->lenStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

    #@a
    invoke-interface {v3, p2}, Lorg/apache/http/entity/ContentLengthStrategy;->determineLength(Lorg/apache/http/HttpMessage;)J

    #@d
    move-result-wide v4

    #@e
    .line 83
    .local v4, "len":J
    const-wide/16 v6, -0x2

    #@10
    cmp-long v3, v4, v6

    #@12
    if-nez v3, :cond_2

    #@14
    .line 84
    const/4 v3, 0x1

    #@15
    invoke-virtual {v2, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    #@18
    .line 85
    invoke-virtual {v2, v8, v9}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    #@1b
    .line 86
    new-instance v3, Lorg/apache/http/impl/io/ChunkedInputStream;

    #@1d
    invoke-direct {v3, p1}, Lorg/apache/http/impl/io/ChunkedInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;)V

    #@20
    invoke-virtual {v2, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    #@23
    .line 97
    :goto_0
    const-string/jumbo v3, "Content-Type"

    #@26
    invoke-interface {p2, v3}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    #@29
    move-result-object v1

    #@2a
    .line 98
    .local v1, "contentTypeHeader":Lorg/apache/http/Header;
    if-eqz v1, :cond_0

    #@2c
    .line 99
    invoke-virtual {v2, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setContentType(Lorg/apache/http/Header;)V

    #@2f
    .line 101
    :cond_0
    const-string/jumbo v3, "Content-Encoding"

    #@32
    invoke-interface {p2, v3}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    #@35
    move-result-object v0

    #@36
    .line 102
    .local v0, "contentEncodingHeader":Lorg/apache/http/Header;
    if-eqz v0, :cond_1

    #@38
    .line 103
    invoke-virtual {v2, v0}, Lorg/apache/http/entity/BasicHttpEntity;->setContentEncoding(Lorg/apache/http/Header;)V

    #@3b
    .line 105
    :cond_1
    return-object v2

    #@3c
    .line 87
    .end local v0    # "contentEncodingHeader":Lorg/apache/http/Header;
    .end local v1    # "contentTypeHeader":Lorg/apache/http/Header;
    :cond_2
    cmp-long v3, v4, v8

    #@3e
    if-nez v3, :cond_3

    #@40
    .line 88
    invoke-virtual {v2, v10}, Lorg/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    #@43
    .line 89
    invoke-virtual {v2, v8, v9}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    #@46
    .line 90
    new-instance v3, Lorg/apache/http/impl/io/IdentityInputStream;

    #@48
    invoke-direct {v3, p1}, Lorg/apache/http/impl/io/IdentityInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;)V

    #@4b
    invoke-virtual {v2, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    #@4e
    goto :goto_0

    #@4f
    .line 92
    :cond_3
    invoke-virtual {v2, v10}, Lorg/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    #@52
    .line 93
    invoke-virtual {v2, v4, v5}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    #@55
    .line 94
    new-instance v3, Lorg/apache/http/impl/io/ContentLengthInputStream;

    #@57
    invoke-direct {v3, p1, v4, v5}, Lorg/apache/http/impl/io/ContentLengthInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;J)V

    #@5a
    invoke-virtual {v2, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    #@5d
    goto :goto_0
.end method
