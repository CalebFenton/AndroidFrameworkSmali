.class public Lgov/nist/javax/sip/header/ims/PServedUser;
.super Lgov/nist/javax/sip/header/AddressParametersHeader;
.source "PServedUser.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PServedUserHeader;
.implements Lgov/nist/javax/sip/header/ims/SIPHeaderNamesIms;
.implements Ljavax/sip/header/ExtensionHeader;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 53
    const-string v0, "P-Served-User"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor greylist <init>(Lgov/nist/javax/sip/address/AddressImpl;)V
    .registers 3
    .param p1, "address"    # Lgov/nist/javax/sip/address/AddressImpl;

    .line 47
    const-string v0, "P-Served-User"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/PServedUser;->address:Lgov/nist/javax/sip/address/AddressImpl;

    .line 49
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 160
    invoke-super {p0}, Lgov/nist/javax/sip/header/AddressParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ims/PServedUser;

    .line 161
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/PServedUser;
    return-object v0
.end method

.method protected greylist encodeBody()Ljava/lang/String;
    .registers 6

    .line 128
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 130
    .local v0, "retval":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PServedUser;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PServedUser;->parameters:Lgov/nist/core/NameValueList;

    const-string v2, "regstate"

    invoke-virtual {v1, v2}, Lgov/nist/core/NameValueList;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "="

    const-string v4, ";"

    if-eqz v1, :cond_2f

    .line 133
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 134
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PServedUser;->getRegistrationState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    :cond_2f
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PServedUser;->parameters:Lgov/nist/core/NameValueList;

    const-string v2, "sescase"

    invoke-virtual {v1, v2}, Lgov/nist/core/NameValueList;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 137
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 138
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PServedUser;->getSessionCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    :cond_4c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 150
    instance-of v0, p1, Lgov/nist/javax/sip/header/ims/PServedUser;

    if-eqz v0, :cond_17

    .line 152
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/header/ims/PServedUserHeader;

    .line 153
    .local v0, "psu":Lgov/nist/javax/sip/header/ims/PServedUserHeader;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PServedUser;->getAddress()Ljavax/sip/address/Address;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lgov/nist/javax/sip/header/ims/PServedUser;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/ims/PServedUser;->getAddress()Ljavax/sip/address/Address;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/sip/address/Address;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 155
    .end local v0    # "psu":Lgov/nist/javax/sip/header/ims/PServedUserHeader;
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getRegistrationState()Ljava/lang/String;
    .registers 2

    .line 58
    const-string v0, "regstate"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PServedUser;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getSessionCase()Ljava/lang/String;
    .registers 2

    .line 63
    const-string v0, "sescase"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PServedUser;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist setRegistrationState(Ljava/lang/String;)V
    .registers 4
    .param p1, "registrationState"    # Ljava/lang/String;

    .line 68
    if-eqz p1, :cond_2c

    .line 70
    const-string v0, "reg"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "unreg"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_20

    .line 82
    :cond_13
    :try_start_13
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "Value can be either reg or unreg"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lgov/nist/javax/sip/header/ims/PServedUser;
    .end local p1    # "registrationState":Ljava/lang/String;
    throw v0
    :try_end_1b
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_13 .. :try_end_1b} :catch_1b

    .line 83
    .restart local p0    # "this":Lgov/nist/javax/sip/header/ims/PServedUser;
    .restart local p1    # "registrationState":Ljava/lang/String;
    :catch_1b
    move-exception v0

    .line 84
    .local v0, "e":Ljavax/sip/InvalidArgumentException;
    invoke-virtual {v0}, Ljavax/sip/InvalidArgumentException;->printStackTrace()V

    .line 85
    .end local v0    # "e":Ljavax/sip/InvalidArgumentException;
    goto :goto_2b

    .line 73
    :cond_20
    :goto_20
    :try_start_20
    const-string v0, "regstate"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/PServedUser;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/text/ParseException; {:try_start_20 .. :try_end_25} :catch_26

    goto :goto_2a

    .line 74
    :catch_26
    move-exception v0

    .line 75
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 76
    .end local v0    # "e":Ljava/text/ParseException;
    :goto_2a
    nop

    .line 94
    :goto_2b
    return-void

    .line 91
    :cond_2c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "regstate Parameter value is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setSessionCase(Ljava/lang/String;)V
    .registers 4
    .param p1, "sessionCase"    # Ljava/lang/String;

    .line 98
    if-eqz p1, :cond_2c

    .line 100
    const-string v0, "orig"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "term"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_20

    .line 111
    :cond_13
    :try_start_13
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "Value can be either orig or term"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lgov/nist/javax/sip/header/ims/PServedUser;
    .end local p1    # "sessionCase":Ljava/lang/String;
    throw v0
    :try_end_1b
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_13 .. :try_end_1b} :catch_1b

    .line 112
    .restart local p0    # "this":Lgov/nist/javax/sip/header/ims/PServedUser;
    .restart local p1    # "sessionCase":Ljava/lang/String;
    :catch_1b
    move-exception v0

    .line 113
    .local v0, "e":Ljavax/sip/InvalidArgumentException;
    invoke-virtual {v0}, Ljavax/sip/InvalidArgumentException;->printStackTrace()V

    .line 114
    .end local v0    # "e":Ljavax/sip/InvalidArgumentException;
    goto :goto_2b

    .line 103
    :cond_20
    :goto_20
    :try_start_20
    const-string v0, "sescase"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/PServedUser;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/text/ParseException; {:try_start_20 .. :try_end_25} :catch_26

    goto :goto_2a

    .line 104
    :catch_26
    move-exception v0

    .line 105
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 106
    .end local v0    # "e":Ljava/text/ParseException;
    :goto_2a
    nop

    .line 123
    :goto_2b
    return-void

    .line 120
    :cond_2c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sess-case Parameter value is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setValue(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
