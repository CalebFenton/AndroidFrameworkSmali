.class public Lgov/nist/javax/sip/address/AddressFactoryImpl;
.super Ljava/lang/Object;
.source "AddressFactoryImpl.java"

# interfaces
.implements Ljavax/sip/address/AddressFactory;


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public greylist createAddress()Ljavax/sip/address/Address;
    .registers 2

    .line 62
    new-instance v0, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    return-object v0
.end method

.method public greylist createAddress(Ljava/lang/String;)Ljavax/sip/address/Address;
    .registers 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 182
    if-eqz p1, :cond_29

    .line 185
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 186
    new-instance v1, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-direct {v1}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    .line 187
    .local v1, "addressImpl":Lgov/nist/javax/sip/address/AddressImpl;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/address/AddressImpl;->setAddressType(I)V

    .line 188
    new-instance v2, Lgov/nist/javax/sip/address/SipUri;

    invoke-direct {v2}, Lgov/nist/javax/sip/address/SipUri;-><init>()V

    .line 189
    .local v2, "uri":Ljavax/sip/address/SipURI;
    invoke-interface {v2, v0}, Ljavax/sip/address/SipURI;->setUser(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/address/AddressImpl;->setURI(Ljavax/sip/address/URI;)V

    .line 191
    return-object v1

    .line 193
    .end local v1    # "addressImpl":Lgov/nist/javax/sip/address/AddressImpl;
    .end local v2    # "uri":Ljavax/sip/address/SipURI;
    :cond_1f
    new-instance v0, Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-direct {v0}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    .line 194
    .local v0, "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseAddress(Ljava/lang/String;)Lgov/nist/javax/sip/address/AddressImpl;

    move-result-object v1

    return-object v1

    .line 183
    .end local v0    # "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    :cond_29
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null address"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createAddress(Ljava/lang/String;Ljavax/sip/address/URI;)Ljavax/sip/address/Address;
    .registers 5
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "uri"    # Ljavax/sip/address/URI;

    .line 77
    if-eqz p2, :cond_10

    .line 79
    new-instance v0, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    .line 80
    .local v0, "addressImpl":Lgov/nist/javax/sip/address/AddressImpl;
    if-eqz p1, :cond_c

    .line 81
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/AddressImpl;->setDisplayName(Ljava/lang/String;)V

    .line 82
    :cond_c
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/address/AddressImpl;->setURI(Ljavax/sip/address/URI;)V

    .line 83
    return-object v0

    .line 78
    .end local v0    # "addressImpl":Lgov/nist/javax/sip/address/AddressImpl;
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null  URI"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createAddress(Ljavax/sip/address/URI;)Ljavax/sip/address/Address;
    .registers 4
    .param p1, "uri"    # Ljavax/sip/address/URI;

    .line 162
    if-eqz p1, :cond_b

    .line 164
    new-instance v0, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    .line 165
    .local v0, "addressImpl":Lgov/nist/javax/sip/address/AddressImpl;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/AddressImpl;->setURI(Ljavax/sip/address/URI;)V

    .line 166
    return-object v0

    .line 163
    .end local v0    # "addressImpl":Lgov/nist/javax/sip/address/AddressImpl;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null address"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createSipURI(Ljava/lang/String;)Ljavax/sip/address/SipURI;
    .registers 6
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 94
    if-eqz p1, :cond_18

    .line 97
    :try_start_2
    new-instance v0, Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-direct {v0}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    .line 98
    .local v0, "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPUrl(Ljava/lang/String;)Lgov/nist/javax/sip/address/SipUri;

    move-result-object v1
    :try_end_b
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_b} :catch_c

    .line 99
    .local v1, "sipUri":Lgov/nist/javax/sip/address/SipUri;
    return-object v1

    .line 100
    .end local v0    # "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    .end local v1    # "sipUri":Lgov/nist/javax/sip/address/SipUri;
    :catch_c
    move-exception v0

    .line 102
    .local v0, "ex":Ljava/text/ParseException;
    new-instance v1, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 95
    .end local v0    # "ex":Ljava/text/ParseException;
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null URI"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createSipURI(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/address/SipURI;
    .registers 9
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 114
    if-eqz p2, :cond_5f

    .line 117
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "sip:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "uriString":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_13

    .line 119
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    :cond_13
    const/16 v1, 0x3a

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v3, 0x0

    if-eq v2, v1, :cond_43

    .line 125
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_43

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 128
    :cond_43
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    new-instance v1, Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-direct {v1}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    .line 133
    .local v1, "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    :try_start_4b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPUrl(Ljava/lang/String;)Lgov/nist/javax/sip/address/SipUri;

    move-result-object v2
    :try_end_53
    .catch Ljava/text/ParseException; {:try_start_4b .. :try_end_53} :catch_54

    .line 134
    .local v2, "sipUri":Lgov/nist/javax/sip/address/SipUri;
    return-object v2

    .line 135
    .end local v2    # "sipUri":Lgov/nist/javax/sip/address/SipUri;
    :catch_54
    move-exception v2

    .line 136
    .local v2, "ex":Ljava/text/ParseException;
    new-instance v4, Ljava/text/ParseException;

    invoke-virtual {v2}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 115
    .end local v0    # "uriString":Ljava/lang/StringBuffer;
    .end local v1    # "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    .end local v2    # "ex":Ljava/text/ParseException;
    :cond_5f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null host"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createTelURL(Ljava/lang/String;)Ljavax/sip/address/TelURL;
    .registers 7
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 149
    if-eqz p1, :cond_2d

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "telUrl":Ljava/lang/String;
    :try_start_15
    new-instance v1, Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-direct {v1}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    .line 154
    .local v1, "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseUrl(Ljava/lang/String;)Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/address/TelURLImpl;
    :try_end_20
    .catch Ljava/text/ParseException; {:try_start_15 .. :try_end_20} :catch_21

    .line 155
    .local v2, "timp":Lgov/nist/javax/sip/address/TelURLImpl;
    return-object v2

    .line 156
    .end local v1    # "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    .end local v2    # "timp":Lgov/nist/javax/sip/address/TelURLImpl;
    :catch_21
    move-exception v1

    .line 157
    .local v1, "ex":Ljava/text/ParseException;
    new-instance v2, Ljava/text/ParseException;

    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 150
    .end local v0    # "telUrl":Ljava/lang/String;
    .end local v1    # "ex":Ljava/text/ParseException;
    :cond_2d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null url"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createURI(Ljava/lang/String;)Ljavax/sip/address/URI;
    .registers 7
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 208
    if-eqz p1, :cond_50

    .line 211
    const/4 v0, 0x0

    :try_start_3
    new-instance v1, Lgov/nist/javax/sip/parser/URLParser;

    invoke-direct {v1, p1}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Ljava/lang/String;)V

    .line 212
    .local v1, "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    invoke-virtual {v1}, Lgov/nist/javax/sip/parser/URLParser;->peekScheme()Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "scheme":Ljava/lang/String;
    if-eqz v2, :cond_3d

    .line 215
    const-string v3, "sip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1c

    .line 216
    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/parser/URLParser;->sipURL(Z)Lgov/nist/javax/sip/address/SipUri;

    move-result-object v0

    return-object v0

    .line 217
    :cond_1c
    const-string v3, "sips"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 218
    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/parser/URLParser;->sipURL(Z)Lgov/nist/javax/sip/address/SipUri;

    move-result-object v0

    return-object v0

    .line 219
    :cond_29
    const-string v3, "tel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 220
    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/parser/URLParser;->telURL(Z)Lgov/nist/javax/sip/address/TelURLImpl;

    move-result-object v0
    :try_end_35
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_35} :catch_45

    return-object v0

    .line 224
    .end local v1    # "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    .end local v2    # "scheme":Ljava/lang/String;
    :cond_36
    nop

    .line 225
    new-instance v0, Lgov/nist/javax/sip/address/GenericURI;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/address/GenericURI;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 214
    .restart local v1    # "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    .restart local v2    # "scheme":Ljava/lang/String;
    :cond_3d
    :try_start_3d
    new-instance v3, Ljava/text/ParseException;

    const-string v4, "bad scheme"

    invoke-direct {v3, v4, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lgov/nist/javax/sip/address/AddressFactoryImpl;
    .end local p1    # "uri":Ljava/lang/String;
    throw v3
    :try_end_45
    .catch Ljava/text/ParseException; {:try_start_3d .. :try_end_45} :catch_45

    .line 222
    .end local v1    # "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    .end local v2    # "scheme":Ljava/lang/String;
    .restart local p0    # "this":Lgov/nist/javax/sip/address/AddressFactoryImpl;
    .restart local p1    # "uri":Ljava/lang/String;
    :catch_45
    move-exception v1

    .line 223
    .local v1, "ex":Ljava/text/ParseException;
    new-instance v2, Ljava/text/ParseException;

    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 209
    .end local v1    # "ex":Ljava/text/ParseException;
    :cond_50
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
