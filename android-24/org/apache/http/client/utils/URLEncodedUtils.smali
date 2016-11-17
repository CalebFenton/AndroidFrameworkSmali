.class public Lorg/apache/http/client/utils/URLEncodedUtils;
.super Ljava/lang/Object;
.source "URLEncodedUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static final NAME_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final PARAMETER_SEPARATOR:Ljava/lang/String; = "&"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 181
    if-eqz p1, :cond_0

    #@2
    .line 180
    .end local p1    # "encoding":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 181
    .restart local p1    # "encoding":Ljava/lang/String;
    :cond_0
    const-string/jumbo p1, "ISO-8859-1"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    goto :goto_0

    #@b
    .line 182
    .end local p1    # "encoding":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@c
    .line 183
    .local v0, "problem":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@e
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@11
    throw v1
.end method

.method private static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 190
    if-eqz p1, :cond_0

    #@2
    .line 189
    .end local p1    # "encoding":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 190
    .restart local p1    # "encoding":Ljava/lang/String;
    :cond_0
    const-string/jumbo p1, "ISO-8859-1"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    goto :goto_0

    #@b
    .line 191
    .end local p1    # "encoding":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@c
    .line 192
    .local v0, "problem":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@e
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@11
    throw v1
.end method

.method public static format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 164
    .local p0, "parameters":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 165
    .local v4, "result":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v3

    #@9
    .local v3, "parameter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v6

    #@d
    if-eqz v6, :cond_2

    #@f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Lorg/apache/http/NameValuePair;

    #@15
    .line 166
    .local v2, "parameter":Lorg/apache/http/NameValuePair;
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    #@18
    move-result-object v6

    #@19
    invoke-static {v6, p1}, Lorg/apache/http/client/utils/URLEncodedUtils;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 167
    .local v0, "encodedName":Ljava/lang/String;
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    .line 168
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_1

    #@23
    invoke-static {v5, p1}, Lorg/apache/http/client/utils/URLEncodedUtils;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    .line 169
    .local v1, "encodedValue":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@2a
    move-result v6

    #@2b
    if-lez v6, :cond_0

    #@2d
    .line 170
    const-string/jumbo v6, "&"

    #@30
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 171
    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 172
    const-string/jumbo v6, "="

    #@39
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    .line 173
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    goto :goto_0

    #@40
    .line 168
    .end local v1    # "encodedValue":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, ""

    #@43
    .restart local v1    # "encodedValue":Ljava/lang/String;
    goto :goto_1

    #@44
    .line 175
    .end local v0    # "encodedName":Ljava/lang/String;
    .end local v1    # "encodedValue":Ljava/lang/String;
    .end local v2    # "parameter":Lorg/apache/http/NameValuePair;
    .end local v5    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v6

    #@48
    return-object v6
.end method

.method public static isEncoded(Lorg/apache/http/HttpEntity;)Z
    .locals 3
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;

    #@0
    .prologue
    .line 118
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    #@3
    move-result-object v0

    #@4
    .line 119
    .local v0, "contentType":Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    #@6
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    const-string/jumbo v2, "application/x-www-form-urlencoded"

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@10
    move-result v1

    #@11
    :goto_0
    return v1

    #@12
    :cond_0
    const/4 v1, 0x0

    #@13
    goto :goto_0
.end method

.method public static parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 77
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@3
    move-result-object v1

    #@4
    .line 78
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 79
    .local v0, "query":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@d
    move-result v2

    #@e
    if-lez v2, :cond_0

    #@10
    .line 80
    new-instance v1, Ljava/util/ArrayList;

    #@12
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@15
    .line 81
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Ljava/util/Scanner;

    #@17
    invoke-direct {v2, v0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    #@1a
    invoke-static {v1, v2, p1}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/util/List;Ljava/util/Scanner;Ljava/lang/String;)V

    #@1d
    .line 83
    :cond_0
    return-object v1
.end method

.method public static parse(Lorg/apache/http/HttpEntity;)Ljava/util/List;
    .locals 5
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpEntity;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 100
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@4
    move-result-object v2

    #@5
    .line 101
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {p0}, Lorg/apache/http/client/utils/URLEncodedUtils;->isEncoded(Lorg/apache/http/HttpEntity;)Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_1

    #@b
    .line 102
    invoke-static {p0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 103
    .local v0, "content":Ljava/lang/String;
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    #@12
    move-result-object v1

    #@13
    .line 104
    .local v1, "encoding":Lorg/apache/http/Header;
    if-eqz v0, :cond_1

    #@15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@18
    move-result v4

    #@19
    if-lez v4, :cond_1

    #@1b
    .line 105
    new-instance v2, Ljava/util/ArrayList;

    #@1d
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@20
    .line 106
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Ljava/util/Scanner;

    #@22
    invoke-direct {v4, v0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    #@25
    .line 107
    if-eqz v1, :cond_0

    #@27
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    .line 106
    :cond_0
    invoke-static {v2, v4, v3}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/util/List;Ljava/util/Scanner;Ljava/lang/String;)V

    #@2e
    .line 110
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "encoding":Lorg/apache/http/Header;
    :cond_1
    return-object v2
.end method

.method public static parse(Ljava/util/List;Ljava/util/Scanner;Ljava/lang/String;)V
    .locals 7
    .param p1, "scanner"    # Ljava/util/Scanner;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/Scanner;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x0

    #@2
    .line 140
    const-string/jumbo v3, "&"

    #@5
    invoke-virtual {p1, v3}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    #@8
    .line 141
    :goto_0
    invoke-virtual {p1}, Ljava/util/Scanner;->hasNext()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_3

    #@e
    .line 142
    invoke-virtual {p1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    const-string/jumbo v4, "="

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 143
    .local v1, "nameValue":[Ljava/lang/String;
    array-length v3, v1

    #@1a
    if-eqz v3, :cond_0

    #@1c
    array-length v3, v1

    #@1d
    if-le v3, v6, :cond_1

    #@1f
    .line 144
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@21
    const-string/jumbo v4, "bad parameter"

    #@24
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v3

    #@28
    .line 146
    :cond_1
    aget-object v3, v1, v5

    #@2a
    invoke-static {v3, p2}, Lorg/apache/http/client/utils/URLEncodedUtils;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    .line 147
    .local v0, "name":Ljava/lang/String;
    const/4 v2, 0x0

    #@2f
    .line 148
    .local v2, "value":Ljava/lang/String;
    array-length v3, v1

    #@30
    if-ne v3, v6, :cond_2

    #@32
    .line 149
    const/4 v3, 0x1

    #@33
    aget-object v3, v1, v3

    #@35
    invoke-static {v3, p2}, Lorg/apache/http/client/utils/URLEncodedUtils;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    .line 150
    .end local v2    # "value":Ljava/lang/String;
    :cond_2
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    #@3b
    invoke-direct {v3, v0, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@3e
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@41
    goto :goto_0

    #@42
    .line 139
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "nameValue":[Ljava/lang/String;
    :cond_3
    return-void
.end method
