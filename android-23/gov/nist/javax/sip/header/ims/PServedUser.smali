.class public Lgov/nist/javax/sip/header/ims/PServedUser;
.super Lgov/nist/javax/sip/header/AddressParametersHeader;
.source "PServedUser.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PServedUserHeader;
.implements Lgov/nist/javax/sip/header/ims/SIPHeaderNamesIms;
.implements Ljavax/sip/header/ExtensionHeader;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 53
    const-string/jumbo v0, "P-Served-User"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 51
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/address/AddressImpl;)V
    .locals 1
    .param p1, "address"    # Lgov/nist/javax/sip/address/AddressImpl;

    #@0
    .prologue
    .line 47
    const-string/jumbo v0, "P-Served-User"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 48
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/PServedUser;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@8
    .line 45
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 160
    invoke-super {p0}, Lgov/nist/javax/sip/header/AddressParametersHeader;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/header/ims/PServedUser;

    #@6
    .line 161
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/PServedUser;
    return-object v0
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 130
    .local v0, "retval":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PServedUser;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@7
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->encode()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e
    .line 132
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PServedUser;->parameters:Lgov/nist/core/NameValueList;

    #@10
    const-string/jumbo v2, "regstate"

    #@13
    invoke-virtual {v1, v2}, Lgov/nist/core/NameValueList;->containsKey(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 133
    const-string/jumbo v1, ";"

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1f
    move-result-object v1

    #@20
    const-string/jumbo v2, "regstate"

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@26
    move-result-object v1

    #@27
    const-string/jumbo v2, "="

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2d
    move-result-object v1

    #@2e
    .line 134
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PServedUser;->getRegistrationState()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@35
    .line 136
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PServedUser;->parameters:Lgov/nist/core/NameValueList;

    #@37
    const-string/jumbo v2, "sescase"

    #@3a
    invoke-virtual {v1, v2}, Lgov/nist/core/NameValueList;->containsKey(Ljava/lang/Object;)Z

    #@3d
    move-result v1

    #@3e
    if-eqz v1, :cond_1

    #@40
    .line 137
    const-string/jumbo v1, ";"

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@46
    move-result-object v1

    #@47
    const-string/jumbo v2, "sescase"

    #@4a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4d
    move-result-object v1

    #@4e
    const-string/jumbo v2, "="

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@54
    move-result-object v1

    #@55
    .line 138
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PServedUser;->getSessionCase()Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5c
    .line 140
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@5f
    move-result-object v1

    #@60
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 150
    instance-of v1, p1, Lgov/nist/javax/sip/header/ims/PServedUser;

    #@2
    if-eqz v1, :cond_0

    #@4
    move-object v0, p1

    #@5
    .line 152
    check-cast v0, Lgov/nist/javax/sip/header/ims/PServedUserHeader;

    #@7
    .line 153
    .local v0, "psu":Lgov/nist/javax/sip/header/ims/PServedUserHeader;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PServedUser;->getAddress()Ljavax/sip/address/Address;

    #@a
    move-result-object v1

    #@b
    check-cast p1, Lgov/nist/javax/sip/header/ims/PServedUser;

    #@d
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/ims/PServedUser;->getAddress()Ljavax/sip/address/Address;

    #@10
    move-result-object v2

    #@11
    invoke-interface {v1, v2}, Ljavax/sip/address/Address;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    return v1

    #@16
    .line 155
    .end local v0    # "psu":Lgov/nist/javax/sip/header/ims/PServedUserHeader;
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    #@17
    return v1
.end method

.method public getRegistrationState()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 58
    const-string/jumbo v0, "regstate"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PServedUser;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getSessionCase()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 63
    const-string/jumbo v0, "sescase"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PServedUser;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public setRegistrationState(Ljava/lang/String;)V
    .locals 4
    .param p1, "registrationState"    # Ljava/lang/String;

    #@0
    .prologue
    .line 68
    if-eqz p1, :cond_2

    #@2
    .line 70
    const-string/jumbo v2, "reg"

    #@5
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_0

    #@b
    const-string/jumbo v2, "unreg"

    #@e
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 73
    :cond_0
    :try_start_0
    const-string/jumbo v2, "regstate"

    #@17
    invoke-virtual {p0, v2, p1}, Lgov/nist/javax/sip/header/ims/PServedUser;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 66
    :goto_0
    return-void

    #@1b
    .line 74
    :catch_0
    move-exception v0

    #@1c
    .line 75
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    #@1f
    goto :goto_0

    #@20
    .line 82
    .end local v0    # "e":Ljava/text/ParseException;
    :cond_1
    :try_start_1
    new-instance v2, Ljavax/sip/InvalidArgumentException;

    #@22
    const-string/jumbo v3, "Value can be either reg or unreg"

    #@25
    invoke-direct {v2, v3}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v2
    :try_end_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    #@29
    .line 83
    :catch_1
    move-exception v1

    #@2a
    .line 84
    .local v1, "e":Ljavax/sip/InvalidArgumentException;
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->printStackTrace()V

    #@2d
    goto :goto_0

    #@2e
    .line 91
    .end local v1    # "e":Ljavax/sip/InvalidArgumentException;
    :cond_2
    new-instance v2, Ljava/lang/NullPointerException;

    #@30
    const-string/jumbo v3, "regstate Parameter value is null"

    #@33
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@36
    throw v2
.end method

.method public setSessionCase(Ljava/lang/String;)V
    .locals 4
    .param p1, "sessionCase"    # Ljava/lang/String;

    #@0
    .prologue
    .line 98
    if-eqz p1, :cond_2

    #@2
    .line 100
    const-string/jumbo v2, "orig"

    #@5
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_0

    #@b
    const-string/jumbo v2, "term"

    #@e
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 103
    :cond_0
    :try_start_0
    const-string/jumbo v2, "sescase"

    #@17
    invoke-virtual {p0, v2, p1}, Lgov/nist/javax/sip/header/ims/PServedUser;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 96
    :goto_0
    return-void

    #@1b
    .line 104
    :catch_0
    move-exception v0

    #@1c
    .line 105
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    #@1f
    goto :goto_0

    #@20
    .line 111
    .end local v0    # "e":Ljava/text/ParseException;
    :cond_1
    :try_start_1
    new-instance v2, Ljavax/sip/InvalidArgumentException;

    #@22
    const-string/jumbo v3, "Value can be either orig or term"

    #@25
    invoke-direct {v2, v3}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v2
    :try_end_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    #@29
    .line 112
    :catch_1
    move-exception v1

    #@2a
    .line 113
    .local v1, "e":Ljavax/sip/InvalidArgumentException;
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->printStackTrace()V

    #@2d
    goto :goto_0

    #@2e
    .line 120
    .end local v1    # "e":Ljavax/sip/InvalidArgumentException;
    :cond_2
    new-instance v2, Ljava/lang/NullPointerException;

    #@30
    const-string/jumbo v3, "sess-case Parameter value is null"

    #@33
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@36
    throw v2
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 144
    new-instance v0, Ljava/text/ParseException;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@6
    throw v0
.end method
