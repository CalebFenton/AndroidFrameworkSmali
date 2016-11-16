.class public abstract Lorg/apache/http/impl/auth/RFC2617Scheme;
.super Lorg/apache/http/impl/auth/AuthSchemeBase;
.source "RFC2617Scheme.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Lorg/apache/http/impl/auth/AuthSchemeBase;-><init>()V

    #@3
    .line 66
    return-void
.end method


# virtual methods
.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 106
    if-nez p1, :cond_0

    #@3
    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "Parameter name may not be null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 109
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    #@e
    if-nez v0, :cond_1

    #@10
    .line 110
    return-object v1

    #@11
    .line 112
    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    #@13
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@15
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Ljava/lang/String;

    #@1f
    return-object v0
.end method

.method protected getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/http/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 93
    new-instance v0, Ljava/util/HashMap;

    #@6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@9
    iput-object v0, p0, Lorg/apache/http/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    #@b
    .line 95
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    #@d
    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 121
    const-string/jumbo v0, "realm"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/RFC2617Scheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method protected parseChallenge(Lorg/apache/http/util/CharArrayBuffer;II)V
    .locals 9
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 73
    sget-object v3, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    #@3
    .line 74
    .local v3, "parser":Lorg/apache/http/message/HeaderValueParser;
    new-instance v0, Lorg/apache/http/message/ParserCursor;

    #@5
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    #@8
    move-result v5

    #@9
    invoke-direct {v0, p2, v5}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    #@c
    .line 75
    .local v0, "cursor":Lorg/apache/http/message/ParserCursor;
    invoke-interface {v3, p1, v0}, Lorg/apache/http/message/HeaderValueParser;->parseElements(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/HeaderElement;

    #@f
    move-result-object v2

    #@10
    .line 76
    .local v2, "elements":[Lorg/apache/http/HeaderElement;
    array-length v5, v2

    #@11
    if-nez v5, :cond_0

    #@13
    .line 77
    new-instance v4, Lorg/apache/http/auth/MalformedChallengeException;

    #@15
    const-string/jumbo v5, "Authentication challenge is empty"

    #@18
    invoke-direct {v4, v5}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v4

    #@1c
    .line 80
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    #@1e
    array-length v6, v2

    #@1f
    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    #@22
    iput-object v5, p0, Lorg/apache/http/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    #@24
    .line 81
    array-length v5, v2

    #@25
    :goto_0
    if-ge v4, v5, :cond_1

    #@27
    aget-object v1, v2, v4

    #@29
    .line 82
    .local v1, "element":Lorg/apache/http/HeaderElement;
    iget-object v6, p0, Lorg/apache/http/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    #@2b
    invoke-interface {v1}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    #@2e
    move-result-object v7

    #@2f
    invoke-interface {v1}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    #@32
    move-result-object v8

    #@33
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    .line 81
    add-int/lit8 v4, v4, 0x1

    #@38
    goto :goto_0

    #@39
    .line 72
    .end local v1    # "element":Lorg/apache/http/HeaderElement;
    :cond_1
    return-void
.end method
