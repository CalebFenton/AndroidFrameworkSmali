.class public Lgov/nist/javax/sip/header/ExtensionHeaderImpl;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "ExtensionHeaderImpl.java"

# interfaces
.implements Ljavax/sip/header/ExtensionHeader;


# static fields
.field private static final whitelist serialVersionUID:J = -0x78a704c29fbbc6b9L


# instance fields
.field protected greylist value:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>()V

    .line 57
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "headerName"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 61
    return-void
.end method


# virtual methods
.method public greylist encode()Ljava/lang/String;
    .registers 3

    .line 108
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->headerName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 109
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 110
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->value:Ljava/lang/String;

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 112
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    return-object v0
.end method

.method public greylist encodeBody()Ljava/lang/String;
    .registers 2

    .line 121
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->getHeaderValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getHeaderValue()Ljava/lang/String;
    .registers 6

    .line 84
    iget-object v0, p0, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->value:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 85
    iget-object v0, p0, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->value:Ljava/lang/String;

    return-object v0

    .line 87
    :cond_7
    const/4 v0, 0x0

    .line 90
    .local v0, "encodedHdr":Ljava/lang/String;
    :try_start_8
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->encode()Ljava/lang/String;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_35

    .line 93
    .end local v0    # "encodedHdr":Ljava/lang/String;
    .local v1, "encodedHdr":Ljava/lang/String;
    nop

    .line 94
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :goto_12
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_25

    .line 96
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_12

    .line 98
    :cond_25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->value:Ljava/lang/String;

    .line 100
    iget-object v2, p0, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->value:Ljava/lang/String;

    return-object v2

    .line 91
    .end local v1    # "encodedHdr":Ljava/lang/String;
    .local v0, "encodedHdr":Ljava/lang/String;
    :catch_35
    move-exception v1

    .line 92
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v2, 0x0

    return-object v2
.end method

.method public greylist setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "headerName"    # Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->headerName:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public greylist setValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->value:Ljava/lang/String;

    .line 77
    return-void
.end method
