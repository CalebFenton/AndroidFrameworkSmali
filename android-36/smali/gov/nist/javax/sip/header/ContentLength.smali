.class public Lgov/nist/javax/sip/header/ContentLength;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "ContentLength.java"

# interfaces
.implements Ljavax/sip/header/ContentLengthHeader;


# static fields
.field private static final whitelist serialVersionUID:J = 0x1079bf82211cf963L


# instance fields
.field protected greylist contentLength:Ljava/lang/Integer;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 92
    const-string v0, "Content-Length"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public constructor greylist <init>(I)V
    .registers 3
    .param p1, "length"    # I

    .line 99
    const-string v0, "Content-Length"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/header/ContentLength;->contentLength:Ljava/lang/Integer;

    .line 101
    return-void
.end method


# virtual methods
.method public greylist encodeBody()Ljava/lang/String;
    .registers 2

    .line 129
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ContentLength;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected greylist encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 133
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentLength;->contentLength:Ljava/lang/Integer;

    if-nez v0, :cond_a

    .line 134
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_13

    .line 136
    :cond_a
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentLength;->contentLength:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    :goto_13
    return-object p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 151
    instance-of v0, p1, Ljavax/sip/header/ContentLengthHeader;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 152
    move-object v0, p1

    check-cast v0, Ljavax/sip/header/ContentLengthHeader;

    .line 153
    .local v0, "o":Ljavax/sip/header/ContentLengthHeader;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    move-result v2

    invoke-interface {v0}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v3

    if-ne v2, v3, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1

    .line 155
    .end local v0    # "o":Ljavax/sip/header/ContentLengthHeader;
    :cond_14
    return v1
.end method

.method public greylist getContentLength()I
    .registers 2

    .line 108
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentLength;->contentLength:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public greylist match(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 144
    instance-of v0, p1, Lgov/nist/javax/sip/header/ContentLength;

    if-eqz v0, :cond_6

    .line 145
    const/4 v0, 0x1

    return v0

    .line 147
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public greylist setContentLength(I)V
    .registers 4
    .param p1, "contentLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 117
    if-ltz p1, :cond_9

    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/header/ContentLength;->contentLength:Ljava/lang/Integer;

    .line 122
    return-void

    .line 118
    :cond_9
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "JAIN-SIP Exception, ContentLength, setContentLength(), the contentLength parameter is <0"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
