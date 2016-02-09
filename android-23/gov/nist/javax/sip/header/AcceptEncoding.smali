.class public final Lgov/nist/javax/sip/header/AcceptEncoding;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "AcceptEncoding.java"

# interfaces
.implements Ljavax/sip/header/AcceptEncodingHeader;


# static fields
.field private static final serialVersionUID:J = -0x147eaca80a637035L


# instance fields
.field protected contentCoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 85
    const-string/jumbo v0, "Accept-Encoding"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 84
    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AcceptEncoding;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

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
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Lgov/nist/javax/sip/header/AcceptEncoding;->contentCoding:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 99
    iget-object v0, p0, Lgov/nist/javax/sip/header/AcceptEncoding;->contentCoding:Ljava/lang/String;

    #@6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9
    .line 101
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/AcceptEncoding;->parameters:Lgov/nist/core/NameValueList;

    #@b
    if-eqz v0, :cond_1

    #@d
    iget-object v0, p0, Lgov/nist/javax/sip/header/AcceptEncoding;->parameters:Lgov/nist/core/NameValueList;

    #@f
    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_2

    #@15
    .line 104
    :cond_1
    :goto_0
    return-object p1

    #@16
    .line 102
    :cond_2
    const-string/jumbo v0, ";"

    #@19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c
    move-result-object v0

    #@1d
    iget-object v1, p0, Lgov/nist/javax/sip/header/AcceptEncoding;->parameters:Lgov/nist/core/NameValueList;

    #@1f
    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@26
    goto :goto_0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Lgov/nist/javax/sip/header/AcceptEncoding;->contentCoding:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getQValue()F
    .locals 1

    #@0
    .prologue
    .line 113
    const-string/jumbo v0, "q"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AcceptEncoding;->getParameterAsFloat(Ljava/lang/String;)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 148
    if-nez p1, :cond_0

    #@2
    .line 149
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, " encoding parameter is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 150
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/AcceptEncoding;->contentCoding:Ljava/lang/String;

    #@d
    .line 147
    return-void
.end method

.method public setQValue(F)V
    .locals 4
    .param p1, "q"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 132
    float-to-double v0, p1

    #@1
    const-wide/16 v2, 0x0

    #@3
    cmpg-double v0, v0, v2

    #@5
    if-ltz v0, :cond_0

    #@7
    float-to-double v0, p1

    #@8
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@a
    cmpl-double v0, v0, v2

    #@c
    if-lez v0, :cond_1

    #@e
    .line 133
    :cond_0
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    #@10
    const-string/jumbo v1, "qvalue out of range!"

    #@13
    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 134
    :cond_1
    const-string/jumbo v0, "q"

    #@1a
    invoke-super {p0, v0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Ljava/lang/String;F)V

    #@1d
    .line 131
    return-void
.end method
