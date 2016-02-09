.class public final Lgov/nist/javax/sip/header/Contact;
.super Lgov/nist/javax/sip/header/AddressParametersHeader;
.source "Contact.java"

# interfaces
.implements Ljavax/sip/header/ContactHeader;


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field public static final EXPIRES:Ljava/lang/String; = "expires"

.field public static final PROXY:Ljava/lang/String; = "proxy"

.field public static final Q:Ljava/lang/String; = "q"

.field public static final REDIRECT:Ljava/lang/String; = "redirect"

.field private static final serialVersionUID:J = 0x1746f2cc9301c8b0L


# instance fields
.field private contactList:Lgov/nist/javax/sip/header/ContactList;

.field protected wildCardFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 78
    const-string/jumbo v0, "Contact"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 77
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 221
    invoke-super {p0}, Lgov/nist/javax/sip/header/AddressParametersHeader;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/header/Contact;

    #@6
    .line 222
    .local v0, "retval":Lgov/nist/javax/sip/header/Contact;
    iget-object v1, p0, Lgov/nist/javax/sip/header/Contact;->contactList:Lgov/nist/javax/sip/header/ContactList;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 223
    iget-object v1, p0, Lgov/nist/javax/sip/header/Contact;->contactList:Lgov/nist/javax/sip/header/ContactList;

    #@c
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ContactList;->clone()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lgov/nist/javax/sip/header/ContactList;

    #@12
    iput-object v1, v0, Lgov/nist/javax/sip/header/Contact;->contactList:Lgov/nist/javax/sip/header/ContactList;

    #@14
    .line 224
    :cond_0
    return-object v0
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Contact;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 104
    iget-boolean v0, p0, Lgov/nist/javax/sip/header/Contact;->wildCardFlag:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 105
    const/16 v0, 0x2a

    #@6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@9
    .line 123
    :cond_0
    :goto_0
    return-object p1

    #@a
    .line 109
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@c
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    #@f
    move-result v0

    #@10
    const/4 v1, 0x1

    #@11
    if-ne v0, v1, :cond_2

    #@13
    .line 110
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@15
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/AddressImpl;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@18
    .line 117
    :goto_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    #@1a
    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    #@1d
    move-result v0

    #@1e
    if-nez v0, :cond_0

    #@20
    .line 118
    const-string/jumbo v0, ";"

    #@23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@26
    .line 119
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    #@28
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@2b
    goto :goto_0

    #@2c
    .line 113
    :cond_2
    const/16 v0, 0x3c

    #@2e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@31
    .line 114
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@33
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/AddressImpl;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@36
    .line 115
    const/16 v0, 0x3e

    #@38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@3b
    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 244
    instance-of v0, p1, Ljavax/sip/header/ContactHeader;

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-super {p0, p1}, Lgov/nist/javax/sip/header/AddressParametersHeader;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public getAddress()Ljavax/sip/address/Address;
    .locals 1

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@2
    return-object v0
.end method

.method public getContactList()Lgov/nist/javax/sip/header/ContactList;
    .locals 1

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->contactList:Lgov/nist/javax/sip/header/ContactList;

    #@2
    return-object v0
.end method

.method public getContactParms()Lgov/nist/core/NameValueList;
    .locals 1

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    #@2
    return-object v0
.end method

.method public getExpires()I
    .locals 1

    #@0
    .prologue
    .line 159
    const-string/jumbo v0, "expires"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Contact;->getParameterAsInt(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getPubGruuParam()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 269
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    #@2
    const-string/jumbo v1, "pub-gruu"

    #@5
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    return-object v0
.end method

.method public getQValue()F
    .locals 1

    #@0
    .prologue
    .line 175
    const-string/jumbo v0, "q"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Contact;->getParameterAsFloat(Ljava/lang/String;)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getSipInstanceParam()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 253
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    #@2
    const-string/jumbo v1, "+sip.instance"

    #@5
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    return-object v0
.end method

.method public getTempGruuParam()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 286
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    #@2
    const-string/jumbo v1, "temp-gruu"

    #@5
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    return-object v0
.end method

.method public getWildCardFlag()Z
    .locals 1

    #@0
    .prologue
    .line 137
    iget-boolean v0, p0, Lgov/nist/javax/sip/header/Contact;->wildCardFlag:Z

    #@2
    return v0
.end method

.method public isWildCard()Z
    .locals 1

    #@0
    .prologue
    .line 240
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->isWildcard()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public removePubGruuParam()V
    .locals 2

    #@0
    .prologue
    .line 264
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 265
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    #@6
    const-string/jumbo v1, "pub-gruu"

    #@9
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    #@c
    .line 263
    :cond_0
    return-void
.end method

.method public removeSipInstanceParam()V
    .locals 2

    #@0
    .prologue
    .line 248
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 249
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    #@6
    const-string/jumbo v1, "+sip.instance"

    #@9
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    #@c
    .line 247
    :cond_0
    return-void
.end method

.method public removeTempGruuParam()V
    .locals 2

    #@0
    .prologue
    .line 281
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 282
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    #@6
    const-string/jumbo v1, "temp-gruu"

    #@9
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    #@c
    .line 280
    :cond_0
    return-void
.end method

.method public setAddress(Ljavax/sip/address/Address;)V
    .locals 2
    .param p1, "address"    # Ljavax/sip/address/Address;

    #@0
    .prologue
    .line 202
    if-nez p1, :cond_0

    #@2
    .line 203
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "null address"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 204
    :cond_0
    check-cast p1, Lgov/nist/javax/sip/address/AddressImpl;

    #@d
    .end local p1    # "address":Ljavax/sip/address/Address;
    iput-object p1, p0, Lgov/nist/javax/sip/header/Contact;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@f
    .line 205
    const/4 v0, 0x0

    #@10
    iput-boolean v0, p0, Lgov/nist/javax/sip/header/Contact;->wildCardFlag:Z

    #@12
    .line 200
    return-void
.end method

.method public setContactList(Lgov/nist/javax/sip/header/ContactList;)V
    .locals 0
    .param p1, "cl"    # Lgov/nist/javax/sip/header/ContactList;

    #@0
    .prologue
    .line 182
    iput-object p1, p0, Lgov/nist/javax/sip/header/Contact;->contactList:Lgov/nist/javax/sip/header/ContactList;

    #@2
    .line 181
    return-void
.end method

.method public setExpires(I)V
    .locals 3
    .param p1, "expiryDeltaSeconds"    # I

    #@0
    .prologue
    .line 167
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    .line 168
    .local v0, "deltaSeconds":Ljava/lang/Integer;
    iget-object v1, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    #@6
    const-string/jumbo v2, "expires"

    #@9
    invoke-virtual {v1, v2, v0}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    #@c
    .line 166
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 84
    iget-object v1, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    #@2
    invoke-virtual {v1, p1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    #@5
    move-result-object v0

    #@6
    .line 85
    .local v0, "nv":Lgov/nist/core/NameValue;
    if-eqz v0, :cond_0

    #@8
    .line 86
    invoke-virtual {v0, p2}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    #@b
    .line 83
    :goto_0
    return-void

    #@c
    .line 88
    :cond_0
    new-instance v0, Lgov/nist/core/NameValue;

    #@e
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    #@11
    .line 89
    .restart local v0    # "nv":Lgov/nist/core/NameValue;
    const-string/jumbo v1, "methods"

    #@14
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 90
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->setQuotedValue()V

    #@1d
    .line 91
    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    #@1f
    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    #@22
    goto :goto_0
.end method

.method public setPubGruuParam(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 274
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    #@2
    const-string/jumbo v1, "pub-gruu"

    #@5
    invoke-virtual {v0, v1, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    #@8
    .line 272
    return-void
.end method

.method public setQValue(F)V
    .locals 3
    .param p1, "qValue"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 213
    const/high16 v0, -0x40800000    # -1.0f

    #@2
    cmpl-float v0, p1, v0

    #@4
    if-eqz v0, :cond_1

    #@6
    const/4 v0, 0x0

    #@7
    cmpg-float v0, p1, v0

    #@9
    if-ltz v0, :cond_0

    #@b
    const/high16 v0, 0x3f800000    # 1.0f

    #@d
    cmpl-float v0, p1, v0

    #@f
    if-lez v0, :cond_1

    #@11
    .line 214
    :cond_0
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    #@13
    .line 215
    const-string/jumbo v1, "JAIN-SIP Exception, Contact, setQValue(), the qValue is not between 0 and 1"

    #@16
    .line 214
    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 217
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    #@1c
    const-string/jumbo v1, "q"

    #@1f
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v0, v1, v2}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    #@26
    .line 212
    return-void
.end method

.method public setSipInstanceParam(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 257
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    #@2
    const-string/jumbo v1, "+sip.instance"

    #@5
    invoke-virtual {v0, v1, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    #@8
    .line 256
    return-void
.end method

.method public setTempGruuParam(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 291
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    #@2
    const-string/jumbo v1, "temp-gruu"

    #@5
    invoke-virtual {v0, v1, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    #@8
    .line 289
    return-void
.end method

.method public setWildCard()V
    .locals 1

    #@0
    .prologue
    .line 231
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Contact;->setWildCardFlag(Z)V

    #@4
    .line 230
    return-void
.end method

.method public setWildCardFlag(Z)V
    .locals 1
    .param p1, "w"    # Z

    #@0
    .prologue
    .line 190
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lgov/nist/javax/sip/header/Contact;->wildCardFlag:Z

    #@3
    .line 191
    new-instance v0, Lgov/nist/javax/sip/address/AddressImpl;

    #@5
    invoke-direct {v0}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    #@8
    iput-object v0, p0, Lgov/nist/javax/sip/header/Contact;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@a
    .line 192
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@c
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->setWildCardFlag()V

    #@f
    .line 189
    return-void
.end method
