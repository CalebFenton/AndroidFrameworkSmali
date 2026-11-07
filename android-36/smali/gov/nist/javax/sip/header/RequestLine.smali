.class public Lgov/nist/javax/sip/header/RequestLine;
.super Lgov/nist/javax/sip/header/SIPObject;
.source "RequestLine.java"

# interfaces
.implements Lgov/nist/javax/sip/header/SipRequestLine;


# static fields
.field private static final whitelist serialVersionUID:J = -0x2d9bbb31060a5df9L


# instance fields
.field protected greylist method:Ljava/lang/String;

.field protected greylist sipVersion:Ljava/lang/String;

.field protected greylist uri:Lgov/nist/javax/sip/address/GenericURI;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    .line 64
    const-string v0, "SIP/2.0"

    iput-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor greylist <init>(Lgov/nist/javax/sip/address/GenericURI;Ljava/lang/String;)V
    .registers 4
    .param p1, "requestURI"    # Lgov/nist/javax/sip/address/GenericURI;
    .param p2, "method"    # Ljava/lang/String;

    .line 99
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    .line 100
    iput-object p1, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    .line 101
    iput-object p2, p0, Lgov/nist/javax/sip/header/RequestLine;->method:Ljava/lang/String;

    .line 102
    const-string v0, "SIP/2.0"

    iput-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    .line 103
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 208
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/RequestLine;

    .line 209
    .local v0, "retval":Lgov/nist/javax/sip/header/RequestLine;
    iget-object v1, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    if-eqz v1, :cond_14

    .line 210
    iget-object v1, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/GenericURI;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/address/GenericURI;

    iput-object v1, v0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    .line 211
    :cond_14
    return-object v0
.end method

.method public greylist encode()Ljava/lang/String;
    .registers 2

    .line 73
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/RequestLine;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 77
    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->method:Ljava/lang/String;

    const-string v1, " "

    if-eqz v0, :cond_e

    .line 78
    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->method:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    :cond_e
    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    if-eqz v0, :cond_1a

    .line 82
    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/GenericURI;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 83
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    :cond_1a
    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    return-object p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 192
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 193
    return v1

    .line 195
    :cond_10
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/header/RequestLine;

    .line 197
    .local v0, "that":Lgov/nist/javax/sip/header/RequestLine;
    :try_start_13
    iget-object v2, p0, Lgov/nist/javax/sip/header/RequestLine;->method:Ljava/lang/String;

    iget-object v3, v0, Lgov/nist/javax/sip/header/RequestLine;->method:Ljava/lang/String;

    .line 198
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    iget-object v3, v0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    .line 199
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/address/GenericURI;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    iget-object v3, v0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    .line 200
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2f
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_2f} :catch_35

    if-eqz v2, :cond_33

    const/4 v1, 0x1

    goto :goto_34

    :cond_33
    nop

    .line 203
    .local v1, "retval":Z
    :goto_34
    goto :goto_38

    .line 201
    .end local v1    # "retval":Z
    :catch_35
    move-exception v1

    .line 202
    .local v1, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    move v1, v2

    .line 204
    .local v1, "retval":Z
    :goto_38
    return v1
.end method

.method public greylist getMethod()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->method:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getSipVersion()Ljava/lang/String;
    .registers 2

    .line 116
    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getUri()Lgov/nist/javax/sip/address/GenericURI;
    .registers 2

    .line 94
    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    return-object v0
.end method

.method public bridge synthetic greylist getUri()Ljavax/sip/address/URI;
    .registers 2

    .line 41
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/RequestLine;->getUri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v0

    return-object v0
.end method

.method public greylist getVersionMajor()Ljava/lang/String;
    .registers 6

    .line 144
    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 145
    const/4 v0, 0x0

    return-object v0

    .line 146
    :cond_6
    const/4 v0, 0x0

    .line 147
    .local v0, "major":Ljava/lang/String;
    const/4 v1, 0x0

    .line 148
    .local v1, "slash":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5f

    .line 149
    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_1c

    .line 150
    goto :goto_5f

    .line 151
    :cond_1c
    if-eqz v1, :cond_51

    .line 152
    if-nez v0, :cond_3a

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_51

    .line 155
    :cond_3a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_51
    :goto_51
    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_5c

    .line 158
    const/4 v1, 0x1

    .line 148
    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 160
    .end local v2    # "i":I
    :cond_5f
    :goto_5f
    return-object v0
.end method

.method public greylist getVersionMinor()Ljava/lang/String;
    .registers 6

    .line 167
    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 168
    const/4 v0, 0x0

    return-object v0

    .line 169
    :cond_6
    const/4 v0, 0x0

    .line 170
    .local v0, "minor":Ljava/lang/String;
    const/4 v1, 0x0

    .line 171
    .local v1, "dot":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_54

    .line 172
    if-eqz v1, :cond_46

    .line 173
    if-nez v0, :cond_2f

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_46

    .line 176
    :cond_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_46
    :goto_46
    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_51

    .line 179
    const/4 v1, 0x1

    .line 171
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 181
    .end local v2    # "i":I
    :cond_54
    return-object v0
.end method

.method public greylist setMethod(Ljava/lang/String;)V
    .registers 2
    .param p1, "method"    # Ljava/lang/String;

    .line 130
    iput-object p1, p0, Lgov/nist/javax/sip/header/RequestLine;->method:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public greylist setSipVersion(Ljava/lang/String;)V
    .registers 2
    .param p1, "version"    # Ljava/lang/String;

    .line 137
    iput-object p1, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public greylist setUri(Ljavax/sip/address/URI;)V
    .registers 3
    .param p1, "uri"    # Ljavax/sip/address/URI;

    .line 123
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/address/GenericURI;

    iput-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    .line 124
    return-void
.end method
