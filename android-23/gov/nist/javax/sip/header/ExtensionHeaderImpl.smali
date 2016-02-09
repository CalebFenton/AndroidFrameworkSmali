.class public Lgov/nist/javax/sip/header/ExtensionHeaderImpl;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "ExtensionHeaderImpl.java"

# interfaces
.implements Ljavax/sip/header/ExtensionHeader;


# static fields
.field private static final serialVersionUID:J = -0x78a704c29fbbc6b9L


# instance fields
.field protected value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "headerName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 60
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@3
    .line 59
    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    iget-object v1, p0, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->headerName:Ljava/lang/String;

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@7
    .line 109
    const-string/jumbo v1, ":"

    #@a
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d
    move-result-object v0

    #@e
    .line 110
    const-string/jumbo v1, " "

    #@11
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@14
    move-result-object v0

    #@15
    .line 111
    iget-object v1, p0, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->value:Ljava/lang/String;

    #@17
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1a
    move-result-object v0

    #@1b
    .line 112
    const-string/jumbo v1, "\r\n"

    #@1e
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 121
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->getHeaderValue()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getHeaderValue()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 84
    iget-object v3, p0, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->value:Ljava/lang/String;

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 85
    iget-object v3, p0, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->value:Ljava/lang/String;

    #@8
    return-object v3

    #@9
    .line 87
    :cond_0
    const/4 v1, 0x0

    #@a
    .line 90
    .local v1, "encodedHdr":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->encode()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v1

    #@e
    .line 94
    .local v1, "encodedHdr":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    #@10
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@13
    .line 95
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@16
    move-result v3

    #@17
    if-lez v3, :cond_1

    #@19
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    #@1c
    move-result v3

    #@1d
    const/16 v4, 0x3a

    #@1f
    if-eq v3, v4, :cond_1

    #@21
    .line 96
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    #@24
    goto :goto_0

    #@25
    .line 91
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .local v1, "encodedHdr":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@26
    .line 92
    .local v2, "ex":Ljava/lang/Exception;
    return-object v4

    #@27
    .line 98
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    .local v1, "encodedHdr":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    #@2a
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    iput-object v3, p0, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->value:Ljava/lang/String;

    #@34
    .line 100
    iget-object v3, p0, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->value:Ljava/lang/String;

    #@36
    return-object v3
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "headerName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 69
    iput-object p1, p0, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->headerName:Ljava/lang/String;

    #@2
    .line 68
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 76
    iput-object p1, p0, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->value:Ljava/lang/String;

    #@2
    .line 75
    return-void
.end method
