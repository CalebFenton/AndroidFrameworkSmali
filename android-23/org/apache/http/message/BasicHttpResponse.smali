.class public Lorg/apache/http/message/BasicHttpResponse;
.super Lorg/apache/http/message/AbstractHttpMessage;
.source "BasicHttpResponse.java"

# interfaces
.implements Lorg/apache/http/HttpResponse;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private entity:Lorg/apache/http/HttpEntity;

.field private locale:Ljava/util/Locale;

.field private reasonCatalog:Lorg/apache/http/ReasonPhraseCatalog;

.field private statusline:Lorg/apache/http/StatusLine;


# direct methods
.method public constructor <init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V
    .locals 2
    .param p1, "ver"    # Lorg/apache/http/ProtocolVersion;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 114
    new-instance v0, Lorg/apache/http/message/BasicStatusLine;

    #@3
    invoke-direct {v0, p1, p2, p3}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    #@6
    invoke-direct {p0, v0, v1, v1}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;Lorg/apache/http/ReasonPhraseCatalog;Ljava/util/Locale;)V

    #@9
    .line 113
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/StatusLine;)V
    .locals 1
    .param p1, "statusline"    # Lorg/apache/http/StatusLine;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 98
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;Lorg/apache/http/ReasonPhraseCatalog;Ljava/util/Locale;)V

    #@4
    .line 97
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/StatusLine;Lorg/apache/http/ReasonPhraseCatalog;Ljava/util/Locale;)V
    .locals 2
    .param p1, "statusline"    # Lorg/apache/http/StatusLine;
    .param p2, "catalog"    # Lorg/apache/http/ReasonPhraseCatalog;
    .param p3, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Lorg/apache/http/message/AbstractHttpMessage;-><init>()V

    #@3
    .line 82
    if-nez p1, :cond_0

    #@5
    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Status line may not be null."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 85
    :cond_0
    iput-object p1, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    #@10
    .line 86
    iput-object p2, p0, Lorg/apache/http/message/BasicHttpResponse;->reasonCatalog:Lorg/apache/http/ReasonPhraseCatalog;

    #@12
    .line 87
    if-eqz p3, :cond_1

    #@14
    .end local p3    # "locale":Ljava/util/Locale;
    :goto_0
    iput-object p3, p0, Lorg/apache/http/message/BasicHttpResponse;->locale:Ljava/util/Locale;

    #@16
    .line 80
    return-void

    #@17
    .line 87
    .restart local p3    # "locale":Ljava/util/Locale;
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@1a
    move-result-object p3

    #@1b
    goto :goto_0
.end method


# virtual methods
.method public getEntity()Lorg/apache/http/HttpEntity;
    .locals 1

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/http/message/BasicHttpResponse;->entity:Lorg/apache/http/HttpEntity;

    #@2
    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/http/message/BasicHttpResponse;->locale:Ljava/util/Locale;

    #@2
    return-object v0
.end method

.method public getProtocolVersion()Lorg/apache/http/ProtocolVersion;
    .locals 1

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    #@2
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected getReason(I)Ljava/lang/String;
    .locals 2
    .param p1, "code"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 205
    iget-object v1, p0, Lorg/apache/http/message/BasicHttpResponse;->reasonCatalog:Lorg/apache/http/ReasonPhraseCatalog;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    .line 206
    :cond_0
    iget-object v0, p0, Lorg/apache/http/message/BasicHttpResponse;->reasonCatalog:Lorg/apache/http/ReasonPhraseCatalog;

    #@8
    iget-object v1, p0, Lorg/apache/http/message/BasicHttpResponse;->locale:Ljava/util/Locale;

    #@a
    invoke-interface {v0, p1, v1}, Lorg/apache/http/ReasonPhraseCatalog;->getReason(ILjava/util/Locale;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    goto :goto_0
.end method

.method public getStatusLine()Lorg/apache/http/StatusLine;
    .locals 1

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    #@2
    return-object v0
.end method

.method public setEntity(Lorg/apache/http/HttpEntity;)V
    .locals 0
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;

    #@0
    .prologue
    .line 181
    iput-object p1, p0, Lorg/apache/http/message/BasicHttpResponse;->entity:Lorg/apache/http/HttpEntity;

    #@2
    .line 180
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 4
    .param p1, "loc"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 186
    if-nez p1, :cond_0

    #@2
    .line 187
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Locale may not be null."

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 189
    :cond_0
    iput-object p1, p0, Lorg/apache/http/message/BasicHttpResponse;->locale:Ljava/util/Locale;

    #@d
    .line 190
    iget-object v1, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    #@f
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    #@12
    move-result v0

    #@13
    .line 191
    .local v0, "code":I
    new-instance v1, Lorg/apache/http/message/BasicStatusLine;

    #@15
    .line 192
    iget-object v2, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    #@17
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicHttpResponse;->getReason(I)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 191
    invoke-direct {v1, v2, v0, v3}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    #@22
    iput-object v1, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    #@24
    .line 185
    return-void
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 169
    if-eqz p1, :cond_1

    #@2
    const/16 v0, 0xa

    #@4
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    #@7
    move-result v0

    #@8
    if-gez v0, :cond_0

    #@a
    .line 170
    const/16 v0, 0xd

    #@c
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    #@f
    move-result v0

    #@10
    if-ltz v0, :cond_1

    #@12
    .line 172
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "Line break in reason phrase."

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 174
    :cond_1
    new-instance v0, Lorg/apache/http/message/BasicStatusLine;

    #@1d
    iget-object v1, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    #@1f
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    #@22
    move-result-object v1

    #@23
    .line 175
    iget-object v2, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    #@25
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    #@28
    move-result v2

    #@29
    .line 174
    invoke-direct {v0, v1, v2, p1}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    #@2c
    iput-object v0, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    #@2e
    .line 167
    return-void
.end method

.method public setStatusCode(I)V
    .locals 3
    .param p1, "code"    # I

    #@0
    .prologue
    .line 162
    iget-object v1, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    #@2
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    #@5
    move-result-object v0

    #@6
    .line 163
    .local v0, "ver":Lorg/apache/http/ProtocolVersion;
    new-instance v1, Lorg/apache/http/message/BasicStatusLine;

    #@8
    invoke-virtual {p0, p1}, Lorg/apache/http/message/BasicHttpResponse;->getReason(I)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-direct {v1, v0, p1, v2}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    #@f
    iput-object v1, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    #@11
    .line 160
    return-void
.end method

.method public setStatusLine(Lorg/apache/http/ProtocolVersion;I)V
    .locals 2
    .param p1, "ver"    # Lorg/apache/http/ProtocolVersion;
    .param p2, "code"    # I

    #@0
    .prologue
    .line 149
    new-instance v0, Lorg/apache/http/message/BasicStatusLine;

    #@2
    invoke-virtual {p0, p2}, Lorg/apache/http/message/BasicHttpResponse;->getReason(I)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, p1, p2, v1}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    #@9
    iput-object v0, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    #@b
    .line 147
    return-void
.end method

.method public setStatusLine(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V
    .locals 1
    .param p1, "ver"    # Lorg/apache/http/ProtocolVersion;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 156
    new-instance v0, Lorg/apache/http/message/BasicStatusLine;

    #@2
    invoke-direct {v0, p1, p2, p3}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    #@5
    iput-object v0, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    #@7
    .line 154
    return-void
.end method

.method public setStatusLine(Lorg/apache/http/StatusLine;)V
    .locals 2
    .param p1, "statusline"    # Lorg/apache/http/StatusLine;

    #@0
    .prologue
    .line 140
    if-nez p1, :cond_0

    #@2
    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Status line may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 143
    :cond_0
    iput-object p1, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    #@d
    .line 139
    return-void
.end method
