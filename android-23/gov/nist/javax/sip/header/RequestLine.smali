.class public Lgov/nist/javax/sip/header/RequestLine;
.super Lgov/nist/javax/sip/header/SIPObject;
.source "RequestLine.java"

# interfaces
.implements Lgov/nist/javax/sip/header/SipRequestLine;


# static fields
.field private static final serialVersionUID:J = -0x2d9bbb31060a5df9L


# instance fields
.field protected method:Ljava/lang/String;

.field protected sipVersion:Ljava/lang/String;

.field protected uri:Lgov/nist/javax/sip/address/GenericURI;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    #@3
    .line 64
    const-string/jumbo v0, "SIP/2.0"

    #@6
    iput-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    #@8
    .line 63
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/address/GenericURI;Ljava/lang/String;)V
    .locals 1
    .param p1, "requestURI"    # Lgov/nist/javax/sip/address/GenericURI;
    .param p2, "method"    # Ljava/lang/String;

    #@0
    .prologue
    .line 99
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    #@3
    .line 100
    iput-object p1, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    #@5
    .line 101
    iput-object p2, p0, Lgov/nist/javax/sip/header/RequestLine;->method:Ljava/lang/String;

    #@7
    .line 102
    const-string/jumbo v0, "SIP/2.0"

    #@a
    iput-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    #@c
    .line 99
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 208
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPObject;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/header/RequestLine;

    #@6
    .line 209
    .local v0, "retval":Lgov/nist/javax/sip/header/RequestLine;
    iget-object v1, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 210
    iget-object v1, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    #@c
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/GenericURI;->clone()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lgov/nist/javax/sip/address/GenericURI;

    #@12
    iput-object v1, v0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    #@14
    .line 211
    :cond_0
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/RequestLine;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->method:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 78
    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->method:Ljava/lang/String;

    #@6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9
    .line 79
    const-string/jumbo v0, " "

    #@c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f
    .line 81
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 82
    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    #@15
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/GenericURI;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@18
    .line 83
    const-string/jumbo v0, " "

    #@1b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    .line 85
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    #@20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    .line 86
    const-string/jumbo v0, "\r\n"

    #@26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@29
    .line 87
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 192
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/RequestLine;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v4

    #@8
    invoke-virtual {v3, v4}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v3

    #@c
    if-nez v3, :cond_0

    #@e
    .line 193
    const/4 v3, 0x0

    #@f
    return v3

    #@10
    :cond_0
    move-object v2, p1

    #@11
    .line 195
    check-cast v2, Lgov/nist/javax/sip/header/RequestLine;

    #@13
    .line 198
    .local v2, "that":Lgov/nist/javax/sip/header/RequestLine;
    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->method:Ljava/lang/String;

    #@15
    iget-object v4, v2, Lgov/nist/javax/sip/header/RequestLine;->method:Ljava/lang/String;

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_1

    #@1d
    .line 199
    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    #@1f
    iget-object v4, v2, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    #@21
    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/address/GenericURI;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v3

    #@25
    .line 198
    if-eqz v3, :cond_1

    #@27
    .line 200
    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    #@29
    iget-object v4, v2, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    move-result v1

    #@2f
    .line 204
    :goto_0
    return v1

    #@30
    .line 198
    :cond_1
    const/4 v1, 0x0

    #@31
    .local v1, "retval":Z
    goto :goto_0

    #@32
    .line 201
    .end local v1    # "retval":Z
    :catch_0
    move-exception v0

    #@33
    .line 202
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v1, 0x0

    #@34
    .restart local v1    # "retval":Z
    goto :goto_0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->method:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSipVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUri()Lgov/nist/javax/sip/address/GenericURI;
    .locals 1

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    #@2
    return-object v0
.end method

.method public bridge synthetic getUri()Ljavax/sip/address/URI;
    .locals 1

    #@0
    .prologue
    .line 93
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/RequestLine;->getUri()Lgov/nist/javax/sip/address/GenericURI;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getVersionMajor()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 144
    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 145
    return-object v4

    #@6
    .line 146
    :cond_0
    const/4 v1, 0x0

    #@7
    .line 147
    .local v1, "major":Ljava/lang/String;
    const/4 v2, 0x0

    #@8
    .line 148
    .local v2, "slash":Z
    const/4 v0, 0x0

    #@9
    .end local v1    # "major":Ljava/lang/String;
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    #@b
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@e
    move-result v3

    #@f
    if-ge v0, v3, :cond_1

    #@11
    .line 149
    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    #@13
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v3

    #@17
    const/16 v4, 0x2e

    #@19
    if-ne v3, v4, :cond_2

    #@1b
    .line 160
    :cond_1
    return-object v1

    #@1c
    .line 151
    :cond_2
    if-eqz v2, :cond_3

    #@1e
    .line 152
    if-nez v1, :cond_5

    #@20
    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v4, ""

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    iget-object v4, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    #@2e
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    #@31
    move-result v4

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    .line 157
    :cond_3
    :goto_1
    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    #@3c
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    #@3f
    move-result v3

    #@40
    const/16 v4, 0x2f

    #@42
    if-ne v3, v4, :cond_4

    #@44
    .line 158
    const/4 v2, 0x1

    #@45
    .line 148
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@47
    goto :goto_0

    #@48
    .line 155
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    iget-object v4, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    #@53
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    #@56
    move-result v4

    #@57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    .local v1, "major":Ljava/lang/String;
    goto :goto_1
.end method

.method public getVersionMinor()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 167
    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 168
    return-object v4

    #@6
    .line 169
    :cond_0
    const/4 v2, 0x0

    #@7
    .line 170
    .local v2, "minor":Ljava/lang/String;
    const/4 v0, 0x0

    #@8
    .line 171
    .local v0, "dot":Z
    const/4 v1, 0x0

    #@9
    .end local v2    # "minor":Ljava/lang/String;
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    #@b
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@e
    move-result v3

    #@f
    if-ge v1, v3, :cond_4

    #@11
    .line 172
    if-eqz v0, :cond_1

    #@13
    .line 173
    if-nez v2, :cond_3

    #@15
    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, ""

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    iget-object v4, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    #@23
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    #@26
    move-result v4

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    .line 178
    :cond_1
    :goto_1
    iget-object v3, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    #@31
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    #@34
    move-result v3

    #@35
    const/16 v4, 0x2e

    #@37
    if-ne v3, v4, :cond_2

    #@39
    .line 179
    const/4 v0, 0x1

    #@3a
    .line 171
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 176
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    iget-object v4, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    #@48
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    #@4b
    move-result v4

    #@4c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    .local v2, "minor":Ljava/lang/String;
    goto :goto_1

    #@55
    .line 181
    .end local v2    # "minor":Ljava/lang/String;
    :cond_4
    return-object v2
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    #@0
    .prologue
    .line 130
    iput-object p1, p0, Lgov/nist/javax/sip/header/RequestLine;->method:Ljava/lang/String;

    #@2
    .line 129
    return-void
.end method

.method public setSipVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    #@0
    .prologue
    .line 137
    iput-object p1, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    #@2
    .line 136
    return-void
.end method

.method public setUri(Ljavax/sip/address/URI;)V
    .locals 0
    .param p1, "uri"    # Ljavax/sip/address/URI;

    #@0
    .prologue
    .line 123
    check-cast p1, Lgov/nist/javax/sip/address/GenericURI;

    #@2
    .end local p1    # "uri":Ljavax/sip/address/URI;
    iput-object p1, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    #@4
    .line 122
    return-void
.end method
