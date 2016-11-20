.class public Lgov/nist/javax/sip/header/ContentLength;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "ContentLength.java"

# interfaces
.implements Ljavax/sip/header/ContentLengthHeader;


# static fields
.field private static final serialVersionUID:J = 0x1079bf82211cf963L


# instance fields
.field protected contentLength:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 92
    const-string/jumbo v0, "Content-Length"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 91
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "length"    # I

    #@0
    .prologue
    .line 99
    const-string/jumbo v0, "Content-Length"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lgov/nist/javax/sip/header/ContentLength;->contentLength:Ljava/lang/Integer;

    #@c
    .line 98
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ContentLength;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

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
    .line 133
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentLength;->contentLength:Ljava/lang/Integer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 134
    const-string/jumbo v0, "0"

    #@7
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a
    .line 137
    :goto_0
    return-object p1

    #@b
    .line 136
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentLength;->contentLength:Ljava/lang/Integer;

    #@d
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@14
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 151
    instance-of v2, p1, Ljavax/sip/header/ContentLengthHeader;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 152
    check-cast v0, Ljavax/sip/header/ContentLengthHeader;

    #@8
    .line 153
    .local v0, "o":Ljavax/sip/header/ContentLengthHeader;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    #@b
    move-result v2

    #@c
    invoke-interface {v0}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    #@f
    move-result v3

    #@10
    if-ne v2, v3, :cond_0

    #@12
    const/4 v1, 0x1

    #@13
    :cond_0
    return v1

    #@14
    .line 155
    .end local v0    # "o":Ljavax/sip/header/ContentLengthHeader;
    :cond_1
    return v1
.end method

.method public getContentLength()I
    .locals 1

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentLength;->contentLength:Ljava/lang/Integer;

    #@2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 144
    instance-of v0, p1, Lgov/nist/javax/sip/header/ContentLength;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 145
    const/4 v0, 0x1

    #@5
    return v0

    #@6
    .line 147
    :cond_0
    const/4 v0, 0x0

    #@7
    return v0
.end method

.method public setContentLength(I)V
    .locals 2
    .param p1, "contentLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 117
    if-gez p1, :cond_0

    #@2
    .line 118
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    #@4
    .line 119
    const-string/jumbo v1, "JAIN-SIP Exception, ContentLength, setContentLength(), the contentLength parameter is <0"

    #@7
    .line 118
    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 121
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lgov/nist/javax/sip/header/ContentLength;->contentLength:Ljava/lang/Integer;

    #@11
    .line 116
    return-void
.end method
