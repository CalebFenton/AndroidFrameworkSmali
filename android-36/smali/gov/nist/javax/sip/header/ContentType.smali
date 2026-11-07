.class public Lgov/nist/javax/sip/header/ContentType;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "ContentType.java"

# interfaces
.implements Ljavax/sip/header/ContentTypeHeader;


# static fields
.field private static final whitelist serialVersionUID:J = 0x759fac0f0cc76fd2L


# instance fields
.field protected greylist mediaRange:Lgov/nist/javax/sip/header/MediaRange;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 79
    const-string v0, "Content-Type"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "contentSubtype"    # Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Lgov/nist/javax/sip/header/ContentType;-><init>()V

    .line 88
    invoke-virtual {p0, p1, p2}, Lgov/nist/javax/sip/header/ContentType;->setContentType(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 206
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ContentType;

    .line 207
    .local v0, "retval":Lgov/nist/javax/sip/header/ContentType;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-eqz v1, :cond_14

    .line 208
    iget-object v1, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/MediaRange;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/MediaRange;

    iput-object v1, v0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    .line 209
    :cond_14
    return-object v0
.end method

.method public greylist compareMediaRange(Ljava/lang/String;)I
    .registers 4
    .param p1, "media"    # Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    iget-object v1, v1, Lgov/nist/javax/sip/header/MediaRange;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    iget-object v1, v1, Lgov/nist/javax/sip/header/MediaRange;->subtype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 96
    return v0
.end method

.method public greylist encodeBody()Ljava/lang/String;
    .registers 2

    .line 106
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ContentType;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected greylist encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 110
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/MediaRange;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ContentType;->hasParameters()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 112
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 115
    :cond_15
    return-object p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 213
    instance-of v0, p1, Ljavax/sip/header/ContentTypeHeader;

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    .line 214
    move-object v0, p1

    check-cast v0, Ljavax/sip/header/ContentTypeHeader;

    .line 215
    .local v0, "o":Ljavax/sip/header/ContentTypeHeader;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ContentType;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljavax/sip/header/ContentTypeHeader;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 216
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ContentType;->getContentSubType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljavax/sip/header/ContentTypeHeader;->getContentSubType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 217
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ContentType;->equalParameters(Ljavax/sip/header/Parameters;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const/4 v1, 0x1

    goto :goto_2d

    :cond_2c
    nop

    .line 215
    :goto_2d
    return v1

    .line 219
    .end local v0    # "o":Ljavax/sip/header/ContentTypeHeader;
    :cond_2e
    return v1
.end method

.method public greylist getCharset()Ljava/lang/String;
    .registers 2

    .line 157
    const-string v0, "charset"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getContentSubType()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/MediaRange;->getSubtype()Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public greylist getContentType()Ljava/lang/String;
    .registers 2

    .line 151
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/MediaRange;->getType()Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public greylist getMediaRange()Lgov/nist/javax/sip/header/MediaRange;
    .registers 2

    .line 122
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    return-object v0
.end method

.method public greylist getMediaSubType()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    iget-object v0, v0, Lgov/nist/javax/sip/header/MediaRange;->subtype:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getMediaType()Ljava/lang/String;
    .registers 2

    .line 129
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    iget-object v0, v0, Lgov/nist/javax/sip/header/MediaRange;->type:Ljava/lang/String;

    return-object v0
.end method

.method public greylist setContentSubType(Ljava/lang/String;)V
    .registers 4
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 198
    if-eqz p1, :cond_13

    .line 200
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-nez v0, :cond_d

    .line 201
    new-instance v0, Lgov/nist/javax/sip/header/MediaRange;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/MediaRange;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    .line 202
    :cond_d
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/MediaRange;->setSubtype(Ljava/lang/String;)V

    .line 203
    return-void

    .line 199
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setContentType(Ljava/lang/String;)V
    .registers 4
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 186
    if-eqz p1, :cond_13

    .line 188
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-nez v0, :cond_d

    .line 189
    new-instance v0, Lgov/nist/javax/sip/header/MediaRange;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/MediaRange;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    .line 190
    :cond_d
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/MediaRange;->setType(Ljava/lang/String;)V

    .line 192
    return-void

    .line 187
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setContentType(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "contentSubType"    # Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-nez v0, :cond_b

    .line 175
    new-instance v0, Lgov/nist/javax/sip/header/MediaRange;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/MediaRange;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    .line 176
    :cond_b
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/MediaRange;->setType(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/MediaRange;->setSubtype(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public greylist setMediaRange(Lgov/nist/javax/sip/header/MediaRange;)V
    .registers 2
    .param p1, "m"    # Lgov/nist/javax/sip/header/MediaRange;

    .line 165
    iput-object p1, p0, Lgov/nist/javax/sip/header/ContentType;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    .line 166
    return-void
.end method
