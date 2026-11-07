.class public final Lgov/nist/javax/sip/header/AcceptEncoding;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "AcceptEncoding.java"

# interfaces
.implements Ljavax/sip/header/AcceptEncodingHeader;


# static fields
.field private static final whitelist serialVersionUID:J = -0x147eaca80a637035L


# instance fields
.field protected greylist contentCoding:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 85
    const-string v0, "Accept-Encoding"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 86
    return-void
.end method


# virtual methods
.method protected greylist encodeBody()Ljava/lang/String;
    .registers 2

    .line 94
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AcceptEncoding;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected greylist encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 98
    iget-object v0, p0, Lgov/nist/javax/sip/header/AcceptEncoding;->contentCoding:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 99
    iget-object v0, p0, Lgov/nist/javax/sip/header/AcceptEncoding;->contentCoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    :cond_9
    iget-object v0, p0, Lgov/nist/javax/sip/header/AcceptEncoding;->parameters:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lgov/nist/javax/sip/header/AcceptEncoding;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    .line 102
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/header/AcceptEncoding;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    :cond_24
    return-object p1
.end method

.method public greylist getEncoding()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Lgov/nist/javax/sip/header/AcceptEncoding;->contentCoding:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getQValue()F
    .registers 2

    .line 113
    const-string v0, "q"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AcceptEncoding;->getParameterAsFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public greylist setEncoding(Ljava/lang/String;)V
    .registers 4
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 148
    if-eqz p1, :cond_5

    .line 150
    iput-object p1, p0, Lgov/nist/javax/sip/header/AcceptEncoding;->contentCoding:Ljava/lang/String;

    .line 151
    return-void

    .line 149
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, " encoding parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setQValue(F)V
    .registers 6
    .param p1, "q"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 132
    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_14

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_14

    .line 134
    const-string v0, "q"

    invoke-super {p0, v0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Ljava/lang/String;F)V

    .line 135
    return-void

    .line 133
    :cond_14
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "qvalue out of range!"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
