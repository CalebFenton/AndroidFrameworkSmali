.class public Lgov/nist/javax/sip/address/AddressFactoryImpl;
.super Ljava/lang/Object;
.source "AddressFactoryImpl.java"

# interfaces
.implements Ljavax/sip/address/AddressFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createAddress()Ljavax/sip/address/Address;
    .locals 1

    #@0
    .prologue
    .line 62
    new-instance v0, Lgov/nist/javax/sip/address/AddressImpl;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    #@5
    return-object v0
.end method

.method public createAddress(Ljava/lang/String;)Ljavax/sip/address/Address;
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 182
    if-nez p1, :cond_0

    #@2
    .line 183
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v4, "null address"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 185
    :cond_0
    const-string/jumbo v3, "*"

    #@e
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_1

    #@14
    .line 186
    new-instance v0, Lgov/nist/javax/sip/address/AddressImpl;

    #@16
    invoke-direct {v0}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    #@19
    .line 187
    .local v0, "addressImpl":Lgov/nist/javax/sip/address/AddressImpl;
    const/4 v3, 0x3

    #@1a
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/address/AddressImpl;->setAddressType(I)V

    #@1d
    .line 188
    new-instance v2, Lgov/nist/javax/sip/address/SipUri;

    #@1f
    invoke-direct {v2}, Lgov/nist/javax/sip/address/SipUri;-><init>()V

    #@22
    .line 189
    .local v2, "uri":Ljavax/sip/address/SipURI;
    const-string/jumbo v3, "*"

    #@25
    invoke-interface {v2, v3}, Ljavax/sip/address/SipURI;->setUser(Ljava/lang/String;)V

    #@28
    .line 190
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/address/AddressImpl;->setURI(Ljavax/sip/address/URI;)V

    #@2b
    .line 191
    return-object v0

    #@2c
    .line 193
    .end local v0    # "addressImpl":Lgov/nist/javax/sip/address/AddressImpl;
    .end local v2    # "uri":Ljavax/sip/address/SipURI;
    :cond_1
    new-instance v1, Lgov/nist/javax/sip/parser/StringMsgParser;

    #@2e
    invoke-direct {v1}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    #@31
    .line 194
    .local v1, "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseAddress(Ljava/lang/String;)Lgov/nist/javax/sip/address/AddressImpl;

    #@34
    move-result-object v3

    #@35
    return-object v3
.end method

.method public createAddress(Ljava/lang/String;Ljavax/sip/address/URI;)Ljavax/sip/address/Address;
    .locals 3
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "uri"    # Ljavax/sip/address/URI;

    #@0
    .prologue
    .line 77
    if-nez p2, :cond_0

    #@2
    .line 78
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null  URI"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 79
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/address/AddressImpl;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    #@10
    .line 80
    .local v0, "addressImpl":Lgov/nist/javax/sip/address/AddressImpl;
    if-eqz p1, :cond_1

    #@12
    .line 81
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/AddressImpl;->setDisplayName(Ljava/lang/String;)V

    #@15
    .line 82
    :cond_1
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/address/AddressImpl;->setURI(Ljavax/sip/address/URI;)V

    #@18
    .line 83
    return-object v0
.end method

.method public createAddress(Ljavax/sip/address/URI;)Ljavax/sip/address/Address;
    .locals 3
    .param p1, "uri"    # Ljavax/sip/address/URI;

    #@0
    .prologue
    .line 162
    if-nez p1, :cond_0

    #@2
    .line 163
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null address"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 164
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/address/AddressImpl;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    #@10
    .line 165
    .local v0, "addressImpl":Lgov/nist/javax/sip/address/AddressImpl;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/AddressImpl;->setURI(Ljavax/sip/address/URI;)V

    #@13
    .line 166
    return-object v0
.end method

.method public createSipURI(Ljava/lang/String;)Ljavax/sip/address/SipURI;
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    if-nez p1, :cond_0

    #@2
    .line 95
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v4, "null URI"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 97
    :cond_0
    :try_start_0
    new-instance v2, Lgov/nist/javax/sip/parser/StringMsgParser;

    #@d
    invoke-direct {v2}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    #@10
    .line 98
    .local v2, "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    invoke-virtual {v2, p1}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPUrl(Ljava/lang/String;)Lgov/nist/javax/sip/address/SipUri;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v1

    #@14
    .line 99
    .local v1, "sipUri":Lgov/nist/javax/sip/address/SipUri;
    return-object v1

    #@15
    .line 100
    .end local v1    # "sipUri":Lgov/nist/javax/sip/address/SipUri;
    .end local v2    # "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    :catch_0
    move-exception v0

    #@16
    .line 102
    .local v0, "ex":Ljava/text/ParseException;
    new-instance v3, Ljava/text/ParseException;

    #@18
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@20
    throw v3
.end method

.method public createSipURI(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/address/SipURI;
    .locals 8
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v7, 0x5b

    #@2
    const/16 v5, 0x3a

    #@4
    const/4 v6, 0x0

    #@5
    .line 114
    if-nez p2, :cond_0

    #@7
    .line 115
    new-instance v4, Ljava/lang/NullPointerException;

    #@9
    const-string/jumbo v5, "null host"

    #@c
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@f
    throw v4

    #@10
    .line 117
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    #@12
    const-string/jumbo v4, "sip:"

    #@15
    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@18
    .line 118
    .local v3, "uriString":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_1

    #@1a
    .line 119
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1d
    .line 120
    const-string/jumbo v4, "@"

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    .line 124
    :cond_1
    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    #@26
    move-result v4

    #@27
    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    #@2a
    move-result v5

    #@2b
    if-eq v4, v5, :cond_2

    #@2d
    .line 125
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    #@34
    move-result v4

    #@35
    if-eq v4, v7, :cond_2

    #@37
    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    const/16 v5, 0x5d

    #@46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object p2

    #@4e
    .line 128
    :cond_2
    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@51
    .line 130
    new-instance v2, Lgov/nist/javax/sip/parser/StringMsgParser;

    #@53
    invoke-direct {v2}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    #@56
    .line 133
    .local v2, "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPUrl(Ljava/lang/String;)Lgov/nist/javax/sip/address/SipUri;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@5d
    move-result-object v1

    #@5e
    .line 134
    .local v1, "sipUri":Lgov/nist/javax/sip/address/SipUri;
    return-object v1

    #@5f
    .line 135
    .end local v1    # "sipUri":Lgov/nist/javax/sip/address/SipUri;
    :catch_0
    move-exception v0

    #@60
    .line 136
    .local v0, "ex":Ljava/text/ParseException;
    new-instance v4, Ljava/text/ParseException;

    #@62
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    #@65
    move-result-object v5

    #@66
    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@69
    throw v4
.end method

.method public createTelURL(Ljava/lang/String;)Ljavax/sip/address/TelURL;
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 149
    if-nez p1, :cond_0

    #@2
    .line 150
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v5, "null url"

    #@7
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 151
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v5, "tel:"

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 153
    .local v2, "telUrl":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/parser/StringMsgParser;

    #@21
    invoke-direct {v1}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    #@24
    .line 154
    .local v1, "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseUrl(Ljava/lang/String;)Lgov/nist/javax/sip/address/GenericURI;

    #@27
    move-result-object v3

    #@28
    check-cast v3, Lgov/nist/javax/sip/address/TelURLImpl;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .line 155
    .local v3, "timp":Lgov/nist/javax/sip/address/TelURLImpl;
    return-object v3

    #@2b
    .line 156
    .end local v1    # "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    .end local v3    # "timp":Lgov/nist/javax/sip/address/TelURLImpl;
    :catch_0
    move-exception v0

    #@2c
    .line 157
    .local v0, "ex":Ljava/text/ParseException;
    new-instance v4, Ljava/text/ParseException;

    #@2e
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    #@31
    move-result-object v5

    #@32
    const/4 v6, 0x0

    #@33
    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@36
    throw v4
.end method

.method public createURI(Ljava/lang/String;)Ljavax/sip/address/URI;
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 208
    if-nez p1, :cond_0

    #@3
    .line 209
    new-instance v3, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v4, "null arg"

    #@8
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v3

    #@c
    .line 211
    :cond_0
    :try_start_0
    new-instance v2, Lgov/nist/javax/sip/parser/URLParser;

    #@e
    invoke-direct {v2, p1}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Ljava/lang/String;)V

    #@11
    .line 212
    .local v2, "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    invoke-virtual {v2}, Lgov/nist/javax/sip/parser/URLParser;->peekScheme()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    .line 213
    .local v1, "scheme":Ljava/lang/String;
    if-nez v1, :cond_1

    #@17
    .line 214
    new-instance v3, Ljava/text/ParseException;

    #@19
    const-string/jumbo v4, "bad scheme"

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@20
    throw v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 222
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v2    # "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    :catch_0
    move-exception v0

    #@22
    .line 223
    .local v0, "ex":Ljava/text/ParseException;
    new-instance v3, Ljava/text/ParseException;

    #@24
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@2b
    throw v3

    #@2c
    .line 215
    .end local v0    # "ex":Ljava/text/ParseException;
    .restart local v1    # "scheme":Ljava/lang/String;
    .restart local v2    # "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    :cond_1
    :try_start_1
    const-string/jumbo v3, "sip"

    #@2f
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_2

    #@35
    .line 216
    const/4 v3, 0x1

    #@36
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/parser/URLParser;->sipURL(Z)Lgov/nist/javax/sip/address/SipUri;

    #@39
    move-result-object v3

    #@3a
    return-object v3

    #@3b
    .line 217
    :cond_2
    const-string/jumbo v3, "sips"

    #@3e
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@41
    move-result v3

    #@42
    if-eqz v3, :cond_3

    #@44
    .line 218
    const/4 v3, 0x1

    #@45
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/parser/URLParser;->sipURL(Z)Lgov/nist/javax/sip/address/SipUri;

    #@48
    move-result-object v3

    #@49
    return-object v3

    #@4a
    .line 219
    :cond_3
    const-string/jumbo v3, "tel"

    #@4d
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@50
    move-result v3

    #@51
    if-eqz v3, :cond_4

    #@53
    .line 220
    const/4 v3, 0x1

    #@54
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/parser/URLParser;->telURL(Z)Lgov/nist/javax/sip/address/TelURLImpl;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    #@57
    move-result-object v3

    #@58
    return-object v3

    #@59
    .line 225
    :cond_4
    new-instance v3, Lgov/nist/javax/sip/address/GenericURI;

    #@5b
    invoke-direct {v3, p1}, Lgov/nist/javax/sip/address/GenericURI;-><init>(Ljava/lang/String;)V

    #@5e
    return-object v3
.end method
