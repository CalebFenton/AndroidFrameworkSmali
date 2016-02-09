.class public Lgov/nist/javax/sip/header/ContentType;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "ContentType.java"

# interfaces
.implements Ljavax/sip/header/ContentTypeHeader;


# static fields
.field private static final serialVersionUID:J = 0x759fac0f0cc76fd2L


# instance fields
.field protected mediaRange:Lgov/nist/javax/sip/header/MediaRange;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 79
    const-string/jumbo v0, "Content-Type"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "contentSubtype"    # Ljava/lang/String;

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Lgov/nist/javax/sip/header/ContentType;-><init>()V

    #@3
    .line 88
    invoke-virtual {p0, p1, p2}, Lgov/nist/javax/sip/header/ContentType;->setContentType(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 86
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 206
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/header/ContentType;

    #@6
    .line 207
    .local v0, "retval":Lgov/nist/javax/sip/header/ContentType;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 208
    iget-object v1, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@c
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/MediaRange;->clone()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lgov/nist/javax/sip/header/MediaRange;

    #@12
    iput-object v1, v0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@14
    .line 209
    :cond_0
    return-object v0
.end method

.method public compareMediaRange(Ljava/lang/String;)I
    .locals 2
    .param p1, "media"    # Ljava/lang/String;

    #@0
    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 97
    iget-object v1, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@7
    iget-object v1, v1, Lgov/nist/javax/sip/header/MediaRange;->type:Ljava/lang/String;

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "/"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@16
    iget-object v1, v1, Lgov/nist/javax/sip/header/MediaRange;->subtype:Ljava/lang/String;

    #@18
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@23
    move-result v0

    #@24
    return v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ContentType;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/MediaRange;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@5
    .line 111
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ContentType;->hasParameters()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 112
    const-string/jumbo v0, ";"

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@11
    .line 113
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->parameters:Lgov/nist/core/NameValueList;

    #@13
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@16
    .line 115
    :cond_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 213
    instance-of v2, p1, Ljavax/sip/header/ContentTypeHeader;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 214
    check-cast v0, Ljavax/sip/header/ContentTypeHeader;

    #@8
    .line 215
    .local v0, "o":Ljavax/sip/header/ContentTypeHeader;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ContentType;->getContentType()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-interface {v0}, Ljavax/sip/header/ContentTypeHeader;->getContentType()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 216
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ContentType;->getContentSubType()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-interface {v0}, Ljavax/sip/header/ContentTypeHeader;->getContentSubType()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@21
    move-result v2

    #@22
    .line 215
    if-eqz v2, :cond_0

    #@24
    .line 217
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ContentType;->equalParameters(Ljavax/sip/header/Parameters;)Z

    #@27
    move-result v1

    #@28
    .line 215
    :cond_0
    return v1

    #@29
    .line 219
    .end local v0    # "o":Ljavax/sip/header/ContentTypeHeader;
    :cond_1
    return v1
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 157
    const-string/jumbo v0, "charset"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getContentSubType()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 143
    iget-object v1, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@8
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/MediaRange;->getSubtype()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 151
    iget-object v1, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@8
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/MediaRange;->getType()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getMediaRange()Lgov/nist/javax/sip/header/MediaRange;
    .locals 1

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@2
    return-object v0
.end method

.method public getMediaSubType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@2
    iget-object v0, v0, Lgov/nist/javax/sip/header/MediaRange;->subtype:Ljava/lang/String;

    #@4
    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@2
    iget-object v0, v0, Lgov/nist/javax/sip/header/MediaRange;->type:Ljava/lang/String;

    #@4
    return-object v0
.end method

.method public setContentSubType(Ljava/lang/String;)V
    .locals 2
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 198
    if-nez p1, :cond_0

    #@2
    .line 199
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "null arg"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 200
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@d
    if-nez v0, :cond_1

    #@f
    .line 201
    new-instance v0, Lgov/nist/javax/sip/header/MediaRange;

    #@11
    invoke-direct {v0}, Lgov/nist/javax/sip/header/MediaRange;-><init>()V

    #@14
    iput-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@16
    .line 202
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@18
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/MediaRange;->setSubtype(Ljava/lang/String;)V

    #@1b
    .line 197
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 186
    if-nez p1, :cond_0

    #@2
    .line 187
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "null arg"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 188
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@d
    if-nez v0, :cond_1

    #@f
    .line 189
    new-instance v0, Lgov/nist/javax/sip/header/MediaRange;

    #@11
    invoke-direct {v0}, Lgov/nist/javax/sip/header/MediaRange;-><init>()V

    #@14
    iput-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@16
    .line 190
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@18
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/MediaRange;->setType(Ljava/lang/String;)V

    #@1b
    .line 185
    return-void
.end method

.method public setContentType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "contentSubType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 175
    new-instance v0, Lgov/nist/javax/sip/header/MediaRange;

    #@6
    invoke-direct {v0}, Lgov/nist/javax/sip/header/MediaRange;-><init>()V

    #@9
    iput-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@b
    .line 176
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@d
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/MediaRange;->setType(Ljava/lang/String;)V

    #@10
    .line 177
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@12
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/MediaRange;->setSubtype(Ljava/lang/String;)V

    #@15
    .line 173
    return-void
.end method

.method public setMediaRange(Lgov/nist/javax/sip/header/MediaRange;)V
    .locals 0
    .param p1, "m"    # Lgov/nist/javax/sip/header/MediaRange;

    #@0
    .prologue
    .line 165
    iput-object p1, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    #@2
    .line 164
    return-void
.end method
