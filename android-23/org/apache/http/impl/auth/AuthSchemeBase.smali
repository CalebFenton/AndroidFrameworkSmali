.class public abstract Lorg/apache/http/impl/auth/AuthSchemeBase;
.super Ljava/lang/Object;
.source "AuthSchemeBase.java"

# interfaces
.implements Lorg/apache/http/auth/AuthScheme;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private proxy:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    return-void
.end method


# virtual methods
.method public isProxy()Z
    .locals 1

    #@0
    .prologue
    .line 130
    iget-boolean v0, p0, Lorg/apache/http/impl/auth/AuthSchemeBase;->proxy:Z

    #@2
    return v0
.end method

.method protected abstract parseChallenge(Lorg/apache/http/util/CharArrayBuffer;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation
.end method

.method public processChallenge(Lorg/apache/http/Header;)V
    .locals 9
    .param p1, "header"    # Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    #@0
    .prologue
    .line 77
    if-nez p1, :cond_0

    #@2
    .line 78
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v7, "Header may not be null"

    #@7
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v6

    #@b
    .line 80
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 81
    .local v0, "authheader":Ljava/lang/String;
    const-string/jumbo v6, "WWW-Authenticate"

    #@12
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@15
    move-result v6

    #@16
    if-eqz v6, :cond_1

    #@18
    .line 82
    const/4 v6, 0x0

    #@19
    iput-boolean v6, p0, Lorg/apache/http/impl/auth/AuthSchemeBase;->proxy:Z

    #@1b
    .line 91
    :goto_0
    instance-of v6, p1, Lorg/apache/http/FormattedHeader;

    #@1d
    if-eqz v6, :cond_3

    #@1f
    move-object v6, p1

    #@20
    .line 92
    check-cast v6, Lorg/apache/http/FormattedHeader;

    #@22
    invoke-interface {v6}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    #@25
    move-result-object v2

    #@26
    .line 93
    .local v2, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    check-cast p1, Lorg/apache/http/FormattedHeader;

    #@28
    .end local p1    # "header":Lorg/apache/http/Header;
    invoke-interface {p1}, Lorg/apache/http/FormattedHeader;->getValuePos()I

    #@2b
    move-result v4

    #@2c
    .line 103
    .local v4, "pos":I
    :goto_1
    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    #@2f
    move-result v6

    #@30
    if-ge v4, v6, :cond_5

    #@32
    invoke-virtual {v2, v4}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    #@35
    move-result v6

    #@36
    invoke-static {v6}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    #@39
    move-result v6

    #@3a
    if-eqz v6, :cond_5

    #@3c
    .line 104
    add-int/lit8 v4, v4, 0x1

    #@3e
    goto :goto_1

    #@3f
    .line 83
    .end local v2    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v4    # "pos":I
    .restart local p1    # "header":Lorg/apache/http/Header;
    :cond_1
    const-string/jumbo v6, "Proxy-Authenticate"

    #@42
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@45
    move-result v6

    #@46
    if-eqz v6, :cond_2

    #@48
    .line 84
    const/4 v6, 0x1

    #@49
    iput-boolean v6, p0, Lorg/apache/http/impl/auth/AuthSchemeBase;->proxy:Z

    #@4b
    goto :goto_0

    #@4c
    .line 86
    :cond_2
    new-instance v6, Lorg/apache/http/auth/MalformedChallengeException;

    #@4e
    new-instance v7, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v8, "Unexpected header name: "

    #@56
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v7

    #@5a
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v7

    #@5e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v7

    #@62
    invoke-direct {v6, v7}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    #@65
    throw v6

    #@66
    .line 95
    :cond_3
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@69
    move-result-object v5

    #@6a
    .line 96
    .local v5, "s":Ljava/lang/String;
    if-nez v5, :cond_4

    #@6c
    .line 97
    new-instance v6, Lorg/apache/http/auth/MalformedChallengeException;

    #@6e
    const-string/jumbo v7, "Header value is null"

    #@71
    invoke-direct {v6, v7}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    #@74
    throw v6

    #@75
    .line 99
    :cond_4
    new-instance v2, Lorg/apache/http/util/CharArrayBuffer;

    #@77
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@7a
    move-result v6

    #@7b
    invoke-direct {v2, v6}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@7e
    .line 100
    .restart local v2    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v2, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@81
    .line 101
    const/4 v4, 0x0

    #@82
    .restart local v4    # "pos":I
    goto :goto_1

    #@83
    .line 106
    .end local v5    # "s":Ljava/lang/String;
    .end local p1    # "header":Lorg/apache/http/Header;
    :cond_5
    move v1, v4

    #@84
    .line 107
    .local v1, "beginIndex":I
    :goto_2
    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    #@87
    move-result v6

    #@88
    if-ge v4, v6, :cond_6

    #@8a
    invoke-virtual {v2, v4}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    #@8d
    move-result v6

    #@8e
    invoke-static {v6}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    #@91
    move-result v6

    #@92
    if-eqz v6, :cond_7

    #@94
    .line 110
    :cond_6
    move v3, v4

    #@95
    .line 111
    .local v3, "endIndex":I
    invoke-virtual {v2, v1, v3}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    #@98
    move-result-object v5

    #@99
    .line 112
    .restart local v5    # "s":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/AuthSchemeBase;->getSchemeName()Ljava/lang/String;

    #@9c
    move-result-object v6

    #@9d
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@a0
    move-result v6

    #@a1
    if-nez v6, :cond_8

    #@a3
    .line 113
    new-instance v6, Lorg/apache/http/auth/MalformedChallengeException;

    #@a5
    new-instance v7, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    const-string/jumbo v8, "Invalid scheme identifier: "

    #@ad
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v7

    #@b1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v7

    #@b5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v7

    #@b9
    invoke-direct {v6, v7}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    #@bc
    throw v6

    #@bd
    .line 108
    .end local v3    # "endIndex":I
    .end local v5    # "s":Ljava/lang/String;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    #@bf
    goto :goto_2

    #@c0
    .line 116
    .restart local v3    # "endIndex":I
    .restart local v5    # "s":Ljava/lang/String;
    :cond_8
    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    #@c3
    move-result v6

    #@c4
    invoke-virtual {p0, v2, v4, v6}, Lorg/apache/http/impl/auth/AuthSchemeBase;->parseChallenge(Lorg/apache/http/util/CharArrayBuffer;II)V

    #@c7
    .line 76
    return-void
.end method
