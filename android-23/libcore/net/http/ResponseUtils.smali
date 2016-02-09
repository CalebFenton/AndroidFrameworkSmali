.class public Llibcore/net/http/ResponseUtils;
.super Ljava/lang/Object;
.source "ResponseUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static parseContentTypeParameters(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .param p0, "contentTypeHeader"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 63
    sget-object v5, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    #@3
    .line 65
    .local v5, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, ";"

    #@6
    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 66
    .local v1, "fields":[Ljava/lang/String;
    array-length v7, v1

    #@b
    if-le v7, v9, :cond_2

    #@d
    .line 67
    new-instance v5, Ljava/util/HashMap;

    #@f
    .end local v5    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    #@12
    .line 69
    .restart local v5    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x1

    #@13
    .local v2, "i":I
    :goto_0
    array-length v7, v1

    #@14
    if-ge v2, v7, :cond_2

    #@16
    .line 70
    aget-object v4, v1, v2

    #@18
    .line 71
    .local v4, "parameter":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    #@1b
    move-result v7

    #@1c
    if-nez v7, :cond_0

    #@1e
    .line 72
    const-string/jumbo v7, "="

    #@21
    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    .line 73
    .local v0, "components":[Ljava/lang/String;
    array-length v7, v0

    #@26
    const/4 v8, 0x2

    #@27
    if-eq v7, v8, :cond_1

    #@29
    .line 69
    .end local v0    # "components":[Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 77
    .restart local v0    # "components":[Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    #@2d
    aget-object v7, v0, v7

    #@2f
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@32
    move-result-object v7

    #@33
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    .line 78
    .local v3, "key":Ljava/lang/String;
    aget-object v7, v0, v9

    #@39
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@3c
    move-result-object v6

    #@3d
    .line 79
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    #@40
    move-result v7

    #@41
    if-nez v7, :cond_0

    #@43
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    #@46
    move-result v7

    #@47
    if-nez v7, :cond_0

    #@49
    .line 83
    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4c
    goto :goto_1

    #@4d
    .line 88
    .end local v0    # "components":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "parameter":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    return-object v5
.end method

.method public static responseCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 4
    .param p0, "contentTypeHeader"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/IllegalCharsetNameException;,
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    #@0
    .prologue
    .line 42
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@2
    .line 43
    .local v2, "responseCharset":Ljava/nio/charset/Charset;
    if-eqz p0, :cond_0

    #@4
    .line 44
    invoke-static {p0}, Llibcore/net/http/ResponseUtils;->parseContentTypeParameters(Ljava/lang/String;)Ljava/util/Map;

    #@7
    move-result-object v1

    #@8
    .line 45
    .local v1, "contentTypeParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "charset"

    #@b
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/lang/String;

    #@11
    .line 46
    .local v0, "charsetParameter":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@13
    .line 47
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@16
    move-result-object v2

    #@17
    .line 51
    .end local v0    # "charsetParameter":Ljava/lang/String;
    .end local v1    # "contentTypeParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object v2
.end method
