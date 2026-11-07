.class public abstract Lgov/nist/javax/sip/header/SIPHeader;
.super Lgov/nist/javax/sip/header/SIPObject;
.source "SIPHeader.java"

# interfaces
.implements Lgov/nist/javax/sip/header/SIPHeaderNames;
.implements Ljavax/sip/header/Header;
.implements Lgov/nist/javax/sip/header/HeaderExt;


# instance fields
.field protected greylist headerName:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    .line 60
    return-void
.end method

.method protected constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "hname"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    .line 54
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public greylist encode()Ljava/lang/String;
    .registers 2

    .line 118
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 122
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeader;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 124
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    return-object p1
.end method

.method protected abstract greylist encodeBody()Ljava/lang/String;
.end method

.method protected greylist encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 137
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeader;->encodeBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public greylist getHeaderName()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getHeaderValue()Ljava/lang/String;
    .registers 6

    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, "encodedHdr":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeader;->encode()Ljava/lang/String;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_30

    .line 97
    .end local v0    # "encodedHdr":Ljava/lang/String;
    .local v1, "encodedHdr":Ljava/lang/String;
    nop

    .line 98
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :goto_b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_1e

    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 102
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_27

    .line 103
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 104
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 95
    .end local v1    # "encodedHdr":Ljava/lang/String;
    .local v0, "encodedHdr":Ljava/lang/String;
    :catch_30
    move-exception v1

    .line 96
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v2, 0x0

    return-object v2
.end method

.method public greylist getName()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getValue()Ljava/lang/String;
    .registers 2

    .line 143
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeader;->getHeaderValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 151
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist isHeaderList()Z
    .registers 2

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public greylist setHeaderName(Ljava/lang/String;)V
    .registers 2
    .param p1, "hdrname"    # Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 155
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeader;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
