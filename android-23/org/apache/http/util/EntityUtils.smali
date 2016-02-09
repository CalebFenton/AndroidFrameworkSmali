.class public final Lorg/apache/http/util/EntityUtils;
.super Ljava/lang/Object;
.source "EntityUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 5
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 96
    if-nez p0, :cond_0

    #@3
    .line 97
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v4, "HTTP entity may not be null"

    #@8
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v3

    #@c
    .line 99
    :cond_0
    const/4 v0, 0x0

    #@d
    .line 100
    .local v0, "charset":Ljava/lang/String;
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    #@10
    move-result-object v3

    #@11
    if-eqz v3, :cond_1

    #@13
    .line 101
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    #@16
    move-result-object v3

    #@17
    invoke-interface {v3}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    #@1a
    move-result-object v2

    #@1b
    .line 102
    .local v2, "values":[Lorg/apache/http/HeaderElement;
    array-length v3, v2

    #@1c
    if-lez v3, :cond_1

    #@1e
    .line 103
    aget-object v3, v2, v4

    #@20
    const-string/jumbo v4, "charset"

    #@23
    invoke-interface {v3, v4}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    #@26
    move-result-object v1

    #@27
    .line 104
    .local v1, "param":Lorg/apache/http/NameValuePair;
    if-eqz v1, :cond_1

    #@29
    .line 105
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    .line 109
    .end local v0    # "charset":Ljava/lang/String;
    .end local v1    # "param":Lorg/apache/http/NameValuePair;
    .end local v2    # "values":[Lorg/apache/http/HeaderElement;
    :cond_1
    return-object v0
.end method

.method public static toByteArray(Lorg/apache/http/HttpEntity;)[B
    .locals 10
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 66
    if-nez p0, :cond_0

    #@3
    .line 67
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v6, "HTTP entity may not be null"

    #@8
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v5

    #@c
    .line 69
    :cond_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    #@f
    move-result-object v2

    #@10
    .line 70
    .local v2, "instream":Ljava/io/InputStream;
    if-nez v2, :cond_1

    #@12
    .line 71
    new-array v5, v5, [B

    #@14
    return-object v5

    #@15
    .line 73
    :cond_1
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    #@18
    move-result-wide v6

    #@19
    const-wide/32 v8, 0x7fffffff

    #@1c
    cmp-long v5, v6, v8

    #@1e
    if-lez v5, :cond_2

    #@20
    .line 74
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@22
    const-string/jumbo v6, "HTTP entity too large to be buffered in memory"

    #@25
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v5

    #@29
    .line 76
    :cond_2
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    #@2c
    move-result-wide v6

    #@2d
    long-to-int v1, v6

    #@2e
    .line 77
    .local v1, "i":I
    if-gez v1, :cond_3

    #@30
    .line 78
    const/16 v1, 0x1000

    #@32
    .line 80
    :cond_3
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    #@34
    invoke-direct {v0, v1}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    #@37
    .line 82
    .local v0, "buffer":Lorg/apache/http/util/ByteArrayBuffer;
    const/16 v5, 0x1000

    #@39
    :try_start_0
    new-array v4, v5, [B

    #@3b
    .line 84
    .local v4, "tmp":[B
    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    #@3e
    move-result v3

    #@3f
    .local v3, "l":I
    const/4 v5, -0x1

    #@40
    if-eq v3, v5, :cond_4

    #@42
    .line 85
    const/4 v5, 0x0

    #@43
    invoke-virtual {v0, v4, v5, v3}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    goto :goto_0

    #@47
    .line 87
    .end local v3    # "l":I
    .end local v4    # "tmp":[B
    :catchall_0
    move-exception v5

    #@48
    .line 88
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    #@4b
    .line 87
    throw v5

    #@4c
    .line 88
    .restart local v3    # "l":I
    .restart local v4    # "tmp":[B
    :cond_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    #@4f
    .line 90
    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    #@52
    move-result-object v5

    #@53
    return-object v5
.end method

.method public static toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 1
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 151
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .param p1, "defaultCharset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 114
    if-nez p0, :cond_0

    #@2
    .line 115
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v8, "HTTP entity may not be null"

    #@7
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v7

    #@b
    .line 117
    :cond_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    #@e
    move-result-object v3

    #@f
    .line 118
    .local v3, "instream":Ljava/io/InputStream;
    if-nez v3, :cond_1

    #@11
    .line 119
    const-string/jumbo v7, ""

    #@14
    return-object v7

    #@15
    .line 121
    :cond_1
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    #@18
    move-result-wide v8

    #@19
    const-wide/32 v10, 0x7fffffff

    #@1c
    cmp-long v7, v8, v10

    #@1e
    if-lez v7, :cond_2

    #@20
    .line 122
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@22
    const-string/jumbo v8, "HTTP entity too large to be buffered in memory"

    #@25
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v7

    #@29
    .line 124
    :cond_2
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    #@2c
    move-result-wide v8

    #@2d
    long-to-int v2, v8

    #@2e
    .line 125
    .local v2, "i":I
    if-gez v2, :cond_3

    #@30
    .line 126
    const/16 v2, 0x1000

    #@32
    .line 128
    :cond_3
    invoke-static {p0}, Lorg/apache/http/util/EntityUtils;->getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    .line 129
    .local v1, "charset":Ljava/lang/String;
    if-nez v1, :cond_4

    #@38
    .line 130
    move-object v1, p1

    #@39
    .line 132
    :cond_4
    if-nez v1, :cond_5

    #@3b
    .line 133
    const-string/jumbo v1, "ISO-8859-1"

    #@3e
    .line 135
    :cond_5
    new-instance v5, Ljava/io/InputStreamReader;

    #@40
    invoke-direct {v5, v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@43
    .line 136
    .local v5, "reader":Ljava/io/Reader;
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    #@45
    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@48
    .line 138
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    const/16 v7, 0x400

    #@4a
    :try_start_0
    new-array v6, v7, [C

    #@4c
    .line 140
    .local v6, "tmp":[C
    :goto_0
    invoke-virtual {v5, v6}, Ljava/io/Reader;->read([C)I

    #@4f
    move-result v4

    #@50
    .local v4, "l":I
    const/4 v7, -0x1

    #@51
    if-eq v4, v7, :cond_6

    #@53
    .line 141
    const/4 v7, 0x0

    #@54
    invoke-virtual {v0, v6, v7, v4}, Lorg/apache/http/util/CharArrayBuffer;->append([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@57
    goto :goto_0

    #@58
    .line 143
    .end local v4    # "l":I
    .end local v6    # "tmp":[C
    :catchall_0
    move-exception v7

    #@59
    .line 144
    invoke-virtual {v5}, Ljava/io/Reader;->close()V

    #@5c
    .line 143
    throw v7

    #@5d
    .line 144
    .restart local v4    # "l":I
    .restart local v6    # "tmp":[C
    :cond_6
    invoke-virtual {v5}, Ljava/io/Reader;->close()V

    #@60
    .line 146
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    #@63
    move-result-object v7

    #@64
    return-object v7
.end method
